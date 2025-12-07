uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = DRMeshGetPartCount();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result < a3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = a4 == a5;
  v12 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v13 = a5 - 1;
    while (a4 < a5)
    {
      DRMeshGetPartAt();
      result = DRMeshSetPartAt();
      v14 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_18;
      }

      v11 = v13 == a4;
      v15 = v14 == a3;
      v12 = v14 == a3;
      if (!v15)
      {
        ++a2;
        v15 = v13 == a4++;
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (!v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v11 = a3;
  v6 = a1;
  v7 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_25;
  }

  v9 = a5;
  v8 = a4;
  v10 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    *v6 = v7;
    v13 = v8 == v9;
    v14 = v10 == v11;
    v21 = v6;
    if (v10 == v11 || v8 == v9)
    {
      break;
    }

    v15 = 0;
    v16 = 48 * v10;
    v17 = v11 - 1;
    v11 = v9 - 1;
    v6 = (a6 + 48 * v8 + 32);
    v18 = v8;
    while (v18 < v9)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v18 >= *(a6 + 16))
      {
        goto LABEL_23;
      }

      v24 = *&v6[v15 + 2];
      v25 = *&v6[v15];
      v23 = *&v6[v15 + 4];
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v7 = result;
      }

      if (v10 >= *(v7 + 16))
      {
        goto LABEL_24;
      }

      v19 = (v7 + v16 + v15 * 8);
      v19[2] = v25;
      v19[3] = v24;
      v19[4] = v23;
      v13 = v11 == v18;
      v14 = v17 == v10;
      if (v17 != v10)
      {
        ++v10;
        v15 += 6;
        if (v11 != v18++)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

LABEL_18:
  *v21 = v7;
  if (!v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v12 = a3;
  v6 = a1;
  v7 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_23;
  }

  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    *v6 = v7;
    v14 = v10 == v9;
    v15 = v11 == v12;
    if (v11 == v12 || v10 == v9)
    {
      break;
    }

    --v12;
    v16 = v9 - 1;
    v17 = v10;
    while (v17 < v9)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v17 >= *(v8 + 16))
      {
        goto LABEL_21;
      }

      v18 = *(v8 + 32 + 4 * v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v7 = result;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_22;
      }

      *(v7 + 4 * v11 + 32) = v18;
      v14 = v16 == v17;
      v15 = v12 == v11;
      if (v12 != v11)
      {
        ++v11;
        if (v16 != v17++)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

LABEL_16:
  *v6 = v7;
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!v14)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t (*specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*result)(void *), uint64_t a2))(void *)
{
  v14[6] = a2;
  v4 = *v2;
  v5 = *(v2[1] + 16);
  if (*v2 >= v5)
  {
    return v4;
  }

  v6 = v2;
  v7 = result;
LABEL_3:
  v8 = 40 * v4 + 32;
  v9 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v10 = v6[1];
    if (v9 >= *(v10 + 16))
    {
      goto LABEL_19;
    }

    outlined init with copy of __REAssetService(v10 + v8, v14);
    v11 = v7(v14);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (v3)
    {
      return v9;
    }

    if (v11)
    {
      break;
    }

    ++v9;
    v8 += 40;
    if (v9 >= v5)
    {
      return v9;
    }
  }

  v12 = v10 + 40 * v5 - 8;
  while (v9 < --v5)
  {
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_20;
    }

    outlined init with copy of __REAssetService(v12, v14);
    v13 = v7(v14);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v12 -= 40;
    if ((v13 & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v9, v5);
      v4 = v9 + 1;
      if (v9 + 1 < v5)
      {
        goto LABEL_3;
      }

      return v4;
    }
  }

  return v9;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(__int128 *))
{
  v15 = *MEMORY[0x1E69E9840];
  PartCount = DRMeshGetPartCount();
  if (PartCount < 1)
  {
    return 0;
  }

  v4 = PartCount;
  for (i = 0; i < v4; ++i)
  {
    v11 = 0uLL;
    v12 = xmmword_1C18AB200;
    v13 = xmmword_1C189A7F0;
    v14 = xmmword_1C189A800;
    DRMeshGetPartAt();
    v6 = a1(&v11);
    if (v1)
    {
      break;
    }

    if (v6)
    {
      v7 = v4;
      while (1)
      {
        v8 = DRMeshGetPartCount();
        v4 = v7 - 1;
        if (v7 < 1 || v7 > v8)
        {
          __break(1u);
        }

        if (i >= v4)
        {
          return i;
        }

        v11 = 0uLL;
        v12 = xmmword_1C18AB200;
        v13 = xmmword_1C189A7F0;
        v14 = xmmword_1C189A800;
        DRMeshGetPartAt();
        v9 = a1(&v11);
        --v7;
        if ((v9 & 1) == 0)
        {
          specialized MutableCollection.swapAt(_:_:)(i, v4);
          break;
        }
      }
    }
  }

  return i;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result)
{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = 48 * v5;
  v7 = v5;
  while (1)
  {
    if (v5 < 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v8 = *v1;
    if (v7 >= *(*v1 + 16))
    {
      goto LABEL_21;
    }

    v9 = *(v8 + v6 + 32);
    v10 = *(v8 + v6 + 48);
    v11 = *(v8 + v6 + 64);
    if (one-time initialization token for identity != -1)
    {
      v16 = *(v8 + v6 + 48);
      v17 = *(v8 + v6 + 32);
      v15 = *(v8 + v6 + 64);
      swift_once();
      v11 = v15;
      v10 = v16;
      v9 = v17;
    }

    v18 = v9;
    v19 = v10;
    v20 = v11;
    result = v4(&v18);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      break;
    }

    ++v7;
    v6 += 48;
    if (v7 >= v3)
    {
      return v7;
    }
  }

  v12 = (v8 + 48 * v3);
  while (v7 < --v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_22;
    }

    v13 = *v12;
    v14 = v12[1];
    v18 = *(v12 - 1);
    v19 = v13;
    v20 = v14;
    result = v4(&v18);
    v12 -= 3;
    if ((result & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v7, v3);
      v5 = v7 + 1;
      if (v7 + 1 < v3)
      {
        goto LABEL_3;
      }

      return ++v7;
    }
  }

  return v7;
}

{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = v5;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v7 = *v1;
    if (v6 >= *(*v1 + 16))
    {
      goto LABEL_20;
    }

    v10 = *(v7 + 4 * v6 + 32);
    result = v4(&v10);
    if (v2)
    {
      return v6;
    }

    if (result)
    {
      break;
    }

    if (++v6 >= v3)
    {
      return v6;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 - 1;
    if (v6 >= v8 - 1)
    {
      return v6;
    }

    if (v3 >= *(v7 + 16))
    {
      goto LABEL_21;
    }

    v9 = *(v7 + 28 + 4 * v8);
    result = v4(&v9);
    v8 = v3;
    if ((result & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v6, v3);
      v5 = v6 + 1;
      if ((v6 + 1) < v3)
      {
        goto LABEL_3;
      }

      return ++v6;
    }
  }
}

uint64_t specialized BidirectionalCollection.distance(from:to:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t specialized TimelineDefinition.__allocating_init(_:)(uint64_t a1)
{
  type metadata accessor for TimelineDefinition();
  result = swift_allocObject();
  if (!a1)
  {
    v5 = 0;
LABEL_8:
    *(result + 16) = v5;
    return result;
  }

  v3 = result;

  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v4 == 5)
    {

LABEL_7:
      v5 = RETimelineDefinitionCreateFromTimeline();

      result = v3;
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

double simd_mul(simd_float4x4 a1, simd_float4x4 a2)
{
  v2 = 0;
  v4[2] = a2.columns[2];
  v4[3] = a2.columns[3];
  memset(v5, 0, sizeof(v5));
  do
  {
    v5[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v4[v2])), a1.columns[1], *&v4[v2], 1), a1.columns[2], v4[v2], 2), a1.columns[3], v4[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v5;
}

unint64_t lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms.CodingKeys, &type metadata for JointTransforms.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms.CodingKeys, &type metadata for JointTransforms.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms.CodingKeys, &type metadata for JointTransforms.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JointTransforms.CodingKeys, &type metadata for JointTransforms.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights.CodingKeys, &unk_1F4115510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights.CodingKeys, &unk_1F4115510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights.CodingKeys, &unk_1F4115510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BlendShapeWeights.CodingKeys, &unk_1F4115510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd, &_sSaySfGMR);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode()
{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationFillMode, &type metadata for AnimationFillMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationFillMode, &type metadata for AnimationFillMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationFillMode, &type metadata for AnimationFillMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationFillMode, &type metadata for AnimationFillMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy17RealityFoundation15JointTransformsVGMd, &_sSIy17RealityFoundation15JointTransformsVGMR);
    v4[0] = lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable(MEMORY[0x1E69E5EB0], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<JointTransforms> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation15JointTransformsVGMd, &_ss5SliceVy17RealityFoundation15JointTransformsVGMR);
    v4[0] = lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation15JointTransformsVGMd, &_ss5SliceVy17RealityFoundation15JointTransformsVGMR);
    v4[0] = lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable(MEMORY[0x1E69E74E0], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy17RealityFoundation17BlendShapeWeightsVGMd, &_sSIy17RealityFoundation17BlendShapeWeightsVGMR);
    v4[0] = lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable(MEMORY[0x1E69E5EB0], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<BlendShapeWeights> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMd, &_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMR);
    v4[0] = lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMd, &_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMR);
    v4[0] = lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable(MEMORY[0x1E69E74E0], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationFillMode(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for AnimationFillMode(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimelineBaseProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TimelineBaseProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy117_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvalidAnimationDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 117))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InvalidAnimationDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 117) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 117) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __REAssetBundle.__resource<A>(ofType:identifier:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  (*(v7 + 32))(v6, v7);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    v9 = swift_allocObject();
    *(v9 + 16) = AssetHandle;
    type metadata accessor for __RERenderGraphEmitter();
    if (swift_dynamicCastMetatype())
    {
      *(swift_allocObject() + 16) = v9;
      v10 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v10 ^ 1u, 1, a2);
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }

  else
  {
    v12 = *(*(a2 - 8) + 56);

    return v12(a3, 1, 1, a2);
  }
}

uint64_t __REAssetBundle.__renderGraphEmitter(identifier:)(uint64_t *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  result = 0;
  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    v6 = swift_allocObject();
    *(v6 + 16) = AssetHandle;
    type metadata accessor for __RERenderGraphEmitter();
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  return result;
}

uint64_t AnimationPlaybackController.time.setter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REAnimationComponentSetCurrentPlaybackTime();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.setParent(parent:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v5 = ComponentByClass;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + 16);

        MEMORY[0x1C68F6270](v5, *(v1 + 16), v7, *(a1 + 16));
      }
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.__allocating_init(entity:identifier:withObservation:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  AnimationPlaybackController.init(entity:identifier:withObservation:)(a1, a2, a3);
  return v6;
}

uint64_t AnimationPlaybackController.entity.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return swift_weakLoadStrong();
  }
}

uint64_t key path getter for AnimationPlaybackController.isPaused : AnimationPlaybackController@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationPlaybackController.isPaused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t AnimationPlaybackController.isPaused.getter(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  swift_getKeyPath();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v9);
  outlined init with copy of ObservationRegistrar?(v9, v6);
  v11 = type metadata accessor for ObservationRegistrar();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {

    outlined destroy of ObservationRegistrar?(v9);
    outlined destroy of ObservationRegistrar?(v6);
  }

  else
  {
    v16[1] = v2;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController, protocol conformance descriptor for AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v9);
    (*(v12 + 8))(v6, v11);
  }

LABEL_8:
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    v14 = a2(ComponentByClass, *(v2 + 16));
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t key path getter for AnimationPlaybackController.isComplete : AnimationPlaybackController@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationPlaybackController.isComplete.getter();
  *a1 = result & 1;
  return result;
}

uint64_t AnimationPlaybackController.init(entity:identifier:withObservation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 40) = 0;
  swift_weakInit();
  *(v3 + 16) = a2;
  swift_weakAssign();
  *(v3 + 32) = REEntityGetLocalId();
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  *(v3 + 24) = Hasher._finalize()();
  if (a3)
  {
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v9 = ComponentByClass;

      MEMORY[0x1C68F6280](v9, a2, v4);
    }
  }

  return v4;
}

uint64_t AnimationPlaybackController.pause()(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      a1();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.deinit()
{
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      MEMORY[0x1C68F6220](ComponentByClass, *(v0 + 16), v0);
    }
  }

  swift_weakDestroy();
  return v0;
}

uint64_t AnimationPlaybackController.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      MEMORY[0x1C68F6220](ComponentByClass, *(v0 + 16), v0);
    }
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

