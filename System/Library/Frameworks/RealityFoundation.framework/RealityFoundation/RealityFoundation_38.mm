uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50134_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesV10influences0H9PerVertexAfD0C6BufferVyAD0cF9InfluenceVG_SaySiGtcfcySrys5F13VGz_SiztXEfU_SaySiGSiTf1nc_nTf4ngn_n(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
    v6 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v5;
  v6 = *(a2 + 16);
  if (v6)
  {
LABEL_6:
    v7 = 0;
    v8 = (result + 32);
    v9 = (a2 + 32);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (v11 != v11 || v10 < 0)
      {
        break;
      }

      v12 = __OFADD__(v7, v10);
      v7 += v10;
      if (v12)
      {
        goto LABEL_14;
      }

      *v8++ = v7;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v5 >= a3)
  {
    *(result + 16) = a3;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshModelCollection.Iterator, &type metadata for MeshModelCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshModelCollection and conformance MeshModelCollection()
{
  result = lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection;
  if (!lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshModelCollection, &type metadata for MeshModelCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshPartCollection.Iterator, &type metadata for MeshPartCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshPartCollection and conformance MeshPartCollection()
{
  result = lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection;
  if (!lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshPartCollection, &type metadata for MeshPartCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator;
  if (!lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshLevelCollection_v1.Iterator, &type metadata for MeshLevelCollection_v1.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1()
{
  result = lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1;
  if (!lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshLevelCollection_v1, &type metadata for MeshLevelCollection_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshInstanceCollection.Iterator, &type metadata for MeshInstanceCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshInstanceCollection and conformance MeshInstanceCollection()
{
  result = lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection;
  if (!lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshInstanceCollection, &type metadata for MeshInstanceCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshSkeletonCollection.Iterator, &type metadata for MeshSkeletonCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshSkeletonCollection and conformance MeshSkeletonCollection()
{
  result = lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection;
  if (!lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MeshSkeletonCollection, &type metadata for MeshSkeletonCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Instance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for MeshResource.Instance(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Skeleton.Joint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for MeshResource.Skeleton.Joint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.JointInfluences(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshResource.JointInfluences(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Level_v1(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t storeEnumTagSinglePayload for MeshResource.Level_v1(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.LevelStrategy_v1(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshResource.LevelStrategy_v1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.JointInfluences.InfluenceRate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 5) & 0xFFFFFFF0 | (*(a1 + 64) >> 4);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MeshResource.JointInfluences.InfluenceRate(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 81) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (32 * -a2) & 0x1FFFFFFE00 | (16 * (-a2 & 0xFLL));
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MeshResource.JointInfluences.InfluenceRate(uint64_t result, char a2)
{
  v2 = *(result + 80) & 3 | (a2 << 7);
  *(result + 64) &= 0x10FuLL;
  *(result + 80) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17MeshResourceErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MeshResourceError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshResourceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void outlined consume of Result<MeshResource, Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double MaterialParameterTypes.BlendMode.getCustomMaterialBlending()@<D0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000;
  if (!*v1)
  {
    v2 = 0;
  }

  *&result = 1065353216;
  *a1 = *zmmword_1C1887630;
  *(a1 + 16) = v2;
  *(a1 + 20) = BYTE4(v2);
  return result;
}

void MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(uint64_t a1@<X8>, double a2@<D0>, float32x4_t a3@<Q1>)
{
  v5 = vmulq_f32(a3, a3);
  v6 = vextq_s8(v5, v5, 4uLL).u64[0];
  v5.i32[1] = vextq_s8(v5, v5, 8uLL).i32[1];
  v7 = vsqrt_f32(vadd_f32(v6, *v5.i8));
  v8 = atan2f(a3.f32[1], a3.f32[0]);
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
}

Swift::Int MaterialParameterTypes.FaceCulling.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void MaterialParameterTypes.TextureCoordinateTransform.init(offset:scale:rotation:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, float a4@<S2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialParameterTypes.FaceCulling, &type metadata for MaterialParameterTypes.FaceCulling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialParameterTypes.TriangleFillMode, &type metadata for MaterialParameterTypes.TriangleFillMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaterialParameterTypes.BlendMode, &type metadata for MaterialParameterTypes.BlendMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameterTypes.TextureCoordinateTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialParameterTypes.TextureCoordinateTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void specialized Entity.ChildCollection.filter(recursive:_:)(char a1, uint64_t *a2)
{
  v37 = MEMORY[0x1E69E7CC0];

  if (REEntityGetChildCount() < 1)
  {
LABEL_51:

    return;
  }

  v3 = 0;
  v34 = a1;
  while (v3 < REEntityGetChildCount())
  {
    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_59;
    }

    v5 = Child;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
LABEL_9:
      v7 = v6;
      goto LABEL_13;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_55;
    }

    specialized static Entity.entityInfoType(_:)(v5);
    if (!v8)
    {
      v6 = makeEntity(for:)(v5);
      goto LABEL_9;
    }

    v7 = (*(v8 + 232))();
    v9 = *(v7 + 16);

    MEMORY[0x1C68F9740](v9, 0);
    *(v7 + 16) = v5;
    MEMORY[0x1C68F9740](v5, v7);

LABEL_13:
    if (v3 >= REEntityGetChildCount())
    {
      goto LABEL_53;
    }

    MEMORY[0x1C68F3650](v10);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v37;
    if ((a1 & 1) == 0)
    {

      goto LABEL_4;
    }

    v36[0] = v7;

    specialized Entity.ChildCollection.filter(recursive:_:)(1, v36);
    v13 = v12;

    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v11 >> 62;
    if (v11 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      v18 = v33 + v15;
      if (__OFADD__(v33, v15))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {
      v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_50;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v16)
      {
LABEL_28:
        __CocoaSet.count.getter();
      }

LABEL_29:
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v35 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }

    if (v16)
    {
      goto LABEL_28;
    }

    v19 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    v35 = v11;
LABEL_30:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      if (((v21 >> 1) - v20) < v15)
      {
        goto LABEL_56;
      }

      v23 = v19 + 8 * v20 + 32;
      if (v14)
      {
        if (v22 < 1)
        {
          goto LABEL_58;
        }

        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [Entity] and conformance [A], &_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR, MEMORY[0x1E69E6340]);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
          v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v13);
          v29 = *v28;

          (v27)(v36, 0);
          *(v23 + 8 * i) = v29;
        }

        a1 = v34;
        v24 = v15;
      }

      else
      {
        type metadata accessor for Entity();
        v24 = v15;
        swift_arrayInitWithCopy();
      }

      v25 = v35;
      if (v24 >= 1)
      {
        v30 = *(v19 + 16);
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_57;
        }

        *(v19 + 16) = v32;
      }
    }

    else
    {

      v25 = v35;
      if (v15 > 0)
      {
        goto LABEL_54;
      }
    }

    v37 = v25;
LABEL_4:
    if (++v3 >= REEntityGetChildCount())
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t Entity.ChildCollection.subscript.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = result;
  result = REEntityGetChildCount();
  if (result <= v1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = REEntityGetChild();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v2 = result;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {

    return swift_dynamicCastClassUnconditional();
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = static Entity.entityInfoType(_:)(v2);
  if (v3)
  {
    v4 = (*(v3 + 232))();
    v5 = *(v4 + 16);

    MEMORY[0x1C68F9740](v5, 0);
    *(v4 + 16) = v2;
    MEMORY[0x1C68F9740](v2, v4);

    return v4;
  }

  else
  {

    return makeEntity(for:)(v2);
  }
}

Swift::Int __swiftcall Entity.ChildCollection.index(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = after;
    after = REEntityGetChildCount();
    if (after > v1)
    {
      return v1 + 1;
    }
  }

  __break(1u);
  return after;
}

void specialized Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(void *a1, uint64_t a2, uint64_t a3)
{

  Parent = REEntityGetParent();
  if (!Parent)
  {
    goto LABEL_9;
  }

  ChildCount = Parent;
  if (!REEntityGetSwiftObject())
  {
    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(ChildCount);
      if (!v10)
      {
        goto LABEL_22;
      }

      v9 = (*(v10 + 232))();
      v11 = *(v9 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v9 + 16) = ChildCount;
      MEMORY[0x1C68F9740](ChildCount, v9);

      goto LABEL_8;
    }

    goto LABEL_25;
  }

  type metadata accessor for Entity();
  for (i = swift_dynamicCastClassUnconditional(); ; i = makeEntity(for:)(ChildCount))
  {
    v9 = i;
LABEL_8:
    v12 = *(v9 + 16);

    v13 = *(a3 + 16);

    if (v12 == v13)
    {
      break;
    }

LABEL_9:
    ChildCount = REEntityGetChildCount();
    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(a1, 0);
    if ((ChildCount & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  specialized Collection<>.firstIndex(of:)(a1, a3);
  if (v16)
  {
    goto LABEL_26;
  }

  ChildCount = v15;
  if (v15 < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v14 = REEntityGetChildCount();
  if (a2 < 0 || ChildCount >= v14)
  {
    __break(1u);
  }

  else if (REEntityGetChildCount() >= a2)
  {
    if (ChildCount != a2 && ChildCount + 1 != a2)
    {
      Entity.ChildCollection.subscript.getter(ChildCount);
      REEntityInsertChild();
    }

    return;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v39 - v13;
  v15 = *v4;
  (*(v8 + 16))(v10, a1, a3, v12);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v16 = v44;
  if (!v44)
  {
    return (*(v41 + 8))(v14, AssociatedTypeWitness);
  }

  v17 = swift_getAssociatedTypeWitness();
  v42 = v14;
  while (1)
  {
    v18 = HasHierarchy.parent.getter();
    if (v18 && (v19 = *(v18 + 16), , , v20 = *(v15 + 16), , v19 == v20))
    {

      specialized Collection<>.firstIndex(of:)(v27, v15);
      ChildCount = v28;
      v30 = v29;

      if (v30)
      {
        goto LABEL_44;
      }
    }

    else
    {
      ChildCount = REEntityGetChildCount();

      REEntitySetParent();
      if (swift_conformsToProtocol2())
      {
        swift_beginAccess();
        v22 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v22[2])
          {

            v23 = RFServiceManagerGetAnchorManagementService();
            if (v23)
            {
              v24 = v23;
              SceneNullable = REEntityGetSceneNullable();
              if (SceneNullable)
              {
                v40 = SceneNullable;
                v26 = RESceneGetSwiftObject();
                type metadata accessor for Scene();
                if (v26)
                {
                  swift_dynamicCastClassUnconditional();
                }

                else
                {
                  swift_allocObject();
                  Scene.init(coreScene:)(v40);
                }

                RFAnchorManagementUpdateAnchoringInScene();
              }
            }
          }
        }
      }

      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v16);
      Entity.updateSceneGravityIfNeeded()();
    }

    if (ChildCount < 0)
    {
      break;
    }

    result = REEntityGetChildCount();
    if (a2 < 0 || ChildCount >= result)
    {
      goto LABEL_39;
    }

    result = REEntityGetChildCount();
    if (result < a2)
    {
      goto LABEL_40;
    }

    if (a2 != ChildCount && a2 != ChildCount + 1)
    {
      result = REEntityGetChildCount();
      if (ChildCount >= result)
      {
        goto LABEL_41;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_43;
      }

      v32 = result;
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
          goto LABEL_42;
        }

        specialized static Entity.entityInfoType(_:)(v32);
        if (v33)
        {
          v34 = (*(v33 + 232))();
          v35 = AssociatedTypeWitness;
          v36 = v17;
          v37 = *(v34 + 16);

          v38 = v37;
          v17 = v36;
          AssociatedTypeWitness = v35;
          v14 = v42;
          MEMORY[0x1C68F9740](v38, 0);
          *(v34 + 16) = v32;
          MEMORY[0x1C68F9740](v32, v34);
        }

        else
        {
          makeEntity(for:)(v32);
        }
      }

      REEntityInsertChild();
    }

    if (ChildCount >= a2)
    {
      ++a2;
    }

    dispatch thunk of IteratorProtocol.next()();
    v16 = v44;
    if (!v44)
    {
      return (*(v41 + 8))(v14, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
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
  return result;
}

void Entity.ChildCollection.remove(_:)(uint64_t a1)
{
  v3 = *v1;

  Parent = REEntityGetParent();
  if (Parent)
  {
    v5 = Parent;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      specialized static Entity.entityInfoType(_:)(v5);
      if (v7)
      {
        v8 = (*(v7 + 232))();
        v9 = *(v8 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v8 + 16) = v5;
        MEMORY[0x1C68F9740](v5, v8);

        v6 = v8;
      }

      else
      {
        v6 = makeEntity(for:)(v5);
      }
    }

    v10 = *(v6 + 16);

    v11 = *(v3 + 16);

    if (v10 == v11)
    {
      REEntitySetParent();
      static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall Entity.ChildCollection.remove(at:)(Swift::Int at)
{
  v2 = *v1;
  v3 = Entity.ChildCollection.subscript.getter(at);

  v4 = specialized HasHierarchy.parent.getter();
  if (v4)
  {
    v5 = *(v4 + 16);

    v6 = *(v2 + 16);

    if (v5 == v6)
    {
      REEntitySetParent();
      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v3);
    }
  }

  else
  {
  }
}

uint64_t protocol witness for EntityCollection.append(_:) in conformance RealityRenderer.EntityCollection()
{

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v0, 0);
}

uint64_t EntityCollection.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v5 = *(a3 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Entity> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR, MEMORY[0x1E69E6BD0]);
  return v5(&v9, v6, v7, a2, a3);
}

uint64_t protocol witness for EntityCollection.insert(_:beforeIndex:) in conformance RealityRenderer.EntityCollection(void *a1, uint64_t a2)
{
  v5 = *v2;

  specialized Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(a1, a2, v5);
}

uint64_t EntityCollection.insert(_:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v7 = *(a4 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Entity> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR, MEMORY[0x1E69E6BD0]);
  return v7(&v11, a2, v8, v9, a3, a4);
}

void specialized EntityCollection.removeAll(where:)(uint64_t (*a1)(uint64_t))
{
  v3 = v2;
  v4 = *v1;
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
    goto LABEL_67;
  }

  v6 = ChildCount;
  if (ChildCount)
  {
    v7 = ChildCount;
    while (1)
    {
      if (v6 < v7)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      --v7;

      if (v7 >= REEntityGetChildCount())
      {
        goto LABEL_62;
      }

      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_68;
      }

      v9 = Child;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        v10 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_64;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v11 & 1) == 0))
        {
          swift_endAccess();
          v12 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v45;
        }

        swift_endAccess();
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_37;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_37;
        }

        v15 = *Object;
        if (*(Object + 8) || !v15)
        {
        }

        else
        {
          v16 = *v15;
          v17 = String.init(utf8String:)();
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0xE000000000000000;
          }

          v15 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v16 == 42, v19, v20);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v15;
        }

        if (!v15)
        {
          goto LABEL_70;
        }

        v21 = String.init(utf8String:)();
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0xE000000000000000;
        }

        v24 = MEMORY[0x1C68F3280](v21, v23);

        v25 = NSClassFromString(v24);

        if (v25 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v26 = swift_dynamicCastMetatype()) != 0))
        {
          v10 = (*(v26 + 232))();
          v27 = *(v10 + 16);

          MEMORY[0x1C68F9740](v27, 0);
          *(v10 + 16) = v9;
          MEMORY[0x1C68F9740](v9, v10);
        }

        else
        {
LABEL_37:
          v10 = makeEntity(for:)(v9);
        }
      }

      v28 = a1(v10);

      if (v3)
      {
        return;
      }

      if (v28)
      {
        break;
      }

LABEL_6:
      if (!v7)
      {
        return;
      }
    }

    if (v7 >= REEntityGetChildCount())
    {
      goto LABEL_63;
    }

    v29 = REEntityGetChild();
    if (!v29)
    {
      goto LABEL_69;
    }

    v30 = v29;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v31 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_65;
      }

      specialized static Entity.entityInfoType(_:)(v30);
      if (v33)
      {
        v32 = (*(v33 + 232))();
        v34 = *(v32 + 16);

        MEMORY[0x1C68F9740](v34, 0);
        *(v32 + 16) = v30;
        MEMORY[0x1C68F9740](v30, v32);

LABEL_49:

        Parent = REEntityGetParent();
        if (!Parent)
        {

          goto LABEL_5;
        }

        v36 = Parent;
        if (REEntityGetSwiftObject())
        {
          v37 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_66;
          }

          specialized static Entity.entityInfoType(_:)(v36);
          if (v40)
          {
            v41 = (*(v40 + 232))();
            MEMORY[0x1C68F9740](*(v41 + 16), 0);
            *(v41 + 16) = v36;
            MEMORY[0x1C68F9740](v36, v41);
            v42 = *(v41 + 16);

            v43 = *(v4 + 16);

            if (v42 == v43)
            {
LABEL_57:
              REEntitySetParent();
              static Entity.updateInteractions(root:)(v32);
            }

LABEL_5:

            goto LABEL_6;
          }

          v37 = makeEntity(for:)(v36);
        }

        v38 = *(v37 + 16);

        v39 = *(v4 + 16);

        if (v38 == v39)
        {
          goto LABEL_57;
        }

        goto LABEL_5;
      }

      v31 = makeEntity(for:)(v30);
    }

    v32 = v31;
    goto LABEL_49;
  }
}

