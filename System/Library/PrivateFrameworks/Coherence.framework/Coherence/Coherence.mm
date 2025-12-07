uint64_t sub_1ADDCB8D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Timestamp(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDCB990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for Replica(uint64_t a1)
{
  result = qword_1ED96B688;
  if (!qword_1ED96B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADDCBAE0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = type metadata accessor for CROrderedSetElement(255, v1, v2, v3);
  result = type metadata accessor for CRSequence(319, v4, &off_1F23C8BA0, v5);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for CRSet(319, v1, v2, v3);
    if (v8 <= 0x3F)
    {
      type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v1, v2, v3);
      result = sub_1AE23D7CC();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDCBBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCBC18(uint64_t a1)
{
  result = type metadata accessor for Replica(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCBC8C(uint64_t a1)
{
  result = sub_1AE23BFEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCBD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCBD3C(uint64_t *a1)
{
  type metadata accessor for CROrderedSetElement(255, a1[2], a1[3], a1[4]);
  result = sub_1AE23D11C();
  if (v2 <= 0x3F)
  {
    result = sub_1AE23C12C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDCBDD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCBE24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void CROrderedSet.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for CROrderedSet(0, a1, a2, a3) + 48);
  v9 = type metadata accessor for CROrderedSet.DeduplicatedInfo(0, a1, a2, a3);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  CRSet.init()(a1, a2, a3, &v10);
  *(a4 + 1) = v10;
  type metadata accessor for CROrderedSetElement(0, a1, a2, a3);
  CRSequence.init()(&v10);
  *a4 = v10;
}

void *CRSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[0] = a1;
  v7[1] = &type metadata for CRSetElement;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = &off_1EE7B4A80;
  type metadata accessor for CRSetRef(0, v7);
  v5 = swift_allocObject();
  result = sub_1ADDCC3B0();
  *a4 = v5;
  return result;
}

void *__swift_store_extra_inhabitant_index_10Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADDCC0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCC15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADDCC1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t type metadata accessor for ReplicaState(uint64_t a1)
{
  result = qword_1ED96B338;
  if (!qword_1ED96B338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ADDCC2D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B26FDA70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B26FDA70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADDCC35C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void *sub_1ADDCC3B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC8];
  v0[3] = MEMORY[0x1E69E7CC8];
  v0[4] = v9;
  v0[5] = sub_1AE23C9CC();
  v0[6] = 0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  type metadata accessor for ReplicaState(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v12 = type metadata accessor for Replica(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  (*(v6 + 32))(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v8, v5);
  *(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v10 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v13(v4, 1, 1, v12);
  swift_beginAccess();
  sub_1ADDD85E4(v4, v10 + v11);
  swift_endAccess();
  v1[2] = v10;
  return v1;
}

uint64_t sub_1ADDCC6B4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
  v10 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1ADDCC920(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1ADDCC7D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1ADDCC868(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

_BYTE *sub_1ADDCC920@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1ADDCC868(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1ADF4BAF0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1ADF4BB6C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1ADDCC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDCCAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1ADDCCB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCCC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v11 = &type metadata for CRKeyPath;
  v8[0] = swift_getAssociatedTypeWitness();
  v8[1] = swift_getAssociatedConformanceWitness();
  v8[2] = &protocol witness table for Int;
  v8[3] = MEMORY[0x1E69E6540];
  result = type metadata accessor for CRExtensible(319, v8);
  if (v7 <= 0x3F)
  {
    v10 = 0;
    v12 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCCDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double Capsule.init(serializedData:allowedAppFormats:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)(a1, a2, a3, 0, 0xF000000000000000, a4, a5, v11);
  if (!v6)
  {
    v9 = v12;
    result = v11[0].n128_f64[0];
    v10 = v11[1];
    *a6 = v11[0];
    a6[1] = v10;
    a6[2].n128_u64[0] = v9;
  }

  return result;
}

uint64_t sub_1ADDCCE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCEB0(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

void sub_1ADDCCF48(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v38, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v29);
  if (v6)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v25 = a6;
    v26 = a5;
    v24 = v12;
    v27 = a3;
    v39[4] = v34;
    v39[5] = v35;
    v39[6] = v36;
    v39[7] = v37;
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v32;
    v39[3] = v33;
    v15 = v38;
    sub_1ADDCEE40(&v29, v28, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v18 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v18;
    v19 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v15;
    *(inited + 16) = 0;
    *(inited + 24) = v18;
    type metadata accessor for CRProtoDecodeContext();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v19;
    v20[4] = v16;
    v20[5] = v19;
    v21 = *(&v31 + 1);

    sub_1ADDCEE40(&v29, v28, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v21);

    sub_1ADDCEDE0(&v29, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v20;

    sub_1ADDD5D3C(v39);
    sub_1ADDCEDE0(&v29, &qword_1EB5BA278, &unk_1AE241D30);
    v22 = v27;
    v26(v27, v39, v27, v40);
    sub_1ADDCC35C(a1, a2);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    sub_1ADDCEDE0(&v29, &qword_1EB5BA278, &unk_1AE241D30);
    (*(v24 + 32))(v25, v14, v22);
  }
}

uint64_t sub_1ADDCD494()
{
  v0 = sub_1AE23BDDC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = NSTemporaryDirectory();
  sub_1AE23CD0C();

  sub_1AE23BCDC();

  type metadata accessor for CRAssetManager(0);
  v4 = swift_allocObject();
  result = sub_1ADDCD880(v2, v6);
  qword_1ED96F2A8 = v4;
  return result;
}

uint64_t sub_1ADDCD598(uint64_t a1)
{
  result = sub_1AE23BDDC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ADDCD698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D8, &qword_1AE2418B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0E0, &qword_1AE2418C0);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA0D8, &qword_1AE2418B8);
      result = sub_1ADDFF050(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1AE23BDDC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDCD880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v58 = a1;
  v57 = sub_1AE23BDDC();
  v51 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AE23D68C();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = sub_1ADDCD674(v14);
  *(v2 + 96) = 0;
  sub_1AE23BFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v15 = swift_allocObject();
  v47 = xmmword_1AE241900;
  *(v15 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v16 = MEMORY[0x1E69E7508];
  v17 = MEMORY[0x1E69E7558];
  *(v15 + 56) = MEMORY[0x1E69E7508];
  *(v15 + 64) = v17;
  v18 = v16;
  *(v15 + 32) = v19;
  sub_1AE23BFCC();
  *(v15 + 96) = v18;
  *(v15 + 104) = v17;
  *(v15 + 72) = v20;
  v21 = sub_1AE23CD3C();
  v23 = v22;
  v24 = *(v11 + 8);
  v24(v13, v10);
  *(v3 + 104) = v21;
  *(v3 + 112) = v23;
  *(v3 + 16) = sub_1ADDCD698(v14);
  v26 = *(v3 + 104);
  v25 = *(v3 + 112);
  type metadata accessor for AssetActor(0);
  v27 = swift_allocObject();

  sub_1ADDCE724(v26, v25);
  *(v3 + 24) = v27;
  v48 = sub_1ADDCED94();
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1AE23DA2C();

  v60 = 0xD00000000000001ELL;
  v61 = 0x80000001AE2634D0;
  sub_1AE23BFDC();
  v28 = swift_allocObject();
  *(v28 + 16) = v47;
  sub_1AE23BFCC();
  v29 = MEMORY[0x1E69E7508];
  *(v28 + 56) = MEMORY[0x1E69E7508];
  *(v28 + 64) = v17;
  *(v28 + 32) = v30;
  sub_1AE23BFCC();
  *(v28 + 96) = v29;
  *(v28 + 104) = v17;
  *(v28 + 72) = v31;
  v32 = sub_1AE23CD3C();
  v34 = v33;
  v24(v13, v10);
  v35 = v52;
  MEMORY[0x1B26FB670](v32, v34);

  sub_1AE23C8AC();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEF80(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v36 = v57;
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  v37 = v58;
  sub_1AE23D8DC();
  (*(v55 + 104))(v54, *MEMORY[0x1E69E8090], v56);
  *(v3 + 32) = sub_1AE23D6CC();
  v38 = v35;
  sub_1ADDCEE40(v35, v3 + 56, &qword_1EB5B9DB0, &qword_1AE240B80);
  v39 = v59;
  sub_1AE23BD3C();
  v40 = v51;
  (*(v51 + 32))(v3 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v39, v36);
  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  v43 = qword_1ED96AA20;

  if (v43 != -1)
  {
    swift_once();
  }

  [v42 addObserver:v3 selector:sel_didEnterBackground name:qword_1ED96F288 object:0];

  v44 = [v41 defaultCenter];
  v45 = qword_1ED96AA18;

  if (v45 != -1)
  {
    swift_once();
  }

  [v44 addObserver:v3 selector:sel_willEnterForeground name:qword_1ED96F280 object:0];

  if (qword_1ED96AB10 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  sub_1ADDCEDE0(v38, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v40 + 8))(v37, v36);

  *(v3 + 96) = v60;
  return v3;
}

unint64_t sub_1ADDCE010(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_1AE23DCDC();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1ADDCEE40(v16, v12, a2, v27);
      result = sub_1ADDFF050(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_1AE23BDDC();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1ADDCE248()
{
  if (!qword_1ED96AA38)
  {
    v0 = sub_1AE23D21C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96AA38);
    }
  }
}

id sub_1ADDCE2E4(char a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v12;
  if (*(a2 + 24))
  {
    (*(v5 + 56))(&v29 - v12, 1, 1, v4, v13);
    v15 = sub_1ADDCFD3C(v14);
    sub_1ADDCEE40(a2, &v31, &qword_1EB5B9DB0, &qword_1AE240B80);
    v16 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();

    type metadata accessor for CRAssetManager(0);
    swift_allocObject();
    v17 = sub_1ADDCD880(v7, &v31);
    sub_1ADDCEE40(a2, &v31, &qword_1EB5B9DB0, &qword_1AE240B80);
    v18 = type metadata accessor for CRContext();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___CRContext_assetManager] = v17;
    sub_1ADDCEE40(&v31, &v19[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v20 = &v19[OBJC_IVAR___CRContext_crdtDatabase];
    *v20 = v15;
    v20[1] = &off_1F23C69F0;
    v29.receiver = v19;
    v29.super_class = v18;
    v21 = objc_msgSendSuper2(&v29, sel_init);
  }

  else
  {
    if (a1)
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v22 = NSTemporaryDirectory();
      sub_1AE23CD0C();

      sub_1AE23BCDC();

      type metadata accessor for CRAssetManager(0);
      swift_allocObject();
      v23 = sub_1ADDCD880(v7, &v31);
    }

    else
    {
      if (qword_1ED96AE88 != -1)
      {
        swift_once();
      }

      v23 = qword_1ED96F2A8;
    }

    (*(v5 + 56))(v10, 1, 1, v4);
    v24 = sub_1ADDCFD3C(v10);
    v25 = type metadata accessor for CRContext();
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR___CRContext_assetManager] = v23;
    sub_1ADDCEE40(&v31, &v26[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v27 = &v26[OBJC_IVAR___CRContext_crdtDatabase];
    *v27 = v24;
    v27[1] = &off_1F23C69F0;
    v30.receiver = v26;
    v30.super_class = v25;
    v21 = objc_msgSendSuper2(&v30, sel_init);
  }

  sub_1ADDCEDE0(&v31, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v21;
}

void *sub_1ADDCE724(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v31 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD18, &qword_1AE254540);
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v31 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD28, &qword_1AE254550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  swift_defaultActor_initialize();
  v2[15] = a1;
  v2[16] = a2;
  v33 = a2;

  v2[14] = sub_1ADE50D24(MEMORY[0x1E69E7CC0]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  v37 = v20;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v36);
  sub_1AE23D24C();
  sub_1ADDCEE40(v20, v17, &qword_1EB5BDD28, &qword_1AE254550);
  result = (*(v22 + 48))(v17, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v22 + 32))(v2 + OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation, v17, v21);
    v24 = sub_1AE23D1BC();
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    v26 = v32;
    v27 = v34;
    (*(v10 + 16))(v32, v14, v34);
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v10 + 32))(v29 + v28, v26, v27);
    v30 = sub_1AE217C10(0, 0, v25, &unk_1AE254560, v29);
    (*(v10 + 8))(v14, v27);
    *(v2 + OBJC_IVAR____TtC9Coherence10AssetActor__task) = v30;
    sub_1ADDCEDE0(v20, &qword_1EB5BDD28, &qword_1AE254550);
    return v2;
  }

  return result;
}

uint64_t sub_1ADDCEBD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADDCECA0(uint64_t a1, uint64_t a2)
{
  sub_1ADDCEDE0(a2, &qword_1EB5BDD28, &qword_1AE254550);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_1ADDCED94()
{
  result = qword_1ED96B370;
  if (!qword_1ED96B370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96B370);
  }

  return result;
}

uint64_t sub_1ADDCEDE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1ADDCEE40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADDCEEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCEEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCEF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCEF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCEFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCF010(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCF064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1ADDCF11C(a1, v4);
}

uint64_t sub_1ADDCF11C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AE21BCC8;

  return v6(a1);
}

uint64_t sub_1ADDCF214(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1ADDCF310(a1, v6, v7, v1 + v5);
}

uint64_t sub_1ADDCF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD30, &qword_1AE254568);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADDCF3DC, 0, 0);
}

uint64_t sub_1ADDCF3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  sub_1AE23D22C();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1AE1A7A48;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1ADDCF4A8()
{
  result = sub_1AE23CCDC();
  qword_1ED96F288 = result;
  return result;
}

uint64_t sub_1ADDCF4E0()
{
  result = sub_1AE23CCDC();
  qword_1ED96F280 = result;
  return result;
}

uint64_t sub_1ADDCF518()
{
  type metadata accessor for ApplicationStateManager();
  swift_allocObject();
  result = sub_1ADDCF578();
  qword_1ED96F290 = result;
  return result;
}

uint64_t sub_1ADDCF578()
{
  v1 = sub_1AE23C88C();
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v28 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1AE23D68C();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1AE23C8CC();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 1;
  v11 = sub_1ADDCED94();
  v23[0] = &unk_1AE2521A0;
  v23[1] = v11;
  v25 = v10;
  sub_1AE23C8AC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v24);
  *(v0 + 24) = sub_1AE23D6CC();
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];

  v14 = sub_1AE23CCDC();
  [v13 addObserver:v0 selector:sel_didEnterBackground name:v14 object:0];

  v15 = [v12 defaultCenter];

  v16 = sub_1AE23CCDC();
  [v15 addObserver:v0 selector:sel_willEnterForeground name:v16 object:0];

  v17 = sub_1AE23D69C();
  aBlock[4] = sub_1ADDD5B1C;
  v33 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  v19 = v25;
  sub_1AE23C8AC();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  v21 = v28;
  v20 = v29;
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v19, v21, v18);
  _Block_release(v18);

  (*(v30 + 8))(v21, v20);
  (*(v26 + 8))(v19, v27);

  return v0;
}

uint64_t sub_1ADDCFAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADDCFB68(uint64_t a1)
{
  result = sub_1AE23BFEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1ADDCFC04(uint64_t a1)
{
  sub_1ADDCFCC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1ADDCFCC0(uint64_t a1)
{
  if (!qword_1ED96A4B0)
  {
    type metadata accessor for CRReplicaDatabase.ReplicaDb(255);
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED96A4B0);
    }
  }
}

uint64_t sub_1ADDCFD3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_1AE23C88C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AE23C8CC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C89C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v54 = a1;
  sub_1ADDCEE40(a1, &v40 - v12, &qword_1EB5B9DC0, &qword_1AE240B90);
  v14 = sub_1AE23BDDC();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);
  v53 = v5;
  if (v16 == 1)
  {
    v17 = 0x656D3A3A656C6966;
    sub_1ADDCEDE0(v13, &qword_1EB5B9DC0, &qword_1AE240B90);
    v18 = 0xED00003A79726F6DLL;
  }

  else
  {
    v17 = sub_1AE23BDAC();
    v18 = v19;
    (*(v15 + 8))(v13, v14);
  }

  type metadata accessor for CRReplicaDatabase(0);
  v20 = swift_allocObject();
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  v21 = MEMORY[0x1E69E7CD0];
  *(v20 + 120) = MEMORY[0x1E69E7CC8];
  *(v20 + 128) = v21;
  v22 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  v23 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(v20 + v22, 1, 1, v23);
  *(v20 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) = 0;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 64) = 0;
  *(v20 + 66) = 1;
  *(v20 + 68) = 0;
  *(v20 + 70) = 1;
  *(v20 + 72) = 0;
  *(v20 + 80) = -1;
  *(v20 + 16) = v17;
  *(v20 + 41) = 0;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;

  sub_1ADDD16D4();
  if (v1)
  {
    sub_1ADDCEDE0(v54, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  else
  {
    v42 = v26;
    v43 = v25;
    if (v17 == 0x656D3A3A656C6966 && v18 == 0xED00003A79726F6DLL || (sub_1AE23E00C() & 1) != 0)
    {
    }

    else
    {
      sub_1ADDCED94();
      v28 = v44;
      v27 = v45;
      v29 = v46;
      (*(v45 + 104))(v44, *MEMORY[0x1E69E7F98], v46);

      v41 = sub_1AE23D6DC();
      (*(v27 + 8))(v28, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = v17;
      *(v30 + 24) = v18;
      aBlock[4] = sub_1AE1A3878;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1ADDD2200;
      aBlock[3] = &block_descriptor_14;
      v31 = _Block_copy(aBlock);
      v32 = v47;
      sub_1AE23C8AC();
      aBlock[8] = MEMORY[0x1E69E7CC0];
      sub_1ADE923C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADF92ED8();
      v33 = v49;
      v34 = v52;
      sub_1AE23D8DC();
      v35 = v41;
      MEMORY[0x1B26FBF60](0, v32, v33, v31);

      _Block_release(v31);

      (*(v51 + 8))(v33, v34);
      (*(v48 + 8))(v32, v50);
    }

    sub_1ADDD0944();
    v36 = v43;
    v37 = v53;
    sub_1ADDD0648(v53);
    sub_1ADDCEDE0(v54, &qword_1EB5B9DC0, &qword_1AE240B90);
    v36(v37, 0, 1, v23);
    v39 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
    swift_beginAccess();
    sub_1ADDD4268(v37, v20 + v39);
    swift_endAccess();
  }

  return v20;
}

uint64_t sub_1ADDD043C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

sqlite3_stmt *sub_1ADDD0474()
{
  result = sub_1ADDD1E30(0xD000000000000054, 0x80000001AE263000);
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      sqlite3_finalize(v3);
      v3 = sub_1ADDD1E30(0xD000000000000080, 0x80000001AE263060);
      v4 = sqlite3_step(v3);
      if (v4 == 101)
      {
        return sqlite3_finalize(v3);
      }

      if (v4 == 5)
      {
        goto LABEL_4;
      }

      if (sqlite3_errmsg(*(v0 + 32)))
      {
LABEL_10:
        v9 = sub_1AE23CDEC();
        v11 = v10;
        sub_1ADE47024(v9, v10, v12);
        swift_allocError();
        *v7 = v9;
        *(v7 + 8) = v11;
        v8 = 2;
        goto LABEL_11;
      }

      __break(1u);
    }

    else if (v4 == 5)
    {
LABEL_4:
      sub_1ADE47024(v4, v5, v6);
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      v8 = 5;
LABEL_11:
      *(v7 + 16) = v8;
      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    result = sqlite3_errmsg(*(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1ADDD05D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1ADDD0648(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_step(*(v3 + 104)) != 100)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v17 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
    *(a1 + *(v17 + 20)) = 0;
    *(a1 + *(v17 + 24)) = 0;
    *(v3 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) = 1;
    goto LABEL_8;
  }

  v9 = sqlite3_column_bytes(*(v3 + 104), 0);
  v10 = sqlite3_column_blob(*(v3 + 104), 0);
  v19 = sqlite3_column_int64(*(v3 + 104), 1);
  v11 = sqlite3_column_int64(*(v3 + 104), 2);
  if (!v10)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_1ADDD8EE0(v10, v9);
  sub_1ADDFE348(v13, v14, v15);
  if (!v2)
  {
    (*(v6 + 32))(a1, v8, v5);
    v16 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
    *(a1 + *(v16 + 20)) = v19;
    *(a1 + *(v16 + 24)) = v12;
LABEL_8:
    sqlite3_reset(*(v3 + 104));
  }
}

const char *sub_1ADDD089C()
{
  result = sub_1ADDD1E30(0xD000000000000021, 0x80000001AE262ED0);
  if (!v1)
  {
    v0[11] = result;
    v0[12] = sub_1ADDD1E30(0xD00000000000003CLL, 0x80000001AE262F00);
    v0[13] = sub_1ADDD1E30(0xD000000000000045, 0x80000001AE262F40);
    result = sub_1ADDD1E30(0xD000000000000063, 0x80000001AE262F90);
    v0[14] = result;
  }

  return result;
}

void sub_1ADDD0944()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_step(*(v0 + 88)) != 100)
  {
LABEL_35:
    sqlite3_reset(*(v1 + 88));
    swift_beginAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDC98, &unk_1AE254018);
    sub_1AE23CA3C();
    swift_endAccess();
    return;
  }

  v42[1] = v3 + 16;
  v43 = v2;
  v45 = (v3 + 8);
  while (1)
  {
    v6 = sqlite3_column_bytes(*(v1 + 88), 0);
    v7 = sqlite3_column_blob(*(v1 + 88), 0);
    v8 = sqlite3_column_int64(*(v1 + 88), 1);
    if (!v7)
    {
      goto LABEL_44;
    }

    if (!v6)
    {
      v13 = 0;
      v14 = 0xC000000000000000;
      goto LABEL_38;
    }

    v11 = v8;
    v12 = v6;
    if (v6 >= 15)
    {
      break;
    }

    memset(__dst, 0, sizeof(__dst));
    v48 = v6;
    v8 = memcpy(__dst, v7, v6);
    v13 = *__dst;
    v14 = v44 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v48 << 48);
    v44 = v14;
    if (v48 != 16)
    {
      goto LABEL_38;
    }

LABEL_12:
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_25;
      }

      v16 = *(v13 + 16);
      v17 = sub_1AE23BB7C();
      if (!v17)
      {
        goto LABEL_45;
      }

      v18 = v17;
      v19 = sub_1AE23BBAC();
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_42;
      }

      v20 = v16 - v19 + v18;
      sub_1AE23BB9C();
      if (!v20)
      {
        goto LABEL_46;
      }

      goto LABEL_24;
    }

    if (v15)
    {
      if (v13 > v13 >> 32)
      {
        goto LABEL_41;
      }

      v21 = sub_1AE23BB7C();
      if (!v21)
      {
        goto LABEL_47;
      }

      v22 = v21;
      v23 = sub_1AE23BBAC();
      if (__OFSUB__(v13, v23))
      {
        goto LABEL_43;
      }

      v24 = v13 - v23 + v22;
      sub_1AE23BB9C();
      if (!v24)
      {
        goto LABEL_48;
      }

LABEL_24:
      v2 = v43;
    }

