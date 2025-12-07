void *sub_1AE1D21D8(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(type metadata accessor for CRAttributedStringEncoder());

  v6 = sub_1ADF8B964(v5);
  if (!v3)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = [*(v3 + 16) fullyRenamed_];
  *&v29 = 0;
  v9 = [v8 saveToEncoder:v7 error:&v29];

  v10 = v29;
  if (v9)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v12 = &v7[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 2);
    v30 = *(v12 + 1);
    v31 = v14;
    v29 = v13;
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    v35 = *(v12 + 12);
    v33 = v16;
    v34 = v17;
    v32 = v15;
    v18 = v10;
    sub_1ADE51B64(&v29, &v28);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = swift_allocObject();
      v20 = inited[2];
      *(v19 + 16) = v20;
      sub_1ADE5215C(v20);

      inited = v19;
    }

    v21 = swift_allocObject();
    v22 = v34;
    *(v21 + 80) = v33;
    *(v21 + 96) = v22;
    *(v21 + 112) = v35;
    v23 = v30;
    *(v21 + 16) = v29;
    *(v21 + 32) = v23;
    v24 = v32;
    *(v21 + 48) = v31;
    *(v21 + 64) = v24;
    v25 = v21 | 0x4000000000000000;
    v26 = inited[2];
    inited[2] = v25;
    sub_1ADE52174(v26);
  }

  else
  {
    inited = v29;
    sub_1AE23BC9C();

    swift_willThrow();
  }

  return inited;
}

uint64_t sub_1AE1D240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v9 = sub_1AE23CA0C();
  v8(v9, a3, a4, a5);
}

void sub_1AE1D24B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 40))
  {
    goto LABEL_5;
  }

  v12 = *(v3 + 24);
  if (v12 > a2)
  {
    goto LABEL_5;
  }

  v13 = *(v3 + 32);
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 < a2)
  {
    goto LABEL_5;
  }

  v26 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v26 < v12 || v15 < v26)
  {
LABEL_5:
    v28 = v8;
    v29 = a1;
    v16 = [*(v3 + 16) attributedString];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v35 = 0;
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EB5B8BF8;
    v19 = swift_allocObject();
    *(v19 + 16) = &v35;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1ADE162C8;
    *(v20 + 24) = v19;
    v33 = sub_1AE1DD608;
    v34 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADE160D4;
    v32 = &block_descriptor_274;
    v21 = _Block_copy(aBlock);

    [v17 enumerateAttribute:v18 inRange:a2 options:a3 usingBlock:{0x100000, v21}];
    swift_unknownObjectRelease();
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v35;

      if (qword_1ED96AC50 == -1)
      {
LABEL_9:
        sub_1ADDD0F70();
        sub_1AE23BFBC();
        if (!__OFADD__(isEscapingClosureAtFileLocation, 1))
        {
          *&v11[*(v28 + 20)] = isEscapingClosureAtFileLocation + 1;
          v23 = type metadata accessor for ObjCFinalizedTimestamp(0);
          v24 = objc_allocWithZone(v23);
          sub_1ADED0548(v11, v24 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp);
          v30.receiver = v24;
          v30.super_class = v23;
          v25 = objc_msgSendSuper2(&v30, sel_init);
          sub_1ADDE5118(v11, type metadata accessor for FinalizedTimestamp);
          v32 = v23;
          aBlock[0] = v25;
          sub_1ADE15F98(aBlock, v18);
          return;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_9;
  }
}

uint64_t sub_1AE1D2894()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AE1D28CC()
{
  result = sub_1ADE51044(MEMORY[0x1E69E7CC0]);
  qword_1EB5D7CC8 = result;
  return result;
}

double sub_1AE1D28F4()
{
  if (qword_1EB5B9C08 != -1)
  {
    swift_once();
  }

  return result;
}

id static NSAttributedStringKey.timestamp.getter()
{
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB5B8BF8;

  return v1;
}

uint64_t sub_1AE1D29EC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v15 - v9, a1, v8);

  return CRAttributedString.Attributes.subscript.setter(v10, v11, v13, v6);
}

void (*CRAttributedString.Attributes.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  CRAttributedString.Attributes.subscript.getter(a2, a4, v15);
  return sub_1AE1D2C8C;
}

void sub_1AE1D2C8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = *v2;
    (*(v6 + 16))(*(*a1 + 48), v4, v5);

    CRAttributedString.Attributes.subscript.setter(v3, v8, v9, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    v11 = *v2;

    CRAttributedString.Attributes.subscript.setter(v4, v11, v12, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static CRAttributedString.Attributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *&v41[0] = *a1;
  v5 = CRAttributedString.Attributes.count.getter();
  v33 = v4;
  *&v38 = v4;
  if (v5 != CRAttributedString.Attributes.count.getter())
  {
    return 0;
  }

  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v34 = v3;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CA0];
  while (v9)
  {
    v13 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = *(*(v34 + 48) + 8 * v17);
    sub_1ADDE4E28(*(v34 + 56) + 32 * v17, v37);
    *&v38 = v18;
    sub_1ADDEE390(v37, (&v38 + 8));
    v19 = v18;
LABEL_18:
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
    v2 = v38;
    if (!v38)
    {

      return 1;
    }

    v20 = v12;
    sub_1ADDEE390((v41 + 8), &v38);
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1AE23CD0C();
    v23 = v22;
    if (v21 == sub_1AE23CD0C() && v23 == v24)
    {

      goto LABEL_6;
    }

    v25 = sub_1AE23E00C();

    if (v25)
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v38);

      v12 = v20;
    }

    else
    {
      if (!*(v33 + 16) || (v12 = v20, v26 = sub_1ADDF1D10(v2), (v27 & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v38);
        return 0;
      }

      sub_1ADDE4E28(*(v33 + 56) + 32 * v26, v36);
      sub_1ADDEE390(v36, v37);
      sub_1ADDE4E28(&v38, v36);
      if (swift_dynamicCast())
      {
        sub_1ADDE4E28(v37, v36);

        if (swift_dynamicCast())
        {
          v28 = v35;
        }

        else
        {
          v28 = 0;
        }

        if (v35)
        {
          if (!v28)
          {
            goto LABEL_41;
          }

          v32 = *(*v35 + 96);
          swift_retain_n();

          v30 = v32(v29);

          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(&v38);

          v12 = v20;
          if ((v30 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(&v38);
          if (v28)
          {
            goto LABEL_42;
          }

          v12 = v20;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(&v38);
      }
    }
  }

  if (v10 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v40 = 0;
      v11 = v15;
      v38 = 0u;
      v39 = 0u;
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:

  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_42:

LABEL_43:

  return 0;
}

uint64_t CRAttributedString.Attributes.count.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (qword_1EB5B8BF0 == -1)
  {
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  v3 = sub_1ADDF1D10(qword_1EB5B8BF8);
  if (v4)
  {
    sub_1ADDE4E28(*(v1 + 56) + 32 * v3, v7);
    v5 = 1;
    goto LABEL_7;
  }

LABEL_6:
  v5 = 0;
  memset(v7, 0, sizeof(v7));
LABEL_7:
  sub_1ADDCEDE0(v7, &qword_1EB5BAA00, &qword_1AE2587A0);
  result = v2 - v5;
  if (__OFSUB__(v2, v5))
  {
    __break(1u);
  }

  return result;
}

uint64_t CRAttributedString.Attributes.description.getter()
{
  v1 = *v0;
  v28 = *v0;
  if (CRAttributedString.Attributes.count.getter() < 1)
  {
    return 6109787;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4)) | (v6 << 6);
    v10 = *(*(v1 + 48) + 8 * v9);
    sub_1ADDE4E28(*(v1 + 56) + 32 * v9, v29);
    v28 = v10;
    v11 = v10;
    sub_1AE1D355C(&v28, &v26);
    v4 &= v4 - 1;
    sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);
    v12 = v27;
    if (v27)
    {
      v25 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1ADE55240(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v24 = v14 + 1;
        v17 = v7;
        v18 = *(v7 + 2);
        v19 = sub_1ADE55240((v13 > 1), v14 + 1, 1, v17);
        v14 = v18;
        v15 = v24;
        v7 = v19;
      }

      *(v7 + 2) = v15;
      v16 = &v7[16 * v14];
      *(v16 + 4) = v25;
      *(v16 + 5) = v12;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v28 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
      sub_1ADDCC7D4(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30, MEMORY[0x1E69E6310]);
      v20 = sub_1AE23CBFC();
      v22 = v21;

      v28 = 91;
      v29[0] = 0xE100000000000000;
      MEMORY[0x1B26FB670](v20, v22);

      MEMORY[0x1B26FB670](93, 0xE100000000000000);

      return v28;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);

  sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);

  __break(1u);
  return result;
}

uint64_t sub_1AE1D355C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1AE23CD0C();
  v6 = v5;
  if (v4 == sub_1AE23CD0C() && v6 == v7)
  {

    goto LABEL_11;
  }

  v9 = sub_1AE23E00C();

  if (v9)
  {
LABEL_11:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  sub_1ADDCEE40(a1, &v20, &qword_1EB5BE0C8, &unk_1AE2587A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    v11 = sub_1AE23E02C();
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1ADDCEDE0(&v22, qword_1EB5BBE70, &unk_1AE25AA00);
    sub_1ADDCEE40(a1, &v20, &qword_1EB5BE0C8, &unk_1AE2587A8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
    if (!swift_dynamicCast())
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      sub_1ADDCEDE0(&v22, &unk_1EB5BEB20, &qword_1AE24C510);
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
      sub_1AE23DFCC();
      v14 = *(&v22 + 1);
      v13 = v22;
      goto LABEL_16;
    }

    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    v11 = sub_1AE23DD9C();
  }

  v13 = v11;
  v14 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v22);
LABEL_16:
  sub_1ADDCEE40(a1, &v22, &qword_1EB5BE0C8, &unk_1AE2587A8);
  v15 = v22;
  v16 = sub_1AE23CD0C();
  v18 = v17;

  v20 = v16;
  v21 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v22 + 1);
  MEMORY[0x1B26FB670](8250, 0xE200000000000000);
  MEMORY[0x1B26FB670](v13, v14);

  v19 = v21;
  *a2 = v20;
  a2[1] = v19;
  return result;
}

NSAttributedStringKey_optional __swiftcall CRAttributedString.Attributes.Keys.Iterator.next()()
{
  sub_1AE1D3950();
  v1 = v0;
  if (qword_1EB5B8BF0 == -1)
  {
    if (!v0)
    {
      return v1;
    }
  }

  else
  {
    swift_once();
    if (!v1)
    {
      return v1;
    }
  }

  v2 = qword_1EB5B8BF8;
  v3 = sub_1AE23CD0C();
  v5 = v4;
  if (v3 == sub_1AE23CD0C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1AE23E00C();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_1AE1D3950();
  v11.value = v10;

  return v11;
}

void sub_1AE1D3950()
{
  while (1)
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      break;
    }

    v3 = v0[3];
LABEL_7:
    v6 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v0[3] = v3;
    v0[4] = (v2 - 1) & v2;
    v10 = v6;
    v7 = v0[5];
    v8 = v6;
    if (v7(&v10))
    {
      return;
    }
  }

  v4 = (v0[2] + 64) >> 6;
  v5 = v0[3];
  while (1)
  {
    v3 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    v2 = *(v0[1] + 8 * v3);
    ++v5;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  if (v4 <= v1 + 1)
  {
    v9 = v1 + 1;
  }

  else
  {
    v9 = (v0[2] + 64) >> 6;
  }

  v0[3] = v9 - 1;
  v0[4] = 0;
}

NSAttributedStringKey_optional sub_1AE1D3A2C@<X0>(NSAttributedStringKey_optional *a1@<X8>)
{
  result.value = CRAttributedString.Attributes.Keys.Iterator.next()().value;
  a1->value = result.value;
  return result;
}

uint64_t CRAttributedString.Attributes.Keys.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = -1 << *(*v1 + 32);
  v5 = ~v4;
  v6 = *v1 + 64;
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*v1 + 64);
  *a1 = *v1;
  a1[1] = v6;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = v9;
  a1[5] = v2;
  a1[6] = v3;
}

BOOL static CRAttributedString.Attributes.Keys.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static CRAttributedString.Attributes.Keys.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void CRAttributedString.Attributes.Keys.startIndex.getter(uint64_t a1@<X8>)
{
  sub_1AE1D3B8C(*v1, *(v1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
}

void sub_1AE1D3B8C(uint64_t a1, uint64_t (*a2)(id *))
{
  v3 = a1 + 64;
  v4 = sub_1AE23D8EC();
  v5 = *(a1 + 36);
  while (1)
  {
    v7 = 1 << *(a1 + 32);
    if (v4 == v7)
    {
      break;
    }

    if (v4 < 0 || v4 >= v7)
    {
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
      __break(1u);
      return;
    }

    v8 = v4 >> 6;
    if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_20;
    }

    v19 = *(*(a1 + 48) + 8 * v4);
    v9 = v19;
    v10 = a2(&v19);

    if (v10)
    {
      return;
    }

    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v8);
    if ((v11 & (1 << v4)) == 0)
    {
      goto LABEL_22;
    }

    if (v5 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = v11 & (-2 << (v4 & 0x3F));
    if (v12)
    {
      v6 = __clz(__rbit64(v12)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v13 = v8 << 6;
      v14 = v8 + 1;
      v15 = (a1 + 72 + 8 * v8);
      while (v14 < (v6 + 63) >> 6)
      {
        v17 = *v15++;
        v16 = v17;
        v13 += 64;
        ++v14;
        if (v17)
        {
          sub_1ADDFFBC8(v4, v5, 0);
          v6 = __clz(__rbit64(v16)) + v13;
          goto LABEL_3;
        }
      }

      sub_1ADDFFBC8(v4, v5, 0);
    }

LABEL_3:
    v4 = v6;
    if (v5 != *(a1 + 36))
    {
      goto LABEL_24;
    }
  }
}

void CRAttributedString.Attributes.Keys.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

double CRAttributedString.Attributes.Keys.index(after:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v2;
  v7 = v2[1];
  *&v10 = *a1;
  *(&v10 + 1) = v4;
  v11 = v5;
  sub_1ADFAF2D8(v10, v4, v5);
  sub_1AE1DCAB0(&v10, v6, v7);
  v8 = v11;
  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v8;
  return result;
}

id CRAttributedString.Attributes.Keys.subscript.getter(uint64_t a1)
{
  v1 = sub_1AE1DCCFC(a1);

  return v1;
}

uint64_t static CRAttributedString.Attributes.Keys.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];

  sub_1ADF7BA70(v2, v3, v4);
  v9 = v8;
  sub_1ADF7BA70(v5, v6, v7);
  LOBYTE(v4) = sub_1AE1D3EBC(v9, v10);

  return v4 & 1;
}

uint64_t sub_1AE1D3EBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v27 = v13;
      sub_1AE23CDAC();
      v14 = sub_1AE23E34C();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_1AE23CD0C();
        v20 = v19;
        if (v18 == sub_1AE23CD0C() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_1AE23E00C();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1AE1D40F8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1AE1D41CC(v4, a2);
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  return sub_1AE1D4184;
}

void sub_1AE1D4184(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_1AE1D4224(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v1 = v5[0];
  v5[1] = v2;
  v6 = v3;
  CRAttributedString.Attributes.Keys.index(after:)(v5, a1);

  return sub_1ADDFFBC8(v1, v2, v3);
}

uint64_t sub_1AE1D428C@<X0>(void *a1@<X8>)
{
  CRAttributedString.Attributes.Keys.makeIterator()(a1);
}

uint64_t sub_1AE1D42CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE1D4320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

double CRAttributedString.Attributes.keys.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = sub_1AE1D43B0;
  a1[2] = 0;

  return result;
}

uint64_t sub_1AE1D43B0(uint64_t *a1)
{
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23CD0C();
  v3 = v2;
  if (v1 == sub_1AE23CD0C() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1AE23E00C();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

void CRAttributedString.version.getter(void *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*(*v1 + 16) version];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    type metadata accessor for ObjCVersion();
    swift_dynamicCast();
    v4 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
    swift_beginAccess();
    v6 = *v4;
    v5 = *(v4 + 1);

    *a1 = v6;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.copy(renamingReferences:)(uint64_t *a1@<X8>)
{
  CRAttributedString.attributedString.getter();

  sub_1AE1D45D0(v2, a1);
}

void sub_1AE1D45D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v4 = swift_allocObject();
  sub_1ADDEBF04();
  CRAttributedString.insert(contentsOf:at:)(a1, 0);
  if (v4)
  {
    v5 = [*(v4 + 16) attributedString];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB5B8BF8;
    CRAttributedString.count.getter();
    [v6 removeAttribute:v7 range:{0, v8, v4}];
    swift_unknownObjectRelease();

    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRAttributedString.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  CRAttributedString.attributedString.getter();
  sub_1AE1D45D0(v3, a2);
}

void CRAttributedString.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v4 = swift_allocObject();
  sub_1ADDEBF04();

  *a2 = v4;
}

void CRAttributedString.init(_:string:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a6@<X8>)
{
  CRAttributedString.init(_:)(a2, a3, &v9);
  v8 = v9;

  *a6 = v8;
}

void *CRAttributedString.init(string:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a5@<X8>)
{
  result = CRAttributedString.init(_:)(a1, a2, &v7);
  *a5 = v7;
  return result;
}

void CRAttributedString.init(_:string:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AE1D45D0(a2, &v6);
  v5 = v6;

  *a3 = v5;
}

uint64_t CRAttributedString.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  type metadata accessor for CRAttributedStringRef();
  v6 = swift_allocObject();
  sub_1ADDEBF04();
  *a3 = v6;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  CRAttributedString.insert(contentsOf:at:)(v7, 0);
}

Swift::Void __swiftcall CRAttributedString.insert(contentsOf:at:)(Swift::String contentsOf, Swift::Int at)
{
  sub_1ADE0B3D0(v3);
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = sub_1AE23CCDC();
  v7 = [v5 initWithString_];

  v8 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  v9 = *(v8 + 16);
  v10 = [v7 length];
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1ADE0F07C;
  *(v12 + 24) = v11;
  v21[4] = sub_1ADE0F074;
  v21[5] = v12;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1ADE0EEE0;
  v21[3] = &block_descriptor_16;
  v13 = _Block_copy(v21);
  v14 = v7;

  [v9 insertAtIndex:at length:v10 getStorage:v13];

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v15 = [v14 length];

    if (*(v8 + 40))
    {
      goto LABEL_10;
    }

    v16 = *(v8 + 24);
    v17 = *(v8 + 32);
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (!v18)
    {
      if (v19 != at)
      {
        goto LABEL_10;
      }

      v20 = v15 + at;
      if (!__OFADD__(at, v15))
      {
        v15 = (v20 - v16);
        if (!__OFSUB__(v20, v16))
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_10:
        *(v8 + 24) = at;
LABEL_11:
        *(v8 + 32) = v15;
        *(v8 + 40) = 0;

        return;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void CRAttributedString.init(_:)(void *a4@<X8>)
{
  v5 = CRAttributedString.Substring.attributedString.getter();

  sub_1AE1D45D0(v5, &v6);
  *a4 = v6;
}

id CRAttributedString.Substring.attributedString.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [*(v0[2] + 16) attributedString];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    v5 = [result attributedSubstringFromRange_];
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

void CRAttributedString.init(_:transformAttributes:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  [a1 mutableCopy];
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
  swift_dynamicCast();
  v12 = v21;
  v13 = [v21 length];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a5;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1AE1DCD28;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1AE1DCD40;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AE1D240C;
    aBlock[3] = &block_descriptor_22_0;
    v17 = _Block_copy(aBlock);
    v18 = v12;

    [v18 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v17}];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      type metadata accessor for CRAttributedStringRef();
      v19 = swift_allocObject();
      sub_1ADDEBF04();

      *a6 = v19;
      CRAttributedString.insert(contentsOf:at:)(v18, 0);

      return;
    }
  }

  __break(1u);
}

