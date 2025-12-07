void *sub_1ADDF36A8()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v3);
  v2 = v3;
  sub_1ADDF8100(&v2);

  return v0;
}

uint64_t sub_1ADDF3768()
{
  sub_1ADDF36A8();

  return swift_deallocClassInstance();
}

uint64_t CRSequence.isEmpty.getter(uint64_t a1)
{
  if (*v1)
  {
    v2 = sub_1ADDEFD10();
    swift_beginAccess();

    sub_1AE23D11C();
    swift_getWitnessTable();
    v3 = sub_1AE23D4CC();
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1ADDF3860(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a6;
  v54 = a5;
  v55 = a2;
  v14 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a9;
  v19 = type metadata accessor for CROrderedSetElement(0, a7, a8, a9);
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v46 - v22;
  v57 = a3;
  v58 = v16;
  v23 = a7;
  if (*a3)
  {
    inited = *a3;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a4);

  v25 = a8;
  v26 = *(*(a8 + 8) + 8);
  v27 = *(v26 + 8);

  v29 = v59;
  v27(v28, v23, v26);
  if (v29)
  {

    return a1;
  }

  v59 = v25;
  v30 = a1;
  v32 = v57[2];
  v31 = v57[3];
  if (v32)
  {
    v33 = v57[2];
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  if (v32)
  {
    v34 = v57[3];
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v32, v31);
  sub_1ADDF4A24(v33, v34, a4);
  a1 = v35;
  (*(v58 + 16))(v56, v30, v23);
  v37 = v54;
  result = swift_beginAccess();
  if ((v55 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v37 + 200);
    v39 = v53;
    if (*(v38 + 16) > v55)
    {
      v40 = v38 + 16 * v55;
      v42 = *(v40 + 32);
      v41 = *(v40 + 40);

      sub_1ADE017C0(v42, v41, a4, v39);
      v43 = v48;
      sub_1ADE0C8B4(v56, v39, v23, v59, v51, v48);
      v45 = v49;
      v44 = v50;
      (*(v49 + 16))(v47, v43, v50);
      sub_1AE23D11C();
      sub_1AE23D0CC();

      (*(v45 + 8))(v43, v44);
      return a1;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADDF3CCC(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_1AE23DD7C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Timestamp(0);
        v9 = sub_1AE23D06C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for Timestamp(0) - 8);
      v11[0] = (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
      v11[1] = v8;
      sub_1ADF79ACC(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1ADE0BC88(0, v5, 1, a1);
  }
}

uint64_t sub_1ADDF3E08(uint64_t a1)
{
  result = sub_1AE23BFEC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDF3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDF3F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDF3FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CRValue<>.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_1AE23D7CC();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *(a4 + 8);

  v38 = v17;
  v20 = v41;
  v41 = AssociatedTypeWitness;
  v18(v19, AssociatedTypeWitness, a4);
  if (v20)
  {
  }

  else
  {
    v21 = v35;
    v33 = a1;
    v22 = v37;
    (*(v37 + 16))(v14, v38, v41);
    sub_1AE23CF7C();
    v23 = *(a2 - 8);
    if ((*(v23 + 48))(v11, 1, a2) == 1)
    {
      (*(v21 + 8))(v11, v9);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE261D60);
      v24 = sub_1AE23E40C();
      MEMORY[0x1B26FB670](v24);

      MEMORY[0x1B26FB670](0x206D6F726620, 0xE600000000000000);
      v25 = v38;
      v26 = v41;
      sub_1AE23DFCC();
      v27 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v28 = v39;
      v29 = v40;
      sub_1ADE42E40(v27, v30, v31);
      swift_allocError();
      *v32 = v28;
      *(v32 + 8) = v29;
      *(v32 + 16) = 0;
      swift_willThrow();

      (*(v22 + 8))(v25, v26);
    }

    else
    {
      (*(v22 + 8))(v38, v41);

      (*(v23 + 32))(v34, v11, a2);
    }
  }
}

uint64_t sub_1ADDF43A0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    v5 = a2();
  }

  else
  {
    v5 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001AE25FB70;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1ADDF4474(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      if (!v6)
      {
        return *(v5 + 16);
      }

      if (v6 == 4)
      {
        v5 &= 0xFFFFFFFFFFFFFFBuLL;
        return *(v5 + 16);
      }
    }

    sub_1ADE42E40(result, a2, a3);
    swift_allocError();
    *v7 = 0xD000000000000015;
    *(v7 + 8) = 0x80000001AE260300;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CRAttributeStringKey.loadAttribute(from:)@<X0>(uint64_t *a4@<X8>)
{
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v12 - v5;
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v8 = *(v7 + 8);

  v10 = v14;
  result = v8(v9, AssociatedTypeWitness, v7);
  if (!v10)
  {
    swift_getAssociatedConformanceWitness();
    return AnyCRValue.init<A>(_:)(v6, AssociatedTypeWitness, v13);
  }

  return result;
}

uint64_t AnyCRValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRValueBoxHelper(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = sub_1ADDF4784(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t sub_1ADDF4784(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 200) - 8) + 32))(v2 + *(*v2 + 224), a1);
  return v2;
}

_OWORD *sub_1ADDF4818(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1ADDF1D10(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1ADE1B924();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1ADDEBC08(v13, a3 & 1);
    v8 = sub_1ADDF1D10(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1ADDEE390(a1, v19);
  }

  else
  {
    sub_1ADDF4958(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1ADDF4958(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1ADDEE390(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1ADDF49C0()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 88))(v3);
  return sub_1AE23E34C();
}

void sub_1ADDF4A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v46);
  v55 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Timestamp(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  v11 = sub_1ADE09898(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v12 = *(a1 + 16);

  v44 = v12;
  if (v12)
  {
    v13 = 0;
    v45 = v10 + 32;
    v42 = a2;
    v43 = a2 + 32;
    v41 = v10;
    while (v13 < *(v10 + 16))
    {
      if (v13 >= *(a2 + 16))
      {
        goto LABEL_35;
      }

      v16 = *(v45 + 8 * v13);
      v17 = *(v47 + 24);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v16 >= v18;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v36, v37, v38);
        swift_allocError();
        *v39 = 0xD000000000000013;
        *(v39 + 8) = 0x80000001AE25FD70;
        *(v39 + 16) = 0;
        swift_willThrow();

        goto LABEL_27;
      }

      v48 = v13;
      v20 = *(v43 + 8 * v13);
      v21 = sub_1AE23BFEC();
      v22 = *(v21 - 8);
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16;
      v24 = v55;
      (*(v22 + 16))(v55, v23, v21);
      *(v24 + *(v46 + 20)) = 0;
      v51 = *(v20 + 16);
      if (v51)
      {
        v25 = v20 + 32;

        v26 = 0;
        v27 = 0;
        v49 = v20 + 32;
        v50 = v20;
        while (1)
        {
          v28 = *(v20 + 16);
          if (v27 >= v28)
          {
            break;
          }

          v29 = *(v25 + 8 * v27);
          v30 = v26 + v29;
          if (__OFADD__(v26, v29))
          {
            goto LABEL_29;
          }

          if ((v27 | 1) >= v28)
          {
            goto LABEL_30;
          }

          v31 = *(v25 + 8 * (v27 | 1));
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_31;
          }

          if (v32 < v30)
          {
            goto LABEL_32;
          }

          v52 = v30 + v31;
          if (v30 != v32)
          {
            if (v30 >= v32)
            {
              goto LABEL_33;
            }

            do
            {
              sub_1ADDF8030(v55, v9, type metadata accessor for Replica);
              *&v9[*(v6 + 20)] = v30;
              v34 = v11[2];
              v33 = v11[3];
              if (v34 >= v33 >> 1)
              {
                v11 = sub_1ADE09898((v33 > 1), v34 + 1, 1, v11);
              }

              v11[2] = v34 + 1;
              sub_1ADDE5F9C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34, type metadata accessor for Timestamp);
              ++v30;
              --v31;
            }

            while (v31);
          }

          v27 += 2;
          v20 = v50;
          v25 = v49;
          v26 = v52;
          if (v27 >= v51)
          {

            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

LABEL_4:
      v14 = v48 + 1;
      sub_1ADDE5300(v55, type metadata accessor for Replica);
      v13 = v14;
      v15 = v14 == v44;
      v10 = v41;
      a2 = v42;
      if (v15)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_25:

    swift_bridgeObjectRelease_n();
    v35 = v11[2];
    v53 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v54 = v35;
    sub_1ADDF3CCC(sub_1ADF7B924, 0);
LABEL_27:
  }
}

char *sub_1ADDF4E90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  v10 = qword_1ED96F260;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v22 = v10;
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);
  v13 = sub_1ADE0CA18(a1, a3, a2, v11, v12);
  sub_1AE030800(a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  type metadata accessor for CRSequenceStorage(0, v11, v12, v14);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = v13;
  v17 = objc_allocWithZone(ObjCClassFromMetadata);
  v18 = sub_1ADE0A808(v16);
  if (v4)
  {

    v19 = sub_1AE23BFEC();
    (*(*(v19 - 8) + 8))(&v5[v22], v19);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v18;

    *&v5[qword_1ED96F258] = v20;
  }

  return v5;
}

char *sub_1ADDF5128(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1ADDF5234@<D0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  if (a1)
  {
    v8 = *(v2 + 16);
    v9 = qword_1ED967EE8;

    if (v9 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v10 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    sub_1ADDCEE40(v8 + v10, v7, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
  }

  else
  {
    v11 = type metadata accessor for Replica(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  sub_1ADDCEDE0(v7, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_beginAccess();
  v12 = *(v2 + 32);
  *a2 = MEMORY[0x1E69E7CC8];
  a2[1] = v12;

  return result;
}

uint64_t sub_1ADDF5414(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = *(v6 + 16);
    if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 11)
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      swift_beginAccess();
      v4 = *(v10 + 16);
      swift_beginAccess();
      if (*(v10 + 24))
      {
        inited = *(v10 + 24);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      sub_1ADE0262C(inited, v5);
    }

    else
    {
      sub_1ADE42E40(result, a2, a3);
      swift_allocError();
      *v9 = 0xD00000000000001ELL;
      *(v9 + 8) = 0x80000001AE25FDF0;
      *(v9 + 16) = 0;
      swift_willThrow();
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADDF5580(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a2 + 48) + v12);
      v14 = *(*(a2 + 56) + v12);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v15 = *(a1 + 48);
      v17[2] = *(a1 + 32);
      v17[3] = v15;
      v18 = *(a1 + 64);
      v16 = *(a1 + 16);
      v17[0] = *a1;
      v17[1] = v16;
      MEMORY[0x1B26FCBD0](v13);
      (*(*v14 + 88))(v17);

      v9 ^= sub_1AE23E34C();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1B26FCBD0](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADDF5700(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC36C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1ADEC7BC0(MEMORY[0x1E69695A8], &qword_1EB5BA988, &qword_1AE245638);
      goto LABEL_12;
    }

    sub_1ADDFAD90(v11 + 1);
  }

  v13 = *v3;
  sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1AE23CBBC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1ADDE5F54(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1AE23CCBC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDF59C8(uint64_t a1, int8x8_t *a2, unint64_t a3)
{
  v4 = a2 + 2;
  if ((a2[2].i32[1] & a2[2].i32[0]) != 0)
  {
    return sub_1AE035B10(v4, &a2[4], a2, a3);
  }

  else
  {
    return sub_1ADDFB30C(v4, &a2[4], a3, a1, sub_1ADDFB3E8);
  }
}

uint64_t sub_1ADDF5A40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v8, v4);
  v9 = *(v3 - 8);
  result = (*(v9 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = (*(*(*(v2 + 288) + 16) + 56))(v3);
    (*(v9 + 8))(v7, v3);
    return v11 & 1;
  }

  return result;
}

void Capsule.version.getter(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[1];
    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADDF5C7C(uint64_t a1)
{
  v82 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v76);
  v3 = v68 - v2;
  v4 = sub_1AE23C0EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AE23BFEC();
  v8 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C12C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v68 - v15;
  v16 = type metadata accessor for Replica(0);
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v69 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v87 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v68 - v21;
  if (!*(v1[1] + 16))
  {
    v22 = *v1;
    v23 = MEMORY[0x1E69E7CC0];
    v91 = sub_1ADDF69D0(0, *(v22 + 16), 0, MEMORY[0x1E69E7CC0]);
    v90 = sub_1ADDF69E4(0, *(v22 + 16), 0, v23);
    v24 = *(v22 + 64);
    v84 = v22 + 64;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v68[0] = (v25 + 63) >> 6;
    v68[1] = v11 + 16;
    v86 = (v11 + 32);
    v78 = (v8 + 8);
    v79 = (v8 + 16);
    v77 = (v5 + 8);
    v73 = (v11 + 8);
    v72 = v22;

    v28 = 0;
    v29 = v87;
    v85 = v7;
    v75 = v10;
    v74 = v11;
    v92 = v13;
    v30 = v84;
    if (v27)
    {
      while (1)
      {
        v88 = v28;
        v31 = v28;
LABEL_14:
        v89 = (v27 - 1) & v27;
        v34 = __clz(__rbit64(v27)) | (v31 << 6);
        v35 = v72;
        v36 = v69;
        sub_1ADDDE3A0(*(v72 + 48) + *(v70 + 72) * v34, v69, type metadata accessor for Replica);
        v37 = v71;
        (*(v11 + 16))(v71, *(v35 + 56) + *(v11 + 72) * v34, v10);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v39 = *(v38 + 48);
        v40 = v36;
        v29 = v87;
        sub_1ADDDE540(v40, v87, type metadata accessor for Replica);
        (*(v11 + 32))(v29 + v39, v37, v10);
        (*(*(v38 - 8) + 56))(v29, 0, 1, v38);
        v7 = v85;
LABEL_15:
        v41 = v83;
        sub_1ADDD2198(v29, v83, &qword_1EB5BA458, &qword_1AE251E00);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
        {

          return;
        }

        (*v86)(v92, v41 + *(v42 + 48), v10);
        v43 = v80;
        v44 = v81;
        (*v79)(v80, v41, v81);
        sub_1ADDE4FF8(v41, type metadata accessor for Replica);
        v45 = sub_1ADDF66A8(v43);
        (*v78)(v43, v44);
        v46 = v91;
        v48 = *(v91 + 2);
        v47 = *(v91 + 3);
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1ADDF69D0((v47 > 1), v48 + 1, 1, v91);
        }

        *(v46 + 2) = v48 + 1;
        v91 = v46;
        *&v46[8 * v48 + 32] = v45;
        sub_1AE23C10C();
        sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
        sub_1AE23D41C();
        sub_1AE23D46C();
        v49 = sub_1AE23D45C();
        v50 = *v77;
        (*v77)(v7, v4);
        if (v49 + 0x4000000000000000 < 0)
        {
          goto LABEL_38;
        }

        v51 = sub_1ADDF56EC(0, (2 * v49) & ~((2 * v49) >> 63), 0, MEMORY[0x1E69E7CC0]);
        sub_1AE23C10C();
        sub_1AE23C0DC();
        v50(v7, v4);
        v52 = *(v76 + 36);
        sub_1AE23D46C();
        if (*&v3[v52] != v93[0])
        {
          break;
        }

LABEL_20:
        sub_1ADDCEDE0(v3, &qword_1EB5BA440, &unk_1AE24CCB0);
        v53 = v90;
        v55 = *(v90 + 2);
        v54 = *(v90 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1ADDF69E4((v54 > 1), v55 + 1, 1, v90);
        }

        v10 = v75;
        v11 = v74;
        v29 = v87;
        (*v73)(v92, v75);
        *(v53 + 2) = v55 + 1;
        v90 = v53;
        *&v53[8 * v55 + 32] = v51;
        v7 = v85;
        v28 = v88;
        v27 = v89;
        v30 = v84;
        if (!v89)
        {
          goto LABEL_6;
        }
      }

      v56 = 0;
      while (1)
      {
        v57 = sub_1AE23D51C();
        v59 = *v58;
        v60 = v58[1];
        v57(v93, 0);
        v61 = v4;
        sub_1AE23D47C();
        v62 = v59 - v56;
        if (__OFSUB__(v59, v56))
        {
          break;
        }

        v64 = *(v51 + 2);
        v63 = *(v51 + 3);
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v51 = sub_1ADDF56EC((v63 > 1), v64 + 1, 1, v51);
        }

        *(v51 + 2) = v65;
        *&v51[8 * v64 + 32] = v62;
        if (__OFSUB__(v60, v59))
        {
          goto LABEL_36;
        }

        v66 = *(v51 + 3);
        if ((v64 + 2) > (v66 >> 1))
        {
          v51 = sub_1ADDF56EC((v66 > 1), v64 + 2, 1, v51);
        }

        *(v51 + 2) = v64 + 2;
        *&v51[8 * v65 + 32] = v60 - v59;
        v4 = v61;
        sub_1AE23D46C();
        v56 = v60;
        if (*&v3[v52] == v93[0])
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_6:
      if (v68[0] <= v28 + 1)
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = v68[0];
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v31 >= v68[0])
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v67 - 8) + 56))(v29, 1, 1, v67);
          v88 = v33;
          v89 = 0;
          goto LABEL_15;
        }

        v27 = *(v30 + 8 * v31);
        ++v28;
        if (v27)
        {
          v88 = v31;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ADDF66A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 48);
  if (*(v8 + 16))
  {

    v9 = sub_1ADDDF300(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if ((v11 & 0x8000000000000000) == 0)
      {
        return v11;
      }

      __break(1u);
    }
  }

  v11 = *(*(v2 + 40) + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  sub_1ADDFC5B0(v11, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 48) = v19;
  swift_endAccess();
  (*(v5 + 16))(v7, a1, v4);
  v13 = *(v2 + 40);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v13;
  if ((v14 & 1) == 0)
  {
    v13 = sub_1ADDE4ECC(0, v13[2] + 1, 1, v13);
    *(v2 + 40) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1ADDE4ECC((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v4);
  *(v2 + 40) = v13;
  return v11;
}

char *sub_1ADDF68D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1ADDF69E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA240, &qword_1AE241C08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1ADDF6AF0()
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0[5] + 16);
  if (v5)
  {
    if (!(v5 >> 59))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  swift_beginAccess();
  if (!*(v0[10] + 16))
  {
    swift_beginAccess();
    if (!*(v0[7] + 16))
    {
      return 0;
    }
  }

LABEL_6:
  v7 = sub_1ADDF6E48(16 * v5);
  v34 = v7;
  v35 = v6;
  v8 = v0[5];
  v9 = *(v8 + 16);
  if (v9)
  {
    v25[1] = v0[5];
    v25[2] = v0;
    v12 = *(v2 + 16);
    v10 = v2 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);

    do
    {
      v11(v4, v13, v1);
      v25[12] = sub_1AE23BFCC();
      v26 = v15;
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      v33 = v22;
      sub_1AE23BFCC();
      sub_1AE23BBCC();
      swift_allocObject();
      sub_1AE23BB6C();
      sub_1AE23BEEC();

      (*(v10 - 8))(v4, v1);
      v13 += v14;
      --v9;
    }

    while (v9);

    v7 = v34;
    v23 = v35;
  }

  else
  {
    v23 = v6;
  }

  sub_1ADDCC35C(0, 0xC000000000000000);
  swift_beginAccess();

  swift_beginAccess();

  sub_1ADDD86D8(v7, v23);

  sub_1ADDCC35C(v7, v23);

  return v7;
}

uint64_t sub_1ADDF6E48(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1AE23BBCC();
      swift_allocObject();
      sub_1AE23BBBC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1ADDF6EEC()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ED96F2F8 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ADDF7124;
  *(v3 + 24) = v2;
  v8[4] = sub_1ADE43164;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1ADDF70CC;
  v8[3] = &block_descriptor_88;
  v4 = _Block_copy(v8);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1ADDF707C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDF712C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);

  return swift_unknownObjectRelease();
}

void sub_1ADDF71B4()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v0 + 128) + 16) || *(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) == 1)
    {

      sub_1ADDF7390(0, v0, v0);
    }
  }
}