LABEL_25:
    sub_1AE23BFBC();
    sub_1ADDCC35C(v13, v14);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v1 + 120);
    v26 = v46;
    *(v1 + 120) = 0x8000000000000000;
    v27 = sub_1ADDDF300(v5);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
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
LABEL_45:
      sub_1AE23BB9C();
LABEL_46:
      __break(1u);
LABEL_47:
      sub_1AE23BB9C();
      __break(1u);
LABEL_48:
      __break(1u);
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      sub_1ADF68CE0(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1ADDDF300(v5);
      if ((v33 & 1) != (v34 & 1))
      {
        sub_1AE23E27C();
        __break(1u);
        return;
      }

LABEL_30:
      v35 = v46;
      if (v33)
      {
        goto LABEL_3;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v39 = v27;
    sub_1ADF6EAB8();
    v27 = v39;
    v2 = v43;
    v35 = v46;
    if (v33)
    {
LABEL_3:
      *(v35[7] + 8 * v27) = v11;
      (*v45)(v5, v2);
      goto LABEL_4;
    }

LABEL_31:
    v35[(v27 >> 6) + 8] |= 1 << v27;
    v36 = v27;
    (*(v3 + 16))(v35[6] + *(v3 + 72) * v27, v5, v2);
    *(v35[7] + 8 * v36) = v11;
    (*(v3 + 8))(v5, v2);
    v37 = v35[2];
    v31 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v31)
    {
      goto LABEL_40;
    }

    v35[2] = v38;
LABEL_4:
    *(v1 + 120) = v35;

    swift_endAccess();
    if (sqlite3_step(*(v1 + 88)) != 100)
    {
      goto LABEL_35;
    }
  }

  sub_1AE23BBCC();
  swift_allocObject();
  if (v6 != 0x7FFFFFFF)
  {
    v8 = sub_1AE23BB6C();
    v13 = v6 << 32;
    v14 = v8 | 0x4000000000000000;
    if (v12 != 16)
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v40 = sub_1AE23BB6C();
  sub_1AE23BE2C();
  v8 = swift_allocObject();
  v13 = v8;
  *(v8 + 16) = xmmword_1AE241270;
  v14 = v40 | 0x8000000000000000;
LABEL_38:
  sub_1ADE42E40(v8, v9, v10);
  swift_allocError();
  *v41 = xmmword_1AE241D20;
  *(v41 + 16) = 0;
  swift_willThrow();
  sub_1ADDCC35C(v13, v14);
}

void sub_1ADDD0F70()
{
  v1 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v2 = ((v1 / 0xF4240) << 12) | (4095 * (v1 % 0xF4240) / 0xF4240);
  v3 = *(v0 + 24);
  os_unfair_lock_lock((v3 + 32));
  sub_1ADDD104C((v3 + 16), v2, v0, v4);
  os_unfair_lock_unlock((v3 + 32));
  if (HIWORD(v4[0]) || v4[1] > 0xFFF || v4[2] >> 62)
  {
    __break(1u);
  }
}

unint64_t sub_1ADDD104C@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (*a1 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a1;
  }

  if (*a1 < a2)
  {
    goto LABEL_12;
  }

  result = *(a3 + 16);
  if (result > 0x4000000000000000)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a1[1];
  if (result)
  {
    result = sub_1ADDCC2D0(result);
  }

  v9 = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_17;
  }

  v10 = __CFADD__(v9, result);
  result += v9;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!(result >> 62))
  {
LABEL_13:
    *a1 = v6;
    a1[1] = result;
    *a4 = v6 >> 12;
    a4[1] = v6 & 0xFFF;
    if (!(result >> 62))
    {
      a4[2] = result;
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = __CFADD__(v6++, 1);
  if (!v10)
  {
LABEL_12:
    result = sub_1ADDCC2D0(0x2000000000000000uLL);
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1ADDD110C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1ADDD1158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD11C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDD1230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1AE23BFEC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  _s15UUIDv7GeneratorCMa();
  v4 = swift_allocObject();
  result = sub_1ADDD1328(0x1000000000000uLL, v2);
  qword_1ED96F298 = v4;
  return result;
}

uint64_t sub_1ADDD1328(unint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BC8F8, &qword_1AE250C20);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v2 + 24) = result;
  if (a1 > 0x4000000000000000)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = a1;
    sub_1ADDD1158(a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1ADDD11C8(a2);
      sub_1ADDD11C8(v7);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v13 = sub_1AE001EA8(v11);
      v15 = v14;
      v16 = *(v2 + 24);
      os_unfair_lock_lock((v16 + 32));
      *(v16 + 16) = v13;
      *(v16 + 24) = v15;
      os_unfair_lock_unlock((v16 + 32));
      sub_1ADDD11C8(a2);
      (*(v9 + 8))(v11, v8);
    }

    return v2;
  }

  return result;
}