void sub_1AE1D4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void *a7)
{
  a5(&v11, a1, a2, a3, a4);
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v10 = sub_1AE23C9FC();

  [a7 setAttributes:v10 range:{a2, a3}];
}

Swift::Void __swiftcall CRAttributedString.append(_:)(Swift::String a1)
{
  v3 = v1;
  sub_1ADE0B3D0(v2);
  v4 = *v1;
  v29[0] = *v1;
  CRAttributedString.attributedString.getter();
  v6 = v5;
  v7 = [v5 length];

  if (v7 < 1)
  {
    sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v29[0] = *v3;
  v4 = v29[0];
  CRAttributedString.attributedString.getter();
  if (v29[0])
  {
    v9 = v8;
    v10 = [objc_msgSend(*(v29[0] + 16) attributedString];
    swift_unknownObjectRelease();
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_18;
    }

    v11 = [v9 attributesAtIndex:v10 - 1 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    sub_1AE23CA0C();

LABEL_6:
    v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v13 = sub_1AE23CCDC();
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v14 = sub_1AE23C9FC();

    v15 = [v12 initWithString:v13 attributes:v14];

    if (!v4)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v16 = [*(v4 + 16) length];
    v17 = *(v4 + 16);
    v18 = [v15 length];
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1ADE0F080;
    *(v20 + 24) = v19;
    v29[4] = sub_1AE16B1E4;
    v29[5] = v20;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1ADE0EEE0;
    v29[3] = &block_descriptor_32;
    v21 = _Block_copy(v29);
    v22 = v15;

    [v17 insertAtIndex:v16 length:v18 getStorage:v21];

    _Block_release(v21);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      v23 = [v22 length];

      if (*(v4 + 40))
      {
        goto LABEL_15;
      }

      v24 = *(v4 + 24);
      v25 = *(v4 + 32);
      v26 = __OFADD__(v24, v25);
      v27 = (v24 + v25);
      if (!v26)
      {
        if (v27 != v16)
        {
          goto LABEL_15;
        }

        v28 = &v23[v16];
        if (!__OFADD__(v16, v23))
        {
          v23 = &v28[-v24];
          if (!__OFSUB__(v28, v24))
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_15:
          *(v4 + 24) = v16;
LABEL_16:
          *(v4 + 32) = v23;
          *(v4 + 40) = 0;

          return;
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

void CRAttributedString.removeSubrange(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1ADE0B3D0(a3);
  v6 = *v3;
  if (!*v3)
  {
    goto LABEL_11;
  }

  if (qword_1EB5B9C00 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = *(v6 + 16);
  [v9 removeObjectsInRange_];
}

{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (v6 < 1)
  {
    return;
  }

  v4 = a1;
  sub_1ADE0B3D0(a3);
  v5 = *v3;
  if (!*v3)
  {
    __break(1u);
    return;
  }

  if (qword_1EB5B9C00 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v7 = *(v5 + 16);
  [v7 removeObjectsInRange_];
}

void CRAttributedString.replaceSubrange(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1ADE0B3D0(a5);
  v8 = *v5;
  if (!*v5)
  {
    goto LABEL_9;
  }

  if (qword_1EB5B9C00 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v10 = MEMORY[0x1E696AAB0];
  v11 = *(v8 + 16);
  v12 = objc_allocWithZone(v10);
  v13 = sub_1AE23CCDC();
  v14 = [v12 initWithString_];

  [v11 replaceStorageInRange:a1 withStorage:{v9, v14}];
}

uint64_t CRAttributedString.Runs.Run.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t CRAttributedString.Runs.Run.attributes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t static CRAttributedString.Runs.Run.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = a1[2];
    v6 = a2[2];
    v7 = v4;

    v3 = static CRAttributedString.Attributes.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AE1D57B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE1DCD68(v2, a1, a2);

  return v3;
}

uint64_t CRAttributedString.Substring.runs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

void sub_1AE1D5814()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v2 + 16);

    [v3 useRenameIfAvailable];
  }

  else
  {
    type metadata accessor for CRAttributedStringRef();
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 1;
    if (qword_1EB5B9C00 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB5D7CC0);
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    os_unfair_lock_unlock(&dword_1EB5D7CC0);
    [*(v2 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v4 + 16) = v5;

    *(v0 + 16) = v4;
  }
}

void CRAttributedString.Substring.attributes.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*(v1[2] + 16) attributedString];
  objc_opt_self();
  v5 = [swift_dynamicCastObjCClassUnconditional() attributesAtIndex:v3 effectiveRange:0];
  swift_unknownObjectRelease();
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v6 = sub_1AE23CA0C();

  *a1 = v6;
}

void sub_1AE1D5A38(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  CRAttributedString.Substring.attributes.getter(&v4);
  *a2 = v4;
}

void *sub_1AE1D5A84(uint64_t *a1)
{
  v2 = *a1;

  return CRAttributedString.Substring.attributes.setter(&v2);
}

void *CRAttributedString.Substring.attributes.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_1AE1D5814();
  [*(v1[2] + 16) attributedString];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 - *v1;
  if (__OFSUB__(v4, *v1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v9 = v2;
    sub_1AE1D24B8(&v9, v5, v6);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v8 = sub_1AE23C9FC();

    [v7 setAttributes:v8 range:{v5, v6}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *(*CRAttributedString.Substring.attributes.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  CRAttributedString.Substring.attributes.getter(a1);
  return sub_1AE1D5C40;
}

void *sub_1AE1D5C40(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;

    CRAttributedString.Substring.attributes.setter(&v3);
  }

  else
  {
    v3 = *a1;
    return CRAttributedString.Substring.attributes.setter(&v3);
  }
}

uint64_t CRAttributedString.Substring.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = *(v3[2] + 16);
  v9 = v6;
  v10 = [v8 attributedString];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  (*(a2 + 40))(*(v9 + *MEMORY[0x1E69E6CE8] + 8), a2);
  v12 = sub_1AE23CCDC();

  v13 = [v11 attribute:v12 atIndex:v7 effectiveRange:0];

  if (v13)
  {
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(&v20, &qword_1EB5BAA00, &qword_1AE2587A0);
LABEL_9:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  (*(*v17 + 80))(&v20);

  swift_unknownObjectRelease();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v15 ^ 1u, 1, AssociatedTypeWitness);
}

void *sub_1AE1D5F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v15 - v9, a1, v8);

  return CRAttributedString.Substring.subscript.setter(v10, v11, v13, v6);
}

void *CRAttributedString.Substring.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a1;
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_1AE1D5814();
  v41 = v4[2];
  v18 = [*(v41 + 16) attributedString];
  objc_opt_self();
  v42 = v18;
  result = swift_dynamicCastObjCClassUnconditional();
  v21 = *v4;
  v20 = v4[1];
  v22 = __OFSUB__(v20, *v4);
  v23 = v20 - *v4;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v40 = result;
    (*(v45 + 16))(v10, v44, v46);
    if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
    {
      v24 = *(v45 + 8);
      v25 = v10;
      v26 = v46;
      v24(v25, v46);
      v47[0] = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
      v27 = v23;
      sub_1AE1D24B8(v47, v21, v23);
      type metadata accessor for Key(0);
      sub_1ADDEE3A0();
      v28 = sub_1AE23C9FC();

      v29 = v40;
      [v40 addAttributes:v28 range:{v21, v27}];

      (*(a4 + 40))(v6, a4);
      v30 = sub_1AE23CCDC();

      [v29 removeAttribute:v30 range:{v21, v27}];

      swift_unknownObjectRelease();
      return (v24)(v44, v26);
    }

    else
    {
      (*(v11 + 32))(v17, v10, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BE0D0, &unk_1AE2587B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AE2418F0;
      v32 = *(a4 + 40);
      v38 = v23;
      v32(v6, a4);
      v33 = sub_1AE23CCDC();
      v39 = v17;
      v34 = v33;

      *(inited + 32) = v34;
      (*(v11 + 16))(v14, v17, AssociatedTypeWitness);
      *(inited + 64) = &type metadata for AnyCRValue;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      AnyCRValue.init<A>(_:)(v14, AssociatedTypeWitness, (inited + 40));
      v35 = sub_1ADE0F4FC(inited);
      swift_setDeallocating();
      sub_1ADDCEDE0(inited + 32, &qword_1EB5BA0A0, &qword_1AE241880);
      v47[0] = v35;
      v36 = v38;
      sub_1AE1D24B8(v47, v21, v38);
      type metadata accessor for Key(0);
      sub_1ADDEE3A0();
      v37 = sub_1AE23C9FC();

      [v40 addAttributes:v37 range:{v21, v36}];

      swift_unknownObjectRelease();

      (*(v45 + 8))(v44, v46);
      return (*(v11 + 8))(v39, AssociatedTypeWitness);
    }
  }

  return result;
}

void (*CRAttributedString.Substring.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  CRAttributedString.Substring.subscript.getter(a2, a4, v15);
  return sub_1AE1D6790;
}

void sub_1AE1D6790(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = *v2;
    (*(v6 + 16))(*(*a1 + 48), v4, v5);

    CRAttributedString.Substring.subscript.setter(v3, v8, v9, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    v11 = *v2;

    CRAttributedString.Substring.subscript.setter(v4, v11, v12, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRAttributedString.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *v3;
  if (*v3)
  {
    *a3 = a1;
    a3[1] = a2;
    a3[2] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AE1D6890@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v11 = v4;
  CRAttributedString.subscript.getter(v5, v6, &v9);
  v7 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1AE1D68E0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  v8 = CRAttributedString.subscript.modify(v11, v3, v4);
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;

  return (v8)(v11, 0);
}

double (*CRAttributedString.subscript.modify(double (*result)(uint64_t a1, char a2), uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(result + 3) = v3;
  v4 = *v3;
  if (*v3)
  {
    *result = a2;
    *(result + 1) = a3;
    *(result + 2) = v4;
    *v3 = 0;
    return sub_1AE1D69B0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AE1D69B0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 24);

    *v3 = v2;
  }

  return result;
}

void CRAttributedString.subscript.setter(uint64_t a1)
{
  if (*v1)
  {
    v2 = *(a1 + 16);

    *v1 = v2;
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.attributes(at:effectiveRange:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*v3)
  {
    v7 = [*(*v3 + 16) attributedString];
    objc_opt_self();
    v8 = [swift_dynamicCastObjCClassUnconditional() attributesAtIndex:a1 effectiveRange:a2];
    swift_unknownObjectRelease();
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v9 = sub_1AE23CA0C();

    *a3 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE1D6B20(uint64_t result, uint64_t a2)
{
  if (*v2)
  {
    v3 = result;
    v4 = [*(*v2 + 16) characterRangesForMergeableRange_];
    v5 = sub_1AE23CFDC();

    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1ADDE4E28(v8, v14);
        sub_1ADDEE524(0, qword_1EB5BE3E8, 0x1E696B098);
        if (swift_dynamicCast())
        {
          v9 = [v13 rangeValue];
          v11 = v10;

          sub_1ADE0F9AC(v3, v9, v11, v12);
        }

        v8 += 32;
        --v7;
      }

      while (v7);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRAttributedString.addAttributes(_:range:)(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = *a1;
  sub_1ADE0B3D0(a4);
  v8 = *v4;
  if (v8)
  {
    [*(v8 + 16) attributedString];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v11 = v7;

    sub_1AE1D24B8(&v11, a2, a3);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v10 = sub_1AE23C9FC();

    [v9 addAttributes:v10 range:{a2, a3}];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *a1;
  if (*v3)
  {
    if (*v3 == v5)
    {
LABEL_3:
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v6 = &word_1ED96F220;
LABEL_21:
      v14 = *v6;
      v15 = *(v6 + 2);
      *a2 = v14;
      *(a2 + 2) = v15;
      return;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  sub_1ADE0B3D0(a3);
  v7 = *v3;
  if (*v3)
  {
    if (v5)
    {
      v8 = *(v5 + 16);
      v9 = qword_1EB5B96D8;
      v10 = *(v7 + 16);
      v11 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EB5D7500);
      v12 = byte_1EB5D7504;
      os_unfair_lock_unlock(&dword_1EB5D7500);
      if (v12 == 1)
      {
        if (qword_1EB5B9940 != -1)
        {
          swift_once();
        }

        v13 = qword_1EB5B9948;
      }

      else
      {
        v13 = 0;
      }

      [v10 mergeWithString:v11 optimized:0 suggestedContext:v13];

      if (qword_1EB5B9C00 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EB5D7CC0);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 1;
      os_unfair_lock_unlock(&dword_1EB5D7CC0);
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v6 = &word_1EB5D74C0;
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t CRAttributedString.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  if (*v2)
  {
    if (v3)
    {
      v5 = MEMORY[0x1E69E7CD0];
      if (v4 != v3)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        v8 = *(v3 + 16);
        v9 = *(v4 + 16);
        v10 = swift_allocObject();
        *(v10 + 16) = *(a2 + 16);
        *(v10 + 32) = v4;
        *(v10 + 40) = v7;
        *(v10 + 48) = v3;
        v15[4] = sub_1AE1DCD6C;
        v15[5] = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1AE168B70;
        v15[3] = &block_descriptor_41;
        v11 = _Block_copy(v15);

        v12 = v8;
        v13 = v9;

        [v12 addedRefsInRangesTo:v13 newRange:v11];

        _Block_release(v11);
        swift_beginAccess();
        v5 = *(v7 + 16);
      }

      return v5;
    }

    swift_allocObject();

    __break(1u);
  }

  else
  {

    if (!v3)
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  result = swift_allocObject();
  __break(1u);
  return result;
}

void sub_1AE1D71E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = (a6 + 16);
  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a7)
  {
    goto LABEL_10;
  }

  v17 = [*(a7 + 16) attributedString];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  v37 = a5;
  CRAttributedString.attributedString.getter();
  v29 = v19;
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EB5B8BF8;
  v11 = swift_allocObject();
  v11[2] = a8;
  v11[3] = a9;
  v20 = a1;
  v11[4] = a1;
  v10 = a2;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = v18;
  v11[9] = a5;
  v11[10] = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AE1DD524;
  *(v21 + 24) = v11;
  v35 = sub_1AE1DD608;
  v36 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1ADE160D4;
  v34 = &block_descriptor_234;
  v22 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v12 = v29;
  [v29 enumerateAttribute:v28 inRange:v20 options:a2 usingBlock:{0, v22}];

  swift_unknownObjectRelease();
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
LABEL_7:
    v37 = a5;
    CRAttributedString.attributedString.getter();
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v12;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1AE1DD564;
    *(v26 + 24) = v25;
    v35 = sub_1AE1DD604;
    v36 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1AE1D240C;
    v34 = &block_descriptor_244;
    v27 = _Block_copy(&aBlock);

    [v24 enumerateAttributesInRange:v11 options:v10 usingBlock:{0, v27}];

    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_1AE1D758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v18 = v11;
LABEL_16:
      v19 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v20 = v19 | (v18 << 6);
      v21 = *(*(a1 + 48) + 8 * v20);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v20, v32);
      *&v33 = v21;
      sub_1ADDEE390(v32, (&v33 + 8));
      v22 = v21;
LABEL_17:
      v36[0] = v33;
      v36[1] = v34;
      v37 = v35;
      v23 = v33;
      if (!v33)
      {

        return;
      }

      sub_1ADDEE390((v36 + 8), v32);
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v24 = sub_1AE23CD0C();
      v26 = v25;
      if (v24 == sub_1AE23CD0C() && v26 == v27)
      {

        break;
      }

      v28 = sub_1AE23E00C();

      if (v28)
      {
        break;
      }

      sub_1ADDE4E28(v32, v31);
      swift_dynamicCast();
      v12 = type metadata accessor for AllRefsVisitor();
      v13 = swift_allocObject();
      *(v13 + 24) = 0;
      *(v13 + 16) = MEMORY[0x1E69E7CD0];
      v14 = (v13 + 16);
      *(&v34 + 1) = v12;
      v35 = &off_1F23C4500;
      *&v33 = v13;
      v29 = *(*v30 + 120);

      v29(&v33);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      swift_beginAccess();
      v15 = *v14;

      swift_beginAccess();
      sub_1AE00F014(v15);
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v32);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  while (v9);
LABEL_6:
  if (v10 <= v11 + 1)
  {
    v16 = v11 + 1;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16 - 1;
  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      v9 = 0;
      v35 = 0;
      v11 = v17;
      v33 = 0u;
      v34 = 0u;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v18);
    ++v11;
    if (v9)
    {
      v11 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1AE1D78BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v14 = v21 + a7;
    if (!__OFADD__(v21, a7))
    {
      v17 = a6;
      v18 = a5;
      v13 = a3;
      v15 = a12;
      v20 = a13;
      v16 = a10;
      v19 = a11;
      v29 = a9;
      if (qword_1EB5B8BF0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  v28 = a1;
  swift_once();
  a1 = v28;
LABEL_4:
  v22 = qword_1EB5B8BF8;
  sub_1ADDCEE40(a1, v31, &qword_1EB5BAA00, &qword_1AE2587A0);
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 24) = v20;
  v24 = v31[1];
  *(v23 + 32) = v31[0];
  *(v23 + 48) = v24;
  *(v23 + 64) = v18;
  *(v23 + 72) = v17;
  *(v23 + 80) = v14;
  *(v23 + 88) = v13;
  *(v23 + 96) = v16;
  *(v23 + 104) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1AE1DD56C;
  *(v25 + 24) = v23;
  aBlock[4] = sub_1AE1DD608;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE160D4;
  aBlock[3] = &block_descriptor_254;
  v26 = _Block_copy(aBlock);

  [v29 enumerateAttribute:v22 inRange:v14 options:v13 usingBlock:{0, v26}];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1AE1D7AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v17 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &aBlock[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &aBlock[-1] - v21;
  sub_1ADDCEE40(a5, aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v40)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v23 = v43;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
    v23 = 0;
  }

  sub_1ADDCEE40(a1, aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v40)
  {
    v38 = a3;
    type metadata accessor for ObjCFinalizedTimestamp(0);
    v24 = swift_dynamicCast();
    v25 = v43;
    if (v24)
    {
      isEscapingClosureAtFileLocation = v43;
    }

    else
    {
      isEscapingClosureAtFileLocation = 0;
    }

    if (!v23)
    {
      goto LABEL_25;
    }

    if (isEscapingClosureAtFileLocation)
    {
      sub_1ADED0548(v23 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v22);
      sub_1ADED0548(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v19);
      v27 = *(v17 + 20);
      v28 = *&v19[v27];
      v29 = *&v22[v27];
      if (v28 == v29)
      {
        v30 = sub_1ADF5EB00(v19);
      }

      else
      {
        v30 = v28 < v29;
      }

      sub_1ADDE5118(v19, type metadata accessor for FinalizedTimestamp);
      sub_1ADDE5118(v22, type metadata accessor for FinalizedTimestamp);
      if ((v30 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }

LABEL_20:
      v31 = a6 + a2;
      if (__OFADD__(a6, a2))
      {
        __break(1u);
      }

      else
      {
        v32 = v31 - a8;
        if (!__OFSUB__(v31, a8))
        {
          v43 = a10;
          CRAttributedString.attributedString.getter();
          v34 = v33;
          v35 = swift_allocObject();
          *(v35 + 16) = a11;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_1AE1DD5B0;
          *(v36 + 24) = v35;
          v41 = sub_1AE1DD604;
          v42 = v36;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AE1D240C;
          v40 = &block_descriptor_264;
          v37 = _Block_copy(aBlock);

          [v34 enumerateAttributesInRange:v32 options:v38 usingBlock:{0, v37}];

          _Block_release(v37);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      __break(1u);
      return;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_20;
  }

  sub_1ADDCEDE0(aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v23)
  {
    v38 = a3;
    goto LABEL_16;
  }

  isEscapingClosureAtFileLocation = 0;
LABEL_25:
}

void sub_1AE1D7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CA0];
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v12 = v10;
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(*(a1 + 48) + 8 * v16);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v16, v28);
      *&v29 = v17;
      sub_1ADDEE390(v28, (&v29 + 8));
      v18 = v17;
      v14 = v12;
LABEL_15:
      v32[0] = v29;
      v32[1] = v30;
      v33 = v31;
      if (!v29)
      {

        return;
      }

      sub_1ADDEE390((v32 + 8), &v29);
      if (swift_dynamicCast())
      {
        break;
      }

      v10 = v14;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v19 = *&v28[0];
    v20 = type metadata accessor for AllRefsVisitor();
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    *(v21 + 16) = MEMORY[0x1E69E7CD0];
    v22 = (v21 + 16);
    *(&v30 + 1) = v20;
    v31 = &off_1F23C4500;
    *&v29 = v21;
    v27 = v14;
    v23 = v11;
    v24 = *(*v19 + 120);

    v24(&v29);
    v11 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    swift_beginAccess();
    v25 = *v22;

    swift_beginAccess();
    sub_1AE00F014(v25);
    swift_endAccess();

    v10 = v27;
  }

  while (v8);
LABEL_7:
  if (v9 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      goto LABEL_15;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1AE1D8108(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  CRAttributedString.attributedString.getter();
  v5 = v4;
  CRAttributedString.attributedString.getter();
  v7 = v6;
  v8 = sub_1AE23D78C();

  if (v8)
  {
    if (v3)
    {
      if (v2)
      {
        [*(v3 + 16) graphIsEqual_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static CRAttributedString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  sub_1AE1D8108(v5);
  return v3 & 1;
}

void CRAttributedString.visitReferences(_:)(uint64_t a1)
{
  v13 = *v1;
  CRAttributedString.attributedString.getter();
  v4 = v3;
  CRAttributedString.attributedString.getter();
  v6 = v5;
  v7 = [v5 length];

  sub_1ADF4E010(a1, v12);
  v8 = swift_allocObject();
  sub_1ADE23E6C(v12, v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AE1DCDA0;
  *(v9 + 24) = v8;
  v11[4] = sub_1AE1DD604;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1AE1D240C;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [v4 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_1AE1D83B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (!v10)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v13 = v12;
LABEL_16:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v17, v30);
      *&v31 = v18;
      sub_1ADDEE390(v30, (&v31 + 8));
      v19 = v18;
LABEL_17:
      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      v20 = v31;
      if (!v31)
      {

        return;
      }

      sub_1ADDEE390((v34 + 8), &v31);
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v21 = sub_1AE23CD0C();
      v23 = v22;
      if (v21 != sub_1AE23CD0C() || v23 != v24)
      {
        break;
      }

LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v31);

      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v25 = sub_1AE23E00C();

    if (v25)
    {
      goto LABEL_6;
    }

    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    if ((*(v27 + 8))(v26, v27))
    {
      *a4 = 1;

      __swift_destroy_boxed_opaque_existential_1(&v31);
      return;
    }

    sub_1ADDE4E28(&v31, v30);
    swift_dynamicCast();
    (*(*v29 + 120))(a5);

    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  while (v10);
LABEL_8:
  if (v11 <= v12 + 1)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      v10 = 0;
      v33 = 0;
      v12 = v15;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void CRAttributedString.finalizeTimestamps(_:)(uint64_t a1)
{
  v3 = *v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = [*(v3 + 16) needToFinalizeTimestamps];

  if (!v4)
  {
    return;
  }

  sub_1ADE0B3D0(v5);
  if (!*v1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(*v1 + 16);

  [v6 finalizeTimestamps_];
}

void CRAttributedString.actionUndoingDifference(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  if (!*v3)
  {

    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v6)
  {

    goto LABEL_9;
  }

  if (v7 == v6)
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

LABEL_9:
  aBlock = v6;
  v46[0] = v7;
  if (CRAttributedString.hasDelta(from:)(v46))
  {
    v46[0] = v7;
    v53[0] = v6;
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(v53, a2, WitnessTable, &aBlock);
    v46[0] = aBlock;
    v53[0] = v6;
    CRAttributedString.actionUndoingDifference(from:)(v53, a2, a3);

    return;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v53[0] = MEMORY[0x1E69E7CC0];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  if (!v7)
  {
    goto LABEL_27;
  }

  v44 = a3;
  if (v6)
  {
    v11 = v10;
    v12 = *(v7 + 16);
    v13 = *(v6 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = *(a2 + 16);
    *(v14 + 32) = v11;
    *(v14 + 40) = v7;
    *(v14 + 48) = v6;
    v51 = sub_1AE1DCDA8;
    v52 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v15 = v11;
    v49 = sub_1AE1DAE38;
    v50 = &block_descriptor_60;
    v16 = _Block_copy(&aBlock);

    v17 = v12;
    v18 = v13;

    v19 = [v17 undoCommandToChangeFrom:v18 unedited:v16];
    _Block_release(v16);

    [*(v6 + 16) attributedString];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    swift_beginAccess();
    v21 = *(v15 + 16);
    v22 = v21[2];
    if (v22)
    {
      v42 = v19;
      v23 = v21[4];
      v24 = v21[5];
      v25 = v21[6];
      v26 = swift_allocObject();
      v26[2] = v23;
      v26[3] = v24;
      v26[4] = v25;
      v26[5] = v53;
      v27 = v25;
      v43 = v21;

      sub_1ADDDCE80(0, 0);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1AE1DCDD8;
      *(v28 + 24) = v26;
      v51 = sub_1AE1DD604;
      v52 = v28;
      v45 = MEMORY[0x1E69E9820];
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = sub_1AE1D240C;
      v50 = &block_descriptor_70;
      v29 = _Block_copy(&aBlock);

      v30 = v20;
      [v20 enumerateAttributesInRange:v23 options:v24 usingBlock:{0, v29}];

      _Block_release(v29);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31 = v22 - 1;
      if (v31)
      {
        v32 = (v43 + 9);
        v33 = v26;
        do
        {
          v35 = *(v32 - 2);
          v34 = *(v32 - 1);
          v36 = *v32;
          v26 = swift_allocObject();
          v26[2] = v35;
          v26[3] = v34;
          v26[4] = v36;
          v26[5] = v53;
          v37 = v36;
          sub_1ADDDCE80(sub_1AE1DCDD8, v33);
          v38 = swift_allocObject();
          *(v38 + 16) = sub_1AE1DCDD8;
          *(v38 + 24) = v26;
          v51 = sub_1AE1DD604;
          v52 = v38;
          aBlock = v45;
          v48 = 1107296256;
          v49 = sub_1AE1D240C;
          v50 = &block_descriptor_70;
          v39 = _Block_copy(&aBlock);

          [v30 enumerateAttributesInRange:v35 options:v34 usingBlock:{0, v39}];

          _Block_release(v39);
          LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

          if (v34)
          {
            goto LABEL_26;
          }

          v32 += 3;
          v33 = v26;
        }

        while (--v31);
      }

      swift_unknownObjectRelease();
      v40 = sub_1AE1DCDD8;
      v41 = v53[0];
      v19 = v42;
      if (v42)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v40 = 0;
      v26 = 0;
      v41 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        goto LABEL_23;
      }
    }

    if (!*(v41 + 16))
    {

      *v44 = 0;
      v44[1] = 0;
      goto LABEL_24;
    }

LABEL_23:

    *v44 = v19;
    v44[1] = v41;
LABEL_24:

    sub_1ADDDCE80(v40, v26);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t *CRAttributedString.apply(_:)(uint64_t *result)
{
  v2 = result[1];
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  swift_unknownObjectRetain();

  sub_1ADE0B3D0(v4);
  if (!v3)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    v7 = *(v2 + 16);
    if (v7)
    {
LABEL_7:

      v8 = v2 + 40;
      do
      {
        v9 = *(v8 - 8);

        sub_1AE1D6B20(v10, v9);

        v8 += 16;
        --v7;
      }

      while (v7);
      sub_1AE1DCDE4(v3, v2);
    }

    goto LABEL_14;
  }

  if (!*v1)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(*v1 + 16);
  LOBYTE(v5) = [v5 applyToString_];

  swift_unknownObjectRelease();
  if (v5)
  {
LABEL_6:
    v7 = *(v2 + 16);
    if (v7)
    {
      goto LABEL_7;
    }
  }

LABEL_14:

  return sub_1AE1DCDE4(v3, v2);
}

void *CRAttributedString.hasDelta(from:)(void *result)
{
  v2 = *result;
  v3 = *v1;
  if (*v1)
  {
    if (v3 != v2)
    {
      v4 = [*(v3 + 16) attributedString];
      objc_opt_self();
      result = swift_dynamicCastObjCClassUnconditional();
      if (v2)
      {
        v5 = result;
        v6 = [*(v2 + 16) attributedString];
        objc_opt_self();
        v7 = swift_dynamicCastObjCClassUnconditional();
        v8 = *(v2 + 16);
        v9 = *(v3 + 16);
        v10 = swift_allocObject();
        *(v10 + 16) = v5;
        *(v10 + 24) = v7;
        v15[4] = sub_1AE1DCE28;
        v15[5] = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1AE168B70;
        v15[3] = &block_descriptor_76;
        v11 = _Block_copy(v15);
        v12 = v8;
        v13 = v9;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        v14 = [v12 hasDeltaTo:v13 compareElements:v11];
        _Block_release(v11);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return v14;
      }

      goto LABEL_9;
    }
  }

  else if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return 0;
}

void CRAttributedString.delta(_:from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *v4;
  v19 = *a2;
  v20 = v9;

  CRAttributedString.finalizeTimestamps(_:)(a1);
  CRAttributedString.finalizeTimestamps(_:)(a1);
  if (v9)
  {
    if (v19)
    {
      v10 = *(v20 + 16);
      v11 = *(v19 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = *(a3 + 16);
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v13 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
      v18[4] = sub_1AE1DCE30;
      v18[5] = v12;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1AE1DC9FC;
      v18[3] = &block_descriptor_82_0;
      v14 = _Block_copy(v18);

      v15 = v10;
      v16 = v11;

      v17 = [v13 initWithDeltasTo:v15 from:v16 compareElements:v14];
      _Block_release(v14);

      *a4 = v17;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *CRAttributedString.canMerge(delta:)(void *result)
{
  if (*v1)
  {
    return [*(*v1 + 16) canDeltaMerge_];
  }

  __break(1u);
  return result;
}

void CRAttributedString.merge(delta:)(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  sub_1ADE0B3D0(a2);
  if (*v2)
  {
    [*(*v2 + 16) deltaMerge_];
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = *v4;
  if (!*v4)
  {

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v8)
  {

    goto LABEL_9;
  }

  if (v9 == v8)
  {
LABEL_7:
    *a4 = 0;
    return;
  }

LABEL_9:
  aBlock = v8;
  v33 = v9;
  if (CRAttributedString.hasDelta(from:)(&v33))
  {
    v33 = v9;
    v26 = v8;
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(&v26, a3, WitnessTable, &aBlock);
    v33 = aBlock;
    v26 = v8;
    CRAttributedString.observableDifference(from:with:)(&v26, a2, a3, a4);

    return;
  }

  v11 = swift_allocObject();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  type metadata accessor for CRAttributedString.ObservableDifference.Edit(0, v12, v13, v14);
  *(v11 + 16) = sub_1AE23C9DC();
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = a4;
  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = *(v8 + 16);
  v24 = *(v9 + 16);
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v11;
  v31 = sub_1AE1DCE54;
  v32 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1ADE4EFB0;
  v30 = &block_descriptor_91_0;
  v17 = _Block_copy(&aBlock);
  v18 = v15;
  v19 = v24;

  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v11;
  v20[5] = v9;
  v20[6] = v8;
  v31 = sub_1AE1DCEA8;
  v32 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1AE1D9FE4;
  v30 = &block_descriptor_97;
  v21 = _Block_copy(&aBlock);

  [v18 deltaTo:v19 edited:v17 unedited:v21];
  _Block_release(v21);
  _Block_release(v17);

  swift_beginAccess();

  v22 = sub_1AE23D0AC();

  if (v22 < 1)
  {

    *v25 = 0;
  }

  else
  {
    v23 = *(v11 + 16);

    *v25 = v23;
  }
}

double CRAttributedString.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v10 = v6;
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);

    sub_1ADE6BF6C(&v10, v9, v8);
  }

  return result;
}

id sub_1AE1D9724(uint64_t a1, SEL *a2)
{
  if (*v2)
  {
    return [*(*v2 + 16) *a2];
  }

  __break(1u);
  return result;
}

uint64_t CRAttributedString.ObservableDifference.Edit.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1AE23DA2C();

    v11 = 0x7475626972747461;
    v6 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v6);

    result = MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    if (!__OFADD__(a1, a2))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    sub_1AE23DA2C();

    v11 = 0x6574636172616863;
    v8 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v8);

    result = MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    if (!__OFADD__(a1, a2))
    {
      v9 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v9);

      MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE263C70);
LABEL_6:
      v10 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v10);

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      return v11;
    }
  }

  __break(1u);
  return result;
}

BOOL static CRAttributedString.ObservableDifference.Edit.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a1 == a5 && a2 == a6;
  if ((a8 & 1) == 0)
  {
    v9 = 0;
  }

  v12 = a1 == a5 && a2 == a6 && a3 == a7;
  if (a8)
  {
    v12 = 0;
  }

  if (a4)
  {
    return v9;
  }

  else
  {
    return v12;
  }
}

uint64_t static CRAttributedString.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for CRAttributedString.ObservableDifference.Edit(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69530](v4, v5, v6, WitnessTable);
}

uint64_t sub_1AE1D9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  type metadata accessor for CRAttributedString.ObservableDifference.Edit(255, a6, a7, v9);
  sub_1AE23D11C();
  sub_1AE23D0CC();
  return swift_endAccess();
}

uint64_t sub_1AE1D9AFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v20[11] = v9;
    v20[12] = v10;
    v20[0] = a7;
    v19 = sub_1AE1D9CB8(v20, result, a2, a3 - result);
    MEMORY[0x1EEE9AC00](v19);
    v18[2] = a8;
    v18[3] = a9;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE3D8, &qword_1AE259220);
    v14 = type metadata accessor for CRAttributedString.ObservableDifference.Edit(0, a8, a9, v13);
    v15 = sub_1ADDCC7D4(&qword_1EB5BE3E0, &qword_1EB5BE3D8, &qword_1AE259220, MEMORY[0x1E69E6340]);
    v17 = sub_1ADE08EB0(sub_1AE1DD468, v18, v12, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

    v20[0] = v17;
    swift_beginAccess();
    sub_1AE23D11C();
    swift_getWitnessTable();
    sub_1AE23D0BC();
    return swift_endAccess();
  }

  return result;
}

uint64_t *sub_1AE1D9CB8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v6 = *v4;
  v28 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v10 = [*(v6 + 16) attributedString];
    objc_opt_self();
    result = swift_dynamicCastObjCClassUnconditional();
    if (v5)
    {
      v11 = result;
      v12 = [*(v5 + 16) attributedString];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClassUnconditional();
      v25 = 0;
      v26 = 0;
      v27 = 1;
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v14 = qword_1EB5B8BF8;
      v15 = swift_allocObject();
      v15[2] = v13;
      v15[3] = a4;
      v15[4] = &v25;
      v15[5] = &v28;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1AE1DD480;
      *(v16 + 24) = v15;
      v24[4] = sub_1ADE162D0;
      v24[5] = v16;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1ADE160D4;
      v24[3] = &block_descriptor_194;
      v17 = _Block_copy(v24);
      swift_unknownObjectRetain();

      [v11 enumerateAttribute:v14 inRange:a2 options:a3 usingBlock:{0, v17}];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        if (v27 == 1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v19 = v28;
LABEL_12:

          return v19;
        }

        v11 = v25;
        v16 = v26;
        isEscapingClosureAtFileLocation = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = isEscapingClosureAtFileLocation;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_9:
          v22 = *(isEscapingClosureAtFileLocation + 16);
          v21 = *(isEscapingClosureAtFileLocation + 24);
          if (v22 >= v21 >> 1)
          {
            v28 = sub_1ADE563D4((v21 > 1), v22 + 1, 1, isEscapingClosureAtFileLocation);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v19 = v28;
          *(v28 + 2) = v22 + 1;
          v23 = &v19[16 * v22];
          *(v23 + 4) = v11;
          *(v23 + 5) = v16;
          v28 = v19;
          goto LABEL_12;
        }
      }

      isEscapingClosureAtFileLocation = sub_1ADE563D4(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
      v28 = isEscapingClosureAtFileLocation;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1AE1D9FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);

  return result;
}

void sub_1AE1DA05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v19 = 0;
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB5B8BF8;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a6;
  v13[7] = &v19;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AE1DD49C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1AE1DD608;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE160D4;
  aBlock[3] = &block_descriptor_214;
  v15 = _Block_copy(aBlock);
  v16 = a6;

  [a5 enumerateAttribute:v12 inRange:a3 options:a4 usingBlock:{0, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1AE1DA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v15 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v11 = v15 + a7;
    if (!__OFADD__(v15, a7))
    {
      v13 = a4;
      v10 = a3;
      v12 = a9;
      v14 = a10;
      if (qword_1EB5B8BF0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  v22 = a1;
  swift_once();
  a1 = v22;
LABEL_4:
  v16 = qword_1EB5B8BF8;
  sub_1ADDCEE40(a1, v24, &qword_1EB5BAA00, &qword_1AE2587A0);
  v17 = swift_allocObject();
  v18 = v24[1];
  *(v17 + 16) = v24[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v14;
  *(v17 + 56) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AE1DD518;
  *(v19 + 24) = v17;
  v23[4] = sub_1AE1DD608;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1ADE160D4;
  v23[3] = &block_descriptor_224;
  v20 = _Block_copy(v23);

  [v12 enumerateAttribute:v16 inRange:v11 options:v10 usingBlock:{0, v20}];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1AE1DA420(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v12 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  sub_1ADDCEE40(a5, v28, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v29)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v18 = v27;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(v28, &qword_1EB5BAA00, &qword_1AE2587A0);
    v18 = 0;
  }

  sub_1ADDCEE40(a1, v28, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v29)
  {
    sub_1ADDCEDE0(v28, &qword_1EB5BAA00, &qword_1AE2587A0);
    v21 = 0;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  v19 = swift_dynamicCast();
  v20 = v27;
  if (v19)
  {
    v21 = v27;
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    if (v21)
    {
      sub_1ADED0548(v18 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v17);
      sub_1ADED0548(v21 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v14);
      v22 = *(v12 + 20);
      v23 = *&v14[v22];
      v24 = *&v17[v22];
      if (v23 == v24)
      {
        v25 = sub_1ADF5EB00(v14);
      }

      else
      {
        v25 = v23 < v24;
      }

      sub_1ADDE5118(v14, type metadata accessor for FinalizedTimestamp);
      sub_1ADDE5118(v17, type metadata accessor for FinalizedTimestamp);
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }

      v21 = v20;
    }

LABEL_19:
    *a6 = 1;
    *a7 = 1;
    *a4 = 1;
LABEL_20:
  }

LABEL_21:
}

void sub_1AE1DA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EB5B8BF0 == -1)
  {
    v13 = a2 + a6;
    if (!__OFADD__(a2, a6))
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = a1;
  swift_once();
  a1 = v20;
  v13 = a2 + a6;
  if (__OFADD__(a2, a6))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = qword_1EB5B8BF8;
  sub_1ADDCEE40(a1, v23, &qword_1EB5BAA00, &qword_1AE2587A0);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = a7;
  *(v15 + 56) = a6;
  *(v15 + 64) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AE1DD48C;
  *(v17 + 24) = v15;
  v22[4] = sub_1AE1DD608;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1ADE160D4;
  v22[3] = &block_descriptor_204;
  v18 = _Block_copy(v22);

  [a5 enumerateAttribute:v14 inRange:v13 options:a3 usingBlock:{0, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_8:
    __break(1u);
  }
}

void sub_1AE1DA870(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char **a8)
{
  *&v46 = a7;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1ADDCEE40(a5, v48, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v49)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v20 = v47;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(v48, &qword_1EB5BAA00, &qword_1AE2587A0);
    v20 = 0;
  }

  sub_1ADDCEE40(a1, v48, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v49)
  {
    sub_1ADDCEDE0(v48, &qword_1EB5BAA00, &qword_1AE2587A0);
    if (!v20)
    {
      a1 = 0;
      goto LABEL_23;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_19;
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  v21 = swift_dynamicCast();
  v22 = v47;
  if (v21)
  {
    a1 = v47;
  }

  else
  {
    a1 = 0;
  }

  if (!v20)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  v45 = a3;
  sub_1ADED0548(v20 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v19);
  sub_1ADED0548(&a1[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp], v16);
  v23 = *(v14 + 20);
  v24 = *&v16[v23];
  v25 = *&v19[v23];
  if (v24 == v25)
  {
    v26 = v20;
    v27 = sub_1ADF5EB00(v16);
  }

  else
  {
    v27 = v24 < v25;
    v28 = v20;
  }

  sub_1ADDE5118(v16, type metadata accessor for FinalizedTimestamp);
  sub_1ADDE5118(v19, type metadata accessor for FinalizedTimestamp);

  a1 = v22;
  a3 = v45;
  if ((v27 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (a6[1])
  {

    v29 = a2 - v46;
    if (!__OFSUB__(a2, v46))
    {
LABEL_40:
      *a6 = v29;
      *(a6 + 1) = a3;
      *(a6 + 16) = 0;
      return;
    }

    __break(1u);
LABEL_23:
    if (*(a6 + 16) == 1)
    {

      return;
    }

    v46 = *a6;
    v22 = *a8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  v30 = *a6;
  if (__OFADD__(v30, *(&v30 + 1)))
  {
    __break(1u);
    goto LABEL_42;
  }

  v29 = a2 - v46;
  if (__OFSUB__(a2, v46))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    v22 = sub_1ADE563D4(0, *(v22 + 2) + 1, 1, v22);
    *a8 = v22;
LABEL_32:
    v36 = *(v22 + 2);
    v35 = *(v22 + 3);
    if (v36 >= v35 >> 1)
    {
      *a8 = sub_1ADE563D4((v35 > 1), v36 + 1, 1, v22);
    }

    v37 = *a8;
    *(v37 + 2) = v36 + 1;
    *&v37[16 * v36 + 32] = v46;
    *a6 = 0;
    *(a6 + 1) = 0;
    *(a6 + 16) = 1;
    return;
  }

  if (v30 + *(&v30 + 1) != v29)
  {
    v46 = *a6;
    v38 = a3;
    v39 = *a8;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v39;
    if ((v40 & 1) == 0)
    {
      v39 = sub_1ADE563D4(0, *(v39 + 2) + 1, 1, v39);
      *a8 = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      *a8 = sub_1ADE563D4((v41 > 1), v42 + 1, 1, v39);
    }

    v43 = *a8;
    *(v43 + 2) = v42 + 1;
    *&v43[16 * v42 + 32] = v46;
    a3 = v38;
    goto LABEL_40;
  }

  if ((a6[1] & 1) == 0)
  {

    v31 = *(a6 + 1);
    v32 = __OFADD__(v31, a3);
    v33 = v31 + a3;
    if (!v32)
    {
      *(a6 + 1) = v33;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1AE1DACA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4 - a2;
  if (__OFSUB__(a4, a2))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = result;
  v25 = a8;
  v10 = sub_1AE1D9CB8(&v25, a2, a3, a4 - a2);
  v11 = v10[2];
  if (v11)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F4BC(0, v11, 0);
    v12 = v22;
    v13 = v23;
    v14 = v10 + 5;
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = v15 + v8;
      if (__OFADD__(v15, v8))
      {
        break;
      }

      if (__OFSUB__(v16, a4))
      {
        goto LABEL_13;
      }

      v17 = *v14;
      result = [v12 subrangeFrom_];
      v24 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v21 = result;
        sub_1ADE6F4BC((v18 > 1), v19 + 1, 1);
        result = v21;
        v12 = v22;
        v13 = v24;
      }

      v14 += 2;
      v13[2] = v19 + 1;
      v20 = &v13[3 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = result;
      if (!--v11)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
  swift_beginAccess();
  sub_1ADFB704C(v13);
  return swift_endAccess();
}

void sub_1AE1DAE38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AE1DAED4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, id a7, void **a8)
{
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v9 = a8;
    v8 = a1;
    v10 = [a7 subrangeFrom_];
    v11 = *v9;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v11;
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_1ADE5662C(0, v11[2] + 1, 1, v11);
  v11 = result;
  *v9 = result;
LABEL_3:
  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1ADE5662C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
    *v9 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = v10;
  v15[5] = v8;
  return result;
}

void CRAttributedString.Cursor.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  CRString.Cursor.init(from:)(a1, &v4);
  if (!v2)
  {
    *a2 = v4;
  }
}

void CRAttributedString.Cursor.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *v1;
  CRString.Cursor.encode(to:)(a1);
}

void CRAttributedString.Cursor.finalizeTimestamps(_:)(uint64_t a1)
{
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v3;
}

uint64_t static CRAttributedString.Cursor.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1AE23D78C();

  return v6 & 1;
}

id sub_1AE1DB180()
{
  v0 = sub_1ADFAEA70();

  return v0;
}

void CRAttributedString.cursor(at:affinity:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {
    v8 = type metadata accessor for CRAttributedString.Cursor(0, *(a3 + 16), *(a3 + 24), a4);
    v10 = *(v5 + 16);
    WitnessTable = swift_getWitnessTable();
    sub_1ADEDD190(v10, a1, a2, v8, WitnessTable);
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.cursor(range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *v5;
  if (*v5)
  {
    v10 = type metadata accessor for CRAttributedString.Cursor(0, *(a3 + 16), *(a3 + 24), a5);
    v12 = *(v6 + 16);
    WitnessTable = swift_getWitnessTable();
    sub_1ADEDD2B4(v12, a1, a2, v10, WitnessTable, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *CRAttributedString.index(of:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {
    v6 = result;
    v7 = type metadata accessor for CRAttributedString.Cursor(0, *(a2 + 16), *(a2 + 24), a4);
    v8 = *(v5 + 16);
    v12 = *v6;
    v9 = v8;
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1ADEDD5A0(v9, &v12, v7, WitnessTable);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *CRAttributedString.range(of:)(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {
    v6 = result;
    v7 = type metadata accessor for CRAttributedString.Cursor(0, *(a2 + 16), *(a2 + 24), a4);
    v8 = *(v5 + 16);
    v12 = *v6;
    v9 = v8;
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1ADEDD634(v9, &v12, v7, WitnessTable);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRAttributedString.cursor(range:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CRAttributedString.cursor(range:)(a3, a4, a5, v8, a4);
  v7 = v8[1];
  *a1 = v8[0];
  *a2 = v7;
}

__int128 *CRAttributedString.range(of:)(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v18 = *v3;
  *&v15 = v5;
  v16 = v6;
  v8 = type metadata accessor for CRAttributedString.Cursor(0, *(a3 + 16), *(a3 + 24), v7);
  WitnessTable = swift_getWitnessTable();
  CursorRange.init(lowerBound:upperBound:)(&v15, &v16, v8, &protocol witness table for CRAttributedString<A>.Cursor, WitnessTable, &v17);
  v10 = v17;
  v15 = v17;
  v13 = CRAttributedString.range(of:)(&v15, a3, v11, v12);

  return v13;
}

uint64_t CRAttributedString.encode(to:)(uint64_t a1)
{
  CRAttributedString.attributedString.getter();
  v2 = v1;
  v3 = [v1 string];

  sub_1AE23CD0C();
  sub_1AE23CDDC();
}

void sub_1AE1DB6F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *(a1 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xA)
  {
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);

  type metadata accessor for Key(0);
  v11 = v10;
  v12 = sub_1ADDEE3A0();
  v13 = MEMORY[0x1B26FB2D0](v9 >> 1, v11, MEMORY[0x1E69E7CA0] + 8, v12);
  v14 = *(a1 + 16);
  if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xA)
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v68 = v5;
  v66 = *(v15 + 16);
  if (!v66)
  {

    v16 = 0;
LABEL_49:

    *a5 = v13;
    return;
  }

  v16 = 0;
  v17 = 0;
  v64 = v15;
  while (v17 < *(v15 + 16))
  {
    v19 = *(v15 + 8 * v17 + 32);
    type metadata accessor for CRDecoder();
    swift_allocObject();
    swift_retain_n();

    v20 = sub_1ADE0262C(v19, a2);

    if (v16)
    {
      v21 = *(a4 + 8);
      v22 = v16;
      v23 = v21();
      v24 = sub_1AE23CD0C();
      if (*(v23 + 16))
      {
        v26 = sub_1ADDD7A10(v24, v25);
        v28 = v27;

        if (v28)
        {
          v29 = (*(v23 + 56) + 16 * v26);
          v30 = *v29;
          v31 = v29[1];

          v32 = *(v31 + 8);
          v71 = &type metadata for AnyCRValue;
          v32(&v70, v20, v30, v31);
          if (v68)
          {
            goto LABEL_50;
          }

          v68 = 0;

          sub_1ADDEE390(&v70, v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v13;
          v34 = sub_1ADDF1D10(v22);
          v36 = v13[2];
          v37 = (v35 & 1) == 0;
          v38 = __OFADD__(v36, v37);
          v39 = v36 + v37;
          if (v38)
          {
            goto LABEL_57;
          }

          v40 = v35;
          if (v13[3] < v39)
          {
            sub_1ADDEBC08(v39, isUniquelyReferenced_nonNull_native);
            v34 = sub_1ADDF1D10(v22);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_59;
            }

LABEL_40:
            v13 = v72;
            if (v40)
            {
              goto LABEL_41;
            }

LABEL_45:
            v13[(v34 >> 6) + 8] |= 1 << v34;
            *(v13[6] + 8 * v34) = v22;
            sub_1ADDEE390(v69, (v13[7] + 32 * v34));

            v58 = v13[2];
            v38 = __OFADD__(v58, 1);
            v56 = v58 + 1;
            if (v38)
            {
              goto LABEL_58;
            }

LABEL_46:
            v13[2] = v56;
LABEL_13:

            v16 = 0;
            v15 = v64;
            goto LABEL_14;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_40;
          }

          v57 = v34;
          sub_1ADE1B924();
          v34 = v57;
          v13 = v72;
          if ((v40 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_41:
          v18 = (v13[7] + 32 * v34);
LABEL_12:
          __swift_destroy_boxed_opaque_existential_1(v18);
          sub_1ADDEE390(v69, v18);

          goto LABEL_13;
        }
      }

      else
      {
      }

      v71 = &type metadata for AnyCRValue;

      AnyCRValue.init(from:)(v45, &v70);
      if (v68)
      {
LABEL_50:

        __swift_deallocate_boxed_opaque_existential_0(&v70);
        return;
      }

      v68 = 0;

      sub_1ADDEE390(&v70, v69);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v13;
      v48 = sub_1ADDF1D10(v22);
      v49 = v13[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_55;
      }

      v52 = v47;
      if (v13[3] >= v51)
      {
        if (v46)
        {
          v13 = v72;
          if ((v47 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1ADE1B924();
          v13 = v72;
          if ((v52 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1ADDEBC08(v51, v46);
        v53 = sub_1ADDF1D10(v22);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_59;
        }

        v48 = v53;
        v13 = v72;
        if ((v52 & 1) == 0)
        {
LABEL_36:
          v13[(v48 >> 6) + 8] |= 1 << v48;
          *(v13[6] + 8 * v48) = v22;
          sub_1ADDEE390(v69, (v13[7] + 32 * v48));

          v55 = v13[2];
          v38 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v38)
          {
            goto LABEL_56;
          }

          goto LABEL_46;
        }
      }

      v18 = (v13[7] + 32 * v48);
      goto LABEL_12;
    }

    if (!*(v20 + 72))
    {

      sub_1ADE42E40(v59, v60, v61);
      swift_allocError();
      *v62 = 0xD000000000000017;
      *(v62 + 8) = 0x80000001AE25FB70;
      *(v62 + 16) = 0;
      swift_willThrow();

LABEL_53:

      return;
    }

    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v20;
    sub_1ADE05C74(inited, v43, v44);
    if (v68)
    {

      goto LABEL_53;
    }

    v68 = 0;

    v16 = sub_1AE23CCDC();

LABEL_14:
    if (v66 == ++v17)
    {

      goto LABEL_49;
    }
  }

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
  sub_1AE23E27C();
  __break(1u);
}

void sub_1AE1DBD98(uint64_t a1)
{
  v3 = v2;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v25 = (v5 + 63) >> 6;
  v27 = *v1;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v9;
    if (!v7)
    {
      break;
    }

LABEL_10:
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    v13 = *(*(v27 + 48) + 8 * v12);
    sub_1ADDE4E28(*(v27 + 56) + 32 * v12, v29);
    v28 = v13;
    v14 = sub_1AE1DBFD8(v13, v29, a1);
    if (v3)
    {

      sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);

      return;
    }

    v15 = v14;
    sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);
    v16 = *(v15 + 16);
    v17 = *(v30 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_23;
    }

    v18 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 + v16 > *(v18 + 24) >> 1)
    {
      v20 = sub_1AE23DACC();
    }

    v3 = 0;
    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((*(v20 + 24) >> 1) - *(v20 + 16) < v16)
      {
        goto LABEL_25;
      }

      v21 = v20;
      swift_arrayInitWithCopy();

      v9 = v21;
      if (v16)
      {
        v22 = *(v21 + 16);
        v23 = __OFADD__(v22, v16);
        v24 = v22 + v16;
        if (v23)
        {
          goto LABEL_26;
        }

        *(v21 + 16) = v24;
      }
    }

    else
    {
      v10 = v20;

      v9 = v10;
      if (v16)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v25)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v8;
    if (v7)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1AE1DBFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDE4E28(a2, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v26;
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v7 = sub_1AE23CD0C();
  v9 = sub_1ADE66494(v7, v8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = swift_allocObject();
    v11 = *(inited + 16);
    *(v10 + 16) = v11;
    sub_1ADE51B2C(v11);

    inited = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = v12 | 0x1000000000000000;
  v14 = *(inited + 16);
  *(inited + 16) = v13;
  sub_1ADE51B48(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AE241900;
  *(v15 + 32) = inited;
  v16 = *(a3 + 112);
  v24 = *(a3 + 120);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v17 = *(*v5 + 152);

  v18 = v17(a3);
  if (v3)
  {

    *(v15 + 16) = 0;
  }

  else
  {
    v22 = sub_1ADE71C08(v18, v19, v20);
    swift_beginAccess();
    v23 = *(v22 + 24);
    *(a3 + 112) = v16;

    *(a3 + 120) = v24;

    *(v15 + 40) = v23;
  }

  return v15;
}

void CRAttributedString.Attributes.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 72))
  {

    sub_1AE1DB6F8(v8, a1, a3, &v10);
    if (!v4)
    {
      *a4 = v10;
    }
  }

  else
  {
    sub_1ADE42E40(0, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }
}

double CRAttributedString.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    sub_1AE1DBD98(a1);
    v7 = v6;
    swift_beginAccess();
    sub_1AE1B71F0(v7);
    swift_endAccess();
  }

  return result;
}

void CRAttributedString.Partial.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v9 = *(v8 + 16);
    v10 = (~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x4000000000000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v16 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 80);
      *&v39[16] = *(v16 + 64);
      *&v39[32] = v17;
      *&v39[48] = *(v16 + 96);
      *&v39[64] = *(v16 + 112);
      v18 = *(v16 + 32);
      v37 = *(v16 + 16);
      v38 = v18;
      *v39 = *(v16 + 48);
      sub_1ADE51B64(&v37, v36);

      v31 = *&v39[40];
      v32 = *&v39[56];
      v30 = *&v39[24];
      v14 = *v39;
      v33 = v38;
      v34 = *&v39[8];
      v13 = *(&v37 + 1);
      v12 = v37;
    }

    else
    {

      v12 = 0;
      v33 = vdupq_n_s64(v11);
      v34 = 0u;
      v13 = 0xE000000000000000;
      v14 = v11;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
    }

    v19 = objc_allocWithZone(type metadata accessor for CRAttributedStringDecoder());
    v20 = &v19[OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope];
    *v20 = a2;
    *(v20 + 1) = a3;
    v21 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    LOBYTE(v37) = 1;
    *v21 = 0;
    *(v21 + 1) = v11;
    *(v21 + 2) = v11;
    *(v21 + 3) = v11;
    *(v21 + 4) = 0;
    v21[40] = 1;
    *(v21 + 41) = v36[0];
    *(v21 + 11) = *(v36 + 3);
    *(v21 + 6) = 0;
    *(v21 + 7) = 0;
    v21[64] = 1;
    v22 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    *v22 = v12;
    *(v22 + 1) = v13;
    *(v22 + 1) = v33;
    *(v22 + 4) = v14;
    *(v22 + 40) = v34;
    *(v22 + 56) = v30;
    *(v22 + 72) = v31;
    *(v22 + 88) = v32;
    *&v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a1;
    v35.receiver = v19;
    v35.super_class = type metadata accessor for CRStringDecoder();

    v23 = objc_msgSendSuper2(&v35, sel_init);
    v24 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
    *&v37 = 0;
    v25 = [v24 initWithDecoder:v23 error:&v37];
    if (v25)
    {
      v26 = v25;
      v27 = v37;

      *a4 = v26;
    }

    else
    {
      v28 = v37;
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v15 = 0xD000000000000014;
    *(v15 + 8) = 0x80000001AE25FB50;
    *(v15 + 16) = 0;
    swift_willThrow();
  }
}

void CRAttributedString.Partial.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v6 = objc_allocWithZone(type metadata accessor for CRAttributedStringEncoder());

    v8 = sub_1ADF8B964(v7);
    v19[0] = 0;
    v9 = [v5 saveToEncoder:v8 error:v19];
    v10 = v19[0];
    if (v9)
    {
      v11 = &v8[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 2);
      v20[1] = *(v11 + 1);
      v20[2] = v13;
      v20[0] = v12;
      v14 = *(v11 + 3);
      v15 = *(v11 + 4);
      v16 = *(v11 + 5);
      v21 = *(v11 + 12);
      v20[4] = v15;
      v20[5] = v16;
      v20[3] = v14;
      swift_beginAccess();
      v17 = v10;
      sub_1ADE51B64(v20, v19);
      sub_1AE1B6CF4(v20);
      swift_endAccess();
    }

    else
    {
      v18 = v19[0];
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }
}

uint64_t sub_1AE1DC8E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a6;
  v12 = a5;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1AE1D9CB8(&v11, result, a2, a3 - result);
    v7 = v6[2];
    if (v7)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1AE23DB1C();
      v8 = objc_opt_self();
      v9 = v6 + 5;
      do
      {
        v10 = [v8 valueWithRange_];
        sub_1AE23DAEC();
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v9 += 2;
        --v7;
      }

      while (v7);

      return v12;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

id sub_1AE1DC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);

  sub_1ADDEE524(0, qword_1EB5BE3E8, 0x1E696B098);
  v10 = sub_1AE23CFCC();

  return v10;
}

void sub_1AE1DCAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a1 + 16))
  {
    goto LABEL_32;
  }

  v4 = *(a1 + 8);
  if (*(a2 + 36) != v4)
  {
    goto LABEL_30;
  }

  v5 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v7 = a2 + 64;
    v8 = v4;
    v23 = a2 + 72;
    while ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(a2 + 32);
      if (v5 >= v9)
      {
        break;
      }

      v10 = v5 >> 6;
      v11 = *(v7 + 8 * (v5 >> 6));
      if (((v11 >> v5) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a2 + 36) != v4)
      {
        goto LABEL_26;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v5 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = a3;
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v23 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            sub_1ADDFFBC8(v5, v4, 0);
            v5 = __clz(__rbit64(v17)) + v14;
            goto LABEL_16;
          }
        }

        sub_1ADDFFBC8(v5, v4, 0);
        v5 = v9;
LABEL_16:
        a3 = v13;
      }

      if (*(a2 + 36) != v4)
      {
        goto LABEL_27;
      }

      v19 = 1 << *(a2 + 32);
      if (v5 == v19)
      {
        goto LABEL_23;
      }

      if ((v5 & 0x8000000000000000) != 0 || v5 >= v19)
      {
        goto LABEL_28;
      }

      if (((*(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_29;
      }

      v24 = *(*(a2 + 48) + 8 * v5);
      v20 = v24;
      v21 = a3(&v24);

      v4 = v8;
      if (v21)
      {
LABEL_23:
        *a1 = v5;
        *(a1 + 8) = v8;
        *(a1 + 16) = 0;
        return;
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
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1AE1DCCAC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AE1DCDE4(uint64_t result, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t objectdestroy_37Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AE1DCFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE1DD008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE1DD0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AE1DD174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE1DD1BC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1AE1DD220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD2A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1AE1DD2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1AE1DD318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AE1DD374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AE1DD468@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 1;
  return result;
}

uint64_t objectdestroy_196Tm(uint64_t a1)
{
  if (*(v1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1AE1DD680(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (!*(v9 + 16))
  {
    return;
  }

  v10 = sub_1ADDFF050(a1);
  if ((v11 & 1) == 0)
  {
    return;
  }

  v25 = a1;
  v26 = v6;
  v12 = *(*(v9 + 56) + 8 * v10);
  if (v12 >> 62)
  {
LABEL_24:
    v13 = sub_1AE23D97C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {
      goto LABEL_19;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (*(v12 + 8 * v14 + 32) == a2)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_23;
    }
  }

  v24 = MEMORY[0x1B26FC360](v14, v12);
  swift_unknownObjectRelease();
  if (v24 != a2)
  {
    goto LABEL_10;
  }

LABEL_14:

  v16 = v25;
  v17 = v26;
  if (*(v9 + 16))
  {
    v18 = sub_1ADDFF050(v25);
    if (v19)
    {
      v20 = *(*(v9 + 56) + 8 * v18);
      if (v20 >> 62)
      {
        if (sub_1AE23D97C() == 1)
        {
          goto LABEL_18;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_18:
        sub_1ADF5F378(v16);
LABEL_19:

        return;
      }
    }
  }

  (*(v17 + 16))(v8, v16, v5);
  v21 = sub_1ADF5F0D4(v27);
  if (*v22)
  {
    sub_1AE031418(v14);
  }

  (v21)(v27, 0);
  (*(v17 + 8))(v8, v5);
}

uint64_t sub_1AE1DD918()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 96);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1DDA10, 0, 0);
}

uint64_t sub_1AE1DDA10()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *v3 = v0;
  v3[1] = sub_1AE1DDABC;
  v6 = v0[6];
  v7 = v0[4];

  return MEMORY[0x1EEE6DA10](v6, v2, v7, v4, v5);
}

uint64_t sub_1AE1DDABC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1AE1DDC4C;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1AE1DDBE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AE1DDBE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1DDC4C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1AE1DDCB8()
{
  type metadata accessor for FileActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = sub_1ADE51734(MEMORY[0x1E69E7CC0]);
  result = sub_1ADE51734(v1);
  *(v0 + 120) = result;
  qword_1EB5D7CD0 = v0;
  return result;
}

uint64_t sub_1AE1DDD14(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1AE23BDDC();
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  *a3 = [a4 retainAccess];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AE1DDDB8()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1DDF08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  type metadata accessor for CRDecodeContext.DecodingReference(0, a4, a5, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  swift_beginAccess();
  sub_1ADDD86D8(v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_1ADDE9748(v9, v7, v8, isUniquelyReferenced_nonNull_native);
  *(v5 + 16) = v13;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  sub_1ADDD86D8(v7, v8);
  sub_1AE1DE048(inited, a3);
  swift_setDeallocating();
  return sub_1ADECDAB4(inited + 32);
}

void sub_1AE1DE048(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v6 = v2;
  swift_beginAccess();
  v8 = (a1 + 40);
  v53 = v2;
  while (1)
  {
    v9 = *(v6 + 16);
    if (!*(v9 + 16))
    {
      goto LABEL_4;
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    sub_1ADDD86D8(v10, *v8);

    v12 = sub_1ADDDE7CC(v10, v11);
    if (v13)
    {
      break;
    }

    sub_1ADDCC35C(v10, v11);

LABEL_4:
    v8 += 2;
    if (!--v5)
    {
      return;
    }
  }

  v58 = v10;
  v14 = *(*(v9 + 56) + 8 * v12);

  v15 = v14[2];
  v16 = v14[3];
  swift_beginAccess();
  v17 = sub_1ADDDE7CC(v15, v16);
  if (v18)
  {
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + 16);
    v65 = v21;
    *(v6 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6F03C();
      v21 = v65;
    }

    sub_1ADDCC35C(*(*(v21 + 48) + 16 * v19), *(*(v21 + 48) + 16 * v19 + 8));

    sub_1ADDEA654(v19, v21);
    *(v6 + 16) = v21;
  }

  swift_endAccess();
  v22 = v4;
  (*(*v14 + 96))(v64, v6, a2);
  if (v4)
  {
    sub_1ADDCC35C(v58, v11);

    return;
  }

  v23 = v64[0];
  v62 = v64[1];
  v24 = v64[2];
  v25 = v64[3];
  v26 = v14;
  v27 = v64[5];
  v60 = v64[4];
  v56 = v26[3];
  v57 = v26[2];
  swift_beginAccess();
  v59 = v24;
  v63 = v23;
  v61 = v25;
  if (!v24)
  {
    v40 = sub_1ADDDE7CC(v57, v56);
    v41 = 0;
    v28 = v60;
    if (v42)
    {
      v43 = v40;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v6 + 24);
      v65 = v45;
      *(v6 + 24) = 0x8000000000000000;
      if (!v44)
      {
        sub_1ADF706B8();
        v45 = v65;
      }

      sub_1ADDCC35C(*(*(v45 + 48) + 16 * v43), *(*(v45 + 48) + 16 * v43 + 8));

      sub_1ADF6DBD4(v43, v45);
      *(v6 + 24) = v45;
      v41 = 0;
      v28 = v60;
    }

    goto LABEL_28;
  }

  v55 = v11;

  v28 = v60;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v6 + 24);
  v30 = v65;
  *(v6 + 24) = 0x8000000000000000;
  v32 = sub_1ADDDE7CC(v57, v56);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (!__OFADD__(v33, v34))
  {
    v36 = v31;
    if (v30[3] >= v35)
    {
      v39 = v63;
      if ((v29 & 1) == 0)
      {
        sub_1ADF706B8();
        goto LABEL_17;
      }
    }

    else
    {
      sub_1ADE17954(v35, v29);
      v37 = sub_1ADDDE7CC(v57, v56);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_34;
      }

      v32 = v37;
LABEL_17:
      v39 = v63;
    }

    v46 = v65;
    if (v36)
    {
      v47 = (v65[7] + 48 * v32);
      *v47 = v39;
      v47[1] = v62;
      v41 = v59;
      v47[2] = v59;
      v47[3] = v61;
      v47[4] = v60;
      v47[5] = v27;
    }

    else
    {
      v65[(v32 >> 6) + 8] |= 1 << v32;
      v48 = (v46[6] + 16 * v32);
      *v48 = v57;
      v48[1] = v56;
      v49 = (v46[7] + 48 * v32);
      *v49 = v39;
      v49[1] = v62;
      v41 = v59;
      v49[2] = v59;
      v49[3] = v61;
      v49[4] = v60;
      v49[5] = v27;
      v50 = v46[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_33;
      }

      v46[2] = v52;
      sub_1ADDD86D8(v57, v56);
    }

    v6 = v53;
    *(v53 + 24) = v46;
    v11 = v55;
    v4 = v22;
LABEL_28:
    swift_endAccess();
    sub_1ADDCC35C(v58, v11);
    sub_1ADDDC21C(v63, v62, v41, v61, v28, v27);

    goto LABEL_4;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1AE1DE5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_beginAccess();
  v11 = *(a1 + 48);
  if (*(v11 + 16))
  {

    v12 = sub_1ADDDE7CC(a2, a3);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      *a4 = v14;
      return result;
    }
  }

  sub_1ADE42E40(v8, v9, v10);
  swift_allocError();
  *v16 = xmmword_1AE2592F0;
  *(v16 + 16) = 0;
  return swift_willThrow();
}

double sub_1AE1DE750@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v39 = *v6;
  v37 = *(v39 + 14);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1ADDD86D8(v17, v18);
  sub_1ADDD86D8(a3, a4);
  sub_1ADDCC35C(a3, a4);
  type metadata accessor for CRDecoder();
  swift_allocObject();

  v19 = v41;
  v20 = sub_1ADE64748(a1, a2, a5);
  if (!v19)
  {
    v41 = v13;
    v22 = v38;
    v23 = v37;
    (*(*(*(*(v39 + 15) + 16) + 8) + 8))(v20, v37);
    v39 = v16;
    inited = swift_initStackObject();
    v25 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v25;
    v26 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 256;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 16) = a5;
    *(inited + 24) = v25;

    sub_1ADE62FA4(a3, a4, &v40);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v35 = v40;
    v27 = v22;
    v28 = v41;
    v29 = v39;
    (*(v22 + 16))(v41, v39, v23);
    sub_1ADDD9FE4(v28, v23, &v40);
    v30 = v26;
    v31 = v40;
    v32 = MEMORY[0x1E69E7CC0];
    v41 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ADDD9ECC(v32);
    v34 = v36;
    *(v36 + 16) = v30;
    *(v34 + 24) = v30;
    sub_1ADDDA5BC(v32);
    sub_1ADDD9ECC(v32);
    (*(v27 + 8))(v29, v23);
    *v34 = v31;
    *(v34 + 8) = 0;

    swift_bridgeObjectRelease_n();
    result = *&v35;
    *(v34 + 16) = v35;
    *(v34 + 32) = v41;
    *(v34 + 40) = v33;
  }

  return result;
}

__int128 *sub_1AE1DEAC4(uint64_t a1, void *a2)
{
  v48 = type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  if (qword_1ED967F98 != -1)
  {
    swift_once();
  }

  v5 = off_1ED967FA0;
  v68 = *v2;
  v50 = v2;
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for CROrderedSetElement(255, v7, v6, v8);
  v11 = type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);

  v12 = v72;
  sub_1AE1650E8(a1, v69);
  if (v12)
  {
    goto LABEL_4;
  }

  v46 = v8;
  v47 = v6;
  v13 = v7;
  v7 = &v52;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = a1;
  v45 = 0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v15 = sub_1AE1D0514(v5);

    v5 = v15;
  }

  v63 = v69[4];
  v64 = v69[5];
  v65 = v70;
  v59 = v69[0];
  v60 = v69[1];
  v61 = v69[2];
  v62 = v69[3];
  swift_beginAccess();
  v67 = v5[24];
  v16 = *(v5 + 11);
  v66[4] = *(v5 + 10);
  v66[5] = v16;
  v17 = *(v5 + 7);
  v66[0] = *(v5 + 6);
  v66[1] = v17;
  v18 = *(v5 + 9);
  v66[2] = *(v5 + 8);
  v66[3] = v18;
  v19 = v60;
  *(v5 + 6) = v59;
  *(v5 + 7) = v19;
  v20 = v61;
  v21 = v62;
  v22 = v63;
  v23 = v64;
  v5[24] = v65;
  *(v5 + 10) = v22;
  *(v5 + 11) = v23;
  *(v5 + 8) = v20;
  *(v5 + 9) = v21;
  v24 = sub_1ADDCEDE0(v66, &qword_1EB5BCC28, &unk_1AE251820);
  v58 = v50[1];
  MEMORY[0x1EEE9AC00](v24);
  v43[8] = v13;
  v43[9] = v47;
  v43[10] = v46;
  v43[11] = v25;
  v26 = v72;
  v43[12] = v72;
  type metadata accessor for CRSet(0, v13, v47, v46);

  sub_1AE17F010(v26, sub_1AE1EA5A8, v71);
  if (v45)
  {
LABEL_4:
  }

  else
  {
    v45 = &v44;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v27 = sub_1AE1D0514(v5);

      v5 = v27;
    }

    v28 = v72;
    v54 = v71[2];
    v55 = v71[3];
    v56 = v71[4];
    v52 = v71[0];
    v53 = v71[1];
    swift_beginAccess();
    v29 = *(v5 + 2);
    v30 = *(v5 + 3);
    v31 = *(v5 + 5);
    v57[3] = *(v5 + 4);
    v57[4] = v31;
    v57[1] = v29;
    v57[2] = v30;
    v57[0] = *(v5 + 1);
    v32 = v56;
    *(v5 + 1) = v52;
    *(v5 + 4) = v55;
    *(v5 + 5) = v32;
    v33 = v54;
    *(v5 + 2) = v53;
    *(v5 + 3) = v33;
    sub_1ADDCEDE0(v57, &qword_1EB5BCC30, &qword_1AE2580D0);
    v51[0] = *v50;
    MEMORY[0x1EEE9AC00](v51[0]);
    v43[2] = v13;
    v43[3] = v47;
    v43[4] = v46;
    v43[5] = v28;

    v34 = sub_1AE165268(sub_1AE1EA5CC, v43, v11, &type metadata for Proto_Timestamp);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v35 = sub_1AE1D0514(v5);

      v5 = v35;
    }

    v7 = inited;
    swift_beginAccess();
    v5[25] = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v36 = sub_1AE1D0514(v5);

      v5 = v36;
    }

    swift_beginAccess();
    v5[26] = 0;
    *(v5 + 216) = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = swift_allocObject();
      v38 = *(v7 + 2);
      *(v37 + 16) = v38;
      sub_1ADE5215C(v38);

      v7 = v37;
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v5;
    v40 = v39 | 0x8000000000000000;
    v41 = *(v7 + 2);
    *(v7 + 2) = v40;
    sub_1ADE52174(v41);
  }

  return v7;
}

void (*sub_1AE1DF030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2, uint64_t a3)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1AE23E2DC();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1AE23D5CC();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_1AE1DF3FC(a2, a3, a4, v16);
  return sub_1AE1DF254;
}

void sub_1AE1DF254(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v5 = (*a1)[4];
  v4 = (*a1)[5];
  v7 = (*a1)[8];
  v6 = (*a1)[9];
  v8 = (*a1)[6];
  v11 = (*a1)[7];
  v9 = (*a1)[3];
  if (a2)
  {
    (*(v5 + 16))(v4, v8, v3[3]);
    swift_getWitnessTable();
    sub_1AE23DD8C();
    v10 = *(v5 + 8);
    v10(v4, v9);
    (*(v7 + 8))(v6, v11);
    v10(v8, v9);
  }

  else
  {
    swift_getWitnessTable();
    sub_1AE23DD8C();
    (*(v7 + 8))(v6, v11);
    (*(v5 + 8))(v8, v9);
  }

  free(v6);
  free(v8);
  free(v4);

  free(v3);
}

uint64_t sub_1AE1DF3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_1AE23D5CC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  sub_1AE23D41C();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_1AE23D46C();
  result = sub_1AE23CC1C();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_1AE23D42C();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_1AE23E2DC();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1DF8D8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    v4 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v6);
    return v4;
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1ADDCEDE0(&v6, &unk_1EB5BEB20, &qword_1AE24C510);
    return 63;
  }
}

BOOL sub_1AE1DFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (sub_1AE23CCBC())
  {
    v10 = *(type metadata accessor for CROrderedSetElement(0, a3, a4, a5) + 44);
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = type metadata accessor for Timestamp(0);
    if (*(v11 + *(v13 + 20)) == *(v12 + *(v13 + 20)))
    {
      v14 = type metadata accessor for Replica(0);
      if (*(v11 + *(v14 + 20)) == *(v12 + *(v14 + 20)) && (sub_1AE23BF8C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AE1DFAE8(uint64_t a1, uint64_t a2)
{
  sub_1AE23CBCC();
  v4 = v2 + *(a2 + 44);
  sub_1AE23BFAC();
  v5 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v4 + *(v5 + 20)));
  v6 = type metadata accessor for Timestamp(0);
  return MEMORY[0x1B26FCBD0](*(v4 + *(v6 + 20)));
}

uint64_t sub_1AE1DFB60(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE1DFAE8(v3, a1);
  return sub_1AE23E34C();
}

uint64_t sub_1AE1DFBB0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE1DFAE8(v4, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1AE1DFC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v8 = *(type metadata accessor for CROrderedSet.DeduplicatedInfo(0, a3, a4, a5) + 44);
  v9 = sub_1AE23C12C();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a2, v9);
}

uint64_t CROrderedSet.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v6 + 16))
  {
    MEMORY[0x1EEE9AC00](v6);
    v11 = a2[2];
    v12 = a2[3];
    v22[-4] = v11;
    v22[-3] = v12;
    v13 = a2[4];
    v22[-2] = v13;
    v22[-1] = v14;
    v22[0] = CROrderedSet.map<A>(_:)(sub_1ADF573E4, &v22[-6], a2, v11);
    v15 = sub_1AE23D11C();
    swift_getWitnessTable();
    v16 = v22;
    v17 = a3;
    v18 = v11;
    v19 = v15;
  }

  else
  {
    (*(v7 + 16))(v10, v3, a2, v8);
    v20 = a2[2];
    v12 = a2[3];
    v13 = a2[4];
    swift_getWitnessTable();
    v17 = a3;
    v16 = v10;
    v18 = v20;
    v19 = a2;
  }

  return CROrderedSet.init<A>(_:)(v16, v18, v19, v12, v13, v17);
}

uint64_t CROrderedSet.map<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45 = a1;
  v46 = a2;
  v6 = a3[2];
  v7 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v35 - v8;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = a3[3];
  v14 = a3[4];
  v51 = a3;
  v47 = v14;
  v48 = v13;
  v15 = type metadata accessor for CROrderedSetElement(0, v6, v13, v14);
  v16 = *(v15 - 8);
  v36 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v35 - v17;
  v55 = sub_1AE23C9DC();
  CROrderedSet.count.getter(a3);
  v44 = sub_1AE23D11C();
  sub_1AE23D02C();
  v50 = v4;
  v18 = sub_1ADDEF390(v51);
  if (sub_1AE23D0AC())
  {
    v19 = 0;
    v42 = (v39 + 2);
    v43 = (v16 + 16);
    v40 = (v39 + 6);
    v41 = (v16 + 8);
    v38 = v18;
    ++v39;
    v37 = v16;
    while (1)
    {
      v20 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v20)
      {
        (*(v16 + 16))(v52, v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v19, v15);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v36 != 8)
        {
          goto LABEL_17;
        }

        v54 = result;
        (*v43)(v52, &v54, v15);
        swift_unknownObjectRelease();
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      v51 = v21;
      v22 = *(v50 + 8);
      v23 = v52;
      (*v42)(v11, v52, v6);
      v24 = v15;
      (*v41)(v23, v15);
      v54 = v22;
      v25 = type metadata accessor for CRSet(0, v6, v48, v47);
      v26 = v6;
      v27 = v49;
      CRSet.subscript.getter(v11, v25, v49);
      result = (*v40)(v27, 1, v26);
      if (result == 1)
      {
        break;
      }

      v29 = v11;
      v30 = *v39;
      v31 = v29;
      (*v39)();
      v32 = v53;
      v45(v27);
      v53 = v32;
      if (v32)
      {

        return (v30)(v27, v26);
      }

      (v30)(v27, v26);
      sub_1AE23D0CC();
      v33 = v38;
      v34 = sub_1AE23D0AC();
      ++v19;
      v11 = v31;
      v18 = v33;
      v6 = v26;
      v15 = v24;
      v16 = v37;
      if (v51 == v34)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_13:

    return v55;
  }

  return result;
}

uint64_t CROrderedSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a7@<X8>)
{
  v35 = a4;
  v36 = a5;
  v31 = a1;
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v27 - v20;
  v32 = a7;
  CROrderedSet.init()(a2, v35, v36, a7);
  v29 = v15;
  (*(v15 + 16))(v18, v31, a3);
  sub_1AE23CE7C();
  v30 = a3;
  swift_getAssociatedConformanceWitness();
  v33 = v21;
  v34 = AssociatedTypeWitness;
  sub_1AE23D80C();
  v22 = v27;
  v23 = *(v27 + 48);
  if (v23(v14, 1, a2) != 1)
  {
    v24 = *(v22 + 32);
    do
    {
      v24(v11, v14, a2);
      v25 = type metadata accessor for CROrderedSet(0, a2, v35, v36);
      CROrderedSet.append(_:)(v11, v25);
      (*(v22 + 8))(v11, a2);
      sub_1AE23D80C();
    }

    while (v23(v14, 1, a2) != 1);
  }

  (*(v29 + 8))(v31, v30);
  return (*(v28 + 8))(v33, v34);
}

uint64_t CROrderedSet.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CROrderedSet.copy(renamingReferences:)(&v7, a2, a3);
}