Swift::Int AnimationPlaybackController.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](*(v0 + 16));
  MEMORY[0x1C68F4C10](*(v0 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationPlaybackController()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](*(v1 + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnimationPlaybackController()
{
  v1 = *v0;
  MEMORY[0x1C68F4C50](*(*v0 + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationPlaybackController()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  MEMORY[0x1C68F4C50](*(*v0 + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t key path getter for AnimationPlaybackController.isValid : AnimationPlaybackController@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationPlaybackController.isValid.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for AnimationPlaybackController.isPlaying : AnimationPlaybackController@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationPlaybackController.isPlaying.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for AnimationPlaybackController.isStopped : AnimationPlaybackController@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationPlaybackController.isStopped.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*AnimationPlaybackController.speed.modify(uint64_t a1))(float *a1, uint64_t a2)
{
  *a1 = v1;
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    v3 = 1.0;
    if (REEntityGetComponentByClass() && REAnimationComponentIsValid())
    {
      REAnimationComponentGetPlaybackSpeed();
      v3 = v4;
    }
  }

  else
  {
    v3 = 1.0;
  }

  *(a1 + 8) = v3;
  return AnimationPlaybackController.speed.modify;
}

double AnimationPlaybackController.time.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  swift_getKeyPath();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v6);
  outlined init with copy of ObservationRegistrar?(v6, v3);
  v8 = type metadata accessor for ObservationRegistrar();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {

    outlined destroy of ObservationRegistrar?(v6);
    outlined destroy of ObservationRegistrar?(v3);
  }

  else
  {
    v13[1] = v0;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController, protocol conformance descriptor for AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v6);
    (*(v9 + 8))(v3, v8);
  }

LABEL_8:
  v10 = 0.0;
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass() && (REAnimationComponentIsValid() & 1) != 0)
    {
      REAnimationComponentGetCurrentPlaybackTime();
      v10 = v11;

      if ((~*&v10 & 0x7FF0000000000000) == 0 && (*&v10 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        return 0.0;
      }
    }

    else
    {
    }
  }

  return v10;
}

uint64_t (*AnimationPlaybackController.time.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = AnimationPlaybackController.time.getter();
  return AnimationPlaybackController.time.modify;
}

uint64_t AnimationPlaybackController.time.modify(double *a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REAnimationComponentSetCurrentPlaybackTime();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

float AnimationPlaybackController.speed.getter(float (*a1)(uint64_t, void))
{
  if (!swift_weakLoadStrong())
  {
    return 1.0;
  }

  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v4 = 1.0;
  if (ComponentByClass)
  {
    v5 = ComponentByClass;
    if (REAnimationComponentIsValid())
    {
      v4 = a1(v5, *(v1 + 16));
    }
  }

  return v4;
}

uint64_t AnimationPlaybackController.speed.setter(void (*a1)(float), float a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      a1(a2);
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t (*AnimationPlaybackController.blendFactor.modify(uint64_t a1))(float *a1, uint64_t a2)
{
  *a1 = v1;
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    v3 = 1.0;
    if (REEntityGetComponentByClass() && REAnimationComponentIsValid())
    {
      REAnimationComponentGetBlendFactor();
      v3 = v4;
    }
  }

  else
  {
    v3 = 1.0;
  }

  *(a1 + 8) = v3;
  return AnimationPlaybackController.blendFactor.modify;
}

uint64_t AnimationPlaybackController.speed.modify(float *a1, uint64_t a2, void (*a3)(float))
{
  v4 = a1[2];
  result = swift_weakLoadStrong();
  if (result)
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      a3(v4);
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

double AnimationPlaybackController.duration.getter()
{
  if (!swift_weakLoadStrong())
  {
    return 0.0;
  }

  REAnimationComponentGetComponentType();
  v0 = 0.0;
  if (REEntityGetComponentByClass() && REAnimationComponentIsValid())
  {
    REAnimationComponentGetDuration();
    v0 = v1;
  }

  return v0;
}

CMTimebaseRef AnimationPlaybackController.clock.getter()
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  timebaseOut[0] = 0;
  v0 = *MEMORY[0x1E695E480];
  v1 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v0, v1, timebaseOut);

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  if (!REEntityGetComponent())
  {

LABEL_8:
    if (timebaseOut[0])
    {
      v3 = timebaseOut[0];
LABEL_13:

      return v3;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((REAnimationComponentIsValid() & 1) == 0)
  {
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    swift_unownedRetainStrong();

    ServiceLocator = REEngineGetServiceLocator();
    result = MEMORY[0x1C68FE1E0](ServiceLocator);
    if (result)
    {
      result = REAnimationServiceGetRootTimebase();
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  result = REAnimationComponentGetAnimationParentTimebase();
  if (result)
  {
LABEL_12:
    v3 = result;

    goto LABEL_13;
  }

  if (timebaseOut[0])
  {
    result = timebaseOut[0];
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t AnimationPlaybackController.clock.setter(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    if (REEntityGetComponent() && (REAnimationComponentIsValid() & 1) != 0)
    {
      type metadata accessor for CMTimebaseRef(0);
      v1 = swift_dynamicCastUnknownClassUnconditional();
      REAnimationComponentSetAnimationParentTimebase();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t (*AnimationPlaybackController.clock.modify(CMTimebaseRef *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AnimationPlaybackController.clock.getter();
  return AnimationPlaybackController.clock.modify;
}

uint64_t AnimationPlaybackController.clock.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return AnimationPlaybackController.clock.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  AnimationPlaybackController.clock.setter(v2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AnimationPlaybackController.stop(blendOutDuration:)(Swift::Double blendOutDuration)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  swift_getKeyPath();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v7);
  outlined init with copy of ObservationRegistrar?(v7, v4);
  v9 = type metadata accessor for ObservationRegistrar();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {

    outlined destroy of ObservationRegistrar?(v7);
    outlined destroy of ObservationRegistrar?(v4);
  }

  else
  {
    v11[1] = v1;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController, protocol conformance descriptor for AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v7);
    (*(v10 + 8))(v4, v9);
  }

LABEL_8:
  if (swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REAnimationComponentStopAnimationWithTime();
      RENetworkMarkComponentDirty();
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AnimationPlaybackController();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestLoadable.enforceResourceSharingBeforeECSCommits()()
{
  v3 = v1;
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

uint64_t RequestLoadable.awaitForResourceSharing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RequestLoadable.awaitForResourceSharing(), 0, 0);
}

uint64_t RequestLoadable.awaitForResourceSharing()()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_1C1887600;
  v8 = *(v0 + 16);
  *(v2 + 56) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v1);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, partial apply for closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v4, v6);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = RequestLoadable.awaitForResourceSharing();
  }

  else
  {

    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static LoadUtilities.getURL(name:in:allowingExtensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v47 = a5;
  v48 = type metadata accessor for URL();
  v9 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v20 = MEMORY[0x1C68F3280](a1, a2, v17);
  v21 = [v20 pathExtension];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v51[0] = v22;
  v51[1] = v24;
  v50 = v51;
  LOBYTE(v22) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v49, a4);

  if ((v22 & 1) != 0 && (v25 = MEMORY[0x1C68F3280](a1, a2), v26 = [a3 URLForResource:v25 withExtension:0], v25, v26))
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v9 + 32);
    v28 = v48;
    v27(v19, v15, v48);
    v29 = v47;
    v27(v47, v19, v28);
    return (*(v9 + 56))(v29, 0, 1, v28);
  }

  else
  {
    v31 = (a4 + 40);
    v32 = *(a4 + 16) + 1;
    while (--v32)
    {
      v33 = v31 + 2;
      v35 = *(v31 - 1);
      v34 = *v31;

      v36 = MEMORY[0x1C68F3280](a1, a2);
      v37 = MEMORY[0x1C68F3280](v35, v34);

      v38 = [a3 URLForResource:v36 withExtension:v37];

      v31 = v33;
      if (v38)
      {
        v39 = v46;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = *(v9 + 32);
        v41 = v45;
        v42 = v39;
        v43 = v48;
        v40(v45, v42, v48);
        v44 = v47;
        v40(v47, v41, v43);
        return (*(v9 + 56))(v44, 0, 1, v43);
      }
    }

    return (*(v9 + 56))(v47, 1, 1, v48);
  }
}

uint64_t static LoadUtilities.getURLForMaterialX(name:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1C68F3280](a1, a2, v12);
  v16 = [v15 pathExtension];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == 2020373613 && v19 == 0xE400000000000000)
  {

LABEL_9:
    v26 = MEMORY[0x1C68F3280](a1, a2);
    v27 = [a3 URLForResource:v26 withExtension:0];

    if (v27)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for URL();
      (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
    }

    else
    {
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    return outlined init with take of URL?(v14, a4);
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_9;
  }

  v22 = MEMORY[0x1C68F3280](a1, a2);
  v23 = MEMORY[0x1C68F3280](2020373613, 0xE400000000000000);
  v24 = [a3 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  }

  else
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  }

  v14 = v10;
  return outlined init with take of URL?(v14, a4);
}

uint64_t static LoadUtilities.getURLForRealityFile(name:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1C68F3280](a1, a2, v12);
  v16 = [v15 pathExtension];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == 0x7974696C616572 && v19 == 0xE700000000000000)
  {

LABEL_9:
    v26 = MEMORY[0x1C68F3280](a1, a2);
    v27 = [a3 URLForResource:v26 withExtension:0];

    if (v27)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for URL();
      (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
    }

    else
    {
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    return outlined init with take of URL?(v14, a4);
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_9;
  }

  v22 = MEMORY[0x1C68F3280](a1, a2);
  v23 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v24 = [a3 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  }

  else
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  }

  v14 = v10;
  return outlined init with take of URL?(v14, a4);
}

void static LoadUtilities.getURLForRealityFile(withScene:in:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a2;
  v7 = type metadata accessor for URL();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000, v8);
  v12 = [a3 URLsForResourcesWithExtension:v11 subdirectory:0];

  if (!v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
    v21 = *(*(v20 - 8) + 56);

    v21(a4, 1, 1, v20);
    return;
  }

  v67 = a1;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v14 + 120, &v69);
  v15 = v71;
  v16 = v72;
  __swift_project_boxed_opaque_existential_1(&v69, v71);
  v17 = *(v16 + 32);

  v65 = v17(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  v59 = *(v13 + 16);
  if (!v59)
  {
LABEL_39:

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
    (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
    return;
  }

  v18 = 0;
  v19 = v67;
  v62 = v13 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v64 = v66 + 16;
  v60 = v13;
  v61 = (v66 + 8);
  v57 = v14;
  v58 = v10;
  while (v18 < *(v13 + 16))
  {
    v22 = *(v66 + 72);
    v63 = v18;
    v23 = *(v66 + 16);
    v23(v10, v62 + v22 * v18, v7);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v27 = RERealityFileMountFileAtURL();

    if (!v27)
    {
      goto LABEL_8;
    }

    AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
    if (AssetDescriptorCount < 0)
    {
      goto LABEL_46;
    }

    v29 = AssetDescriptorCount;
    v56 = v23;
    if (AssetDescriptorCount)
    {
      v30 = 0;
      v31 = MEMORY[0x1E69E7CC0];
      do
      {
        if (RERealityFileGetAssetDescriptorAtIndex())
        {
          v32 = RERealityFileAssetDescriptorAsSceneDescriptor();
          if (v32)
          {
            v33 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
            }

            v35 = *(v31 + 2);
            v34 = *(v31 + 3);
            if (v35 >= v34 >> 1)
            {
              v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
            }

            *(v31 + 2) = v35 + 1;
            *&v31[8 * v35 + 32] = v33;
          }
        }

        ++v30;
      }

      while (v29 != v30);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v31 + 2);
    if (v36)
    {
      v37 = 0;
      v55 = a4;
      v54 = v7;
      v52 = v36;
      v51[1] = v31 + 32;
      while (2)
      {
        if (v37 >= *(v31 + 2))
        {
          goto LABEL_47;
        }

        if (RESceneDescriptorGetSceneName())
        {
          v38 = String.init(cString:)();
          v40 = v39;
          if (v38 != v19)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v38 = 0;
          v40 = 0xE000000000000000;
          if (v19)
          {
LABEL_31:
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              v46 = v38;
              v45 = v40;
              goto LABEL_42;
            }

            v53 = v37 + 1;
            v41 = 4;
            v42 = &unk_1F40E4018;
            do
            {
              v43 = *(v42 - 1);
              v44 = *v42;
              v69 = v19;
              v70 = v68;

              MEMORY[0x1C68F3410](46, 0xE100000000000000);

              MEMORY[0x1C68F3410](v43, v44);

              v46 = v69;
              v45 = v70;
              if (v38 == v69 && v40 == v70)
              {
                v46 = v38;
LABEL_41:

                a4 = v55;
                v7 = v54;
                goto LABEL_42;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_41;
              }

              v42 += 2;
              --v41;
              v19 = v67;
            }

            while (v41);

            v37 = v53;
            a4 = v55;
            v7 = v54;
            if (v53 != v52)
            {
              continue;
            }

            goto LABEL_7;
          }
        }

        break;
      }

      if (v40 == v68)
      {

        v45 = v40;
        v46 = v19;
LABEL_42:
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
        v49 = (a4 + *(v48 + 48));
        v50 = v58;
        v56(a4, v58, v7);
        *v49 = v46;
        v49[1] = v45;
        (*(*(v48 - 8) + 56))(a4, 0, 1, v48);
        RERealityFileUnmount();

        (*v61)(v50, v7);
        return;
      }

      goto LABEL_31;
    }

LABEL_7:

    RERealityFileUnmount();
    v10 = v58;
LABEL_8:
    v18 = v63 + 1;
    (*v61)(v10, v7);
    v13 = v60;
    if (v18 == v59)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t NetworkSendBlockingCategory.supportsResourceSharingBeforeECSCommits.getter()
{
  v1 = *v0;
  if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
  {
    v4 = *v0;
    swift_once();
    v1 = v4;
  }

  v2 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;

  return specialized Set.contains(_:)(v1, v2);
}

RealityFoundation::NetworkSendBlockingCategory_optional __swiftcall NetworkSendBlockingCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NetworkSendBlockingCategory.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NetworkSendBlockingCategory.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x65727574786574;
    v7 = 0x6F4C797469746E65;
    if (v1 != 8)
    {
      v7 = 0x6F65646976;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1752393069;
    if (v1 != 5)
    {
      v8 = 0x73636973796870;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6F6974616D696E61;
    v3 = 0x6D6E6F7269766E65;
    v4 = 0x4D6E49746C697562;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6F69647561;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NetworkSendBlockingCategory@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkSendBlockingCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkSendBlockingCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkSendBlockingCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for $clientIsOptingOutOfFlickerMitigations()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCySbGMd, &_ss9TaskLocalCySbGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static RequestLoadableUtilities.$clientIsOptingOutOfFlickerMitigations = result;
  return result;
}

uint64_t one-time initialization function for categoriesSupportingResourceSharingBeforeECSCommits()
{
  result = closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits();
  static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1C68F3280](0xD000000000000030, 0x80000001C18EB640);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v12, v13);
    outlined init with copy of Any(v13, v12);
    if (swift_dynamicCast())
    {
      if (v11 == 1)
      {
        v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(outlined read-only object #0 of static NetworkSendBlockingCategory.allCases.getter);
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v13);
        return MEMORY[0x1E69E7CD0];
      }

      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    LOBYTE(v12[0]) = outlined read-only object #0 of static NetworkSendBlockingCategory.allCases.getter[v4 + 32];
    if (closure #1 in closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits(v12, 0xD000000000000030, 0x80000001C18EB640))
    {
      v8 = v12[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        v5 = *&v13[0];
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = *&v13[0];
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 10);
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(v5);

  return v3;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [objc_opt_self() standardUserDefaults];
  *&v25[0] = a2;
  *(&v25[0] + 1) = a3;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (v5 > 4)
  {
    v15 = 0xE700000000000000;
    v16 = 0x65727574786574;
    v17 = 0xEA00000000006461;
    v18 = 0x6F4C797469746E65;
    if (v5 != 8)
    {
      v18 = 0x6F65646976;
      v17 = 0xE500000000000000;
    }

    if (v5 != 7)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0xE400000000000000;
    v20 = 1752393069;
    if (v5 != 5)
    {
      v20 = 0x73636973796870;
      v19 = 0xE700000000000000;
    }

    if (v5 <= 6)
    {
      v13 = v20;
    }

    else
    {
      v13 = v16;
    }

    if (v5 <= 6)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v7 = 0xE90000000000006ELL;
    v8 = 0x6F6974616D696E61;
    v9 = 0xEB00000000746E65;
    v10 = 0x6D6E6F7269766E65;
    v11 = 0xEF6C616972657461;
    v12 = 0x4D6E49746C697562;
    if (v5 != 3)
    {
      v12 = 0xD000000000000013;
      v11 = 0x80000001C18DDAF0;
    }

    if (v5 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v5)
    {
      v8 = 0x6F69647561;
      v7 = 0xE500000000000000;
    }

    if (v5 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v5 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }
  }

  MEMORY[0x1C68F3410](v13, v14);

  v21 = MEMORY[0x1C68F3280](*&v25[0], *(&v25[0] + 1));

  v22 = [v6 objectForKey_];

  if (v22 && (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), outlined init with take of Any(v24, v25), outlined init with take of Any(v25, v24), (swift_dynamicCast() & 1) != 0))
  {
    return v26;
  }

  else
  {
    return 1;
  }
}

void closure #2 in static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(uint64_t a1, uint64_t a2)
{
  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_49_0;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v6[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v6[3] = &block_descriptor_56_1;
  v5 = _Block_copy(v6);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v5);
  _Block_release(v2);
}

uint64_t closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v11 + 120, v32);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  if ((*(v13 + 56))(v12, v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  outlined init with copy of __REAssetService(v32, aBlock);
  LOBYTE(v30[0]) = v14;
  v15 = specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(aBlock, v30);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = partial apply for closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_37;
  v18 = _Block_copy(aBlock);
  v19 = _Block_copy(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v30[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v30[5] = v20;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v30[3] = &block_descriptor_22_0;
  v21 = _Block_copy(v30);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v21);
  _Block_release(v18);

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  type metadata accessor for MainActor();

  v23 = v29;

  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v23;
  v25[5] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v25);

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

void closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
LABEL_5:
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_29;
    v6 = _Block_copy(aBlock);
    v7 = _Block_copy(v6);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v10[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v10[3] = &block_descriptor_36;
    v9 = _Block_copy(v10);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v9);
    _Block_release(v6);
    return;
  }

  RequestCopyError = REAssetLoadRequestCopyError();
  if (RequestCopyError)
  {
    v4 = RequestCopyError;
    v5 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

    aBlock[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v7, v6);
}

uint64_t closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0[2] + 32);
    do
    {
      v4 = v0[3];
      v5 = v3[3];
      v6 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v5);
      (*(v6 + 16))(v4, v5, v6);
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t withUnsafeOptOutOfFlickerMitigations<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for $clientIsOptingOutOfFlickerMitigations != -1)
  {
    swift_once();
  }

  return TaskLocal.withValue<A>(_:operation:file:line:)();
}