void sub_1ADDF7390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ADDD1E30(0xD00000000000001BLL, 0x80000001AE25F1C0);
  if (v3)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sqlite3_step(v7);
  if (v9 == 5)
  {
    sub_1ADE47024(v9, v10, v11);
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    v20 = 5;
LABEL_11:
    *(v19 + 16) = v20;
    swift_willThrow();
    v25 = v8;
LABEL_12:
    sqlite3_finalize(v25);
    goto LABEL_13;
  }

  if (v9 != 101)
  {
    if (!sqlite3_errmsg(*(a2 + 32)))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = sub_1AE23CDEC();
    v23 = v22;
    sub_1ADE47024(v21, v22, v24);
    swift_allocError();
    *v19 = v21;
    *(v19 + 8) = v23;
    v20 = 2;
    goto LABEL_11;
  }

  sqlite3_finalize(v8);
  if (a1)
  {
    v12 = *(a2 + 32);
    v13 = *(a1 + 16);

    if (sqlite3_snapshot_open(v12, "main", v13))
    {
      if (sqlite3_errmsg(*(a2 + 32)))
      {
        v14 = sub_1AE23CDEC();
        v16 = v15;
        sub_1ADE47024(v14, v15, v17);
        swift_allocError();
        *v18 = v14;
        *(v18 + 8) = v16;
        *(v18 + 16) = 4;
        swift_willThrow();

LABEL_13:

        return;
      }

      goto LABEL_28;
    }
  }

  sub_1ADDFA6D8(a3);
  v26 = sub_1ADDD1E30(0x4E41525420444E45, 0xEF4E4F4954434153);
  v27 = sqlite3_step(v26);
  if (v27 == 5)
  {
    sub_1ADE47024(v27, v28, v29);
    v31 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    v32 = 5;
    goto LABEL_21;
  }

  if (v27 == 101)
  {
    v25 = v26;
    goto LABEL_12;
  }

  if (sqlite3_errmsg(*(a2 + 32)))
  {
    v33 = sub_1AE23CDEC();
    v35 = v34;
    sub_1ADE47024(v33, v34, v36);
    v31 = swift_allocError();
    *v30 = v33;
    *(v30 + 8) = v35;
    v32 = 2;
LABEL_21:
    *(v30 + 16) = v32;
    swift_willThrow();
    sqlite3_finalize(v26);
    v37 = sub_1ADDD1E30(0x4B4341424C4C4F52, 0xE800000000000000);
    v38 = sqlite3_step(v37);
    if (v38 == 5)
    {
      sub_1ADE47024(v38, v39, v40);
      swift_allocError();
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v37);

      return;
    }

    if (v38 == 101)
    {
      sqlite3_finalize(v37);
      swift_willThrow();
      goto LABEL_13;
    }

    if (sqlite3_errmsg(*(a2 + 32)))
    {
      v42 = sub_1AE23CDEC();
      v44 = v43;
      sub_1ADE47024(v42, v43, v45);
      swift_allocError();
      *v46 = v42;
      *(v46 + 8) = v44;
      *(v46 + 16) = 2;
      swift_willThrow();
      sqlite3_finalize(v37);

      return;
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1ADDF7744(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v56 = a3;
  v54 = a2;
  v65 = a1;
  v63 = a4;
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v58 = a6;
  v59 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v53 - v24;
  v67 = sub_1AE23C9DC();
  (*(v19 + 16))(v22, v65, a5);
  sub_1AE23CE7C();
  v55 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v25;
  v65 = AssociatedTypeWitness;
  v62 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v27 = v59;
  v60 = *(v59 + 48);
  v61 = v59 + 48;
  if (v60(v18, 1, v9) != 1)
  {
    v59 = *(v27 + 32);
    v31 = (v27 + 8);
    (v59)(v15, v18, v9);
    while (1)
    {
      v32 = type metadata accessor for CRSet(0, v9, *(v63 + 24), *(v63 + 32));
      v33 = v7;
      v34 = CRSet.insert(_:)(v12, v15, v32);
      v35 = *v31;
      (*v31)(v12, v9);
      if (v34)
      {
        (*(v27 + 16))(v12, v15, v9);
        sub_1AE23D11C();
        sub_1AE23D0CC();
      }

      v35(v15, v9);
      sub_1AE23D80C();
      v7 = v33;
      if (v60(v18, 1, v9) == 1)
      {
        break;
      }

      (v59)(v15, v18, v9);
    }
  }

  (*(v57 + 8))(v64, v65);
  v28 = v67;
  v66 = v67;
  v29 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  if ((sub_1AE23D4CC() & 1) == 0)
  {
    v36 = v63;
    sub_1ADE10650(v63);
    v37 = *(v36 + 24);
    v38 = *(v36 + 32);
    v39 = type metadata accessor for CROrderedSetElement(255, v9, v37, v38);
    v65 = type metadata accessor for CRSequence(0, v39, &off_1F23C8BA0, v40);
    sub_1ADE108AC(v65, v41, v42, v43);
    v66 = v28;
    MEMORY[0x1EEE9AC00](v44);
    *(&v53 - 6) = v9;
    *(&v53 - 5) = v55;
    *(&v53 - 4) = v37;
    v45 = v58;
    *(&v53 - 3) = v38;
    *(&v53 - 2) = v45;
    *(&v53 - 1) = v7;

    v47 = sub_1ADE08EB0(sub_1ADE1094C, (&v53 - 8), v29, v39, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v46);
    swift_bridgeObjectRelease_n();
    v66 = v47;
    if (v56)
    {
      v48 = sub_1AE23D11C();
      v49 = swift_getWitnessTable();
      CRSequence.append<A>(contentsOf:)(&v66, v65, v48, v49);
    }

    else
    {
      v50 = sub_1AE23D11C();
      v51 = swift_getWitnessTable();
      CRSequence.insert<A>(contentsOf:at:)(&v66, v54, v65, v50, v51);
    }
  }
}

double sub_1ADDF7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C88C();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C8CC();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  if (*(v17 + 16))
  {
    v21 = v13;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v4;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);

    sub_1AE23C8AC();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1ADE89268(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v16, v10, v19);
    _Block_release(v19);
    (*(v22 + 8))(v10, v8);
    (*(v12 + 8))(v16, v21);
  }

  return result;
}

uint64_t sub_1ADDF7FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDF8030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDF8098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDF8128(__n128 a1)
{
  v2 = v1;
  result = swift_isUniquelyReferenced_native();
  if ((result & 1) == 0)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      v5 = v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
      swift_beginAccess();
      v6 = *(v5 + 8);
      v12[0] = MEMORY[0x1E69E7CC8];
      v12[1] = v6;

      sub_1ADDE1CB8(v12);

      v7 = *(v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
      v8 = qword_1ED967EE8;

      if (v8 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1ED96F1F8);
      v9 = sub_1AE1FEFC0(&dword_1ED96F1F8, v7);
      os_unfair_lock_unlock(&dword_1ED96F1F8);

      type metadata accessor for CapsuleRef(0);
      swift_allocObject();

      v11 = sub_1ADDE1CF0(v10, v9);

      *(v2 + 32) = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void Capsule.Ref.root.modify(void *a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1B0uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[49] = v1;
  v6 = *(*v1 + 80);
  v4[50] = v6;
  v7 = *(v6 - 8);
  v4[51] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  *(v5 + 416) = v9;
  v10 = v1[4];
  swift_beginAccess();
  v11 = v1[2];
  v12 = v1[3];
  v13 = v10 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v14 = (v13 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
  ++v14[2];
  sub_1AE23E31C();

  sub_1ADDD86D8(v11, v12);
  sub_1AE23BECC();
  v15 = sub_1AE23E34C();
  v16 = *v14;
  swift_beginAccess();
  v17 = *(v16 + 16) != 0;
  *v5 = v11;
  *(v5 + 8) = v12;
  sub_1ADDD86D8(v11, v12);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  *(v5 + 16) = 0u;
  v18 = (v5 + 16);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = v16;
  *(v5 + 88) = 0;
  *(v5 + 92) = 0;
  *(v5 + 93) = v17;
  *(v5 + 94) = 0;
  sub_1ADDDD688(v5);
  if (!*(v5 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = *v18;
  if (!*v18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = (*(*v19 + 168))();

    *v18 = v20;
    v19 = v20;
  }

  v21 = type metadata accessor for CRDTBox();
  *(v5 + 424) = v21;
  *(v5 + 216) = v21;
  *(v5 + 224) = &off_1F23C9908;
  *(v5 + 192) = v19;

  sub_1ADDDD94C(v14, v5);
  v22 = *(v5 + 48);
  *(v5 + 128) = *(v5 + 32);
  *(v5 + 144) = v22;
  *(v5 + 160) = *(v5 + 64);
  *(v5 + 175) = *(v5 + 79);
  v23 = *(v5 + 16);
  *(v5 + 96) = *v5;
  *(v5 + 112) = v23;
  sub_1ADDCEDE0(v5 + 96, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();

  sub_1ADDCC35C(v11, v12);
  (*(*v19 + 248))();
  swift_dynamicCast();
}

uint64_t sub_1ADDF8600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADDF8654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1ADDF86A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v7 = v6;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1ADDDF300(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 >= result && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v22 >= result && (a3 & 1) == 0)
  {
    result = v27();
    goto LABEL_9;
  }

  v28();
  result = sub_1ADDDF300(a2);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v17 = result;
LABEL_9:
  v24 = a1;
  v25 = *v7;
  if (v21)
  {
    *(*(v25 + 56) + 8 * v17) = v24;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v29(v17, v14, v24, v25);
  }

  return result;
}

Swift::Bool __swiftcall CRSequence.needToFinalizeTimestamps()()
{
  if (*v0)
  {
    return sub_1AE167078() & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1ADDF8898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v143 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v143 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v157 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v164 = &v143 - v15;
  v193 = type metadata accessor for FinalizedTimestamp(0);
  v16 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v182 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v190 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v19 = &v143 - v18;
  v187 = sub_1AE23C12C();
  v20 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v146 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v143 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v143 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v143 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v143 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v185 = &v143 - v32;
  v150 = type metadata accessor for Replica(0);
  v163 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v34 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v170 = &v143 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v186 = &v143 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v162 = &v143 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v143 - v45;
  v167 = v4;
  v47 = v4[1];
  v181 = v4 + 1;
  v48 = *(v47 + 64);
  v156 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v171 = v50 & v48;
  v145 = (v49 + 63) >> 6;
  v180 = v20 + 16;
  v172 = (v20 + 32);
  v179 = (v16 + 48);
  v184 = (v20 + 8);
  v154 = (v20 + 56);
  v175 = v20;
  v148 = (v20 + 48);
  v51 = v46;
  v178 = (v16 + 56);
  v155 = v47;

  v52 = 0;
  v159 = v43;
  v158 = v51;
  v144 = a3;
  v174 = v30;
  v149 = v34;
  v166 = v19;
LABEL_6:
  v53 = v171;
  if (v171)
  {
    v54 = v52;
    goto LABEL_16;
  }

  if (v145 <= v52 + 1)
  {
    v55 = v52 + 1;
  }

  else
  {
    v55 = v145;
  }

  v56 = v55 - 1;
  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= v145)
    {
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v139 - 8) + 56))(v43, 1, 1, v139);
      v171 = 0;
      v52 = v56;
      goto LABEL_17;
    }

    v53 = *(v156 + 8 * v54);
    ++v52;
    if (v53)
    {
      v52 = v54;
LABEL_16:
      v171 = (v53 - 1) & v53;
      v57 = __clz(__rbit64(v53)) | (v54 << 6);
      v58 = v155;
      v59 = v162;
      sub_1ADDDE3A0(*(v155 + 48) + *(v163 + 72) * v57, v162, type metadata accessor for Replica);
      v60 = v175;
      v61 = v185;
      v62 = v187;
      (*(v175 + 16))(v185, *(v58 + 56) + *(v175 + 72) * v57, v187);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v64 = *(v63 + 48);
      v65 = v59;
      v43 = v159;
      sub_1ADDDE540(v65, v159, type metadata accessor for Replica);
      (*(v60 + 32))(&v43[v64], v61, v62);
      (*(*(v63 - 8) + 56))(v43, 0, 1, v63);
      v51 = v158;
LABEL_17:
      sub_1ADDD2198(v43, v51, &qword_1EB5BA458, &qword_1AE251E00);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v66 - 8) + 48))(v51, 1, v66) == 1)
      {

        return;
      }

      v67 = *(v66 + 48);
      v68 = v186;
      sub_1ADDDE540(v51, v186, type metadata accessor for Replica);
      if (*(a3 + 16) && (v69 = sub_1ADDD8A6C(v68), (v70 & 1) != 0))
      {
        v147 = v67;
        sub_1ADDE56CC(*(a3 + 56) + 24 * v69, &v194);
        sub_1ADDE5634(&v194, &v195);
        v192 = v195;
        v71 = v157;
        v72 = v164;
        v191 = *(v195 + 16);
        v73 = v166;
        if (v191)
        {
          v74 = 0;
          v189 = v192 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
          while (1)
          {
            if (v74 >= *(v192 + 16))
            {
              goto LABEL_61;
            }

            sub_1ADDCEE40(v189 + *(v190 + 72) * v74, v73, &qword_1EB5BA148, &qword_1AE241B60);
            sub_1ADDCEE40(v73 + *(v188 + 36), v71, &qword_1EB5BA450, &unk_1AE25B3B0);
            v75 = type metadata accessor for RetainedMapRun(0);
            if ((*(*(v75 - 8) + 48))(v71, 1, v75) == 1)
            {
              break;
            }

            sub_1ADDCEE40(v71, v72, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDE4FF8(v71, type metadata accessor for RetainedMapRun);
            if ((*v179)(v72, 1, v193) == 1)
            {
              sub_1ADDCEDE0(v73, &qword_1EB5BA148, &qword_1AE241B60);
              goto LABEL_23;
            }

            sub_1ADDDE540(v72, v182, type metadata accessor for FinalizedTimestamp);
            v76 = *v73;
            v77 = v174;
            sub_1AE23C00C();
            v78 = *v181;
            if (!*(*v181 + 16))
            {
              goto LABEL_62;
            }

            v79 = sub_1ADDD8A6C(v186);
            if ((v80 & 1) == 0)
            {
              goto LABEL_63;
            }

            v173 = v76;
            v81 = *(v78 + 56);
            v82 = v77;
            v83 = v175;
            v183 = *(v175 + 72);
            v84 = *(v175 + 16);
            v85 = v185;
            v86 = v187;
            v84(v185, v81 + v183 * v79, v187);
            sub_1AE23C02C();
            v87 = *(v83 + 8);
            v87(v85, v86);
            if (sub_1AE23C04C() < 1)
            {
              v87(v82, v86);
              sub_1ADDE4FF8(v182, type metadata accessor for FinalizedTimestamp);
              v73 = v166;
              sub_1ADDCEDE0(v166, &qword_1EB5BA148, &qword_1AE241B60);
              v72 = v164;
            }

            else
            {
              v176 = v87;
              v177 = v84;
              v84(v169, v82, v86);
              v88 = v181;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v90 = v170;
              sub_1ADDDE3A0(v186, v170, type metadata accessor for Replica);
              v91 = *v88;
              v194 = v91;
              v93 = sub_1ADDD8A6C(v90);
              v94 = v91[2];
              v95 = (v92 & 1) == 0;
              v96 = v94 + v95;
              if (__OFADD__(v94, v95))
              {
                goto LABEL_64;
              }

              v97 = v92;
              if (v91[3] >= v96)
              {
                v100 = v177;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1ADDFB81C();
                }
              }

              else
              {
                sub_1ADDDDED0(v96, isUniquelyReferenced_nonNull_native);
                v98 = sub_1ADDD8A6C(v170);
                v100 = v177;
                if ((v97 & 1) != (v99 & 1))
                {
                  goto LABEL_70;
                }

                v93 = v98;
              }

              if ((v97 & 1) == 0)
              {
                goto LABEL_69;
              }

              v165 = v194;
              v101 = v194[7];
              v102 = *v172;
              v160 = v93 * v183;
              v103 = v168;
              v104 = v187;
              v161 = v102;
              v102(v168, (v101 + v93 * v183), v187);
              (*v154)(v103, 0, 1, v104);
              v100(v151, v103, v104);
              v105 = v169;
              v100(v152, v169, v104);
              sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
              v106 = v185;
              sub_1AE23D8AC();
              sub_1AE23D89C();
              v107 = v176;
              v176(v106, v104);
              v107(v105, v104);
              v108 = v103;
              v109 = v153;
              sub_1ADDCEE40(v108, v153, &qword_1EB5BB780, &qword_1AE24CD18);
              if ((*v148)(v109, 1, v104) == 1)
              {
                sub_1ADDCEDE0(v109, &qword_1EB5BB780, &qword_1AE24CD18);
                v110 = v165;
                sub_1ADDE4FF8(*(v165 + 48) + *(v163 + 72) * v93, type metadata accessor for Replica);
                sub_1ADDF9CEC(v93, v110);
              }

              else
              {
                v111 = v146;
                v112 = v161;
                v161(v146, v109, v104);
                v110 = v165;
                v112(*(v165 + 56) + v160, v111, v104);
              }

              v113 = v174;
              v114 = v149;
              v73 = v166;
              sub_1ADDE4FF8(v170, type metadata accessor for Replica);
              sub_1ADDCEDE0(v168, &qword_1EB5BB780, &qword_1AE24CD18);
              v115 = v110;
              *v181 = v110;
              v116 = sub_1AE23BFEC();
              v117 = v182;
              (*(*(v116 - 8) + 16))(v114, v182, v116);
              *(v114 + *(v150 + 20)) = 0;
              if (__OFSUB__(*(v117 + *(v193 + 20)), v173))
              {
                goto LABEL_65;
              }

              sub_1AE23C05C();
              v118 = v167;
              v119 = swift_isUniquelyReferenced_nonNull_native();
              v194 = *v118;
              v120 = v194;
              v122 = sub_1ADDD8A6C(v114);
              v123 = v120[2];
              v124 = (v121 & 1) == 0;
              v125 = v123 + v124;
              if (__OFADD__(v123, v124))
              {
                goto LABEL_66;
              }

              v126 = v121;
              if (v120[3] >= v125)
              {
                if ((v119 & 1) == 0)
                {
                  sub_1ADDFB81C();
                  v120 = v194;
                }
              }

              else
              {
                sub_1ADDDDED0(v125, v119);
                v120 = v194;
                v127 = sub_1ADDD8A6C(v114);
                if ((v126 & 1) != (v128 & 1))
                {
                  goto LABEL_70;
                }

                v122 = v127;
              }

              *v167 = v120;
              v129 = v113;
              if ((v126 & 1) == 0)
              {
                v130 = v185;
                sub_1AE23C11C();
                v131 = v162;
                sub_1ADDDE3A0(v114, v162, type metadata accessor for Replica);
                v132 = v131;
                v113 = v129;
                sub_1ADDDE678(v122, v132, v130, v120);
              }

              sub_1AE23C0FC();
              if (!*(v115 + 16))
              {
                goto LABEL_67;
              }

              v133 = sub_1ADDD8A6C(v186);
              if ((v134 & 1) == 0)
              {
                goto LABEL_68;
              }

              v135 = v185;
              v136 = v187;
              v177(v185, *(v115 + 56) + v133 * v183, v187);
              v137 = sub_1AE23C04C();
              v138 = v176;
              v176(v135, v136);
              if (!v137)
              {
                v140 = v143;
                v141 = v186;
                sub_1ADDFBB4C(v186, v143);
                sub_1ADDCEDE0(v140, &qword_1EB5BB780, &qword_1AE24CD18);
                sub_1ADDE4FF8(v114, type metadata accessor for Replica);
                v138(v129, v136);
                sub_1ADDE4FF8(v182, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v73, &qword_1EB5BA148, &qword_1AE241B60);
                sub_1ADDE4FF8(v141, type metadata accessor for Replica);
                sub_1ADDE5C20(&v195);
                v142 = v158;
                v138((v158 + v147), v136);
                a3 = v144;
                v51 = v142;
                v43 = v159;
                goto LABEL_6;
              }

              sub_1ADDE4FF8(v114, type metadata accessor for Replica);
              v138(v113, v136);
              sub_1ADDE4FF8(v182, type metadata accessor for FinalizedTimestamp);
              sub_1ADDCEDE0(v73, &qword_1EB5BA148, &qword_1AE241B60);
              v71 = v157;
              v72 = v164;
            }

LABEL_24:
            if (v191 == ++v74)
            {
              goto LABEL_56;
            }
          }

          sub_1ADDCEDE0(v73, &qword_1EB5BA148, &qword_1AE241B60);
          sub_1ADDCEDE0(v71, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v178)(v72, 1, 1, v193);
LABEL_23:
          sub_1ADDCEDE0(v72, &qword_1EB5BA460, &qword_1AE251020);
          goto LABEL_24;
        }

LABEL_56:
        sub_1ADDE4FF8(v186, type metadata accessor for Replica);
        sub_1ADDE5C20(&v195);
        a3 = v144;
        v43 = v159;
        v51 = v158;
        v67 = v147;
      }

      else
      {
        sub_1ADDE4FF8(v68, type metadata accessor for Replica);
      }

      (*v184)(v51 + v67, v187);
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_61:
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
  (*v154)(v168, 1, 1, v187);
  __break(1u);