void CROrderedSet.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  CROrderedSet.init()(a2, a3, a4, a5);
}

uint64_t CROrderedSet.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a8@<X8>)
{
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  CROrderedSet.init<A>(_:)(v18, a3, a4, a5, a6, a8);

  return (*(v15 + 8))(a2, a4);
}

void CROrderedSet.merge(_:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38[0] = *a1;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = type metadata accessor for CROrderedSetElement(255, v7, v8, v9);
  v12 = type metadata accessor for CRSequence(0, v10, &off_1F23C8BA0, v11);

  sub_1AE1687B8(v38, 1, v12);
  v14 = v13;

  v39 = a1[1];
  v15 = type metadata accessor for CRSet(0, v7, v8, v9);
  v16 = sub_1ADFAEA70();
  if (v16 == sub_1ADFAEA70())
  {
    v28 = qword_1ED9670C0;

    if (v28 != -1)
    {
      swift_once();
    }

    v24 = word_1ED96F220;
    v25 = HIBYTE(word_1ED96F220);
    v26 = byte_1ED96F222;
LABEL_26:

    if (v14 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  WitnessTable = swift_getWitnessTable();
  v18 = sub_1AE1755D4(&v39, v15, WitnessTable);
  v19 = sub_1ADFAEA70();
  swift_beginAccess();
  v21 = *(v19 + 24);
  v20 = *(v19 + 32);
  swift_beginAccess();
  v22 = v18[3];
  v37 = 0;

  sub_1ADF6457C(v23, &v37, v20);
  sub_1ADF6457C(v22, &v37, v21);

  if (v37 == 1)
  {

    sub_1AE17A160(v30);
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v29 = &word_1EB5D750B;
    goto LABEL_25;
  }

  if (v37 == 2)
  {
    if (qword_1EB5B9908 != -1)
    {
      swift_once();
    }

    v29 = &word_1EB5D7508;
    goto LABEL_25;
  }

  if (v37 != 3)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v29 = &word_1ED96F220;
LABEL_25:
    v24 = *v29;
    v25 = *(v29 + 1);
    v26 = *(v29 + 2);

    goto LABEL_26;
  }

  sub_1ADE0FE78(v15);
  sub_1ADFAEA70();

  sub_1AE16F8E0(v18, &v37);

  v24 = v37;
  v25 = BYTE1(v37);
  v26 = BYTE2(v37);
  if (v14 == 1)
  {
LABEL_6:
    if (qword_1EB5B9908 != -1)
    {
      swift_once();
    }

    if (v24 != word_1EB5D7508 || v25 != HIBYTE(word_1EB5D7508) || ((v26 ^ byte_1EB5D750A) & 1) != 0)
    {
      sub_1ADDF210C(0, a2);
    }

    v27 = a3;
    goto LABEL_38;
  }

LABEL_27:
  if (v14 == 2)
  {
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    if (v24 == word_1EB5D750B && v25 == HIBYTE(word_1EB5D750B) && ((v26 ^ byte_1EB5D750D) & 1) == 0)
    {
      v31 = *(a2 - 1);
      (*(v31 + 8))(v4, a2);
      (*(v31 + 16))(v4, a1, a2);
    }

    else
    {
      sub_1ADDF210C(0, a2);
    }

    v27 = a3;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v32 = &word_1EB5D750B;
  }

  else
  {
    sub_1ADDF210C(0, a2);
    v27 = a3;
    if (v14 != 3)
    {
LABEL_38:
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v32 = &word_1ED96F220;
      goto LABEL_45;
    }

    if (qword_1EB5B9528 != -1)
    {
      swift_once();
    }

    v32 = &word_1EB5D74C0;
  }

LABEL_45:
  v33 = *(v32 + 2);
  LOWORD(v39) = *v32;
  BYTE2(v39) = v33;
  LOBYTE(v37) = v24;
  BYTE1(v37) = v25;
  BYTE2(v37) = v26;
  v34 = &v37;
  MergeResult.merge(_:)(v34);
  v35 = BYTE2(v39);
  *v27 = v39;
  *(v27 + 2) = v35;
}

uint64_t CROrderedSet.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v7 = a2[3];
  if (((*(*(v7 + 8) + 80))(v6) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = v2[1];
  v19 = a1[1];
  v20 = v8;
  v9 = a2[4];
  v10 = type metadata accessor for CRSet(0, v6, v7, v9);

  v11 = CRSet.newRefs(from:)(&v19, v10);

  v20 = v11;
  v12 = *v3;
  v18 = *a1;
  v19 = v12;
  v13 = type metadata accessor for CROrderedSetElement(255, v6, v7, v9);
  v15 = type metadata accessor for CRSequence(0, v13, &off_1F23C8BA0, v14);

  v16 = CRSequence.newRefs(from:)(&v18, v15);

  sub_1AE00F014(v16);
  return v20;
}

void CROrderedSet.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for CROrderedSetElement(255, v3, v4, v5);
  v8 = type metadata accessor for CRSequence(0, v6, &off_1F23C8BA0, v7);
  CRSequence.finalizeTimestamps(_:)(a1, v8);
  v9 = type metadata accessor for CRSet(0, v3, v4, v5);
  CRSet.finalizeTimestamps(_:)(a1, v9);
}

uint64_t CROrderedSet.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_1ADE0FC48(v6, v6);
  v7 = *(v6 - 8);
  swift_allocObject();
  v8 = sub_1AE23CFFC();
  (*(v7 + 16))(v9, a1, v6);
  sub_1ADE0FCBC(v8, v6);
  v14 = v10;
  v11 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADDF7744(&v14, a2, 0, a3, v11, WitnessTable);
}