uint64_t sub_1ADDD1544(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1ADDE0598(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1ADDCC35C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1ADDD8820(v13, a3, a4, &v12);
  v10 = v4;
  sub_1ADDCC35C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

sqlite3 *sub_1ADDD16D4()
{
  v1 = v0;
  ppDb[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-v7];
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v48 = v10;
  v49 = v9;
  ppDb[0] = 0;
  v11 = v10 == 0x656D3A3A656C6966 && v9 == 0xED00003A79726F6DLL;
  if (v11 || (sub_1AE23E00C() & 1) != 0)
  {

    v44 = 0;
  }

  else
  {
    v12 = objc_opt_self();

    v13 = [v12 defaultManager];
    v14 = sub_1AE23CCDC();
    v44 = [v13 fileExistsAtPath_];
  }

  if (sub_1AE23CE4C())
  {
    v15 = [objc_opt_self() defaultManager];
    sub_1AE23BCEC();
    sub_1AE23BD5C();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v17 = sub_1AE23BD1C();
    v16(v8, v2);
    v46 = 0;
    v18 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v46];

    v19 = v46;
    if (!v18)
    {
      v35 = v46;

      sub_1AE23BC9C();

      return swift_willThrow();
    }

    v46 = 0x3A656C6966;
    v47 = 0xE500000000000000;
    v20 = v19;
    MEMORY[0x1B26FB670](v10, v9);

    v48 = v46;
    v49 = v47;
  }

  v21 = *(v1 + 42);
  if (v21 == 1)
  {
    MEMORY[0x1B26FB670](0x626174756D6D693FLL, 0xEC000000313D656CLL);
    v22 = 32833;
  }

  else
  {
    v22 = 32838;
  }

  v23 = sub_1AE23CD8C();
  v24 = sqlite3_open_v2((v23 + 32), ppDb, v22, 0);

  if (v24)
  {

    *(v1 + 40) = 1;
    if (sqlite3_errmsg(ppDb[0]))
    {
      v27 = sub_1AE23CDEC();
      v29 = v28;
      sub_1ADE47024(v27, v28, v30);
      swift_allocError();
      *v31 = v27;
      *(v31 + 8) = v29;
    }

    else
    {
      sub_1ADE47024(0, v25, v26);
      swift_allocError();
      *v31 = 0xD000000000000026;
      *(v31 + 8) = 0x80000001AE25FAC0;
    }

    *(v31 + 16) = 0;
    swift_willThrow();
    result = ppDb[0];
    if (ppDb[0])
    {
      return sqlite3_close(ppDb[0]);
    }

    return result;
  }

  v32 = ppDb[0];
  *(v1 + 32) = ppDb[0];
  sqlite3_busy_timeout(v32, 1000);
  *(v1 + 40) = 0;
  if (*(v1 + 41) == 1)
  {
    v33 = v45;
    sub_1ADE43808();
    if (v33)
    {
    }

    sub_1ADE43924();
    v34 = 0;
  }

  else
  {
    v34 = v45;
  }

  if (v21)
  {
    goto LABEL_26;
  }

  sub_1ADDD1CA0();
  if (v34)
  {
  }

  sub_1ADDD1F20();
  v34 = 0;
LABEL_26:
  v37 = *(v1 + 48);
  if (v37)
  {
  }

  else
  {
    v38 = *(v1 + 56);

    if (!v38)
    {
      goto LABEL_48;
    }
  }

  if (v44)
  {
    result = sub_1ADE433DC(*(v1 + 56), v37);
    if (v34)
    {
      return result;
    }

    goto LABEL_48;
  }

  if ((v21 & 1) == 0)
  {
    v39 = *(v1 + 56);
    if (v39)
    {
      if (*(v39 + 16))
      {
        v40 = 0;
        LODWORD(v39) = *(v39 + 32);
        goto LABEL_42;
      }

      LODWORD(v39) = 0;
    }

    v40 = 1;
LABEL_42:
    if (v37)
    {
      v41 = *(v37 + 16);
      if (v41)
      {
        v42 = 0;
        LODWORD(v41) = *(v37 + 32);
        goto LABEL_47;
      }
    }

    else
    {
      LODWORD(v41) = 0;
    }

    v42 = 1;
LABEL_47:
    result = sub_1ADE43620(v39 | (v40 << 16), v41 | (v42 << 16));
    if (v34)
    {
      return result;
    }
  }

LABEL_48:
  result = (*(*v1 + 368))(result);
  if (!v34)
  {
    return (*(*v1 + 376))(result);
  }

  return result;
}

char *sub_1ADDD1CA0()
{
  result = sqlite3_db_readonly(*(v0 + 32), "main");
  if (!result)
  {
    result = sub_1ADDD1E30(0xD000000000000013, 0x80000001AE25FA60);
    if (!v1)
    {
      v3 = result;
      sqlite3_step(result);
      if (sqlite3_column_int(v3, 0) != 2)
      {
        v4 = sub_1ADDD1E30(0xD00000000000001FLL, 0x80000001AE25FA80);
        do
        {
          v5 = sqlite3_step(v4);
        }

        while (v5 == 100);
        if (v5 != 101)
        {
          sub_1AE23DA2C();

          result = sqlite3_errmsg(*(v0 + 32));
          if (!result)
          {
            __break(1u);
            return result;
          }

          v6 = sub_1AE23CDEC();
          MEMORY[0x1B26FB670](v6);

          v7 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
          sub_1ADE47024(v7, v8, v9);
          swift_allocError();
          *v10 = 0xD000000000000013;
          *(v10 + 8) = 0x80000001AE25FAA0;
          *(v10 + 16) = 0;
          swift_willThrow();
        }

        sqlite3_finalize(v4);
      }

      return sqlite3_finalize(v3);
    }
  }

  return result;
}

const char *sub_1ADDD1E30(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v3 = *(v2 + 32);
  v4 = sub_1AE23CD8C();
  LODWORD(v3) = sqlite3_prepare_v2(v3, (v4 + 32), -1, v11, 0);

  if (!v3)
  {
    return v11[0];
  }

  result = sqlite3_errmsg(*(v2 + 32));
  if (result)
  {
    v6 = sub_1AE23CDEC();
    v8 = v7;
    sub_1ADE47024(v6, v7, v9);
    swift_allocError();
    *v10 = v6;
    *(v10 + 8) = v8;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1ADDD1F20()
{
  result = sub_1ADDD1E30(0xD00000000000001CLL, 0x80000001AE25FA40);
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 != 101)
    {
      sub_1AE23DA2C();

      strcpy(v11, "App ID setup: ");
      HIBYTE(v11[1]) = -18;
      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v5);

      v6 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v7 = v11[1];
      sub_1ADE47024(v6, v8, v9);
      swift_allocError();
      *v10 = v11[0];
      *(v10 + 8) = v7;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v3);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ADDD2198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADDD2208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1ADDD22FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = 0;
  type metadata accessor for CRRegisterRef(0, a3, a4, v17);
  (*(v13 + 16))(v16, a1, a3);
  sub_1ADED0548(a2, v12);
  v18 = swift_allocObject();
  sub_1ADDD25B8(v16, v12);
  sub_1ADE173B8(a2);
  result = (*(v13 + 8))(a1, a3);
  *a5 = v18;
  return result;
}

uint64_t sub_1ADDD2498(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FinalizedTimestamp(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDD25B8(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 192) - 8) + 32))(v2 + *(*v2 + 208), a1);
  sub_1ADE172E4(a2, v2 + *(*v2 + 216));
  return v2;
}

uint64_t sub_1ADDD2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD26C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD2728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDD2788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD27F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CRRegister.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  CRRegister.init(_:)(v11, a2, a3, &v14);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v14;
  return result;
}

uint64_t CRRegister.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a3 + 8) + 8) + 48))(a2, v13))
  {
    result = (*(v11 + 8))(a1, a2);
    v17 = 0;
  }

  else
  {
    (*(v11 + 16))(v15, a1, a2);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v10[*(v8 + 20)] = 0;
    sub_1ADDD22FC(v15, v10, a2, a3, &v19);
    result = (*(v11 + 8))(a1, a2);
    v17 = v19;
  }

  *a4 = v17;
  return result;
}

void sub_1ADDD2C4C(uint64_t a1)
{
  sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    sub_1ADDD2D28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1ADDD2D28(uint64_t a1)
{
  if (!qword_1ED96B2D8[0])
  {
    type metadata accessor for Replica(255);
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, qword_1ED96B2D8);
    }
  }
}

void *sub_1ADDD2D80(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1ADDD2F5C()
{
  result = qword_1ED96AA80;
  if (!qword_1ED96AA80)
  {
    type metadata accessor for Replica(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA80);
  }

  return result;
}

uint64_t sub_1ADDD2FD4()
{
  v6[0] = sub_1AE23D68C();
  v0 = *(v6[0] - 8);
  MEMORY[0x1EEE9AC00](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1ADDCED94();
  sub_1AE23C8AC();
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1ADDD322C(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v6[0]);
  result = sub_1AE23D6CC();
  qword_1ED96F300 = result;
  return result;
}

uint64_t sub_1ADDD322C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1ADDD34E0(uint64_t a1)
{
  sub_1ADE934FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1ADDD35C4(uint64_t a1)
{
  result = sub_1AE23C2FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1ADDD3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = 0;
  v14 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x3000000000000000)
  {
    v9 = (v6 & 0xFFFFFFFFFFFFFFFLL);
    v13 = v9[2];
    v14 = v9[3];
    v15 = v9[4];
  }

  sub_1AE1CA708(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    sub_1AE1D018C(v13);
  }

  else if (v13)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
    *(v10 + 32) = v15;
    v11 = v10 | 0x3000000000000000;
    v12 = *(v5 + 16);
    *(v5 + 16) = v11;
    sub_1ADE52174(v12);
  }
}

void sub_1ADDD387C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v6 = *a1;
  v7 = v6 & 0xF000000000000007;
  if (v6 >> 62)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0xF000000000000007;
  }

  if (!v8)
  {
    v11 = v6;
  }

  sub_1AE1CB668(v6, a2, a3);
  sub_1AE23C4FC();
  v9 = v11;
  if (v4)
  {
  }

  else if (v11)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      v9 = v11;
    }

    v10 = *a1;
    *a1 = v9;
    sub_1ADE73AC8(v10);
  }
}

uint64_t sub_1ADDD396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          v7 = v3;
          sub_1AE1CAF38(5, v5, v6);
          goto LABEL_5;
        }

        v8 = v3;
        sub_1AE1C9964(6, v5, v6);
LABEL_24:
        v3 = v8;
        sub_1AE23C4EC();
        goto LABEL_6;
      }

      if (result == 7)
      {
        v7 = v3;
        sub_1AE1CAF38(7, v5, v6);
LABEL_5:
        v3 = v7;
        sub_1AE23C4FC();
        goto LABEL_6;
      }

      if (result == 8)
      {
        v7 = v3;
        sub_1AE1CAF38(8, v5, v6);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1AE23C38C();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        v7 = v3;
        sub_1AE1CAF38(4, v5, v6);
        goto LABEL_5;
      }

      v8 = v3;
      sub_1AE1C96AC(3, v5, v6);
    }

    else
    {
      if (result == 1)
      {
        sub_1AE23C4AC();
        goto LABEL_6;
      }

      if (result != 2)
      {
        goto LABEL_6;
      }

      v8 = v3;
      sub_1AE1CB7C4(2, v5, v6);
    }

    goto LABEL_24;
  }

  return result;
}

double sub_1ADDD3B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = *(a1 + 16);
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x4000000000000000)
  {
    v27 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;

    sub_1ADDCEDE0(&v21, &qword_1EB5BCC28, &unk_1AE251820);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v32 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v33 = v12;
    v34 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v30 = v10;
    v31 = v11;
    v28 = v8;
    v29 = v9;
    sub_1ADE51B64(&v28, v20);
    sub_1ADE52174(v6);
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
  }

  sub_1AE1C9AC0(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    sub_1ADDCEDE0(&v28, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    v32 = v39;
    v33 = v40;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v34 = v41;
    v14 = v35;
    v21 = v36;
    v22 = v37;
    result = *&v40;
    *&v26 = v41;
    v24 = v39;
    v25 = v40;
    v23 = v38;
    if (*(&v35 + 1))
    {
      if ((v6 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v16 = v24;
      *(v15 + 64) = v23;
      *(v15 + 80) = v16;
      *(v15 + 96) = v25;
      *(v15 + 112) = v26;
      v17 = v22;
      *(v15 + 32) = v21;
      *(v15 + 48) = v17;
      v18 = v15 | 0x4000000000000000;
      v19 = *(a1 + 16);
      *(a1 + 16) = v18;
      return sub_1ADE52174(v19);
    }
  }

  return result;
}

uint64_t sub_1ADDD3D6C()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADDD3E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1AE1CB1F0(3, v5, v6);
          sub_1AE23C4FC();
          break;
        case 2:
          sub_1AE1C9808(2, v5, v6);
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C4BC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADDD3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && (v6 & 0xF000000000000000) == 0x8000000000000000)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1C9C1C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x8000000000000000;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE52174(v11);
  }
}

uint64_t sub_1ADDD4038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1ADDD4094()
{
  type metadata accessor for Proto_OrderedSet._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = 0;
  *(v0 + 200) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  off_1ED967FA0 = v0;
  return result;
}

uint64_t sub_1ADDD40FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v8 = v3;
          sub_1AE1CA864(4, v5, v6);
LABEL_17:
          v3 = v8;
          sub_1AE23C4EC();
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v8 = v3;
          sub_1AE1CA864(6, v5, v6);
          goto LABEL_17;
        }

        v7 = v3;
        sub_1AE1CAF38(5, v5, v6);
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1AE23C4DC();
            goto LABEL_5;
          case 2:
            v7 = v3;
            sub_1AE1CAF38(2, v5, v6);
            break;
          case 3:
            v7 = v3;
            sub_1AE1CB1F0(3, v5, v6);
            break;
          default:
            goto LABEL_5;
        }
      }

      v3 = v7;
      sub_1AE23C4FC();
LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDD4268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD42F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDD4380(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AE23C8CC();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 24);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

void sub_1ADDD4654(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5)
{
  *(a1 + 16) = a2;
  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (*a3 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:*a4 object:0];
}