LABEL_70:
  sub_1AE23E27C();
  __break(1u);
}

void sub_1ADDF9CEC(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for Replica(0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1AE23D8FC() + 1) & ~v8;
    v12 = *(v4 + 72);
    while (1)
    {
      v13 = v12 * v9;
      sub_1ADDDE3A0(*(a2 + 48) + v12 * v9, v6, type metadata accessor for Replica);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v6[*(v26 + 20)]);
      v14 = sub_1AE23E34C();
      sub_1ADDE4FF8(v6, type metadata accessor for Replica);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        break;
      }

      if (v15 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 * a1 != v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_1AE23C12C() - 8) + 72);
      v18 = v17 * a1;
      v19 = v16 + v17 * a1;
      v20 = v17 * v9;
      v21 = v16 + v17 * v9 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v9;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v9;
LABEL_5:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v15 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

double sub_1ADDF9FB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, int8x8_t a8@<D0>)
{
  v13 = a1;
  v15 = a5 + 4;
  v16 = sub_1ADDE147C(a1, a2, a3, a4, &a5[2], &a5[4], a8);
  if (v16 == 2)
  {
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 40) = -256;
  }

  else
  {
    v18 = HIDWORD(v16);
    if (v16)
    {
      v32 = a4 >> v13;
      v19 = &v15[2 * v18];
      v20 = *v19;
      v21 = v19[1];

      sub_1ADDF9FB0((v13 + 5), a2, a3, a4, v20, v21, &v36, v22);

      v23 = v36;
      v24 = v38;
      v25 = v39;
      if (HIBYTE(v39) <= 0xFEu)
      {
        v29 = v38;
        v30 = v37;
        v31 = HIBYTE(v39);
        sub_1AE03CA70(v36, *(&v36 + 1), v37, v38, *(&v38 + 1), v39, sub_1ADDD86D8, sub_1ADDFA4B4);
        sub_1ADDD86D8(v23, *(&v23 + 1));
        sub_1ADDFA4B4(v24, *(&v24 + 1), v25, v31);
        sub_1AE037DC4(v13, v32 & 0x1F, v18, v29, *(&v24 + 1), v25, a5, &v33, a6);
        sub_1AE03CA70(v23, *(&v23 + 1), v30, v29, *(&v24 + 1), v25, sub_1ADDCC35C, sub_1ADDFC318);
        sub_1ADDCC35C(v23, *(&v23 + 1));
        *a7 = v23;
        v28 = v35;
        *(a7 + 16) = v33;
        *(a7 + 24) = v34;
        *(a7 + 40) = v28;
        return sub_1ADDFC318(v29, *(&v24 + 1), v25, v31);
      }

      else
      {
        v26 = v37;
        sub_1AE03CA70(v36, *(&v36 + 1), v37, v38, *(&v38 + 1), v39, sub_1ADDCC35C, sub_1ADDFC318);
        *a7 = v23;
        *(a7 + 16) = v26;
        *(a7 + 24) = v24;
        *(a7 + 40) = v25;
      }
    }

    else
    {
      sub_1ADDFC010(a5 + 2, v15, HIDWORD(v16), v13, a5, a6, (a4 >> v13) & 0x1F, &v36);
      *a7 = v36;
      v27 = v39;
      *(a7 + 16) = v37;
      result = *&v38;
      *(a7 + 24) = v38;
      *(a7 + 40) = v27;
    }
  }

  return result;
}

int64_t sub_1ADDFA270(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = vpaddl_u16(vpaddl_u8(vcnt_s8(*a1)));
  v8 = v7.u32[0];
  v9 = v7.u32[1];
  v10 = 16 * (v7.u32[1] + v7.u32[0]);
  v11 = sub_1ADDDB860(v10 + a4);
  *(v11 + 16) = v6;
  v12 = *(v11 + 24);
  *(v11 + 28) -= v10;
  sub_1ADDFA388(v11 + 32, v9, v11 + 32 - 16 * v8 + v12, v8, a1, a2, v13);
  return v11;
}

int64_t sub_1ADDFA324(uint64_t a1, int8x8_t *a2, unint64_t a3)
{
  v4 = a2 + 2;
  if ((a2[2].i32[1] & a2[2].i32[0]) != 0)
  {
    return sub_1AE035A4C(v4, &a2[4], a2, a3);
  }

  else
  {
    return sub_1ADDFA270(v4, &a2[4], a3, a1);
  }
}

uint64_t sub_1ADDFA388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int32 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if (*a5 == v8)
  {
    v8 = *a5;
  }

  else if (v8)
  {
    a7.i32[0] = a5[1];
    v9 = vcnt_s8(a7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > a2)
    {
      goto LABEL_16;
    }

    v11 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    v12 = swift_arrayInitWithCopy();
    a4 = v11;
    v7 = *a5;
    v8 = a5[1];
  }

  a7.i32[0] = v7;
  v13 = vcnt_s8(a7);
  v13.i16[0] = vaddlv_u8(v13);
  if (v7 == v8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13.u32[0];
  }

  if (v14)
  {
    if (v14 <= a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);

      return swift_arrayInitWithCopy();
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return v12;
}

uint64_t sub_1ADDFA4B4(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  if (!a4)
  {
    return sub_1ADDD86D8(result, a2);
  }

  return result;
}

Swift::Bool __swiftcall CROrderedSet.needToFinalizeTimestamps()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for CRSet(0, v1, v2, v3);

  v4 = CRSet.needToFinalizeTimestamps()();

  if (v4)
  {
    return 1;
  }

  else
  {
    v6 = type metadata accessor for CROrderedSetElement(255, v1, v2, v3);
    type metadata accessor for CRSequence(0, v6, &off_1F23C8BA0, v7);

    v5 = CRSequence.needToFinalizeTimestamps()();
  }

  return v5;
}

double sub_1ADDFA5BC@<D0>(char a1@<W0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = BYTE1(a4);

  if ((v11 - 1) < 2)
  {
    *v5 = a2;
    v5[1] = a3;
    sub_1ADDFA4B4(a2, a3, a4, v11);
LABEL_10:
    result = 0.0;
    *a5 = xmmword_1AE2427C0;
    return result;
  }

  if (v11)
  {
    sub_1ADDFA4B4(a2, a3, a4, 3);
    *v5 = *sub_1AE23C1EC();
    v5[1] = 0;

    goto LABEL_10;
  }

  sub_1ADDFA4B4(a2, a3, a4, 0);
  if (!a1)
  {
    *v5 = sub_1AE038790(a2, a3, a4);
    v5[1] = v13;
    goto LABEL_10;
  }

  *v5 = *sub_1AE23C1EC();
  v5[1] = 0;
  *a5 = a2;
  *(a5 + 8) = a3;

  return result;
}

void sub_1ADDFA6D8(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v49 - v4;
  v57 = sub_1AE23BFEC();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v49 - v11;
  swift_beginAccess();
  v12 = *(a1 + 128);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v52 = v5 + 32;
  v54 = (v5 + 8);
  v55 = (v5 + 16);
  v56 = v12;

  v18 = 0;
  v51 = a1;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = v57;
      v21 = v53;
      (*(v5 + 16))(v53, *(v56 + 48) + *(v5 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v57);
      (*(v5 + 32))(v9, v21, v20);
      v58 = sub_1AE23BFCC();
      v59 = v22;
      v60 = v23;
      v61 = v24;
      v62 = v25;
      v63 = v26;
      v64 = v27;
      v65 = v28;
      v66 = v29;
      sub_1AE23BFCC();
      sub_1AE23BBCC();
      swift_allocObject();
      sub_1AE23BB6C();
      v30 = sub_1AE23BB7C();
      if (v30)
      {
        v31 = sub_1AE23BBAC();
        if (__OFSUB__(0, v31))
        {
          goto LABEL_26;
        }

        v30 -= v31;
      }

      v32 = sub_1AE23BB9C();
      v33 = 16;
      if (v32 < 16)
      {
        v33 = v32;
      }

      v34 = v33 + v30;
      v35 = v30 ? v34 : 0;
      v36 = v30;
      a1 = v51;
      sub_1ADDFAC20(v36, v35, v51, v9);
      if (v1)
      {
        break;
      }

      v16 &= v16 - 1;

      sqlite3_reset(*(a1 + 96));
      (*v54)(v9, v57);
      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    (*v54)(v9, v57);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 128) = MEMORY[0x1E69E7CD0];

    v37 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated;
    if (*(a1 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) == 1)
    {
      v38 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
      swift_beginAccess();
      v39 = a1 + v38;
      v40 = v50;
      sub_1ADDCEE40(v39, v50, &qword_1EB5BDC68, &unk_1AE253C20);
      v41 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        __break(1u);
      }

      else
      {
        v42 = a1;
        v43 = v49;
        v44 = v57;
        (*v55)(v49, v40, v57);
        v45 = sub_1ADDE5728(v40);
        v46 = sub_1ADDD8E0C(v45);
        v48 = v47;
        (*v54)(v43, v44);

        sub_1AE1A363C(v46, v48, v42);
        sub_1ADDCC35C(v46, v48);
        if (!v1)
        {
          sqlite3_reset(*(v42 + 112));
          *(v42 + v37) = 0;
        }
      }
    }
  }
}

uint64_t sub_1ADDFAC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sqlite3_bind_blob(*(a3 + 96), 1, a1, 16, *(a3 + 72));
  v6 = *(a3 + 96);
  swift_beginAccess();
  v7 = *(a3 + 120);
  if (!*(v7 + 16) || (v8 = sub_1ADDDF300(a4), (v9 & 1) == 0))
  {
    result = swift_endAccess();
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  sqlite3_bind_int64(v6, 2, v10);
  result = sqlite3_step(*(a3 + 96));
  if (result == 101)
  {
    return result;
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v12);

  v13 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024(v13, v14, v15);
  swift_allocError();
  *v16 = 0xD000000000000010;
  *(v16 + 8) = 0x80000001AE262AE0;
  *(v16 + 16) = 2;
  return swift_willThrow();
}