Swift::Void __swiftcall CROrderedSet.remove(at:)(Swift::Int at)
{
  v3 = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](at);
  v22 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v24 = *(v8 + 32);
  v25 = v9;
  v10 = type metadata accessor for CROrderedSetElement(0, v5, v9, v24);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v23 = sub_1AE23D7CC();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v20 - v15;
  v21 = v2;
  sub_1ADE10650(v3);
  v26 = *v2;
  v20[1] = type metadata accessor for CRSequence(0, v10, &off_1F23C8BA0, v17);
  CRSequence.subscript.getter(at);
  v18 = v22;
  (*(v6 + 16))(v22, v13, v5);
  (*(v11 + 8))(v13, v10);
  v19 = type metadata accessor for CRSet(0, v5, v25, v24);
  CRSet.remove(_:)(v18, v19, v16);
  (*(v6 + 8))(v18, v5);
  (*(v14 + 8))(v16, v23);
  CRSequence.remove(at:)(at);
}

uint64_t CROrderedSet.remove(atOffsets:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v56 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v56 - v7;
  v9 = a2[2];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = a2[4];
  v69 = a2[3];
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v13;
  v75 = type metadata accessor for CROrderedSetElement(0, v9, v69, v13);
  v14 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v56 - v15;
  v71 = v9;
  v66 = sub_1AE23D7CC();
  v16 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - v17;
  v74 = sub_1AE23BFFC();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v76 = v2;
  sub_1ADE10650(a2);
  v58 = a1;
  sub_1AE23C01C();
  v23 = *(v20 + 44);
  v24 = sub_1AE23C12C();
  v25 = sub_1AE1E9C30(&qword_1ED967148, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  ++v72;
  v62 = (v14 + 8);
  v63 = (v10 + 16);
  v60 = (v16 + 8);
  v61 = (v10 + 8);
  v64 = v23;
  while (1)
  {
    v26 = v73;
    sub_1AE23D46C();
    sub_1AE1E9C30(&qword_1ED967158, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v27 = v74;
    v28 = sub_1AE23CCBC();
    (*v72)(v26, v27);
    if (v28)
    {
      break;
    }

    v29 = sub_1AE23D51C();
    v31 = *v30;
    v29(v77, 0);
    sub_1AE23D47C();
    v32 = v75;
    v77[0] = *v76;
    v33 = v25;
    type metadata accessor for CRSequence(0, v75, &off_1F23C8BA0, v34);
    v35 = v22;
    v36 = v24;
    v37 = v67;
    CRSequence.subscript.getter(v31);
    v38 = v70;
    v39 = v71;
    (*v63)(v70, v37, v71);
    v40 = v37;
    v24 = v36;
    v22 = v35;
    v25 = v33;
    (*v62)(v40, v32);
    v41 = type metadata accessor for CRSet(0, v39, v69, v68);
    v42 = v65;
    CRSet.remove(_:)(v38, v41, v65);
    (*v61)(v38, v39);
    (*v60)(v42, v66);
  }

  sub_1ADDCEDE0(v22, &qword_1EB5BA490, &qword_1AE2514C0);
  v43 = v59;
  sub_1AE23C10C();
  v44 = sub_1AE23C0EC();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v8, v43, v44);
  v46 = *(v57 + 36);
  sub_1AE1E9C30(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  (*(v45 + 8))(v43, v44);
  v47 = v75;
  sub_1AE23D41C();
  if (*&v8[v46] != v77[0])
  {
    sub_1AE1E9C30(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
    do
    {
      sub_1AE23CBDC();
      v48 = sub_1AE23D51C();
      v50 = *v49;
      v51 = v49[1];
      v48(v77, 0);
      v53 = type metadata accessor for CRSequence(0, v47, &off_1F23C8BA0, v52);
      CRSequence.removeSubrange(_:)(v50, v51, v53, v54);
      sub_1AE23D41C();
    }

    while (*&v8[v46] != v77[0]);
  }

  return sub_1ADDCEDE0(v8, &qword_1EB5BB4C8, &unk_1AE24C640);
}

uint64_t sub_1AE1E1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v56 = *(a5 - 8);
  v57 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v67 = *(v17 + 32);
  v68 = v18;
  v69 = type metadata accessor for CROrderedSetElement(0, v12, v18, v67);
  v19 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v21 = &v54 - v20;
  v66 = v12;
  v22 = sub_1AE23D7CC();
  v54 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  v70 = v6;
  result = sub_1ADE10650(a4);
  v61 = a1;
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  v27 = v61;
  if (a2 < v61)
  {
    __break(1u);
  }

  else if (v61 < a2)
  {
    v65 = *v70;
    v28 = type metadata accessor for CRSequence(0, v69, &off_1F23C8BA0, v26);
    v63 = (v13 + 16);
    v64 = v28;
    v62 = (v19 + 8);
    v29 = (v13 + 8);
    v30 = (v54 + 8);
    v31 = v27;
    do
    {
      v32 = v31 + 1;
      v71 = v65;
      CRSequence.subscript.getter(v31);
      v33 = v22;
      v34 = v66;
      (*v63)(v16, v21, v66);
      (*v62)(v21, v69);
      v35 = type metadata accessor for CRSet(0, v34, v68, v67);
      CRSet.remove(_:)(v16, v35, v24);
      v36 = v34;
      v22 = v33;
      (*v29)(v16, v36);
      (*v30)(v24, v33);
      v31 = v32;
    }

    while (a2 != v32);
LABEL_6:
    v55 = a2;
    v37 = v59;
    v38 = (*(v56 + 16))(v58, v57, v59);
    MEMORY[0x1EEE9AC00](v38);
    v40 = v66;
    v39 = v67;
    *(&v54 - 6) = v66;
    *(&v54 - 5) = v37;
    v41 = v68;
    *(&v54 - 4) = v68;
    *(&v54 - 3) = v39;
    v42 = v60;
    v43 = v70;
    *(&v54 - 2) = v60;
    *(&v54 - 1) = v43;
    v44 = sub_1AE23CF1C();
    v65 = &v54;
    v71 = v44;
    MEMORY[0x1EEE9AC00](v44);
    *(&v54 - 6) = v40;
    *(&v54 - 5) = v37;
    *(&v54 - 4) = v41;
    *(&v54 - 3) = v39;
    *(&v54 - 2) = v42;
    *(&v54 - 1) = v43;
    v45 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v47 = v69;
    v49 = sub_1ADE08EB0(sub_1AE1EA610, (&v54 - 8), v45, v69, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v48);

    v71 = v49;
    v51 = type metadata accessor for CRSequence(0, v47, &off_1F23C8BA0, v50);
    v52 = sub_1AE23D11C();
    v53 = swift_getWitnessTable();
    CRSequence.replaceSubrange<A>(_:with:)(v61, v55, &v71, v51, v52, v53);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1E218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRSet(0, v8, v10, v9);
  v12 = CRSet.insert(_:)(v7, a1, v11);
  (*(v5 + 8))(v7, a3);
  return v12 & 1;
}

Swift::Void __swiftcall CROrderedSet.removeAll()()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for CRSet(0, v4, v5, v6);
  CRSet.removeAll(keepingCapacity:)(0);
  v7 = type metadata accessor for CROrderedSetElement(255, v4, v5, v6);
  type metadata accessor for CRSequence(0, v7, &off_1F23C8BA0, v8);
  CRSequence.removeAll()();
  v9 = *(v3 + 12);
  v10 = type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v4, v5, v6);
  v11 = sub_1AE23D7CC();
  (*(*(v11 - 8) + 8))(v2 + v9, v11);
  v12 = *(*(v10 - 8) + 56);

  v12(v2 + v9, 1, 1, v10);
}

uint64_t CROrderedSet.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, void *a3)
{
  v45 = a1;
  v46 = a2;
  v5 = *(a3[2] - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = a3[4];
  v47 = v10;
  v11 = type metadata accessor for CROrderedSetElement(255, v10, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = sub_1AE23D7CC();
  v13 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = sub_1AE23C12C();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C11C();
  v37 = a3;
  v38 = v3;
  v53 = sub_1ADDEF390(a3);
  v20 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v54, v20, WitnessTable);

  v53 = v54;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v22 = sub_1AE23DC8C();
  v23 = (v13 + 32);
  v48 = TupleTypeMetadata2 - 8;
  v49 = v22;
  v24 = (v5 + 16);
  v42 = v11 - 8;
  v43 = v11;
  v25 = (v5 + 8);
  while (1)
  {
    v26 = v50;
    sub_1AE23DC7C();
    (*v23)(v17, v26, v51);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {

      v34 = v41;
      CROrderedSet.remove(atOffsets:)(v41, v37);
      return (*(v39 + 8))(v34, v40);
    }

    v27 = TupleTypeMetadata2;
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v44;
    v30 = v47;
    (*v24)(v44, &v17[v28], v47);
    (*(*(v43 - 8) + 8))(&v17[v28]);
    v31 = v52;
    v32 = v45(v29);
    v52 = v31;
    if (v31)
    {
      break;
    }

    v33 = v32;
    (*v25)(v29, v30);
    TupleTypeMetadata2 = v27;
    if (v33)
    {
      sub_1AE23C08C();
    }
  }

  (*v25)(v29, v30);

  return (*(v39 + 8))(v41, v40);
}

uint64_t CROrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v6 = a2[2];
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v15 = a2[4];
  v16 = type metadata accessor for CRSet(0, v6, v14, v15);
  v33 = a1;
  v34 = v3;
  CRSet.remove(_:)(a1, v16, v10);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v17 = 1;
    v18 = v35;
  }

  else
  {
    v19 = v32;
    v31 = *(v11 + 32);
    v31(v32, v10, v6);
    v20 = v34;
    v21 = sub_1ADE10650(a2);
    v30 = &v30;
    v36 = *v20;
    MEMORY[0x1EEE9AC00](v21);
    *(&v30 - 4) = v6;
    *(&v30 - 3) = v14;
    v22 = v33;
    *(&v30 - 2) = v15;
    *(&v30 - 1) = v22;
    v23 = type metadata accessor for CROrderedSetElement(255, v6, v14, v15);
    v25 = type metadata accessor for CRSequence(0, v23, &off_1F23C8BA0, v24);

    swift_getWitnessTable();
    v26 = sub_1AE1644B0(sub_1AE1E9C78, (&v30 - 6), v25);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      CRSequence.remove(at:)(v26);
    }

    v18 = v35;
    v31(v35, v19, v6);
    v17 = 0;
  }

  return (*(v11 + 56))(v18, v17, 1, v6);
}