{
  v3 = v2;
  v4 = *v1;
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
    goto LABEL_67;
  }

  v6 = ChildCount;
  if (ChildCount)
  {
    v7 = ChildCount;
    do
    {
      if (v6 < v7)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      if (--v7 >= REEntityGetChildCount())
      {
        goto LABEL_62;
      }

      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_68;
      }

      v9 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v10 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_64;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v11 & 1) == 0))
        {
          swift_endAccess();
          v12 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v46;
        }

        swift_endAccess();
        if (REEntityGetCustomComponent())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v15 = *Object;
            if (*(Object + 8) || !v15)
            {
            }

            else
            {
              v16 = *v15;
              v17 = String.init(utf8String:)();
              if (v18)
              {
                v19 = v17;
              }

              else
              {
                v19 = 0;
              }

              if (v18)
              {
                v20 = v18;
              }

              else
              {
                v20 = 0xE000000000000000;
              }

              v15 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v16 == 42, v19, v20);

              type metadata accessor for IntrospectionDataCleanupHelper();
              *(swift_allocObject() + 16) = v15;
            }

            if (!v15)
            {
              goto LABEL_70;
            }

            v21 = String.init(utf8String:)();
            if (v22)
            {
              v23 = v22;
            }

            else
            {
              v21 = 0;
              v23 = 0xE000000000000000;
            }

            v24 = MEMORY[0x1C68F3280](v21, v23);

            v25 = NSClassFromString(v24);

            if (v25)
            {
              swift_getObjCClassMetadata();
              type metadata accessor for Entity();
              v26 = swift_dynamicCastMetatype();
              if (v26)
              {
                v27 = (*(v26 + 232))();
                v28 = *(v27 + 16);

                MEMORY[0x1C68F9740](v28, 0);
                *(v27 + 16) = v9;
                MEMORY[0x1C68F9740](v9, v27);

                goto LABEL_39;
              }
            }
          }
        }

        v10 = makeEntity(for:)(v9);
      }

      v27 = v10;
LABEL_39:
      v29 = a1(v27);

      if (v3)
      {
        return;
      }

      if (v29)
      {
        if (v7 >= REEntityGetChildCount())
        {
          goto LABEL_63;
        }

        v30 = REEntityGetChild();
        if (!v30)
        {
          goto LABEL_69;
        }

        v31 = v30;
        type metadata accessor for Entity();
        if (REEntityGetSwiftObject())
        {
          v32 = swift_dynamicCastClassUnconditional();
          goto LABEL_45;
        }

        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_65;
        }

        specialized static Entity.entityInfoType(_:)(v31);
        if (v34)
        {
          v33 = (*(v34 + 232))();
          v35 = *(v33 + 16);

          MEMORY[0x1C68F9740](v35, 0);
          *(v33 + 16) = v31;
          MEMORY[0x1C68F9740](v31, v33);
        }

        else
        {
          v32 = makeEntity(for:)(v31);
LABEL_45:
          v33 = v32;
        }

        Parent = REEntityGetParent();
        if (Parent)
        {
          v37 = Parent;
          if (REEntityGetSwiftObject())
          {
            v38 = swift_dynamicCastClassUnconditional();
            goto LABEL_52;
          }

          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_66;
          }

          specialized static Entity.entityInfoType(_:)(v37);
          if (v41)
          {
            v42 = (*(v41 + 232))();
            MEMORY[0x1C68F9740](*(v42 + 16), 0);
            *(v42 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v42);
            v43 = *(v42 + 16);

            v44 = *(v4 + 16);

            if (v43 == v44)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v38 = makeEntity(for:)(v37);
LABEL_52:
            v39 = *(v38 + 16);

            v40 = *(v4 + 16);

            if (v39 == v40)
            {
LABEL_57:
              REEntitySetParent();
              static Entity.updateInteractions(root:)(v33);
            }
          }
        }

        else
        {
        }
      }
    }

    while (v7);
  }
}

void *EntityCollection.removeAll(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  dispatch thunk of Collection.startIndex.getter();
  v8 = v16[0];
  result = dispatch thunk of Collection.endIndex.getter();
  v10 = v17;
  if (v17 < v16[0])
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v17 != v16[0])
  {
    while (v8 < v10)
    {
      v17 = --v10;
      v11 = dispatch thunk of Collection.subscript.read();
      v13 = *v12;

      v11(v16, 0);
      v14 = a1(v13);

      if (!v5)
      {
        if (v14)
        {
          result = (*(a4 + 56))(v10, a3, a4);
        }

        if (v8 != v10)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  return EntityCollection.removeAll(where:)(a1, a2, a3, a4);
}

uint64_t Entity.ChildCollection.IndexingIterator.next()@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v15[-v5];
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  v7 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  if (v7)
  {
    v8 = swift_getAssociatedTypeWitness();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v12, v13);
    v10(v15, 0);
    dispatch thunk of Collection.formIndex(after:)();
    return (*(v14 + 56))(a2, 0, 1, v13);
  }
}

uint64_t Entity.ChildCollection.IndexingIterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *(a2 - 8);
  (*(v10 + 16))(a4, a1, a2);
  type metadata accessor for Entity.ChildCollection.IndexingIterator(0, a2, a3, v7);
  dispatch thunk of Collection.startIndex.getter();
  v8 = *(v10 + 8);

  return v8(a1, a2);
}

void Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(void *a1, char a2)
{
  v4 = *v2;
  if (a2)
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v15 = static simd_quatf.identity;
    _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v4);
    specialized simd_float4x4.init(translation:rotation:scale:)(0.0, v15, 1.0);
    REMakeSRTFromMatrix();
    v16[0] = v5;
    v16[1] = v6;
    v16[2] = v7;
    v17 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v16);
    v8 = a1[2];

    if (v8 != a1[2])
    {
      __break(1u);
    }
  }

  REEntitySetParent();
  if (swift_conformsToProtocol2())
  {
    swift_beginAccess();
    v9 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v9[2])
      {

        v10 = RFServiceManagerGetAnchorManagementService();
        if (v10)
        {
          v11 = v10;
          SceneNullable = REEntityGetSceneNullable();
          if (SceneNullable)
          {
            v13 = SceneNullable;
            v14 = RESceneGetSwiftObject();
            type metadata accessor for Scene();
            if (v14)
            {
              swift_dynamicCastClassUnconditional();
            }

            else
            {
              swift_allocObject();
              Scene.init(coreScene:)(v13);
            }

            RFAnchorManagementUpdateAnchoringInScene();
          }
        }
      }
    }
  }

  type metadata accessor for Entity();
  static Entity.updateInteractions(root:)(a1);
  Entity.updateSceneGravityIfNeeded()();
}

void Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v5 = *v2;

  Parent = REEntityGetParent();
  if (Parent)
  {
    v7 = Parent;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v8 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      specialized static Entity.entityInfoType(_:)(v7);
      if (v9)
      {
        v10 = (*(v9 + 232))();
        v11 = *(v10 + 16);

        MEMORY[0x1C68F9740](v11, 0);
        *(v10 + 16) = v7;
        MEMORY[0x1C68F9740](v7, v10);

        v8 = v10;
      }

      else
      {
        v8 = makeEntity(for:)(v7);
      }
    }

    v12 = *(v8 + 16);

    v13 = *(v5 + 16);

    if (v12 == v13)
    {
      if (a2)
      {
        *v14.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, 0);
        v20 = v15;
        v21 = v14;
        v18 = v17;
        v19 = v16;
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v21, v20, v19, v18);
      }

      else
      {
        REEntitySetParent();
      }

      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }
}

uint64_t Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  if (*(Entity.ChildCollection.subscript.getter(a1) + 16) != *(a2 + 16))
  {
    v8 = specialized HasHierarchy.parent.getter();
    if (!v8 || (v9 = *(v8 + 16), , , v10 = *(v7 + 16), , v9 != v10))
    {
      v11 = 1;
      if (a3)
      {
LABEL_5:
        *v12.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a2, 0);
        v22 = v12;
        v23 = v13;
        v24 = v14;
        v25 = v15;
LABEL_20:
        REEntitySetParent();
        REEntityInsertChild();
        if (a3)
        {
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v22, v23, v24, v25);
        }

        if (v11)
        {
          type metadata accessor for Entity();
          static Entity.updateInteractions(root:)(a2);
        }

        goto LABEL_24;
      }

LABEL_19:
      v25 = *&zmmword_1C1887630[48];
      v24 = *&zmmword_1C1887630[32];
      v23 = *&zmmword_1C1887630[16];
      v22 = *zmmword_1C1887630;
      goto LABEL_20;
    }

    specialized Collection<>.firstIndex(of:)(a2, v7);
    v17 = v16;
    result = RELinkedOnOrAfterFall2024OSVersions();
    if (result)
    {
      result = REEntityGetChildCount();
      if (result < 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v19 = result;
      if (result)
      {
        v20 = 0;
        while (1)
        {
          result = REEntityGetChildCount();
          if (v20 >= result)
          {
            break;
          }

          if (v19 == ++v20)
          {
            v21 = v19 - 1;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

      v21 = -1;
LABEL_16:
      if (v21 == a1 && (v17 & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (v17)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v11 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_24:
}

void specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  if (!REEntityGetChildCount())
  {
    return;
  }

  v3 = 0;
  while (v3 < REEntityGetChildCount())
  {
    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_42;
    }

    v5 = Child;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_41;
      }

      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v7 & 1) == 0))
      {
        swift_endAccess();
        v8 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
        static SceneManager.customComponentTypeObjectIdToHandles = v26;
      }

      swift_endAccess();
      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        if (Object)
        {
          v11 = *Object;
          if (*(Object + 8) || !v11)
          {
          }

          else
          {
            v12 = *v11;
            v13 = String.init(utf8String:)();
            if (v14)
            {
              v15 = v13;
            }

            else
            {
              v15 = 0;
            }

            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = 0xE000000000000000;
            }

            v11 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v12 == 42, v15, v16);

            type metadata accessor for IntrospectionDataCleanupHelper();
            *(swift_allocObject() + 16) = v11;
          }

          if (!v11)
          {
            goto LABEL_43;
          }

          v17 = String.init(utf8String:)();
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v17 = 0;
            v19 = 0xE000000000000000;
          }

          v20 = MEMORY[0x1C68F3280](v17, v19);

          v21 = NSClassFromString(v20);

          if (v21)
          {
            swift_getObjCClassMetadata();
            type metadata accessor for Entity();
            v22 = swift_dynamicCastMetatype();
            if (v22)
            {
              v23 = (*(v22 + 232))();
              MEMORY[0x1C68F9740](*(v23 + 16), 0);
              *(v23 + 16) = v5;
              MEMORY[0x1C68F9740](v5, v23);
              v24 = *(v23 + 16);

              if (v24 == *(a1 + 16))
              {
                return;
              }

              goto LABEL_35;
            }
          }
        }
      }

      v6 = makeEntity(for:)(v5);
    }

    v25 = *(v6 + 16);

    if (v25 == *(a1 + 16))
    {
      return;
    }