uint64_t LoadRequest<A>.Fulfiller.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t LoadRequest<A>.CancellableHolder.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(uint64_t a1)
{
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v30);
  v4 = v31;
  v5 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((*(v5 + 64))(v4, v5))
  {
    v6 = *(a1 + 16);
    v7 = a1 + 32;
    v8 = v6 + 1;
    v9 = v7;
    while (--v8)
    {
      outlined init with copy of __REAssetService(v9, aBlock);
      if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
      {
        swift_once();
      }

      v9 += 40;
      v10 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      (*(v12 + 1))(v25, v11, v12);
      v13 = specialized Set.contains(_:)(LOBYTE(v25[0]), v10);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if ((v13 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    if (one-time initialization token for $clientIsOptingOutOfFlickerMitigations != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v14 = LOBYTE(aBlock[0]) ^ 1;
LABEL_11:
    v15 = v14 & 1;
    outlined init with copy of __REAssetService(v30, aBlock);
    LOBYTE(v25[0]) = v15;
    v16 = specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(aBlock, v25);
    if (!v1)
    {
      v18 = v16;
      v28 = partial apply for closure #2 in static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:);
      v29 = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v27 = &block_descriptor_39;
      v19 = _Block_copy(aBlock);
      v20 = _Block_copy(v19);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v25[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
      v25[5] = v21;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      v25[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v25[3] = &block_descriptor_46_0;
      v22 = _Block_copy(v25);

      REAssetLoadRequestSetCompletionHandler();
      _Block_release(v22);
      _Block_release(v19);

      if (v6)
      {
        do
        {
          outlined init with copy of __REAssetService(v7, aBlock);
          v23 = v27;
          v24 = v28;
          __swift_project_boxed_opaque_existential_1(aBlock, v27);
          (*(v24 + 2))(v18, v23, v24);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v7 += 40;
          --v6;
        }

        while (v6);
      }

      else
      {
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t lazy protocol witness table accessor for type [NetworkSendBlockingCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_sSay17RealityFoundation27NetworkSendBlockingCategoryOGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(__CFError *a1)
{
  Code = CFErrorGetCode(a1);
  if (Code == 300 || Code == 200)
  {
    goto LABEL_8;
  }

  if (Code != 100)
  {
    if (a1)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      v3 = swift_allocError();
      *v4 = a1;
      v5 = a1;
      return v3;
    }

LABEL_8:
    type metadata accessor for Entity.LoadError(0);
    lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    return v3;
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  CancellationError.init()();
  return v3;
}

uint64_t lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(a1, v1 + v4, v5);
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(a1, v4, v5, v7, v6);
}

uint64_t Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 80))(&v21, a3, a4);
  if (a3 == &type metadata for ModelComponent)
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      *&v18 = Component;
      static ModelComponent.__fromCore(_:borrowStrongReference:)(&v18, a2 & 1, &v21);
      v18 = v21;
      v19 = v22;
      v20 = v23;
      v12 = swift_dynamicCast();
      return (*(off_1F410C670 + 7))(a5, v12 ^ 1u, 1, &type metadata for ModelComponent);
    }

    goto LABEL_15;
  }

  if (v21 == 36)
  {
    (*(a4 + 104))(&v21, a3, a4);
    if (v21)
    {
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        *&v18 = ComponentByClass;
        (*(a4 + 64))(&v18, a3, a4);
        return (*(a3[-1].Description + 7))(a5, 0, 1, a3);
      }
    }

    else
    {
      specialized static SceneManager.customComponentType(_:)(a1, a4);
      if (REEntityGetCustomComponent())
      {
        result = RECustomComponentGetObject();
        if (!result)
        {
          __break(1u);
          return result;
        }

        (*(a4 + 32))(result, a3, a4);
        return (*(a3[-1].Description + 7))(a5, 0, 1, a3);
      }
    }

    goto LABEL_15;
  }

  v14 = REEntityGetComponent();
  if (!v14)
  {
LABEL_15:
    v15 = *(a3[-1].Description + 7);
    v16 = a5;
    v17 = 1;
    goto LABEL_16;
  }

  *&v21 = v14;
  (*(a4 + 64))(&v21, a3, a4);
  v15 = *(a3[-1].Description + 7);
  v16 = a5;
  v17 = 0;
LABEL_16:

  return v15(v16, v17, 1, a3);
}

uint64_t Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5)
{
  v43 = a3;
  v47 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v44 = &v42 - v21;
  v46 = *v5;
  v22 = *(v46 + 16);
  (*(a5 + 10))(&v48, a4, a5, v20);
  if (v48 == 36)
  {
    v23 = specialized static SceneManager.customComponentType(_:)(a1, a5);
    v44 = v22;
    ComponentByClass = REEntityGetComponentByClass();
    (*(v10 + 16))(v12, v47, v9);
    if ((*(v16 + 48))(v12, 1, a4) == 1)
    {
      result = (*(v10 + 8))(v12, v9);
      if (!ComponentByClass)
      {
        return result;
      }

      MEMORY[0x1EEE9AC00](result);
      *(&v42 - 2) = v44;
      *(&v42 - 1) = v23;
      v26 = partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:);
      v27 = MEMORY[0x1E69E7CA8] + 8;
      v28 = a1;
      v29 = a4;
      v30 = a5;
      return Entity.withMutation<A, B>(componentType:_:)(v28, v26, v29, v27, v30, &v48);
    }

    v34 = v45;
    (*(v16 + 32))(v45, v12, a4);
    if (ComponentByClass || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        MEMORY[0x1EEE9AC00](Object);
        *(&v42 - 6) = a4;
        *(&v42 - 5) = a5;
        *(&v42 - 4) = a1;
        *(&v42 - 3) = v34;
        *(&v42 - 2) = v36;
        *(&v42 - 8) = v37;
        Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #3 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), a4, MEMORY[0x1E69E7CA8] + 8, a5, &v48);
        if (!ComponentByClass)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }
  }

  else
  {
    v31 = v47;
    v45 = a5;
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    v32 = result;
    v42 = a1;
    (*(v10 + 16))(v15, v31, v9);
    if ((*(v16 + 48))(v15, 1, a4) == 1)
    {
      v33 = (*(v10 + 8))(v15, v9);
      MEMORY[0x1EEE9AC00](v33);
      *(&v42 - 2) = v22;
      *(&v42 - 1) = v32;
      v26 = partial apply for closure #2 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:);
      v27 = MEMORY[0x1E69E7CA8] + 8;
      v28 = v42;
      v29 = a4;
      v30 = v45;
      return Entity.withMutation<A, B>(componentType:_:)(v28, v26, v29, v27, v30, &v48);
    }

    v34 = v44;
    (*(v16 + 32))(v44, v15, a4);
    v38 = REEntityGetComponentByClass();
    v39 = v38;
    if (v38 || (v38 = REEntityAddComponentNoEvents()) != 0)
    {
      MEMORY[0x1EEE9AC00](v38);
      v40 = v45;
      *(&v42 - 6) = a4;
      *(&v42 - 5) = v40;
      *(&v42 - 4) = v34;
      *(&v42 - 3) = v41;
      *(&v42 - 16) = v43 & 1;
      Entity.withMutation<A, B>(componentType:_:)(v42, partial apply for closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), a4, MEMORY[0x1E69E7CA8] + 8, v40, &v48);
      if (!v39)
      {
        REEntitySendAddAndActivateComponentEvents();
      }
    }
  }

  return (*(v16 + 8))(v34, a4);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  specialized Entity.ComponentSet.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

BOOL Entity.ComponentSet.has(_:)(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))(&v6);
  if (v6 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a1, a2);
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = REEntityGetComponent();
  }

  return CustomComponent != 0;
}

uint64_t Entity.ComponentSet.set<A>(_:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v14[1] = *v3;
  v12 = *(a2 - 8);
  (*(v12 + 16))(v14 - v10, a1, a2, v9);
  (*(v12 + 56))(v11, 0, 1, a2);
  Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a2, v11, 0, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = result;
  if (a2 < 0)
  {
    v10 = 0;
    while (1)
    {
      v46 = v7 == v6;
      if (v7 == v6)
      {
        goto LABEL_63;
      }

      v9 = __OFSUB__(v7--, 1);
      if (v9)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v44 = v10 - 1;
LABEL_15:
      result = REEntityGetComponentCount();
      if (result >= 1)
      {
        break;
      }

      v11 = 0;
LABEL_58:
      if (v11 < v7)
      {
        goto LABEL_59;
      }

LABEL_11:
      v10 = v44;
      v6 = a3;
      if (v44 <= a2)
      {
        goto LABEL_65;
      }
    }

    v11 = 0;
    while (1)
    {
      Shared = REEngineGetShared();
      if (Shared)
      {
        v14 = Shared;
        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v15 = static __ServiceLocator.lock;
        os_unfair_lock_lock((static __ServiceLocator.lock + 16));
        if (!static __ServiceLocator.sharedEngine || *(static __ServiceLocator.sharedEngine + 3) != v14)
        {
          type metadata accessor for __Engine();
          swift_allocObject();
          static __ServiceLocator.sharedEngine = __Engine.init(coreEngine:)(v14);

          specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
          specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
        }

        os_unfair_lock_unlock(v15 + 4);
        v16 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_45;
        }
      }

      else
      {
        static __ServiceLocator.sharedEngine = 0;

        v16 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_45;
        }
      }

      Default = REEngineConfigurationCreateDefault();
      type metadata accessor for EngineConfiguration();
      v18 = swift_allocObject();
      *(v18 + 16) = Default;
      if (REGetRetainCount() >= 2)
      {

        v19 = REEngineConfigurationClone();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;

        v18 = v20;
      }

      REEngineConfigurationSetClockMode();
      if (one-time initialization token for defaultServices != -1)
      {
        swift_once();
      }

      if (REGetRetainCount() >= 2)
      {

        v21 = REEngineConfigurationClone();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;

        v18 = v22;
      }

      REEngineConfigurationSetServicesToCreate();
      if (REGetRetainCount() >= 2)
      {

        v23 = REEngineConfigurationClone();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;

        v18 = v24;
      }

      REEngineConfigurationSetServicesToUpdate();
      if (REGetRetainCount() >= 2)
      {

        v25 = REEngineConfigurationClone();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;

        v18 = v26;
      }

      REEngineConfigurationSetStartupOptions();
      if (one-time initialization token for defaultRenderFlags != -1)
      {
        swift_once();
      }

      if (REGetRetainCount() >= 2)
      {

        v27 = REEngineConfigurationClone();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;

        v18 = v28;
      }

      REEngineConfigurationSetRenderFlags();
      if (!specialized static __ServiceLocator.__sharedEngine.getter())
      {
        v48[0] = v18;
        v29 = specialized static __Engine.makeSharedEngine(_:)(v48);
        REEngineSetShared();
        static __ServiceLocator.sharedEngine = v29;

        static __ServiceLocator.createdSharedEngine = 1;
      }

      specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
      result = specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
      v16 = static __ServiceLocator.sharedEngine;
      if (!static __ServiceLocator.sharedEngine)
      {
        goto LABEL_69;
      }

LABEL_45:
      result = swift_beginAccess();
      v30 = v16[5];
      if (!v30)
      {
        goto LABEL_68;
      }

      swift_beginAccess();
      outlined init with copy of __REAssetService(v30 + 80, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
      type metadata accessor for SceneManager();
      swift_dynamicCast();
      REEntityGetComponentAtIndex();
      Class = REComponentGetClass();
      swift_beginAccess();
      v32 = *(v47 + 16);
      swift_beginAccess();
      v33 = *(v32 + 24);
      if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v35 & 1) != 0))
      {
        v12 = *(*(v33 + 56) + 80 * v34 + 48);

        if (v12 == 2)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (one-time initialization token for handlesToCustomComponentTypes != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v36 = static SceneManager.handlesToCustomComponentTypes;
        if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v38 & 1) != 0))
        {
          v39 = *(*(v36 + 56) + 16 * v37);
          swift_endAccess();
          v40 = *(v47 + 16);
          swift_beginAccess();
          if (!*(*(v40 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v39), (v41 & 1) == 0))
          {

            if (v11 >= v7)
            {
              goto LABEL_11;
            }

LABEL_59:
            v48[0] = a4;
            result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v7);
            if (result)
            {
              goto LABEL_11;
            }

            --v7;
            goto LABEL_15;
          }
        }

        else
        {
          swift_endAccess();
        }
      }

      ++v11;
      result = REEntityGetComponentCount();
      if (v11 >= result)
      {
        goto LABEL_58;
      }
    }
  }

  if (a2)
  {
    v8 = 0;
    while (1)
    {
      v46 = v7 == v6;
      if (v7 == v6)
      {
        break;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        __break(1u);
        goto LABEL_67;
      }

      while (1)
      {
        result = REEntityGetComponentCount();
        if (v7 >= result)
        {
          break;
        }

        v48[0] = a4;
        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v7);
        if (result)
        {
          break;
        }

        ++v7;
      }

      if (++v8 == a2)
      {
        goto LABEL_65;
      }
    }