Swift::Void __swiftcall CROrderedSet.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[2];
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](from);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = v5[3];
  v39 = v5[4];
  v40 = v15;
  v16 = type metadata accessor for CROrderedSetElement(0, v8, v15, v39);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  if (from < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v20;
  v38 = v10;
  v23 = CROrderedSet.count.getter(v5);
  if (to < 0 || v23 <= from)
  {
    goto LABEL_14;
  }

  if (CROrderedSet.count.getter(v5) < to)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (from == to || to - 1 == from)
  {
    return;
  }

  v36 = to - 1;
  sub_1ADE10650(v5);
  v44 = *v4;
  v25 = type metadata accessor for CRSequence(0, v16, &off_1F23C8BA0, v24);
  CRSequence.subscript.getter(from);
  CRSequence.remove(at:)(from);
  v44 = *v4;
  sub_1ADE16998(v14);
  *&v14[*(type metadata accessor for Replica(0) + 20)] = 0;
  v26 = *(v43 + 20);
  v27 = *&v22[*(v16 + 44) + v26];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (from >= to)
  {
    v30 = to;
  }

  else
  {
    v30 = v36;
  }

  *&v14[v26] = v29;
  v31 = v38;
  (*(v42 + 16))(v38, v22, v8);
  v32 = v41;
  sub_1ADDF8030(v14, v41, type metadata accessor for Timestamp);
  sub_1ADE0C8B4(v31, v32, v8, v40, v39, v18);
  CRSequence.insert(_:at:)(v18, v30, v25, v33);
  v34 = *(v37 + 8);
  v34(v18, v16);
  sub_1AE017AB8(v14);
  v34(v22, v16);
}