LABEL_35:
    if (v3 >= REEntityGetChildCount())
    {
      goto LABEL_40;
    }

    if (++v3 == REEntityGetChildCount())
    {
      return;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t *key path setter for Entity.ChildCollection.subscript(_:) : Entity.ChildCollection(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *result;

  result = REEntityGetChildCount();
  if (v3 >= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v3, v4, 0);
}

uint64_t Entity.ChildCollection.subscript.setter(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = REEntityGetChildCount();
  if (result <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(a2, v3, 0);
}

uint64_t *(*Entity.ChildCollection.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *result, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  a1[3] = *v2;
  *a1 = Entity.ChildCollection.subscript.getter(a2);
  return Entity.ChildCollection.subscript.modify;
}

uint64_t *Entity.ChildCollection.subscript.modify(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      result = REEntityGetChildCount();
      if (result > v3)
      {

        Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v3, v2, 0);

        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  if (v3 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = REEntityGetChildCount();
  if (result <= v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v3, v2, 0);

LABEL_8:
}

Swift::Void __swiftcall Entity.ChildCollection.append(contentsOf:preservingWorldTransforms:)(Swift::OpaquePointer contentsOf, Swift::Bool preservingWorldTransforms)
{
  if (contentsOf._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((contentsOf._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while ((contentsOf._rawValue & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C68F41F0](v5, contentsOf._rawValue);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v6, preservingWorldTransforms);

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((contentsOf._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(contentsOf._rawValue + v5 + 4);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t Entity.ChildCollection.append(contentsOf:preservingWorldTransforms:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v6 = *a1;

  specialized Entity.ChildCollection.forEach(recursive:using:)(0, &v6, v4, v3);
}

void Entity.ChildCollection.remove(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v5 = *v2;

  Parent = REEntityGetParent();
  if (Parent)
  {
    v7 = Parent;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v8 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      specialized static Entity.entityInfoType(_:)(v7);
      if (v9)
      {
        v10 = (*(v9 + 232))();
        v11 = *(v10 + 16);

        MEMORY[0x1C68F9740](v11, 0);
        *(v10 + 16) = v7;
        MEMORY[0x1C68F9740](v7, v10);

        v8 = v10;
      }

      else
      {
        v8 = makeEntity(for:)(v7);
      }
    }

    v12 = *(v8 + 16);

    v13 = *(v5 + 16);

    if (v12 == v13)
    {
      if (a2)
      {
        *v14.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, 0);
        v20 = v15;
        v21 = v14;
        v18 = v17;
        v19 = v16;
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v21, v20, v19, v18);
      }

      else
      {
        REEntitySetParent();
      }

      static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall Entity.ChildCollection.remove(at:preservingWorldTransform:)(Swift::Int at, Swift::Bool preservingWorldTransform)
{
  v3 = Entity.ChildCollection.subscript.getter(at);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v3, preservingWorldTransform);
}

Swift::Void __swiftcall Entity.ChildCollection.removeAll(keepCapacity:preservingWorldTransforms:)(Swift::Bool keepCapacity, Swift::Bool preservingWorldTransforms)
{
  v4 = *v2;
  ChildCount = REEntityGetChildCount();
  if ((ChildCount & 0x8000000000000000) == 0)
  {
    v6 = ChildCount;
    while (1)
    {
      if (!v6)
      {
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if (i >= REEntityGetChildCount())
        {
          __break(1u);
          goto LABEL_33;
        }
      }

      if (REEntityGetChildCount() < 1)
      {
        goto LABEL_34;
      }

      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_37;
      }

      v9 = Child;
      type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        break;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      specialized static Entity.entityInfoType(_:)(v9);
      if (!v12)
      {
        v10 = makeEntity(for:)(v9);
        goto LABEL_13;
      }

      v11 = (*(v12 + 232))();
      v13 = *(v11 + 16);

      MEMORY[0x1C68F9740](v13, 0);
      *(v11 + 16) = v9;
      MEMORY[0x1C68F9740](v9, v11);

LABEL_17:

      Parent = REEntityGetParent();
      if (!Parent)
      {

        goto LABEL_4;
      }

      v15 = Parent;
      if (REEntityGetSwiftObject())
      {
        v16 = swift_dynamicCastClassUnconditional();
        goto LABEL_20;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_36;
      }

      specialized static Entity.entityInfoType(_:)(v15);
      if (!v19)
      {
        v16 = makeEntity(for:)(v15);
LABEL_20:
        v17 = *(v16 + 16);

        v18 = *(v4 + 16);

        if (v17 == v18)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v20 = (*(v19 + 232))();
      MEMORY[0x1C68F9740](*(v20 + 16), 0);
      *(v20 + 16) = v15;
      MEMORY[0x1C68F9740](v15, v20);
      v21 = *(v20 + 16);

      v22 = *(v4 + 16);

      if (v21 == v22)
      {
LABEL_25:
        if (preservingWorldTransforms)
        {
          *v23.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v11, 0);
          v29 = v24;
          v30 = v23;
          v27 = v26;
          v28 = v25;
          REEntitySetParent();
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v30, v29, v28, v27);
        }

        else
        {
          REEntitySetParent();
        }

        static Entity.updateInteractions(root:)(v11);
      }

LABEL_4:

      v6 = REEntityGetChildCount();
      if (v6 < 0)
      {
        goto LABEL_33;
      }
    }

    v10 = swift_dynamicCastClassUnconditional();
LABEL_13:
    v11 = v10;
    goto LABEL_17;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

Swift::Void __swiftcall Entity.ChildCollection.removeAll(preservingWorldTransforms:)(Swift::Bool preservingWorldTransforms)
{
  v3 = *v1;
  ChildCount = REEntityGetChildCount();
  if ((ChildCount & 0x8000000000000000) == 0)
  {
    v5 = ChildCount;
    while (1)
    {
      if (!v5)
      {
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if (i >= REEntityGetChildCount())
        {
          __break(1u);
          goto LABEL_33;
        }
      }

      if (REEntityGetChildCount() < 1)
      {
        goto LABEL_34;
      }

      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_37;
      }

      v8 = Child;
      type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        break;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      specialized static Entity.entityInfoType(_:)(v8);
      if (!v11)
      {
        v9 = makeEntity(for:)(v8);
        goto LABEL_13;
      }

      v10 = (*(v11 + 232))();
      v12 = *(v10 + 16);

      MEMORY[0x1C68F9740](v12, 0);
      *(v10 + 16) = v8;
      MEMORY[0x1C68F9740](v8, v10);

LABEL_17:

      Parent = REEntityGetParent();
      if (!Parent)
      {

        goto LABEL_4;
      }

      v14 = Parent;
      if (REEntityGetSwiftObject())
      {
        v15 = swift_dynamicCastClassUnconditional();
        goto LABEL_20;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_36;
      }

      specialized static Entity.entityInfoType(_:)(v14);
      if (!v18)
      {
        v15 = makeEntity(for:)(v14);
LABEL_20:
        v16 = *(v15 + 16);

        v17 = *(v3 + 16);

        if (v16 == v17)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v19 = (*(v18 + 232))();
      MEMORY[0x1C68F9740](*(v19 + 16), 0);
      *(v19 + 16) = v14;
      MEMORY[0x1C68F9740](v14, v19);
      v20 = *(v19 + 16);

      v21 = *(v3 + 16);

      if (v20 == v21)
      {
LABEL_25:
        if (preservingWorldTransforms)
        {
          *v22.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v10, 0);
          v28 = v23;
          v29 = v22;
          v26 = v25;
          v27 = v24;
          REEntitySetParent();
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v29, v28, v27, v26);
        }

        else
        {
          REEntitySetParent();
        }

        static Entity.updateInteractions(root:)(v10);
      }

LABEL_4:

      v5 = REEntityGetChildCount();
      if (v5 < 0)
      {
        goto LABEL_33;
      }
    }

    v9 = swift_dynamicCastClassUnconditional();
LABEL_13:
    v10 = v9;
    goto LABEL_17;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

Swift::Void __swiftcall Entity.ChildCollection.replaceAll(_:preservingWorldTransforms:)(Swift::OpaquePointer _, Swift::Bool preservingWorldTransforms)
{
  v5 = *v2;
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = ChildCount;
  while (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (i >= REEntityGetChildCount())
      {
        __break(1u);
        goto LABEL_40;
      }
    }

    if (REEntityGetChildCount() < 1)
    {
      goto LABEL_41;
    }

    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_47;
    }

    v10 = Child;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v11 = swift_dynamicCastClassUnconditional();
LABEL_13:
      v12 = v11;
      goto LABEL_17;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_42;
    }

    specialized static Entity.entityInfoType(_:)(v10);
    if (!v13)
    {
      v11 = makeEntity(for:)(v10);
      goto LABEL_13;
    }

    v12 = (*(v13 + 232))();
    v14 = *(v12 + 16);

    MEMORY[0x1C68F9740](v14, 0);
    *(v12 + 16) = v10;
    MEMORY[0x1C68F9740](v10, v12);

LABEL_17:

    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_4;
    }

    v16 = Parent;
    if (REEntityGetSwiftObject())
    {
      v17 = swift_dynamicCastClassUnconditional();
      goto LABEL_20;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_43;
    }

    specialized static Entity.entityInfoType(_:)(v16);
    if (!v20)
    {
      v17 = makeEntity(for:)(v16);
LABEL_20:
      v18 = *(v17 + 16);

      v19 = *(v5 + 16);

      if (v18 == v19)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }

    v21 = (*(v20 + 232))();
    MEMORY[0x1C68F9740](*(v21 + 16), 0);
    *(v21 + 16) = v16;
    MEMORY[0x1C68F9740](v16, v21);
    v22 = *(v21 + 16);

    v23 = *(v5 + 16);

    if (v22 == v23)
    {
LABEL_25:
      if (preservingWorldTransforms)
      {
        *v24.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v12, 0);
        v33 = v25;
        v34 = v24;
        v31 = v27;
        v32 = v26;
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v34, v33, v32, v31);
      }

      else
      {
        REEntitySetParent();
      }

      static Entity.updateInteractions(root:)(v12);
    }

LABEL_4:

    v7 = REEntityGetChildCount();
    if (v7 < 0)
    {
      goto LABEL_40;
    }
  }

  if (_._rawValue >> 62)
  {
LABEL_44:
    v28 = __CocoaSet.count.getter();
    if (v28)
    {
      goto LABEL_33;
    }

    return;
  }

  v28 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_33:
    if (v28 < 1)
    {
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      for (j = 0; j != v28; ++j)
      {
        if ((_._rawValue & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1C68F41F0](j, _._rawValue);
        }

        else
        {
          v30 = *(_._rawValue + j + 4);
        }

        Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v30, preservingWorldTransforms);
      }
    }
  }
}

double Entity.ChildCollection.replaceAll<A>(_:preservingWorldTransforms:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v18 = *v4;
  v15._rawValue = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  (*(v7 + 16))(v9, a1, a3, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v20)
    {
      break;
    }

    MEMORY[0x1C68F3650](v16);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v15._rawValue = v21;
  }

  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v20 = v18;
  Entity.ChildCollection.replaceAll(_:preservingWorldTransforms:)(v15, v19 & 1);

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Entity.ChildCollection(uint64_t *a1, uint64_t *a2))()
{
  v3 = Entity.ChildCollection.subscript.getter(*a2);
  *a1 = v3;
  a1[1] = v3;
  return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ChildCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Entity.ChildCollection.description.getter()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = type metadata accessor for Entity();
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Entity.ChildCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = type metadata accessor for Entity();
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t Entity.ChildCollection.IndexingIterator.init(_elements:_position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for Entity.ChildCollection.IndexingIterator(0, a3, a4, v9) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(a5 + v10, a2, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ChildCollection.IndexingIterator<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t EntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return EntityCollection.append<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  dispatch thunk of Collection.endIndex.getter();
  return (*(a4 + 40))(a1, v11, a3, a5, a2, a4);
}

void *EntityCollection.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Entity and conformance Entity();
  result = Collection<>.firstIndex(of:)();
  if ((v7 & 1) == 0)
  {
    return (*(a3 + 56))(v6, a2, a3);
  }

  return result;
}

uint64_t EntityCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return EntityCollection.replaceAll<A>(_:)(a1, a4, a2, a5, a3);
}

{
  (*(a4 + 64))(a2, a4);
  v10 = *(a4 + 40);

  return v10(a1, 0, a3, a5, a2, a4);
}

uint64_t protocol witness for EntityCollection.append(_:) in conformance Entity.ChildCollection()
{

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v0, 0);
}

uint64_t protocol witness for EntityCollection.remove(at:) in conformance Entity.ChildCollection(uint64_t a1)
{
  v1 = Entity.ChildCollection.subscript.getter(a1);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v1, 0);
}

uint64_t specialized Entity.ChildCollection.forEach(recursive:using:)(char a1, uint64_t *a2, void *a3, char a4)
{
  v7 = *a2;

  result = specialized _copyCollectionToContiguousArray<A>(_:)(v7);
  v9 = result;
  if (result < 0 || (result & 0x4000000000000000) != 0)
  {
    result = __CocoaSet.count.getter();
    v10 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *(result + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C68F41F0](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = a3;
    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v12, a4 & 1);
    if (a1)
    {
      v13 = v12;

      specialized Entity.ChildCollection.forEach(recursive:using:)(1, &v13, a3, a4 & 1);
    }
  }

LABEL_13:
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ChildCollection, &type metadata for Entity.ChildCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ChildCollection, &type metadata for Entity.ChildCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Entity.ChildCollection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Entity.ChildCollection.IndexingIterator(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t getEnumTagSinglePayload for Entity.ChildCollection.IndexingIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for Entity.ChildCollection.IndexingIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

CGColorRef HasDirectionalLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v9);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA016DirectionalLightD0V_Tt0B5(&v6);

  result = v6;
  if (v6)
  {
    v4 = v7;
    v5 = v8 & 1;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v5 = 0;
    v4 = 1158028115;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

uint64_t key path setter for HasDirectionalLight.light : <A>A(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v3 = v5;
  return HasDirectionalLight.light.setter(&v5);
}

uint64_t HasDirectionalLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 12))
  {
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v2, v4 | v3);
  return v5(v7, 0);
}