LABEL_63:
    v7 = 0;
  }

  else
  {
    v46 = 0;
  }

LABEL_65:
  *a5 = v7;
  *(a5 + 8) = v46;
  return result;
}

uint64_t Entity.ComponentSet.count.getter()
{
  v1 = *v0;
  v5[1] = *v0;
  if (REEntityGetComponentCount() < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v5[0] = v1;
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 < REEntityGetComponentCount());
  }

  v5[0] = v2;
  ComponentCount = REEntityGetComponentCount();
  return Entity.ComponentSet.distance(from:to:)(v5, &ComponentCount);
}

double Entity.ComponentSet.existentialBox(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 80))(&v13);
  if (v13 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a1, a2);
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v7 = Object;
        v8 = *(a2 + 32);
        *(a3 + 24) = a1;
        *(a3 + 32) = a2;
        __swift_allocate_boxed_opaque_existential_1(a3);
        v8(v7, a1, a2);
        return result;
      }
    }
  }

  else
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      v12 = Component;
      v11 = *(a2 + 64);
      *(a3 + 24) = a1;
      *(a3 + 32) = a2;
      __swift_allocate_boxed_opaque_existential_1(a3);
      v11(&v12, a1, a2);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, char a3)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  if (v5 == &type metadata for ModelComponent)
  {
    (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    swift_dynamicCast();
    v11 = v14;
    v12 = v15;
    v13 = v16;
    v17 = a2;
    ModelComponent.__toCore(_:returnStrongReference:)(&v17, a3 & 1);
  }

  else
  {
    *&v14 = a2;
    return (*(v6 + 72))(&v14, v5, v6, v9);
  }
}

uint64_t closure #3 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13[4] = a6;
  v13[3] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  (*(a6 + 40))(v13, a3, 0, (a4 & 1) == 0, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Entity.ComponentSet.doSetExistential(_:newValue:)(a2, a3, a1);
  outlined destroy of Component?(a1);
}

uint64_t Entity.ComponentSet.doSetExistential(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 80))(v15);
  if (LODWORD(v15[0]) != 36)
  {
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    outlined init with copy of Component?(a3, &v13);
    if (v14)
    {
      outlined init with take of ForceEffectBase(&v13, v15);
      ComponentByClass = REEntityGetComponentByClass();
      v10 = ComponentByClass;
      if (!ComponentByClass && (ComponentByClass = REEntityAddComponentNoEvents()) == 0 || (MEMORY[0x1EEE9AC00](ComponentByClass), Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #1 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, MEMORY[0x1E69E7CA8] + 8, a2, &v13), !v10))
      {
        REEntitySendAddAndActivateComponentEvents();
      }

      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    v12 = outlined destroy of Component?(&v13);
    MEMORY[0x1EEE9AC00](v12);
    v11 = MEMORY[0x1E69E7CA8];
    return Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, v11 + 8, a2, v15);
  }

  specialized static SceneManager.customComponentType(_:)(a1, a2);
  CustomComponent = REEntityGetCustomComponent();
  outlined init with copy of Component?(a3, &v13);
  if (v14)
  {
    outlined init with take of ForceEffectBase(&v13, v15);
    if (CustomComponent || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        MEMORY[0x1EEE9AC00](Object);
        Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #3 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, MEMORY[0x1E69E7CA8] + 8, a2, &v13);
        if (!CustomComponent)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  result = outlined destroy of Component?(&v13);
  if (CustomComponent)
  {
    MEMORY[0x1EEE9AC00](result);
    v11 = MEMORY[0x1E69E7CA8];
    return Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, v11 + 8, a2, v15);
  }

  return result;
}

uint64_t (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  (*(a3 + 80))(&v18, a2, a3);
  v10 = v18;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  if (v10 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a2, a3);
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v12 = Object;
        v13 = *(a3 + 32);
        *(v9 + 64) = a2;
        *(v9 + 72) = a3;
        __swift_allocate_boxed_opaque_existential_1((v9 + 40));
        v13(v12, a2, a3);
LABEL_10:
        outlined assign with take of Component?(v9 + 40, v9);
      }
    }
  }

  else
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      v17 = Component;
      v15 = *(a3 + 64);
      *(v9 + 64) = a2;
      *(v9 + 72) = a3;
      __swift_allocate_boxed_opaque_existential_1((v9 + 40));
      v15(&v17, a2, a3);
      goto LABEL_10;
    }
  }

  return Entity.ComponentSet.subscript.modify;
}

void Entity.ComponentSet.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = v2[11];
    v4 = v2[10];
    outlined init with copy of Component?(v2, (v2 + 5));

    Entity.ComponentSet.doSetExistential(_:newValue:)(v4, v3, (v2 + 5));
    outlined destroy of Component?((v2 + 5));
  }

  outlined destroy of Component?(v2);

  free(v2);
}

uint64_t closure #1 in Entity.ComponentSet.doSetExistential(_:newValue:)(ValueMetadata *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == &type metadata for ModelComponent)
  {
    outlined init with copy of __REAssetService(a3, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
    swift_dynamicCast();
    v9 = v12;
    v10 = v13;
    v11 = v14;
    v8 = a4;
    ModelComponent.__toCore(_:returnStrongReference:)(&v8, 0);
  }

  else
  {
    v5 = a3[3];
    v6 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v5);
    v15[0] = a4;
    return (*(v6 + 72))(v15, v5, v6);
  }
}

Swift::Void __swiftcall Entity.ComponentSet.set(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = *v1;
    v4 = a1._rawValue + 32;
    do
    {
      outlined init with copy of __REAssetService(v4, v9);
      v8 = v3;
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      DynamicType = swift_getDynamicType();
      v6 = v9[4];
      outlined init with copy of __REAssetService(v9, v7);
      Entity.ComponentSet.doSetExistential(_:newValue:)(DynamicType, v6, v7);
      outlined destroy of Component?(v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v4 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t Entity.ComponentSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  Entity.ComponentSet.doSetExistential(_:newValue:)(a1, a2, v4);
  return outlined destroy of Component?(v4);
}

Swift::Void __swiftcall Entity.ComponentSet.removeAll()()
{
  v1 = 0;
  v2 = *v0;
  while (1)
  {
    while (v1 < REEntityGetComponentCount())
    {
      v9 = v2;
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v1))
      {
        break;
      }

      ++v1;
    }

    if (v1 == REEntityGetComponentCount())
    {
      break;
    }

    ComponentCount = REEntityGetComponentCount();
    if (REEntityGetComponentCount() < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        *&v6[0] = v2;
        if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 < REEntityGetComponentCount());
    }

    specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(ComponentCount, -1, v4, v2, &v9);
    if (v10 == 1)
    {
      break;
    }

    *&v6[0] = v2;
    v8 = v9;
    Entity.ComponentSet.subscript.getter(&v9);
    v8 = v2;
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    DynamicType = swift_getDynamicType();
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    Entity.ComponentSet.doSetExistential(_:newValue:)(DynamicType, v12, v6);
    outlined destroy of Component?(v6);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v1 = 0;
  }
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v21[2] = a3;
  v22 = a2;
  v23 = a1;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  v24 = *v6;
  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a4, 0, a4, a5, v21 - v15);
  Description = a4[-1].Description;
  if (Description[6](v16, 1, a4) != 1)
  {
    return Description[4](a6, v16, a4);
  }

  v21[1] = v6;
  v18 = *(v11 + 8);
  v19 = v18(v16, v10);
  v22(v19);
  Description[2](v13, a6, a4);
  (Description[7])(v13, 0, 1, a4);
  specialized Entity.ComponentSet.subscript.setter(v13, v23, a4, a5);
  return v18(v13, v10);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  specialized Entity.ComponentSet.subscript.setter(a1, a2, a5, a6);
  v8 = *(*(a5 - 8) + 8);

  return v8(a1, a5);
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, ValueMetadata *a5, char *a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x38uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[2] = a6;
  v14[3] = v6;
  *v14 = a2;
  v14[1] = a5;
  Description = a5[-1].Description;
  v14[4] = Description;
  v17 = Description[8];
  if (v13)
  {
    v14[5] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v14[5] = malloc(Description[8]);
    v18 = malloc(v17);
  }

  v15[6] = v18;
  Entity.ComponentSet.subscript.getter(a2, a3, a4, a5, a6, v18);
  return Entity.ComponentSet.subscript.modify;
}

uint64_t Entity._getComponent<A>()@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a1, 0, a1, a2, a3);
}