Swift::Void __swiftcall CROrderedSet.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v6 = CROrderedSet.count.getter(v2);
  if (a2 < 0 || v6 <= a1)
  {
    goto LABEL_13;
  }

  if (CROrderedSet.count.getter(v3) <= a2)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (a2 >= a1)
  {
    v7 = a1;
    if (a1 >= a2)
    {
      return;
    }
  }

  else
  {
    v7 = a2;
    a2 = a1;
  }

  CROrderedSet.move(from:to:)(a2, v7 + 1);

  CROrderedSet.move(from:to:)(v7, a2 + 1);
}

uint64_t CROrderedSet.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t *a3)
{
  sub_1AE1E9CB4(a1, a2, a3);
  v5 = *(*(a3[2] - 8) + 8);

  return v5(a1);
}

void (*CROrderedSet.subscript.modify(void *a1, uint64_t a2, uint64_t *a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = a3[2];
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CROrderedSet.subscript.getter(a2, a3, v13);
  return sub_1AE1E3148;
}

void sub_1AE1E3148(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1AE1E9CB4(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1AE1E9CB4((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CROrderedSet.index(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v4 = *(*(a3 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_1AE23D7CC();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1AE23DC9C();
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1B26FB780](a3, WitnessTable, v15);
  sub_1AE23DC6C();
  v16 = sub_1AE23DC8C();
  v33 = (v8 + 32);
  v34 = v16;
  v32 = TupleTypeMetadata2 - 8;
  v27 = (v4 + 32);
  v17 = (v4 + 8);
  while (1)
  {
    v18 = v35;
    sub_1AE23DC7C();
    (*v33)(v12, v18, v36);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v19 = *v12;
    v20 = TupleTypeMetadata2;
    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v28;
    v23 = v29;
    (*v27)(v28, &v12[v21], v29);
    v24 = v37;
    v25 = v30(v22);
    (*v17)(v22, v23);
    v37 = v24;
    if (!v24)
    {
      TupleTypeMetadata2 = v20;
      if ((v25 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v19 = 0;
LABEL_7:

  return v19;
}

void CROrderedSet.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CROrderedSet.hasDelta(from:)(v3, v11))
  {
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(a1, a2, WitnessTable, v10);
    CROrderedSet.actionUndoingDifference(from:)(a1, a2, a3);
    (*(v8 + 8))(v10, a2);
  }

  else
  {
    v13 = *(v3 + 8);
    v24 = a1[1];
    v25 = v13;
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = type metadata accessor for CRSet(0, v14, v15, v16);

    CRSet.actionUndoingDifference(from:)(&v24, v17, v26);

    v18 = v26[0];
    v19 = v26[1];
    v20 = *v4;
    v24 = *a1;
    v25 = v20;
    v21 = type metadata accessor for CROrderedSetElement(255, v14, v15, v16);
    type metadata accessor for CRSequence(0, v21, &off_1F23C8BA0, v22);

    CRSequence.actionUndoingDifference(from:)(&v24, v26);

    v23 = v26[0];
    if (v18 | v26[0])
    {
      *a3 = v18;
      a3[1] = v19;
      a3[2] = v23;
    }

    else
    {
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 1;
    }
  }
}

void CROrderedSet.apply(_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v14 = v5;
    sub_1ADF5C694(v2, v4, v5);
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = type metadata accessor for CROrderedSetElement(255, v6, v7, v8);
    v11 = type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);
    v12 = v5;
    LOBYTE(v11) = sub_1AE16501C(&v14, v11);

    if (v11)
    {
      v14 = v2;
      v15 = v4;
      sub_1ADE42C78(v2, v4);
      v13 = type metadata accessor for CRSet(0, v6, v7, v8);
      CRSet.apply(_:)(&v14, v13);
      sub_1ADE42CB8(v14, v15);
      sub_1ADDF210C(1, a2);
    }

    sub_1ADE24060(v2, v4, v5);
  }
}

uint64_t CROrderedSet.hasDelta(from:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *a1;
  v16 = *a1;
  v17 = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for CROrderedSetElement(255, v6, v7, v8);
  type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);
  v11 = sub_1AE164BF0(&v16);

  v12 = v2[1];
  if (v11 && v12 == *(a1 + 8))
  {
    v13 = 0;
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = v12;
    type metadata accessor for CRSet(0, v6, v7, v8);

    v14 = CRSet.hasDelta(from:)(&v16);

    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v16 = v5;
      v17 = v4;

      v13 = CRSequence.hasDelta(from:)(&v16);
    }
  }

  return v13 & 1;
}

void CROrderedSet.delta(_:from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = v4[1];
  v25 = a2[1];
  v26 = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = type metadata accessor for CRSet(0, v10, v11, v12);

  CRSet.delta(_:from:)(a1, &v25, v13, v27);

  v23 = v27[1];
  v24 = v27[0];
  v14 = v28;
  v15 = v29;
  v16 = *v5;
  v25 = *a2;
  v26 = v16;
  v17 = type metadata accessor for CROrderedSetElement(255, v10, v11, v12);
  v19 = type metadata accessor for CRSequence(0, v17, &off_1F23C8BA0, v18);

  CRSequence.delta(_:from:)(a1, &v25, v19, v27);

  v20 = v24;
  v21 = *&v27[0];
  if (v24 | *&v27[0])
  {
    v22 = v23;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v21 = 0;
    v20 = xmmword_1AE241280;
    v22 = 0uLL;
  }

  *a4 = v20;
  *(a4 + 16) = v22;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  *(a4 + 48) = v21;
}

BOOL CROrderedSet.canMerge(delta:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 48);
  result = 0;
  if (!*a1 || (v7 = v2[1], v17 = *(a1 + 40), v18 = v7, v14 = v5, v8 = *(a1 + 24), v15 = *(a1 + 8), v16 = v8, type metadata accessor for CRSet(0, a2[2], a2[3], a2[4]), , LOBYTE(v7) = CRSet.canMerge(delta:)(&v14), , (v7 & 1) != 0))
  {
    if (!v6)
    {
      return 1;
    }

    v14 = *v3;
    v18 = v6;
    v9 = type metadata accessor for CROrderedSetElement(255, a2[2], a2[3], a2[4]);
    type metadata accessor for CRSequence(0, v9, &off_1F23C8BA0, v10);
    v11 = v6;

    v12 = CRSequence.canMerge(delta:)(&v18);

    if (v12)
    {
      return 1;
    }
  }

  return result;
}

BOOL CROrderedSet.merge(delta:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v18 = *a1;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v9;
  v10 = CROrderedSet.canMerge(delta:)(&v18, a2);
  if (v10)
  {
    if (v3)
    {
      v18 = v3;
      v19 = v4;
      v20 = v5;
      v21 = v6;
      v22 = v8;
      v23 = v7;
      v11 = type metadata accessor for CRSet(0, a2[2], a2[3], a2[4]);
      CRSet.merge(delta:)(&v18, v11);
    }

    if (v9)
    {
      v18 = v9;
      v12 = type metadata accessor for CROrderedSetElement(255, a2[2], a2[3], a2[4]);
      v14 = type metadata accessor for CRSequence(0, v12, &off_1F23C8BA0, v13);
      CRSequence.merge(delta:)(&v18, v14, v15, v16);
    }

    sub_1ADDF210C(0, a2);
  }

  return v10;
}

uint64_t CROrderedSet.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((CROrderedSet.hasDelta(from:)(v4, v12) & 1) == 0)
  {
    return sub_1AE1E465C(v4, a2, a3, a4);
  }

  WitnessTable = swift_getWitnessTable();
  CRDT.merging(_:)(a1, a3, WitnessTable, v11);
  sub_1AE1E465C(v11, a2, a3, a4);
  return (*(v9 + 8))(v11, a3);
}

double CROrderedSet.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];

    sub_1ADE6C150(v3, v7, v8, v9);
  }

  return result;
}