void (*HasDirectionalLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  HasDirectionalLight.light.getter(v3 + 32);
  return HasDirectionalLight.light.modify;
}

void HasDirectionalLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = *(*a1 + 10);
  if (*(*a1 + 44))
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*a1)[6] + 112);
  if (a2)
  {
    v7 = v3;
    v8 = v6(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v3, v5 | v4);
    v8(v2, 0);
  }

  else
  {
    v9 = v6(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v3, v5 | v4);
    v9(v2, 0);
  }

  free(v2);
}

uint64_t HasDirectionalLight.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v17);
  Component = REEntityGetComponent();
  if (Component)
  {
    v16 = Component;
    static DirectionalLightComponent.Shadow.__fromCore(_:)(&v11);
    v4 = v11;
    v5 = v12;
    v6 = v13;
    v7 = v15;
    v8 = v14;

    v10 = v8 << 32;
  }

  else
  {

    v10 = 0;
    v4 = 0x40A000003F800000;
    v7 = 1;
    v6 = 1084227584;
    v5 = 3;
  }

  *a1 = v4;
  *(a1 + 8) = v5 | (v6 << 32);
  *(a1 + 16) = v10 | HIDWORD(v6);
  *(a1 + 24) = v7;
  return result;
}

uint64_t HasDirectionalLight.shadow.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(*v1 + 112))(v9);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA016DirectionalLightD0V6ShadowV_TtB5Tf4ndn_n(v2, v3, v4, v5, *v7);
  return v6(v9, 0);
}

void (*HasDirectionalLight.shadow.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  HasDirectionalLight.shadow.getter((v7 + 3));
  return HasDirectionalLight.shadow.modify;
}

void HasDirectionalLight.shadow.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5[0] = *(*a1 + 24);
  v5[1] = v3;
  v5[2] = v2;
  v6 = v4;
  HasDirectionalLight.shadow.setter(v5);

  free(v1);
}

uint64_t static RKARSystemCore.generateDecimatedMeshes.setter(char a1)
{
  result = swift_beginAccess();
  static RKARSystemCore.generateDecimatedMeshes = a1;
  return result;
}

id RKARSystemCore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RKARSystemCore.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RKARSystemCore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RKARSystemCore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RKARSystemCore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IKComponent.resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double IKComponent.solvers.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

__n128 IKComponent.solvers.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double IKComponent.init(resource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  IKComponent.SolverCollection.init(_:)(MEMORY[0x1E69E7CC0], &v4);
  result = *&v4;
  *(a2 + 8) = v4;
  return result;
}

void IKComponent.SolverCollection.init(_:)(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v6 = v25;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      a2 = 0;
      v4 = (v7 & ~(v7 >> 63));
      while (v4 != a2)
      {
        MEMORY[0x1C68F41F0](a2, a1);
        REIkParametersComponentGetSolverNodeName();
        v23 = String.init(cString:)();
        v24 = v8;
        lazy protocol witness table accessor for type String and conformance String();
        v9 = StringProtocol.hash.getter();
        swift_unknownObjectRelease();

        v25 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v6 = v25;
        }

        v12 = v6 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = a2;
        *(v6 + 16) = v11 + 1;
        a2 = (a2 + 1);
        if (i == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = 0;
      v4 = (v7 & ~(v7 >> 63));
      a2 = MEMORY[0x1E69E6158];
      while (v4 != v13)
      {

        REIkParametersComponentGetSolverNodeName();
        v23 = String.init(cString:)();
        v24 = v14;
        lazy protocol witness table accessor for type String and conformance String();
        v15 = StringProtocol.hash.getter();

        v25 = v6;
        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v6 = v25;
        }

        v18 = v6 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v13;
        *(v6 + 16) = v17 + 1;
        v13 = (v13 + 1);
        if (i == v13)
        {
LABEL_20:

          a2 = v22;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

LABEL_21:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMR);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v23 = v19;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v23, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for IKComponent.Solver.ID);

  v21 = v23;
  *a2 = a1;
  a2[1] = v21;
}

void IKComponent.init(coreComponent:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Asset = REIkParametersComponentGetAsset();
  if (Asset)
  {
    v5 = Asset;
    type metadata accessor for IKResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1C68F9EE0](a1);
  SolverCount = REIkParametersComponentGetSolverCount();
  if (SolverCount < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = SolverCount;
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      *&v12 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for IKComponent.Solver();
      for (i = 0; i != v8; ++i)
      {
        swift_allocObject();
        IKComponent.Solver.init(coreComp:solverIndex:)(a1, i);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v9 = v12;
    }

    IKComponent.SolverCollection.init(_:)(v9, &v12);
    v11 = v12;
    *a2 = v6;
    *(a2 + 8) = v11;
  }
}

Swift::Int IKComponent.Solver.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void IKComponent.Solver.id.getter(uint64_t *a1@<X8>)
{
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.hash.getter();

  *a1 = v3;
}

uint64_t IKComponent.Solver.maxIterations.getter()
{
  if (*(v0 + 40) == 1)
  {
    return REIkParametersComponentSolverGetMaxIterations();
  }

  else
  {
    return *(v0 + 32);
  }
}

uint64_t IKComponent.Solver.maxIterations.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*IKComponent.Solver.maxIterations.modify(void *a1))()
{
  a1[1] = v1;
  if (*(v1 + 40) == 1)
  {
    MaxIterations = REIkParametersComponentSolverGetMaxIterations();
  }

  else
  {
    MaxIterations = *(v1 + 32);
  }

  *a1 = MaxIterations;
  return IKComponent.Solver.maxIterations.modify;
}

void *IKComponent.Solver.maxIterations.modify(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

float IKComponent.Solver.globalFkWeight.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 44);
  }

  REIkParametersComponentSolverGetRetargetingGain();
  return result;
}

uint64_t *(*IKComponent.Solver.globalFkWeight.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 48))
  {
    REIkParametersComponentSolverGetRetargetingGain();
  }

  else
  {
    v3 = *(v1 + 44);
  }

  *(a1 + 8) = v3;
  return IKComponent.Solver.globalFkWeight.modify;
}

uint64_t *IKComponent.Solver.globalFkWeight.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 44) = *(result + 2);
  *(v1 + 48) = 0;
  return result;
}

double key path getter for IKComponent.Solver.joints : IKComponent.Solver@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *a2 = v4;
  a2[1] = v5;

  return result;
}

double key path setter for IKComponent.Solver.joints : IKComponent.Solver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;

  return result;
}

double IKComponent.Solver.joints.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = v3;
  a1[1] = v4;

  return result;
}

double IKComponent.Solver.joints.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 56) = *a1;

  return result;
}

double key path getter for IKComponent.Solver.constraints : IKComponent.Solver@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  *a2 = v4;
  a2[1] = v5;

  return result;
}

double key path setter for IKComponent.Solver.constraints : IKComponent.Solver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;

  return result;
}

double IKComponent.Solver.constraints.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  a1[1] = v4;

  return result;
}

double IKComponent.Solver.constraints.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 72) = *a1;

  return result;
}

uint64_t IKComponent.Solver.init(coreComp:solverIndex:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 44) = 0;
  *(v2 + 48) = 1;
  *(v2 + 16) = a1;
  result = REIkParametersComponentSolverGetJointCount();
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = result;
  v7._rawValue = MEMORY[0x1E69E7CC0];
  v20 = v2;
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for IKComponent.Joint();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = swift_allocObject();
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 1;
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 1;
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      *(v10 + 32) = v8;
      REIkParametersComponentJointGetName();
      *&v23 = String.init(cString:)();
      *(&v23 + 1) = v11;
      lazy protocol witness table accessor for type String and conformance String();
      v12 = StringProtocol.hash.getter();

      *(v10 + 104) = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v9;
    }

    while (v6 != v9);
    v2 = v20;
    v7._rawValue = v21;
  }

  IKComponent.JointCollection.init(_:)(v7);
  *(v2 + 56) = v23;
  result = REIkParametersComponentSolverGetTaskCount();
  if (result < 0)
  {
    goto LABEL_13;
  }

  v13 = result;
  v14._rawValue = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for IKComponent.Constraint();
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      v17 = swift_allocObject();
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      *(v17 + 96) = 1;
      *(v17 + 112) = 0u;
      *(v17 + 128) = 0u;
      *(v17 + 144) = 0u;
      *(v17 + 160) = 1;
      *(v17 + 176) = 0;
      *(v17 + 184) = 0;
      *(v17 + 192) = 1;
      *(v17 + 196) = 0;
      *(v17 + 204) = 1;
      *(v17 + 16) = a1;
      *(v17 + 24) = a2;
      *(v17 + 32) = v15;
      REIkParametersComponentTaskGetName();
      *&v23 = String.init(cString:)();
      *(&v23 + 1) = v18;
      lazy protocol witness table accessor for type String and conformance String();
      v19 = StringProtocol.hash.getter();

      *(v17 + 208) = v19;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 = v16;
    }

    while (v13 != v16);
    v2 = v20;
    v14._rawValue = v22;
  }

  IKComponent.ConstraintCollection.init(_:)(v14);
  *(v2 + 72) = v23;
  return v2;
}

RealityFoundation::IKComponent::JointCollection __swiftcall IKComponent.JointCollection.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      v21 = swift_unexpectedError();
      __break(1u);
      goto LABEL_28;
    }

    v6 = v25;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
LABEL_14:
        v13 = 0;
        v14 = v7 & ~(v7 >> 63);
        while (v14 != v13)
        {
          v15 = *(*(a1._rawValue + v13 + 4) + 104);
          v25 = v6;
          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          v4 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            v6 = v25;
          }

          v18 = v6 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v13;
          *(v6 + 16) = v4;
          if (i == ++v13)
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
    v8 = v7 & ~(v7 >> 63);
    while (v8 != v4)
    {
      v9 = *(MEMORY[0x1C68F41F0](v4, a1._rawValue) + 104);
      swift_unknownObjectRelease();
      v25 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v25;
      }

      v12 = v6 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v4;
      *(v6 + 16) = v11 + 1;
      if (i == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_20:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v25 = v19;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v25, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for IKRig.Joint.ID);

  v23 = v25;
  v3->_rawValue = a1._rawValue;
  v3[1]._rawValue = v23;
LABEL_28:
  result.lookUpHelper._rawValue = v22;
  result.storage._rawValue = v21;
  return result;
}

RealityFoundation::IKComponent::ConstraintCollection __swiftcall IKComponent.ConstraintCollection.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      v21 = swift_unexpectedError();
      __break(1u);
      goto LABEL_28;
    }

    v6 = v25;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
LABEL_14:
        v13 = 0;
        v14 = v7 & ~(v7 >> 63);
        while (v14 != v13)
        {
          v15 = *(*(a1._rawValue + v13 + 4) + 208);
          v25 = v6;
          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          v4 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            v6 = v25;
          }

          v18 = v6 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v13;
          *(v6 + 16) = v4;
          if (i == ++v13)
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
    v8 = v7 & ~(v7 >> 63);
    while (v8 != v4)
    {
      v9 = *(MEMORY[0x1C68F41F0](v4, a1._rawValue) + 208);
      swift_unknownObjectRelease();
      v25 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v25;
      }

      v12 = v6 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v4;
      *(v6 + 16) = v11 + 1;
      if (i == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_20:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v25 = v19;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v25);

  v23 = v25;
  v3->_rawValue = a1._rawValue;
  v3[1]._rawValue = v23;
LABEL_28:
  result.lookUpHelper._rawValue = v22;
  result.storage._rawValue = v21;
  return result;
}

void *IKComponent.Solver.deinit()
{

  return v0;
}

uint64_t IKComponent.Solver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void protocol witness for Identifiable.id.getter in conformance IKComponent.Solver(uint64_t *a1@<X8>)
{
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.hash.getter();

  *a1 = v3;
}

float32x2_t IKComponent.Joint.fkWeightPerAxis.getter()
{
  if (v0[8].i8[0])
  {
    REIkParametersComponentJointGetRetargetingGain();
    v4 = v1;
    REIkParametersComponentJointGetRetargetingGainPerAxis();
    return vmul_n_f32(v2, v4);
  }

  else
  {
    return v0[6];
  }
}

uint64_t (*IKComponent.Joint.fkWeightPerAxis.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  if (*(v1 + 64))
  {
    REIkParametersComponentJointGetRetargetingGain();
    v9 = v5;
    REIkParametersComponentJointGetRetargetingGainPerAxis();
    *&v7 = vmul_n_f32(*v6.f32, v9);
    *(&v7 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v9, v6, 2));
  }

  else
  {
    v7 = *(v1 + 48);
  }

  *v4 = v7;
  return IKComponent.Joint.fkWeightPerAxis.modify;
}

void IKComponent.Joint.fkWeightPerAxis.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 48) = *v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  free(v1);
}

double IKComponent.Joint.rotationStiffness.getter()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 80);
  }

  REIkParametersComponentJointGetRotationStiffness();
  return result;
}

uint64_t (*IKComponent.Joint.rotationStiffness.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  if (*(v1 + 96))
  {
    REIkParametersComponentJointGetRotationStiffness();
  }

  else
  {
    v5 = *(v1 + 80);
  }

  *v4 = v5;
  return IKComponent.Joint.rotationStiffness.modify;
}

void IKComponent.Joint.rotationStiffness.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 80) = *v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  free(v1);
}

uint64_t IKComponent.Joint.name.getter(uint64_t (*a1)(void, void, void))
{
  a1(v1[2], v1[3], v1[4]);

  return String.init(cString:)();
}

void IKComponent.Constraint.jointID.getter(uint64_t *a1@<X8>)
{
  REIkParametersComponentTaskGetTargetName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.hash.getter();

  *a1 = v2;
}