uint64_t Entity._setComponent<A>(_:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(a2 - 8);
  (*(v13 + 16))(&v16 - v11, a1, a2, v10);
  (*(v13 + 56))(v12, 0, 1, a2);
  v17 = v4;

  specialized Entity.ComponentSet.subscript.setter(v12, a2, a2, a3);
  (*(v9 + 8))(v12, v8);
  v14 = *(v17 + 16);

  if (v14 != *(v4 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a3, a1, 0, a3, a4);
}

{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = *(a3 - 8);
  (*(v13 + 16))(&v15 - v11, a1, a3, v10);
  (*(v13 + 56))(v12, 0, 1, a3);
  specialized Entity.ComponentSet.subscript.setter(v12, a2, a3, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t outlined destroy of Component?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t REAudioFileAssetConfigurationWrapper.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[16];
  v4 = a1[32];
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  v9 = a1[60];
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  if (v2)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  REAudioFileAssetConfigurationSetStreaming();
  REAudioFileAssetConfigurationSetRandomizeStart();
  REAudioFileAssetConfigurationSetShouldLoop();
  if (v5)
  {

    v7 = MEMORY[0x1C68F3280](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  if (v4 != 255)
  {
    REAudioFileAssetConfigurationSetCalibrationMode();
    REAudioFileAssetConfigurationSetCalibrationLevel();
  }

  if (v3 - 1 >= 2)
  {
    if (v3)
    {
      goto LABEL_14;
    }

    REAudioFileAssetConfigurationSetNormalizationMode();
    goto LABEL_13;
  }

  REAudioFileAssetConfigurationSetNormalizationMode();
  if (v3 <= 1)
  {
LABEL_13:
    REAudioFileAssetConfigurationSetTargetLUFS();
  }

LABEL_14:

  if ((v9 & 1) == 0)
  {
    REAudioFileAssetConfigurationSetLayoutTag();
  }

  return v1;
}

uint64_t REAudioFileAssetConfigurationWrapper.init(configuration:)(double *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v5 = *(a1 + 5);
  v4 = *(a1 + 6);
  v6 = *(a1 + 60);
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  REAudioFileAssetConfigurationSetRandomizeStart();
  REAudioFileAssetConfigurationSetShouldLoop();
  if (v4)
  {

    v7 = MEMORY[0x1C68F3280](v5, v4);
  }

  else
  {
    v7 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  if (v3 != 255)
  {
    REAudioFileAssetConfigurationSetCalibrationLevel();
  }

  if (v2 - 1 >= 2)
  {
    if (v2)
    {
      goto LABEL_12;
    }

    REAudioFileAssetConfigurationSetNormalizationMode();
    goto LABEL_11;
  }

  REAudioFileAssetConfigurationSetNormalizationMode();
  if (v2 <= 1)
  {
LABEL_11:
    REAudioFileAssetConfigurationSetTargetLUFS();
  }

LABEL_12:
  if (v3 != 255)
  {
    REAudioFileAssetConfigurationSetCalibrationMode();
  }

  if ((v6 & 1) == 0)
  {
    REAudioFileAssetConfigurationSetLayoutTag();
  }

  return v1;
}

uint64_t REAudioFileAssetConfigurationWrapper.__deallocating_deinit()
{
  REAudioFileAssetConfigurationDestroy();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityLookupTable.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t __RKEntityLookupTable.entity(for:)(uint64_t a1)
{

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v4 = swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](v4);
  static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)();

  return v8;
}

uint64_t implicit closure #1 in __RKEntityLookupTable.entity(for:)(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  if (a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  return 0x6E696E7275746552;
}

void __RKEntityLookupTable.uuid(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v52 = a2;
  v3 = &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
  v51 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v48 - v11;
  v61 = 91;
  v62 = 0xE100000000000000;
  v64 = 0;
  v65 = 0xE000000000000000;
  v63 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v64, v65);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v12 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v12);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v48 = v61;
  v49 = v62;
  swift_beginAccess();
  v13 = *(v2 + 16);
  v16 = *(v13 + 64);
  v15 = v13 + 64;
  v14 = v16;
  v17 = 1 << *(*(v2 + 16) + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v57 = *(v2 + 16);
  swift_bridgeObjectRetain_n();
  v21 = 0;
  v53 = v15;
  if (v19)
  {
    while (1)
    {
      v22 = v7;
      v23 = v3;
      v24 = v21;
LABEL_9:
      v25 = __clz(__rbit64(v19)) | (v24 << 6);
      v26 = v57;
      v27 = *(v57 + 48);
      v60 = type metadata accessor for UUID();
      v28 = *(v60 - 8);
      v29 = v28;
      v30 = v27 + *(v28 + 72) * v25;
      v31 = v54;
      (*(v28 + 16))(v54, v30, v60);
      v32 = *(*(v26 + 56) + 8 * v25);
      v33 = v58;
      *&v31[*(v58 + 48)] = v32;
      v34 = v31;
      v3 = v23;
      outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v34, v22, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v23);
      v35 = v55;
      outlined init with copy of [String : String](v22, v55, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v3);
      v59 = *(*(v35 + *(v33 + 48)) + 16);

      v36 = *(v56 + 16);
      (*(v29 + 8))(v35, v60);
      if (v59 == v36)
      {
        break;
      }

      v19 &= v19 - 1;
      outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v3);
      v21 = v24;
      v7 = v22;
      v15 = v53;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v38 = v50;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v22, v50, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
    v37 = v51;
    (*(v51 + 56))(v38, 0, 1, v58);
LABEL_13:
    v40 = v48;
    v39 = v49;

    v41 = (*(v37 + 48))(v38, 1, v58);
    v42 = v52;
    if (v41 == 1)
    {
      outlined destroy of BodyTrackingComponent?(v38, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
      v43 = type metadata accessor for UUID();
      v44 = (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    else
    {

      v45 = type metadata accessor for UUID();
      v46 = *(v45 - 8);
      (*(v46 + 32))(v42, v38, v45);
      v44 = (*(v46 + 56))(v42, 0, 1, v45);
    }

    MEMORY[0x1EEE9AC00](v44);
    v47 = v56;
    *(&v48 - 2) = v42;
    *(&v48 - 1) = v47;
    v64 = v40;
    v65 = v39;
    static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v20)
      {

        v38 = v50;
        v37 = v51;
        (*(v51 + 56))(v50, 1, 1, v58);
        goto LABEL_13;
      }

      v19 = *(v15 + 8 * v24);
      ++v21;
      if (v19)
      {
        v22 = v7;
        v23 = v3;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t implicit closure #1 in __RKEntityLookupTable.uuid(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v17 = 0x6E696E7275746552;
  v18 = 0xEA00000000002067;
  outlined init with copy of [String : String](a1, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = MEMORY[0x1C68F24B0]();
    v9 = v12;
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  MEMORY[0x1C68F3410](v10, v9);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  v15 = 0;
  v16 = 0xE000000000000000;
  v14[1] = a2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v15, v16);

  return v17;
}

uint64_t __RKEntityLookupTable.updateEntity(_:for:)(uint64_t a1, uint64_t a2)
{

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  MEMORY[0x1EEE9AC00](v5);
  if (a1)
  {

    static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)();

    swift_beginAccess();

    v7 = specialized Dictionary._Variant.updateValue(_:forKey:)(v6, a2);
    swift_endAccess();
  }

  else
  {
    static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)();

    swift_beginAccess();
    v7 = specialized Dictionary.removeValue(forKey:)(a2);
    swift_endAccess();
  }

  return v7;
}

unint64_t implicit closure #1 in __RKEntityLookupTable.updateEntity(_:for:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(29);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](540876893, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  return 0xD000000000000015;
}

unint64_t implicit closure #2 in __RKEntityLookupTable.updateEntity(_:for:)()
{
  _StringGuts.grow(_:)(30);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](0x6C696E203D205DLL, 0xE700000000000000);
  return 0xD000000000000015;
}

Swift::Void __swiftcall __RKEntityLookupTable.removeAllEntities()()
{
  v1 = v0;
  v5[0] = 91;
  v5[1] = 0xE100000000000000;
  v5[4] = 0;
  v5[5] = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v2 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v3 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v3, v5);

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v1 + 16) = v4;
}

void __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = type metadata accessor for UUID();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v54 = 91;
  v55 = 0xE100000000000000;
  v57 = 0;
  v58 = 0xE000000000000000;
  v56 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v57, v58);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v12 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v12);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v41 = v54;
  v42 = v55;
  swift_beginAccess();
  v13 = *(v2 + 16);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = v4 + 32;
  v44 = v4 + 16;
  v48 = v4;
  v50 = v13;
  v51 = (v4 + 8);

  v19 = 0;
  v49 = a2;
  v47 = v11;
  v45 = v8;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v50;
      v26 = v48;
      (*(v48 + 16))(v46, *(v50 + 48) + *(v48 + 72) * v24, v53);
      v27 = *(*(v25 + 56) + 8 * v24);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
      v29 = *(v28 + 48);
      v8 = v45;
      (*(v26 + 32))();
      *&v8[v29] = v27;
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);

      v22 = v20;
      a2 = v49;
      v11 = v47;
LABEL_13:
      outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v8, v11, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
      v31 = (*(*(v30 - 8) + 48))(v11, 1, v30);
      v32 = v52;
      if (v31 == 1)
      {

        MEMORY[0x1EEE9AC00](v39);
        *(&v41 - 2) = v32;
        *(&v41 - 1) = a2;
        v57 = v41;
        v58 = v42;
        static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)();

        return;
      }

      v33 = *&v11[*(v30 + 48)];
      REEntityGetName();
      if (String.init(cString:)() == v32 && v34 == a2)
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_24;
      }

      (*v51)(v11, v53);

      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    MEMORY[0x1EEE9AC00](v37);
    v40 = v52;
    *(&v41 - 4) = v33;
    *(&v41 - 3) = v40;
    *(&v41 - 2) = a2;
    v57 = v41;
    v58 = v42;
    static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)();

    (*v51)(v11, v53);
  }

  else
  {
LABEL_5:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
        (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t implicit closure #1 in __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(19);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  MEMORY[0x1C68F3410](a2, a3);
  return 0x6E696E7275746552;
}

unint64_t implicit closure #2 in __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(20);

  MEMORY[0x1C68F3410](a1, a2);
  return 0xD000000000000012;
}

uint64_t __RKEntityLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v27 = v12;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v14;
  if (*(v12 + 24) < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v23;
    v20 = v27;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = v13;
    (*(v8 + 16))(v10, a2, v7);
    specialized _NativeDictionary._insert(at:key:value:)(v24, v10, a1, v20);
    v22 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v20 = v27;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v13);
  *(v21 + 8 * v13) = a1;
LABEL_11:
  *v4 = v20;
  return v22;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = __OFADD__(v13, (v12 ^ 1) & 1);
  v15 = v13 + ((v12 ^ 1) & 1);
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v19;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v10);

    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v10[7];
  v18 = *(v17 + 8 * v11);
  *(v17 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v18;
}

uint64_t static Entity.fromCore(_:ignoringEntityInfo:)(uint64_t a1, char a2)
{
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else if ((a2 & 1) != 0 || (specialized static Entity.entityInfoType(_:)(a1), !v5))
    {

      return makeEntity(for:)(a1);
    }

    else
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v6);

      return v6;
    }
  }

  return result;
}

uint64_t Entity.__allocating_init()()
{
  v0 = swift_allocObject();
  Entity.init()(v0);
  return v0;
}

uint64_t Entity.rcSceneEntity.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v66 - v1;
  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  v4 = Parent;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v5 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (REEntityIsBeingDestroyed())
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    specialized static Entity.entityInfoType(_:)(v4);
    if (v7)
    {
      v6 = (*(v7 + 232))();
      v8 = *(v6 + 16);

      MEMORY[0x1C68F9740](v8, 0);
      *(v6 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v6);

      goto LABEL_8;
    }

    v5 = makeEntity(for:)(v4);
  }

  v6 = v5;
LABEL_8:
  v9 = &static ComponentInfo.Platform.macOS;
  v10 = &type metadata for SceneOriginComponent;
  v67 = v2;
  while (1)
  {
    v11 = v9[32];

    if (v11 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v10), (v12 & 1) == 0))
    {
      swift_endAccess();
      v13 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(v10, &protocol witness table for SceneOriginComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = static SceneManager.customComponentTypeObjectIdToHandles;
      v68 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v18 = *(v15 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v22 = v17;
      if (*(v15 + 24) >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v16;
          specialized _NativeDictionary.copy()();
          v16 = v25;
          v24 = v68;
          if (v22)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_82;
        }
      }

      v24 = v68;
      if (v22)
      {
LABEL_20:
        *(v24[7] + 8 * v16) = v13;
LABEL_24:
        static SceneManager.customComponentTypeObjectIdToHandles = v24;
        goto LABEL_25;
      }

LABEL_22:
      v24[(v16 >> 6) + 8] |= 1 << v16;
      *(v24[6] + 8 * v16) = v10;
      *(v24[7] + 8 * v16) = v13;
      v26 = v24[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_75;
      }

      v24[2] = v27;
      goto LABEL_24;
    }

LABEL_25:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      break;
    }

    v28 = type metadata accessor for AnchoringComponent(0);

    if (REEntityGetComponent())
    {
      AnchoringComponent.init(from:)(v2);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(v28 - 8);
    (*(v30 + 56))(v2, v29, 1, v28);

    if ((*(v30 + 48))(v2, 1, v28) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
      return v6;
    }

    outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v31 = REEntityGetParent();
    if (!v31)
    {

      return 0;
    }

    v32 = v31;
    if (REEntityGetSwiftObject())
    {

      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_76;
      }

      swift_beginAccess();
      if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v33 & 1) == 0))
      {
        v34 = v10;
        v35 = v9;
        swift_endAccess();
        v36 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v38 = static SceneManager.customComponentTypeObjectIdToHandles;
        v68 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        v41 = *(v38 + 16);
        v42 = (v39 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_77;
        }

        v44 = v39;
        if (*(v38 + 24) >= v43)
        {
          if ((v37 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v37);
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_82;
          }

          v40 = v45;
        }

        v9 = v35;
        v47 = v68;
        v10 = v34;
        if (v44)
        {
          *(*(v68 + 56) + 8 * v40) = v36;
          v2 = v67;
        }

        else
        {
          *(v68 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          *(v47[6] + 8 * v40) = &type metadata for __EntityInfoComponent;
          *(v47[7] + 8 * v40) = v36;
          v48 = v47[2];
          v20 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          v2 = v67;
          if (v20)
          {
            goto LABEL_78;
          }

          v47[2] = v49;
        }

        static SceneManager.customComponentTypeObjectIdToHandles = v47;
      }

      swift_endAccess();
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_65;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_65;
      }

      v51 = *Object;
      if (*(Object + 8) || !v51)
      {
      }

      else
      {
        v52 = *v51;
        v53 = String.init(utf8String:)();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        v51 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v52 == 42, v55, v56);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v51;
      }

      if (!v51)
      {
        goto LABEL_80;
      }

      v57 = String.init(utf8String:)();
      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0xE000000000000000;
      }

      v60 = MEMORY[0x1C68F3280](v57, v59);

      v61 = NSClassFromString(v60);

      if (v61 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v62 = swift_dynamicCastMetatype()) != 0))
      {
        v63 = (*(v62 + 232))();
        v64 = *(v63 + 16);

        MEMORY[0x1C68F9740](v64, 0);
        *(v63 + 16) = v32;
        MEMORY[0x1C68F9740](v32, v63);
      }

      else
      {
LABEL_65:
        v63 = makeEntity(for:)(v32);
      }

      v6 = v63;
    }
  }

  if (!RECustomComponentGetObject())
  {
    goto LABEL_81;
  }

  return v6;
}

uint64_t static Entity.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      specialized static Entity.entityInfoType(_:)(v1);
      if (v3)
      {
        v4 = (*(v3 + 232))();
        v5 = *(v4 + 16);

        MEMORY[0x1C68F9740](v5, 0);
        *(v4 + 16) = v1;
        MEMORY[0x1C68F9740](v1, v4);

        return v4;
      }

      else
      {

        return makeEntity(for:)(v1);
      }
    }
  }

  return result;
}

uint64_t Entity.init()(uint64_t a1)
{
  *(v1 + 16) = REEntityCreate();
  MEMORY[0x1C68F9740]();
  RERelease();
  specialized setupEntityTraits<A>(_:)(v1);
  REEntityGetOrAddComponent();

  __EntityInfoComponent.init(entity:)(v6);
  v2 = v6[0];
  v3 = v6[1];

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v2, v3, v1);

  v4 = *(v1 + 16);

  if (v4 == *(v1 + 16))
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Entity.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t (*Entity.components.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.Observable.children.modify;
}

uint64_t Entity.scene.getter()
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v1 = result;
    v2 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v2)
    {
      return swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      return Scene.init(coreScene:)(v1);
    }
  }

  return result;
}

uint64_t Entity.name.getter()
{
  REEntityGetName();

  return String.init(cString:)();
}

uint64_t Entity.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  swift_getKeyPath();
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v8);
    v10 = type metadata accessor for ObservationRegistrar();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      v19 = v2;
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, protocol conformance descriptor for Entity);
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      (*(v11 + 8))(v8, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = type metadata accessor for ObservationRegistrar();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  outlined destroy of BodyTrackingComponent?(v8, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_6:
  String.utf8CString.getter();

  REEntitySetName();

  RENetworkMarkEntityMetadataDirty();
  v13 = REEntityGetObservationRegistrar();
  if (!v13)
  {

    v16 = type metadata accessor for ObservationRegistrar();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    return outlined destroy of BodyTrackingComponent?(v5, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  }

  outlined init with copy of ObservationRegistrar?(v13, v5);
  v14 = type metadata accessor for ObservationRegistrar();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {

    return outlined destroy of BodyTrackingComponent?(v5, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  }

  v19 = v2;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, protocol conformance descriptor for Entity);
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return (*(v15 + 8))(v5, v14);
}

void (*Entity.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v3;
  return Entity.Observable.name.modify;
}

void Entity.__boundingBox.getter(_OWORD *a1@<X8>)
{
  REEntityComputeMeshBounds();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Entity.__findAssetDependencies(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in Entity.__findAssetDependencies(_:);
  *(v2 + 24) = &v4;
  REEntityFindAssetDependencies();
}

uint64_t Entity.isEnabled.setter(char a1)
{
  MEMORY[0x1C68F9730](*(v1 + 16), a1 & 1);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t (*Entity.isEnabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEntityGetSelfEnabled();
  return Entity.Observable.isEnabled.modify;
}

uint64_t Entity.findEntity(named:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = REEntityFindInHierarchyByName();

  if (!v2)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      specialized static Entity.entityInfoType(_:)(v2);
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v5);

        return v5;
      }

      else
      {
        return makeEntity(for:)(v2);
      }
    }
  }

  return result;
}