void sub_1ADDFAD90(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1AE23BFEC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA988, &qword_1AE245638);
  v7 = sub_1AE23D9DC();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1AE23CBBC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

uint64_t (*sub_1ADDFB0EC(uint64_t a1))()
{
  type metadata accessor for PartiallyOrderedReferenceMap(0);
  sub_1AE23C1FC();
  while (1)
  {
    v1 = v16;
    if (v16 >= DWORD1(v16))
    {
      v2 = sub_1AE23C20C();
      if (!v2)
      {
        v13[6] = v21;
        v14[0] = v22[0];
        *(v14 + 11) = *(v22 + 11);
        v13[2] = v17;
        v13[3] = v18;
        v13[4] = v19;
        v13[5] = v20;
        v13[0] = v15;
        v13[1] = v16;
        return sub_1ADDCEDE0(v13, &qword_1EB5BCD40, &unk_1AE251E50);
      }
    }

    else
    {
      v2 = *(&v15 + 1);
      LODWORD(v16) = v16 + 1;
    }

    v3 = v2 + *(v2 + 24) + 16 * ~v1;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    sub_1ADDD86D8(v4, v5);
    result = sub_1ADDDD53C(v13, v4, v5);
    v8 = result;
    if (v7[2])
    {
      break;
    }

LABEL_3:
    (v8)(v13, 0);
    sub_1ADDCC35C(v4, v5);
  }

  v9 = v7;
  if (*v7)
  {
    v10 = *(**v7 + 152);

    LOBYTE(v10) = v10(v11);

    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *v9 = (*(**v9 + 168))();
      }

      (*(**v9 + 160))(a1);
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

int64_t sub_1ADDFB30C(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  v7 = vshl_u32(vpaddl_u16(vpaddl_u8(vcnt_s8(*a1))), 0x400000006);
  v8 = (v7.i32[1] + v7.i32[0]);
  v9 = sub_1ADDDAC74(v8 + a4);
  *(v9 + 16) = v6;
  *(v9 + 28) -= v8;
  a5();
  return v9;
}

uint64_t sub_1ADDFB3E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int32 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if (*a5 == v8)
  {
    v8 = *a5;
  }

  else if (v8)
  {
    a7.i32[0] = a5[1];
    v9 = vcnt_s8(a7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > a2)
    {
      goto LABEL_16;
    }

    v11 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    v12 = swift_arrayInitWithCopy();
    a4 = v11;
    v7 = *a5;
    v8 = a5[1];
  }

  a7.i32[0] = v7;
  v13 = vcnt_s8(a7);
  v13.i16[0] = vaddlv_u8(v13);
  if (v7 == v8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13.u32[0];
  }

  if (v14)
  {
    if (v14 <= a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);

      return swift_arrayInitWithCopy();
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return v12;
}

Swift::Bool __swiftcall CRStruct_1.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v3 + 32))(v2, v3, v6);

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v2) = (*(*(AssociatedConformanceWitness + 16) + 56))(AssociatedTypeWitness);

  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v2 & 1;
}

uint64_t sub_1ADDFB6C0()
{
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v2);
    sub_1AE23CA9C();

    swift_getWitnessTable();
    v1 = sub_1AE23CF4C();
  }

  return v1 & 1;
}

void sub_1ADDFB81C()
{
  v1 = v0;
  v2 = sub_1AE23C12C();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Replica(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
  v7 = *v0;
  v8 = sub_1AE23DCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    v10 = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v11 + 8 * v12)
    {
      memmove(v10, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_1ADDDE3A0(*(v7 + 48) + v24, v19, type metadata accessor for Replica);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_1ADDDE540(v19, *(v42 + 48) + v24, type metadata accessor for Replica);
        v31 = v29;
        v7 = v36;
        (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

uint64_t sub_1ADDFBB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1ADDD8A6C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADDFB81C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for Replica(0);
    sub_1ADDE4FF8(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for Replica);
    v12 = *(v9 + 56);
    v13 = sub_1AE23C12C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1ADDF9CEC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1AE23C12C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1ADDFBCE8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v30 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v5 = v3 + v30[7];
  sub_1AE23C1FC();
  while (1)
  {
    v6 = v41;
    if (v41 < DWORD1(v41))
    {
      v7 = *(&v40 + 1);
      LODWORD(v41) = v41 + 1;
      goto LABEL_7;
    }

    v7 = sub_1AE23C20C();
    if (!v7)
    {
      break;
    }

LABEL_7:
    v8 = v7 + *(v7 + 24) + 16 * ~v6;
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);
    v11 = (v4 + v30[5]);
    sub_1ADDD86D8(v10, v9);
    v12 = sub_1ADDDD53C(&v32, v10, v9);
    if (*(v13 + 16))
    {
      sub_1ADDF8898(a1, a2 & 1, a3);
    }

    (v12)(&v32, 0);
    sub_1ADDDF7A8(v10, v9, *v11, &v32);
    v14 = v33;
    if (!v33)
    {
      sub_1ADDDC21C(v32, *(&v32 + 1), 0, *(&v33 + 1), v34, *(&v34 + 1));
      goto LABEL_13;
    }

    v15 = v32;
    v16 = *(&v33 + 1);
    v17 = v34;

    sub_1ADDDC21C(v15, *(&v15 + 1), v14, v16, v17, *(&v17 + 1));
    v18 = *(v16 + 16);

    if (v18)
    {
LABEL_3:
      sub_1ADDCC35C(v10, v9);
    }

    else
    {
LABEL_13:
      sub_1AE23E31C();
      sub_1AE23BECC();
      v19 = sub_1AE23E34C();
      sub_1ADDE0898(0, v10, v9, v19, &v32);
      v20 = v32;
      v21 = v33;
      if (*(&v32 + 1) >> 60 == 15)
      {
        sub_1ADECD780(v32, *(&v32 + 1), v33, *(&v33 + 1));
        goto LABEL_3;
      }

      ++*(v5 + 16);
      sub_1ADDE1588(v21, *(&v21 + 1));
      sub_1ADDCC35C(v10, v9);
      sub_1ADDCC35C(v20, *(&v20 + 1));
    }
  }

  v38 = v46;
  v39[0] = v47[0];
  *(v39 + 11) = *(v47 + 11);
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v32 = v40;
  v33 = v41;
  result = sub_1ADDCEDE0(&v32, &qword_1EB5BCD40, &unk_1AE251E50);
  v23 = *(*(v4 + v30[6]) + 16);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = sub_1ADDFC350(&v31, i);
      if (*v26)
      {
        sub_1ADDF8898(a1, a2 & 1, a3);
      }

      result = v25(&v31, 0);
    }
  }

  return result;
}

int8x8_t *sub_1ADDFC010@<X0>(int8x8_t *result@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *result;
  v15 = HIDWORD(*result);
  if ((v15 & v14) != 0)
  {
    if (v14 == 2)
    {
      v16 = 1 - a3;
      v17 = a2 + result[1].u32[0];
      v18 = *&v17[16 * ~a3];
      v19 = (*a2 >> a4) & 0x1FLL;
LABEL_4:
      *a8 = v18;
      v54 = *&v17[16 * ~v16];
      *(a8 + 24) = v54;
      *(a8 + 40) = v19;
      *(a8 + 41) = 0;
      *(a8 + 16) = a4;
      sub_1ADDD86D8(v18, *(&v18 + 1));
      v21 = *(&v54 + 1);
      v20 = v54;
      return sub_1ADDD86D8(v20, v21);
    }

    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDFA324(v29, a5, a6);
    v31 = v30;
    v33 = v32;
    LODWORD(v34) = v30[4];
    v35 = vcnt_s8(v34);
    v35.i16[0] = vaddlv_u8(v35);
    if (v34 == v30[5])
    {
      v34 = v34;
    }

    else
    {
      v34 = v35.u32[0];
    }

    v36 = v30 + v30[6] + -16 * v34;
    v30[7] += 16;
    v37 = 16 * (v34 + ~a3);
    v55 = *(v36 + 32 + v37);
    result = memmove((v36 + 48), (v36 + 32), v37);
    v38 = v31[4];
    if ((v31[5] & v38) != 0)
    {
      v39 = v38 - 1;
      v31[5] = v39;
    }

    else
    {
      v39 = v38 & ((-1 << a7) - 1);
    }

    v31[4] = v39;
    *a8 = v55;
    *(a8 + 24) = v31;
    *(a8 + 32) = v33 - 1;
    v52 = 512;
    goto LABEL_30;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v22 = vpaddl_u16(vpaddl_u8(vcnt_s8(*result)));
  v23 = vcgt_u32(0x200000002, v22);
  if (v23.i8[0] & 1) != 0 && v15 && (v23.i8[4])
  {
    v24 = *a2;
    if ((*(*a2 + 20) & *(*a2 + 16)) != 0)
    {
      v25 = a2[1];
      v26 = a2 + result[1].u32[0];
      v27 = *(v26 - 2);
      v28 = *(v26 - 1);
      *a8 = v27;
      *(a8 + 8) = v28;
      *(a8 + 24) = v24;
      *(a8 + 32) = v25;
      *(a8 + 40) = 512;
      *(a8 + 16) = a4;

      v20 = v27;
      v21 = v28;
      return sub_1ADDD86D8(v20, v21);
    }

    goto LABEL_21;
  }

  if (v22.i32[0] != 2 || v15 != 0)
  {
LABEL_21:
    v41 = sub_1ADDFB3E0();
    v42 = sub_1ADDFA324(v41, a5, a6);
    v43 = v42;
    v45 = v44;
    LODWORD(v46) = v42[4];
    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v46 == v42[5])
    {
      v46 = v46;
    }

    else
    {
      v46 = v47.u32[0];
    }

    v48 = v42 + v42[6] + -16 * v46;
    v42[7] += 16;
    v49 = 16 * (v46 + ~a3);
    v56 = *(v48 + 32 + v49);
    result = memmove((v48 + 48), (v48 + 32), v49);
    v50 = v43[4];
    if ((v43[5] & v50) != 0)
    {
      v51 = v50 - 1;
      v43[5] = v51;
    }

    else
    {
      v51 = v50 & ((-1 << a7) - 1);
    }

    v43[4] = v51;
    *a8 = v56;
    *(a8 + 24) = v43;
    *(a8 + 32) = v45 - 1;
    v52 = 256;
LABEL_30:
    *(a8 + 40) = v52;
    *(a8 + 16) = a4;
    return result;
  }

  v53 = v14 - 1;
  if (a3 == 1)
  {
    v53 = -1;
  }

  LODWORD(v19) = v53 & v14;
  if (v19)
  {
    v16 = 1 - a3;
    v17 = a2 + result[1].u32[0];
    v18 = *&v17[16 * ~a3];
    LOBYTE(v19) = __clz(__rbit32(v19));
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

double sub_1ADDFC318(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
    sub_1ADDCC35C(a1, a2);
  }

  return result;
}

uint64_t sub_1ADDFC350(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1ADDFC33C(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_1ADDFC51C;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1ADDFC3E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t get_enum_tag_for_layout_string_9Coherence9CRVersionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADDFC54C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    return sub_1ADDD9E68(v2 + v4, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADDFC604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  v14 = sub_1AE23DCCC();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v41 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v10 + 16);
    v43 = v10;
    v46 = (v10 + 32);
    v22 = v14 + 64;
    v44 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v47 = v25;
      v29 = *(v10 + 72);
      v30 = *(v13 + 48) + v29 * v28;
      if (v45)
      {
        (*v46)(v48, v30, v9);
      }

      else
      {
        (*v42)(v48, v30, v9);
      }

      v31 = *(*(v13 + 56) + 8 * v28);
      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v32 = sub_1AE23CBBC();
      v33 = -1 << *(v15 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v46)((*(v15 + 48) + v29 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v31;
      ++*(v15 + 16);
      v10 = v43;
      v13 = v44;
      v20 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v13 + 32);
    v7 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

uint64_t sub_1ADDFC9CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BFEC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1ADDFCA84(uint64_t a1)
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
    (*(*(*(*(v4 + 288) + 16) + 8) + 16))(a1, v5);
    return (*(v11 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1ADDFCC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 112))
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v5 = 0xD00000000000003DLL;
    *(v5 + 8) = 0x80000001AE2603A0;
    *(v5 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v4 = *(v3 + 120);
    if (!v4)
    {
      type metadata accessor for CREncoder.CRDTContainer();
      v4 = swift_allocObject();
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = inited;
      *(v3 + 120) = v4;
    }
  }

  return v4;
}

double sub_1ADDFCD3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v11 = v9;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v11;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    a4(inited, a2, a3);
    swift_setDeallocating();
  }

  return result;
}

double sub_1ADDFCE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v9 = swift_allocObject();
    v10 = *(v8 + 16);
    *(v9 + 16) = v10;
    sub_1ADE5215C(v10);

    *v3 = v9;
    v8 = v9;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v12 = v11 | 0x3000000000000000;
  v13 = *(v8 + 16);
  *(v8 + 16) = v12;

  return sub_1ADE52174(v13);
}