uint64_t IKComponent.Constraint.demands.getter@<X0>(void *a1@<X8>)
{
  HasPositionEnabled = REIkParametersComponentTaskHasPositionEnabled();
  result = REIkParametersComponentTaskHasRotationEnabled();
  if (result)
  {
    result = REIkParametersComponentTaskHasLookAtEnabled();
    v4 = 2;
    if (result)
    {
      v4 = 6;
    }

    HasPositionEnabled |= v4;
  }

  *a1 = HasPositionEnabled;
  return result;
}

double IKComponent.Constraint.target.getter()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    return *(v0 + 48);
  }

  REIkParametersComponentTaskGetTargetRotation();
  REIkParametersComponentTaskGetTargetPosition();
  result = 0.00781250185;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
    return 0.00781250185;
  }

  return result;
}

void IKComponent.Constraint.target.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v3[6].n128_u8[0] = 0;
}

void (*IKComponent.Constraint.target.modify(__int128 **a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  if (*(v1 + 96))
  {
    REIkParametersComponentTaskGetTargetRotation();
    v11 = v5;
    REIkParametersComponentTaskGetTargetPosition();
    v7 = xmmword_1C1887620;
    if (one-time initialization token for identity != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
      v7 = xmmword_1C1887620;
    }

    v8 = v11;
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = *(v1 + 64);
    v6 = *(v1 + 80);
  }

  *v4 = v7;
  v4[1] = v8;
  v4[2] = v6;
  return IKComponent.Constraint.target.modify;
}

void IKComponent.Constraint.target.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 48) = *v1;
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  free(v1);
}

uint64_t key path getter for IKComponent.Constraint.offset : IKComponent.Constraint@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  v2 = *result;
  if (*(*result + 160))
  {
    if (one-time initialization token for identity != -1)
    {
      v6 = a2;
      result = swift_once();
      a2 = v6;
    }

    v3 = static Transform.identity;
    v4 = xmmword_1EBEB2BB0;
    v5 = xmmword_1EBEB2BC0;
  }

  else
  {
    v3 = v2[7];
    v4 = v2[8];
    v5 = v2[9];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

double IKComponent.Constraint.offset.getter()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 112);
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

void IKComponent.Constraint.offset.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  v3[10].n128_u8[0] = 0;
}

void (*IKComponent.Constraint.offset.modify(__int128 **a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  if (*(v1 + 160))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v5 = static Transform.identity;
    v6 = xmmword_1EBEB2BB0;
    v7 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 128);
    v7 = *(v1 + 144);
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return IKComponent.Constraint.offset.modify;
}

void IKComponent.Constraint.offset.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 112) = *v1;
  *(v2 + 128) = v4;
  *(v2 + 144) = v5;
  *(v2 + 152) = v3;
  *(v2 + 160) = 0;
  free(v1);
}

double IKComponent.Constraint.lookAtTargetPosition.getter()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return *(v0 + 176);
  }

  REIkParametersComponentTaskGetLookAtTarget();
  return result;
}

uint64_t (*IKComponent.Constraint.lookAtTargetPosition.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  if (*(v1 + 192))
  {
    REIkParametersComponentTaskGetLookAtTarget();
  }

  else
  {
    v5 = *(v1 + 176);
  }

  *v4 = v5;
  return IKComponent.Constraint.lookAtTargetPosition.modify;
}

void IKComponent.Constraint.lookAtTargetPosition.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 176) = *v1;
  *(v2 + 184) = v3;
  *(v2 + 192) = 0;
  free(v1);
}

uint64_t *key path getter for IKComponent.Constraint.animationOverrideWeight : IKComponent.Constraint@<X0>(uint64_t *result@<X0>, float *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 204))
  {
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    v5 = v4;
    result = REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  else
  {
    v5 = *(v3 + 196);
    v6 = *(v3 + 200);
  }

  *a2 = v5;
  *(a2 + 1) = v6;
  return result;
}

uint64_t IKComponent.Constraint.animationOverrideWeight.getter()
{
  if (*(v0 + 204))
  {
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    return REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  return result;
}

uint64_t *(*IKComponent.Constraint.animationOverrideWeight.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 204))
  {
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    v4 = v3;
    REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  else
  {
    v4 = *(v1 + 196);
    v5 = *(v1 + 200);
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return IKComponent.Constraint.animationOverrideWeight.modify;
}

uint64_t *IKComponent.Constraint.animationOverrideWeight.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 196) = result[1];
  *(v1 + 204) = 0;
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.setter(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = v2;
    v4 = result;
    v5 = *a2;

    REIkParametersComponentGetSolverNodeName();
    String.init(cString:)();
    lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.hash.getter();

    if (v6 == v5 && (v7 = v3[1], *(v7 + 16)) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = *v3;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!result || v11 < 0 || (v11 & 0x4000000000000000) != 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()();
        v11 = result;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v4;

        *v3 = v11;
        return result;
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t (*IKComponent.SolverCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = *(v2 + 8);
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) == 0))
  {
    v11 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_8:
    *a1 = v11;
    return IKComponent.SolverCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.set(_:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.hash.getter();

  v5 = v2[1];
  if (!*(v5 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v5 + 56);
  v9 = *(v8 + 8 * result);
  v10 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 8 * v9 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v11 = MEMORY[0x1C68F41F0](*(v8 + 8 * result), *v3);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = a1;

  *v3 = v10;
  return v11;
}

uint64_t (*IKComponent.SolverCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKComponent.SolverCollection.subscript.modify;
}

unint64_t protocol witness for Collection.subscript.read in conformance IKComponent.SolverCollection(uint64_t *a1, uint64_t (**a2)())
{
  result = *a2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v5;
    a1[1] = v5;
    return protocol witness for Collection.subscript.read in conformance IKComponent.SolverCollection;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.JointCollection.subscript.setter(uint64_t result, void *a2)
{
  if (result)
  {
    if (*(result + 104) == *a2)
    {
      v3 = v2;
      v4 = v2[1];
      if (*(v4 + 16))
      {
        v5 = result;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * v6);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()();
            v9 = result;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v5;

            *v3 = v9;
            return result;
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t (*IKComponent.JointCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = *(v2 + 8);
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) == 0))
  {
    v11 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_8:
    *a1 = v11;
    return IKComponent.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void (*IKComponent.JointCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  IKComponent.JointCollection.subscript.getter(a2, a3);
  v8[2] = v9;
  return IKComponent.JointCollection.subscript.modify;
}

uint64_t IKComponent.JointCollection.set(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  v8 = *(v7 + 8 * result);
  v9 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x1C68F41F0](*(v7 + 8 * result), *v2);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = a1;

  *v2 = v9;
  return v10;
}

uint64_t (*IKComponent.JointCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.JointCollection.subscript.modify;
}

Swift::Int __swiftcall IKComponent.JointCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void IKComponent.JointCollection.makeIterator()(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = 0;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance IKComponent.JointCollection(uint64_t *a1, uint64_t (**a2)()))()
{
  result = *a2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v5;
    a1[1] = v5;
    return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
  }

  __break(1u);
  return result;
}

void IKComponent.SolverCollection.subscript.getter(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = v2[1];
  if (*(v4 + 16))
  {
    v5 = *v3;
    v6 = a2(*a1);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v6);
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v8, v5);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          return;
        }

        __break(1u);
      }
    }
  }
}

uint64_t IKComponent.ConstraintCollection.subscript.setter(uint64_t result, void *a2)
{
  if (result)
  {
    if (*(result + 208) == *a2)
    {
      v3 = v2;
      v4 = v2[1];
      if (*(v4 + 16))
      {
        v5 = result;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * v6);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()();
            v9 = result;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v5;

            *v3 = v9;
            return result;
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t (*IKComponent.ConstraintCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = *(v2 + 8);
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) == 0))
  {
    v11 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_8:
    *a1 = v11;
    return IKComponent.ConstraintCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  if (a2)
  {
    v7 = a1[2];

    a3(v5, &v7);
  }

  else
  {
    v7 = a1[2];
    return (a3)(v4, &v7);
  }
}

void IKComponent.JointCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.hash.getter();
  if (*(v6 + 16))
  {
    v8 = a3(v7);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v10, v5);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          return;
        }

        __break(1u);
      }
    }
  }
}

uint64_t key path setter for IKComponent.JointCollection.subscript(_:) : IKComponent.JointCollection(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v6 = *a1;
  v8[1] = *(a3 + 8);
  lazy protocol witness table accessor for type String and conformance String();

  v8[0] = StringProtocol.hash.getter();
  return a5(v6, v8);
}

uint64_t IKComponent.JointCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, __n128))
{
  v8[1] = a3;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();

  v8[0] = v6;
  return (a4)(a1, v8);
}

void (*IKComponent.ConstraintCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  IKComponent.ConstraintCollection.subscript.getter(a2, a3);
  v8[2] = v9;
  return IKComponent.ConstraintCollection.subscript.modify;
}

void IKComponent.JointCollection.subscript.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 32);
  *v4 = *(*a1 + 24);
  v4[1] = v6;
  if (a2)
  {
    lazy protocol witness table accessor for type String and conformance String();

    v7 = StringProtocol.hash.getter();
    a3(v5, &v7);
  }

  else
  {
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.hash.getter();
    a3(v5, &v7);
  }

  free(v4);
}