uint64_t static Entity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 112) = *a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(named:in:options:asyncOptions:), v8, v7);
}

uint64_t static Entity.classLoad(named:in:options:asyncOptions:)()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v8 = *(v0 + 112);
  v5 = static Entity.__loadAsync(named:in:options:asyncOptions:)(v4, v2, v3, v1, &v8);
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v5);
}

uint64_t static Entity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 112) = *a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(contentsOf:withName:options:asyncOptions:), v8, v7);
}

uint64_t static Entity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v8 = *(v0 + 112);
  v5 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(v4, v2, v3, v1, &v8);
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = static AnchorEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v5);
}

uint64_t static Entity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 120) = *a6;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static Entity.classLoad(from:named:options:asyncOptions:)()
{
  v10 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v9 = *(v0 + 120);
  v6 = static Entity.loadAsync(from:named:options:asyncOptions:)(v4, v5, v2, v3, v1, &v9);
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = static ModelEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v6);
}

uint64_t Entity.copy(to:recursive:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = REEntityCopy();
  MEMORY[0x1C68F9740](*(a1 + 16), 0);
  *(a1 + 16) = v5;
  MEMORY[0x1C68F9740](v5, a1);
  RERelease();
  return Entity.didCloneHelper(from:recursive:)(v2, v3);
}

uint64_t specialized setupEntityTraits<A>(_:)(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for traitSetups != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    rawValue = traitSetups._rawValue;
    v3 = *(traitSetups._rawValue + 2);
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = traitSetups._rawValue + 40;
    while (v4 < rawValue[2])
    {
      ++v4;
      v6 = *(v5 - 1);

      v6(v1);

      v5 += 16;
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_8:
    result = swift_once();
  }

  return result;
}

uint64_t key path getter for Entity.name : Entity@<X0>(uint64_t *a2@<X8>)
{
  REEntityGetName();
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int Entity.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t @objc closure #1 in Entity.findAssetDependencies(_:)(uint64_t a1, void (**a2)(uint64_t *))
{
  v2 = *a2;
  v4 = a1;

  v2(&v4);
}

double static Entity.__disableUpdateInteractionEntities.getter()
{
  swift_beginAccess();

  return result;
}

double static Entity.__disableUpdateInteractionEntities.setter(uint64_t a1)
{
  swift_beginAccess();
  static Entity.__disableUpdateInteractionEntities = a1;

  return result;
}

double key path setter for static Entity.__disableUpdateInteractionEntities : Entity.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static Entity.__disableUpdateInteractionEntities = v1;

  return result;
}

uint64_t Entity.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t static Entity.__testInit()(uint64_t a1)
{
  v1 = REEntityCreate();
  type metadata accessor for Entity();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  MEMORY[0x1C68F9740](v1, v2);
  return v2;
}

uint64_t Entity.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Entity@<X0>(uint64_t *a1@<X8>)
{
  result = REEntityGetLocalId();
  *a1 = result;
  return result;
}

uint64_t static Entity.fromCore(_:ignoringEntityInfo:preferAnchorEntity:)(uint64_t a1, char a2, char a3)
{
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    __break(1u);
    return result;
  }

  if ((a2 & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(a1);
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v8);

      return v8;
    }
  }

  if (a3)
  {
    REAnchoringComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for AnchorEntity();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v8);
      return v8;
    }
  }

  return makeEntity(for:)(a1);
}

uint64_t makeEntity(for:)(uint64_t a1)
{
  REDirectionalLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    type metadata accessor for DirectionalLight();
  }

  else
  {
    REPointLightComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for PointLight();
    }

    else
    {
      RESpotLightComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        type metadata accessor for SpotLight();
      }

      else
      {
        REPerspectiveCameraComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          type metadata accessor for PerspectiveCamera();
        }

        else
        {
          RESceneUnderstandingComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            type metadata accessor for __RKSceneUnderstanding();
          }

          else
          {
            REMeshComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              type metadata accessor for ModelEntity();
            }

            else
            {
              RERigidBodyComponentGetComponentType();
              if (REEntityGetComponentByClass())
              {
                type metadata accessor for __RKPhysics();
              }

              else
              {
                REAnchoringComponentGetComponentType();
                if (REEntityGetComponentByClass())
                {
                  type metadata accessor for AnchorEntity();
                }

                else
                {
                  type metadata accessor for Entity();
                }
              }
            }
          }
        }
      }
    }
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  MEMORY[0x1C68F9740](a1, v2);
  return v2;
}

uint64_t Entity.clone(recursive:)(char a1)
{
  v3 = *v1;
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = v4;

    v5(a1 & 1, v3, v6);

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v8 = (*(v3 + 232))();
    Entity.copy(to:recursive:)(v8, a1 & 1);
    v9 = type metadata accessor for Entity();
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(v8, 1, v9);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v8);
    return v8;
  }
}

uint64_t Entity.__clone(recursive:remapInteractionIdentifiers:)(uint64_t a1, char a2)
{
  v5 = (*(*v2 + 232))();
  Entity.copy(to:recursive:)(v5, a1);
  v6 = type metadata accessor for Entity();
  RENetworkComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  specialized static Entity.enumerateCore(entity:recursive:block:)(v5, 1, v6);
  if (a2)
  {
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v5);
  }

  return v5;
}

uint64_t Entity.didCloneHelper(from:recursive:)(void *a1, char a2)
{
  v3 = v2;
  (*(*v2 + 248))();
  if (objc_getAssociatedObject(a1, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v23, &v24);
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    objc_setAssociatedObject(v2, "RealityKit.SceneResourceCacheEntry", v6, 0x301);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  swift_beginAccess();
  v7 = objc_getAssociatedObject(a1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
  result = swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v23, &v24);
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    swift_beginAccess();
    objc_setAssociatedObject(v3, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v9, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  if ((a2 & 1) == 0)
  {
    return result;
  }

  result = REEntityGetChildCount();
  if (result < 0)
  {
    goto LABEL_45;
  }

  v10 = result;
  if (result)
  {
    v11 = 0;
    while (1)
    {
      result = REEntityGetChildCount();
      if (v11 >= result)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_11:
  result = REEntityGetChildCount();
  if (result < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = result;
  if (result)
  {
    v13 = 0;
    while (1)
    {
      result = REEntityGetChildCount();
      if (v13 >= result)
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_16;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_16:
  if (v10 == v12)
  {
    if (!v10)
    {
      return result;
    }

    v14 = 0;
    while (1)
    {

      result = REEntityGetChildCount();
      if (v14 >= result)
      {
        goto LABEL_41;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_48;
      }

      v16 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_43;
        }

        specialized static Entity.entityInfoType(_:)(v16);
        if (v17)
        {
          v18 = (*(v17 + 232))();
          v19 = *(v18 + 16);

          MEMORY[0x1C68F9740](v19, 0);
          *(v18 + 16) = v16;
          MEMORY[0x1C68F9740](v16, v18);
        }

        else
        {
          makeEntity(for:)(v16);
        }
      }

      result = REEntityGetChildCount();
      if (v14 >= result)
      {
        goto LABEL_42;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_49;
      }

      v20 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        v15 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_44;
        }

        specialized static Entity.entityInfoType(_:)(v20);
        if (v21)
        {
          v15 = (*(v21 + 232))();
          v22 = v15[2];

          MEMORY[0x1C68F9740](v22, 0);
          v15[2] = v20;
          MEMORY[0x1C68F9740](v20, v15);
        }

        else
        {
          v15 = makeEntity(for:)(v20);
        }
      }

      ++v14;
      Entity.didCloneHelper(from:recursive:)(v15, 1);

      if (v10 == v14)
      {
        return result;
      }
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneOriginComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneOriginComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneOriginComponent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SceneOriginComponent(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int Entity.ForwardDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t Entity.findEntity(id:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  if (REEntityGetLocalId() == a1)
  {

    return v3;
  }

  else
  {

    v5 = 0;
    while (1)
    {
      if (v5 >= REEntityGetChildCount())
      {

        return 0;
      }

      result = REEntityGetChildCount();
      if (v5 >= result)
      {
        break;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_22;
      }

      v7 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_21;
        }

        specialized static Entity.entityInfoType(_:)(v7);
        if (v8)
        {
          v9 = (*(v8 + 232))();
          v10 = *(v9 + 16);

          MEMORY[0x1C68F9740](v10, 0);
          *(v9 + 16) = v7;
          MEMORY[0x1C68F9740](v7, v9);
        }

        else
        {
          makeEntity(for:)(v7);
        }
      }

      result = REEntityGetChildCount();
      if (v5 >= result)
      {
        goto LABEL_20;
      }

      ++v5;
      v12 = Entity.findEntity(id:)(a1, v11);

      if (v12)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t Entity.descends(from:)(uint64_t a1)
{
  if (*(v1 + 16) == *(a1 + 16))
  {
    return 1;
  }

  result = specialized HasHierarchy.parent.getter();
  if (result)
  {
    v4 = Entity.descends(from:)(a1);

    return v4 & 1;
  }

  return result;
}

void specialized static Entity.entityInfoType(_:)(uint64_t a1)
{
  type metadata accessor for SceneManager();
  static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  if (REEntityGetCustomComponent())
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      v2 = *Object;
      if (*(Object + 8))
      {
        v3 = 1;
      }

      else
      {
        v3 = v2 == 0;
      }

      if (v3)
      {
      }

      else
      {
        v4 = *v2;
        v5 = String.init(utf8String:)();
        if (v6)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0xE000000000000000;
        }

        v2 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v4 == 42, v7, v8);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v2;
      }

      if (v2)
      {
        v9 = String.init(utf8String:)();
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0xE000000000000000;
        }

        v12 = MEMORY[0x1C68F3280](v9, v11);

        v13 = NSClassFromString(v12);

        if (v13)
        {
          swift_getObjCClassMetadata();
          type metadata accessor for Entity();
          swift_dynamicCastMetatype();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t partial apply for closure #1 in Entity.__findAssetDependencies(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneOriginComponent.CodingKeys, &unk_1F4115E10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneOriginComponent.CodingKeys, &unk_1F4115E10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneOriginComponent.CodingKeys, &unk_1F4115E10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Entity();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ForwardDirection and conformance Entity.ForwardDirection()
{
  result = lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection;
  if (!lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ForwardDirection, &type metadata for Entity.ForwardDirection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C68F41F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t __RKEntityCollisionTrigger.__allocating_init(targetEntity:collidingEntities:tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  return v6;
}

uint64_t __RKEntityCollisionTrigger.init(targetEntity:collidingEntities:tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_beginAccess();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

uint64_t __RKEntityCollisionTrigger.matches(with:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v74[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74[-v21];
  type metadata accessor for __RKEntityCollisionTrigger();
  v78 = swift_dynamicCastClass();
  if (!v78)
  {
    goto LABEL_15;
  }

  v82 = v2;
  v23 = v79;
  swift_beginAccess();
  if (*(v23 + 24))
  {

    Entity.__interactionIdentifier.getter(v22);
  }

  else
  {
    (*(v3 + 56))(v22, 1, 1, v82);
  }

  v24 = v78;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v77 = a1;
  if (v25)
  {

    Entity.__interactionIdentifier.getter(v19);

    v26 = v82;
  }

  else
  {
    v26 = v82;
    (*(v3 + 56))(v19, 1, 1, v82);
  }

  v27 = *(v5 + 48);
  outlined init with copy of UUID?(v22, v7);
  outlined init with copy of UUID?(v19, &v7[v27]);
  v76 = v3;
  v28 = *(v3 + 48);
  if (v28(v7, 1, v26) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v28(&v7[v27], 1, v82) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  outlined init with copy of UUID?(v7, v16);
  if (v28(&v7[v27], 1, v26) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v76 + 8))(v16, v26);
LABEL_13:
    outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_14:

    goto LABEL_15;
  }

  v36 = v76;
  v37 = v80;
  (*(v76 + 32))(v80, &v7[v27], v26);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v36 + 8);
  v38(v37, v26);
  outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v38(v16, v26);
  outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v75 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v39 = v79;

  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v40);

  v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v42);

  specialized Set.isDisjoint(with:)(v43, v41);
  v45 = v44;

  if ((v45 & 1) == 0)
  {

    return 1;
  }

  v46 = *(v39 + 32);
  if (v46 >> 62)
  {
    v47 = __CocoaSet.count.getter();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v81;
  v49 = v76;
  v50 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    v83[0] = MEMORY[0x1E69E7CC0];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_74;
    }

    v50 = v83[0];
    v51 = v46;
    v80 = (v46 & 0xC000000000000001);
    swift_beginAccess();
    v52 = 0;
    v53 = (v49 + 56);
    v54 = v47;
    do
    {
      if (v80)
      {
        MEMORY[0x1C68F41F0](v52, v51);
      }

      else
      {
      }

      if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        UUID.init(uuid:)();

        v55 = 0;
      }

      else
      {

        v55 = 1;
      }

      (*v53)(v13, v55, 1, v82);
      v83[0] = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v50 = v83[0];
      }

      ++v52;
      *(v50 + 16) = v57 + 1;
      outlined init with take of UUID?(v13, v50 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v57);
      v48 = v81;
    }

    while (v54 != v52);

    v49 = v76;
  }

  v58 = *(v78 + 32);
  if (v58 >> 62)
  {
    v73 = *(v78 + 32);
    v59 = __CocoaSet.count.getter();
    v58 = v73;
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
    goto LABEL_66;
  }

  v83[0] = MEMORY[0x1E69E7CC0];
  v61 = v58;

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59 & ~(v59 >> 63), 0);
  if (v59 < 0)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  v60 = v83[0];
  v81 = (v61 & 0xC000000000000001);
  swift_beginAccess();
  v62 = v61;
  v63 = 0;
  v64 = (v49 + 56);
  do
  {
    if (v81)
    {
      MEMORY[0x1C68F41F0](v63, v62);
    }

    else
    {
    }

    if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
    {
      UUID.init(uuid:)();

      v65 = 0;
    }

    else
    {

      v65 = 1;
    }

    (*v64)(v48, v65, 1, v82);
    v83[0] = v60;
    v66 = v48;
    v68 = *(v60 + 16);
    v67 = *(v60 + 24);
    if (v68 >= v67 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
      v60 = v83[0];
    }

    ++v63;
    *(v60 + 16) = v68 + 1;
    outlined init with take of UUID?(v66, v60 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v68);
    v48 = v66;
    v62 = v61;
  }

  while (v59 != v63);

LABEL_66:
  v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(v50);

  v70 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(v60);

  specialized Set.isDisjoint(with:)(v70, v69);
  v72 = v71;

  if ((v72 & 1) == 0)
  {
    return 1;
  }

LABEL_15:
  type metadata accessor for __RKEntityTriggerGroup();
  result = swift_dynamicCastClass();
  if (result)
  {
    v30 = result;
    swift_beginAccess();
    v31 = *(v30 + 24);
    if (v31 >> 62)
    {
LABEL_70:
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v32 != i; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1C68F41F0](i, v31);
        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_70;
        }

        v34 = *(v31 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      v35 = __RKEntityCollisionTrigger.matches(with:)(v34);

      if (v35)
      {

        return 1;
      }
    }

    return 0;
  }

  return result;
}

void specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v18 = Hasher._finalize()();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v67);
  v5 = &v51 - v4;
  v70 = type metadata accessor for UUID();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v51 - v18;
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v20 = *(a1 + 16);
  if (!v20)
  {
    return;
  }

  v51 = v17;
  if (v19 >= v20)
  {
    v21 = a1;
  }

  else
  {
    v21 = a2;
  }

  if (v19 >= v20)
  {
    v22 = a2;
  }

  else
  {
    v22 = a1;
  }

  v23 = v21 + 56;
  v24 = 1 << *(v21 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v21 + 56);
  v27 = (v24 + 63) >> 6;
  v66 = (v6 + 48);
  v57 = (v6 + 32);
  v61 = (v6 + 8);
  v64 = v22 + 56;
  v54 = v21;

  v28 = 0;
  v29 = &_s10Foundation4UUIDVSg_ADtMR;
  v58 = v22;
  v53 = v23;
  for (i = v27; ; v27 = i)
  {
    if (!v26)
    {
      do
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          return;
        }

        if (v30 >= v27)
        {

          return;
        }

        v26 = *(v23 + 8 * v30);
        ++v28;
      }

      while (!v26);
      v28 = v30;
    }

    v31 = *(v54 + 48);
    v65 = *(v56 + 72);
    v32 = v55;
    outlined init with copy of UUID?(v31 + v65 * (__clz(__rbit64(v26)) | (v28 << 6)), v55);
    outlined init with take of UUID?(v32, v69);
    if (*(v22 + 16))
    {
      Hasher.init(_seed:)();
      v33 = v51;
      outlined init with copy of UUID?(v69, v51);
      v63 = *v66;
      if (v63(v33, 1, v70) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v34 = v12;
        v35 = v59;
        v36 = v29;
        v37 = v70;
        (*v57)(v59, v33, v70);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        v38 = v35;
        v12 = v34;
        v22 = v58;
        v39 = v37;
        v29 = v36;
        (*v61)(v38, v39);
      }

      v40 = Hasher._finalize()();
      v41 = -1 << *(v22 + 32);
      v42 = v40 & ~v41;
      if ((*(v64 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        break;
      }
    }

LABEL_13:
    v26 &= v26 - 1;
    outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v23 = v53;
  }

  v62 = ~v41;
  while (1)
  {
    outlined init with copy of UUID?(*(v22 + 48) + v42 * v65, v12);
    v43 = *(v67 + 48);
    outlined init with copy of UUID?(v12, v5);
    outlined init with copy of UUID?(v69, &v5[v43]);
    v44 = v63;
    if (v63(v5, 1, v70) == 1)
    {
      break;
    }

    outlined init with copy of UUID?(v5, v68);
    if (v44(&v5[v43], 1, v70) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v61)(v68, v70);
      goto LABEL_26;
    }

    v45 = &v5[v43];
    v46 = v68;
    v47 = v70;
    v48 = v59;
    (*v57)(v59, v45, v70);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v61;
    (*v61)(v48, v47);
    outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v50 = v46;
    v29 = &_s10Foundation4UUIDVSg_ADtMR;
    v49(v50, v47);
    v22 = v58;
    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v60)
    {

      goto LABEL_36;
    }

LABEL_27:
    v42 = (v42 + 1) & v62;
    if (((*(v64 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v44(&v5[v43], 1, v70) != 1)
  {
LABEL_26:
    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSg_ADtMd, v29);
    goto LABEL_27;
  }

  outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_36:
  outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

double __RKEntityCollisionTrigger.copy(with:)@<D0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for __RKEntityCollisionTrigger();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 16) = 0;
  *(v7 + 18) = 0;
  a1[3] = v6;
  *a1 = v7;

  return result;
}

void __RKEntityCollisionTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_beginAccess();
  v7 = v3[3];
  if (v7 && *(v7 + 16) == *(a1 + 16))
  {
    v17 = v3[4];
    v18 = v3[5];
    type metadata accessor for __RKEntityCollisionTrigger();
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    swift_beginAccess();
    *(v19 + 24) = a2;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    *(v19 + 16) = 0;
    *(v19 + 18) = 0;

    return;
  }

  v8 = v3[4];
  v24 = a1;
  MEMORY[0x1EEE9AC00](v6);
  v23[2] = &v24;

  v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v23, v8);

  if ((v9 & 1) == 0)
  {
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v10 = v3[4];
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_22:
    v16 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v20 = v3[3];
    v21 = v3[5];
    type metadata accessor for __RKEntityCollisionTrigger();
    v22 = swift_allocObject();
    *(v22 + 24) = 0;
    swift_beginAccess();
    *(v22 + 24) = v20;
    *(v22 + 32) = v16;
    *(v22 + 40) = v21;
    *(v22 + 16) = 0;
    *(v22 + 18) = 0;

    return;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C68F41F0](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      if (*(v14 + 16) == *(a2 + 16))
      {

        MEMORY[0x1C68F3650](v15);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      else
      {

        MEMORY[0x1C68F3650](v13);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v16 = v25;

    goto LABEL_23;
  }

  __break(1u);
}

double __RKEntityCollisionTrigger.__ivar_destroyer()
{

  return result;
}

uint64_t __RKEntityCollisionTrigger.deinit()
{

  return v0;
}

uint64_t __RKEntityCollisionTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SetEntityPropertyAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of ActionEntityResolution(v2, v3, v4);
}

void SetEntityPropertyAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of ActionEntityResolution(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t SetEntityPropertyAction.key.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void SetEntityPropertyAction.key.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t SetEntityPropertyAction.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SetEntityPropertyAction.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SetEntityPropertyAction.init(targetEntity:key:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = *(type metadata accessor for SetEntityPropertyAction(0, a5, a6, a4) + 40);
  (*(*(a5 - 8) + 56))(a7 + v15, 1, 1, a5);
  *a7 = v12;
  *(a7 + 8) = v13;
  *(a7 + 16) = v14;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  v16 = type metadata accessor for Optional();
  v17 = *(*(v16 - 8) + 40);

  return v17(a7 + v15, a4, v16);
}

uint64_t SetEntityPropertyAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for Optional();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v33 - v8;
  v10 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v10);
  v11 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v15 = type metadata accessor for SetEntityPropertyAction(0, a2, a3, v14);
  v34 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v20 = *(*(a2 - 8) + 56);
  v42 = *(v19 + 40);
  v40 = v18;
  v20(&v18[v42], 1, 1, a2, v16);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v26 = v40;
    __swift_destroy_boxed_opaque_existential_1(v41);
    return (*(v43 + 8))(&v26[v42], v44);
  }

  else
  {
    v39 = v15;
    v23 = v36;
    v24 = v38;
    v47 = 0;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    v25 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v46;
    v28 = v40;
    *v40 = v45;
    v28[16] = v27;
    LOBYTE(v45) = 1;
    *(v28 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v28 + 4) = v29;
    static SetEntityPropertyAction.decodeValueIfPresent(from:forKey:)(v13, 2, a2, a3, v24);
    (*(v23 + 8))(v13, v25);
    (*(v43 + 40))(&v28[v42], v24, v44);
    v30 = v34;
    v31 = v39;
    (*(v34 + 16))(v35, v28, v39);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return (*(v30 + 8))(v28, v31);
  }
}

uint64_t SetEntityPropertyAction.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v34 - v8;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v6;
  v43 = a2;
  v36 = *(a2 + 24);
  v12 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, v6, v36, v11);
  swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v12);
  v13 = type metadata accessor for KeyedEncodingContainer();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *(v3 + 8);
  v18 = v3;
  v19 = *(v3 + 16);
  v45 = *v3;
  v46 = v17;
  v47 = v19;
  v48 = 0;
  outlined copy of ActionEntityResolution(v45, v17, v19);
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v20 = v44;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v20)
  {
    v21 = outlined consume of ActionEntityResolution(v45, v46, v47);
    return (*(v14 + 8))(v16, v13, v21);
  }

  else
  {
    v23 = v40;
    v24 = v41;
    v44 = v14;
    v25 = v42;
    v26 = v43;
    outlined consume of ActionEntityResolution(v45, v46, v47);
    LOBYTE(v45) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = v16;
    v27 = v18 + *(v26 + 40);
    v28 = v25;
    (*(v24 + 16))(v23, v27, v25);
    v29 = v38;
    v30 = v39;
    if ((*(v39 + 48))(v23, 1, v38) == 1)
    {
      (*(v44 + 8))(v35, v13);
      return (*(v24 + 8))(v23, v28);
    }

    else
    {
      v31 = v37;
      (*(v30 + 32))(v37, v23, v29);
      v32 = v35;
      static SetEntityPropertyAction.encodeValue(_:to:forKey:)(v31, v35, 2, v29, v36);
      v33 = v44;
      (*(v30 + 8))(v31, v29);
      return (*(v33 + 8))(v32, v13);
    }
  }
}

unint64_t SetEntityPropertyAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SetEntityPropertyAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t SetEntityPropertyAction.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E45746567726174;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, a3);
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, a1);
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized SetEntityPropertyAction.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void static SetEntityPropertyAction.decodeValueIfPresent(from:forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  v11 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v11);
  type metadata accessor for KeyedDecodingContainer();
  if (KeyedDecodingContainer.contains(_:)())
  {
    static SetEntityPropertyAction.decodeValue(from:forKey:)(a1, v8, a3, a4);
    if (v5)
    {
      return;
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  (*(*(a3 - 8) + 56))(a5, v12, 1, a3);
}

uint64_t static SetEntityPropertyAction.encodeValue(_:to:forKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v76 = a3;
  v75 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v66 - v33;
  v77 = v7;
  v35 = *(v7 + 16);
  v35(&v66 - v33, a1, v36, v32);
  if (swift_dynamicCast())
  {
    (v35)(v30, a1, a4);
    swift_dynamicCast();
    LOBYTE(v79) = v76;
    v38 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v74, v37);
    swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v38);
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v67 = v35;
    v39 = v74;
    if (swift_dynamicCast())
    {
      v67(v27, a1, a4);
      swift_dynamicCast();
      LOBYTE(v79) = v76;
      v41 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v39, v40);
      swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v41);
      type metadata accessor for KeyedEncodingContainer();
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (swift_dynamicCast())
      {
        v67(v24, a1, a4);
        swift_dynamicCast();
        *&v79 = v82;
        v78 = v76;
        v43 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v39, v42);
        swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v43);
        type metadata accessor for KeyedEncodingContainer();
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, MEMORY[0x1E69E7430]);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v44 = v39;
        if (swift_dynamicCast())
        {
          v67(v21, a1, a4);
          swift_dynamicCast();
          v79 = v82;
          v78 = v76;
          v46 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v39, v45);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v46);
          type metadata accessor for KeyedEncodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
        }

        else
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          if (swift_dynamicCast())
          {
            v67(v73, a1, a4);
            swift_dynamicCast();
            v79 = v82;
            v78 = v76;
            v49 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v48);
            swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v49);
            type metadata accessor for KeyedEncodingContainer();
            lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74B0]);
          }

          else
          {
            type metadata accessor for simd_quatf(0);
            v50 = swift_dynamicCast();
            v51 = v76;
            if (v50)
            {
              v73 = v47;
              v67(v72, a1, a4);
              swift_dynamicCast();
              v79 = v82;
              v78 = v51;
              v53 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v52);
              swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v53);
              type metadata accessor for KeyedEncodingContainer();
              lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74B0]);
            }

            else
            {
              if (swift_dynamicCast())
              {
                v67(v71, a1, a4);
                swift_dynamicCast();
                LOBYTE(v79) = v51;
                v56 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v55);
                swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v56);
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();
                return (*(v77 + 8))(v34, a4);
              }

              if (swift_dynamicCast())
              {
                v67(v70, a1, a4);
                swift_dynamicCast();
                LOBYTE(v79) = v51;
                v58 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v57);
                swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v58);
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();
                return (*(v77 + 8))(v34, a4);
              }

              v59 = v67;
              if (swift_dynamicCast())
              {

                v59(v69, a1, a4);
                swift_dynamicCast();
                LOBYTE(v79) = v51;
                v61 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v60);
                swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v61);
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();

                return (*(v77 + 8))(v34, a4);
              }

              if (!swift_dynamicCast())
              {
                v65 = type metadata accessor for SetEntityPropertyAction.DecodingErrors(0, a4, v44, v62);
                swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.DecodingErrors, v65);
                swift_allocError();
                swift_willThrow();
                return (*(v77 + 8))(v34, a4);
              }

              v59(v68, a1, a4);
              swift_dynamicCast();
              v79 = v82;
              v80 = v83;
              v81 = v84;
              v78 = v51;
              v64 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a4, v44, v63);
              swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v64);
              type metadata accessor for KeyedEncodingContainer();
              lazy protocol witness table accessor for type Transform and conformance Transform();
            }
          }
        }
      }

      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v77 + 8))(v34, a4);
}