uint64_t sub_1ADDFCF44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1ADDFCFF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v11 = *(*(a3 + 8) + 8);
  (*(v11 + 56))(a2, v11);
  a4(a1, a2, a3);
  v12 = v5;
  if (!v5)
  {
    v47 = a5;
    v48 = a1;
    v13 = (*(v11 + 24))(a2, v11);
    v14 = 0;
    v16 = v13 + 64;
    v15 = *(v13 + 64);
    v49 = v13;
    v17 = 1 << *(v13 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v45 = v20;
    for (i = v13 + 64; ; v16 = i)
    {
      v24 = v48;
      if (!v19)
      {
        break;
      }

LABEL_11:
      v26 = __clz(__rbit64(v19)) | (v14 << 6);
      v27 = (*(v49 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      v53 = *(*(v49 + 56) + 8 * v26);
      MEMORY[0x1EEE9AC00](v13);
      v44[2] = &v53;
      v44[3] = v24;

      sub_1ADE6B9FC(v47, v44);
      v51 = v12;
      if (v12)
      {

        return;
      }

      v30 = *(v24 + 16);
      v50 = sub_1ADE66494(v29, v28);

      swift_beginAccess();
      v31 = *(*(v30 + 24) + 16);
      v32 = (~v31 & 0xF000000000000007) != 0 && (v31 & 0xF000000000000000) == 0x3000000000000000;
      v33 = MEMORY[0x1E69E7CC0];
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v36 = (v31 & 0xFFFFFFFFFFFFFFFLL);
        v34 = v36[2];
        v35 = v36[3];
        v33 = v36[4];
      }

      v52 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1ADDF69D0(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      if (v38 >= v37 >> 1)
      {
        v34 = sub_1ADDF69D0((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v38 + 1;
      *&v34[8 * v38 + 32] = v50;

      MEMORY[0x1B26FB860](v39);
      if (*(v52 + 16) >= *(v52 + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      v40 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v30 + 24);
        type metadata accessor for Proto_CRDT._StorageClass();
        v42 = swift_allocObject();
        *(v42 + 16) = 0xF000000000000007;
        v43 = *(v41 + 16);
        *(v42 + 16) = v43;
        *(v30 + 24) = v42;
        sub_1ADE5215C(v43);
      }

      v19 &= v19 - 1;
      v21 = *(v30 + 24);
      v22 = swift_allocObject();
      *(v22 + 16) = v34;
      *(v22 + 24) = v40;
      *(v22 + 32) = v33;
      v23 = *(v21 + 16);
      *(v21 + 16) = v22 | 0x3000000000000000;
      swift_endAccess();
      sub_1ADE52174(v23);

      v12 = v51;
      v20 = v45;
    }

    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v20)
      {

        return;
      }

      v19 = *(v16 + 8 * v25);
      ++v14;
      if (v19)
      {
        v14 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADDFD3C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t CRStruct_1.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v15 - v8;
  v10 = (*(v4 + 32))(a2, v4, v7);
  v12 = v11;

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ADDFD59C(v9, v10, v12, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 16) + 8));

  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

void sub_1ADDFD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 48))(a4, a5);
  if ((v12 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v12);
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = a1;
    v23[5] = v5;
    v13 = sub_1ADE6B9FC(sub_1ADE744C8, v23);
    if (!v6)
    {
      v14 = v13;
      v15 = *(v5 + 16);
      v16 = sub_1ADE66494(a2, a3);
      swift_beginAccess();
      v17 = *(*(v15 + 24) + 16);
      if ((~v17 & 0xF000000000000007) != 0 && (v17 & 0xF000000000000000) == 0x3000000000000000)
      {
        v22 = (v17 & 0xFFFFFFFFFFFFFFFLL);
        v19 = v22[2];
        v20 = v22[3];
        v21 = v22[4];
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
        v20 = MEMORY[0x1E69E7CC0];
        v21 = MEMORY[0x1E69E7CC0];
      }

      v24 = v19;
      v25 = v20;
      v26 = v21;
      sub_1ADE6C448(v14, v16);
      sub_1ADDFCE90(v24, v25, v26);
      swift_endAccess();
    }
  }
}

BOOL CROrderedSet.isDefaultState.getter()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1ADDFD7A0(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 16));
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t Capsule.rootID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t (*sub_1ADDFD8B4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(a2, v9, type metadata accessor for Replica);
  v6[9] = sub_1ADDFDB68(v6);
  v6[10] = sub_1ADDFD9B0(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1ADDFDE3C;
}

void (*sub_1ADDFD9B0(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0xD8uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 168) = a2;
  *(v9 + 176) = v4;
  v11 = *(type metadata accessor for Replica(0) - 8);
  *(v10 + 184) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 192) = v12;
  v13 = *v4;
  v14 = sub_1ADDD8A6C(a2);
  *(v10 + 208) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1ADF6E86C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1ADDE4890(v19, a3 & 1);
    v14 = sub_1ADDD8A6C(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 200) = v14;
  if (v20)
  {
    sub_1ADDE5634(*(*v4 + 56) + 24 * v14, v10);
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
  }

  return sub_1ADDFDED0;
}

uint64_t (*sub_1ADDFDB68(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ADDE5788;
}

unint64_t sub_1ADDFDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1ADDFDCDC(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_1ADDFDB90(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

void sub_1ADDFDDC8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1ADDE4FF8(v2, type metadata accessor for Replica);
  free(v2);

  free(v1);
}

void sub_1ADDFDE40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1ADDE4FF8(v3, type metadata accessor for Replica);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void sub_1ADDFDED0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_1ADDCEE40(*a1, v2 + 120, &qword_1EB5BA468, &unk_1AE259210);
    v7 = *(v2 + 208);
    if (*(v2 + 120))
    {
      v8 = *(v2 + 176);
      sub_1ADDE5634(v2 + 120, v2 + 96);
      v5 = *v8;
      v6 = *(v2 + 200);
      if (v7)
      {
        sub_1ADDE5634(v2 + 96, v5[7] + 24 * v6);
        goto LABEL_15;
      }

      v11 = *(v2 + 192);
      sub_1ADDDE3A0(*(v2 + 168), v11, type metadata accessor for Replica);
      sub_1ADDE5634(v2 + 96, v2 + 144);
      v12 = v2 + 144;
      goto LABEL_14;
    }

    sub_1ADDCEDE0(v2 + 120, &qword_1EB5BA468, &unk_1AE259210);
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    v9 = *(v2 + 200);
    v10 = **(v2 + 176);
    sub_1ADDE4FF8(*(v10 + 48) + *(*(v2 + 184) + 72) * v9, type metadata accessor for Replica);
    sub_1ADF6CF18(v9, v10);
    goto LABEL_15;
  }

  sub_1ADDCEE40(*a1, v2 + 48, &qword_1EB5BA468, &unk_1AE259210);
  v3 = *(v2 + 208);
  if (*(v2 + 48))
  {
    v4 = *(v2 + 176);
    sub_1ADDE5634(v2 + 48, v2 + 24);
    v5 = *v4;
    v6 = *(v2 + 200);
    if (v3)
    {
      sub_1ADDE5634(v2 + 24, v5[7] + 24 * v6);
      goto LABEL_15;
    }

    v11 = *(v2 + 192);
    sub_1ADDDE3A0(*(v2 + 168), v11, type metadata accessor for Replica);
    sub_1ADDE5634(v2 + 24, v2 + 72);
    v12 = v2 + 72;
LABEL_14:
    sub_1ADDE21EC(v6, v11, v12, v5);
    goto LABEL_15;
  }

  sub_1ADDCEDE0(v2 + 48, &qword_1EB5BA468, &unk_1AE259210);
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_15:
  v13 = *(v2 + 192);
  sub_1ADDCEDE0(v2, &qword_1EB5BA468, &unk_1AE259210);
  free(v13);

  free(v2);
}

uint64_t sub_1ADDFE0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 56) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = type metadata accessor for Replica(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v0 + v4, 1, v6))
  {
    v8 = sub_1AE23BFEC();
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  if (!v7(v0 + v5, 1, v6))
  {
    v9 = sub_1AE23BFEC();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v3, v2 | 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1ADDFE348(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_17:
      sub_1ADE42E40(a1, a2, a3);
      swift_allocError();
      *v14 = xmmword_1AE241D20;
      *(v14 + 16) = 0;
      swift_willThrow();
      sub_1ADDCC35C(v4, a2);
      return;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_21;
      }

      if (v4 > v4 >> 32)
      {
        goto LABEL_24;
      }

      v10 = sub_1AE23BB7C();
      if (!v10)
      {
        goto LABEL_29;
      }

      v11 = v10;
      v12 = sub_1AE23BBAC();
      if (__OFSUB__(v4, v12))
      {
        goto LABEL_26;
      }

      v13 = v4 - v12 + v11;
      a1 = sub_1AE23BB9C();
      if (v13)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        goto LABEL_23;
      }

      if (HIDWORD(v4) - v4 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(v4 + 16);
    v16 = sub_1AE23BB7C();
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = v16;
    v18 = sub_1AE23BBAC();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      sub_1AE23BB9C();
      if (!v19)
      {
        goto LABEL_28;
      }

LABEL_21:
      sub_1AE23BFBC();
      sub_1ADDCC35C(v4, a2);
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1AE23BB9C();
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1AE23BB9C();
  __break(1u);
}

void sub_1ADDFE5A4(char *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = sub_1AE23BDDC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v53 = a3;
  sub_1ADDCEE40(a3, v13, &qword_1EB5B9DC0, &qword_1AE240B90);
  v22 = *(v15 + 48);
  v23 = v22(v13, 1, v14);
  v55 = v21;
  v56 = a1;
  if (v23 == 1)
  {
    sub_1ADE3E4E8(v21);
    if (v22(v13, 1, v14) != 1)
    {
      sub_1ADDCEDE0(v13, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
  }

  v24 = *(v15 + 16);
  v25 = (v15 + 56);
  if (!*(v61 + 24))
  {
    v24(v7, v56, v14);
    (*v25)(v7, 0, 1, v14);
    v38 = v54;
    v39 = sub_1ADDCFD3C(v7);
    if (!v38)
    {
      v54 = v39;
      v42 = v51;
      v43 = v55;
      v44 = (v24)(v51, v55, v14);
      if (qword_1ED969C40 != -1)
      {
        v44 = swift_once();
      }

      v45 = qword_1ED969C50;
      MEMORY[0x1EEE9AC00](v44);
      *(&v51 - 2) = v42;
      *(&v51 - 1) = v43;
      os_unfair_lock_lock((v45 + 24));
      sub_1ADDFEC7C((v45 + 16), v59);
      os_unfair_lock_unlock((v45 + 24));
      v46 = *&v59[0];
      v47 = *(v15 + 8);
      v47(v42, v14);
      v48 = type metadata accessor for CRContext();
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR___CRContext_assetManager] = v46;
      sub_1ADDCEE40(v59, &v49[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
      v50 = &v49[OBJC_IVAR___CRContext_crdtDatabase];
      *v50 = v54;
      v50[1] = &off_1F23C69F0;
      v58.receiver = v49;
      v58.super_class = v48;
      objc_msgSendSuper2(&v58, sel_init);
      sub_1ADDCEDE0(v59, &qword_1EB5B9DB0, &qword_1AE240B80);
      sub_1ADDCEDE0(v53, &qword_1EB5B9DC0, &qword_1AE240B90);
      v47(v56, v14);
      v47(v43, v14);
      v37 = v61;
      goto LABEL_14;
    }

    v26 = v56;
LABEL_10:
    v40 = v55;
    sub_1ADDCEDE0(v53, &qword_1EB5B9DC0, &qword_1AE240B90);
    v41 = *(v15 + 8);
    v41(v26, v14);
    v41(v40, v14);
    sub_1ADDCEDE0(v61, &qword_1EB5B9DB0, &qword_1AE240B80);
    return;
  }

  v26 = v56;
  v24(v10, v56, v14);
  (*v25)(v10, 0, 1, v14);
  v27 = v54;
  v28 = sub_1ADDCFD3C(v10);
  if (v27)
  {
    goto LABEL_10;
  }

  v29 = v28;
  v30 = v52;
  v24(v52, v55, v14);
  v31 = v61;
  sub_1ADDCEE40(v61, v59, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CRAssetManager(0);
  swift_allocObject();
  v32 = sub_1ADDCD880(v30, v59);
  sub_1ADDCEE40(v31, v59, &qword_1EB5B9DB0, &qword_1AE240B80);
  v33 = type metadata accessor for CRContext();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR___CRContext_assetManager] = v32;
  sub_1ADDCEE40(v59, &v34[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
  v35 = &v34[OBJC_IVAR___CRContext_crdtDatabase];
  *v35 = v29;
  v35[1] = &off_1F23C69F0;
  v57.receiver = v34;
  v57.super_class = v33;
  objc_msgSendSuper2(&v57, sel_init);
  sub_1ADDCEDE0(v59, &qword_1EB5B9DB0, &qword_1AE240B80);
  sub_1ADDCEDE0(v53, &qword_1EB5B9DC0, &qword_1AE240B90);
  v36 = *(v15 + 8);
  v36(v56, v14);
  v36(v55, v14);
  v37 = v61;
LABEL_14:
  sub_1ADDCEDE0(v37, &qword_1EB5B9DB0, &qword_1AE240B80);
}

uint64_t sub_1ADDFEC30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD38, &unk_1AE254570);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ED969C50 = result;
  return result;
}

void sub_1ADDFEC98(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_1ADDFF050(a2), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    (*(v9 + 16))(v12, a3, v8, v10);
    type metadata accessor for CRAssetManager(0);
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v16 = swift_allocObject();
    sub_1ADDCD880(v12, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[0] = *a1;
    sub_1ADDFEE20(v16, a2, isUniquelyReferenced_nonNull_native);
    *a1 = *&v18[0];
  }

  *a4 = v16;
}

void sub_1ADDFEE60(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1ADDFF050(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_9;
    }

    v29();
    v23 = sub_1ADDFF050(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_1AE23E27C();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    v30(v17, v14, v25, v26);
  }
}

unint64_t sub_1ADDFF050(uint64_t a1)
{
  sub_1AE23BDDC();
  v2 = MEMORY[0x1E6968FB0];
  sub_1ADDDF574(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v3 = sub_1AE23CBBC();
  return sub_1ADDDF3D4(a1, v3, MEMORY[0x1E6968FB0], &qword_1ED969648, v2, MEMORY[0x1E6968FC8]);
}

void sub_1ADDFF138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = sub_1AE23DCCC();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v30 = sub_1AE23CBBC();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

uint64_t sub_1ADDFF51C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BDDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1ADDFF5D4()
{
  sub_1ADDFF738();

  sub_1ADDCEDE0(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica, &qword_1EB5BDC68, &unk_1AE253C20);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADDFF690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_1ADDFF738()
{
  sub_1ADDF71B4();
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sqlite3_finalize(*(v0 + 88));
    sqlite3_finalize(*(v0 + 96));
    sqlite3_finalize(*(v0 + 104));
    sqlite3_finalize(*(v0 + 112));
    if (sqlite3_close(*(v0 + 32)))
    {
      sub_1AE23DA2C();

      v1 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v1);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1AE23DC5C();
      __break(1u);
    }
  }
}

uint64_t sub_1ADDFF86C(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_1ADDEF390(a1);
  v5 = type metadata accessor for CROrderedSetElement(0, a1[2], a1[3], a1[4]);
  v6 = a2(v4, v5);

  return v6;
}

void (*sub_1ADDFF8D0(uint64_t **a1, uint64_t *a2, uint64_t *a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADDFF980(v6, *a2, a3);
  return sub_1ADDF195C;
}

uint64_t sub_1ADDFF958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = CROrderedSet.startIndex.getter(a1);
  *a2 = 0;
  return result;
}

uint64_t (*sub_1ADDFF980(uint64_t *a1, uint64_t a2, uint64_t *a3))()
{
  v6 = a3[2];
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CROrderedSet.subscript.getter(a2, a3, v9);
  return sub_1ADE022F8;
}

uint64_t CRSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CRSet.index(of:)(a1, a2, v12);
  if (v13 == 255)
  {
    v8 = *(*(*(a2 + 16) - 8) + 56);
    v9 = a3;
    v10 = 1;
  }

  else
  {
    v6 = v12[0];
    v5 = v12[1];
    v13 &= 1u;
    v7 = v13;
    CRSet.subscript.getter();
    sub_1ADDFFBC8(v6, v5, v7);
    v8 = *(*(*(a2 + 16) - 8) + 56);
    v9 = a3;
    v10 = 0;
  }

  return v8(v9, v10, 1);
}

unint64_t sub_1ADDFFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23CBBC();

  return sub_1ADDF0104(a1, v6, a2, a3);
}

uint64_t sub_1ADDFFBC8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

Swift::Int __swiftcall CROrderedSet.index(after:)(Swift::Int after)
{
  sub_1ADDEF390(v1);

  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1ADDFFC0C(Swift::Int *a1)
{
  result = CROrderedSet.index(after:)(*a1);
  *a1 = result;
  return result;
}

void sub_1ADDFFC38(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v1;
  *(a1 + 32) = 1;
}

uint64_t sub_1ADDFFC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE23C4BC();
      }

      else if (result == 2)
      {
        sub_1AE1CB7C4(2, v5, v6);
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t CRAttributedString.init(defaultState:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v2 = swift_allocObject();
  result = sub_1ADDEBF04();
  *a1 = v2;
  return result;
}

Coherence_namespace::TopoReplica *Coherence_namespace::TopoReplica::TopoReplica(Coherence_namespace::TopoReplica *this, NSUUID *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  *(this + 4) = a3;
  if (v5)
  {
    [(NSUUID *)v5 getUUIDBytes:this];
  }

  else
  {
    uuid_clear(this);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

void CRAttributedString.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE02344(a2, a3, &v11);
    swift_setDeallocating();

    if (!v4)
    {
      *a4 = v11;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADE0009C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_13:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      v15 = *(*(a1 + 56) + 8 * v13);

      if (!v15)
      {
        return;
      }

      v16 = sub_1ADF4A3F0(v14);
      if ((v17 & 1) == 0)
      {

        return;
      }

      v18 = *(**(*(a2 + 56) + 8 * v16) + 96);

      LOBYTE(v18) = v18(v15);

      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADE00238()
{

  return swift_deallocClassInstance();
}

void sub_1ADE002EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence19CRTTMergeableString;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1ADE003BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = v1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v7 = *(v6 + 8);
  if (a1)
  {
    v8 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v9 = sub_1AE23BFEC();
    (*(*(v9 - 8) + 16))(v5, a1 + v8, v9);
    v10 = *(a1 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
    v11 = type metadata accessor for Replica(0);
    *&v5[*(v11 + 20)] = v10;
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Replica(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_1ADDCEDE0(v5, &unk_1EB5B9E70, &unk_1AE240EC0);

  v13 = type metadata accessor for ObjCVersion();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
  v16 = MEMORY[0x1E69E7CC8];
  *v15 = MEMORY[0x1E69E7CC8];
  *(v15 + 1) = v16;
  swift_beginAccess();
  *v15 = v16;
  *(v15 + 1) = v7;

  v19.receiver = v14;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1ADE00714(uint64_t a1)
{
  v131 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v102 - v3;
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v102 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v102 - v21;
  v104 = type metadata accessor for Replica(0);
  v120 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v112 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v133 = &v102 - v32;
  v113 = v1;
  v33 = *v1 + 64;
  v34 = 1 << *(*v1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(*v1 + 64);
  v37 = (v34 + 63) >> 6;
  v124 = v5 + 16;
  v132 = (v5 + 32);
  v130 = (v5 + 8);
  v107 = (v5 + 56);
  v126 = v5;
  v106 = (v5 + 40);
  v38 = 0;

  v114 = v125;
  v121 = v25;
  v122 = v19;
  v127 = v4;
  v128 = v37;
  v118 = v30;
  v129 = v33;
  while (1)
  {
    v39 = v133;
    if (!v36)
    {
      break;
    }

    v40 = v38;
LABEL_15:
    v43 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v44 = v43 | (v40 << 6);
    v45 = v125;
    v46 = v119;
    sub_1ADDDE3A0(*(v125 + 48) + *(v120 + 72) * v44, v119, type metadata accessor for Replica);
    v47 = *(v45 + 56);
    v48 = v126;
    v4 = v127;
    v49 = v123;
    (*(v126 + 16))(v123, v47 + *(v126 + 72) * v44, v127);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v51 = *(v50 + 48);
    v52 = v46;
    v30 = v118;
    sub_1ADDDE540(v52, v118, type metadata accessor for Replica);
    (*(v48 + 32))(&v30[v51], v49, v4);
    (*(*(v50 - 8) + 56))(v30, 0, 1, v50);
    v25 = v121;
    v19 = v122;
    v39 = v133;
LABEL_16:
    sub_1ADDD2198(v30, v39, &qword_1EB5BA458, &qword_1AE251E00);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v53 - 8) + 48))(v39, 1, v53) == 1)
    {

      return;
    }

    v54 = *(v53 + 48);
    sub_1ADDDE540(v39, v25, type metadata accessor for Replica);
    v55 = v39;
    v56 = *v132;
    (*v132)(v19, v55 + v54, v4);
    if (*(v131 + 16) && (v57 = sub_1ADDD8A6C(v25), (v58 & 1) != 0))
    {
      v59 = *(v131 + 56);
      v103 = *(v126 + 72);
      v60 = *(v126 + 16);
      v61 = v19;
      v62 = v115;
      (v60)(v115, v59 + v103 * v57, v4);
      (v60)(v123, v61, v127);
      (v60)(v116, v61, v127);
      v102 = v60;
      (v60)(v110, v62, v127);
      sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v63 = v109;
      sub_1AE23D8AC();
      v4 = v127;
      sub_1AE23D88C();
      v105 = *(v126 + 8);
      v105(v63, v4);
      v64 = sub_1AE23C04C();
      v37 = v128;
      v33 = v129;
      if (v64 < 1)
      {
        v80 = sub_1ADDD8A6C(v25);
        if (v81)
        {
          v82 = v80;
          v83 = v113;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = *v83;
          v134 = v85;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1ADDFB81C();
            v85 = v134;
          }

          v86 = *(v85 + 48) + *(v120 + 72) * v82;
          v102 = type metadata accessor for Replica;
          sub_1ADDE4FF8(v86, type metadata accessor for Replica);
          v87 = *(v85 + 56) + v82 * v103;
          v114 = v85;
          v56(v108, v87, v4);
          sub_1ADDF9CEC(v82, v85);
          v88 = v105;
          v105(v117, v4);
          v88(v115, v4);
          v19 = v122;
          v88(v122, v4);
          v89 = v108;
          sub_1ADDE4FF8(v25, v102);
          v90 = 0;
          *v113 = v114;
        }

        else
        {
          v101 = v105;
          v105(v117, v4);
          v101(v115, v4);
          v19 = v122;
          v101(v122, v4);
          sub_1ADDE4FF8(v25, type metadata accessor for Replica);
          v90 = 1;
          v89 = v108;
        }

        (*v107)(v89, v90, 1, v4);
        sub_1ADDCEDE0(v89, &qword_1EB5BB780, &qword_1AE24CD18);
      }

      else
      {
        v65 = v25;
        v66 = v112;
        sub_1ADDDE3A0(v65, v112, type metadata accessor for Replica);
        (v102)(v111, v117, v4);
        v67 = v113;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = *v67;
        v134 = v69;
        v71 = sub_1ADDD8A6C(v66);
        v72 = *(v69 + 16);
        v73 = (v70 & 1) == 0;
        v74 = v72 + v73;
        if (__OFADD__(v72, v73))
        {
          goto LABEL_40;
        }

        if (*(v69 + 24) >= v74)
        {
          if (v68)
          {
            goto LABEL_31;
          }

          v76 = v70;
          sub_1ADDFB81C();
        }

        else
        {
          v75 = v68;
          v76 = v70;
          sub_1ADDDDED0(v74, v75);
          v77 = sub_1ADDD8A6C(v112);
          if ((v76 & 1) != (v78 & 1))
          {
            goto LABEL_42;
          }

          v71 = v77;
        }

        v70 = v76;
LABEL_31:
        v91 = v134;
        v114 = v134;
        if (v70)
        {
          (*v106)(*(v134 + 56) + v71 * v103, v111, v4);
          sub_1ADDE4FF8(v112, type metadata accessor for Replica);
          v92 = v105;
          v105(v117, v4);
          v92(v115, v4);
          v19 = v122;
          v92(v122, v4);
          v25 = v121;
          sub_1ADDE4FF8(v121, type metadata accessor for Replica);
          *v113 = v114;
        }

        else
        {
          *(v134 + 8 * (v71 >> 6) + 64) |= 1 << v71;
          v93 = *(v91 + 48) + *(v120 + 72) * v71;
          v94 = v71;
          v95 = v112;
          sub_1ADDDE3A0(v112, v93, type metadata accessor for Replica);
          v56((*(v91 + 56) + v94 * v103), v111, v4);
          sub_1ADDE4FF8(v95, type metadata accessor for Replica);
          v96 = v105;
          v105(v117, v4);
          v96(v115, v4);
          v19 = v122;
          v96(v122, v4);
          v25 = v121;
          v97 = v114;
          sub_1ADDE4FF8(v121, type metadata accessor for Replica);
          v98 = *(v97 + 16);
          v99 = __OFADD__(v98, 1);
          v100 = v98 + 1;
          if (v99)
          {
            goto LABEL_41;
          }

          *(v97 + 16) = v100;
          *v113 = v97;
        }
      }
    }

    else
    {
      (*v130)(v19, v4);
      sub_1ADDE4FF8(v25, type metadata accessor for Replica);
      v37 = v128;
      v33 = v129;
    }
  }

  if (v37 <= v38 + 1)
  {
    v41 = v38 + 1;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 - 1;
  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v79 - 8) + 56))(v30, 1, 1, v79);
      v36 = 0;
      v38 = v42;
      goto LABEL_16;
    }

    v36 = *(v33 + 8 * v40);
    ++v38;
    if (v36)
    {
      v38 = v40;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_1AE23E27C();
  __break(1u);
}

void sub_1ADE01604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v11 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1ADE016F8()
{
  v1 = qword_1ED96F260;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1ADE01768()
{
  sub_1ADE016F8();

  return swift_deallocClassInstance();
}

void sub_1ADE017C0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Replica(0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 24);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v19 > a1;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    (*(v8 + 16))(v10, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v7, v15);

    (*(v8 + 32))(v17, v10, v7);
    *&v17[*(v11 + 20)] = 0;
    sub_1ADDE5F9C(v17, a4, type metadata accessor for Replica);
    *(a4 + *(type metadata accessor for Timestamp(0) + 20)) = v23;
  }

  else
  {
    sub_1ADE42E40(v12, v13, v14);
    swift_allocError();
    *v21 = 0xD000000000000013;
    *(v21 + 8) = 0x80000001AE25FD70;
    *(v21 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADE01A24(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void traverseUnordered(uint64_t a1, void *a2)
{
  v22 = a1;
  v3 = a2;
  if (a1)
  {
    memset(v20, 0, sizeof(v20));
    v21 = 1065353216;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    v17 = 0;
    std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v22);
    std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v20, &v22, &v22);
    for (i = *(&v19 + 1); *(&v19 + 1); i = *(&v19 + 1))
    {
      v5 = i - 1;
      v6 = *(*(*(&v18[0] + 1) + (((v19 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v19 + v5) & 0x1FF));
      *(&v19 + 1) = v5;
      std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v18, 1);
      v3[2](v3, v6, &v17);
      if (v17)
      {
        break;
      }

      v7 = (v6 + 56);
      v8 = *(v6 + 56);
      v9 = (v6 + 64);
      if (*(v6 + 64) - v8 == 8)
      {
        v10 = 0;
        do
        {
          v11 = *v8;
          if (*(*v8 + 80) != 1)
          {
            break;
          }

          v3[2](v3, v11, &v17);
          v10 = v17;
          if ((v17 & 1) != 0 || v11 == v6)
          {
            goto LABEL_21;
          }

          v13 = *(v11 + 56);
          v12 = (v11 + 56);
          v8 = v13;
          v9 = v12 + 1;
          v7 = v12;
        }

        while (v12[1] - v13 == 8);
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        break;
      }

      v14 = *v7;
      v15 = *v9;
      while (v14 != v15)
      {
        v16 = *v14;
        if (*(v16 + 80) > 1u)
        {
          if (!std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(v20, &v16))
          {
            std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v16);
            std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v20, &v16, &v16);
          }
        }

        else
        {
          std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v16);
        }

        ++v14;
      }
    }

LABEL_21:
    std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](v18);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v20);
  }
}