uint64_t sub_1ADDD4738(uint64_t a1)
{
  v153 = *MEMORY[0x1E69E9840];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v1 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v121 - v2;
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v136 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v121 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC8, &qword_1AE2543F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v121 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    *(result + 96) = 0;
    swift_beginAccess();
    v20 = v19[2];
    v21 = *(v20 + 64);
    v126 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v131 = v23 & v21;
    v122 = (v22 + 63) >> 6;
    v145 = (v4 + 32);
    v146 = (v4 + 16);
    v140 = v4;
    v149 = (v4 + 8);
    v135 = v5 + 7;
    v134 = (v1 + 8);
    v124 = v20;

    v24 = 0;
    v121 = 0;
    *&v25 = 136315394;
    v123 = v25;
    v150 = v3;
    v144 = v10;
    v148 = v19;
    v125 = v15;
    while (1)
    {
      v26 = v131;
      if (v131)
      {
        v130 = v24;
        v27 = v24;
LABEL_17:
        v131 = (v26 - 1) & v26;
        v30 = __clz(__rbit64(v26)) | (v27 << 6);
        v31 = v124;
        v32 = v140;
        v33 = v141;
        (*(v140 + 16))(v141, *(v124 + 48) + *(v140 + 72) * v30, v3);
        v34 = *(*(v31 + 56) + 8 * v30);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
        v36 = *(v35 + 48);
        (*(v32 + 32))(v15, v33, v3);
        *&v15[v36] = v34;
        (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
      }

      else
      {
        v28 = v122 <= v24 + 1 ? v24 + 1 : v122;
        v29 = v28 - 1;
        while (1)
        {
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_79;
          }

          if (v27 >= v122)
          {
            break;
          }

          v26 = *(v126 + 8 * v27);
          ++v24;
          if (v26)
          {
            v130 = v27;
            goto LABEL_17;
          }
        }

        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
        (*(*(v119 - 8) + 56))(v15, 1, 1, v119);
        v131 = 0;
        v130 = v29;
      }

      v37 = v128;
      sub_1ADDD2198(v15, v128, &qword_1EB5BDCC8, &qword_1AE2543F0);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
        break;
      }

      v133 = *(v37 + *(v38 + 48));
      v143 = *v145;
      v143(v10, v37, v3);
      if (qword_1ED966B00 != -1)
      {
        swift_once();
      }

      v39 = sub_1AE23C78C();
      __swift_project_value_buffer(v39, qword_1ED96F1C8);
      v40 = v127;
      v142 = *v146;
      v142(v127, v10, v3);

      v41 = sub_1AE23C76C();
      v42 = sub_1AE23D60C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v151 = v44;
        *v43 = v123;
        v45 = v19[13];
        v46 = v19[14];

        v47 = sub_1AE1FB594(v45, v46, &v151);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v48 = sub_1AE23DD9C();
        v50 = v49;
        v147 = *v149;
        v147(v40, v3);
        v51 = sub_1AE1FB594(v48, v50, &v151);

        *(v43 + 14) = v51;
        _os_log_impl(&dword_1ADDCA000, v41, v42, "%s watchDirectory(enterForeground) %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26FDA50](v44, -1, -1);
        v52 = v43;
        v10 = v144;
        MEMORY[0x1B26FDA50](v52, -1, -1);
      }

      else
      {

        v147 = *v149;
        v147(v40, v3);
      }

      [objc_opt_self() addFilePresenter_];
      v53 = [objc_opt_self() defaultManager];
      sub_1AE23BDAC();
      v54 = sub_1AE23CCDC();

      v151 = 0;
      v55 = [v53 contentsOfDirectoryAtPath:v54 error:&v151];

      v56 = v151;
      if (v55)
      {
        v57 = sub_1AE23CFDC();
        v58 = v56;

        v59 = sub_1ADF7F1A4(v57);
      }

      else
      {
        v60 = v151;
        v61 = sub_1AE23BC9C();

        swift_willThrow();
        v59 = 0;
        v121 = 0;
      }

      swift_beginAccess();
      v62 = v19[6];
      if (*(v62 + 16) && (v63 = sub_1ADDFF050(v10), (v64 & 1) != 0))
      {
        v65 = *(*(v62 + 56) + 8 * v63);
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      swift_endAccess();
      v66 = sub_1ADF7F1A4(v65);

      v139 = v66;
      if (v59)
      {
        v67 = v66[2];
        v68 = v59[2];
        v129 = v59;
        if (v67 > v68 >> 3)
        {

          v86 = sub_1AE1B28FC(v66, v59);
        }

        else
        {
          v151 = v59;

          sub_1AE1B27D0(v66);
          v86 = v151;
        }

        v87 = 0;
        v132 = v86;
        v88 = v86 + 56;
        v89 = 1 << v86[32];
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        else
        {
          v90 = -1;
        }

        v91 = v90 & *(v86 + 7);
        v92 = (v89 + 63) >> 6;
        if (v91)
        {
          goto LABEL_56;
        }

        while (1)
        {
          v93 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            break;
          }

          if (v93 >= v92)
          {

            if (v129[2] <= v139[2] >> 3)
            {
              v151 = v139;
              sub_1AE1B27D0(v129);

              v101 = v151;
            }

            else
            {
              v101 = sub_1AE1B28FC(v129, v139);
            }

            v102 = 0;
            v139 = v101;
            v105 = v101[7];
            v104 = v101 + 7;
            v103 = v105;
            v106 = 1 << *(v104 - 24);
            if (v106 < 64)
            {
              v107 = ~(-1 << v106);
            }

            else
            {
              v107 = -1;
            }

            v108 = v107 & v103;
            v109 = (v106 + 63) >> 6;
            if ((v107 & v103) == 0)
            {
              goto LABEL_66;
            }

            while (1)
            {
              do
              {
                v108 &= v108 - 1;

                v111 = v141;
                sub_1AE23BD3C();

                v112 = v136;
                v142(v136, v111, v3);
                v113 = (*(v140 + 80) + 16) & ~*(v140 + 80);
                v114 = (v135 + v113) & 0xFFFFFFFFFFFFFFF8;
                v115 = swift_allocObject();
                v143((v115 + v113), v112, v150);
                v116 = (v115 + v114);
                *v116 = 0;
                v116[1] = 0;
                v151 = &unk_1AE254428;
                v152 = v115;
                swift_weakInit();

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
                v117 = v137;
                sub_1AE23D1FC();

                v118 = v117;
                v3 = v150;
                (*v134)(v118, v138);
                v147(v111, v3);
              }

              while (v108);
LABEL_66:
              v19 = v148;
              do
              {
                v110 = v102 + 1;
                if (__OFADD__(v102, 1))
                {
                  goto LABEL_77;
                }

                if (v110 >= v109)
                {
                  goto LABEL_6;
                }

                v108 = v104[v110];
                ++v102;
              }

              while (!v108);
              v102 = v110;
            }
          }

          v91 = *&v88[8 * v93];
          ++v87;
          if (v91)
          {
            v87 = v93;
            do
            {
LABEL_56:
              v91 &= v91 - 1;

              v94 = v141;
              sub_1AE23BD3C();

              v95 = v136;
              v142(v136, v94, v3);
              v96 = (*(v140 + 80) + 16) & ~*(v140 + 80);
              v97 = (v135 + v96) & 0xFFFFFFFFFFFFFFF8;
              v98 = swift_allocObject();
              v143((v98 + v96), v95, v150);
              *(v98 + v97) = v133;
              v151 = &unk_1AE254420;
              v152 = v98;
              swift_weakInit();
              swift_retain_n();

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
              v99 = v137;
              sub_1AE23D1FC();

              v100 = v99;
              v3 = v150;
              (*v134)(v100, v138);
              v147(v94, v3);
            }

            while (v91);
            continue;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }

      v69 = 0;
      v72 = v66[7];
      v71 = v66 + 7;
      v70 = v72;
      v73 = 1 << *(v71 - 24);
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v75 = v74 & v70;
      v76 = (v73 + 63) >> 6;
      if ((v74 & v70) != 0)
      {
        do
        {
LABEL_45:
          v75 &= v75 - 1;

          v78 = v141;
          sub_1AE23BD3C();

          v79 = v136;
          v142(v136, v78, v3);
          v80 = (*(v140 + 80) + 16) & ~*(v140 + 80);
          v81 = (v135 + v80) & 0xFFFFFFFFFFFFFFF8;
          v82 = swift_allocObject();
          v143((v82 + v80), v79, v150);
          v83 = (v82 + v81);
          *v83 = 0;
          v83[1] = 0;
          v151 = &unk_1AE254408;
          v152 = v82;
          swift_weakInit();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
          v84 = v137;
          sub_1AE23D1FC();

          v85 = v84;
          v3 = v150;
          (*v134)(v85, v138);
          v147(v78, v3);
        }

        while (v75);
      }

      v19 = v148;
      while (1)
      {
        v77 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_78;
        }

        if (v77 >= v76)
        {
          break;
        }

        v75 = v71[v77];
        ++v69;
        if (v75)
        {
          v69 = v77;
          goto LABEL_45;
        }
      }

LABEL_6:
      v10 = v144;
      v147(v144, v3);

      v15 = v125;
      v24 = v130;
    }

    v120 = sub_1ADDCD674(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v19[6] = v120;
  }

  return result;
}

uint64_t sub_1ADDD580C()
{
  v1 = sub_1AE23C88C();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C8CC();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1ADDD5C80;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_15;
  v8 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEF80(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1ADDD5AE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDD5B24()
{
  sub_1AE23D18C();
  sub_1AE23D17C();
  sub_1AE23D16C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1AE23CCDC();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    goto LABEL_7;
  }

  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v4 = [ObjCClassFromMetadata sharedApplication];
  if (!v4 || (v5 = [v4 applicationState], swift_unknownObjectRelease(), v5 != 2))
  {
LABEL_7:
    sub_1ADDD4380(sub_1ADDD4614, &block_descriptor_4);
  }
}

uint64_t sub_1ADDD5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1ADDD4380(a3, a4);
}

void sub_1ADDD5D3C(void *a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v79 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - v2;
  v70 = sub_1AE23BFEC();
  v76 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1AE23BDDC();
  v75 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - v6;
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[10];
  v11 = a1[11];
  v80 = a1;
  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xC000000000000000;
  }

  sub_1ADE73C1C(v10, v11, v8, v9);
  sub_1ADE73C1C(v10, v11, v8, v9);
  sub_1ADE73C1C(v10, v11, v8, v9);
  sub_1ADDD86D8(v12, v13);
  sub_1ADDCC35C(v12, v13);

  v14 = v81;
  v15 = sub_1ADDE70B0(v12, v13);
  if (v14)
  {
    sub_1ADE73B5C(v10, v11, v8);
    sub_1ADE73B5C(v10, v11, v8);
    sub_1ADDCC35C(v12, v13);
  }

  else
  {
    v16 = v15;
    v77 = v7;
    v78 = 0;
    sub_1ADDCC35C(v12, v13);
    v17 = v73;
    v73[3] = v16;

    if (v8)
    {

      sub_1ADDCC35C(v10, v11);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];

      v11 = 0xC000000000000000;
      sub_1ADDCC35C(0, 0xC000000000000000);

      v10 = 0;
      v9 = v8;
    }

    v18 = v79;
    v19 = v76;

    v17[4] = v8;

    sub_1ADDCC35C(v10, v11);

    v17[5] = v9;

    v20 = v80[4];
    v21 = *(v20 + 16);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA348, &qword_1AE242368);
    sub_1AE23CA3C();
    swift_endAccess();
    if (v21)
    {
      v66 = (v19 + 8);
      v65 = (v75 + 32);
      v64 = (v18 + 8);
      v22 = (v20 + 64);
      while (1)
      {
        v75 = v21;
        v23 = v17[2];
        if (!v23)
        {
          goto LABEL_34;
        }

        v81 = *(v22 - 3);
        v24 = *(v22 - 1);
        v25 = *v22;
        v74 = v22;
        v26 = *(v23 + 32);
        type metadata accessor for CRAssetRef();
        v27 = swift_allocObject();
        *(v27 + 16) = v81;
        v76 = v27;
        *(v27 + 32) = v26;
        v28 = objc_opt_self();
        swift_retain_n();
        v29 = v81;
        sub_1ADDD86D8(v81, *(&v81 + 1));
        v79 = v25;
        v80 = v24;
        sub_1ADDD86D8(v24, v25);
        sub_1ADDD86D8(v29, *(&v29 + 1));
        v30 = [v28 defaultManager];
        v31 = sub_1AE23BD1C();
        v84[0] = 0;
        LOBYTE(v25) = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v84];

        if ((v25 & 1) == 0)
        {
          break;
        }

        v32 = v84[0];
        v33 = v69;
        sub_1AE23BFDC();
        sub_1AE23BF6C();
        (*v66)(v33, v70);
        sub_1AE23BD3C();

        sub_1ADDCEE40(v26 + 56, &v82, &qword_1EB5B9DB0, &qword_1AE240B80);
        if (v83)
        {
          sub_1ADE23E6C(&v82, v84);
          v34 = v85;
          v35 = v86;
          __swift_project_boxed_opaque_existential_1(v84, v85);
          v36 = (*(v35 + 8))(v80, v79, v34, v35);
          v38 = v37;
          __swift_destroy_boxed_opaque_existential_1(v84);
        }

        else
        {
          sub_1ADDCEDE0(&v82, &qword_1EB5B9DB0, &qword_1AE240B80);
          v38 = v79;
          v36 = v80;
          sub_1ADDD86D8(v80, v79);
        }

        v39 = v68;
        v40 = v67;
        v42 = v77;
        v41 = v78;
        sub_1AE23BEDC();
        v78 = v41;
        if (v41)
        {
          goto LABEL_36;
        }

        sub_1ADDCC35C(v36, v38);
        v43 = *v65;
        (*v65)(v40, v42, v39);
        type metadata accessor for CRFileSnapshot(0);
        v44 = swift_allocObject();
        v43((v44 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v40, v39);
        v45 = swift_allocObject();
        *(v45 + 16) = v81;
        *(v45 + 32) = v44;
        v84[0] = &unk_1AE242370;
        v84[1] = v45;
        swift_weakInit();
        sub_1ADDD86D8(v29, *(&v29 + 1));

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
        v46 = v71;
        sub_1AE23D1FC();

        (*v64)(v46, v72);

        v17 = v73;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v17[6];
        v48 = v82;
        v17[6] = 0x8000000000000000;
        v50 = sub_1ADDDE7CC(v29, *(&v29 + 1));
        v51 = *(v48 + 16);
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v54 = v49;
        if (*(v48 + 24) >= v53)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ADF6EECC();
          }
        }

        else
        {
          sub_1ADF6936C(v53, isUniquelyReferenced_nonNull_native);
          v55 = sub_1ADDDE7CC(v29, *(&v29 + 1));
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_37;
          }

          v50 = v55;
        }

        v57 = v76;
        v58 = v82;
        if (v54)
        {
          *(*(v82 + 56) + 8 * v50) = v76;
        }

        else
        {
          *(v82 + 8 * (v50 >> 6) + 64) |= 1 << v50;
          *(v58[6] + 16 * v50) = v81;
          *(v58[7] + 8 * v50) = v57;
          v59 = v58[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_33;
          }

          v58[2] = v61;
          sub_1ADDD86D8(v29, *(&v29 + 1));
        }

        v22 = v74 + 5;
        v17[6] = v58;
        swift_endAccess();
        sub_1ADDCC35C(v29, *(&v29 + 1));
        sub_1ADDCC35C(v80, v79);
        v21 = v75 - 1;
        if (v75 == 1)
        {
          return;
        }
      }

      v62 = v84[0];
      sub_1AE23BC9C();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
LABEL_36:
      swift_unexpectedError();
      __break(1u);
LABEL_37:
      sub_1AE23E27C();
      __break(1u);
    }
  }
}

uint64_t sub_1ADDD66F8()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADDD6748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v59 = a4;
  v72 = type metadata accessor for Replica(0);
  v62 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C12C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  v76 = MEMORY[0x1E69E7CC8];
  v77 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB818, &qword_1AE24CF08);
  sub_1AE23CA3C();
  v70 = *(a1 + 16);
  if (v70)
  {
    v58[1] = v4;
    v73 = a2 + 32;
    v74 = a1 + 32;
    v60 = v10 + 40;
    v61 = v10 + 32;
    v65 = (v10 + 16);
    v66 = (v10 + 8);

    v15 = 0;
    v63 = a3;
    v64 = v10;
    v68 = a2;
    v69 = v9;
    v67 = a1;
    while (v15 < *(a1 + 16))
    {
      v16 = *(v74 + 8 * v15);
      sub_1AE23C11C();
      if (v15 >= *(a2 + 16))
      {
        goto LABEL_44;
      }

      v17 = *(v73 + 8 * v15);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v17 + 32;

        v20 = 0;
        v21 = 0;
        while (1)
        {
          v22 = __OFADD__(v21, 2) ? 0x7FFFFFFFFFFFFFFFLL : v21 + 2;
          if ((v21 & 0x8000000000000000) != 0)
          {
            break;
          }

          v23 = *(v17 + 16);
          if (v21 >= v23)
          {
            goto LABEL_38;
          }

          v24 = *(v19 + 8 * v21);
          v25 = v20 + v24;
          if (__OFADD__(v20, v24))
          {
            goto LABEL_39;
          }

          v26 = v21 + 1;
          if (v26 >= v23)
          {
            goto LABEL_40;
          }

          v27 = *(v19 + 8 * v26);
          v20 = v25 + v27;
          if (__OFADD__(v25, v27))
          {
            goto LABEL_41;
          }

          if (v20 < v25)
          {
            goto LABEL_42;
          }

          sub_1AE23C07C();
          v21 = v22;
          if (v22 >= v18)
          {

            a3 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

LABEL_20:
      v28 = *(a3 + 24);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v16 >= v29;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v52, v53, v54);
        swift_allocError();
        *v55 = 0xD000000000000013;
        *(v55 + 8) = 0x80000001AE25FD70;
        *(v55 + 16) = 0;
        swift_willThrow();

        (*v66)(v14, v69);
      }

      v31 = sub_1AE23BFEC();
      v32 = *(v31 - 8);
      v33 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v16;
      v34 = v71;
      (*(v32 + 16))(v71, v33, v31);
      *(v34 + *(v72 + 20)) = 0;
      v35 = v69;
      (*v65)(v75, v14, v69);
      v36 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v36;
      v39 = sub_1ADDD8A6C(v34);
      v40 = v36[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_45;
      }

      v43 = v38;
      if (v36[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
        }
      }

      else
      {
        sub_1ADDDDED0(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_1ADDD8A6C(v34);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_47;
        }

        v39 = v44;
      }

      v46 = v64;
      v47 = v78;
      if (v43)
      {
        (*(v64 + 40))(v78[7] + *(v64 + 72) * v39, v75, v35);
      }

      else
      {
        v78[(v39 >> 6) + 8] |= 1 << v39;
        sub_1ADDDE3A0(v34, v47[6] + *(v62 + 72) * v39, type metadata accessor for Replica);
        (*(v46 + 32))(v47[7] + *(v46 + 72) * v39, v75, v35);
        v48 = v47[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_46;
        }

        v47[2] = v50;
      }

      ++v15;
      sub_1ADDE4FF8(v34, type metadata accessor for Replica);
      (*v66)(v14, v35);
      v76 = v47;
      a1 = v67;
      a2 = v68;
      if (v15 == v70)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {

    v47 = v76;
LABEL_36:
    v56 = v77;
    v57 = v59;
    *v59 = v47;
    v57[1] = v56;
  }

  return result;
}

void *sub_1ADDD6E00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1ADDD6E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C46C();
    }

    else if (result == 2)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