uint64_t static CROrderedSet.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];
  v15 = *(a2 + 8);
  v16 = v10;

  v11 = static CRSet.== infix(_:_:)(&v16, &v15);

  if (v11)
  {
    v12 = *a1;
    v15 = *a2;
    v16 = v12;
    type metadata accessor for CROrderedSetElement(0, a3, a4, a5);

    v13 = static CRSequence.== infix(_:_:)(&v16, &v15);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void CROrderedSet.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *(a3 - 1);
  (*(v11 + 16))(a4, v6);
  sub_1AE1E426C(a1, a2, a3);
  if (v5)
  {
    (*(v11 + 8))(a4, a3);
  }
}

void sub_1AE1E426C(uint64_t (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  sub_1ADE10650(a3);
  v19[9] = *(v3 + 8);
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = type metadata accessor for CRSet(0, v10, v11, v12);

  CRSet.filter(_:)(a1, a2, v13, &v20);

  if (!v5)
  {
    v14 = v20;

    *(v6 + 8) = v14;
    MEMORY[0x1EEE9AC00](v15);
    v19[2] = v10;
    v19[3] = v11;
    v19[4] = v12;
    v19[5] = a1;
    v19[6] = a2;
    v16 = type metadata accessor for CROrderedSetElement(255, v10, v11, v12);
    v18 = type metadata accessor for CRSequence(0, v16, &off_1F23C8BA0, v17);
    sub_1AE1690D8(sub_1AE1EA57C, v19, v18);
  }
}

uint64_t CROrderedSet.ObservableDifference.removed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedSet.ObservableDifference.added.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedSet.ObservableDifference.subscript.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    swift_getAssociatedTypeWitness();
    result = sub_1AE23CA7C();
    if (result > v3)
    {
      return sub_1AE23CB7C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1E4574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v12 = type metadata accessor for CROrderedSet.ObservableDifference(0, a5, a6, a7);
  v13 = v12[11];
  v14 = sub_1AE23C12C();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), &a8[v13], a2, v14);
  *&a8[v12[12]] = a3;
  v15 = &a8[v12[13]];

  return v17(v15, a4, v14);
}