void sub_1ADE01DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(float *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1ADE022F8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t *sub_1ADE02344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1ADDE78C8();
  v8 = *(v7 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x4000000000000000)
  {
    v18 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v19 = *(v18 + 80);
    *&v26[16] = *(v18 + 64);
    *&v26[32] = v19;
    *&v26[48] = *(v18 + 96);
    *&v26[64] = *(v18 + 112);
    v20 = *(v18 + 32);
    v24 = *(v18 + 16);
    v25 = v20;
    *v26 = *(v18 + 48);
    sub_1ADE51B64(&v24, v23);

    v17 = *&v26[56];
    v16 = *&v26[40];
    v15 = *&v26[24];
    v13 = *&v26[8];
    v11 = *v26;
    v12 = v25;
    v14 = *(&v24 + 1);
    v10 = v24;
  }

  else
  {

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v13 = 0uLL;
    v14 = 0xE000000000000000;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v24 = v10;
  *(&v24 + 1) = v14;
  v25 = v12;
  *v26 = v11;
  *&v26[8] = v13;
  *&v26[24] = v15;
  *&v26[40] = v16;
  *&v26[56] = v17;
  v21 = *(v3 + 16);

  return sub_1ADE02488(&v24, v21, a1, a2, a3);
}

uint64_t *sub_1ADE02488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v11 = swift_allocObject();
  result = sub_1ADDF1750(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v11;
  }

  return result;
}

uint64_t sub_1ADE0262C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 32) = *(a2 + 32);

  swift_beginAccess();
  v6 = *(a2 + 48);
  swift_beginAccess();
  *(v2 + 48) = v6;

  *(v2 + 56) = *(a2 + 56);
  *(v2 + 72) = a1;

  *(v2 + 57) = *(a2 + 57);
  return v2;
}

void sub_1ADE02740(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v11 = *(a1 + 24);
    type metadata accessor for CRGroupedRegisterRef(0, v6, v11, v8);
    if (swift_dynamicCastClass())
    {
      type metadata accessor for CRRegisterRef(0, v6, v11, v12);
      v13 = a1;
      v14 = v1;
      CRRegister.value.getter(v13);
      v16[1] = *v1;
      CRRegister.timestamp.getter(v5);
      v15 = swift_allocObject();
      sub_1ADDD25B8(v10, v5);

      *v14 = v15;
    }
  }
}

void sub_1ADE02898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for CRRegisterRefBase(0, *(a1 + 16), *(a1 + 24), a4);
  if ((sub_1AE23DFAC() & 1) == 0)
  {
    v6 = *v4;
    if (*v5)
    {
      v6 = (*(*v6 + 176))();
    }

    *v5 = v6;
  }
}

void UUID.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    sub_1ADE02BFC(inited, v14, v16, v17);
    if (!v2)
    {

      (*(v9 + 32))(a2, v14, v8);
      return;
    }

    v18 = v2;
  }

  else
  {
    sub_1ADE42E40(v10, v11, v12);
    v18 = swift_allocError();
    *v19 = 0xD000000000000017;
    *(v19 + 8) = 0x80000001AE25FB70;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  CRKeyPath.init(from:)(v20, &v30);
  v32 = a2;
  v21 = v30;
  v22 = v31;
  v28 = v30;
  v29 = v31;
  CRKeyPath.uuid.getter(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1ADDD11C8(v7);
    sub_1ADDCC35C(v21, v22);
    sub_1ADE42E40(v23, v24, v25);
    swift_allocError();
    *v26 = 0xD000000000000016;
    *(v26 + 8) = 0x80000001AE25FD50;
    *(v26 + 16) = 0;
    swift_willThrow();
  }

  else
  {

    (*(v9 + 32))(v32, v7, v8);
    sub_1ADDCC35C(v21, v22);
  }
}

void sub_1ADE02BFC(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = 0xD000000000000016;
    v8 = *(v6 + 16);
    v9 = "Wrong format for Data.";
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v10 = (v8 >> 59) & 0x1E | (v8 >> 2) & 1;
      if (v10 == 5)
      {
        v14 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v15 = *(v5 + 24);
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = v14 >= v16;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v21 = sub_1AE23BFEC();
          (*(*(v21 - 8) + 16))(a2, v15 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(*(v21 - 8) + 72) * v14, v21);
          return;
        }

        v9 = "Wrong format for UUID.";
        v7 = 0xD000000000000013;
      }

      else if (v10 == 3)
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v12 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADDD86D8(v11, v12);
        sub_1ADDFE348(v11, v12, v13);
        return;
      }
    }

    v18 = v9 | 0x8000000000000000;
    sub_1ADE42E40(a1, a3, a4);
    swift_allocError();
    *v19 = v7;
    *(v19 + 8) = v18;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1ADE02D74()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

uint64_t CRRegister.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1ADE031A0(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t CRRegister.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *v1;
  if (v7)
  {
    (*(*v7 + 120))(v4);
    v8 = type metadata accessor for FinalizedTimestamp(0);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1ADE172E4(v6, a1);
  }

  else
  {
    v10 = type metadata accessor for FinalizedTimestamp(0);
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v10, qword_1EB5D74D0);
    sub_1ADED0548(v12, a1);
    result = (*(v11 + 48))(v6, 1, v10);
    if (result != 1)
    {
      return sub_1ADE1727C(v6);
    }
  }

  return result;
}

uint64_t sub_1ADE02FDC()
{
  v0 = type metadata accessor for FinalizedTimestamp(0);
  __swift_allocate_value_buffer(v0, qword_1EB5D74D0);
  v1 = __swift_project_value_buffer(v0, qword_1EB5D74D0);
  if (qword_1ED966C88 != -1)
  {
    swift_once();
  }

  v2 = sub_1AE23BFEC();
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74E8);
  result = (*(*(v2 - 8) + 16))(v1, v3, v2);
  *(v1 + *(v0 + 20)) = 0;
  return result;
}

uint64_t sub_1ADE030B0()
{
  v0 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v0, qword_1EB5D74E8);
  __swift_project_value_buffer(v0, qword_1EB5D74E8);
  return sub_1AE23BFBC();
}

void sub_1ADE031A0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  CRRegister.value.setter(v5, a2);
}

void CRRegister.value.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE02740(a2);
  sub_1ADE02898(a2, v16, v17, v18);
  v20 = *v2;
  if (*v2)
  {
    v21 = *(v12 + 16);
    v28 = a1;
    v21(v15, a1, v11);
    v22 = *(*v20 + 104);

    v22(v15);
    v30 = *v2;
    CRRegister.timestamp.getter(v7);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    a1 = v29;
    v23 = *&v7[*(v29 + 20)];
    sub_1ADE173B8(v7);
    if (!__OFADD__(v23, 1))
    {
      *&v10[*(a1 + 20)] = v23 + 1;
      (*(*v20 + 128))(v10);

      (*(v12 + 8))(v28, v11);
      return;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for CRRegisterRef(0, v11, *(a2 + 24), v19);
    (*(v12 + 16))(v15, a1, v11);
    v30 = *v2;
    CRRegister.timestamp.getter(v7);
    if (qword_1ED96AC50 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v24 = v29;
  v25 = *&v7[*(v29 + 20)];
  sub_1ADE173B8(v7);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v24 + 20)] = v25 + 1;
    v26 = swift_allocObject();
    sub_1ADDD25B8(v15, v10);
    (*(v12 + 8))(a1, v11);

    *v3 = v26;
  }
}

uint64_t static CRStruct_6.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 112))(v20);
  v6 = v20[0];
  v16 = v20[4];
  v17 = v20[1];
  v8 = v20[3];
  v9 = v20[6];
  v15 = v20[7];
  v14 = v20[10];
  v10 = v20[9];
  v11 = v20[12];
  v12 = v20[15];
  v18 = v20[16];
  v13 = v20[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AE252420;
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 8);
  v5 = *(v7 + 16);
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 32) = v6;
  *(v2 + 40) = v17;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 48) = v8;
  *(v2 + 56) = v16;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 64) = v9;
  *(v2 + 72) = v15;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 80) = v10;
  *(v2 + 88) = v14;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 96) = v11;
  *(v2 + 104) = v13;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 112) = v12;
  *(v2 + 120) = v18;
  (*(v7 + 8))(v20, TupleTypeMetadata);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_6.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72[1] = v72 - v5;
  v87 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v87);
  v72[2] = v72 - v6;
  v88 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v88);
  v72[3] = v72 - v7;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v8);
  v74 = v72 - v9;
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v77 = v72 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v80 = v72 - v14;
  v15 = *(v4 + 112);
  v89 = v4;
  v15(&TupleTypeMetadata2, v3, v4, v13);
  v93 = v109;
  v95 = v111;
  v125[20] = v112;
  v104 = v114;
  v96 = v117;
  v97 = v115;
  v106 = v118;
  v16 = v120;
  v17 = v121;
  v19 = v123;
  v18 = v124;
  v83 = v110;
  v84 = TupleTypeMetadata2;
  v125[0] = TupleTypeMetadata2;
  v125[1] = v108;
  v94 = v108;
  v125[2] = v109;
  v125[3] = v110;
  v125[4] = v111;
  v125[5] = v112;
  v81 = v116;
  v82 = v113;
  v125[6] = v113;
  v125[7] = v114;
  v125[8] = v115;
  v125[9] = v116;
  v125[10] = v117;
  v125[11] = v118;
  v78 = v119;
  v79 = v12;
  v125[12] = v119;
  v125[13] = v120;
  v125[14] = v121;
  v125[15] = v122;
  v75 = v122;
  v125[16] = v123;
  v125[17] = v124;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = v10;
  sub_1AE23DB8C();
  v108 = swift_getTupleTypeMetadata2();
  v73 = v8;
  sub_1AE23DB8C();
  v109 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v110 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111 = swift_getTupleTypeMetadata2();
  v91 = v3;
  v20 = v95;
  sub_1AE23DB8C();
  v21 = rawValue;
  v112 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v85 = *(TupleTypeMetadata - 8);
  v23 = *(v85 + 16);
  v105 = TupleTypeMetadata;
  v101 = v23;
  v102 = v85 + 16;
  (v23)(&TupleTypeMetadata2, v125);

  v103 = v18;

  v100 = v19;

  v92 = v17;

  v98 = v16;

  v24 = v21;
  if (v21[2])
  {
    sub_1ADDD7A10(v84, v94);
    v26 = v25;

    if (v26)
    {
      v101(&TupleTypeMetadata2, v125, v105);

      v27 = v95;

      v28 = v79;
      v29 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v30 = *(v29 + 8);

      v32 = v99;
      v30(v31, v28, v29);
      v99 = v32;
      if (v32)
      {
        v33 = v105;
LABEL_42:

        (*(v85 + 8))(v125, v33);
        return;
      }

      swift_setAtWritableKeyPath();

      v24 = rawValue;
      v20 = v27;
    }

    else
    {
      v20 = v95;
    }
  }

  else
  {
  }

  v101(&TupleTypeMetadata2, v125, v105);

  if (!v24[2])
  {

    goto LABEL_12;
  }

  sub_1ADDD7A10(v83, v20);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_12:
    v101(&TupleTypeMetadata2, v125, v105);
    goto LABEL_13;
  }

  v101(&TupleTypeMetadata2, v125, v105);

  v36 = v76;
  v37 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v38 = *(v37 + 8);

  v40 = v99;
  v38(v39, v36, v37);
  v99 = v40;
  if (v40)
  {
    goto LABEL_41;
  }

  swift_setAtWritableKeyPath();

  v24 = rawValue;
  v101(&TupleTypeMetadata2, v125, v105);