BOOL IKComponent.SolverCollection.isEmpty.getter()
{
  if (*v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t IKComponent.SolverCollection.contains(_:)(void *a1, void (*a2)(void))
{
  if (*(*(v2 + 8) + 16))
  {
    a2(*a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t IKComponent.ConstraintCollection.set(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  v8 = *(v7 + 8 * result);
  v9 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x1C68F41F0](*(v7 + 8 * result), *v2);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = a1;

  *v2 = v9;
  return v10;
}

uint64_t IKComponent.SolverCollection.count.getter()
{
  if (*v0 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

double IKComponent.SolverCollection.subscript.getter(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
LABEL_8:
    JUMPOUT(0x1C68F41F0);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

void key path getter for IKComponent.SolverCollection.subscript(_:) : IKComponent.SolverCollection(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C68F41F0](v6);
    goto LABEL_5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = v7;
    return;
  }

  __break(1u);
}

uint64_t key path setter for IKComponent.SolverCollection.subscript(_:) : IKComponent.SolverCollection(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a3;
  v8 = *a1;
  v9 = *a2;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    result = a5(v9);
    v9 = result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v8;

    *a2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.setter(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a3(v7);
    v7 = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;

    *v3 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*IKComponent.ConstraintCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKComponent.SolverCollection.subscript.modify;
}

void IKComponent.SolverCollection.Iterator.next()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v0[1], v1);
      v4 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        __break(1u);
        return;
      }

      v4 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
LABEL_8:
        v0[1] = v4;
        return;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

void protocol witness for IteratorProtocol.next() in conformance IKComponent.SolverCollection.Iterator(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 == v4)
  {
    v6 = 0;
LABEL_10:
    *a1 = v6;
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1C68F41F0](v1[1], v3);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_9:
      v1[1] = v7;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance IKComponent.SolverCollection@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = __CocoaSet.count.getter();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

void protocol witness for Collection.subscript.getter in conformance IKComponent.SolverCollection(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = v6;
    v6 = __CocoaSet.count.getter();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v8 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v8 = v6;
      a2 = v2;
      v6 = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[2] = v6;
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v4;
  }
}

double protocol witness for Collection.indices.getter in conformance IKComponent.SolverCollection@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = 0;
  if (v2 >> 62)
  {
    v6 = a1;
    v7 = __CocoaSet.count.getter();
    a1 = v6;
    v4 = v7;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1[3] = v4;

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IKComponent.SolverCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

void IKComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = v1[1];
  Asset = REIkParametersComponentGetAsset();
  if (v4)
  {
    if (Asset)
    {
      v6 = *(v4 + 16) == Asset;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (!Asset)
  {
LABEL_12:
    if (v3 >> 62)
    {
      goto LABEL_71;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      if (!i)
      {
        goto LABEL_64;
      }

      v8 = 0;
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      v21 = v3 & 0xC000000000000001;
      v18 = v3;
      v19 = v3 + 32;
      while (1)
      {
        if (v21)
        {
          v3 = MEMORY[0x1C68F41F0](v8, v3);
          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v8 >= *(v20 + 16))
          {
            goto LABEL_70;
          }

          v3 = *(v19 + 8 * v8);

          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_69;
          }
        }

        if ((*(v3 + 40) & 1) == 0)
        {
          REIkParametersComponentSolverSetMaxIterations();
        }

        if ((*(v3 + 48) & 1) == 0)
        {
          REIkParametersComponentSolverSetRetargetingGain();
        }

        if (*(v3 + 49) == 1)
        {
          REIkParametersComponentResetSolver();
        }

        swift_beginAccess();
        v22 = v3;
        v10 = *(v3 + 56);
        v3 = *(v3 + 64);
        v11 = v10 >> 62 ? __CocoaSet.count.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_bridgeObjectRetain_n();

        if (v11)
        {
          break;
        }

LABEL_41:

        swift_bridgeObjectRelease_n();
        swift_beginAccess();
        v14 = *(v22 + 72);
        v3 = *(v22 + 80);
        if (v14 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_bridgeObjectRetain_n();

        if (v15)
        {
          v16 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v3 = MEMORY[0x1C68F41F0](v16, v14);
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }

              v3 = *(v14 + 8 * v16 + 32);

              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_67;
              }
            }

            if (*(v3 + 96))
            {
              if (*(v3 + 192))
              {
                goto LABEL_51;
              }
            }

            else
            {
              REIkParametersComponentTaskSetTargetPosition();
              REIkParametersComponentTaskSetTargetRotation();
              if (*(v3 + 192))
              {
LABEL_51:
                if ((*(v3 + 204) & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_45;
              }
            }

            REIkParametersComponentTaskSetLookAtTarget();
            if ((*(v3 + 204) & 1) == 0)
            {
LABEL_55:
              REIkParametersComponentTaskSetPositionTargetBlendWeight();
              REIkParametersComponentTaskSetRotationTargetBlendWeight();
            }

LABEL_45:

            ++v16;
          }

          while (v17 != v15);
        }

        swift_bridgeObjectRelease_n();
        v3 = v18;
        if (v8 == i)
        {
LABEL_64:

          return;
        }
      }

      v12 = 0;
      if ((v10 & 0xC000000000000001) != 0)
      {
        while (2)
        {
          v3 = MEMORY[0x1C68F41F0](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_65;
          }

LABEL_32:
          if ((*(v3 + 64) & 1) == 0)
          {
            REIkParametersComponentJointSetRetargetingGainPerAxis();
          }

          if ((*(v3 + 96) & 1) == 0)
          {
            REIkParametersComponentJointSetRotationStiffness();
          }

          if (v13 == v11)
          {
            goto LABEL_41;
          }

          ++v12;
          if ((v10 & 0xC000000000000001) != 0)
          {
            continue;
          }

          break;
        }
      }

      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v3 = *(v10 + 8 * v12 + 32);

      v13 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_32;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      ;
    }
  }

LABEL_9:

  MEMORY[0x1EEDFC178](v2);
}

unint64_t lazy protocol witness table accessor for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID()
{
  result = lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID;
  if (!lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Solver.ID, &type metadata for IKComponent.Solver.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID;
  if (!lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Solver.ID, &type metadata for IKComponent.Solver.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions()
{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Constraint.DemandOptions, &type metadata for IKComponent.Constraint.DemandOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Constraint.DemandOptions, &type metadata for IKComponent.Constraint.DemandOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Constraint.DemandOptions, &type metadata for IKComponent.Constraint.DemandOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.Constraint.DemandOptions, &type metadata for IKComponent.Constraint.DemandOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.SolverCollection, &type metadata for IKComponent.SolverCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.SolverCollection.Iterator, &type metadata for IKComponent.SolverCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.JointCollection and conformance IKComponent.JointCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.JointCollection, &type metadata for IKComponent.JointCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.JointCollection.Iterator, &type metadata for IKComponent.JointCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.ConstraintCollection, &type metadata for IKComponent.ConstraintCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKComponent.ConstraintCollection.Iterator, &type metadata for IKComponent.ConstraintCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator);
  }

  return result;
}

uint64_t keypath_get_21Tm@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v8 = *a1;
  v7 = v5;
  result = a3(&v7);
  *a4 = result;
  return result;
}

uint64_t keypath_set_22Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v8 = *a3;

  return a5(v6, &v8);
}

uint64_t keypath_get_31Tm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v40 = a1[2];
  if (!v40)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v13 = a1[4];
  v12 = a1[5];
  v14 = *a3;
  v15 = a4(v13);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    a6(v20, v11 & 1);
    v15 = a4(v13);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v25 = v15;
  a5();
  v15 = v25;
  if (v21)
  {
LABEL_8:
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v26 = *a3;
  *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  *(v26[6] + 8 * v15) = v13;
  *(v26[7] + 8 * v15) = v12;
  v27 = v26[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v26[2] = v28;
  if (v40 != 1)
  {
    a5 = (a1 + 7);
    v11 = 1;
    while (v11 < a1[2])
    {
      v13 = *(a5 - 1);
      v12 = *a5;
      v29 = *a3;
      v30 = a4(v13);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v19 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = v31;
      if (v29[3] < v34)
      {
        a6(v34, 1uLL);
        v30 = a4(v13);
        if ((v21 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v36[6] + 8 * v30) = v13;
      *(v36[7] + 8 * v30) = v12;
      v37 = v36[2];
      v19 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v11;
      v36[2] = v38;
      a5 = (a5 + 16);
      if (v40 == v11)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t __RKEntityLookAtTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityLookAtTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

void *static _Proto_SkeletonResource_v1.__fromCore(_:)(uint64_t a1)
{
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for _Proto_SkeletonResource_v1();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      return v2;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for _Proto_SkeletonResource_v1();
  v2 = swift_allocObject();
  v2[2] = a1;
  Name = RESkeletonAssetGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v2[3] = Name;
  v2[4] = v4;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t _Proto_SkeletonResource_v1.deinit()
{
  if (*(v0 + 16))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  return v0;
}

uint64_t _Proto_SkeletonResource_v1.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  return swift_deallocClassInstance();
}

uint64_t _Proto_SkeletonResource_v1.definition.getter@<X0>(uint64_t *a1@<X8>)
{

  return _Proto_SkeletonDefinition_v1.init(from:)(v2, a1);
}

uint64_t _Proto_SkeletonResource_v1.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *_Proto_SkeletonResource_v1.__allocating_init(with:)(uint64_t *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = a1[2];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v53);
  v3 = v54;
  v4 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v52 = v1;
  if (!v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v53[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v7 = v53[0];
  v8 = (v1 + 40);
  v9 = v1;
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    v53[0] = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);

    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v7 = v53[0];
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    v8 += 10;
    --v5;
  }

  while (v5);
  v15 = *(v9 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v53[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v16 = 0;
  v6 = v53[0];
  v17 = (v9 + 56);
  v18 = v9;
  do
  {
    if (v16 >= *(v18 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (*v17)
    {
      LODWORD(v19) = -1;
    }

    else
    {
      v19 = *(v17 - 1);
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (HIDWORD(v19))
      {
        goto LABEL_47;
      }
    }

    v53[0] = v6;
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      v22 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v18 = v22;
      v6 = v53[0];
    }

    ++v16;
    *(v6 + 16) = v21 + 1;
    *(v6 + 4 * v21 + 32) = v19;
    v17 += 80;
  }

  while (v15 != v16);
  v23 = *(v18 + 16);
  if (v23)
  {
    type metadata accessor for simd_float4x4(0);
    v24 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v25 = v24;
    *(v24 + 16) = v23;
    v26 = 32;
    do
    {
      v27 = (v24 + v26);
      *v27 = *zmmword_1C1887630;
      v27[1] = *&zmmword_1C1887630[16];
      v27[2] = *&zmmword_1C1887630[32];
      v27[3] = *&zmmword_1C1887630[48];
      v26 += 64;
      --v23;
    }

    while (v23);
    v28 = *(v52 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v53[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v29 = v53[0];
      v30 = *(v53[0] + 16);
      v31 = 6 * v30;
      v32 = (v52 + 96);
      do
      {
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v35 = *v32;
        v53[0] = v29;
        v36 = v29[3];
        v37 = v30 + 1;
        if (v30 >= v36 >> 1)
        {
          v49 = v34;
          v50 = v33;
          v48 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v30 + 1, 1);
          v35 = v48;
          v34 = v49;
          v33 = v50;
          v29 = v53[0];
        }

        v29[2] = v37;
        v38 = &v29[v31];
        v38[2] = v33;
        v38[3] = v34;
        v38[4] = v35;
        v31 += 6;
        v32 += 5;
        v30 = v37;
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
  }

LABEL_28:
  RESkeletonDefinitionCreate();
  String.utf8CString.getter();
  RESkeletonDefinitionSetName();

  v39 = *(v7 + 16);
  if (HIDWORD(v39))
  {
    goto LABEL_48;
  }

  v51 = v25;
  RESkeletonDefinitionSetJointCount();
  if (v39)
  {
    v40 = 0;
    v41 = v7 + 40;
    do
    {
      String.utf8CString.getter();
      RESkeletonDefinitionSetJointName();

      v41 += 16;
      ++v40;
    }

    while (v39 != v40);
  }

  if (HIDWORD(*(v6 + 16)))
  {
    goto LABEL_49;
  }

  RESkeletonDefinitionSetParentIndices();
  if (HIDWORD(*(v51 + 16)))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  RESkeletonDefinitionSetInverseBindPoses();
  if (HIDWORD(v29[2]))
  {
    goto LABEL_51;
  }

  RESkeletonDefinitionSetLocalRestPoses();
  v53[0] = 0;
  result = RESkeletonDefinitionValidate();
  if (result)
  {

    SkeletonAsset = RESkeletonDefinitionCreateSkeletonAsset();
    RERelease();

    if (SkeletonAsset)
    {
      type metadata accessor for _Proto_SkeletonResource_v1();
      v29 = swift_allocObject();
      v29[2] = SkeletonAsset;
      Name = RESkeletonAssetGetName();
      if (Name)
      {
        Name = String.init(cString:)();
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      v29[3] = Name;
      v29[4] = v45;
      RERetain();
      REAssetSetSwiftObject();
    }

    else
    {
      lazy protocol witness table accessor for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError();
      swift_allocError();
      swift_willThrow();
    }

    return v29;
  }

  else
  {
    v46 = v53[0];
    if (v53[0])
    {

      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v47 = v46;
      swift_willThrow();
      RERelease();

      return v29;
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError()
{
  result = lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError;
  if (!lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_SkeletonResource_v1.SkeletonResourceGenError, &type metadata for _Proto_SkeletonResource_v1.SkeletonResourceGenError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError;
  if (!lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_SkeletonResource_v1.SkeletonResourceGenError, &type metadata for _Proto_SkeletonResource_v1.SkeletonResourceGenError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError);
  }

  return result;
}

void Scene.AnchorCollection.appendNinja(_:)(void *a1)
{
  v3 = *v1;
  Entity.isNinja.getter();
  if (v4)
  {
    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable || ((v6 = SceneNullable, v7 = RESceneGetSwiftObject(), type metadata accessor for Scene(), !v7) ? (swift_allocObject(), v8 = Scene.init(coreScene:)(v6)) : (v8 = swift_dynamicCastClassUnconditional()), v9 = *(v8 + 16), , , v10 = *(v3 + 16), , v9 != v10))
    {
      Scene.AnchorCollection.doAppend(_:)(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void Scene.AnchorCollection.doAppend(_:)(void *a1)
{
  v2 = *v1;
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable || ((v4 = SceneNullable, v5 = RESceneGetSwiftObject(), type metadata accessor for Scene(), !v5) ? (swift_allocObject(), v6 = Scene.init(coreScene:)(v4)) : (v6 = swift_dynamicCastClassUnconditional()), v7 = *(v6 + 16), , , v8 = *(v2 + 16), , v7 != v8))
  {
    RESceneAddEntity();
    if (swift_conformsToProtocol2())
    {
      swift_beginAccess();
      v9 = static RealityFusionSession.sharedSession;
      if (static RealityFusionSession.sharedSession)
      {
        swift_beginAccess();
        if (v9[2])
        {

          v10 = RFServiceManagerGetAnchorManagementService();
          if (v10)
          {
            v11 = v10;
            RFAnchorManagementUpdateAnchoringInScene();
          }
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

uint64_t Scene.AnchorCollection.endIndex.getter()
{
  EntitiesArray = RESceneGetEntitiesArray();
  if (v1)
  {
    v2 = EntitiesArray;
    v3 = v1;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v1, 0);
    memcpy(v4 + 4, v2, 8 * v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v34 = v4[2];
  if (!v34)
  {
    v32 = 0;
    v5 = 0;
LABEL_43:

    result = v32 - v5;
    if (!__OFSUB__(v32, v5))
    {
      return result;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  type metadata accessor for SceneManager();
  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
LABEL_50:
    swift_once();
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v6 >= v4[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v8 & 1) == 0))
    {
      swift_endAccess();
      v9 = static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = static SceneManager.customComponentTypeObjectIdToHandles;
      v35 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v14 = *(v11 + 16);
      v15 = (v13 & 1) == 0;
      v7 = __OFADD__(v14, v15);
      v16 = v14 + v15;
      if (v7)
      {
        goto LABEL_46;
      }

      v17 = v13;
      if (*(v11 + 24) >= v16)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = v12;
          specialized _NativeDictionary.copy()();
          v12 = v20;
          v19 = v35;
          if (v17)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v17 & 1) != (v18 & 1))
        {
          goto LABEL_53;
        }
      }

      v19 = v35;
      if (v17)
      {
LABEL_18:
        *(v19[7] + 8 * v12) = v9;
LABEL_22:
        static SceneManager.customComponentTypeObjectIdToHandles = v19;
        goto LABEL_23;
      }

LABEL_20:
      v19[(v12 >> 6) + 8] |= 1 << v12;
      *(v19[6] + 8 * v12) = &type metadata for __EntityInfoComponent;
      *(v19[7] + 8 * v12) = v9;
      v21 = v19[2];
      v7 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v7)
      {
        goto LABEL_48;
      }

      v19[2] = v22;
      goto LABEL_22;
    }

LABEL_23:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      break;
    }

LABEL_7:
    v7 = __OFADD__(v5++, 1);
    if (v7)
    {
      goto LABEL_47;
    }

LABEL_8:
    if (v34 == ++v6)
    {
      v32 = v4[2];
      goto LABEL_43;
    }
  }

  Object = RECustomComponentGetObject();
  if (Object)
  {
    v24 = *Object;
    if (*(Object + 8))
    {
      v25 = 1;
    }

    else
    {
      v25 = v24 == 0;
    }

    if (v25)
    {
    }

    else
    {
      v26 = *v24;
      v27 = String.init(utf8String:)();
      if (v28)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v24 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v26 == 42, v29, v30);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v24;
    }

    if (!v24)
    {
      goto LABEL_52;
    }

    v31 = *v24;

    if (v31 != 42)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall Scene.AnchorCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *Scene.AnchorCollection.subscript.getter(uint64_t a1)
{
  EntitiesArray = RESceneGetEntitiesArray();
  if (v3)
  {
    v4 = EntitiesArray;
    v5 = v3;
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v3, 0);
    memcpy(v6 + 4, v4, 8 * v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v8 = 0;
  v41 = v6[2];
  while (2)
  {
    v40 = v7;
    if (v8 == v41)
    {
      while (1)
      {
LABEL_62:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_63:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_64:
      }
    }

    while (1)
    {
      if (v8 >= v6[2])
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v1 = v6[v8 + 4];
      type metadata accessor for SceneManager();
      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if (v9)
        {
          goto LABEL_23;
        }
      }

      swift_endAccess();
      v10 = static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = static SceneManager.customComponentTypeObjectIdToHandles;
      v42 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v15 = *(v12 + 16);
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_51;
      }

      v18 = v13;
      if (*(v12 + 24) >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v42;
          if ((v13 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v21 = v42;
          if ((v18 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_63;
        }

        v14 = v19;
        v21 = v42;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v21[(v14 >> 6) + 8] |= 1 << v14;
          *(v21[6] + 8 * v14) = &type metadata for __EntityInfoComponent;
          *(v21[7] + 8 * v14) = v10;
          v22 = v21[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            __break(1u);
            goto LABEL_58;
          }

          v21[2] = v24;
          goto LABEL_22;
        }
      }

      *(v21[7] + 8 * v14) = v10;
LABEL_22:
      static SceneManager.customComponentTypeObjectIdToHandles = v21;
LABEL_23:
      swift_endAccess();
      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        if (!Object)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v26 = *Object;
        if (*(Object + 8))
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 == 0;
        }

        if (v27)
        {
        }

        else
        {
          v28 = *v26;
          v29 = String.init(utf8String:)();
          if (v30)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0xE000000000000000;
          }

          v26 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v28 == 42, v31, v32);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v26;
        }

        if (!v26)
        {
          goto LABEL_60;
        }

        v33 = *v26;

        if (v33 != 42)
        {
          break;
        }
      }

      if (v41 == ++v8)
      {
        goto LABEL_62;
      }
    }

    if (v40 != a1)
    {
      ++v8;
      v7 = v40 + 1;
      if (!__OFADD__(v40, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    v34 = swift_dynamicCastClassUnconditional();
    goto LABEL_49;
  }

LABEL_52:
  if (REEntityIsBeingDestroyed())
  {
    goto LABEL_61;
  }

  v36 = static Entity.entityInfoType(_:)(v1);
  if (v36)
  {
    v35 = (*(v36 + 232))();
    v37 = *(v35 + 16);

    MEMORY[0x1C68F9740](v37, 0);
    *(v35 + 16) = v1;
    MEMORY[0x1C68F9740](v1, v35);

    goto LABEL_55;
  }

LABEL_58:
  v34 = makeEntity(for:)(v1);
LABEL_49:
  v35 = v34;
LABEL_55:
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_64;
  }

  return v35;
}

uint64_t Scene.AnchorCollection.subscript.setter(void *a1, uint64_t a2, void *a3)
{
  v51 = *v4;
  EntitiesArray = RESceneGetEntitiesArray();
  v52 = a1;
  if (v8)
  {
    v3 = EntitiesArray;
    v9 = v8;
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v8, 0);
    memcpy(v10 + 4, v3, 8 * v9);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v54 = v10[2];
  if (!v54)
  {
    goto LABEL_83;
  }

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
LABEL_79:
    swift_once();
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (v11 >= v10[2])
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v13 = v10[v11 + 4];
    swift_beginAccess();
    v14 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v16 & 1) == 0))
    {
      swift_endAccess();
      v3 = &type metadata for __EntityInfoComponent;
      v5 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = static SceneManager.customComponentTypeObjectIdToHandles;
      v55 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_70;
      }

      v3 = v19;
      if (*(v18 + 24) < v23)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v3 & 1) != (v25 & 1))
        {
          goto LABEL_85;
        }

        v20 = v24;
        v26 = v55;
        if ((v3 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        *(v26[7] + 8 * v20) = v5;
LABEL_23:
        static SceneManager.customComponentTypeObjectIdToHandles = v26;
        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v55;
        if (v19)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v26 = v55;
        if (v3)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v26[(v20 >> 6) + 8] |= 1 << v20;
      *(v26[6] + 8 * v20) = &type metadata for __EntityInfoComponent;
      *(v26[7] + 8 * v20) = v5;
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_79;
      }

      v26[2] = v29;
      goto LABEL_23;
    }

    v5 = *(*(v14 + 56) + 8 * v15);
LABEL_24:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_81;
      }

      v31 = *Object;
      if (*(Object + 8))
      {
        v32 = 1;
      }

      else
      {
        v32 = v31 == 0;
      }

      if (v32)
      {
      }

      else
      {
        v33 = *v31;
        v34 = String.init(utf8String:)();
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v31 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v33 == 42, v36, v37);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v31;
      }

      if (!v31)
      {
        goto LABEL_82;
      }

      v3 = *v31;

      if (v3 != 42)
      {
        if (v12 == a3)
        {
          goto LABEL_45;
        }

        v28 = __OFADD__(v12, 1);
        v12 = (v12 + 1);
        if (v28)
        {
          break;
        }
      }
    }

    if (v54 == ++v11)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_45:
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    v38 = swift_dynamicCastClassUnconditional();
    v39 = v52;
    goto LABEL_51;
  }

  v39 = v52;
  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v13);
    if (v40)
    {
      v38 = (*(v40 + 232))();
      v41 = *(v38 + 16);

      MEMORY[0x1C68F9740](v41, 0);
      *(v38 + 16) = v13;
      MEMORY[0x1C68F9740](v13, v38);
    }

    else
    {
      v38 = makeEntity(for:)(v13);
    }

LABEL_51:
    if (*(v38 + 16) == v39[2])
    {
    }

    else
    {
      v42 = HasHierarchy.parent.getter();
      v43 = *(*v39 + 120);

      v45 = v43(v44);

      if (v42)
      {

        swift_retain_n();

        v46 = specialized HasHierarchy.parent.getter();
        if (v46)
        {
          v47 = *(v46 + 16);

          v48 = *(v42 + 16);

          if (v47 == v48)
          {
            REEntitySetParent();
            static Entity.updateInteractions(root:)(v39);
          }
        }

        else
        {
        }

        RESceneSetEntityAtIndex();
      }

      if (v45)
      {
        if (*(v45 + 16) != *(v51 + 16))
        {

          RESceneRemoveEntity();

          goto LABEL_75;
        }

        v5 = 0;
        while (1)
        {
          v3 = Scene.AnchorCollection.endIndex.getter();
          if (v5 == v3)
          {
            break;
          }

          v49 = Scene.AnchorCollection.subscript.getter(v5)[2];

          if (v49 == v39[2])
          {
            break;
          }

          v28 = __OFADD__(v5++, 1);
          if (v28)
          {
            __break(1u);
            goto LABEL_69;
          }
        }

LABEL_71:
        RESceneRemoveEntity();
        if (RELinkedOnOrAfterFall2024OSVersions())
        {

          RESceneGetEntityIndexInParent();
        }

        else
        {
          if (v5 == v3)
          {
            goto LABEL_84;
          }
        }

LABEL_75:
        RESceneSetEntityAtIndex();
      }

      else
      {

        RESceneSetEntityAtIndex();
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*Scene.AnchorCollection.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = Scene.AnchorCollection.subscript.getter(a2);
  a1[1] = v4;
  return Scene.AnchorCollection.subscript.modify;
}

uint64_t Scene.AnchorCollection.subscript.modify(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    return Scene.AnchorCollection.subscript.setter(*a1, a2, v2);
  }

  Scene.AnchorCollection.subscript.setter(v3, v4, v2);
}

Swift::Void __swiftcall Scene.AnchorCollection.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v2 = *(contentsOf._rawValue + 2);
  if (v2)
  {
    v3 = *v1;
    v4 = contentsOf._rawValue + 32;
    do
    {

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v6 = SceneNullable;
      v7 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v7)
      {
        v8 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v8 = swift_allocObject();
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v8 + 104) = 0;
        *(v8 + 88) = 0u;
        *(v8 + 72) = 0u;
        swift_weakInit();
        *(v8 + 232) = 0;
        *(v8 + 216) = 0u;
        *(v8 + 200) = 0u;
        *(v8 + 184) = 0u;
        *(v8 + 168) = 0u;
        *(v8 + 152) = 0u;
        *(v8 + 136) = 0u;
        *(v8 + 120) = 0u;
        RERetain();
        *(v8 + 16) = v6;
        RESceneSetSwiftObject();
      }

      v9 = *(v8 + 16);

      v10 = *(v3 + 16);

      if (v9 != v10)
      {
LABEL_9:
        RESceneAddEntity();
        swift_beginAccess();
        v11 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v11[2])
          {

            v12 = RFServiceManagerGetAnchorManagementService();
            if (v12)
            {
              v13 = v12;
              RFAnchorManagementUpdateAnchoringInScene();
            }
          }
        }

        v14 = REEntityGetSceneNullable();
        if (v14)
        {
          v15 = v14;
          v16 = RESceneGetSwiftObject();
          type metadata accessor for Scene();
          if (v16)
          {
            swift_dynamicCastClassUnconditional();
          }

          else
          {
            v17 = swift_allocObject();
            *(v17 + 24) = 0u;
            *(v17 + 40) = 0u;
            *(v17 + 56) = 0;
            swift_unknownObjectWeakInit();
            *(v17 + 104) = 0;
            *(v17 + 88) = 0u;
            *(v17 + 72) = 0u;
            swift_weakInit();
            *(v17 + 232) = 0;
            *(v17 + 216) = 0u;
            *(v17 + 200) = 0u;
            *(v17 + 184) = 0u;
            *(v17 + 168) = 0u;
            *(v17 + 152) = 0u;
            *(v17 + 136) = 0u;
            *(v17 + 120) = 0u;
            RERetain();
            *(v17 + 16) = v15;
            RESceneSetSwiftObject();
          }

          swift_beginAccess();
          if (static __RKScenePhysics.registration)
          {
            RESceneGetComponentsOfCustomType();
            if (v18)
            {
              Object = RECustomComponentGetObject();
              if (Object)
              {
                v23 = *Object;
                if (RESceneGetECSManagerNullable())
                {
                  ServiceLocator = REECSManagerGetServiceLocator();
                  if (MEMORY[0x1C68FE290](ServiceLocator))
                  {
                    REPhysicsSimulationServiceGetDefaultGravity();
                    if (*v21.i32 != *v23.i32 || (v22 = vceq_f32(vext_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL), 4uLL), *&vextq_s8(v23, v23, 4uLL)), (v22.i8[0] & 1) == 0) || (v22.i8[4] & 1) == 0)
                    {
                      REPhysicsSimulationServiceSetDefaultGravity();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void closure #1 in Scene.AnchorCollection.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable || ((v4 = SceneNullable, v5 = RESceneGetSwiftObject(), type metadata accessor for Scene(), !v5) ? (swift_allocObject(), v6 = Scene.init(coreScene:)(v4)) : (v6 = swift_dynamicCastClassUnconditional()), v7 = *(v6 + 16), , , v8 = *(a2 + 16), , v7 != v8))
  {
    RESceneAddEntity();
    swift_beginAccess();
    v9 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v9[2])
      {

        v10 = RFServiceManagerGetAnchorManagementService();
        if (v10)
        {
          v11 = v10;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

Swift::Void __swiftcall Scene.AnchorCollection.remove(at:)(Swift::Int at)
{
  Scene.AnchorCollection.subscript.getter(at);
  RESceneRemoveEntity();
}

Swift::Void __swiftcall Scene.AnchorCollection.removeAll(keepCapacity:)(Swift::Bool keepCapacity)
{
  while (1)
  {
    v1 = Scene.AnchorCollection.endIndex.getter();
    if (v1 < 0)
    {
      break;
    }

    if (!v1)
    {
      return;
    }

    Scene.AnchorCollection.subscript.getter(0);
    RESceneRemoveEntity();
  }

  __break(1u);
}

Swift::Void __swiftcall Scene.AnchorCollection.removeAll()()
{
  while (1)
  {
    v0 = Scene.AnchorCollection.endIndex.getter();
    if (v0 < 0)
    {
      break;
    }

    if (!v0)
    {
      return;
    }

    Scene.AnchorCollection.subscript.getter(0);
    RESceneRemoveEntity();
  }

  __break(1u);
}

Swift::Void __swiftcall Scene.AnchorCollection.replaceAll(_:)(Swift::OpaquePointer a1)
{
  v3 = *v1;
  while (1)
  {
    v4 = Scene.AnchorCollection.endIndex.getter();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    if (!v4)
    {
      break;
    }

    Scene.AnchorCollection.subscript.getter(0);
    RESceneRemoveEntity();
  }

  v5 = *(a1._rawValue + 2);
  if (v5)
  {
    v6 = a1._rawValue + 32;
    do
    {

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_13;
      }

      v8 = SceneNullable;
      v9 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v9)
      {
        v10 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v10 = swift_allocObject();
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v10 + 104) = 0;
        *(v10 + 88) = 0u;
        *(v10 + 72) = 0u;
        swift_weakInit();
        *(v10 + 232) = 0;
        *(v10 + 216) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 120) = 0u;
        RERetain();
        *(v10 + 16) = v8;
        RESceneSetSwiftObject();
      }

      v11 = *(v10 + 16);

      v12 = *(v3 + 16);

      if (v11 != v12)
      {
LABEL_13:
        RESceneAddEntity();
        swift_beginAccess();
        v13 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v13[2])
          {

            v14 = RFServiceManagerGetAnchorManagementService();
            if (v14)
            {
              v15 = v14;
              RFAnchorManagementUpdateAnchoringInScene();
            }
          }
        }

        v16 = REEntityGetSceneNullable();
        if (v16)
        {
          v17 = v16;
          v18 = RESceneGetSwiftObject();
          type metadata accessor for Scene();
          if (v18)
          {
            swift_dynamicCastClassUnconditional();
          }

          else
          {
            v19 = swift_allocObject();
            *(v19 + 24) = 0u;
            *(v19 + 40) = 0u;
            *(v19 + 56) = 0;
            swift_unknownObjectWeakInit();
            *(v19 + 104) = 0;
            *(v19 + 88) = 0u;
            *(v19 + 72) = 0u;
            swift_weakInit();
            *(v19 + 232) = 0;
            *(v19 + 216) = 0u;
            *(v19 + 200) = 0u;
            *(v19 + 184) = 0u;
            *(v19 + 168) = 0u;
            *(v19 + 152) = 0u;
            *(v19 + 136) = 0u;
            *(v19 + 120) = 0u;
            RERetain();
            *(v19 + 16) = v17;
            RESceneSetSwiftObject();
          }

          swift_beginAccess();
          if (static __RKScenePhysics.registration)
          {
            RESceneGetComponentsOfCustomType();
            if (v20)
            {
              Object = RECustomComponentGetObject();
              if (Object)
              {
                v25 = *Object;
                if (RESceneGetECSManagerNullable())
                {
                  ServiceLocator = REECSManagerGetServiceLocator();
                  if (MEMORY[0x1C68FE290](ServiceLocator))
                  {
                    REPhysicsSimulationServiceGetDefaultGravity();
                    if (*v23.i32 != *v25.i32 || (v24 = vceq_f32(vext_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL), 4uLL), *&vextq_s8(v25, v25, 4uLL)), (v24.i8[0] & 1) == 0) || (v24.i8[4] & 1) == 0)
                    {
                      REPhysicsSimulationServiceSetDefaultGravity();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v6 += 16;
      --v5;
    }

    while (v5);
  }
}

uint64_t Scene.AnchorCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v33.i8[-v11];
  v13 = *v3;
  while (1)
  {
    v34[0] = v13;
    result = Scene.AnchorCollection.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (!result)
    {
      break;
    }

    v34[0] = v13;
    Scene.AnchorCollection.subscript.getter(0);
    RESceneRemoveEntity();
  }

  (*(v6 + 16))(v8, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  while (v35)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v16 = SceneNullable;
      v17 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v17)
      {
        v18 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v18 = swift_allocObject();
        *(v18 + 24) = 0u;
        *(v18 + 40) = 0u;
        *(v18 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v18 + 104) = 0;
        *(v18 + 88) = 0u;
        *(v18 + 72) = 0u;
        swift_weakInit();
        *(v18 + 232) = 0;
        *(v18 + 216) = 0u;
        *(v18 + 200) = 0u;
        *(v18 + 184) = 0u;
        *(v18 + 168) = 0u;
        *(v18 + 152) = 0u;
        *(v18 + 136) = 0u;
        *(v18 + 120) = 0u;
        RERetain();
        *(v18 + 16) = v16;
        RESceneSetSwiftObject();
      }

      v19 = *(v18 + 16);

      v20 = *(v13 + 16);

      if (v19 == v20)
      {
        goto LABEL_7;
      }
    }

    RESceneAddEntity();
    swift_beginAccess();
    v21 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v21[2])
      {

        v22 = RFServiceManagerGetAnchorManagementService();
        if (v22)
        {
          v23 = v22;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    v24 = REEntityGetSceneNullable();
    if (!v24)
    {
LABEL_7:
    }

    else
    {
      v25 = v24;
      v26 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v26)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        v27 = swift_allocObject();
        *(v27 + 24) = 0u;
        *(v27 + 40) = 0u;
        *(v27 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v27 + 104) = 0;
        *(v27 + 88) = 0u;
        *(v27 + 72) = 0u;
        swift_weakInit();
        *(v27 + 232) = 0;
        *(v27 + 216) = 0u;
        *(v27 + 200) = 0u;
        *(v27 + 184) = 0u;
        *(v27 + 168) = 0u;
        *(v27 + 152) = 0u;
        *(v27 + 136) = 0u;
        *(v27 + 120) = 0u;
        RERetain();
        *(v27 + 16) = v25;
        RESceneSetSwiftObject();
      }

      swift_beginAccess();
      if (static __RKScenePhysics.registration)
      {
        RESceneGetComponentsOfCustomType();
        if (v28)
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v33 = *Object;
            if (RESceneGetECSManagerNullable())
            {
              ServiceLocator = REECSManagerGetServiceLocator();
              if (MEMORY[0x1C68FE290](ServiceLocator))
              {
                REPhysicsSimulationServiceGetDefaultGravity();
                if (*v31.i32 != *v33.i32 || (v32 = vceq_f32(vext_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL), 4uLL), *&vextq_s8(v33, v33, 4uLL)), (v32.i8[0] & 1) == 0) || (v32.i8[4] & 1) == 0)
                {
                  REPhysicsSimulationServiceSetDefaultGravity();
                }
              }
            }
          }
        }
      }
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

void Scene.AnchorCollection.removeNinja(_:)(uint64_t a1)
{
  v2 = *v1;
  if (specialized HasHierarchy.parent.getter())
  {
    goto LABEL_13;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = SceneNullable;
  v5 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v5)
  {
    v6 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v6 = Scene.init(coreScene:)(v4);
  }

  v7 = *(v6 + 16);

  v8 = *(v2 + 16);

  if (v7 != v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  Entity.isNinja.getter();
  if ((v9 & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  RESceneRemoveEntity();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Scene.AnchorCollection@<X0>(uint64_t *a1@<X8>)
{
  result = Scene.AnchorCollection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Scene.AnchorCollection(void *a1, uint64_t *a2))()
{
  v3 = Scene.AnchorCollection.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v3;
  *a1 = v3;
  return protocol witness for Collection.subscript.read in conformance Scene.AnchorCollection;
}

void protocol witness for Collection.subscript.getter in conformance Scene.AnchorCollection(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = Scene.AnchorCollection.endIndex.getter();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

uint64_t protocol witness for Collection.indices.getter in conformance Scene.AnchorCollection@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  result = Scene.AnchorCollection.endIndex.getter();
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Scene.AnchorCollection()
{
  result = Scene.AnchorCollection.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Scene.AnchorCollection(__n128 a1)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v1, a1);

  return v2;
}

uint64_t Scene.AnchorCollection.description.getter(__n128 a1)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v1, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_pMd, &_s10RealityKit12HasAnchoring_pMR);
  v4 = MEMORY[0x1C68F36A0](v2, v3);

  return v4;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Scene.AnchorCollection(__n128 a1)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v1, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_pMd, &_s10RealityKit12HasAnchoring_pMR);
  v4 = MEMORY[0x1C68F36A0](v2, v3);

  return v4;
}

void specialized Scene.AnchorCollection.append(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable || ((v4 = SceneNullable, v5 = RESceneGetSwiftObject(), type metadata accessor for Scene(), !v5) ? (swift_allocObject(), v6 = Scene.init(coreScene:)(v4)) : (v6 = swift_dynamicCastClassUnconditional()), v7 = *(v6 + 16), , , v8 = *(v2 + 16), , v7 != v8))
  {
    RESceneAddEntity();
    swift_beginAccess();
    v9 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v9[2])
      {

        v10 = RFServiceManagerGetAnchorManagementService();
        if (v10)
        {
          v11 = v10;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

unint64_t lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection()
{
  result = lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection;
  if (!lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Scene.AnchorCollection, &type metadata for Scene.AnchorCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection);
  }

  return result;
}

double GroundingShadowComponent.init(castsShadow:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 40) = 1065353216;
  *a2 = a1;
  *(a2 + 1) = a1;
  return result;
}

uint64_t static GroundingShadowComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  CastsShadow = REGroundingShadowComponentGetCastsShadow();
  ReceivesShadow = REGroundingShadowComponentGetReceivesShadow();
  REGroundingShadowComponentGetShadowIntensityOnPhysicalObjects();
  v6 = v5;
  FadeBehaviorNearPhysicalObjects = REGroundingShadowComponentGetFadeBehaviorNearPhysicalObjects();
  v8 = FadeBehaviorNearPhysicalObjects == 1;
  if (FadeBehaviorNearPhysicalObjects == 2)
  {
    v8 = 2;
  }

  *(a2 + 44) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = CastsShadow;
  *(a2 + 1) = ReceivesShadow;
  *(a2 + 40) = v6;
  v11 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v10[0] = v8;
  outlined assign with take of Any?(v10, a2 + 8);
  result = REGroundingShadowComponentGetModeFlags();
  *(a2 + 44) = result;
  return result;
}

uint64_t GroundingShadowComponent.__toCore(_:)(void *a1)
{
  REGroundingShadowComponentSetCastsShadow();
  REGroundingShadowComponentSetReceivesShadow();
  REGroundingShadowComponentSetShadowIntensityOnPhysicalObjects();
  outlined init with copy of Any?(v1 + 8, &v6);
  v2 = v7;
  outlined destroy of Any?(&v6);
  if (!v2)
  {
    goto LABEL_4;
  }

  result = outlined init with copy of Any?(v1 + 8, &v4);
  if (v5)
  {
    outlined init with take of Any(&v4, &v6);
    swift_dynamicCast();
LABEL_4:
    REGroundingShadowComponentSetFadeBehaviorNearPhysicalObjects();
    REGroundingShadowComponentSetModeFlags();
    return RENetworkMarkComponentDirty();
  }

  __break(1u);
  return result;
}

uint64_t static GroundingShadowComponent.FadeBehaviorNearPhysicalObjects.__fromCore(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t GroundingShadowComponent.init(castsShadow:receivesShadow:shadowIntensityOnPhysicalObjects:fadeBehaviorNearPhysicalObjects:)@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v5 = *a3;
  *(a4 + 44) = 0;
  *(a4 + 24) = 0u;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 40) = a5;
  *(a4 + 8) = 0u;
  v8 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v7[0] = v5;
  return outlined assign with take of Any?(v7, a4 + 8);
}

uint64_t GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.getter@<X0>(_BYTE *a1@<X8>)
{
  outlined init with copy of Any?(v1 + 8, &v7);
  v3 = v8;
  result = outlined destroy of Any?(&v7);
  if (v3)
  {
    result = outlined init with copy of Any?(v1 + 8, &v5);
    if (v6)
    {
      outlined init with take of Any(&v5, &v7);
      return swift_dynamicCast();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *(*GroundingShadowComponent.receivesShadow.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.antialiasing.modify;
}

double GroundingShadowComponent.init(castsShadow:receivesShadow:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 40) = 1065353216;
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

Swift::Int GroundingShadowComponent.FadeBehaviorNearPhysicalObjects.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.setter(char *a1)
{
  v2 = *a1;
  v5 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  outlined init with copy of Any?(v1 + 8, v3);
  v5 = *(v4 + 24);
  outlined destroy of Any?(v4);
  if (!v5)
  {
    *(v4 + 72) = 0;
    return GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify;
  }

  result = outlined init with copy of Any?(v1 + 8, v4 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    swift_dynamicCast();
    return GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify;
  }

  __break(1u);
  return result;
}

void GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  v1[3] = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  *v1 = v2;
  outlined assign with take of Any?(v1, v3 + 8);

  free(v1);
}

uint64_t GroundingShadowComponent.init(castsShadow:receivesShadow:fadeBehaviorNearPhysicalObjects:)@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 8) = 0u;
  v7 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v6[0] = v4;
  return outlined assign with take of Any?(v6, a4 + 8);
}

float (*GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify;
}

float GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 40) = result;
  return result;
}

uint64_t one-time initialization function for all()
{
  if (one-time initialization token for floor != -1)
  {
    result = swift_once();
  }

  v0 = static ShadowScopeModeFlags.floor;
  if (one-time initialization token for wall != -1)
  {
    result = swift_once();
  }

  v1 = static ShadowScopeModeFlags.wall;
  if ((static ShadowScopeModeFlags.wall & ~v0) == 0)
  {
    v1 = 0;
  }

  static ShadowScopeModeFlags.all = v1 | v0;
  return result;
}

void *static ShadowScopeModeFlags.floor.getter@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t static ShadowScopeModeFlags.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  if (result != 1701736302 || a2 != 0xE400000000000000)
  {
    v6 = result;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      result = 0x726F6F6C66;
      if (v6 == 0x726F6F6C66 && a2 == 0xE500000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for floor != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.floor;
      }

      else if (v6 == 1819042167 && a2 == 0xE400000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for wall != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.wall;
      }

      else
      {
        if (v6 != 7105633 || a2 != 0xE300000000000000)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (one-time initialization token for all != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.all;
      }

      v7 = *v8;
      goto LABEL_14;
    }
  }

LABEL_6:
  v7 = 0;
LABEL_14:
  *a3 = v7;
  return result;
}

uint64_t (*GroundingShadowComponent.shadowScopeModeFlags.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 44);
  return GroundingShadowComponent.shadowScopeModeFlags.modify;
}

uint64_t GroundingShadowComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-v6];
  outlined init with copy of GroundingShadowComponent(v0, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1897FD0;
  *(v8 + 32) = 0x6168537374736163;
  *(v8 + 40) = 0xEB00000000776F64;
  v9 = MEMORY[0x1E69E6370];
  *(v8 + 48) = *v0;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "receivesShadow");
  *(v8 + 95) = -18;
  *(v8 + 96) = v0[1];
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD00000000000001FLL;
  *(v8 + 136) = 0x80000001C18E96A0;
  *(v8 + 168) = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.getter((v8 + 144));
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects()
{
  result = lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  if (!lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects, &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags()
{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShadowScopeModeFlags, &type metadata for ShadowScopeModeFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShadowScopeModeFlags, &type metadata for ShadowScopeModeFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShadowScopeModeFlags, &type metadata for ShadowScopeModeFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShadowScopeModeFlags, &type metadata for ShadowScopeModeFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroundingShadowComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GroundingShadowComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void *Entity.prepareAudio(_:)(uint64_t a1)
{
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v3 = specialized AudioPlaybackController.init(resource:entity:)(a1, v1);

  return v3;
}

void *Entity.playAudio(_:)(uint64_t a1)
{
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v3 = specialized AudioPlaybackController.init(resource:entity:)(a1, v1);

  AudioPlaybackController.play()();
  return v3;
}

Swift::Void __swiftcall Entity.stopAllAudio()()
{
  REAudioPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    MEMORY[0x1C68F7350]();

    RENetworkMarkComponentDirty();
  }
}

void *Entity.playAudio(_:parentTimebase:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AudioFileResource();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v6 = specialized AudioPlaybackController.init(resource:entity:)(v5, v3);

  v7 = a2;
  REAudioPlayerComponentSetSourceClockOrTimebase();
  RENetworkMarkComponentDirty();

  AudioPlaybackController.play()();
  return v6;
}