uint64_t sub_1AE1E465C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v322 = a1;
  v303 = a4;
  v8 = a3[2];
  v9 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v325 = v296 - v13;
  v14 = a3[3];
  v315 = *(v14 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v307 = sub_1AE23D7CC();
  v300 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v306 = v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v313 = v296 - v18;
  v318 = AssociatedTypeWitness;
  v299 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v305 = v296 - v20;
  v354 = a3;
  v21 = a3[4];
  v22 = type metadata accessor for CROrderedSetElement(255, v8, v14, v21);
  v23 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v316 = v296 - v24;
  v348 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v314 = v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v326 = v296 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v352 = v296 - v30;
  v329 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v349 = v296 - v33;
  v304 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v324 = v296 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v333 = v296 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v339 = v296 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v296 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v350 = v296 - v44;
  v353 = v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v345 = sub_1AE23D7CC();
  *&v343 = *(v345 - 1);
  MEMORY[0x1EEE9AC00](v345);
  v298 = v296 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v334 = v296 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v347 = v296 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = (v296 - v51);
  v317 = v14;
  v356 = v21;
  v355 = type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v8, v14, v21);
  v53 = sub_1AE23D7CC();
  v351 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v342 = v296 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v296 - v56;
  v309 = sub_1AE23C12C();
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v302 = v296 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v301 = v296 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v330 = v296 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v332 = v296 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v336 = v296 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v337 = v296 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v341 = v296 - v70;
  v73.n128_f64[0] = MEMORY[0x1EEE9AC00](v71);
  v335 = v296 - v74;
  v319 = a2;
  if (!*(a2 + 24))
  {
    v369 = *v5;
    v359 = *v322;
    type metadata accessor for CRSequence(0, v353, &off_1F23C8BA0, v72);
    LODWORD(v340) = sub_1AE164BF0(&v359);

    if ((v340 & 1) != 0 && v5[1] == v322[1])
    {
      v288 = type metadata accessor for CROrderedSet.ObservableDifference(0, v8, v317, v356);
      v289 = *(*(v288 - 8) + 56);
      v290 = v288;
      v291 = v303;

      return v289(v291, 1, 1, v290);
    }
  }

  v311 = v11;
  v375 = *v5;
  v75 = *(v354 + 12);
  v76 = v351;
  v77 = *(v351 + 16);
  v312 = v5;
  v340 = v77;
  v77(v57, v5 + v75, v53, v73);
  v78 = *(v355 - 8);
  v338 = *(v78 + 48);
  v79 = (v338)(v57, 1);
  v331 = v78;
  *&v346 = v53;
  if (v79 == 1)
  {
    v80 = *(v76 + 8);

    v80(v57, v53);
    v81 = v353;
  }

  else
  {
    (*(v308 + 16))(v341, &v57[*(v355 + 44)], v309);
    v82 = *(v78 + 8);

    v82(v57, v355);
    v83 = v308;
    v84 = v335;
    v85 = v309;
    (*(v308 + 32))(v335, v341, v309);
    v81 = v353;
    v87 = type metadata accessor for CRSequence(0, v353, &off_1F23C8BA0, v86);
    sub_1AE168474(v84, v87);
    (*(v83 + 8))(v84, v85);
  }

  v88 = v342;
  v374 = *v322;
  (v340)(v342, v322 + *(v354 + 12), v346);
  v89 = (v338)(v88, 1, v355);
  v90 = v345;
  if (v89 == 1)
  {
    v91 = v88;
    v92 = *(v351 + 8);

    v92(v91, v346);
  }

  else
  {
    v94 = v336;
    (*(v308 + 16))(v336, &v88[*(v355 + 44)], v309);
    v95 = *(v331 + 8);

    v95(v88, v355);
    v96 = v308;
    v97 = v337;
    v98 = v94;
    v99 = v309;
    (*(v308 + 32))(v337, v98, v309);
    v101 = type metadata accessor for CRSequence(0, v81, &off_1F23C8BA0, v100);
    sub_1AE168474(v97, v101);
    (*(v96 + 8))(v97, v99);
  }

  v359 = v374;
  v358 = v375;
  v102 = type metadata accessor for CRSequence(0, v81, &off_1F23C8BA0, v93);

  v351 = v102;
  CRSequence.observableDifference(from:with:)(&v358, v102, &v369);

  v103 = v347;
  if (v369)
  {
    v328 = v369;
  }

  else
  {
    type metadata accessor for _NSRange(255);
    type metadata accessor for CRSequenceStorage(255, v81, &off_1F23C8BA0, v104);
    sub_1AE23D7CC();
    swift_getTupleTypeMetadata3();
    v328 = sub_1AE23D05C();
  }

  v373 = sub_1AE23C9CC();
  v372 = sub_1AE23C9CC();
  v369 = v375;

  v105 = v351;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v359, v105, WitnessTable);

  v358 = v359;
  v296[1] = sub_1AE23DC9C();
  sub_1AE23DC6C();
  v297 = WitnessTable;
  v107 = sub_1AE23DC8C();
  v108 = (v343 + 32);
  v109 = TupleTypeMetadata2;
  v355 = v304 + 16;
  v354 = (v348 + 8);
  v331 = v107;
  while (1)
  {
    sub_1AE23DC7C();
    v110 = *v108;
    (*v108)(v52, v103, v90);
    v111 = *(v109 - 1);
    v112 = *(v111 + 48);
    v113 = (v111 + 48);
    if (v112(v52, 1, v109) == 1)
    {
      break;
    }

    v114 = *v52;
    v115 = v109[12];
    (*v355)(v350, v52 + v115, v8);
    (*v354)(v52 + v115, v81);
    v359 = v114;
    v103 = v347;
    v360 = 0;
    sub_1AE23CB1C();
    v90 = v345;
    sub_1AE23CB8C();
  }

  v341 = v110;

  sub_1AE23C11C();
  sub_1AE23C11C();
  type metadata accessor for _NSRange(255);
  type metadata accessor for CRSequenceStorage(255, v81, &off_1F23C8BA0, v116);
  sub_1AE23D7CC();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v118 = v328;
  if (sub_1AE23D0AC() < 1)
  {

    v339 = MEMORY[0x1E69E7CC0];
    v197 = v354;
    v198 = v316;
    goto LABEL_159;
  }

  v337 = v113;
  v340 = v112;
  v368 = sub_1AE23C9EC();
  v365 = sub_1AE23C9EC();

  v119 = sub_1AE23D0AC();
  v120 = v350;
  v342 = v108;
  v327 = TupleTypeMetadata3;
  if (!v119)
  {
LABEL_43:

    v364 = sub_1AE23C9CC();
    v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCC20, &qword_1AE251818);
    v363 = sub_1AE23C9CC();
    v148 = sub_1AE23D0AC();
    v149 = v334;
    if (v148)
    {
      v335 = 0;
      v150 = 0;
      v151 = 0;
      v310 = v118 + 32;
      v352 = (v304 + 8);
      v152 = MEMORY[0x1E69E7CC0];
      v42 = v333;
      while (1)
      {
        v153 = sub_1AE23D08C();
        result = sub_1AE23D00C();
        if ((v153 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(v151, 1))
        {
          goto LABEL_209;
        }

        v154 = (v310 + 32 * v151);
        v155 = *v154;
        v156 = v154[1];
        v157 = &v156[*v154];
        if (__OFADD__(*v154, v156))
        {
          goto LABEL_210;
        }

        if (v157 < v155)
        {
          goto LABEL_211;
        }

        *&v346 = v152;
        v159 = v154[2];
        v158 = v154[3];
        v336 = v155;
        v320 = v151 + 1;
        v321 = v159;
        v323 = v158;
        if (v155 != v157)
        {
          if (v155 >= v157)
          {
            goto LABEL_218;
          }

          *&v343 = v375;
          v338 = v368;
          v184 = v158;
          v185 = v336;
          while (1)
          {
            v186 = &v335[v185];
            if (__OFADD__(v185, v335))
            {
              break;
            }

            v369 = v343;
            v187 = v349;
            CRSequence.subscript.getter(&v335[v185]);
            v188 = v81;
            v189 = *v355;
            v190 = v8;
            v191 = v339;
            (*v355)(v339, v187, v190);
            (*v354)(v187, v188);
            if (sub_1AE23D37C())
            {
              v192 = &v336[v150];
              if (__OFADD__(v150, v336))
              {
                goto LABEL_197;
              }

              v193 = v191;
              v8 = v190;
              sub_1AE23CB7C();
              if (v370)
              {
                v189(v350, v193, v190);
                v369 = v186;
                v370 = v192;
                v371 = 0;
                sub_1AE23CB1C();
                sub_1AE23CB8C();
                result = (*v352)(v193, v190);
                v42 = v333;
              }

              else
              {
                v194 = v369;
                v195 = v346;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v195 = sub_1ADF79A2C(v195);
                }

                v42 = v333;
                if ((v194 & 0x8000000000000000) != 0)
                {
                  goto LABEL_199;
                }

                if (v194 >= *(v195 + 2))
                {
                  goto LABEL_200;
                }

                v196 = &v195[32 * v194];
                *(v196 + 5) = v192;
                result = (*v352)(v339, v190);
                *&v346 = v195;
                if (v194 >= *(v195 + 2))
                {
                  goto LABEL_201;
                }

                *(v196 + 4) = v186;
                v8 = v190;
              }

              v146 = __OFADD__(v150++, 1);
              v81 = v353;
              v149 = v334;
              if (v146)
              {
                goto LABEL_198;
              }
            }

            else
            {
              sub_1AE23C08C();
              result = (*v352)(v191, v190);
              v81 = v353;
              v42 = v333;
              v8 = v190;
              v149 = v334;
            }

            ++v185;
            if (!--v156)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        result = v158;
LABEL_51:
        v160 = v323;
        if (v323)
        {
          v369 = sub_1AE16A958();
          v161 = sub_1AE23D11C();
          v323 = v160;
          v162 = swift_getWitnessTable();
          MEMORY[0x1B26FB780](&v359, v161, v162);
          v358 = v359;
          sub_1AE23DC9C();
          sub_1AE23DC6C();
          v338 = sub_1AE23DC8C();
          v163 = v336;
          while (1)
          {
            v165 = v347;
            sub_1AE23DC7C();
            (v341)(v149, v165, v345);
            v166 = TupleTypeMetadata2;
            if ((v340)(v149, 1, TupleTypeMetadata2) == 1)
            {
              break;
            }

            v167 = *v149;
            v168 = v166[12];
            v169 = *v355;
            (*v355)(v42, &v149[v168], v8);
            (*v354)(&v149[v168], v81);
            if (sub_1AE23D37C())
            {
              v170 = &v163[v150];
              v171 = v346;
              if (__OFADD__(v163, v150))
              {
                goto LABEL_192;
              }

              v172 = &v170[v167];
              if (__OFADD__(v170, v167))
              {
                goto LABEL_194;
              }

              v169(v350, v42, v8);
              v359 = *(v171 + 2);
              v360 = 0;
              v173 = v356;
              sub_1AE23CB1C();
              sub_1AE23CB8C();
              v174 = v363;
              v175 = *(v363 + 16);
              *&v176 = -1;
              *(&v176 + 1) = -1;
              v343 = v176;
              if (v175)
              {
                v177 = sub_1ADDFFB6C(v42, v8, v173);
                v163 = v336;
                if (v178)
                {
                  v343 = *(*(v174 + 56) + 16 * v177);
                }
              }

              else
              {
                v163 = v336;
              }

              v146 = __OFADD__(v163, v167);
              v179 = &v163[v167];
              if (v146)
              {
                goto LABEL_196;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v171 = sub_1ADE55D60(0, *(v171 + 2) + 1, 1, v171);
              }

              v181 = *(v171 + 2);
              v180 = *(v171 + 3);
              if (v181 >= v180 >> 1)
              {
                v171 = sub_1ADE55D60((v180 > 1), v181 + 1, 1, v171);
              }

              (*v352)(v42, v8);
              *(v171 + 2) = v181 + 1;
              *&v346 = v171;
              v164 = &v171[32 * v181];
              *(v164 + 2) = v343;
              *(v164 + 6) = v172;
              *(v164 + 7) = v179;
              v81 = v353;
              v146 = __OFSUB__(v150--, 1);
              if (v146)
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (__OFADD__(v167, v163))
              {
                goto LABEL_193;
              }

              sub_1AE23C08C();
              (*v352)(v42, v8);
              v146 = __OFSUB__(v150--, 1);
              if (v146)
              {
                goto LABEL_185;
              }
            }
          }

          v182 = v323;
        }

        v152 = v346;
        v146 = __OFSUB__(v335, v321);
        v335 -= v321;
        if (v146)
        {
          goto LABEL_212;
        }

        v183 = sub_1AE23D0AC();
        v151 = v320;
        if (v320 == v183)
        {
          goto LABEL_95;
        }
      }

LABEL_208:
      result = sub_1AE23DAAC();
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v152 = MEMORY[0x1E69E7CC0];
LABEL_95:

    v361 = MEMORY[0x1E69E7CC0];
    v362 = MEMORY[0x1E69E7CC0];
    *&v346 = *(v152 + 16);
    if (v346)
    {
      swift_beginAccess();
      swift_beginAccess();
      v199 = 0;
      v200 = v152;
      v201 = *(v152 + 16);
      v202 = MEMORY[0x1E69E7CC0];
      result = MEMORY[0x1E69E7CC0];
      while (v199 < v201)
      {
        v203 = &v200[32 * v199];
        v204 = *(v203 + 5);
        v205 = *(result + 16);
        if (v205)
        {
          v206 = 0;
          v207 = (result + 32);
          v208 = *(result + 16);
          while (1)
          {
            v209 = *v207++;
            if (v204 >= v209)
            {
              v146 = __OFADD__(v206++, 1);
              if (v146)
              {
                goto LABEL_189;
              }
            }

            if (!--v208)
            {
              goto LABEL_106;
            }
          }
        }

        v206 = 0;
LABEL_106:
        v210 = *(v202 + 2);
        if (v210)
        {
          v211 = (v202 + 32);
          v212 = *(v202 + 2);
          do
          {
            v213 = *v211++;
            if (v213 < v204)
            {
              v146 = __OFSUB__(v206--, 1);
              if (v146)
              {
                goto LABEL_190;
              }
            }
          }

          while (--v212);
        }

        v214 = *(v203 + 6);
        v215 = 0;
        if (v205)
        {
          v216 = (result + 32);
          do
          {
            v217 = *v216++;
            if (v214 >= v217)
            {
              v146 = __OFADD__(v215++, 1);
              if (v146)
              {
                goto LABEL_191;
              }
            }
          }

          while (--v205);
        }

        if (v210)
        {
          v218 = (v202 + 32);
          do
          {
            v219 = *v218++;
            if (v219 < v214)
            {
              v146 = __OFSUB__(v215--, 1);
              if (v146)
              {
                goto LABEL_195;
              }
            }
          }

          while (--v210);
        }

        v220 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v221 = v220;
        }

        else
        {
          result = sub_1ADE55D4C(0, *(v220 + 16) + 1, 1, v220);
          v221 = result;
        }

        v223 = *(v221 + 16);
        v222 = *(v221 + 24);
        if (v223 >= v222 >> 1)
        {
          result = sub_1ADE55D4C((v222 > 1), v223 + 1, 1, v221);
          v221 = result;
        }

        *(v221 + 16) = v223 + 1;
        *(v221 + 8 * v223 + 32) = v214;
        if (v199 >= *(v200 + 2))
        {
          goto LABEL_214;
        }

        v349 = v221;
        v224 = *(v203 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = sub_1ADE55D4C(0, *(v202 + 2) + 1, 1, v202);
        }

        v352 = v202;
        v226 = *(v202 + 2);
        v225 = *(v202 + 3);
        if (v226 >= v225 >> 1)
        {
          v352 = sub_1ADE55D4C((v225 > 1), v226 + 1, 1, v352);
        }

        v202 = v352;
        *(v352 + 2) = v226 + 1;
        *&v202[8 * v226 + 32] = v224;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v200 = sub_1ADF79A2C(v200);
        }

        v81 = v353;
        v201 = *(v200 + 2);
        result = v349;
        if (v199 >= v201)
        {
          goto LABEL_215;
        }

        v227 = &v200[32 * v199];
        v228 = *(v227 + 5);
        v146 = __OFADD__(v228, v206);
        v229 = v228 + v206;
        if (v146)
        {
          goto LABEL_216;
        }

        *(v227 + 5) = v229;
        v230 = *(v227 + 6);
        v146 = __OFADD__(v230, v215);
        v231 = v230 + v215;
        if (v146)
        {
          goto LABEL_217;
        }

        ++v199;
        *(v227 + 6) = v231;
        if (v199 == v346)
        {
          v361 = v202;
          v362 = result;
          v233 = (v200 + 48);
          v234 = MEMORY[0x1E69E7CC0];
          do
          {
            v239 = *(v233 - 1);
            v240 = *v233;
            if (v239 != *v233)
            {
              v146 = __OFSUB__(v240, 1);
              v241 = v240 - 1;
              if (v146)
              {
                goto LABEL_219;
              }

              if (v239 != v241)
              {
                v346 = *v233;
                v242 = *(v233 - 2);
                result = swift_isUniquelyReferenced_nonNull_native();
                v358 = v234;
                if ((result & 1) == 0)
                {
                  result = sub_1ADE6F3BC(0, *(v234 + 16) + 1, 1);
                  v234 = v358;
                }

                v235 = v346;
                v237 = *(v234 + 16);
                v236 = *(v234 + 24);
                if (v237 >= v236 >> 1)
                {
                  result = sub_1ADE6F3BC((v236 > 1), v237 + 1, 1);
                  v235 = v346;
                  v234 = v358;
                }

                *(v234 + 16) = v237 + 1;
                v238 = v234 + 32 * v237;
                *(v238 + 32) = v242;
                *(v238 + 40) = v239;
                *(v238 + 48) = v235;
                v81 = v353;
              }
            }

            v233 += 4;
            --v201;
          }

          while (v201);
          v339 = v234;
          v232 = v347;
          goto LABEL_155;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
      return result;
    }

    v349 = MEMORY[0x1E69E7CC0];
    v352 = MEMORY[0x1E69E7CC0];
    v339 = MEMORY[0x1E69E7CC0];
    v232 = v347;
LABEL_155:

    v358 = v374;

    MEMORY[0x1B26FB780](&v366, v351, v297);

    v357 = v366;
    sub_1AE23DC6C();
    sub_1AE23DC7C();
    v243 = v298;
    v244 = v345;
    (v341)(v298, v232, v345);
    v245 = TupleTypeMetadata2;
    v246 = (v340)(v243, 1, TupleTypeMetadata2);
    v198 = v316;
    if (v246 != 1)
    {
      *&v346 = *v355;
      do
      {
        v247 = *v243;
        v248 = v245[12];
        (v346)(v350, v243 + v248, v8);
        (*v354)(v243 + v248, v81);
        v366 = v247;
        v249 = v347;
        v367 = 0;
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        sub_1AE23DC7C();
        (v341)(v243, v249, v244);
      }

      while ((v340)(v243, 1, v245) != 1);
    }

    v197 = v354;
LABEL_159:
    v368 = sub_1AE23C9CC();
    v366 = v374;

    CRSequence.makeIterator()(v351, &v358);

    v251 = type metadata accessor for CRSequence.Iterator(0, v81, &off_1F23C8BA0, v250);
    CRSequence.Iterator.next()(v251, v198);
    v252 = *(v348 + 48);
    v253 = (v252)(v198, 1, v81);
    v254 = v326;
    if (v253 != 1)
    {
      v266 = *(v348 + 32);
      v348 += 32;
      v352 = (v304 + 48);
      v347 = (v304 + 8);
      *&v346 = v315 + 40;
      v345 = (v299 + 48);
      TupleTypeMetadata2 = (v299 + 32);
      *&v343 = v299 + 16;
      v342 = (v299 + 56);
      v341 = (v299 + 8);
      v340 = (v300 + 8);
      v350 = v252;
      v349 = v266;
      (v266)(v326, v198, v81);
      while (1)
      {
        sub_1AE23CB7C();
        if (v367 == 1)
        {
          (*v197)(v254, v81);
        }

        else
        {
          v267 = v251;
          v268 = v366;
          v269 = v322[1];
          v366 = v375;
          v270 = v314;
          CRSequence.subscript.getter(v268);
          v271 = v324;
          (*v355)(v324, v270, v8);
          v272 = *v197;
          v272(v270, v81);
          v365 = v269;
          v273 = type metadata accessor for CRSet(0, v8, v317, v356);
          v274 = v325;
          CRSet.subscript.getter(v271, v273, v325);
          v275 = *v352;
          result = (*v352)(v274, 1, v8);
          if (result == 1)
          {
            goto LABEL_221;
          }

          v364 = v312[1];
          v276 = v311;
          CRSet.subscript.getter(v326, v273, v311);
          result = v275(v276, 1, v8);
          if (result == 1)
          {
            goto LABEL_222;
          }

          v277 = *v347;
          (*v347)(v324, v8);
          v278 = v313;
          v279 = v325;
          (*(v315 + 40))(v276, v319, v8);
          v277(v276, v8);
          v277(v279, v8);
          v280 = v318;
          if ((*v345)(v278, 1, v318) == 1)
          {
            v254 = v326;
            v81 = v353;
            v281 = v354;
            v272(v326, v353);
            v197 = v281;
            (*v340)(v278, v307);
          }

          else
          {
            v282 = v305;
            (*TupleTypeMetadata2)(v305, v278, v280);
            v283 = v326;
            sub_1AE23CB7C();
            v284 = v280;
            if (v367)
            {
              v285 = v268;
            }

            else
            {
              v285 = v366;
            }

            v254 = v283;
            v286 = v306;
            (*v343)(v306, v282, v284);
            (*v342)(v286, 0, 1, v284);
            v366 = v285;
            sub_1AE23CB1C();
            sub_1AE23CB8C();
            (*v341)(v282, v284);
            v81 = v353;
            v287 = v354;
            v272(v254, v353);
            v197 = v287;
          }

          v198 = v316;
          v251 = v267;
          v252 = v350;
          v266 = v349;
        }

        CRSequence.Iterator.next()(v251, v198);
        if ((v252)(v198, 1, v81) == 1)
        {
          break;
        }

        (v266)(v254, v198, v81);
      }
    }

    v255 = sub_1AE23C04C();
    v42 = v339;
    if (v255 <= 0 && sub_1AE23CA7C() <= 0 && !*(v42 + 2))
    {
      goto LABEL_186;
    }

    goto LABEL_164;
  }

  v121 = 0;
  v122 = 0;
  v335 = (v118 + 32);
  v123 = (v304 + 8);
  *&v346 = v348 + 16;
  while (1)
  {
    v124 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v124 & 1) == 0)
    {
LABEL_202:
      sub_1AE23DAAC();
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    if (__OFADD__(v122, 1))
    {
      goto LABEL_203;
    }

    v125 = &v335[32 * v122];
    v126 = *v125;
    v127 = *(v125 + 1);
    v128 = *v125 + v127;
    if (__OFADD__(*v125, v127))
    {
      goto LABEL_204;
    }

    if (v128 < v126)
    {
      goto LABEL_205;
    }

    v130 = *(v125 + 2);
    v129 = *(v125 + 3);
    v336 = v122 + 1;
    v338 = v130;
    *&v343 = v129;
    if (v126 != v128)
    {
      break;
    }

    v131 = v129;
LABEL_29:
    v81 = v353;
    v136 = v343;
    if (v343)
    {
      v137 = sub_1AE16A958();
      *&v343 = v136;

      if (sub_1AE23D0AC())
      {
        v138 = 0;
        do
        {
          v139 = sub_1AE23D08C();
          sub_1AE23D00C();
          if (v139)
          {
            (*(v348 + 16))(v352, v137 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v138, v81);
            v140 = v355;
            v141 = v138 + 1;
            if (__OFADD__(v138, 1))
            {
              goto LABEL_184;
            }
          }

          else
          {
            result = sub_1AE23DAAC();
            v140 = v355;
            if (v329 != 8)
            {
              goto LABEL_220;
            }

            v369 = result;
            (*v346)(v352, &v369, v81);
            swift_unknownObjectRelease();
            v141 = v138 + 1;
            if (__OFADD__(v138, 1))
            {
              goto LABEL_184;
            }
          }

          v142 = v352;
          (*v140)(v42, v352, v8);
          v81 = v353;
          (*v354)(v142, v353);
          sub_1AE23D38C();
          v143 = v350;
          sub_1AE23D33C();
          (*v123)(v143, v8);
          ++v138;
        }

        while (v141 != sub_1AE23D0AC());
      }

      v145 = v343;

      v120 = v350;
    }

    v146 = __OFSUB__(v121, v338);
    v121 -= v338;
    if (v146)
    {
      goto LABEL_206;
    }

    v118 = v328;
    v147 = sub_1AE23D0AC();
    v122 = v336;
    if (v336 == v147)
    {
      goto LABEL_43;
    }
  }

  if (v126 >= v128)
  {
    goto LABEL_207;
  }

  v132 = v375;
  v133 = v129;
  while (1)
  {
    v134 = v126 + v121;
    if (__OFADD__(v126, v121))
    {
      break;
    }

    ++v126;
    v369 = v132;
    v135 = v349;
    CRSequence.subscript.getter(v134);
    (*v355)(v42, v135, v8);
    sub_1AE23D38C();
    sub_1AE23D33C();
    (*v123)(v120, v8);
    (*v354)(v135, v353);
    if (!--v127)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  v292 = sub_1AE23C04C();

  if (v292 >= 1)
  {
LABEL_164:
    v256 = v368;
    v257 = *(v308 + 32);
    v258 = v301;
    v259 = v309;
    v257(v301, v330, v309);
    v260 = v302;
    v257(v302, v332, v259);
    v261 = v303;
    v262 = v260;
    v263 = v317;
    v264 = v356;
    sub_1AE1E4574(v256, v258, v42, v262, v8, v317, v356, v303);

    v265 = type metadata accessor for CROrderedSet.ObservableDifference(0, v8, v263, v264);
    (*(*(v265 - 8) + 56))(v261, 0, 1, v265);
    goto LABEL_165;
  }

  v293 = *(v308 + 8);
  v294 = v309;
  v293(v330, v309);
  v293(v332, v294);

  v295 = type metadata accessor for CROrderedSet.ObservableDifference(0, v8, v317, v356);
  (*(*(v295 - 8) + 56))(v303, 1, 1, v295);
LABEL_165:
}