LABEL_13:

  if (v24[2])
  {
    sub_1ADDD7A10(v82, v104);
    v42 = v41;

    if (v42)
    {
      v101(&TupleTypeMetadata2, v125, v105);

      v43 = v73;
      v44 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v45 = *(v44 + 8);

      v47 = v99;
      v45(v46, v43, v44);
      v99 = v47;
      if (v47)
      {
        goto LABEL_41;
      }

      swift_setAtWritableKeyPath();

      v24 = rawValue;
      v48 = v98;
      v101(&TupleTypeMetadata2, v125, v105);
    }

    else
    {
      v48 = v98;
      v101(&TupleTypeMetadata2, v125, v105);
    }
  }

  else
  {

    v48 = v98;
    v101(&TupleTypeMetadata2, v125, v105);
  }

  if (v24[2])
  {
    sub_1ADDD7A10(v81, v96);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      v48 = v98;
      v101(&TupleTypeMetadata2, v125, v105);
      goto LABEL_30;
    }

    v101(&TupleTypeMetadata2, v125, v105);

    v51 = v88;
    v52 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v53 = *(v52 + 8);

    v55 = v99;
    v53(v54, v51, v52);
    v99 = v55;
    if (v55)
    {
      goto LABEL_41;
    }

    swift_setAtWritableKeyPath();

    v24 = rawValue;
    v48 = v98;
  }

  else
  {
  }

  v101(&TupleTypeMetadata2, v125, v105);
LABEL_30:

  if (v24[2])
  {
    sub_1ADDD7A10(v78, v48);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      v63 = v101;
      goto LABEL_38;
    }

    v101(&TupleTypeMetadata2, v125, v105);

    v58 = v87;
    v59 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v60 = *(v59 + 8);

    v62 = v99;
    v60(v61, v58, v59);
    v99 = v62;
    if (v62)
    {
      goto LABEL_41;
    }

    swift_setAtWritableKeyPath();

    v24 = rawValue;
  }

  else
  {
  }

  v63 = v101;
LABEL_38:
  v64 = v105;
  v63(&TupleTypeMetadata2, v125, v105);

  if (v24[2])
  {
    sub_1ADDD7A10(v75, v100);
    v66 = v65;

    if (v66)
    {
      v101(&TupleTypeMetadata2, v125, v105);

      v67 = AssociatedTypeWitness;
      v68 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v69 = *(v68 + 8);

      v71 = v99;
      v69(v70, v67, v68);
      v99 = v71;
      if (v71)
      {
LABEL_41:
        v33 = v105;
        goto LABEL_42;
      }

      swift_setAtWritableKeyPath();
      (*(v85 + 8))(v125, v105);
    }

    else
    {
      (*(v85 + 8))(v125, v105);
    }
  }

  else
  {
    (*(v85 + 8))(v125, v64);
  }
}

void CRRegister.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE04F58(a2, a3, &v11);
    swift_setDeallocating();

    if (!v4)
    {
      *a4 = v11;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADE04F58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1ADDE78C8();
  v8 = v7;
  v9 = *(v3 + 16);

  sub_1ADE04FC4(v8, v9, a1, a2, a3);
}

void sub_1ADE04FC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v88 = a2;
  v84 = a5;
  v85 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v76 - v26;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v30 = &v76 - v29;
  v86 = a1;
  v31 = *(a1 + 16);
  if (v31 >> 60 || (v31 & 0xF000000000000007) == 0xF000000000000007 || (v32 = *(v31 + 16), swift_beginAccess(), (v33 = *(v32 + 40)) == 0) && (swift_beginAccess(), !*(v32 + 48)) || (swift_beginAccess(), (*(v32 + 32) & 1) != 0))
  {
    v34 = (*(*(*(a4 + 8) + 8) + 40))(a3, v28);
    if (v5)
    {
      sub_1ADE42E40(v34, v35, v36);
      swift_allocError();
      *v37 = 0xD00000000000001CLL;
      *(v37 + 8) = 0x80000001AE262080;
      *(v37 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(v85 + 8))(v10, a3);

      *v84 = 0;
    }

    return;
  }

  v78 = a4;
  v38 = *(v32 + 16);
  v39 = *(v32 + 24);
  if (v33)
  {

    v40 = v88;

    sub_1ADE058D4(v38, v39, v40, v30);
    if (!v5)
    {
      if (*(v32 + 40))
      {
        inited = *(v32 + 40);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v48 = sub_1ADE0262C(inited, v40);

      v49 = v78;
      (*(*(*(v78 + 8) + 8) + 8))(v48, a3);
      v50 = v82;
      (*(v85 + 16))(v82, v17, a3);
      v51 = v81;
      sub_1ADED0548(v30, v81);
      sub_1ADDD22FC(v50, v51, a3, v49, v87);

      (*(v85 + 8))(v17, a3);
      sub_1ADE173B8(v30);
      *v84 = v87[0];
      return;
    }

    goto LABEL_34;
  }

  v42 = swift_beginAccess();
  if (!*(v32 + 48))
  {
    sub_1ADE42E40(v42, v43, v44);
    swift_allocError();
    *v47 = 0xD00000000000001CLL;
    *(v47 + 8) = 0x80000001AE262080;
    *(v47 + 16) = 0;
    swift_willThrow();

LABEL_35:

    return;
  }

  v45 = v88;

  sub_1ADE058D4(v38, v39, v45, v83);
  if (v5)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (*(v32 + 48))
  {
    v46 = *(v32 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v46 = swift_initStaticObject();
  }

  v52 = *(v46 + 16);
  if (v52 >> 60)
  {
    v53 = 1;
  }

  else
  {
    v53 = (v52 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v53)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v54 = swift_initStaticObject();
  }

  else
  {
    v54 = *(v52 + 16);
  }

  swift_beginAccess();
  v55 = *(v54 + 16);
  v56 = *(v54 + 24);
  v57 = *(v54 + 32);

  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  if (v57)
  {
    v56 = 0;
  }

  v59 = v88;

  sub_1ADE058D4(v58, v56, v59, v22);
  if (*(v32 + 48))
  {
    v60 = *(v32 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v60 = swift_initStaticObject();
  }

  v61 = *(v60 + 16);
  if (v61 >> 60 || (v61 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v62 = swift_initStaticObject();
  }

  else
  {
    v62 = *(v61 + 16);
  }

  swift_beginAccess();
  v63 = *(v62 + 40);
  if (v63)
  {
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v63 = swift_initStaticObject();
  }

  v64 = v80;

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v65 = v88;

  v66 = sub_1ADE0262C(v63, v65);

  v67 = v78;
  (*(*(*(v78 + 8) + 8) + 8))(v66, a3);
  type metadata accessor for CRGroupedRegisterRef(0, a3, v67, v68);
  v69 = v85;
  v70 = v64;
  v71 = v82;
  (*(v85 + 16))(v82, v70, a3);
  v77 = v22;
  v72 = v81;
  sub_1ADED0548(v83, v81);
  v73 = v22;
  v74 = v79;
  sub_1ADED0548(v73, v79);
  v75 = sub_1AE004DBC(v71, v72, v74);

  (*(v69 + 8))(v80, a3);
  sub_1ADE173B8(v77);
  sub_1ADE173B8(v83);
  *v84 = v75;
}

void sub_1ADE058D4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 24);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v17 > a1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    (*(v9 + 16))(v15, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v8, v13);

    (*(v9 + 32))(a4, v15, v8);
    *(a4 + *(type metadata accessor for FinalizedTimestamp(0) + 20)) = a2;
  }

  else
  {
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v19 = 0xD000000000000013;
    *(v19 + 8) = 0x80000001AE25FD70;
    *(v19 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADE05A84(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE05AE0()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  return v0;
}

unint64_t sub_1ADE05B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 72))
  {
    v5 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v5 = v3;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v9 = sub_1ADE05C74(inited, v7, v8);
  if (v3)
  {
LABEL_5:

    return v5;
  }

  v5 = v9;

  return v5;
}

unint64_t sub_1ADE05C48@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1ADE05B6C(a1, a3, a4);
  if (!v4)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1ADE05C74(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v4 + 72);
  if (v5)
  {
    v6 = 0xD000000000000018;
    v7 = *(v5 + 16);
    v8 = "Wrong format for Double.";
    if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 2)
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v10 = *(v4 + 32);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v9 >= v11;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        return *(v10 + 16 * v9 + 32);
      }

      v8 = "omposite CRValue.";
      v6 = 0xD000000000000015;
    }

    v13 = v8 | 0x8000000000000000;
    sub_1ADE42E40(result, a2, a3);
    swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CRStruct_7.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 128))(v22);
  v4 = v22[0];
  v5 = v22[3];
  v19 = v22[4];
  v20 = v22[1];
  v7 = v22[6];
  v8 = v22[9];
  v18 = v22[7];
  v9 = v22[12];
  v10 = v22[15];
  v17 = v22[16];
  v11 = v22[18];
  v15 = v22[13];
  v16 = v22[10];
  v14 = v22[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AE252430;
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[5] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[6] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = *(TupleTypeMetadata - 8);
  v12 = *(v6 + 16);
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 32) = v4;
  *(v13 + 40) = v20;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 48) = v5;
  *(v13 + 56) = v19;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 64) = v7;
  *(v13 + 72) = v18;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 80) = v8;
  *(v13 + 88) = v16;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 96) = v9;
  *(v13 + 104) = v15;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 112) = v10;
  *(v13 + 120) = v17;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 128) = v11;
  *(v13 + 136) = v14;
  (*(v6 + 8))(v22, TupleTypeMetadata);
  return v13;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_7.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v80[0] = v80 - v5;
  v96 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v96);
  v80[1] = v80 - v6;
  v97 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v97);
  v80[2] = v80 - v7;
  v98 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v98);
  v80[3] = v80 - v8;
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v83 = v80 - v10;
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  v86 = v80 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v89 = v80 - v15;
  v16 = *(v4 + 128);
  v100 = v4;
  v16(&TupleTypeMetadata2, v3, v4, v14);
  v140[23] = v121;
  v116 = v124;
  v117 = v123;
  v111 = v126;
  v114 = v120;
  v115 = v127;
  v103 = v129;
  v105 = v130;
  v17 = v132;
  v113 = v135;
  v107 = v136;
  v108 = v133;
  v118 = v138;
  v18 = v139;
  v92 = v122;
  v93 = TupleTypeMetadata2;
  v140[0] = TupleTypeMetadata2;
  v140[1] = v120;
  v140[2] = v121;
  v140[3] = v122;
  v140[4] = v123;
  v140[5] = v124;
  v90 = v128;
  v91 = v125;
  v140[6] = v125;
  v140[7] = v126;
  v140[8] = v127;
  v140[9] = v128;
  v140[10] = v129;
  v140[11] = v130;
  v87 = v131;
  v88 = v13;
  v140[12] = v131;
  v140[13] = v132;
  v140[14] = v133;
  v140[15] = v134;
  v84 = v134;
  v140[16] = v135;
  v140[17] = v136;
  v81 = v137;
  v140[18] = v137;
  v140[19] = v138;
  v140[20] = v139;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = v11;
  sub_1AE23DB8C();
  v120 = swift_getTupleTypeMetadata2();
  v82 = v9;
  sub_1AE23DB8C();
  v121 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v122 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v123 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124 = swift_getTupleTypeMetadata2();
  v99 = v3;
  sub_1AE23DB8C();
  v19 = rawValue;
  v125 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v94 = *(TupleTypeMetadata - 8);
  v21 = *(v94 + 16);
  v112 = TupleTypeMetadata;
  v109 = v21;
  v110 = v94 + 16;
  (v21)(&TupleTypeMetadata2, v140);

  v104 = v18;

  v22 = v19[2];
  v101 = v17;
  if (v22)
  {
    sub_1ADDD7A10(v93, v114);
    v24 = v23;

    if (v24)
    {
      v109(&TupleTypeMetadata2, v140, v112);

      v25 = v88;
      v26 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v27 = *(v26 + 8);

      v29 = v106;
      v27(v28, v25, v26);
      v106 = v29;
      if (v29)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v140, v112);

  v30 = rawValue;
  if (rawValue[2])
  {
    v31 = sub_1ADDD7A10(v92, v117);
    v33 = v32;

    if (v33)
    {
      v34 = *(v30[7] + 8 * v31);
      v109(&TupleTypeMetadata2, v140, v112);

      v35 = v85;
      v36 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v37 = *(v36 + 8);

      v38 = v106;
      v37(v34, v35, v36);
      v106 = v38;
      if (v38)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v30 = rawValue;
    }
  }

  else
  {
  }

  v39 = v112;
  v109(&TupleTypeMetadata2, v140, v112);

  v40 = v103;

  if (v30[2])
  {
    sub_1ADDD7A10(v91, v111);
    v42 = v41;

    if (v42)
    {
      v109(&TupleTypeMetadata2, v140, v112);

      v43 = v82;
      v44 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v45 = *(v44 + 8);

      v47 = v106;
      v45(v46, v43, v44);
      v106 = v47;
      if (v47)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v48 = v112;
      v30 = rawValue;
      v40 = v103;
    }

    else
    {
      v48 = v112;
    }
  }

  else
  {

    v48 = v39;
  }

  v109(&TupleTypeMetadata2, v140, v48);

  v49 = v101;

  if (v30[2])
  {
    sub_1ADDD7A10(v90, v40);
    v51 = v50;

    if (v51)
    {
      v109(&TupleTypeMetadata2, v140, v112);

      v52 = v98;
      v53 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v54 = *(v53 + 8);

      v56 = v106;
      v54(v55, v52, v53);
      v106 = v56;
      if (v56)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v30 = rawValue;
      v48 = v112;
    }

    else
    {
      v48 = v112;
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v140, v48);

  if (v30[2])
  {
    sub_1ADDD7A10(v87, v49);
    v58 = v57;

    if (v58)
    {
      v109(&TupleTypeMetadata2, v140, v112);

      v59 = v97;
      v60 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v61 = *(v60 + 8);

      v63 = v106;
      v61(v62, v59, v60);
      v106 = v63;
      if (v63)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v48 = v112;
    }

    else
    {
      v48 = v112;
    }
  }

  else
  {
  }

  v109(&TupleTypeMetadata2, v140, v48);

  if (v30[2])
  {
    sub_1ADDD7A10(v84, v113);
    v65 = v64;

    if (v65)
    {
      v109(&TupleTypeMetadata2, v140, v112);

      v66 = v96;
      v67 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v68 = *(v67 + 8);

      v70 = v106;
      v68(v69, v66, v67);
      v106 = v70;
      if (v70)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v71 = v112;
    }

    else
    {
      v71 = v112;
    }
  }

  else
  {

    v71 = v48;
  }

  v109(&TupleTypeMetadata2, v140, v71);

  if (rawValue[2])
  {
    sub_1ADDD7A10(v81, v118);
    v73 = v72;

    if ((v73 & 1) == 0)
    {
LABEL_46:
      (*(v94 + 8))(v140, v112);
      return;
    }

    v74 = v112;
    v109(&TupleTypeMetadata2, v140, v112);

    v75 = AssociatedTypeWitness;
    v76 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v77 = *(v76 + 8);

    v79 = v106;
    v77(v78, v75, v76);
    v106 = v79;
    if (v79)
    {
LABEL_45:

      goto LABEL_46;
    }

    swift_setAtWritableKeyPath();
    (*(v94 + 8))(v140, v74);
  }

  else
  {
    (*(v94 + 8))(v140, v71);
  }
}

void Optional<A>.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE07B38(a2, a3, a4, v8);
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADE07B38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v8 = *(v4 + 16);
  v9 = *(v8 + 72);
  if (*(v8 + 57) < 3u)
  {
    if (v9)
    {
      v10 = *(v9 + 16);
      if ((~v10 & 0xF000000000000007) == 0 || ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) != 8)
      {
        sub_1ADE42E40(a1, a2, a4);
        swift_allocError();
        *v12 = 0xD00000000000001ALL;
        *(v12 + 8) = 0x80000001AE25FDD0;
        *(v12 + 16) = 0;
        swift_willThrow();
        return;
      }

      v17 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      swift_beginAccess();
      if (*(v17 + 16))
      {
        type metadata accessor for CRDecoder();
        swift_allocObject();

        v19 = sub_1ADE0262C(v18, v8);

        (*(*(*(a2 + 8) + 8) + 8))(v19, a1);
        if (!v5)
        {
          (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
        }

        return;
      }

LABEL_10:
      (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  if ((~*(v9 + 16) & 0xF000000000000007) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(*(a2 + 8) + 8);
  v14 = *(v13 + 8);

  v14(v15, a1, v13);
  if (!v5)
  {
    (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }
}

uint64_t static CRStruct_3.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 64))(v8);
  v6 = *&v8[3];
  v7 = *v8;
  v2 = v8[6];
  v3 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  *(v4 + 32) = v7;
  *(v4 + 48) = v6;
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_3.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  v5 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v38 - v6;
  v43 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v38 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v5 + 64))(v50, v3, v5, v9);
  v10 = v50[1];
  v11 = v50[2];
  v48 = v50[4];
  v49 = v50[5];
  if (!*(fields._rawValue + 2))
  {
    goto LABEL_17;
  }

  v47 = v50[8];
  v45 = v50[7];
  v12 = v50[0];
  v39 = v50[6];
  v40 = v50[3];

  v13 = sub_1ADDD7A10(v12, v10);
  v14 = v10;
  v16 = v15;
  v46 = v14;

  if (v16)
  {
    v17 = *(*(fields._rawValue + 7) + 8 * v13);
    v18 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v38[0] = *(v18 + 8);
    swift_retain_n();

    v38[1] = v17;
    v19 = v51;
    (v38[0])(v17, v8, v18);
    v51 = v19;
    if (v19)
    {

LABEL_16:

      return;
    }

    swift_setAtWritableKeyPath();
  }

  if (!*(fields._rawValue + 2))
  {
    goto LABEL_17;
  }

  v20 = v48;

  v21 = sub_1ADDD7A10(v40, v20);
  v23 = v22;

  if (v23)
  {
    v40 = v11;
    v24 = *(*(fields._rawValue + 7) + 8 * v21);
    v25 = v43;
    v26 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v27 = *(v26 + 8);
    swift_retain_n();

    v28 = v51;
    v27(v24, v25, v26);
    v51 = v28;
    if (v28)
    {
      goto LABEL_15;
    }

    swift_setAtWritableKeyPath();

    v11 = v40;
  }

  if (*(fields._rawValue + 2))
  {
    v29 = v45;

    v30 = sub_1ADDD7A10(v39, v29);
    v32 = v31;

    if (v32)
    {
      v40 = v11;
      v33 = *(*(fields._rawValue + 7) + 8 * v30);
      v34 = AssociatedTypeWitness;
      v35 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v36 = *(v35 + 8);
      swift_retain_n();

      v37 = v51;
      v36(v33, v34, v35);
      v51 = v37;
      if (v37)
      {
LABEL_15:

        goto LABEL_16;
      }

      swift_setAtWritableKeyPath();
    }

    else
    {
    }
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_1ADE08424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

void CRMaxRegister.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE085A8(a2, a4, a5);
    swift_setDeallocating();
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADE085A8(uint64_t a1@<X0>, uint64_t a3@<X2>, char *x8_0@<X8>)
{
  sub_1ADDE78C8();
  v9 = v8;
  v10 = *(v4 + 16);

  sub_1ADE0861C(v9, v10, a1, a3, x8_0);
}

void sub_1ADE0861C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v37 = a4;
  v40 = a2;
  v36 = a5;
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v35 - v16;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v39 = a1;
  v21 = *(a1 + 16);
  if (v21 >> 60 || (v21 & 0xF000000000000007) == 0xF000000000000007 || (v22 = *(v21 + 16), swift_beginAccess(), !*(v22 + 40)))
  {
    v28 = v38;
    (*(*(*(v37 + 8) + 8) + 40))(a3, v18);
    if (v28)
    {

      (*(v11 + 56))(v10, 1, 1, a3);
      v29 = (*(v8 + 8))(v10, v7);
      sub_1ADE42E40(v29, v30, v31);
      swift_allocError();
      *v32 = 0xD000000000000020;
      *(v32 + 8) = 0x80000001AE261210;
      *(v32 + 16) = 0;
      swift_willThrow();
    }

    else
    {

      (*(v11 + 56))(v10, 0, 1, a3);
      v33 = *(v11 + 32);
      v33(v14, v10, a3);
      v34 = v35;
      v33(v35, v14, a3);
      v33(v36, v34, a3);
    }
  }

  else
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v24 = sub_1ADE0262C(v23, v40);
    v25 = v38;
    (*(*(*(v37 + 8) + 8) + 8))(v24, a3);

    if (!v25)
    {
      v26 = *(v11 + 32);
      v27 = v35;
      v26(v35, v20, a3);
      v26(v36, v27, a3);
    }
  }
}