double sub_1ADDD6F54@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000007;
  *(a1 + 8) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = xmmword_1AE241910;
  *(a1 + 56) = v1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

BOOL sub_1ADDD6F8C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1ADDD86D8(a3, a4);
          return sub_1ADDD1544(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1ADDD70F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C38C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return;
      }

      if (v9 > 5)
      {
        if (v9 <= 7)
        {
          if (v9 == 6)
          {
            v12 = v4;
            sub_1ADEDC930(6, v10, v11);
            goto LABEL_23;
          }

          v13 = v4;
          sub_1AE1CADD8(7, v10, v11);
        }

        else
        {
          if (v9 == 8)
          {
            sub_1AE23C40C();
            goto LABEL_5;
          }

          if (v9 != 9)
          {
            if (v9 != 10)
            {
              goto LABEL_5;
            }

            v12 = v4;
            sub_1AE1CAF38(10, v10, v11);
            goto LABEL_23;
          }

          v13 = v4;
          sub_1AE1CA5AC(9, v10, v11);
        }

        v4 = v13;
        sub_1AE23C4EC();
      }

      else if (v9 <= 2)
      {
        if (v9 == 1)
        {
          sub_1ADDD387C(v5, a1, a2, a3);
        }

        else if (v9 == 2)
        {
          sub_1AE1B8020(v5, a1, a2, a3);
        }
      }

      else if (v9 == 3)
      {
        sub_1ADDE60B8(v5, a1, a2, a3);
      }

      else
      {
        if (v9 != 4)
        {
          v12 = v4;
          sub_1AE1CAF38(5, v10, v11);
LABEL_23:
          v4 = v12;
          sub_1AE23C4FC();
          goto LABEL_5;
        }

        sub_1ADDE6498(a1, v5, a2, a3);
      }

LABEL_5:
      v9 = sub_1AE23C38C();
    }
  }
}

uint64_t sub_1ADDD7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *v7;
    a4(0);
    swift_allocObject();
    v15 = a6(v16);
    *v10 = v15;
  }

  return a7(v15, a1, a2, a3);
}

void sub_1ADDD73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 > 5)
    {
      if (v9 <= 7)
      {
        if (v9 == 6)
        {
          sub_1AE1BB004(a1, a2, a3, a4);
        }

        else
        {
          sub_1AE1BB240(a1, a2, a3, a4);
        }
      }

      else
      {
        switch(v9)
        {
          case 8:
            sub_1AE1BB358(a1, a2, a3, a4);
            break;
          case 9:
            sub_1ADDD3F1C(a1, a2, a3, a4);
            break;
          case 10:
            sub_1AE1BB4EC(a1, a2, a3, a4);
            break;
        }
      }
    }

    else if (v9 <= 2)
    {
      if (v9 == 1)
      {
        sub_1ADDE7B60(a1, a2, a3, a4);
      }

      else if (v9 == 2)
      {
        sub_1AE1BAC3C(a1, a2, a3, a4);
      }
    }

    else if (v9 == 3)
    {
      sub_1AE1BAE20(a1, a2, a3, a4);
    }

    else if (v9 == 4)
    {
      sub_1ADDD3718(a1, a2, a3, a4);
    }

    else
    {
      sub_1ADDD3B34(a1, a2, a3, a4);
    }
  }
}

void sub_1ADDD75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1AE1B8FE0(a2, a1, a3, a4);
        break;
      case 2:
        sub_1ADE02508(a2, a1, a3, a4);
        break;
      case 3:
        sub_1AE1B90A0(a2, a1, a3, a4);
        break;
      case 4:
        sub_1AE1B9160(a2, a1, a3, a4);
        break;
      case 5:
        sub_1AE1B9270(a2, a1, a3, a4);
        break;
      case 6:
        sub_1AE1B9330(a2, a1, a3, a4);
        break;
      case 7:
        sub_1AE1B93F8(a1, a2, a3, a4);
        break;
      case 8:
        sub_1ADDE935C(a1, a2, a3, a4);
        break;
      case 9:
        sub_1ADDE79F8(a1, a2, a3, a4);
        break;
      case 10:
        sub_1AE1B9538(a1, a2, a3, a4);
        break;
      case 11:
        sub_1AE1B9654(a1, a2, a3, a4);
        break;
      case 12:
        sub_1ADDD78E4(a1, a2, a3, a4);
        break;
      case 13:
        sub_1AE1B9778(a1, a2, a3, a4);
        break;
      case 14:
        sub_1ADDEC1F8(a1, a2, a3, a4);
        break;
      case 15:
        sub_1AE1B997C(a2, a1, a3, a4);
        break;
      case 16:
        sub_1AE1B9A34(a2, a1, a3, a4);
        break;
      case 17:
        sub_1AE1B9AFC(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1ADDD783C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDD78AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_TaggedValue._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void sub_1ADDD78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 11)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA2F4(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x5000000000000004;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE51B48(v11);
  }
}

uint64_t sub_1ADDD7A3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_CRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

double sub_1ADDD7A7C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = *a3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_1ADDD86D8(v4, v3);

  return result;
}