uint64_t type metadata completion function for SetEntityPropertyAction(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetEntityPropertyAction(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 40) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 40) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(v17 + 32);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for SetEntityPropertyAction(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 40) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *(a1 + v13) = v19;
              }

              else
              {
                *(a1 + v13) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      *(a1 + v13) = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v13) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((v21 + v11 + 40) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 40) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v21 + 24) = a2 & 0x7FFFFFFF;
    *(v21 + 32) = 0;
  }

  else
  {
    *(v21 + 32) = a2 - 1;
  }
}

void static SetEntityPropertyAction.decodeValue(from:forKey:)(void x0_0, char a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    v8 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v7);
    swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v8);
    type metadata accessor for KeyedDecodingContainer();
    KeyedDecodingContainer.decode(_:forKey:)();
    if (v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v9);
    swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v10);
    type metadata accessor for KeyedDecodingContainer();
    KeyedDecodingContainer.decode(_:forKey:)();
    if (v4)
    {
      return;
    }

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v12 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v11);
    swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v12);
    type metadata accessor for KeyedDecodingContainer();
    v13 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
    v14 = &_ss5SIMD2VySfGMd;
    v15 = &_ss5SIMD2VySfGMR;
    v16 = MEMORY[0x1E69E7440];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      v18 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v17);
      swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v18);
      type metadata accessor for KeyedDecodingContainer();
      v13 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
      v14 = &_ss5SIMD3VySfGMd;
      v15 = &_ss5SIMD3VySfGMR;
      v16 = MEMORY[0x1E69E7468];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_quatf(0);
        if (swift_dynamicCastMetatype())
        {
          v22 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v21);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v22);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x1E69E74C0]);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v24 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v23);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v24);
          type metadata accessor for KeyedDecodingContainer();
          KeyedDecodingContainer.decode(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v26 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v25);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v26);
          type metadata accessor for KeyedDecodingContainer();
          KeyedDecodingContainer.decode(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v28 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v27);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v28);
          type metadata accessor for KeyedDecodingContainer();
          KeyedDecodingContainer.decode(_:forKey:)();
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          v30 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v29);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v30);
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type Transform and conformance Transform();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v4)
          {
            swift_dynamicCast();
          }
        }

        else
        {
          v31 = type metadata accessor for SetEntityPropertyAction.DecodingErrors(0, a2, a3, v29);
          swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.DecodingErrors, v31);
          swift_allocError();
          swift_willThrow();
        }

        return;
      }

      v20 = type metadata accessor for SetEntityPropertyAction.CodingKeys(255, a2, a3, v19);
      swift_getWitnessTable(protocol conformance descriptor for SetEntityPropertyAction<A>.CodingKeys, v20);
      type metadata accessor for KeyedDecodingContainer();
      v13 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
      v14 = &_ss5SIMD4VySfGMd;
      v15 = &_ss5SIMD4VySfGMR;
      v16 = MEMORY[0x1E69E74C0];
    }
  }

  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v13, v14, v15, v16);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v4)
  {
LABEL_6:
    swift_dynamicCast();
  }
}

void specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v51 - v11;
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v52 = type metadata accessor for SetEntityPropertyAction(0, a2, a3, v24);
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v25);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    v27 = v55;
    v26 = v56;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static AnimationLogger.logger);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v55);
      _os_log_impl(&dword_1C1358000, v29, v30, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1C6902A30](v32, -1, -1);
      MEMORY[0x1C6902A30](v31, -1, -1);
    }

    goto LABEL_10;
  }

  v15 = Strong;
  v16 = type metadata accessor for SetEntityPropertyAction(255, a2, a3, v14);
  v18 = a1 + *(type metadata accessor for ActionEvent(0, v16, &protocol witness table for SetEntityPropertyAction<A>, v17) + 36);
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  v55 = *v18;
  v56 = v19;
  v57 = v20;
  outlined copy of ActionEntityResolution(v55, v19, v20);
  v21 = ActionEntityResolution.resolve(from:)(v15);
  v22 = outlined consume of ActionEntityResolution(v55, v56, v57);
  if (!v21)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v52 = v16;
    swift_getMetatypeMetadata();
    v33 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v33);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v34 = String.init(cString:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v36 = v55;
    v35 = v56;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static AnimationLogger.logger);

    v29 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v55);
      _os_log_impl(&dword_1C1358000, v29, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1C6902A30](v40, -1, -1);
      MEMORY[0x1C6902A30](v39, -1, -1);
    }

LABEL_10:

LABEL_11:

    return;
  }

  v51[1] = v15;
  v23 = *(v16 + 40);
  v51[0] = *(v7 + 16);
  (v51[0])(v12, v18 + v23, v6, v22);
  if ((*(*(a2 - 8) + 48))(v12, 1, a2) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_20:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (!*(&v53 + 1))
  {
LABEL_21:
    outlined destroy of BindableDataInternal?(&v52);
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v52 = v16;
    swift_getMetatypeMetadata();
    v43 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v43);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    (v51[0])(v9, v18 + v23, v6);
    v44 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v44);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);
    MEMORY[0x1C68F3410](*(v18 + 24), *(v18 + 32));
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v46 = v55;
    v45 = v56;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static AnimationLogger.logger);

    v29 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v55);
      _os_log_impl(&dword_1C1358000, v29, v48, "%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1C6902A30](v50, -1, -1);
      MEMORY[0x1C6902A30](v49, -1, -1);
    }

    goto LABEL_11;
  }

  outlined init with take of BindableDataInternal(&v52, &v55);
  v41 = v58;
  v42 = v59;
  __swift_project_boxed_opaque_existential_1(&v55, v58);
  (*(v42 + 56))(*(v18 + 24), *(v18 + 32), v21, v41, v42);

  __swift_destroy_boxed_opaque_existential_1(&v55);
}

uint64_t outlined destroy of BindableDataInternal?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pSgMd, &_s17RealityFoundation20BindableDataInternal_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError()
{
  result = lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError;
  if (!lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource.ChannelLayoutError, &type metadata for AudioResource.ChannelLayoutError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError;
  if (!lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError)
  {
    result = swift_getWitnessTable("]7]-", &type metadata for AudioResource.ChannelLayoutError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError);
  }

  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioResource.ChannelLayoutError()
{
  if (*v0)
  {
    return 0xD000000000000046;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

unint64_t lazy protocol witness table accessor for type AudioResource.Error and conformance AudioResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error;
  if (!lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource.Error, &type metadata for AudioResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error;
  if (!lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error)
  {
    result = swift_getWitnessTable("%6]-", &type metadata for AudioResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error);
  }

  return result;
}

uint64_t __RKWaitAction.__allocating_init(duration:block:)(uint64_t a1, uint64_t a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 120) = a2;
  *(v6 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0;
  *(v6 + 108) = a3;
  *(v6 + 112) = a1;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.init(duration:block:)(uint64_t a1, uint64_t a2, float a3)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0;
  *(v3 + 108) = a3;
  *(v3 + 112) = a1;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.perform(with:)(uint64_t a1)
{
  v16 = StaticString.description.getter();
  v17 = v2;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v4 = v16;
  v3 = v17;
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1) || !RESceneGetECSManagerNullable())
  {

    return 0;
  }

  else
  {
    v5 = *(v1 + 96);
    v6 = *(v1 + 104);
    v7 = 1;
    *(v1 + 96) = 1;
    *(v1 + 104) = 1;
    v16 = v5;
    LOBYTE(v17) = v6;
    __RKEntityAction.state.didset(&v16);
    *(v1 + 184) = 0;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *(v1 + 32);
    v10 = *(v1 + 40);
    *(v1 + 32) = partial apply for closure #1 in __RKWaitAction.perform(with:);
    *(v1 + 40) = v8;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);

    *(v1 + 176) = *(v1 + 108);
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v14, partial apply for closure #2 in __RKWaitAction.perform(with:), v11, &v16);

    outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v16, v1 + 136);
    swift_endAccess();
    v16 = v4;
    v17 = v3;
    v12 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v12, &v16);
  }

  return v7;
}

uint64_t closure #1 in __RKWaitAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v2 + 136, &v6);
    if (*(&v7 + 1))
    {
      outlined init with copy of __REAssetService(&v6, v5);
      outlined destroy of BodyTrackingComponent?(&v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v6, v2 + 136);
    swift_endAccess();
    v3 = *(v2 + 112);

    v3(v4);
  }

  return result;
}

uint64_t closure #2 in __RKWaitAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 176);
    v6 = v2 + *(result + 184);
    *(result + 184) = v6;
    if (v5 + -0.008 <= v6)
    {
      swift_beginAccess();
      v7 = *(v4 + 96);
      v8 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v9 = v7;
      v10 = v8;

      __RKEntityAction.state.didset(&v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t __RKWaitAction.reversed()()
{
  v1 = *(v0 + 108);
  type metadata accessor for __RKWaitAction();
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0;
  *(v2 + 108) = v1;
  *(v2 + 112) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 108);
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = type metadata accessor for __RKWaitAction();
  v7 = swift_allocObject();
  *(v7 + 120) = v4;
  *(v7 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0;
  *(v7 + 108) = v3;
  *(v7 + 112) = v5;

  result = __RKEntityAction.init(targetEntity:)(0);
  a1[3] = v6;
  *a1 = result;
  return result;
}

uint64_t __RKWaitAction.description.getter()
{
  v0 = __RKEntityAction.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](539831584, 0xE400000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
  Float.write<A>(to:)();
  return 0;
}

uint64_t __RKWaitAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKWaitAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for instanceRegistry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA21__ARReferenceProviderCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA21__ARReferenceProviderCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation21__ARReferenceProviderCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __ARReferenceProvider.instanceRegistry = v0;
  return result;
}

uint64_t static __ARReferenceProvider.shared.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v3);
  if (one-time initialization token for instanceRegistry != -1)
  {
    swift_once();
  }

  v1 = specialized AssetServiceScopedRegistry.instance(for:)(v3);

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t static __ARReferenceProvider.instance(for:)(void *a1)
{
  if (one-time initialization token for instanceRegistry != -1)
  {
    swift_once();
  }

  v2 = specialized AssetServiceScopedRegistry.instance(for:)(a1);

  return v2;
}

void __ARReferenceProvider.fetchPlugin(forGroup:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      outlined init with copy of __REAssetService(v6, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v9._countAndFlagsBits = (*(v8 + 16))(v7, v8);
      LOBYTE(v7) = String.hasPrefix(_:)(v9);

      if (v7)
      {
        outlined init with copy of __REAssetService(v10, a1);
        __swift_destroy_boxed_opaque_existential_1(v10);
        return;
      }

      ++v5;
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

Swift::Bool __swiftcall __ARReferenceProvider.supportsGroup(named:)(Swift::String named)
{
  __ARReferenceProvider.fetchPlugin(forGroup:)(v3);
  v1 = v4 != 0;
  outlined destroy of ARReferenceProvidingPlugin?(v3);
  return v1;
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __ARReferenceProvider.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5 = group._object;
  v6 = group._countAndFlagsBits;
  v7 = v2;
  __ARReferenceProvider.fetchPlugin(forGroup:)(&v12);
  if (v13)
  {
    outlined init with take of ForceEffectBase(&v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(*(v9 + 8) + 8))(v6, v5, countAndFlagsBits, object, v8);
    v10 = __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v10 = outlined destroy of ARReferenceProvidingPlugin?(&v12);
    *v7 = 0;
  }

  result.value.object.super.isa = v10;
  result.is_nil = v11;
  return result;
}

uint64_t __ARReferenceProvider.fetchReferenceImage(group:name:physicalWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  __ARReferenceProvider.fetchPlugin(forGroup:)(&v15);
  if (v16)
  {
    outlined init with take of ForceEffectBase(&v15, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v13 + 8) + 16))(a1, a2, a3, a4, v12, a6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    result = outlined destroy of ARReferenceProvidingPlugin?(&v15);
    *a5 = 0;
  }

  return result;
}

uint64_t __ARReferenceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of ARReferenceProvidingPlugin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ARReferenceProvidingPlugin_pSgMd, &_s17RealityFoundation26ARReferenceProvidingPlugin_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  return specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(a1, a2, a3, a4, a5);
}

{
  return specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(a1, a2, a3, a4, a5);
}

double key path setter for _Proto_MeshDeformation_v1.CustomDeformerRuntime.id : _Proto_MeshDeformation_v1.CustomDeformerRuntime(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double _Proto_MeshDeformation_v1.CustomDeformerRuntime.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.deinit()
{
  RERelease();

  return v0;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

Swift::Int _Proto_MeshDeformation_v1.CustomDeformerBuilderError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @guaranteed MTLComputeCommandEncoder, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:)(unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 3u && ((*(v3 + 17) << (8 * (a2 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferInputBuffer();
    v5 = RECustomDeformerVertexBufferInputFormat();
    v6 = RECustomDeformerVertexBufferInputStride();
    v7 = RECustomDeformerGPUBufferSize();
    v8 = RECustomDeformerGPUBufferCPUData();
    if (v6)
    {
      *a3 = v8;
      *(a3 + 8) = v7;
      *(a3 + 16) = v5;
      *(a3 + 24) = 0;
      *(a3 + 32) = v6;
      *(a3 + 40) = v7 / v6;
      *(a3 + 48) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 1;
  }
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:)(unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 3u && ((*(v3 + 17) << (8 * (a2 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferInputBuffer();
    v5 = RECustomDeformerVertexBufferInputFormat();
    v6 = RECustomDeformerVertexBufferInputStride();
    v7 = RECustomDeformerGPUBufferSize();
    v8 = RECustomDeformerGPUBufferGPUOffset();
    v9 = RECustomDeformerGPUBufferGPUData();
    if (v6)
    {
      if (v7 != 0x8000000000000000 || v6 != -1)
      {
        *a3 = v9;
        a3[1] = v5;
        a3[2] = v8;
        a3[3] = v6;
        a3[4] = v7 / v6;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}