void sub_1ADE089F4(double *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = sub_1ADE08BD8(a2, a3, a4);
  if (!v4)
  {
    *a1 = v6;
  }
}

BOOL sub_1ADE08A20@<W0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1ADE08A50(a2, a3, a4);
  if (!v4)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1ADE08A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    v8 = sub_1ADDF4474(inited, v6, v7);

    if (!v3)
    {
      return v8 != 0;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1ADE08B24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08B6C()
{

  return swift_deallocClassInstance();
}

uint64_t CRDecoder.__deallocating_deinit(uint64_t a1)
{
  CRDecoder.deinit();

  return swift_deallocClassInstance();
}

double sub_1ADE08BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    sub_1ADE08CAC(inited, v6, v7);
    v3 = v8;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1ADE08CAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
    if ((~v5 & 0xF000000000000007) == 0 || (v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1, v6 != 14) && v6 != 1)
    {
      sub_1ADE42E40(result, a2, a3);
      swift_allocError();
      *v7 = 0xD000000000000018;
      *(v7 + 8) = 0x80000001AE2602A0;
      *(v7 + 16) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE08D74()
{
  sub_1ADE52174(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08DAC()
{
  sub_1ADE51B48(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08E20()
{

  return swift_deallocClassInstance();
}

void *sub_1ADE08EB0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1AE23D43C();
  if (!v19)
  {
    return sub_1AE23D05C();
  }

  v41 = v19;
  v45 = sub_1AE23DB5C();
  v32 = sub_1AE23DB6C();
  sub_1AE23DB0C();
  result = sub_1AE23D41C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1AE23D51C();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1AE23DB4C();
      result = sub_1AE23D47C();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE092D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 72))
  {
    type metadata accessor for CRDecoder.CRValueKeyedContainer();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = 0xD000000000000021;
    *(v6 + 8) = 0x80000001AE25FCC0;
    *(v6 + 16) = 0;
    v4 = v5;
    swift_willThrow();
  }

  return v4;
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.init()()
{
  v1 = v0;
  result.properties._rawValue = sub_1ADE15B94(MEMORY[0x1E69E7CC0]);
  v1->properties._rawValue = result.properties._rawValue;
  return result;
}

uint64_t CRExtensible.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v28 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  v13 = sub_1AE23D7CC();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = *(a2 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness, v18);
  sub_1AE23CF7C();
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v24 + 8))(v15, v25);
    (*(v10 + 32))(v28, a1, AssociatedTypeWitness);
  }

  else
  {
    (*(v10 + 8))(a1, AssociatedTypeWitness);
    v21 = *(v16 + 32);
    v21(v20, v15, a2);
    v21(v28, v20, a2);
  }

  v29[0] = a2;
  v29[1] = a3;
  v29[2] = v26;
  v29[3] = v27;
  type metadata accessor for CRExtensible(0, v29);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CRExtensible.hash(into:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  CRExtensible.rawValue.getter(a2, &v8 - v5);
  sub_1AE23CBCC();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

double sub_1ADE097D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return result;
}

id sub_1ADE098C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 56);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 64);
    v7 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v5, v6);

    result = sub_1ADDD6748(v5, v6, v7, &v15);
    if (!v4)
    {
      v9 = type metadata accessor for ObjCVersion();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v12 = MEMORY[0x1E69E7CC8];
      *v11 = MEMORY[0x1E69E7CC8];
      *(v11 + 1) = v12;
      swift_beginAccess();
      *v11 = v15;

      v14.receiver = v10;
      v14.super_class = v9;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = 0xD000000000000022;
    *(v13 + 8) = 0x80000001AE261690;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1ADE09A10(uint64_t *a1)
{
  v2 = *(sub_1AE23BFEC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADE0C054(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1ADE09AB8(v5);
  *a1 = v3;
}

void sub_1ADE09AB8(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AE23BFEC();
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1AE23BFEC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1AE2283B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1ADE0C068(0, v2, 1, a1);
  }
}

uint64_t sub_1ADE09BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = 0xD000000000000013;
  if (*(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0] + 64))
  {
    v6 = "Coherence.CRTTStringEncoder";
    v5 = 0xD00000000000003ALL;
  }

  else
  {
    v7 = *(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0] + 48);
    v8 = *(*(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder) + 24);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v7 >= v9;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v14 = sub_1AE23BFEC();
      return (*(*(v14 - 8) + 16))(a2, v8 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v7, v14);
    }

    v6 = "Wrong format for UUID.";
  }

  v11 = v6 | 0x8000000000000000;
  sub_1ADE42E40(a1, a3, a4);
  swift_allocError();
  *v12 = v5;
  *(v12 + 8) = v11;
  *(v12 + 16) = 0;
  return swift_willThrow();
}

id sub_1ADE09D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, double))
{
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(a3, v9);
  v12 = sub_1AE23BF7C();
  (*(v8 + 8))(v11, v7);

  return v12;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double sub_1ADE09EB0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = (a1 + *a3);
  v6 = v5[5];
  v7 = v5[6];
  v8 = v5[7];
  v9 = v5[8];
  v10 = v5[9];
  v11 = v5[10];
  v13 = v5[12];
  v14 = v5[11];

  sub_1ADE42CB8(v6, v7);
  sub_1ADE42CB8(v8, v9);
  sub_1ADE42CB8(v10, v11);
  sub_1ADE42CB8(v14, v13);

  return result;
}

uint64_t sub_1ADE09FC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  *a2 = *(a1 + 16);
  return result;
}

uint64_t CROrderedSet.init(from:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CROrderedSet(0, a2, a3, a4);
  v27[0] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v14 = *(v13 + 48);
  v15 = type metadata accessor for CROrderedSet.DeduplicatedInfo(0, a2, a3, a4);
  v16 = *(*(v15 - 8) + 56);
  v29 = a5;
  v28 = v14;
  v17 = v16(a5 + v14, 1, 1, v15);
  if (!*(a1 + 64))
  {
    sub_1ADE42E40(v17, v18, v19);
    swift_allocError();
    *v22 = 0xD000000000000014;
    *(v22 + 8) = 0x80000001AE25FB50;
    *(v22 + 16) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  v21 = v27[1];
  sub_1ADE0C65C(a2, a3, a4, v12);
  if (v21)
  {
    swift_setDeallocating();
LABEL_5:

    v23 = sub_1AE23D7CC();
    return (*(*(v23 - 8) + 8))(v29 + v28, v23);
  }

  swift_setDeallocating();

  v25 = sub_1AE23D7CC();
  v26 = v29;
  (*(*(v25 - 8) + 8))(v29 + v28, v25);
  return (*(v27[0] + 32))(v26, v12, v10);
}

double sub_1ADE0A2B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for CROrderedSet(0, a3, a4, a5);
  v13 = *(v12 + 48);
  v14 = type metadata accessor for CROrderedSet.DeduplicatedInfo(0, a3, a4, a5);
  v15 = *(*(v14 - 8) + 56);
  v99 = v14;
  v15(&a6[v13], 1, 1);
  v16 = swift_beginAccess();
  if (*(a1 + 208))
  {
    sub_1ADE42E40(v16, v17, v18);
    swift_allocError();
    *v19 = 0xD000000000000021;
    *(v19 + 8) = 0x80000001AE263E70;
    *(v19 + 16) = 0;
    swift_willThrow();

LABEL_15:
    v53 = sub_1AE23D7CC();
    (*(*(v53 - 8) + 8))(&a6[v13], v53);
    return result;
  }

  v62 = v12;
  v63 = a2;
  v64 = v13;
  v65 = type metadata accessor for CROrderedSetElement(0, a3, a4, a5);
  v83 = sub_1AE23C9DC();
  swift_beginAccess();
  v20 = *(a1 + 32);
  v84 = *(a1 + 16);
  v85[0] = v20;
  v21 = *(a1 + 64);
  v85[1] = *(a1 + 48);
  v85[2] = v21;
  v86 = *(a1 + 80);
  v22 = *(&v84 + 1);
  v66 = a6;
  if (*(&v84 + 1))
  {
    v23 = v84;
    v24 = *&v85[0];
    v25 = *(v85 + 8);
    v26 = *(&v85[1] + 8);
    v27 = v86;
    v28 = BYTE8(v85[2]);
  }

  else
  {
    v23 = 0;
    v28 = 1;
    v22 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v27 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v75[0] = v23;
  v75[1] = v22;
  v75[2] = v24;
  v76 = v25;
  v77 = v26;
  v78 = v28 & 1;
  v79 = v27;

  sub_1ADDCEE40(&v84, &v70, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADFAECE8(v75);

  sub_1AE23D11C();
  v29 = sub_1AE23D02C();
  v30 = *(a1 + 32);
  v80 = *(a1 + 16);
  v81[0] = v30;
  v31 = *(a1 + 64);
  v81[1] = *(a1 + 48);
  v81[2] = v31;
  v82 = *(a1 + 80);
  v32 = *(&v80 + 1);
  v33 = MEMORY[0x1E69E7CC0];
  if (*(&v80 + 1))
  {
    v34 = v80;
    v33 = *&v81[0];
    v35 = *(v81 + 8);
    v36 = *(&v81[1] + 8);
    v37 = v82;
    v38 = BYTE8(v81[2]);
  }

  else
  {
    v34 = 0;
    v38 = 1;
    v32 = MEMORY[0x1E69E7CC0];
    v36 = 0uLL;
    v37 = 0uLL;
    v35 = 0uLL;
  }

  v73 = v38 & 1;
  v94[0] = v34;
  v94[1] = v32;
  v94[2] = v33;
  v95 = v35;
  v96 = v36;
  v97 = v38 & 1;
  v98 = v37;
  MEMORY[0x1EEE9AC00](v29);
  v56 = a3;
  v57 = a4;
  v39 = v63;
  v58 = a5;
  v59 = v63;
  v60 = a1;
  v61 = &v83;
  sub_1ADDCEE40(&v80, &v70, &qword_1EB5BCC30, &qword_1AE2580D0);

  v40 = v67;
  sub_1ADDF0758(v94, sub_1ADE0C85C, &v55, v39, a3, a4, a5, &v74);
  if (v40)
  {

    a6 = v66;
    v13 = v64;
    goto LABEL_15;
  }

  *(v66 + 1) = v74;
  swift_beginAccess();
  v41 = *(a1 + 176);
  v72[2] = *(a1 + 160);
  v72[3] = v41;
  *&v72[4] = *(a1 + 192);
  v42 = *(a1 + 112);
  v70 = *(a1 + 96);
  v71 = v42;
  v43 = *(a1 + 144);
  v72[0] = *(a1 + 128);
  v72[1] = v43;
  v44 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v45 = v71;
    v46 = v70;
    v47 = *&v72[0];
    v48 = *(v72 + 8);
    v49 = *(&v72[1] + 8);
    v50 = *(&v72[2] + 8);
    v51 = *(&v72[3] + 8);
  }

  else
  {
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v45 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v48 = 0uLL;
    v44 = 0xE000000000000000;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  v87[0] = v46;
  v87[1] = v44;
  v88 = v45;
  v89 = v47;
  v90 = v48;
  v91 = v49;
  v92 = v50;
  v93 = v51;
  v52 = v83;

  sub_1ADDCEE40(&v70, &v68, &qword_1EB5BCC28, &unk_1AE251820);

  sub_1ADE0C954(v87, v52, v39, v65, &off_1F23C8BA0, &v69);
  *v66 = v69;
  sub_1ADDF210C(0, v62);

  return result;
}

id sub_1ADE0A808(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithDecoder:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1AE23BC9C();

    swift_willThrow();
  }

  return v2;
}