uint64_t sub_1ADDD7B68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;
  v9 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  v10 = qword_1ED967EE8;

  if (v10 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  sub_1AE1FEC4C(v9, a1);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v11 = *(*(v2 + v8) + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  *(a1 + *(type metadata accessor for Timestamp(0) + 20)) = v11;
  swift_beginAccess();
  type metadata accessor for Replica(0);
  sub_1ADDD8290(a1);
  swift_endAccess();
  v12 = *(v2 + v8);
  v13 = *(v12 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v12 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = v15;
  if (qword_1ED96AC50 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v16 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v16, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1ADDD7E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDD7E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD7F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDD7F78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = qword_1ED96F2A0 + 1;
  if (__OFADD__(qword_1ED96F2A0, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    ++qword_1ED96F2A0;
    v5 = sub_1AE23BFEC();
    (*(*(v5 - 8) + 16))(a2, v4, v5);
    result = type metadata accessor for Replica(0);
    *(a2 + *(result + 20)) = v3;
  }

  return result;
}

uint64_t sub_1ADDD8010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD8074(uint64_t a1)
{
  v3 = v1;
  v20 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23C12C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Timestamp(0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v21 = v11;
  v13 = sub_1ADDD8A6C(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v11;
      if (v12)
      {
        return sub_1AE23C08C();
      }

LABEL_8:
      sub_1AE23C11C();
      sub_1ADDDE3A0(a1, v6, type metadata accessor for Replica);
      sub_1ADDDE678(v13, v6, v9, v11);
      return sub_1AE23C08C();
    }

LABEL_11:
    sub_1ADDFB81C();
    v11 = v21;
    *v3 = v21;
    if (v2)
    {
      return sub_1AE23C08C();
    }

    goto LABEL_8;
  }

  sub_1ADDDDED0(v16, isUniquelyReferenced_nonNull_native);
  v11 = v21;
  v17 = sub_1ADDD8A6C(a1);
  if ((v2 & 1) == (v18 & 1))
  {
    v13 = v17;
    *v3 = v11;
    if (v2)
    {
      return sub_1AE23C08C();
    }

    goto LABEL_8;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ADDD82B0(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v14 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = v2 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20);
  sub_1ADDDA6BC(&v12, v11);
  sub_1ADDDA718(&v12, v4, v5);
  ++*(v6 + 16);
  v11[0] = v13;
  if (*(*(&v13 + 1) + 16))
  {
    sub_1ADDD7B0C(v11, &v9);
    sub_1ADDD86D8(v4, v5);
    sub_1ADDDB0F8(&v9, v4, v5);
    sub_1ADDCC35C(v9, v10);
  }

  else
  {
    sub_1ADDD7B0C(v11, &v9);
  }

  v9 = v4;
  v10 = v5;
  v8 = v11[0];
  sub_1ADDDAD3C(&v9, &v8);
}

_DWORD *sub_1ADDD83C0(char a1, unsigned int a2, void (*a3)(char *), int8x8_t a4, uint64_t a5, _DWORD *a6)
{
  v8 = a6[5];
  v9 = a6[4] | (1 << a1);
  a4.i32[0] = v9;
  v10 = vcnt_s8(a4);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  v12 = vcnt_s8(v8);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.i32[0];
  v14 = v11 << 6;
  v15 = v14 + 16 * v12.i32[0];
  result = sub_1ADDDAC74(v14 + (16 * v12.i32[0]));
  v18 = result;
  v19 = result + 8;
  result[4] = v9;
  result[5] = v8;
  v20 = result[6];
  result[7] -= v15;
  v21 = a6[4];
  v22 = a6[5];
  if (v21 == v22)
  {
    v22 = a6[4];
    goto LABEL_6;
  }

  if (!v22)
  {
LABEL_6:
    v17.i32[0] = v21;
    v24 = vcnt_s8(v17);
    v24.i16[0] = vaddlv_u8(v24);
    if (v21 == v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24.u32[0];
    }

    v26 = v11 - a2;
    if (v11 < a2)
    {
      v26 = 0;
    }

    if (v11 < v26)
    {
      __break(1u);
    }

    else
    {
      v27 = v25 - a2;
      if (v25 >= a2)
      {
        v28 = v25 - a2;
      }

      else
      {
        v28 = 0;
      }

      v29 = v25 - v28;
      if (v25 >= v28)
      {
        v30 = v19 + v20 - v14;
        if (v29 >= 1)
        {
          if ((v11 - v26) < v29)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
          result = swift_arrayInitWithCopy();
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          if (v25 == a2)
          {
LABEL_23:
            a3(&v30[64 * v27]);
            return v18;
          }

          if (v27 <= v11)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
            swift_arrayInitWithCopy();
            goto LABEL_23;
          }

          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v17.i32[0] = a6[5];
  v23 = vcnt_s8(v17);
  v23.i16[0] = vaddlv_u8(v23);
  if (v13 >= v23.i32[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    result = swift_arrayInitWithCopy();
    v21 = a6[4];
    v22 = a6[5];
    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ADDD85E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD8668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1ADDD86D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1ADDD872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDD878C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1AE23E31C();
  a3(v10, a1, a2);
  v7 = sub_1AE23E34C();

  return a4(a1, a2, v7);
}

uint64_t sub_1ADDD8820@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1AE23BB7C();
    if (v10)
    {
      v11 = sub_1AE23BBAC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1AE23BB9C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1AE23BB7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1AE23BBAC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1AE23BB9C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1ADDD8A6C(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v2 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(a1 + *(v2 + 20)));
  v3 = sub_1AE23E34C();

  return sub_1ADDD8AF0(a1, v3);
}

unint64_t sub_1ADDD8AF0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(a1 + *(v5 + 20));
    v13 = *(v6 + 72);
    do
    {
      sub_1ADDDE768(*(v2 + 48) + v13 * v10, v8);
      if (*&v8[*(v5 + 20)] == v12)
      {
        v14 = sub_1AE23BF8C();
        sub_1ADDF1F8C(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_1ADDF1F8C(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

double static CRKeyPath.unique.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v11 = sub_1ADDCC6B4(&unk_1F23BBC30);
  *(&v11 + 1) = v6;
  v7 = sub_1ADDD8E0C(v11);
  v9 = v8;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v7, v9);
  (*(v3 + 8))(v5, v2);
  result = *&v11;
  *a1 = v11;
  return result;
}

unint64_t sub_1ADDD8E0C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = sub_1AE23BFCC();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  sub_1AE23BFCC();
  return sub_1ADDD8EE0(&v10, 0x10uLL);
}

unint64_t sub_1ADDD8EE0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1ADDCC868(a1, &a1[a2]);
  }

  sub_1AE23BBCC();
  swift_allocObject();
  sub_1AE23BB6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1AE23BE2C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 Capsule.init(_:id:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v36 = a4;
  v37 = a1;
  v34 = a3;
  v35 = a5;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a2;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED96F228);
  (*(v12 + 16))(v14, v15, v11);
  type metadata accessor for ReplicaState(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v18 = type metadata accessor for Replica(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v16 + v17, 1, 1, v18);
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v14, v11);
  *(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v19(v10, 1, 1, v18);
  swift_beginAccess();
  sub_1ADDD85E4(v10, v16 + v17);
  swift_endAccess();
  v20 = sub_1ADDD94CC(v16);
  v22 = v33;
  v21 = v34;
  (*(v33 + 16))(v7, v37, v34);
  swift_retain_n();
  v23 = v38;
  sub_1ADDD86D8(v38, *(&v38 + 1));
  sub_1ADDD9FE4(v7, v21, &v41);
  v24 = v41;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v27 = sub_1ADDD9ECC(v25);
  sub_1ADDDA5BC(v25);
  sub_1ADDD9ECC(v25);

  v28 = MEMORY[0x1E69E7CC8];
  swift_bridgeObjectRelease_n();
  *&v41 = v24;
  *(&v41 + 1) = 1;
  v42 = v28;
  v43 = v28;
  v44 = v26;
  v45 = v27;
  v40 = v38;
  swift_beginAccess();
  sub_1ADDD86D8(v23, *(&v23 + 1));
  sub_1ADDD82B0(&v41, &v40);
  swift_endAccess();

  sub_1ADDCC35C(v40, *(&v40 + 1));

  swift_beginAccess();

  sub_1ADDD86D8(v23, *(&v23 + 1));
  sub_1ADDE0110(&v39, v23, *(&v23 + 1));
  swift_endAccess();

  sub_1ADDCC35C(v39, *(&v39 + 1));
  v29 = v37;
  LOBYTE(v28) = (*(*(*(v36 + 16) + 8) + 48))(v21);
  v41 = v38;
  v39 = v38;
  sub_1ADDD86D8(v23, *(&v23 + 1));
  sub_1ADDD86D8(v23, *(&v23 + 1));
  sub_1ADEA9BC0((v28 & 1) == 0, 1, &v41, &v39);

  (*(v22 + 8))(v29, v21);
  sub_1ADDE158C(v39, *(&v39 + 1));
  sub_1ADDE158C(v41, *(&v41 + 1));
  v30 = v35;
  result = v38;
  *v35 = v38;
  v30[1] = result;
  v30[2].n128_u64[0] = v20;
  return result;
}

uint64_t sub_1ADDD94CC(uint64_t a1)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ADDD98A4(MEMORY[0x1E69E7CC0]);
  v10 = &v8[v6[5]];
  *v10 = v11;
  *(v10 + 1) = v12;
  *(v10 + 2) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AE2418F0;
  v15 = sub_1ADDD9BC0(v9);
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = v15;
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  *&v8[v6[6]] = v14;
  v18 = *sub_1AE23C1EC();
  v19 = &v8[v6[7]];
  *v19 = v18;
  *(v19 + 1) = 0;
  *(v19 + 2) = v18;

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  type metadata accessor for CapsuleRef(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  *(v20 + v21) = sub_1ADDD9D48(v9);
  v22 = (v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  v23 = MEMORY[0x1E69E7CC8];
  *v22 = MEMORY[0x1E69E7CC8];
  v22[1] = v23;
  (*(v3 + 16))(v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v5, v2);
  *(v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = a1;
  sub_1ADECD9E8(v8, v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references, type metadata accessor for PartiallyOrderedReferenceMap);
  v24 = sub_1ADDD9ECC(v9);
  (*(v3 + 8))(v5, v2);
  sub_1ADDD872C(v8, type metadata accessor for PartiallyOrderedReferenceMap);
  *(v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = v24;
  *(v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = MEMORY[0x1E69E7CD0];
  *(v20 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = 0;
  return v20;
}

void sub_1ADDD98A4(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v52 = v2;
  v53 = 0;
  v3 = *(a1 + 16);

  if (v3)
  {
    v16[1] = v2;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v33 = v4[2];
      v34 = v5;
      v6 = v4[1];
      v31 = *v4;
      v32 = v6;
      v24 = *(&v34 + 1);
      v7 = v34;
      v8 = v33;
      v9 = v6;
      v10 = v31;
      sub_1ADDCEE40(&v31, &v45, &qword_1EB5BA9E0, &qword_1AE245680);
      if (!v8)
      {
        break;
      }

      v17 = v4;
      v18 = v3;
      v35[0] = v10;
      v25 = v8;
      v26 = v9;
      v35[1] = v9;
      v35[2] = v8;
      v20 = *(&v8 + 1);
      v11 = v7;
      v36 = v7;
      v12 = v24;
      v37 = v24;
      sub_1AE23E31C();
      sub_1ADDCEE40(v35, &v45, &qword_1EB5BA9E0, &qword_1AE245680);
      sub_1AE23BECC();
      v23 = sub_1AE23E34C();
      sub_1ADDCC35C(v10, *(&v10 + 1));

      v21 = *(&v9 + 1);
      v22 = v16;
      v38 = v10;
      v39 = v26;
      v40 = *(&v9 + 1);
      v41 = v25;
      v42 = v20;
      v43 = v11;
      v44 = v12;
      v27 = v10;
      *&v28 = v26;
      *(&v28 + 1) = *(&v9 + 1);
      *&v29 = v25;
      *(&v29 + 1) = v20;
      v14 = v20;
      *&v30 = v11;
      *(&v30 + 1) = v12;
      MEMORY[0x1EEE9AC00](v13);
      v16[-2] = &v27;
      v15 = *(&v27 + 1);
      v19 = v27;
      sub_1ADDCEE40(&v38, &v31, &qword_1EB5BA9E0, &qword_1AE245680);
      sub_1ADDD86D8(v10, *(&v10 + 1));

      LODWORD(v23) = sub_1AE033684(0, v19, v15, v23, sub_1ADECDAAC, &v16[-4]);
      v45 = v10;
      v46 = v26;
      v47 = v21;
      v48 = v25;
      v49 = v14;
      v50 = v11;
      v51 = v12;
      sub_1ADDCEDE0(&v45, &qword_1EB5BA9E0, &qword_1AE245680);
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      sub_1ADDCEDE0(&v31, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(v10, *(&v10 + 1));
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v4 = v17 + 4;
      v3 = v18 - 1;
    }

    while (v18 != 1);
  }
}

uint64_t sub_1ADDD9BC0(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v13 = v2;
  v14 = 0;
  v3 = *(a1 + 16);

  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 40);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1AE23E31C();
    sub_1ADDD86D8(v6, v5);
    sub_1ADDD86D8(v6, v5);
    sub_1AE23BECC();
    v7 = sub_1AE23E34C();
    sub_1ADDCC35C(v6, v5);
    v11 = v6;
    v12 = v5;
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = &v11;
    sub_1ADDDB234(0, v11, v12, v7, sub_1ADE1B14C, v10);
    sub_1ADDCC35C(v11, v12);
    v4 += 2;
    --v3;
  }

  while (v3);
  return v13;
}

uint64_t type metadata accessor for CapsuleRef(uint64_t a1)
{
  result = qword_1ED96AE90;
  if (!qword_1ED96AE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ADDD9D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
    v3 = sub_1AE23DCDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ADDCEE40(v4, &v10, &qword_1EB5BA078, &qword_1AE241858);
      result = sub_1ADDDE7CC(v10, *(&v10 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_1ADDEE390(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDD9E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADDD9ECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1ADDD86D8(v5, v6);

      result = sub_1ADDDE7CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDD9FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRDTBoxHelper(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  swift_allocObject();
  v12 = sub_1ADDDA40C(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t type metadata accessor for PartiallyOrderedReferenceMap(uint64_t a1)
{
  result = qword_1ED96AE38;
  if (!qword_1ED96AE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADDDA274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CROrderedSet.DeduplicatedInfo(255, *(a4 + 16), *(a4 + 24), *(a4 + 32));
    v7 = sub_1AE23D7CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADDDA344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for CROrderedSet.DeduplicatedInfo(255, *(a3 + 16), *(a3 + 24), *(a3 + 32));
    v8 = sub_1AE23D7CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

char *sub_1ADDDA40C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = *(v3 + 296);
  v11 = *(v4 - 8);
  v12 = *(v11 + 56);
  v12(&v1[v10], 1, 1, v4, v7);
  (*(v11 + 32))(v9, a1, v4);
  (v12)(v9, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v10], v9, v5);
  swift_endAccess();
  return v1;
}

unint64_t sub_1ADDDA5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);
      result = sub_1ADDDE7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDDA718(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[1];
  v55 = *a1;
  v56 = v6;
  v57 = a1[2];
  v53 = a2;
  v54 = a3;
  sub_1AE23E31C();
  sub_1AE23BECC();
  v7 = sub_1AE23E34C();
  v51 = &v53;
  v52 = &v55;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v11 = sub_1ADDDAB3C(0, a2, a3, v7, &v9[2], &v9[4], v10);
  v13 = v11 >> 29;
  if (v11 >> 29 <= 1)
  {
    if (!v13)
    {
      v22 = HIDWORD(v11);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v3 + 8);
        v24 = sub_1ADDFB3E0();
        v25 = sub_1ADDF59C8(v24, v9, v23);
        v27 = v26;

        *v3 = v25;
        *(v3 + 8) = v27;
        v9 = v25;
      }

      goto LABEL_18;
    }

    v28 = HIDWORD(v11);
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v11;
      swift_beginAccess();
      if (v9[3].i32[1] >= 0x40u)
      {
        v44 = sub_1ADE1A914(v28, v29, &v9[2], &v9[4]);
        v46 = v53;
        v45 = v54;
        v47 = v56;
        v48 = v57;
        v49 = v55;
        *v44 = v53;
        *(v44 + 1) = v45;
        *(v44 + 1) = v49;
        *(v44 + 2) = v47;
        *(v44 + 3) = v48;
        ++*(v3 + 8);
        sub_1ADDD86D8(v46, v45);
      }

      else
      {
        sub_1ADE1A674(v29, v28, sub_1ADDD7A74, v50, v30);
      }

      goto LABEL_22;
    }

    v39 = sub_1ADDD83C0(v11, HIDWORD(v11), sub_1ADDD7A74, v12, v50, v9);
LABEL_21:
    v41 = v39;
    v42 = v40;

    *v3 = v41;
    *(v3 + 8) = v42;
    goto LABEL_22;
  }

  if (v13 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, 0, v11, HIDWORD(v11), v7, sub_1ADDD7A74, v50);
    goto LABEL_22;
  }

  if (v13 != 3)
  {
    if (v11 == 0x80000000)
    {
      sub_1AE034414(isUniquelyReferenced_nonNull_native, sub_1ADDD7A74, v50);
      goto LABEL_22;
    }

    v37 = *(v3 + 8);
    v38 = v9[4];

    v39 = sub_1AE033D0C(0, sub_1ADDD7A74, v50, v7, v9, v37, v38);
    goto LABEL_21;
  }

  v14 = HIDWORD(v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v3 + 8);
    v16 = sub_1ADDFB3E0();
    v17 = sub_1ADDF59C8(v16, v9, v15);
    v19 = v18;

    *v3 = v17;
    *(v3 + 8) = v19;
    v9 = v17;
  }

  if (sub_1ADE1ACAC(&v9[4], v14, 0, a2, a3, v7, sub_1ADDD7A74, v50))
  {
    ++*(v3 + 8);
LABEL_22:
    v36 = 1;
    goto LABEL_23;
  }

  v9 = v20;
  LODWORD(v22) = v21;
LABEL_18:
  v31 = v9 + v9[3].u32[0];
  v33 = *(&v56 + 1);
  v32 = v56;
  v34 = v57;
  v35 = &v31[64 * ~v22];
  *(v35 + 3) = v55;
  *(v35 + 4) = __PAIR128__(v33, v32);
  *(v35 + 5) = v34;

  v36 = 0;
LABEL_23:

  return v36;
}

uint64_t sub_1ADDDAB3C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int *a5, void *a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if ((v8 & *a5) != 0)
  {
    v9 = sub_1AE033244(a1, a2, a3, a4, a5, a6);
    v11 = 0x80000000;
    if (v9 != 1)
    {
      v11 = 2147483649;
    }

    if (v9)
    {
      return v11;
    }

    else
    {
      return (v10 << 32) | 0xFF;
    }
  }

  else
  {
    v13 = (a4 >> a1) & 0x1F;
    v14 = 1 << (a4 >> a1);
    if ((v7 & v14) != 0)
    {
      a7.i32[0] = v7 & (v14 - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      v17 = (&a6[8 * ~v15.u32[0]] + a5[2]);
      v18 = *v17;
      v19 = v17[1];
      v20 = a2;
      sub_1ADDD86D8(*v17, v19);
      LOBYTE(v20) = sub_1ADDD6F8C(v18, v19, v20, a3);
      sub_1ADDCC35C(v18, v19);
      if (v20)
      {
        return v13 | (v16 << 32);
      }

      else
      {
        return v13 | (v16 << 32) | 0x40000000;
      }
    }

    else
    {
      v22 = v14 - 1;
      if ((v8 & v14) != 0)
      {
        a7.i32[0] = v8 & v22;
        v23 = vcnt_s8(a7);
        v23.i16[0] = vaddlv_u8(v23);
        return v13 | (v23.u32[0] << 32) | 0x60000000;
      }

      else
      {
        a7.i32[0] = v7 & v22;
        v24 = vcnt_s8(a7);
        v24.i16[0] = vaddlv_u8(v24);
        return v13 | (v24.u32[0] << 32) | 0x20000000;
      }
    }
  }
}

int64_t sub_1ADDDAC74(uint64_t a1)
{
  if (a1 + 63 >= 64 && ((1 << -__clz(((a1 + 63) >> 6) - 1)) - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD18, &qword_1AE251DE8);
  v1 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v1);
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 17;
  }

  *(v1 + 16) = 0;
  v4 = ((v1 + 32 + (v3 & 0xFFFFFFF0)) & 0xFFFFFFFFFFFFFFF8) - (v1 + 32);
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    *(v1 + 24) = v4;
    *(v1 + 28) = v4;
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1ADDDAD3C(uint64_t *a1, uint64_t *a2)
{
  v35 = *a1;
  v36 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v33 = *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 24);
  v34 = v2;
  v5 = *(v2 + v33);
  v6 = *(v5 + 2);
  v37 = v3;

  v38 = v4;

  v7 = 0;
  v8 = v6;
  while (2)
  {
    v9 = 40 * v8 + 40;
    v10 = v8 + 1;
    do
    {
      v11 = v10 - 1;
      if (v10 == 1)
      {

        v11 = v35;
        v9 = v36;
        sub_1ADDD86D8(v35, v36);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!*(v5 + 2))
          {
LABEL_38:
            __break(1u);
            return;
          }

LABEL_24:
          v27 = v11;
          v28 = v9;
          goto LABEL_25;
        }

LABEL_37:
        v5 = sub_1ADDFC33C(v5);
        if (!*(v5 + 2))
        {
          goto LABEL_38;
        }

        goto LABEL_24;
      }

      if (v6 < v11)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v10 - 2 >= *(v5 + 2))
      {
        goto LABEL_33;
      }

      v12 = *&v5[v9 - 48];
      v9 -= 40;
      --v10;
    }

    while (!v12);
    if (__OFADD__(v7++, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_28;
    }

    v14 = *&v5[v9];

    sub_1ADF637A8(v38, v14);
    if (v15)
    {
      sub_1ADE42CB8(v12, v14);
    }

    else
    {
      v8 = v11 - 1;
      sub_1ADF637A8(v37, v12);
      v17 = v16;
      sub_1ADE42CB8(v12, v14);
      if ((v17 & 1) == 0)
      {
        continue;
      }
    }

    break;
  }

  if (*(v5 + 2) != v11)
  {
    sub_1ADDD86D8(v35, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1ADDFC33C(v5);
    }

    if (v11 < *(v5 + 2))
    {
      v27 = v35;
      v28 = v36;
LABEL_25:
      sub_1ADDDB0F8(v39, v27, v28);
      sub_1ADDCC35C(v39[0], v39[1]);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v35;
  *(inited + 40) = v36;
  sub_1ADDD86D8(v35, v36);
  v19 = sub_1ADDD9BC0(inited);
  v21 = v20;
  v23 = v22;
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1ADDFC3E4(0, *(v5 + 2) + 1, 1, v5);
  }

  v25 = *(v5 + 2);
  v24 = *(v5 + 3);
  if (v25 >= v24 >> 1)
  {
    v5 = sub_1ADDFC3E4((v24 > 1), v25 + 1, 1, v5);
  }

  *(v5 + 2) = v25 + 1;
  v26 = &v5[40 * v25];
  *(v26 + 4) = 0;
  *(v26 + 5) = 0;
  *(v26 + 6) = v19;
  *(v26 + 7) = v21;
  *(v26 + 8) = v23;
LABEL_26:
  *(v34 + v33) = v5;
  if (v7 < 21)
  {
    return;
  }

  if (qword_1EB5B94F8 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v29 = sub_1AE23C78C();
  __swift_project_value_buffer(v29, qword_1EB5D74A8);
  v30 = sub_1AE23C76C();
  v31 = sub_1AE23D61C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v7;
    _os_log_impl(&dword_1ADDCA000, v30, v31, "Excessive insertion comparisons: %ld", v32, 0xCu);
    MEMORY[0x1B26FDA50](v32, -1, -1);
  }
}

uint64_t sub_1ADDDB0F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AE23E31C();
  sub_1ADDD86D8(a2, a3);
  sub_1AE23BECC();
  v8 = sub_1AE23E34C();
  sub_1ADDCC35C(a2, a3);
  v19 = a2;
  v20 = a3;
  v18[2] = &v19;
  sub_1ADDD86D8(a2, a3);
  v9 = sub_1ADDDB234(0, a2, a3, v8, sub_1ADDDB928, v18);
  v11 = v10;
  v13 = v12;
  sub_1ADDCC35C(v19, v20);
  if (v9)
  {
    ++*(v4 + 16);
  }

  else
  {
    v14 = v11 + *(v11 + 24) + 16 * ~v13;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    sub_1ADDD86D8(v15, v16);
    sub_1ADDCC35C(a2, a3);
    a2 = v15;
    a3 = v16;
  }

  *a1 = a2;
  a1[1] = a3;
  return v9 & 1;
}

uint64_t sub_1ADDDB234(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *), uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    v16 = sub_1ADDDF64C(a1, a2, a3, a4, &v15[2], &v15[4], v14);
    v17 = v16 >> 29;
    if (v16 >> 29 <= 1)
    {
      if (v17)
      {
        v22 = v16;
        v23 = HIDWORD(v16);
        swift_beginAccess();
        if (v15[3].i32[1] >= 0x10u)
        {
          v29 = sub_1ADDE15A0(v23, v22, &v15[2], &v15[4]);
          a5(v29);
          ++*(v6 + 8);
        }

        else
        {
          sub_1ADE1B150(v22, v23, a5, a6);
        }

        return 1;
      }

      return 0;
    }

    else if (v17 == 2)
    {
      v18 = 1;
      sub_1ADE1B3EC(1, a1, v16, HIDWORD(v16), a4, a5, a6);
    }

    else if (v17 == 3)
    {
      if (sub_1ADDDB234((a1 + 5), a2, a3, a4, a5, a6))
      {
        ++*(v6 + 8);
        return 1;
      }

      return 0;
    }

    else
    {
      if (v16 == 0x80000000)
      {
        swift_beginAccess();
        v21 = v15[3].u32[1];
        if (v21 > 0xF)
        {
          v30 = v15[2].u32[0];
          v31 = vcnt_s8(v30);
          v31.i16[0] = vaddlv_u8(v31);
          if (v30 == v15[2].i32[1])
          {
            v32 = v15[2].i32[0];
          }

          else
          {
            v32 = v31.i32[0];
          }

          v15[3].i32[1] = v21 - 16;
          v33 = &v15[2] + v15[3].u32[0] + -16 * v32;
          v15[2].i32[0] = v30 + 1;
          v15[2].i32[1] = v30 + 1;
          a5(v33);
          ++*(v6 + 8);
        }

        else
        {
          sub_1AE034ECC(a5, a6, sub_1AE03510C, sub_1AE034F44);
        }

        return 1;
      }

      v24 = *(v6 + 8);
      v25 = v15[4];

      v26 = sub_1AE033CB0(a1, a5, a6, a4, v15, v24, v25);
      v28 = v27;

      *v6 = v26;
      *(v6 + 8) = v28;
      return 1;
    }
  }

  else
  {
    sub_1ADDDB560(a1, a2, a3, a4, a5, a6, *v6, *(v6 + 8), v35);
    v18 = v35[0];
    v19 = v36;
    v20 = v37;

    *v6 = v19;
    *(v6 + 8) = v20;
  }

  return v18;
}

unint64_t sub_1ADDDB560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, int8x8_t *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a7;
  v17 = a7 + 4;

  result = sub_1ADDDF64C(a1, a2, a3, a4, &v10[2], v17, v18);
  v20 = result;
  v21 = result >> 29;
  if (result >> 29 <= 1)
  {
    if (v21)
    {

      a3 = HIDWORD(v20);
      result = sub_1ADDDFEFC(v20, HIDWORD(v20), a5, v41, a6, v10);
      v10 = result;
      a8 = v42;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = HIDWORD(result);
      v28 = v10;
    }
  }

  else if (v21 == 2)
  {

    v33 = (&v17[2 * ~HIDWORD(v20)] + v10[3].u32[0]);
    v34 = *v33;
    v35 = v33[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v34, v35);
    sub_1AE23BECC();
    a3 = sub_1AE23E34C();
    sub_1ADDCC35C(v34, v35);
    result = sub_1AE034564(a1, v20, HIDWORD(v20), a3, a4, a5, a6, v10);
    v10 = result;
    a8 = v36;
    v28 = v37;
    LODWORD(a3) = v38;
    LOBYTE(v21) = 1;
  }

  else if (v21 == 3)
  {

    v46 = HIDWORD(v20);
    v22 = &v17[2 * HIDWORD(v20)];
    v24 = *v22;
    v23 = v22[1];

    sub_1ADDDB560((a1 + 5), a2, a3, a4, a5, a6, v24, v23, v48);
    v25 = v48[0];
    v26 = v49;
    v27 = v50;
    v28 = v51;
    LODWORD(a3) = v52;

    if (v25)
    {
      v29 = sub_1ADDFB3E0();
      v10 = sub_1ADDFA324(v29, v10, a8);
      v31 = v30;
      v32 = &v10[2 * v46];
      v32[4] = v26;
      v32[5] = v27;

      a8 = v31 + 1;
      LOBYTE(v21) = 1;
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    if (v20 == 0x80000000)
    {
      result = sub_1AE034BB0(a5, a6, v10, a8, sub_1AE0352A4, sub_1AE034F44);
      v10 = result;
      a8 = v39;
      LODWORD(a3) = v40;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = v10[4];

      result = sub_1AE033CB0(a1, a5, a6, a4, v10, a8, a3);
      v10 = result;
      a8 = v43;
      v28 = v44;
      LOBYTE(v21) = 1;
      LODWORD(a3) = v45;
    }
  }

  *a9 = v21;
  *(a9 + 8) = v10;
  *(a9 + 16) = a8;
  *(a9 + 24) = v28;
  *(a9 + 32) = a3;
  return result;
}

int64_t sub_1ADDDB860(uint64_t a1)
{
  if (a1 + 15 >= 16 && ((1 << -__clz(((a1 + 15) >> 4) - 1)) - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE0, &qword_1AE251D90);
  v1 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v1);
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 17;
  }

  *(v1 + 16) = 0;
  v4 = ((v1 + 32 + (v3 & 0xFFFFFFF0)) & 0xFFFFFFFFFFFFFFF8) - (v1 + 32);
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    *(v1 + 24) = v4;
    *(v1 + 28) = v4;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDDB92C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  result = sub_1AE23D9DC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v18, v19);
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_1ADDDBB68(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC2C98(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1ADEC6D1C();
        goto LABEL_68;
      }

      sub_1ADDDB92C(v8 + 1);
    }

    v10 = *v4;
    sub_1AE23E31C();
    sub_1AE23BECC();
    v11 = sub_1AE23E34C();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = v11 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (a1)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(a1), a1);
      v46 = v18;
      v45 = HIDWORD(a1) - a1;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = a1;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v36 = sub_1AE23BBAC();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_1ADDD86D8(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v37 = sub_1AE23BBAC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_1AE23BB9C();
              a1 = v42;
              a2 = v43;
              sub_1ADDD8820(v35, v42, v43, v51);
              sub_1ADDCC35C(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_1ADDD86D8(v21, v20);
            v14 = v47;
          }

          sub_1ADDD8820(v51, a1, a2, &v50);
          sub_1ADDCC35C(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        sub_1AE23E26C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = a1;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
}

uint64_t sub_1ADDDBFE0(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA10, &qword_1AE245698);
  sub_1AE23CA3C();
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v29 = a1;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_11:
    v11 = (*(v29 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    sub_1ADDD86D8(*v11, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v30 = *v2;
    v16 = sub_1ADDDE7CC(v13, v12);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }

    v22 = v17;
    if (v15[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_1ADF6F1AC();
        v16 = v27;
      }
    }

    else
    {
      sub_1ADE1D52C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1ADDDE7CC(v13, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    if (v22)
    {
      *(v30[7] + 8 * v16) = 0;
      sub_1ADDCC35C(v13, v12);
    }

    else
    {
      v30[(v16 >> 6) + 8] |= 1 << v16;
      v24 = (v30[6] + 16 * v16);
      *v24 = v13;
      v24[1] = v12;
      *(v30[7] + 8 * v16) = 0;
      v25 = v30[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v30[2] = v26;
    }

    *v2 = v30;
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ADDDC21C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return v6;
}

uint64_t sub_1ADDDC28C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 296);
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  v11 = *(v5 - 8);
  result = (*(v11 + 48))(v9, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 48))(a1, v5);
    return (*(v11 + 8))(v9, v5);
  }

  return result;
}

uint64_t CROrderedSet.visitReferences(_:)(void *a1, uint64_t *a2)
{
  v3 = type metadata accessor for CRSet(0, a2[2], a2[3], a2[4]);

  CRSet.visitReferences(_:)(a1, v3);
}

void CRSet.visitReferences(_:)(void *a1, uint64_t a2)
{
  v23[0] = a2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = v23 - v9;
  v10 = *v2;
  swift_beginAccess();
  v11 = *(v10 + 40);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v23[1] = v5 + 32;
  v23[2] = v5 + 16;
  v25 = v5;
  v26 = (v5 + 8);
  v27 = v11;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v20 = v24;
      v19 = v25;
      (*(v25 + 16))(v24, *(v27 + 48) + *(v25 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v4);
      (*(v19 + 32))(v7, v20, v4);
      v21 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v21);
      if ((*(v22 + 8))(v21, v22))
      {
        break;
      }

      v15 &= v15 - 1;
      (*(*(*(v23[0] + 24) + 8) + 48))(a1, v4);
      (*v26)(v7, v4);
      v17 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*v26)(v7, v4);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_12;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1ADDDC764(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(*(a2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = a1[3];
      v11 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      v14 = *(v11 + 8);

      if (v14(v12, v11))
      {
        break;
      }

      v6 &= v6 - 1;
      (*(*v10 + 128))(a1);

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADDDC8DC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      sub_1ADDD86D8(*v11, v13);
      sub_1ADDDCE7C(v7, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v37;
      v38 = v16;
      v17 = sub_1ADDDE7CC(v12, v13);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        break;
      }

      v23 = v18;
      if (v16[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v17;
          sub_1ADF6F1AC();
          v17 = v32;
          v16 = v38;
        }
      }

      else
      {
        sub_1ADE1D52C(v22, isUniquelyReferenced_nonNull_native);
        v16 = v38;
        v17 = sub_1ADDDE7CC(v12, v13);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_25;
        }
      }

      *v37 = v16;
      if ((v23 & 1) == 0)
      {
        v16[(v17 >> 6) + 8] |= 1 << v17;
        v25 = (v16[6] + 16 * v17);
        *v25 = v12;
        v25[1] = v13;
        *(v16[7] + 8 * v17) = 0;
        v26 = v16[2];
        v21 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v21)
        {
          goto LABEL_24;
        }

        v16[2] = v27;
        v28 = v17;
        sub_1ADDD86D8(v12, v13);
        v17 = v28;
      }

      v29 = v16[7];
      v30 = *(v29 + 8 * v17);
      v21 = __OFADD__(v30, v14);
      v31 = v30 + v14;
      if (v21)
      {
        goto LABEL_23;
      }

      v5 &= v5 - 1;
      *(v29 + 8 * v17) = v31;
      sub_1ADDCC35C(v12, v13);
      v7 = sub_1ADF98C94;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v33 = swift_isUniquelyReferenced_nonNull_native();
        v38 = v37[1];
        sub_1ADDDCB94(a2, sub_1ADF9811C, 0, v33, &v38);

        result = sub_1ADDDCE7C(v7, 0);
        v37[1] = v38;
        return result;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDDCB94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (1)
  {
    v17 = v9;
    v18 = v11;
    if (!v9)
    {
      break;
    }

LABEL_13:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v17)));
    v21 = (*(a1 + 56) + v20);
    v23 = *v21;
    v22 = v21[1];
    v48 = *(*(a1 + 48) + v20);
    v49 = v23;
    v50 = v22;
    sub_1ADDD86D8(v48, *(&v48 + 1));

    a2(&v51, &v48);
    sub_1ADDCC35C(v48, *(&v48 + 1));

    v24 = v53;
    if (!v53)
    {
LABEL_23:
      sub_1ADDDCE74(a1);
    }

    v26 = v51;
    v25 = v52;
    v47 = v54;
    v27 = *v55;
    v29 = sub_1ADDDE7CC(v51, v52);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ADF703A0();
      }
    }

    else
    {
      sub_1ADF6AF70(v32, a4 & 1);
      v34 = sub_1ADDDE7CC(v26, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_28;
      }

      v29 = v34;
    }

    v46 = (v17 - 1) & v17;
    v36 = *v55;
    if (v33)
    {
      v37 = (v36[7] + 16 * v29);
      v38 = *v37;
      v39 = v37[1];

      sub_1ADDCC35C(v26, v25);
      if (__OFADD__(v39, v47))
      {
        goto LABEL_26;
      }

      v40 = (v36[7] + 16 * v29);
      *v40 = v38;
      v40[1] = v39 + v47;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v12 = (v36[6] + 16 * v29);
      *v12 = v26;
      v12[1] = v25;
      v13 = (v36[7] + 16 * v29);
      *v13 = v24;
      v13[1] = v47;
      v14 = v36[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_27;
      }

      v36[2] = v16;
    }

    a4 = 1;
    v11 = v18;
    v10 = v42;
    v6 = v43;
    v9 = v46;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_23;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDDCE80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ADDDCE90(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      sub_1ADDD86D8(*v11, v13);
      sub_1ADDDCE7C(v7, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v36;
      v17 = sub_1ADDDE7CC(v12, v13);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        break;
      }

      v23 = v18;
      if (v16[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v17;
          sub_1ADF6F1AC();
          v17 = v32;
        }
      }

      else
      {
        sub_1ADE1D52C(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_1ADDDE7CC(v12, v13);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_27;
        }
      }

      *v36 = v16;
      if ((v23 & 1) == 0)
      {
        v16[(v17 >> 6) + 8] |= 1 << v17;
        v25 = (v16[6] + 16 * v17);
        *v25 = v12;
        v25[1] = v13;
        *(v16[7] + 8 * v17) = 0;
        v26 = v16[2];
        v21 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v21)
        {
          goto LABEL_26;
        }

        v16[2] = v27;
        v28 = v17;
        sub_1ADDD86D8(v12, v13);
        v17 = v28;
      }

      v29 = v16[7];
      v30 = *(v29 + 8 * v17);
      v21 = __OFSUB__(v30, v14);
      v31 = v30 - v14;
      if (v21)
      {
        goto LABEL_25;
      }

      v5 &= v5 - 1;
      *(v29 + 8 * v17) = v31;
      sub_1ADDCC35C(v12, v13);
      v7 = sub_1ADF98C94;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_1ADDDD108(a2);

    return sub_1ADDDCE7C(v7, 0);
  }

  return result;
}

uint64_t sub_1ADDDD108(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v55 = v7;
  v56 = v1;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
LABEL_36:
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v11 = (v10 << 10) | (16 * __clz(__rbit64(v6)));
        v12 = (*(a1 + 48) + v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = (*(a1 + 56) + v11);
        v16 = *v15;
        v17 = v15[1];
        sub_1ADDD86D8(*v12, v13);

        if (!v16)
        {
          goto LABEL_36;
        }

        v6 &= v6 - 1;
        if (!*(*v2 + 16) || (sub_1ADDDE7CC(v14, v13), (v18 & 1) == 0))
        {
          v31 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_40;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v2;
          v34 = isUniquelyReferenced_nonNull_native;
          v35 = *v33;
          v59 = *v33;
          v36 = sub_1ADDDE7CC(v14, v13);
          v38 = v35[2];
          v39 = (v37 & 1) == 0;
          v27 = __OFADD__(v38, v39);
          v40 = v38 + v39;
          if (v27)
          {
            goto LABEL_41;
          }

          v41 = v37;
          if (v35[3] >= v40)
          {
            if ((v34 & 1) == 0)
            {
              v50 = v36;
              sub_1ADF703A0();
              v36 = v50;
            }
          }

          else
          {
            sub_1ADF6AF70(v40, v34);
            v36 = sub_1ADDDE7CC(v14, v13);
            if ((v41 & 1) != (v42 & 1))
            {
              goto LABEL_45;
            }
          }

          v2 = v56;
          if (v41)
          {
            v9 = (v59[7] + 16 * v36);
            *v9 = v16;
            v9[1] = v31;

            sub_1ADDCC35C(v14, v13);
          }

          else
          {
            v59[(v36 >> 6) + 8] |= 1 << v36;
            v43 = (v59[6] + 16 * v36);
            *v43 = v14;
            v43[1] = v13;
            v44 = (v59[7] + 16 * v36);
            *v44 = v16;
            v44[1] = v31;

            v45 = v59[2];
            v27 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v27)
            {
              goto LABEL_42;
            }

            v59[2] = v46;
          }

          *v56 = v59;
          v8 = v10;
          v7 = v55;
          if (!v6)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v19 = swift_isUniquelyReferenced_nonNull_native();
        v20 = v2;
        v21 = v19;
        v22 = *v20;
        v58 = *v20;
        v23 = sub_1ADDDE7CC(v14, v13);
        v25 = *(v22 + 16);
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_43;
        }

        if (*(v22 + 24) >= v28)
        {
          if ((v21 & 1) == 0)
          {
            v54 = v23;
            v51 = v24;
            sub_1ADF703A0();
            v23 = v54;
            if ((v51 & 1) == 0)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v53 = v24;
          sub_1ADF6AF70(v28, v21);
          v23 = sub_1ADDDE7CC(v14, v13);
          v30 = v29 & 1;
          v24 = v53;
          if ((v53 & 1) != v30)
          {
            goto LABEL_45;
          }
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_30:
        v47 = (*(v58 + 56) + 16 * v23);
        if (!*v47)
        {
          goto LABEL_35;
        }

        v48 = v47[1];
        v27 = __OFSUB__(v48, v17);
        v49 = v48 - v17;
        if (v27)
        {
          goto LABEL_44;
        }

        v47[1] = v49;

        sub_1ADDCC35C(v14, v13);

        *v56 = v58;
        v2 = v56;
        v8 = v10;
        if (!v6)
        {
          goto LABEL_8;
        }

LABEL_7:
        v10 = v8;
      }
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
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t (*sub_1ADDDD4A0(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v7 = *a2;
  v6 = a2[1];
  type metadata accessor for PartiallyOrderedReferenceMap(0);
  *(v5 + 32) = sub_1ADDDD53C(v5, v7, v6);
  return sub_1ADDDD89C;
}

uint64_t (*sub_1ADDDD53C(uint64_t **a1, uint64_t a2, unint64_t a3))()
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xE0uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[27] = v3;
  ++v3[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v10 = sub_1AE23E34C();
  v11 = *v4;
  swift_beginAccess();
  v12 = *(v11 + 16) != 0;
  *v9 = a2;
  *(v9 + 8) = a3;
  sub_1ADDD86D8(a2, a3);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 64) = v10;
  *(v9 + 72) = 0;
  *(v9 + 80) = v11;
  *(v9 + 88) = 0;
  *(v9 + 92) = 0;
  *(v9 + 93) = v12;
  *(v9 + 94) = 0;
  sub_1ADDDD688(v9);
  return sub_1ADDDFC74;
}

void sub_1ADDDD688(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  v5 = *(a1 + 92);
  v7 = sub_1ADDDAB3C(v5, *a1, *(a1 + 8), *(a1 + 64), (*v1 + 16), (*v1 + 32), v6);
  v8 = v7 >> 29;
  if (v7 >> 29 <= 1)
  {
    if (!v8)
    {
      v17 = HIDWORD(v7);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = v1[1];
        v19 = sub_1ADDFB3E0();
        v20 = sub_1ADDF59C8(v19, v4, v18);
        v22 = v21;

        *v1 = v20;
        v1[1] = v22;
        v4 = v20;
      }

      *(a1 + 80) = v4;
      *(a1 + 88) = v17;
      *(a1 + 93) = 257;
      v23 = &v4[8 * ~v17] + v4[3].u32[0];
      v24 = *(v23 + 4);
      v25 = *(v23 + 5);
      v26 = *(v23 + 6);
      v27 = *(v23 + 7);
      v28 = *(v23 + 10);
      v29 = *(v23 + 11);
      v34 = *(v23 + 4);
      sub_1ADDDC21C(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
      *(a1 + 16) = v26;
      *(a1 + 24) = v27;
      *(a1 + 32) = v34;
      *(a1 + 48) = v28;
      *(a1 + 56) = v29;
      sub_1ADDCC35C(*a1, *(a1 + 8));
      *a1 = v24;
      *(a1 + 8) = v25;
      return;
    }

LABEL_11:
    v30 = HIDWORD(v7);
LABEL_12:
    *(a1 + 88) = v30;
    *(a1 + 93) = 1;
    return;
  }

  if (v8 == 2)
  {
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    v9 = v5;
    v10 = HIDWORD(v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = v1[1];
      v12 = sub_1ADDFB3E0();
      v13 = sub_1ADDF59C8(v12, v4, v11);
      v15 = v14;

      *v1 = v13;
      v1[1] = v15;
      v4 = v13;
    }

    v16 = v4[2 * v10 + 4];
    *(a1 + 72) |= v10 << v9;
    *(a1 + 80) = v16;
    *(a1 + 88) = 0;
    swift_beginAccess();
    *(a1 + 93) = *(*&v16 + 16) != 0;
    *(a1 + 92) = v9 + 5;
    sub_1ADDDD688(a1);
    return;
  }

  if (v7 == 0x80000000)
  {
    v30 = v1[1];
    goto LABEL_12;
  }

  v31 = *(a1 + 80);
  swift_beginAccess();
  v32 = vcnt_s8(*(v31 + 20));
  v32.i16[0] = vaddlv_u8(v32);
  v33 = v32.i32[0];
  if (*(v31 + 16) == *(v31 + 20))
  {
    v33 = 0;
  }

  *(a1 + 88) = v33;
  *(a1 + 93) = 0;
}

void sub_1ADDDD89C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ADDDD904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADDDD94C(uint64_t *a1, _OWORD *a2)
{
  v3 = a2[3];
  *v62 = a2[4];
  *&v62[15] = *(a2 + 79);
  v4 = a2[3];
  v5 = a2[1];
  v60 = a2[2];
  v61 = v4;
  v6 = a2[1];
  v59[0] = *a2;
  v59[1] = v6;
  v56 = v60;
  v57 = v3;
  v58[0] = a2[4];
  *(v58 + 15) = *(a2 + 79);
  v8 = *&v62[8];
  v7 = *&v62[16];
  v9 = *&v62[24];
  v10 = v62[28];
  v11 = v62[29];
  v12 = *v62;
  v54 = v59[0];
  v55 = v5;
  v13 = v60;
  if (!v60)
  {
    if (v62[30])
    {
      sub_1ADDCEE40(v59, v52, &qword_1EB5BA960, &qword_1AE2455E0);
      if (v11)
      {
        v19 = 0x10000000000;
      }

      else
      {
        v19 = 0;
      }

      sub_1AE035D24(0, v12, v8, v7, v9 | (v10 << 32) | v19, v52);
      sub_1ADDCEDE0(v52, &qword_1EB5BA980, &qword_1AE245630);
    }

    else
    {
      sub_1ADDCEE40(v59, v52, &qword_1EB5BA960, &qword_1AE2455E0);
    }

    goto LABEL_29;
  }

  if (v62[30])
  {
    v14 = v54;
    v15 = v55;
    v16 = *(&v56 + 1);
    v17 = v57;
    v18 = *&v62[16] + *(*&v62[16] + 24) + (~*&v62[24] << 6);
    *(v18 + 32) = v54;
    *(v18 + 48) = v15;
    *(v18 + 64) = v13;
    *(v18 + 72) = v16;
    *(v18 + 80) = v17;
    sub_1ADDCEE40(v59, v52, &qword_1EB5BA960, &qword_1AE2455E0);
    sub_1ADDDDE40(v15, *(&v15 + 1), v13, v16, v17, *(&v17 + 1));
    sub_1ADDD86D8(v14, *(&v14 + 1));
    goto LABEL_29;
  }

  MEMORY[0x1EEE9AC00](a1);
  v50[2] = &v54;
  v20 = v54;
  sub_1ADDCEE40(v59, v52, &qword_1EB5BA960, &qword_1AE2455E0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  v24 = sub_1ADDDAB3C(0, v20, *(&v20 + 1), v12, (*a1 + 16), (*a1 + 32), v23);
  v26 = v24 >> 29;
  if (v24 >> 29 <= 1)
  {
    if (v26)
    {
      v37 = HIDWORD(v24);
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v24;
        swift_beginAccess();
        if (v22[3].i32[1] >= 0x40u)
        {
          v45 = sub_1ADE1A914(v37, v38, &v22[2], &v22[4]);
          v46 = v54;
          v47 = v55;
          v48 = v56;
          v49 = v57;
          *v45 = v54;
          *(v45 + 1) = v47;
          *(v45 + 2) = v48;
          *(v45 + 3) = v49;
          ++a1[1];
          sub_1ADDDDE40(v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1));
          sub_1ADDD86D8(v46, *(&v46 + 1));
        }

        else
        {
          sub_1ADE1A674(v38, v37, sub_1ADE1A60C, v50, v39);
        }

        goto LABEL_29;
      }

      v35 = sub_1ADDD83C0(v24, HIDWORD(v24), sub_1ADE1A60C, v25, v50, v22);
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v33 = a1[1];
      v34 = sub_1ADDFB3E0();
      v35 = sub_1ADDF59C8(v34, v22, v33);
    }

LABEL_28:
    v42 = v35;
    v43 = v36;

    *a1 = v42;
    a1[1] = v43;
    goto LABEL_29;
  }

  if (v26 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, 0, v24, HIDWORD(v24), v12, sub_1ADE1A60C, v50);
    goto LABEL_29;
  }

  if (v26 != 3)
  {
    if (v24 == 0x80000000)
    {
      sub_1AE034414(isUniquelyReferenced_nonNull_native, sub_1ADE1A60C, v50);
      goto LABEL_29;
    }

    v40 = a1[1];
    v41 = v22[4];

    v35 = sub_1AE033D0C(0, sub_1ADE1A60C, v50, v12, v22, v40, v41);
    goto LABEL_28;
  }

  v27 = HIDWORD(v24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = a1[1];
    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDF59C8(v29, v22, v28);
    v51 = v31;

    v32 = v51;
    *a1 = v30;
    a1[1] = v32;
    v22 = v30;
  }

  if (sub_1ADE1ACAC(&v22[4], v27, 0, v20, *(&v20 + 1), v12, sub_1ADE1A60C, v50))
  {
    ++a1[1];
  }

LABEL_29:
  v52[2] = v56;
  v52[3] = v57;
  v53[0] = v58[0];
  *(v53 + 15) = *(v58 + 15);
  v52[0] = v54;
  v52[1] = v55;
  return sub_1ADDCEDE0(v52, &qword_1EB5BA960, &qword_1AE2455E0);
}

uint64_t sub_1ADDDDDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1ADDDDE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ADDDDEAC(uint64_t result, uint64_t a2)
{
  if (result != 3)
  {
    return sub_1ADDDDEBC(result, a2);
  }

  return result;
}

uint64_t sub_1ADDDDEBC(uint64_t result, uint64_t a2)
{
  if ((result - 1) >= 2)
  {
    return sub_1ADE42CB8(result, a2);
  }

  return result;
}

uint64_t sub_1ADDDDED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1AE23C12C();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Replica(0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
  v43 = v4;
  result = sub_1AE23DCCC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38[0] = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38[1] = v5 + 16;
    v39 = v10;
    v40 = v5;
    v44 = (v5 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v41 + 72);
      v26 = *(v10 + 48) + v25 * v24;
      if (v43)
      {
        sub_1ADDDE540(v26, v9, type metadata accessor for Replica);
        v27 = *(v10 + 56);
        v28 = *(v40 + 72);
        (*(v40 + 32))(v45, v27 + v28 * v24, v46);
      }

      else
      {
        sub_1ADDDE3A0(v26, v9, type metadata accessor for Replica);
        v29 = *(v10 + 56);
        v28 = *(v40 + 72);
        (*(v40 + 16))(v45, v29 + v28 * v24, v46);
      }

      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v9[*(v42 + 20)]);
      result = sub_1AE23E34C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_1ADDDE540(v9, *(v12 + 48) + v25 * v20, type metadata accessor for Replica);
      result = (*v44)(*(v12 + 56) + v28 * v20, v45, v46);
      ++*(v12 + 16);
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38[0];
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38[0];
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1ADDDE338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE678(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Replica(0);
  sub_1ADDDE540(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Replica);
  v10 = a4[7];
  v11 = sub_1AE23C12C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1ADDDE768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADDDE7F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1ADDD86D8(v17, v16);
          sub_1ADDD8820(v45, v9, v8, &v44);
          sub_1ADDCC35C(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1ADDD86D8(v17, v16);
        v31 = sub_1AE23BB7C();
        if (v31)
        {
          v33 = sub_1AE23BBAC();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1ADDD86D8(v17, v16);
        v31 = sub_1AE23BB7C();
        if (v31)
        {
          v32 = sub_1AE23BBAC();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_1AE23BB9C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1ADDD8820(v34, a1, a2, v45);
        sub_1ADDCC35C(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1ADDD86D8(v17, v16);
      sub_1ADDD8820(v45, v9, v8, &v44);
      sub_1ADDCC35C(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

Coherence::UnknownProperties __swiftcall UnknownProperties.init()()
{
  v1 = v0;
  result.properties._rawValue = sub_1ADDDEC54(MEMORY[0x1E69E7CC0]);
  v1->properties._rawValue = result.properties._rawValue;
  return result;
}

unint64_t sub_1ADDDEC54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1ADDD7A10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDDED58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v3, qword_1ED96F228);
  v4 = __swift_project_value_buffer(v3, qword_1ED96F228);
  sub_1AE23BF5C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}