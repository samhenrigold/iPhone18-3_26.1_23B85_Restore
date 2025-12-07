double sub_1AE0170EC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  CROrderedDictionary.makeIterator()(a1, a2);

  return result;
}

uint64_t sub_1AE017128(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE1DCD68(v2, a1, a2);

  return v3;
}

uint64_t sub_1AE017174(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  type metadata accessor for CRDictionaryElement(255, a5, a8, a4);
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + v13, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

uint64_t sub_1AE017238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(type metadata accessor for CROrderedSetElement(0, a2, a3, a4) + 44);
  sub_1ADDF8030(v13, v12, type metadata accessor for Replica);
  v14 = sub_1ADDF66A8(v12);
  v15 = sub_1AE23BFEC();
  (*(*(v15 - 8) + 8))(v12, v15);
  result = type metadata accessor for Timestamp(0);
  v17 = *(v13 + *(result + 20));
  *a5 = v14;
  a5[1] = v17;
  return result;
}

uint64_t CROrderedDictionary<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v29 = a3;
  *&v30 = a2;
  v7 = *(a2 + 24);
  v22 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v22 - v9;
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = v4[1];
  *&v31 = *v4;
  v39 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v22;
  v16 = TupleTypeMetadata2;
  sub_1AE23E3AC();
  v32 = v31;
  v33 = v39;
  v17 = v30;
  CROrderedDictionary.makeIterator()(v30, &v36);
  v18 = *(v17 + 32);
  v30 = *(v17 + 48);
  v31 = v18;
  v39 = (v27 + 6);
  v26 = v15 - 8;
  v25 = v7 - 1;
  v28 = v16;
  v23 = v13;
  ++v27;
  while (1)
  {
    v32 = v15;
    v33 = v7;
    v34 = v31;
    v35 = v30;
    v19 = type metadata accessor for CROrderedDictionary.Iterator(0, &v32);
    CROrderedDictionary.Iterator.next()(v19, v13);
    if ((*v39)(v13, 1, v16) == 1)
    {
      break;
    }

    v20 = *(v16 + 48);
    (*(*(v15 - 8) + 32))(v10, v13, v15);
    (*(*(v7 - 1) + 4))(&v10[v20], &v13[v20], v7);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    sub_1AE23DE6C();
    if (v5)
    {
      (*v27)(v10, v28);
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    sub_1AE23DE6C();
    v16 = v28;
    (*v27)(v10, v28);
    v13 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1AE017714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_1ADDD86D8(v4, *v2);
      sub_1ADDE0110(v5, v4, v3);
      sub_1ADDCC35C(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

id sub_1AE017788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v24 = a1;
  v5 = *(a3 + 24);
  v6 = sub_1AE23D7CC();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *(a3 + 16);
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3;
  v23 = *(a3 + 32);
  v13 = type metadata accessor for CROrderedSetElement(0, v9, v23, *(&v23 + 1));
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  *&v30[0] = *v3;
  type metadata accessor for CRSequence(0, v13, &off_1F23C8BA0, v17);
  result = CRSequence.count.getter();
  if (result <= v29)
  {
    __break(1u);
  }

  else
  {
    v31 = *v3;
    CRSequence.subscript.getter(v29);
    v19 = v25;
    (*(v25 + 16))(v12, v16, v9);
    (*(v14 + 8))(v16, v13);
    v20 = *(v5 - 8);
    (*(v20 + 16))(v8, v24, v5);
    (*(v20 + 56))(v8, 0, 1, v5);
    *&v21 = v9;
    *(&v21 + 1) = v5;
    v30[1] = v23;
    v30[0] = v21;
    v30[2] = *(v26 + 48);
    v22 = type metadata accessor for CRDictionary(0, v30);
    sub_1ADFAEA78(v8, v12, v22);
    (*(v19 + 8))(v12, v9);
    return (*(v27 + 8))(v8, v28);
  }

  return result;
}

uint64_t sub_1AE017AB8(uint64_t a1)
{
  v2 = type metadata accessor for Timestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE017B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE017B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AE017C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

void sub_1AE017C90(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1AE23CB1C();
  if (v1 <= 0x3F)
  {
    sub_1AE23C12C();
    if (v2 <= 0x3F)
    {
      sub_1ADF5CE54();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AE017DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVyxq__GSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE017E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1AE017EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AE017FA4(uint64_t a1)
{
  result = sub_1AE23BDDC();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1AE01808C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v7 = sub_1ADDD1E30(0xD00000000000001BLL, 0x80000001AE25F1C0);
  if (!v3)
  {
    v8 = v7;
    v9 = sqlite3_step(v7);
    if (v9 != 101)
    {
      if (v9 == 5)
      {
        sub_1ADE47024(v9, v10, v11);
        swift_allocError();
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 5;
        swift_willThrow();
        sqlite3_finalize(v8);
        return;
      }

      if (sqlite3_errmsg(*(v4 + 32)))
      {
        v21 = sub_1AE23CDEC();
        v23 = v22;
        sub_1ADE47024(v21, v22, v24);
        swift_allocError();
        *v25 = v21;
        *(v25 + 8) = v23;
        *(v25 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v8);
        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    v13 = sqlite3_finalize(v8);
    if (a1)
    {
      v14 = *(v4 + 32);
      v15 = *(a1 + 16);

      if (sqlite3_snapshot_open(v14, "main", v15))
      {
        if (sqlite3_errmsg(*(v4 + 32)))
        {
          v16 = sub_1AE23CDEC();
          v18 = v17;
          sub_1ADE47024(v16, v17, v19);
          swift_allocError();
          *v20 = v16;
          *(v20 + 8) = v18;
          *(v20 + 16) = 4;
          swift_willThrow();

          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    a2(v13);
    v26 = sub_1ADDD1E30(0x4E41525420444E45, 0xEF4E4F4954434153);
    v27 = sqlite3_step(v26);
    if (v27 == 5)
    {
      sub_1ADE47024(v27, v28, v29);
      v30 = swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0;
      v32 = 5;
    }

    else
    {
      if (v27 == 101)
      {
        sqlite3_finalize(v26);
        return;
      }

      if (!sqlite3_errmsg(*(v4 + 32)))
      {
        goto LABEL_27;
      }

      v33 = sub_1AE23CDEC();
      v35 = v34;
      sub_1ADE47024(v33, v34, v36);
      v30 = swift_allocError();
      *v31 = v33;
      *(v31 + 8) = v35;
      v32 = 2;
    }

    *(v31 + 16) = v32;
    v37 = v30;
    swift_willThrow();
    sqlite3_finalize(v26);
    v38 = sub_1ADDD1E30(0x4B4341424C4C4F52, 0xE800000000000000);
    v39 = sqlite3_step(v38);
    if (v39 == 5)
    {
      sub_1ADE47024(v39, v40, v41);
      swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v38);

      return;
    }

    if (v39 == 101)
    {
      sqlite3_finalize(v38);
      swift_willThrow();
      return;
    }

    if (sqlite3_errmsg(*(v4 + 32)))
    {
      v43 = sub_1AE23CDEC();
      v45 = v44;
      sub_1ADE47024(v43, v44, v46);
      swift_allocError();
      *v47 = v43;
      *(v47 + 8) = v45;
      *(v47 + 16) = 2;
      swift_willThrow();
      sqlite3_finalize(v38);

      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

double sub_1AE018450()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_1AE018484(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char *a9, uint64_t a10, uint64_t a11)
{
  v11 = a7;
  v12 = a6;
  v14 = a4;
  v18 = swift_allocObject();
  sub_1AE0197B8(a1, a2, a3, v14, a5, v12, v11, a8, a9, a10, a11);
  return v18;
}

uint64_t sub_1AE018590@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_1ADE92304(v4, v5, v6, v7, v8);
}

void sub_1AE01864C(void *a1)
{
  sub_1AE02AE6C();
  if (!v2)
  {
    v6 = v5;
    sub_1AE01DAE0(v4, a1);

    v7 = *(v1 + 40);
    sub_1ADDF6EEC();

    sub_1AE020878(a1, v6);
  }
}

uint64_t sub_1AE018748(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE018768, 0, 0);
}

uint64_t sub_1AE018768()
{
  sub_1AE02AE6C();
  v0[4] = v1;
  v0[5] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1AE018858;
  v5 = v0[2];

  return sub_1AE01ECA0(v3, v5);
}

uint64_t sub_1AE018858()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_1AE018A34;
  }

  else
  {
    v2 = sub_1AE018984;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AE018984()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v0[3] + 40);
  sub_1ADDF6EEC();

  sub_1AE020878(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE018A34()
{
  sub_1AE23D6AC();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE018AE4(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AE020CC8(a1, a2);
  return v4;
}

uint64_t sub_1AE018BE8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7AFF4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AE029BB8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AE018D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7B008(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AE02A108(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1AE018E58(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v15 = *(a3 + 8 * v7 + 32);

      v9 = v6(&v15);
      if (v3)
      {

        return;
      }

      v10 = v15;
      if (v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADE6F304(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1ADE6F304((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v10;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

double sub_1AE018FE8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  *&v43 = a5;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v7 + 56);

  result = sub_1AE026EA8(v17, v18, v19, &v44);
  if (!v8)
  {
    v24 = v13;
    v41 = a3;
    v42 = v15;
    v39 = a1;
    v40 = a6;
    v25 = v43;
    v38 = a2;
    v26 = *(&v44 + 1);
    if (*(&v44 + 1) >> 60 == 15)
    {
      sub_1ADE42E40(v20, v21, v22);
      swift_allocError();
      *v27 = 0xD00000000000001BLL;
      *(v27 + 8) = 0x80000001AE2611B0;
      *(v27 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v37 = v24;
      v28 = v44;
      v29 = v45;
      v30 = v46;
      sub_1ADDD86D8(v44, *(&v44 + 1));
      sub_1ADDD86D8(v29, v30);
      sub_1ADDCC35C(v29, v30);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v31 = sub_1ADE64748(v28, v26, v25);
      v36 = v28;
      v32 = v40;
      (*(*(*(v47 + 16) + 8) + 8))(v31, v40);
      inited = swift_initStackObject();
      v34 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v34;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v25;
      *(inited + 24) = v34;

      sub_1ADE62FA4(v29, v30, &v44);
      sub_1AE02AA94(v36, v26, v29, v30);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v43 = v44;
      (*(v37 + 32))(v39, v42, v32);
      result = *&v43;
      *v38 = v43;
    }
  }

  return result;
}

void sub_1AE019368(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v33 = a5;
  v6 = v5;
  v38 = a4;
  v10 = sub_1AE23BDDC();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  aBlock = sub_1AE23BEAC();
  v40 = v13;
  v47 = 47;
  v48 = 0xE100000000000000;
  v45 = 95;
  v46 = 0xE100000000000000;
  sub_1ADE42DEC(aBlock, v13, v14);
  sub_1AE23D82C();

  sub_1AE23BD3C();

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v34 = a3;
  v35 = v12;
  if (a3)
  {
    v32 = sub_1AE23BD1C();
    v17 = swift_allocObject();
    v17[2] = v6;
    v17[3] = v15;
    v31 = v6;
    v17[4] = v38;
    v17[5] = a1;
    v18 = v49;
    v17[6] = v49;
    v19 = swift_allocObject();
    v30 = sub_1AE02AD20;
    *(v19 + 16) = sub_1AE02AD20;
    *(v19 + 24) = v17;
    v43 = sub_1AE02BD58;
    v44 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1ADE8AB00;
    v42 = &block_descriptor_35;
    v20 = _Block_copy(&aBlock);

    sub_1ADDD86D8(a1, v18);

    v21 = v32;
    [v34 coordinateReadingItemAtURL:v32 options:0 error:0 byAccessor:v20];

    _Block_release(v20);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
      return;
    }

    v22 = v30;
  }

  else
  {
    sub_1AE020930(v12, v6, v15, v38, a1, v49);
    v22 = 0;
    v17 = 0;
  }

  v23 = swift_beginAccess();
  v26 = *v16;
  if (*v16)
  {
    v27 = *(v36 + 8);

    v27(v35, v37);

    sub_1ADDDCE7C(v22, v17);
    *v33 = v26;
  }

  else
  {
    sub_1ADE42E40(v23, v24, v25);
    swift_allocError();
    *v28 = 0xD000000000000017;
    *(v28 + 8) = 0x80000001AE262230;
    *(v28 + 16) = 0;
    swift_willThrow();
    (*(v36 + 8))(v35, v37);

    sub_1ADDDCE7C(v22, v17);
  }
}

uint64_t sub_1AE019778()
{
  sub_1ADE92284(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

void sub_1AE0197B8(char *a1, char *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11)
{
  v204 = a8;
  v208 = a7;
  v211 = a6;
  v218 = a5;
  v215 = a4;
  v219 = a3;
  v238 = a2;
  v216 = a1;
  v237 = a11;
  v213 = a10;
  v214 = a9;
  v246 = *MEMORY[0x1E69E9840];
  v212 = *v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v206 = &v199 - v13;
  v240 = sub_1AE23BDDC();
  v234 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v201 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v202 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v203 = &v199 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v199 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v209 = &v199 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v199 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v217 = &v199 - v26;
  v228 = sub_1AE23D68C();
  v239 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v30 = sub_1AE23BFEC();
  v233 = v30;
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1ADDCED94();
  v220 = v11;
  v11[2] = 0;
  v11[3] = 0;
  v243 = 0x746972772D6C7173;
  v244 = 0xEA00000000002D65;
  sub_1AE23BFDC();
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v34 = swift_allocObject();
  v229 = xmmword_1AE241900;
  *(v34 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v35 = MEMORY[0x1E69E7508];
  v36 = MEMORY[0x1E69E7558];
  *(v34 + 56) = MEMORY[0x1E69E7508];
  *(v34 + 64) = v36;
  v37 = v35;
  v38 = v36;
  *(v34 + 32) = v39;
  sub_1AE23BFCC();
  *(v34 + 96) = v37;
  *(v34 + 104) = v38;
  *(v34 + 72) = v40;
  v41 = sub_1AE23CD3C();
  v43 = v42;
  v231 = *(v31 + 8);
  v232 = v31 + 8;
  v231(v33, v30);
  MEMORY[0x1B26FB670](v41, v43);

  sub_1AE23C8AC();
  v243 = MEMORY[0x1E69E7CC0];
  v225 = sub_1AE02ADD4(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v226 = sub_1ADDCC7D4(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80, MEMORY[0x1E69E6328]);
  sub_1AE23D8DC();
  LODWORD(v223) = *MEMORY[0x1E69E8090];
  v44 = *(v239 + 104);
  v239 += 104;
  v222 = v44;
  v45 = v228;
  (v44)(v227);
  v46 = sub_1AE23D6CC();
  v47 = v220;
  v220[8] = v46;
  v243 = 0x646165722D6C7173;
  v244 = 0xE90000000000002DLL;
  sub_1AE23BFDC();
  v48 = swift_allocObject();
  *(v48 + 16) = v229;
  sub_1AE23BFCC();
  v49 = MEMORY[0x1E69E7508];
  *(v48 + 56) = MEMORY[0x1E69E7508];
  v50 = MEMORY[0x1E69E7558];
  *(v48 + 64) = MEMORY[0x1E69E7558];
  *(v48 + 32) = v51;
  sub_1AE23BFCC();
  *(v48 + 96) = v49;
  *(v48 + 104) = v50;
  *(v48 + 72) = v52;
  v53 = sub_1AE23CD3C();
  v55 = v54;
  v231(v33, v233);
  MEMORY[0x1B26FB670](v53, v55);

  sub_1AE23C8AC();
  v243 = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v56 = v227;
  v222(v227, v223, v45);
  v47[9] = sub_1AE23D6CC();
  v57 = v47;
  v243 = 0x65722D7465737361;
  v244 = 0xEB000000002D6461;
  sub_1AE23BFDC();
  v58 = swift_allocObject();
  *(v58 + 16) = v229;
  sub_1AE23BFCC();
  v59 = MEMORY[0x1E69E7508];
  *(v58 + 56) = MEMORY[0x1E69E7508];
  v60 = MEMORY[0x1E69E7558];
  *(v58 + 64) = MEMORY[0x1E69E7558];
  *(v58 + 32) = v61;
  sub_1AE23BFCC();
  *(v58 + 96) = v59;
  *(v58 + 104) = v60;
  *(v58 + 72) = v62;
  v63 = sub_1AE23CD3C();
  v65 = v64;
  v200 = v33;
  v231(v33, v233);
  MEMORY[0x1B26FB670](v63, v65);

  sub_1AE23C8AC();
  v66 = MEMORY[0x1E69E7CC0];
  v243 = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v222(v56, v223, v228);
  v67 = v57;
  *(v57 + 80) = sub_1AE23D6CC();
  *(v57 + qword_1EB5D7450) = 0;
  v236 = qword_1EB5D7458;
  *(v57 + qword_1EB5D7458) = v66;
  v239 = qword_1EB5D7428;
  *(v57 + qword_1EB5D7428) = 0;
  v68 = objc_opt_self();
  v69 = [v68 defaultManager];
  v70 = v217;
  sub_1AE23BD3C();
  sub_1AE23BDAC();
  v71 = (v234 + 1);
  v72 = v234[1];
  v72(v70, v240);
  v73 = sub_1AE23CCDC();

  LOBYTE(v57) = [v69 fileExistsAtPath_];

  if ((v57 & 1) == 0)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v222 = v68;

    v77 = sub_1ADF7E7B4(v74, v75, v76);

    v78 = *(v77 + 16);
    if (!v78)
    {
      break;
    }

    v79 = sub_1AE1942D8(*(v77 + 16), 0);
    v80 = sub_1AE03A9F4(&v243, v79 + 32, v78, v77);
    sub_1ADDDCE74(v243);
    if (v80 == v78)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_5:
    if (v215)
    {
      v81 = v238;

      sub_1ADE42E40(v82, v83, v84);
      swift_allocError();
      *v85 = 0xD000000000000014;
      *(v85 + 8) = 0x80000001AE262270;
      *(v85 + 16) = 0;
      goto LABEL_35;
    }

    v86 = [v68 defaultManager];
    v87 = v217;
    v81 = v238;
    sub_1AE23BD3C();
    v88 = sub_1AE23BD1C();
    v72(v87, v240);
    v243 = 0;
    LODWORD(v87) = [v86 createDirectoryAtURL:v88 withIntermediateDirectories:1 attributes:0 error:&v243];

    if (!v87)
    {
      v113 = v243;

      sub_1AE23BC9C();

LABEL_35:
      swift_willThrow();

      sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
      v72(v81, v240);
      sub_1ADE42CB8(*(v67 + 2), *(v67 + 3));
      v114 = 0;
LABEL_66:

      if (v114)
      {
        v180 = v240;
        v72(&v67[qword_1EB5D74C8], v240);
        v72(&v67[qword_1EB5D7420], v180);
      }

      swift_deallocPartialClassInstance();
      return;
    }

    v89 = v243;
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v243 = v79;

  v90 = v210;
  sub_1AE018D20(&v243);
  v91 = v90;
  if (v90)
  {

    __break(1u);
    return;
  }

  v92 = qword_1EB5D7448;
  *&v67[qword_1EB5D7448] = v243;

  v93 = v239;
  if (!v213)
  {
    goto LABEL_15;
  }

  v94 = sub_1ADF7E740(v213);

  v95 = *(v94 + 16);
  if (v95)
  {
    v96 = sub_1AE19434C(*(v94 + 16), 0);
    v97 = sub_1AE03A8F4(&v243, v96 + 16, v95, v94);
    sub_1ADDDCE74(v243);
    if (v97 != v95)
    {
      __break(1u);
LABEL_15:
      v98 = 0;
      goto LABEL_18;
    }
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  v243 = v96;

  sub_1AE018BE8(&v243);

  v98 = v243;
LABEL_18:
  *&v67[qword_1EB5D7430] = v98;
  *&v67[v93] = v98;
  v228 = v98;
  swift_bridgeObjectRetain_n();

  v235 = v71;
  v230 = v72;
  v99 = v237;
  if (v237)
  {
    v100 = *&v67[v93];
    v101 = v238;
    if (v100)
    {
      v227 = v92;
      v102 = *(v100 + 16);
      if (v102)
      {
        *&v229 = 0;
        v103 = (v237 + 32);

        v104 = 0;
        v105 = MEMORY[0x1E69E7CC0];
        do
        {
          v108 = *(v100 + 32 + 2 * v104);
          v109 = *(v99 + 16);
          v110 = v103;
          while (v109)
          {
            v111 = *v110++;
            --v109;
            if (v111 == v108)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v243 = v105;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1ADE6F41C(0, *(v105 + 16) + 1, 1);
                v105 = v243;
              }

              v107 = *(v105 + 16);
              v106 = *(v105 + 24);
              if (v107 >= v106 >> 1)
              {
                sub_1ADE6F41C((v106 > 1), v107 + 1, 1);
                v105 = v243;
              }

              *(v105 + 16) = v107 + 1;
              *(v105 + 2 * v107 + 32) = v108;
              v99 = v237;
              break;
            }
          }

          ++v104;
        }

        while (v104 != v102);

        v67 = v220;
        v101 = v238;
        v91 = v229;
      }

      else
      {
        v105 = MEMORY[0x1E69E7CC0];
      }

      v93 = v239;
      v92 = v227;
    }

    else
    {

      v105 = 0;
    }

    *&v229 = v91;
    *&v67[v93] = v105;
  }

  else
  {
    *&v229 = 0;
    v101 = v238;
  }

  v115 = *&v67[v92];
  v225 = qword_1EB5D7440;
  v227 = v115;
  *&v67[qword_1EB5D7440] = v115;
  v116 = v216;
  *(v67 + 5) = v216;
  v223 = OBJC_IVAR___CRContext_assetManager;
  v237 = *&v116[OBJC_IVAR___CRContext_assetManager];
  *(v67 + 6) = v237;
  v117 = v234;
  v118 = v67;
  v120 = v234 + 2;
  v119 = v234[2];
  v121 = v240;
  v119(&v118[qword_1EB5D74C8], v101, v240);
  v122 = v206;
  sub_1ADDCEE40(v219, v206, &qword_1EB5B9DC0, &qword_1AE240B90);
  v123 = v117[6];
  v124 = v123(v122, 1, v121);
  v224 = v120;
  v226 = v119;
  if (v124 == 1)
  {
    v125 = v209;
    v126 = v240;
    v119(v209, v101, v240);
    v127 = v123(v122, 1, v126);

    v128 = v116;

    v129 = v122;
    v130 = v116;
    if (v127 != 1)
    {
      sub_1ADDCEDE0(v129, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    v131 = v117[4];
    v125 = v209;
    v131(v209, v122, v240);

    v132 = v116;

    v130 = v116;
  }

  v133 = v205;
  sub_1AE23BD2C();
  v134 = v240;
  v135 = v230;
  v230(v125, v240);
  v136 = v234[4];
  v67 = v220;
  v237 = qword_1EB5D7420;
  v234 += 4;
  v227 = v136;
  (v136)(v220 + qword_1EB5D7420, v133, v134);
  *(v67 + 4) = v218;
  v67[qword_1EB5D7460] = v208 & 1;

  v137 = v207;
  sub_1AE23BD3C();
  v138 = sub_1AE23BDAC();
  v140 = v139;
  v135(v137, v134);
  v141 = v229;
  v142 = sub_1AE01B598(v138, v140, v130, v215 & 1, v211 & 1, v228);
  if (!v141)
  {
    v171 = v142;

    v197 = v171;
    *(v67 + 7) = v171;
    v144 = v239;
    goto LABEL_54;
  }

  v242 = v141;
  v143 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
    v72 = v230;
    v230(v238, v240);

    goto LABEL_65;
  }

  v144 = v239;
  if (v245 != 2)
  {
    sub_1ADE74174(v243, v244, v245);
    goto LABEL_61;
  }

  if (v243)
  {
LABEL_61:

    sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
    v175 = v238;
    v176 = v240;
    v72 = v230;
    goto LABEL_62;
  }

  v145 = v203;
  sub_1AE23BD3C();
  if (v215)
  {
    v146 = [v222 defaultManager];
    v147 = sub_1AE23BD1C();
    v241[0] = 0;
    v148 = [v146 URLForDirectory:99 inDomain:1 appropriateForURL:v147 create:1 error:v241];

    v149 = v241[0];
    if (v148)
    {
      v150 = v217;
      sub_1AE23BD8C();
      v151 = v149;

      v152 = v202;
      sub_1AE23BD3C();
      v153 = v230;
      v230(v150, v240);
      v154 = [v222 &selRef_coalesce + 3];
      v155 = sub_1AE23BD1C();
      v241[0] = 0;
      v156 = [v154 createDirectoryAtURL:v155 withIntermediateDirectories:1 attributes:0 error:v241];

      v157 = v241[0];
      if (v156)
      {
        v241[0] = 0x2D65646172677055;
        v241[1] = 0xE800000000000000;
        v158 = v157;
        v159 = v200;
        sub_1AE23BFDC();
        sub_1AE02ADD4(&qword_1EB5BCCC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v160 = v233;
        v161 = sub_1AE23DD9C();
        MEMORY[0x1B26FB670](v161);

        v231(v159, v160);
        sub_1AE23BD3C();

        v162 = [v222 defaultManager];
        sub_1AE23BD3C();
        v163 = sub_1AE23BD1C();
        v153(v150, v240);
        v164 = sub_1AE23BD1C();
        v241[0] = 0;
        LODWORD(v160) = [v162 copyItemAtURL:v163 toURL:v164 error:v241];

        if (v160)
        {
          v165 = v241[0];
          v166 = v201;
          sub_1AE23BD3C();
          v167 = v166;
          v168 = v240;
          v153(v167, v240);
          v153(v202, v168);
          v169 = v203;
          v153(v203, v168);
          v145 = v169;
          (v227)(v169, v150, v168);
          goto LABEL_52;
        }

        v198 = v241[0];

        sub_1AE23BC9C();

        swift_willThrow();

        sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
        v192 = v240;
        v153(v238, v240);
        v153(v201, v192);
        v193 = v202;
      }

      else
      {
        v191 = v241[0];

        sub_1AE23BC9C();

        swift_willThrow();

        sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
        v192 = v240;
        v153(v238, v240);
        v193 = v152;
      }

      v153(v193, v192);
      v153(v203, v192);

      v72 = v153;
LABEL_65:
      sub_1ADE42CB8(*(v67 + 2), *(v67 + 3));

      v114 = 1;
      goto LABEL_66;
    }

    v189 = v241[0];

    sub_1AE23BC9C();

    swift_willThrow();

    sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
    v190 = v240;
    v72 = v230;
    v230(v238, v240);
    v175 = v145;
    v176 = v190;
LABEL_62:
    v72(v175, v176);

    goto LABEL_65;
  }

LABEL_52:
  v170 = v228;
  sub_1AE030854(v216, v145, v228);
  v187 = sub_1AE23BDAC();
  v194 = sub_1AE01B598(v187, v188, v216, v215 & 1, v211 & 1, v170);
  v230(v145, v240);

  *(v67 + 7) = v194;

  v197 = *(v67 + 7);
LABEL_54:
  if (*(v197 + 66))
  {
    v172 = 0;
  }

  else
  {
    v172 = *(v197 + 64);
  }

  if (v172 <= 3u)
  {
    MEMORY[0x1EEE9AC00](v195);
    *(&v199 - 16) = v173;
    v174 = v225;
    swift_beginAccess();
    sub_1AE01B8CC(sub_1AE02ADC8, (&v199 - 4), &v67[v174], v241);
    swift_endAccess();
  }

  v177 = v216;
  v178 = v226;
  v179 = *(v67 + 7);
  if ((*(v179 + 70) & 1) == 0)
  {
    sub_1AE01B9D0(*(v179 + 68), &v67[v144], v196);
  }

  v181 = v217;
  if (v204)
  {

    sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
    v230(v238, v240);
    v182 = 0;
  }

  else
  {
    v183 = *&v177[v223];
    v184 = v240;
    v185 = v178(v217, &v67[v237], v240);
    MEMORY[0x1EEE9AC00](v185);
    *(&v199 - 4) = v183;
    *(&v199 - 3) = v181;
    *(&v199 - 16) = 1;
    type metadata accessor for CRAssetWatchedDirectory();
    sub_1AE23D6AC();

    sub_1ADDCEDE0(v219, &qword_1EB5B9DC0, &qword_1AE240B90);
    v186 = v230;
    v230(v238, v184);
    v182 = v243;
    v186(v181, v184);
  }

  *&v67[qword_1EB5D7438] = v182;
}

uint64_t sub_1AE01B598(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  sub_1ADDCEE40(a3 + OBJC_IVAR___CRContext_encryptionDelegate, v23, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CRSQLStore();
  v12 = swift_allocObject();
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 264) = 0u;
  *(v12 + 280) = 0u;
  swift_beginAccess();
  sub_1ADE9241C(v23, v12 + 88);
  swift_endAccess();
  *(v12 + 24) = a2;
  *(v12 + 32) = 0;
  *(v12 + 40) = 256;
  *(v12 + 64) = 0;
  *(v12 + 66) = 1;
  *(v12 + 68) = 0;
  *(v12 + 70) = 1;
  *(v12 + 72) = 0;
  *(v12 + 80) = -1;
  *(v12 + 16) = a1;
  *(v12 + 42) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = &unk_1F23BBD48;

  sub_1ADDD16D4();
  if (v6)
  {
    sub_1ADDCEDE0(v23, &qword_1EB5B9DB0, &qword_1AE240B80);
  }

  else
  {
    if (a5)
    {
      value = -1;
      v13 = sub_1AE23CD8C();
      v14 = setxattr((v13 + 32), "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);

      if (v14 < 0)
      {
        if (qword_1ED968A60 != -1)
        {
          swift_once();
        }

        v15 = sub_1AE23C78C();
        __swift_project_value_buffer(v15, qword_1ED96F208);

        v16 = sub_1AE23C76C();
        v17 = sub_1AE23D61C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v22[0] = v19;
          *v18 = 67109378;
          *(v18 + 4) = v14;
          *(v18 + 8) = 2080;
          *(v18 + 10) = sub_1AE1FB594(a1, a2, v22);
          _os_log_impl(&dword_1ADDCA000, v16, v17, "%d: Could not set file lock exception attribute at %s", v18, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1B26FDA50](v19, -1, -1);
          MEMORY[0x1B26FDA50](v18, -1, -1);
        }
      }
    }

    sub_1ADDCEDE0(v23, &qword_1EB5B9DB0, &qword_1AE240B80);
  }

  return v12;
}

uint64_t sub_1AE01B8CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a3;
  v6 = *(*a3 + 16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 32);
  if (v7 > 2)
  {
    goto LABEL_7;
  }

  v8 = a3;
  a1 = (a1)(&v11);
  if (v11 > v7)
  {
    v7 = v11;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_10:
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = 0xD000000000000012;
    *(v9 + 8) = 0x80000001AE262210;
    *(v9 + 16) = 3;
    return swift_willThrow();
  }

  a3 = v8;
LABEL_7:
  a2 = 0;
  while (*(v5 + 32 + a2) != v7)
  {
    if (v6 == ++a2)
    {
      goto LABEL_10;
    }
  }

  result = sub_1ADF935D0(0, a2);
  *a4 = v7;
  return result;
}

uint64_t sub_1AE01B9D0(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_8:
      sub_1ADE42E40(a1, a2, a3);
      swift_allocError();
      *v7 = 0xD000000000000016;
      *(v7 + 8) = 0x80000001AE2621F0;
      *(v7 + 16) = 3;
      return swift_willThrow();
    }

    v5 = 0;
    if (*(v3 + 32) <= a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = *(v3 + 32);
    }

    while (*(v3 + 2 * v5 + 32) != v6)
    {
      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    v11 = v4 - v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v3 + 24) >> 1)
    {
      v13 = v3;
    }

    else
    {
      if (v4 <= v11)
      {
        v14 = v4 - v5;
      }

      else
      {
        v14 = v4;
      }

      v13 = sub_1ADE558CC(isUniquelyReferenced_nonNull_native, v14, 1, v3);
    }

    sub_1ADF936D4(0, v5, 0);
    *a2 = v13;
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9 | ((v3 == 0) << 16);
}

uint64_t sub_1AE01BB20()
{
  v1 = v0;
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EB5D7438))
  {
    (*(v3 + 16))(v6, v0 + qword_1EB5D7420, v2, v4);

    sub_1AE1A3C14(v6);

    (*(v3 + 8))(v6, v2);
  }

  sub_1ADE432BC();

  if (*(v0 + qword_1EB5D7450) == 1)
  {
    v7 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v6, v0 + qword_1EB5D74C8, v2);
    v8 = sub_1AE23BD1C();
    (*(v3 + 8))(v6, v2);
    v16[0] = 0;
    v9 = [v7 removeItemAtURL:v8 error:v16];

    if (v9)
    {
      v10 = v16[0];
    }

    else
    {
      v11 = v16[0];
      v12 = sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  sub_1ADE42CB8(*(v1 + 16), *(v1 + 24));

  v13 = *(v3 + 8);
  v13(v1 + qword_1EB5D74C8, v2);
  v13(v1 + qword_1EB5D7420, v2);

  return v1;
}

uint64_t sub_1AE01BE5C()
{
  sub_1AE01BB20();

  return swift_deallocClassInstance();
}

void sub_1AE01BF00(void *a1, void *a2)
{
  v5 = *a1;
  v6 = a1[7];
  v7 = sub_1ADDCC6B4(&unk_1F23BC118);
  v9 = v8;

  sub_1AE026EA8(v7, v9, v6, &v49);
  sub_1ADDCC35C(v7, v9);
  if (!v2)
  {
    v14 = v50;
    if (v50 >> 60 == 15)
    {
      sub_1ADE42E40(v10, v11, v12);
      swift_allocError();
      *v15 = xmmword_1AE251850;
      *(v15 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v16 = v49;
      v41 = *(&v50 + 1);
      v60 = v51;
      v39 = *(v5 + 88);
      v40 = *(v5 + 80);
      type metadata accessor for CRDataStoreBundleDecodeContext(0, v40, v39, v13);
      v17 = a1[6];
      v18 = a1[8];
      v19 = sub_1ADF7F3A0(a1, 0, v17, a2, v18);
      v20 = qword_1ED9697D8;

      v21 = a2;
      v22 = v18;
      if (v20 != -1)
      {
        swift_once();
      }

      sub_1ADE6035C(&v58, v16, v14, qword_1ED96F240, *algn_1ED96F248, &v49);
      v59[4] = v54;
      v59[5] = v55;
      v59[6] = v56;
      v59[7] = v57;
      v59[0] = v50;
      v59[1] = v51;
      v59[2] = v52;
      v59[3] = v53;
      v43[0] = v58;

      sub_1ADDCEE40(&v49, v44, &qword_1EB5BA278, &unk_1AE241D30);

      sub_1AE1EB234(v43, v59, v19, v17, 0, v40, v39, &v46);
      v37 = v48;
      v23 = a1[4];
      swift_beginAccess();
      v24 = v23[1].n128_i64[0];
      v25 = v23[1].n128_u64[1];
      v26 = v23[2].n128_u64[1];
      v35 = v23[3].n128_i64[0];
      v36 = v23[2].n128_i64[0];
      v27 = v47;
      v23[1] = v46;
      v23[2] = v27;
      v23[3].n128_u64[0] = v37;

      sub_1ADE92284(v24, v25, v36, v26, v35);

      sub_1AE018590(v44);
      v28 = v45;
      if (v45 == 1)
      {
        __break(1u);
      }

      else
      {
        v29 = v44[2];
        v38 = v44[3];
        v31 = v44[0];
        v30 = v44[1];
        sub_1AE02AA94(v16, v14, v41, v60);

        sub_1ADDCEDE0(&v49, &qword_1EB5BA278, &unk_1AE241D30);
        v46.n128_u64[0] = v31;
        v46.n128_u64[1] = v30;
        v47.n128_u64[0] = v29;
        v47.n128_u64[1] = v38;
        v48 = v28;
        type metadata accessor for Capsule(0, v40, v39, v32);
        Capsule.version.getter(&v42);
        sub_1ADE92284(v31, v30, v29, v38, v28);
        v33 = a1[2];
        v34 = a1[3];
        *(a1 + 1) = v42;
        sub_1ADE42CB8(v33, v34);
      }
    }
  }
}

void sub_1AE01C2DC(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v6 = v5;
  LODWORD(v123) = a4;
  v122 = a3;
  v125 = a2;
  v120 = a5;
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v108 - v10;
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 88);
  v124 = *(v8 + 80);
  v17 = type metadata accessor for CRSQLStoreBundleCapsule(0, v124, v15, v16);
  v18 = *(a1 + 5);
  v19 = swift_allocObject();
  v20 = v18;

  sub_1AE020CC8(v20, a1);
  if (!v6)
  {
    v116 = v17;
    v21 = *(v19 + 16);
    v22 = v125;
    *(v19 + 16) = v125;
    v121 = 0;
    v23 = v22;

    v24 = v124;
    v117 = type metadata accessor for CRDataStoreBundleNonCoordinated(0, v124, v15, v25);
    v118 = *(a1 + 5);
    v119 = v19;
    v26 = *(v13 + 16);
    v27 = v15;
    v28 = v122;
    v26(v134, v122, v12);
    v26(v11, v28, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage(0, v24, v27, v29);
    v30 = swift_allocObject();
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 1;
    v31 = *&a1[qword_1EB5D7448];
    v32 = *&a1[qword_1EB5D7430];
    v33 = swift_allocObject();
    v34 = v118;

    v35 = v34;
    v36 = v121;
    sub_1AE0197B8(v35, v134, v11, 1, v30, 0, v123 & 1, 0, v31, v32, 0);
    if (v36)
    {
LABEL_4:
    }

    else
    {
      v122 = v27;
      v37 = *(a1 + 5);
      v38 = v116;
      v39 = swift_allocObject();
      v40 = v37;

      sub_1AE020CC8(v40, v33);
      v134 = a1;
      *&v128 = v39;
      WitnessTable = swift_getWitnessTable();
      v42 = swift_getWitnessTable();
      v43 = sub_1ADF9975C(v127, &v128, 0, 0, 0, v38, v38, WitnessTable, v42);
      v121 = 0;
      v44 = v43;
      v109 = v42;
      v118 = v39;
      v45 = MEMORY[0x1E69E7CC0];
      v46 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v47 = sub_1ADDD9ECC(v45);
      v132 = v46;
      v133 = v47;
      v48 = v44 + 56;
      v49 = 1 << *(v44 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & *(v44 + 56);
      v52 = (v49 + 63) >> 6;

      v53 = 0;
      v111 = v44 + 56;
      v110 = v52;
      v112 = v33;
      v113 = v44;
      v54 = v125;
      if (v51)
      {
        while (1)
        {
          v55 = v53;
LABEL_13:
          v56 = (*(v44 + 48) + ((v55 << 10) | (16 * __clz(__rbit64(v51)))));
          v58 = *v56;
          v57 = v56[1];
          v59 = *(v134 + 7);
          sub_1ADDD86D8(*v56, v57);
          sub_1ADDD86D8(v58, v57);
          v60 = v121;
          v61 = sub_1ADE44C48(v58, v57);
          if (v60)
          {

            sub_1ADDCC35C(v58, v57);
            sub_1ADDCC35C(v58, v57);

            return;
          }

          v115 = v62;
          v117 = v61;
          sub_1ADDCC35C(v58, v57);
          *&v128 = v58;
          *(&v128 + 1) = v57;
          sub_1AE023134(&v128, &v126);
          v123 = v126;
          if (!v126)
          {

            *&v128 = 0;
            *(&v128 + 1) = 0xE000000000000000;
            sub_1AE23DA2C();
            MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
            *&v126 = 10278;
            *(&v126 + 1) = 0xE200000000000000;
            v131[0] = v58;
            v131[1] = v57;
            sub_1ADE53D94();
            MEMORY[0x1B26FB670]();

            MEMORY[0x1B26FB670](41, 0xE100000000000000);
            MEMORY[0x1B26FB670](v126, *(&v126 + 1));

            v98 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
            v99 = v128;
            sub_1ADE42E40(v98, v100, v101);
            swift_allocError();
            *v102 = v99;
            *(v102 + 16) = 0;
            swift_willThrow();

            sub_1ADDCC35C(v58, v57);
            goto LABEL_4;
          }

          v121 = 0;
          v63 = type metadata accessor for RetainVisitor();
          v64 = swift_allocObject();
          v65 = MEMORY[0x1E69E7CC0];
          v66 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
          v114 = v59;
          v67 = v66;
          v68 = sub_1ADDD9ECC(v65);
          *(v64 + 16) = v67;
          *(v64 + 24) = v68;
          v129 = v63;
          v130 = &off_1F23C4550;
          *&v128 = v64;
          v69 = *(*v123 + 128);
          swift_retain_n();
          v69(&v128);

          __swift_destroy_boxed_opaque_existential_1(&v128);
          swift_beginAccess();
          v70 = *(v64 + 16);
          v71 = v57;
          v72 = *(v64 + 24);

          sub_1ADDDC8DC(v70, v72);

          sub_1ADDDCE90(v117, v115);

          v73 = *(v134 + 5);
          v74 = *(v64 + 16);
          v75 = *(v64 + 24);
          sub_1ADDD86D8(v58, v71);
          v76 = v73;

          v77 = v121;
          sub_1ADE45848(v76, v58, v71, v74, v75);
          v121 = v77;
          if (v77)
          {
            break;
          }

          v51 &= v51 - 1;

          sub_1ADDCC35C(v58, v71);

          sub_1ADDCC35C(v58, v71);
          v53 = v55;
          v44 = v113;
          v48 = v111;
          v52 = v110;
          v54 = v125;
          if (!v51)
          {
            goto LABEL_10;
          }
        }

        sub_1ADDCC35C(v58, v71);

        sub_1ADDCC35C(v58, v71);
      }

      else
      {
        while (1)
        {
LABEL_10:
          v55 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v55 >= v52)
          {
            break;
          }

          v51 = *(v48 + 8 * v55);
          ++v53;
          if (v51)
          {
            goto LABEL_13;
          }
        }

        v78 = qword_1EB5D7458;
        v79 = v134;
        swift_beginAccess();
        v80 = *&v79[v78];
        v81 = *(v80 + 16);
        if (v81)
        {

          v82 = 0;
          while (v82 < *(v80 + 16))
          {
            v83 = *(v80 + 8 * v82 + 32);
            v84 = *(v83 + 16);
            v85 = *(v83 + 24);

            sub_1ADDD86D8(v84, v85);
            v86 = sub_1AE022014(v84, v85);
            sub_1ADDCC35C(v84, v85);
            if (v86)
            {
              v87 = *(v83 + 16);
              v88 = *(v83 + 24);
              sub_1ADDD86D8(v87, v88);
              v89 = v121;
              sub_1AE0231C0(v87, v88, &v126);
              if (v89)
              {

                sub_1ADDCC35C(v87, v88);

                return;
              }

              sub_1ADDCC35C(v87, v88);
              sub_1AE023260(&v126);
              v121 = 0;
            }

            else
            {
            }

            ++v82;
            v54 = v125;
            if (v81 == v82)
            {

              goto LABEL_27;
            }
          }

          goto LABEL_37;
        }

LABEL_27:
        v90 = v119;
        v131[0] = v119;
        v126 = xmmword_1AE2427C0;
        v91 = v121;
        sub_1ADF9B34C(v132, v133, 0, &v126, v116, &off_1F23C3C18);
        v93 = v124;
        if (v91)
        {

          goto LABEL_4;
        }

        v94 = v92;

        sub_1AE021124(&v126);
        v95 = v134;
        v96 = *(v134 + 2);
        v97 = *(v134 + 3);
        *(v134 + 1) = v126;
        sub_1ADE42CB8(v96, v97);
        sub_1AE01D11C(v94, v54);
        v103 = *(v95 + 4);
        v131[0] = v90;
        swift_beginAccess();
        if (*(v103 + 48) != 1)
        {
          v105 = type metadata accessor for Capsule(0, v93, v122, v104);

          sub_1AE1EAF78(v131, v106, v105, v116, v109);
          v107 = v120;
          swift_endAccess();

          sub_1AE021124(v107);

          return;
        }

LABEL_38:
        __break(1u);
      }
    }
  }
}

void sub_1AE01D11C(uint64_t a1, void *a2)
{
  v26 = sub_1AE23BDDC();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = a2;

    return;
  }

  v22 = a2;
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = objc_opt_self();
  v24 = qword_1EB5D7420;
  v25 = v8;
  v23 = (v4 + 8);
  v21[1] = v29;
  v9 = a2;
  v10 = (a1 + 40);
  while (1)
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    sub_1ADDD86D8(v11, *v10);
    aBlock = sub_1AE23BEAC();
    v28 = v13;
    v29[6] = 47;
    v29[7] = 0xE100000000000000;
    v29[4] = 95;
    v29[5] = 0xE100000000000000;
    sub_1ADE42DEC(aBlock, v13, v14);
    sub_1AE23D82C();

    sub_1AE23BD3C();

    v15 = [v25 defaultManager];
    sub_1AE23BDAC();
    v16 = sub_1AE23CCDC();

    v17 = [v15 fileExistsAtPath_];

    if (v17)
    {
      break;
    }

    (*v23)(v6, v26);
    sub_1ADDCC35C(v11, v12);
LABEL_5:
    v10 += 2;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  v18 = sub_1AE23BD1C();
  v29[2] = sub_1AE018648;
  v29[3] = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29[0] = sub_1ADE8AB00;
  v29[1] = &block_descriptor_50;
  v19 = _Block_copy(&aBlock);

  [v22 coordinateWritingItemAtURL:v18 options:1 error:0 byAccessor:v19];
  _Block_release(v19);

  sub_1ADDCC35C(v11, v12);
  (*v23)(v6, v26);
  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_9:
}

uint64_t sub_1AE01D4C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AE01D510()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AE01D564()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id sub_1AE01D5D8(uint64_t a1)
{
  v2 = v1;
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + qword_1EB5D7420, v5, v7);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_1AE23BDAC();
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  v14 = v5;
  if ((v13 & 1) == 0)
  {
    v16 = [v10 defaultManager];
    v17 = sub_1AE23BD1C();
    v25[0] = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v25];

    if (!v18)
    {
      v22 = v25[0];
      sub_1AE23BC9C();

      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      return v22;
    }

    v19 = v25[0];
    v14 = v5;
  }

  type metadata accessor for CRDataStoreBundleNonCoordinated.AssetClass(0, *(v4 + 80), *(v4 + 88), v15);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v20);
  *(&v24 - 2) = v9;

  sub_1AE018E58(sub_1AE02AD00, (&v24 - 4), a1);
  v22 = v21;

  (*(v6 + 8))(v9, v14);
  return v22;
}

uint64_t sub_1AE01D8E0(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  sub_1ADDD86D8(v6, v7);
  v14 = sub_1AE23BEAC();
  v15 = v8;
  v13[2] = 47;
  v13[3] = 0xE100000000000000;
  v13[0] = 95;
  v13[1] = 0xE100000000000000;
  sub_1ADE42DEC(v14, v8, v9);
  sub_1AE23D82C();
  sub_1ADDCC35C(v6, v7);

  sub_1AE23BD3C();

  v10 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v11 = sub_1AE23CCDC();

  LODWORD(a1) = [v10 fileExistsAtPath_];

  (*(v3 + 8))(v5, v2);
  return a1 ^ 1;
}

void sub_1AE01DAE0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_1AE23BDDC();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_1AE01D5D8(a1);
  if (!v3)
  {
    v39 = 0;
    if (v14[2])
    {
      v16 = *(v7 + 80);
      v17 = *(v7 + 88);
      v38 = v14;
      v34 = v17;
      v35 = v16;
      type metadata accessor for CRDataStoreBundleNonCoordinated.AssetClass(0, v16, v17, v15);
      v37 = swift_allocObject();
      *(v37 + 16) = MEMORY[0x1E69E7CC0];
      v18 = qword_1EB5D7420;
      v36 = dispatch_group_create();
      dispatch_group_enter(v36);
      type metadata accessor for CRDataStoreBundleNonCoordinated.CoordinatorWrapper(0, v16, v17, v19);
      v33 = swift_allocObject();
      *(v33 + 16) = a2;
      v20 = a2;
      sub_1AE23D19C();
      v21 = sub_1AE23D1BC();
      (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
      v22 = v40;
      (*(v40 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[v18], v8);
      v23 = (*(v22 + 80) + 56) & ~*(v22 + 80);
      v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v32 = v8;
      v26 = swift_allocObject();
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
      v27 = v34;
      *(v26 + 4) = v35;
      *(v26 + 5) = v27;
      *(v26 + 6) = v38;
      (*(v22 + 32))(&v26[v23], v10, v32);
      *&v26[v24] = v33;
      v28 = v36;
      *&v26[v25] = v37;
      *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

      v29 = v28;
      sub_1AE217C10(0, 0, v13, &unk_1AE251B40, v26);

      sub_1AE23D64C();
      swift_beginAccess();

      sub_1ADFB6D40(v30);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1AE01DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v10 = sub_1AE23BDDC();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01DF80, 0, 0);
}

uint64_t sub_1AE01DF80()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v0[31] = 0;
    v0[32] = v3;
    v4 = v0[29];
    v16 = v0[21];
    v5 = *(v1 + 32);
    v0[33] = v5;
    v6 = v5[2];
    v7 = v5[3];

    sub_1ADDD86D8(v6, v7);
    v8 = sub_1AE23BEAC();
    v0[13] = v8;
    v0[14] = v9;
    v0[15] = 47;
    v0[16] = 0xE100000000000000;
    v0[17] = 95;
    v0[18] = 0xE100000000000000;
    sub_1ADE42DEC(v8, v9, v10);
    sub_1AE23D82C();
    sub_1ADDCC35C(v6, v7);

    sub_1AE23BD3C();

    v11 = swift_task_alloc();
    v0[34] = v11;
    *(v11 + 16) = v16;
    *(v11 + 24) = v4;
    v12 = v5[4];
    v0[35] = v12;
    v0[36] = *(v12 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE01E19C, 0, 0);
  }

  else
  {
    v13 = v0[23];
    *(v0[22] + 16) = MEMORY[0x1E69E7CC0];

    dispatch_group_leave(v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1AE01E19C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v0[2] = v0;
  v0[3] = sub_1AE01E2D4;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  v0[10] = &unk_1AE2544C0;
  v0[11] = v5;
  *(v5 + 16) = v4;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE01E2D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE01E3B4, 0, 0);
}

uint64_t sub_1AE01E3B4()
{
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1AE01E47C;
  v3 = v0[33];
  v2 = v0[34];

  return sub_1AE0254E0(v3, 0, &unk_1AE251B60, v2);
}

uint64_t sub_1AE01E47C(char a1)
{
  *(*v2 + 304) = a1;

  if (v1)
  {

    v3 = sub_1AE01E86C;
  }

  else
  {

    v3 = sub_1AE01E5A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AE01E5A8()
{
  v1 = *(v0 + 304);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1ADE556B0(0, *(v2 + 2) + 1, 1, *(v0 + 256));
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1ADE556B0((v4 > 1), v5 + 1, 1, v2);
    }

    v6 = *(v0 + 264);
    *(v2 + 2) = v5 + 1;
    *&v2[8 * v5 + 32] = v6;
  }

  else
  {

    v2 = *(v0 + 256);
  }

  v7 = *(v0 + 240);
  v8 = *(v0 + 248) + 1;
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  if (v8 == v7)
  {
    v9 = *(v0 + 184);
    *(*(v0 + 176) + 16) = v2;

    dispatch_group_leave(v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 248) + 1;
    *(v0 + 248) = v12;
    *(v0 + 256) = v2;
    v13 = *(v0 + 232);
    v22 = *(v0 + 168);
    v14 = *(*(v0 + 152) + 8 * v12 + 32);
    *(v0 + 264) = v14;
    v15 = v14[2];
    v16 = v14[3];

    sub_1ADDD86D8(v15, v16);
    v17 = sub_1AE23BEAC();
    *(v0 + 104) = v17;
    *(v0 + 112) = v18;
    *(v0 + 120) = 47;
    *(v0 + 128) = 0xE100000000000000;
    *(v0 + 136) = 95;
    *(v0 + 144) = 0xE100000000000000;
    sub_1ADE42DEC(v17, v18, v19);
    sub_1AE23D82C();
    sub_1ADDCC35C(v15, v16);

    sub_1AE23BD3C();

    v20 = swift_task_alloc();
    *(v0 + 272) = v20;
    *(v20 + 16) = v22;
    *(v20 + 24) = v13;
    v21 = v14[4];
    *(v0 + 280) = v21;
    *(v0 + 288) = *(v21 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE01E19C, 0, 0);
  }
}

uint64_t sub_1AE01E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1AE23BDDC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01E940, 0, 0);
}

void sub_1AE01E940()
{
  v1 = *(v0[10] + 16);
  if (v1)
  {
    v2 = *(v0[10] + 16);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v1 = 0;
  }

  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v1;
  v8 = sub_1AE23BD1C();
  (*(v5 + 16))(v3, v6, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v3, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AE02ACF4;
  *(v11 + 24) = v10;
  v0[6] = sub_1AE02ACF8;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1ADE8AB00;
  v0[5] = &block_descriptor_7;
  v12 = _Block_copy(v0 + 2);

  [v2 coordinateWritingItemAtURL:v8 options:0 error:0 byAccessor:v12];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    *v0[8] = 1;

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_1AE01EB90(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1AE01EBDC(uint64_t a1)
{
  sub_1AE0251F8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1AE01ECA0(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_1AE23BDDC();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01EDF4, 0, 0);
}

uint64_t sub_1AE01EDF4()
{
  v1 = sub_1AE01D5D8(v0[22]);
  v0[32] = v1;
  v4 = v1[2];
  v0[33] = v4;
  if (v4)
  {
    v5 = v0[23];
    if (v5)
    {
      v6 = v0[23];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    }

    type metadata accessor for CRDataStoreBundleNonCoordinated.FileCoordinatorWrapper(0, *(v0[25] + 80), *(v0[25] + 88), v2);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = qword_1EB5D7420;
    v0[34] = v8;
    v0[35] = v9;
    v10 = MEMORY[0x1E69E7CC0];
    v0[36] = 0;
    v0[37] = v10;
    v11 = v0[32];
    v12 = *(v11 + 16);
    v13 = v5;
    if (v12)
    {
      v24 = v0[31];
      v16 = *(v11 + 32);
      v0[38] = v16;
      v17 = v16[2];
      v18 = v16[3];

      sub_1ADDD86D8(v17, v18);
      v19 = sub_1AE23BEAC();
      v0[16] = v19;
      v0[17] = v20;
      v0[18] = 47;
      v0[19] = 0xE100000000000000;
      v0[20] = 95;
      v0[21] = 0xE100000000000000;
      sub_1ADE42DEC(v19, v20, v21);
      sub_1AE23D82C();
      sub_1ADDCC35C(v17, v18);

      sub_1AE23BD3C();

      v22 = swift_task_alloc();
      v0[39] = v22;
      *(v22 + 16) = v8;
      *(v22 + 24) = v24;
      v23 = v16[4];
      v0[40] = v23;
      v0[41] = *(v23 + 24);

      v13 = sub_1AE01F0A0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1AE01F0A0()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v0[2] = v0;
  v0[3] = sub_1AE01F1D8;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  v0[10] = &unk_1AE251BB0;
  v0[11] = v5;
  *(v5 + 16) = v4;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE01F1D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE01F2B8, 0, 0);
}

uint64_t sub_1AE01F2B8()
{
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_1AE01F380;
  v3 = v0[38];
  v2 = v0[39];

  return sub_1AE0254E0(v3, 0, &unk_1AE251BA8, v2);
}

uint64_t sub_1AE01F380(char a1)
{
  *(*v2 + 344) = a1;

  if (v1)
  {

    v3 = sub_1AE01F7BC;
  }

  else
  {

    v3 = sub_1AE01F4AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AE01F4AC()
{
  v1 = *(v0 + 344);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 296);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1ADE556B0(0, *(v2 + 2) + 1, 1, *(v0 + 296));
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1ADE556B0((v4 > 1), v5 + 1, 1, v2);
    }

    v6 = *(v0 + 304);
    *(v2 + 2) = v5 + 1;
    *&v2[8 * v5 + 32] = v6;
  }

  else
  {

    v2 = *(v0 + 296);
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 288) + 1;
  v9 = (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  if (v8 == v7)
  {

    swift_beginAccess();
    sub_1ADFB6D40(v2);
    swift_endAccess();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 288) + 1;
    *(v0 + 288) = v14;
    *(v0 + 296) = v2;
    v15 = *(v0 + 256);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 272);
      v16 = *(v0 + 248);
      v17 = *(v15 + 8 * v14 + 32);
      *(v0 + 304) = v17;
      v18 = v17[2];
      v19 = v17[3];

      sub_1ADDD86D8(v18, v19);
      v20 = sub_1AE23BEAC();
      *(v0 + 128) = v20;
      *(v0 + 136) = v21;
      *(v0 + 144) = 47;
      *(v0 + 152) = 0xE100000000000000;
      *(v0 + 160) = 95;
      *(v0 + 168) = 0xE100000000000000;
      sub_1ADE42DEC(v20, v21, v22);
      sub_1AE23D82C();
      sub_1ADDCC35C(v18, v19);

      sub_1AE23BD3C();

      v23 = swift_task_alloc();
      *(v0 + 312) = v23;
      *(v23 + 16) = v25;
      *(v23 + 24) = v16;
      v24 = v17[4];
      *(v0 + 320) = v24;
      *(v0 + 328) = *(v24 + 24);

      v9 = sub_1AE01F0A0;
      v10 = 0;
      v11 = 0;
    }

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AE01F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1AE23BDDC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE01F890, 0, 0);
}

void sub_1AE01F890()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];
  v5 = *(v0[10] + 16);
  v6 = sub_1AE23BD1C();
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AE02BD54;
  *(v9 + 24) = v8;
  v0[6] = sub_1AE02BD58;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1ADE8AB00;
  v0[5] = &block_descriptor_79;
  v10 = _Block_copy(v0 + 2);

  [v5 coordinateWritingItemAtURL:v6 options:0 error:0 byAccessor:v10];

  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    *v0[8] = 1;

    v11 = v0[1];

    v11();
  }
}

void sub_1AE01FAB4()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AE23BD1C();
  v2 = sub_1AE23BD1C();
  v8[0] = 0;
  v3 = [v0 copyItemAtURL:v1 toURL:v2 error:v8];

  v4 = v8[0];
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    v7 = sub_1AE23BC9C();

    swift_willThrow();
  }
}

void sub_1AE01FBEC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AE23BD1C();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1AE23BC9C();

    swift_willThrow();
  }
}

uint64_t sub_1AE01FD0C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v14[2] = *(*v4 + 80);
  v14[3] = a3;
  v14[4] = *(v9 + 88);
  v14[5] = a4;
  v14[6] = a2;
  v10 = qword_1EB5D7440;
  swift_beginAccess();
  sub_1AE01B8CC(sub_1AE02AA0C, v14, (v4 + v10), a1);
  result = swift_endAccess();
  if (!v5)
  {
    v12 = (*(a4 + 32))(a3, a4);
    return sub_1AE01B9D0(v12, (v4 + qword_1EB5D7428), v13) & 0x1FFFF;
  }

  return result;
}

void sub_1AE01FE30(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v54 = a4;
  v6 = *a1;
  v7 = a2[1];
  v51 = *a2;
  v52 = v7;
  v53 = a2[2];
  v8 = *(a3 + 40);
  v50 = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v8, &v50, 0, 0xF000000000000000);
  v34 = v52;
  sub_1ADE6A0EC(&v42);
  sub_1ADE73BC8(v9, v10, v11);
  v12 = sub_1AE23C51C();
  if (v4)
  {

    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_1ADE6AF00(&v34);
  }

  else
  {
    v14 = a3;
    v15 = v54;
    v29 = v6;
    v30 = v12;
    v31 = v13;

    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_1ADE6AF00(&v34);
    v16 = v51;
    if (v51)
    {
      v32 = v51;
      swift_retain_n();
      v28 = sub_1AE01FD0C(&v33, &v32, &type metadata for AnyCRDT, &protocol witness table for AnyCRDT);

      v17 = *(v14 + 40);
      v27 = v33;
      LOBYTE(v32) = v33;
      swift_allocObject();
      CREncoder.init(_:version:fileSignature:)(v17, &v32, 0, 0xF000000000000000);
      v32 = v16;
      v26[1] = v15 + 2;
      v20 = sub_1ADE694A4(&v32, v18, v19);
      v22 = v21;

      v54 = v26;
      MEMORY[0x1EEE9AC00](v23);
      v25 = v30;
      v24 = v31;
      sub_1AE23D6AC();
      sub_1ADDCC35C(v20, v22);
      sub_1ADDCC35C(v25, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE020144(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a6 + 32);
  v17 = *(a6 + 40);
  LOBYTE(v39) = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  v18 = v15;
  CREncoder.init(_:version:fileSignature:)(v18, &v39, 0, 0xF000000000000000);
  sub_1ADE6B3B8(v16, v17);
  if (v10)
  {
  }

  else
  {
    v31 = v16;
    v32 = a2;
    v33 = v19;
    v34 = v20;

    v43 = 0;
    v44 = 0;

    sub_1AE028F7C(a7, v45, &v43, v14);
    v21 = v14;
    swift_beginAccess();
    sub_1ADDCEE40(v14 + 88, &v37, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v38)
    {
      sub_1ADE23E6C(&v37, &v39);
      v23 = v41;
      v22 = v42;
      __swift_project_boxed_opaque_existential_1(&v39, v41);
      v21 = v14;
      v24 = (*(v22 + 8))(v32, a3, v23, v22);
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    else
    {
      sub_1ADDCEDE0(&v37, &qword_1EB5B9DB0, &qword_1AE240B80);
      v24 = a2;
      sub_1ADDD86D8(a2, a3);
      v26 = a3;
    }

    sub_1ADDD86D8(a4, a5);
    sub_1ADDD86D8(v33, v34);
    sub_1ADDD86D8(v24, v26);
    sub_1AE02921C(a7, v45, a4, a5, v33, v34, v24, v26, v21, 0);
    sub_1ADDCC35C(v24, v26);
    v39 = v31;
    v40 = v17;
    v27 = v43;
    if (v43)
    {
      v28 = v44;

      sub_1ADDDCE90(v27, v28);
      LOBYTE(v37) = BYTE4(a9) & 1;
      sub_1ADE43570(((0x3020101u >> (8 * a9)) & 3), (a9 & 0x1FFFFFFFFuLL) >> 16);

      sub_1ADDCC35C(v33, v34);
      sub_1ADE42CB8(v27, v28);
      v29 = v39;
      v30 = v40;
      swift_beginAccess();
      sub_1ADDDC8DC(v29, v30);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE0204C0(uint64_t a1, const char *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v8 = sub_1ADDD9ECC(v6);
  v9 = sub_1ADDCC6B4(&unk_1F23BC140);
  v11 = v10;
  LOBYTE(v34) = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  v12 = v5;
  CREncoder.init(_:version:fileSignature:)(v12, &v34, 0, 0xF000000000000000);
  sub_1ADE6B3B8(v7, v8);
  if (v3)
  {
    sub_1ADDCC35C(v9, v11);
  }

  else
  {
    v27 = v8;
    v28 = v13;
    v15 = a2;
    v29 = v14;

    v38 = 0;
    v39 = 0;

    sub_1AE028F7C(v9, v11, &v38, v4);
    v26 = v7;
    swift_beginAccess();
    sub_1ADDCEE40(v4 + 88, &v32, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v33)
    {
      sub_1ADE23E6C(&v32, &v34);
      v16 = v9;
      v17 = v11;
      v18 = v36;
      v19 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v20 = v19;
      v11 = v17;
      v9 = v16;
      v15 = (*(v20 + 8))(a2, a3, v18);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v34);
    }

    else
    {
      sub_1ADDCEDE0(&v32, &qword_1EB5B9DB0, &qword_1AE240B80);
      v22 = a3;
      sub_1ADDD86D8(a2, a3);
    }

    v23 = v12;

    sub_1ADDD86D8(v28, v29);
    sub_1ADDD86D8(v15, v22);
    sub_1AE02921C(v9, v11, 0, 0xC000000000000000, v28, v29, v15, v22, v4, 0);
    sub_1ADDCC35C(v15, v22);
    v34 = v26;
    v35 = v27;
    v24 = v38;
    if (v38)
    {
      v25 = v39;
      sub_1ADDDCE90(v38, v39);
      sub_1ADE43570(1, 0x10000);
      sub_1ADDCC35C(v9, v11);

      sub_1ADDCC35C(v28, v29);
      sub_1ADE42CB8(v24, v25);
      sub_1ADDDC8DC(v34, v35);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE020878(void *a1, uint64_t a2)
{
  sub_1AE23D6AC();
  if (!v2)
  {
    sub_1AE01D11C(a2, a1);
  }
}

const char *sub_1AE0208E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  sqlite3_step(*(v1 + 128));
  sqlite3_reset(*(v1 + 128));
  return sub_1ADE43D40(1702257011, 0xE400000000000000);
}

void sub_1AE020930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    if (*(a2 + qword_1EB5D7460) == 1)
    {
      sub_1AE1A3C98(a5, a6, a1, aBlock);
    }

    else
    {
      sub_1AE1A4038(a5, a6, a1, aBlock);
    }

    v14 = aBlock[0];
    swift_beginAccess();
    *(a3 + 16) = v14;
  }

  swift_beginAccess();
  if (!*(a3 + 16))
  {
    sub_1AE1A3880(a5, a6, aBlock);
    v15 = aBlock[0];
    v16 = *(a2 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AE02AD30;
    *(v18 + 24) = v17;
    aBlock[4] = sub_1ADDF711C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDF70CC;
    aBlock[3] = &block_descriptor_44;
    v19 = _Block_copy(aBlock);

    dispatch_sync(v16, v19);
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = v15;
    }
  }
}

uint64_t sub_1AE020BE8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5D7458;
  swift_beginAccess();
  v5 = *(a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1ADE556B0(0, *(v5 + 2) + 1, 1, v5);
    *(a1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1ADE556B0((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a2;
  *(a1 + v4) = v5;
  swift_endAccess();
}

void *sub_1AE020CC8(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v41 - v7;
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v45 = v9;
  v13 = *(v9 + 56);
  v12 = v9 + 56;
  v46 = v13;
  (v13)(v3 + qword_1EB5D7478, 1, 1, v8, v10);
  v3[3] = a2;
  v3[4] = a1;
  v14 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDataStorePartialDecodeContext();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  v15[2] = MEMORY[0x1E69E7CC8];
  v15[3] = v16;
  v15[4] = v14;
  v3[5] = v15;
  v17 = *(a2 + 56);
  v18 = a1;

  v19 = sub_1ADDCC6B4(&unk_1F23BBD98);
  v21 = v20;

  v22 = v54;
  sub_1AE026EA8(v19, v21, v17, &v50);
  if (v22)
  {

    sub_1ADDCC35C(v19, v21);
  }

  else
  {
    v43 = v12;
    v44 = v3 + 6;
    v54 = v8;
    sub_1ADDCC35C(v19, v21);
    v26 = v51;
    if (v51 >> 60 == 15)
    {
      sub_1ADE42E40(v23, v24, v25);
      swift_allocError();
      *v27 = xmmword_1AE251850;
      *(v27 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v28 = v50;
      v41 = v52;
      v42 = v53;
      v29 = v3[5];
      type metadata accessor for CRDecoder();
      inited = swift_initStackObject();
      v31 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v31;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v29;
      *(inited + 24) = v31;

      v32 = v48;
      sub_1ADE631A8(&v49, v48, v28, v26);
      sub_1AE02AA94(v28, v26, v41, v42);

      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v33 = v49;
      v34 = v47;
      v35 = v32;
      v36 = v54;
      (*(v45 + 32))(v47, v35, v54);
      v46(v34, 0, 1, v36);
      swift_beginAccess();
      v37 = v3[6];
      v38 = v3[7];
      *(v3 + 3) = v33;
      sub_1ADE42CB8(v37, v38);
      v39 = qword_1EB5D7478;
      swift_beginAccess();
      sub_1AE02AD38(v34, v3 + v39);
      swift_endAccess();
    }
  }

  return v3;
}

void sub_1AE021124(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(v1 + 56);
    *a1 = v3;
    a1[1] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AE021180(void (*a1)(void *))
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  swift_beginAccess();
  if (!v1[6])
  {
    __break(1u);
    goto LABEL_13;
  }

  v61 = v2;
  a1(v1 + 6);
  swift_endAccess();
  v8 = v1[4];
  LOBYTE(v54) = 1;
  v50 = type metadata accessor for CREncoder();
  swift_initStackObject();
  v49 = v8;
  CREncoder.init(_:version:fileSignature:)(v49, &v54, 0, 0xF000000000000000);
  v48 = v1[3];
  sub_1AE018590(&v56);
  v9 = v60;
  if (v60 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v58;
  v10 = v59;
  v12 = v57;
  v13 = v56;
  sub_1ADDD86D8(v56, v57);
  sub_1ADE92284(v13, v12, v11, v10, v9);
  *&v51 = v13;
  *(&v51 + 1) = v12;
  if (!v3[6])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v3[7];
  *&v53 = v3[6];
  *(&v53 + 1) = v14;
  v15 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1ADDCEE40(v3 + v15, v7, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v16 = sub_1AE23BFEC();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v7, 1, v16);
  v19 = v61;
  if (v18 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = sub_1ADE68DC4(&v51, &v53, 0);
  if (v19)
  {

    sub_1ADDCC35C(v51, *(&v51 + 1));
    (*(v17 + 8))(v7, v16);
    return;
  }

  v47 = v20;
  v61 = v21;

  sub_1ADDCC35C(v51, *(&v51 + 1));
  (*(v17 + 8))(v7, v16);
  v22 = *(v48 + 56);

  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v25 = sub_1ADDD9ECC(v23);
  v26 = sub_1ADDCC6B4(&unk_1F23BBE10);
  v28 = v27;
  LOBYTE(v56) = 1;
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v49, &v56, 0, 0xF000000000000000);
  sub_1ADE6B3B8(v24, v25);
  v49 = v29;
  v50 = v30;

  v54 = 0;
  v55 = 0;

  sub_1AE028F7C(v26, v28, &v54, v22);
  v44 = v26;
  v45 = v28;
  swift_beginAccess();
  sub_1ADDCEE40(v22 + 88, &v51, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v52)
  {
    sub_1ADE23E6C(&v51, &v56);
    v31 = v59;
    v32 = v60;
    __swift_project_boxed_opaque_existential_1(&v56, v59);
    v48 = (*(v32 + 8))(v47, v61, v31, v32);
    v46 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    sub_1ADDCEDE0(&v51, &qword_1EB5B9DB0, &qword_1AE240B80);
    v34 = v47;
    v35 = v61;
    sub_1ADDD86D8(v47, v61);
    v48 = v34;
    v46 = v35;
  }

  v37 = v49;
  v36 = v50;
  sub_1ADDD86D8(v49, v50);
  v38 = v48;
  v39 = v46;
  sub_1ADDD86D8(v48, v46);
  sub_1AE02921C(v44, v45, 0, 0xC000000000000000, v37, v36, v38, v39, v22, 0);
  sub_1ADDCC35C(v48, v46);
  v56 = v24;
  v57 = v25;
  v40 = v54;
  if (v54)
  {
    v41 = v55;
    sub_1ADDDCE90(v54, v55);
    sub_1ADE43570(1, 0x10000);
    v42 = v44;

    sub_1ADDCC35C(v42, v45);
    sub_1ADDCC35C(v47, v61);
    sub_1ADDCC35C(v49, v50);

    sub_1ADE42CB8(v40, v41);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1AE0217D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1ADDCEE40(v1 + v6, v5, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

void sub_1AE021908(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = *(v10 + 56);
  v54 = v9;
  v11(v8, 0, 1, v9);
  v12 = qword_1EB5D7478;
  swift_beginAccess();
  sub_1AE02AD38(v8, v2 + v12);
  swift_endAccess();
  v13 = v2[4];
  LOBYTE(v58) = 1;
  v51 = type metadata accessor for CREncoder();
  swift_initStackObject();
  v50 = v13;
  v52 = CREncoder.init(_:version:fileSignature:)(v50, &v58, 0, 0xF000000000000000);
  v49 = v2[3];
  sub_1AE018590(&v60);
  v14 = v64;
  if (v64 == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = v62;
  v15 = v63;
  v17 = v60;
  v18 = v61;
  sub_1ADDD86D8(v60, v61);
  sub_1ADE92284(v17, v18, v16, v15, v14);
  *&v55 = v17;
  *(&v55 + 1) = v18;
  swift_beginAccess();
  if (!v2[6])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v2[7];
  *&v57 = v2[6];
  *(&v57 + 1) = v19;
  v20 = v65;
  sub_1ADDCEE40(v2 + v12, v65, &qword_1EB5BA2F8, &unk_1AE2422B0);
  v21 = v54;
  if ((*(v10 + 48))(v20, 1, v54) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v53;
  v23 = sub_1ADE68DC4(&v55, &v57, 0);
  if (v22)
  {

    sub_1ADDCC35C(v55, *(&v55 + 1));
    (*(v10 + 8))(v20, v21);
    return;
  }

  v48 = v23;
  v53 = v24;

  sub_1ADDCC35C(v55, *(&v55 + 1));
  (*(v10 + 8))(v20, v21);
  v25 = *(v49 + 56);

  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v28 = sub_1ADDD9ECC(v26);
  v29 = sub_1ADDCC6B4(&unk_1F23BBE38);
  v31 = v30;
  LOBYTE(v60) = 1;
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(v50, &v60, 0, 0xF000000000000000);
  sub_1ADE6B3B8(v27, v28);
  v54 = v32;
  v65 = v33;

  v58 = 0;
  v59 = 0;

  sub_1AE028F7C(v29, v31, &v58, v25);
  v50 = v31;
  swift_beginAccess();
  sub_1ADDCEE40(v25 + 88, &v55, &qword_1EB5B9DB0, &qword_1AE240B80);
  v49 = v29;
  if (v56)
  {
    sub_1ADE23E6C(&v55, &v60);
    v34 = v63;
    v35 = v64;
    __swift_project_boxed_opaque_existential_1(&v60, v63);
    v36 = (*(v35 + 8))(v48, v53, v34, v35);
    v51 = v37;
    v52 = v36;
    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    sub_1ADDCEDE0(&v55, &qword_1EB5B9DB0, &qword_1AE240B80);
    v38 = v48;
    v39 = v53;
    sub_1ADDD86D8(v48, v53);
    v51 = v39;
    v52 = v38;
  }

  v40 = v54;
  v41 = v65;
  sub_1ADDD86D8(v54, v65);
  v43 = v51;
  v42 = v52;
  sub_1ADDD86D8(v52, v51);
  sub_1AE02921C(v49, v50, 0, 0xC000000000000000, v40, v41, v42, v43, v25, 0);
  v44 = v49;
  sub_1ADDCC35C(v52, v51);
  v60 = v27;
  v61 = v28;
  v45 = v58;
  if (v58)
  {
    v46 = v59;
    sub_1ADDDCE90(v58, v59);
    sub_1ADE43570(1, 0x10000);

    sub_1ADDCC35C(v44, v50);
    sub_1ADDCC35C(v48, v53);
    sub_1ADDCC35C(v54, v65);

    sub_1ADE42CB8(v45, v46);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1AE021FC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  LOBYTE(v1) = sub_1ADE464B4(v1, v2);

  return v1 & 1;
}

id sub_1AE022014(uint64_t a1, unint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = sub_1AE23BDDC();
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - v8;
  v9 = *(v2 + 24);
  v10 = qword_1EB5D7458;
  swift_beginAccess();
  v52 = v9;
  v11 = *(v9 + v10);
  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = v12;
    v14 = 0;
    if (a1)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2 == 0xC000000000000000;
    }

    v16 = !v15;
    v63 = v16;
    v17 = a2 >> 62;
    v18 = __OFSUB__(HIDWORD(a1), a1);
    v59 = v18;
    v57 = a2;
    v58 = HIDWORD(a1) - a1;
    v61 = v12;
    v62 = BYTE6(a2);
    v56 = a1;
    v60 = v11;
    v50 = v5;
    while (1)
    {
      if (v14 >= *(v11 + 16))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      v19 = *(v11 + 8 * v14 + 32);
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v20 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          goto LABEL_37;
        }

        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_71;
        }

        if (v17 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v22)
      {
        LODWORD(v26) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_70;
        }

        v26 = v26;
        if (v17 <= 1)
        {
LABEL_34:
          v30 = v62;
          if (v17)
          {
            v30 = v58;
            if (v59)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v26 = BYTE6(v20);
        if (v17 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v17 != 2)
      {
        if (!v26)
        {
          goto LABEL_65;
        }

        goto LABEL_13;
      }

      v32 = *(a1 + 16);
      v31 = *(a1 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_68;
      }

LABEL_40:
      if (v26 == v30)
      {
        if (v26 < 1)
        {
          goto LABEL_65;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            *(&v67 + 6) = 0;
            *&v67 = 0;

            sub_1ADDD86D8(v21, v20);
            goto LABEL_62;
          }

          v33 = *(v21 + 16);
          v51 = *(v21 + 24);

          sub_1ADDD86D8(v21, v20);
          v34 = sub_1AE23BB7C();
          if (v34)
          {
            v35 = sub_1AE23BBAC();
            if (__OFSUB__(v33, v35))
            {
              goto LABEL_74;
            }

            v34 += v33 - v35;
          }

          if (__OFSUB__(v51, v33))
          {
            goto LABEL_73;
          }

          sub_1AE23BB9C();
          v36 = v34;
          a1 = v56;
          a2 = v57;
          sub_1ADDD8820(v36, v56, v57, &v67);

          sub_1ADDCC35C(v21, v20);
          v11 = v60;
          if (v67)
          {
            goto LABEL_65;
          }
        }

        else if (v22)
        {
          if (v21 >> 32 < v21)
          {
            goto LABEL_72;
          }

          sub_1ADDD86D8(v21, v20);
          v37 = sub_1AE23BB7C();
          if (v37)
          {
            v38 = sub_1AE23BBAC();
            if (__OFSUB__(v21, v38))
            {
              goto LABEL_75;
            }

            v37 += v21 - v38;
          }

          sub_1AE23BB9C();
          v39 = v37;
          a1 = v56;
          a2 = v57;
          sub_1ADDD8820(v39, v56, v57, &v67);

          sub_1ADDCC35C(v21, v20);
          v5 = v50;
          v11 = v60;
          if (v67)
          {
LABEL_65:

            return 0;
          }
        }

        else
        {
          *&v67 = *(v19 + 16);
          WORD4(v67) = v20;
          BYTE10(v67) = BYTE2(v20);
          BYTE11(v67) = BYTE3(v20);
          BYTE12(v67) = BYTE4(v20);
          BYTE13(v67) = BYTE5(v20);

          sub_1ADDD86D8(v21, v20);
          v11 = v60;
LABEL_62:
          sub_1ADDD8820(&v67, a1, a2, v66);

          sub_1ADDCC35C(v21, v20);
          if (v66[0])
          {
            goto LABEL_65;
          }
        }

        v13 = v61;
      }

LABEL_13:
      if (v13 == ++v14)
      {
        goto LABEL_64;
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
    if (((v25 | v63) & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_37:
    v26 = 0;
    if (v17 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_64:

  v40 = v55;
  v41 = v53;
  (*(v55 + 16))(v53, v52 + qword_1EB5D7420, v5);
  *&v67 = sub_1AE23BEAC();
  *(&v67 + 1) = v42;
  v66[0] = 47;
  v66[1] = 0xE100000000000000;
  v64 = 95;
  v65 = 0xE100000000000000;
  sub_1ADE42DEC(v67, v42, v43);
  sub_1AE23D82C();

  v44 = v54;
  sub_1AE23BD3C();

  v45 = *(v40 + 8);
  v45(v41, v5);
  v46 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v47 = sub_1AE23CCDC();

  v48 = [v46 fileExistsAtPath_];

  v45(v44, v5);
  return v48;
}

uint64_t sub_1AE0226BC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(*(v2 + 24) + 56);
  v9 = xmmword_1AE251860;
  swift_retain_n();
  sub_1AE028B54(v5, v6, v7, a2, &v9);

  result = v9;
  if (v3)
  {
    return sub_1ADDDDEBC(v9, *(&v9 + 1));
  }

  return result;
}

void sub_1AE022744(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 24) + 56);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = 2;
  swift_retain_n();
  sub_1ADDD86D8(v5, v6);
  sub_1AE028D68(v5, v6, v4, a2, &v7);
  sub_1ADDCC35C(v5, v6);
}

uint64_t sub_1AE0227EC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  v22[0] = 0;
  sub_1AE023370(&v23, v22, &type metadata for AnyCRDT, &off_1F23C9418, &v18);
  if (!v2)
  {
    v5 = v18;
    if (v18)
    {

      v6 = type metadata accessor for RetainVisitor();
      v7 = swift_allocObject();
      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v10 = sub_1ADDD9ECC(v8);
      *(v7 + 16) = v9;
      *(v7 + 24) = v10;
      v20 = v6;
      v21 = &off_1F23C4550;
      v18 = v7;
      v11 = *(*v5 + 128);

      v11(&v18);

      __swift_destroy_boxed_opaque_existential_1(&v18);
      swift_beginAccess();
      v1 = *(v7 + 16);
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      v23 = 10278;
      v24 = 0xE200000000000000;
      v22[0] = v3;
      v22[1] = v4;
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v23, v24);

      v13 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v1 = v18;
      v14 = v19;
      sub_1ADE42E40(v13, v15, v16);
      swift_allocError();
      *v17 = v1;
      *(v17 + 8) = v14;
      *(v17 + 16) = 0;
      swift_willThrow();
    }
  }

  return v1;
}

void sub_1AE022A20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v26 = *a1;
  v7 = sub_1AE0227EC(&v26);
  if (!v4)
  {
    v8 = v7;
    if (v7)
    {
      v27 = a3;

      v9 = 0;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 64);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
        v14 = v9;
LABEL_11:
        v15 = *(*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
        v12 &= v12 - 1;
        v26 = v15;
        v16 = *(a4 + 16);
        v17 = sub_1ADDD86D8(v15, *(&v15 + 1));
        v20 = sub_1ADF4ADD8(v17, v18, v19);
        v16(&v26, &type metadata for AnyCRDT, v20, v27, a4);
        sub_1ADDCC35C(v26, *(&v26 + 1));
      }

      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return;
        }

        v12 = *(v8 + 64 + 8 * v14);
        ++v9;
        if (v12)
        {
          v9 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000015, 0x80000001AE262250);
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](10278, 0xE200000000000000);

      v21 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v22 = v26;
      sub_1ADE42E40(v21, v23, v24);
      swift_allocError();
      *v25 = v22;
      *(v25 + 16) = 0;
      swift_willThrow();
    }
  }
}

double sub_1AE022C64(_BYTE *a1, uint64_t *a2, __int128 *a3, unint64_t *a4, uint64_t *a5, int64_t *a6)
{
  v11 = *a4;
  v10 = a4[1];
  v12 = *a5;
  v14 = *a6;
  v13 = a6[1];
  *&v44 = *a4;
  *(&v44 + 1) = v10;
  v40[0] = 0;
  sub_1AE023370(&v44, v40, &type metadata for AnyCRDT, &off_1F23C9418, &v41);
  if (!v6)
  {
    v39 = v13;
    if (v41)
    {
      v36 = a2;
      v37 = a3;
      v45 = v41;
      v43 = v42;
      v41 = v11;
      *&v42 = v10;
      v16 = sub_1AE0227EC(&v41);
      if (v16)
      {
        v24 = v45;
        v35 = v16;
        v34 = v17;
        if (v12 == v45)
        {
          if (qword_1ED9670C0 != -1)
          {
            swift_once();
          }

          v25 = word_1ED96F220;
          v38 = HIBYTE(word_1ED96F220);
          v26 = byte_1ED96F222;
          LOBYTE(v41) = word_1ED96F220;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = (*(*v24 + 168))();
          }

          (*(*v24 + 96))(&v41, v12);
          v25 = v41;
          v38 = BYTE1(v41);
          v26 = BYTE2(v41);
        }

        sub_1ADF5F770(v39, &v41);
        sub_1ADF5F770(v14, &v44);
        LOWORD(v40[0]) = v44;
        BYTE2(v40[0]) = BYTE2(v44);
        v33 = v40;
        MergeResult.merge(_:)(v33);
        v41 = v11;
        *&v42 = v10;
        v44 = v43;
        v40[0] = v24;

        sub_1AE024678(&v41, &v44, v40, v35, v34);

        *a1 = v25;
        a1[1] = v38;
        a1[2] = v26;
        *v36 = v24;
        result = *&v43;
        *v37 = v43;
      }

      else
      {

        v41 = 0;
        *&v42 = 0xE000000000000000;
        sub_1AE23DA2C();
        MEMORY[0x1B26FB670](0xD000000000000015, 0x80000001AE262250);
        *&v44 = 10278;
        *(&v44 + 1) = 0xE200000000000000;
        v40[0] = v11;
        v40[1] = v10;
        sub_1ADE53D94();
        MEMORY[0x1B26FB670]();

        MEMORY[0x1B26FB670](41, 0xE100000000000000);
        MEMORY[0x1B26FB670](v44, *(&v44 + 1));

        v27 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
        v28 = v41;
        v29 = v42;
        sub_1ADE42E40(v27, v30, v31);
        swift_allocError();
        *v32 = v28;
        *(v32 + 8) = v29;
        *(v32 + 16) = 0;
        swift_willThrow();
      }
    }

    else
    {
      v41 = 0;
      *&v42 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      *&v44 = 10278;
      *(&v44 + 1) = 0xE200000000000000;
      *&v43 = v11;
      *(&v43 + 1) = v10;
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v44, *(&v44 + 1));

      v18 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v19 = v41;
      v20 = v42;
      sub_1ADE42E40(v18, v21, v22);
      swift_allocError();
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = 0;
      swift_willThrow();
    }
  }

  return result;
}

void sub_1AE023134(__int128 *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v6 = 0;
  sub_1AE023370(&v7, &v6, &type metadata for AnyCRDT, &off_1F23C9418, &v5);
  if (!v2)
  {
    v4 = v5;
    if (v5)
    {

      *a2 = v4;
    }

    else
    {
      *a2 = 0;
    }
  }
}

double sub_1AE0231C0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = v3 + 16;
  v7 = *(v3 + 16);
  v9 = *(*(*(v8 + 8) + 40) + OBJC_IVAR___CRContext_assetManager);
  v10 = v7;

  sub_1AE019368(a1, a2, v7, v9, a3);

  return result;
}

uint64_t sub_1AE023260(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA228, &unk_1AE242280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v2;
  v4 = *(v1 + 16);
  v5 = v4;

  sub_1AE01DAE0(inited, v4);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1AE02332C(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = 0;
  sub_1AE023370(&v3, &v2, &type metadata for AnyCRDT, &off_1F23C9418, a2);
}

void sub_1AE023370(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v6;
  v54 = a4;
  v55 = a2;
  v60 = a5;
  v10 = sub_1AE23D7CC();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = *(*(v5 + 24) + 56);
  swift_retain_n();
  sub_1AE026EA8(v17, v18, v19, &v57);
  if (v7)
  {
  }

  else
  {
    v49 = v16;
    v51 = a3;
    v52 = v12;
    v53 = v13;
    v50 = v10;

    v20 = *(&v57 + 1);
    if (*(&v57 + 1) >> 60 == 15)
    {
      v21 = v60;
      *v60 = 0;
      v21[1] = 0;
      v21[2] = 0;
    }

    else
    {
      v22 = v57;
      v24 = v58;
      v23 = v59;
      sub_1ADDD86D8(v57, *(&v57 + 1));
      sub_1ADDD86D8(v24, v23);
      sub_1ADDCC35C(v24, v23);
      v25 = *(v5 + 40);
      v26 = type metadata accessor for CRDecoder();
      swift_allocObject();

      v27 = sub_1ADE64748(v22, v20, v25);
      v44[1] = v26;
      v45 = v20;
      v46 = v22;
      v47 = v23;
      v48 = v24;
      *(v27 + 56) = 1;
      v28 = v56;
      v29 = v52;
      v30 = v50;
      (*(v56 + 16))(v52, v55, v50);
      v31 = v53;
      v32 = v51;
      if ((*(v53 + 48))(v29, 1, v51) == 1)
      {
        (*(v28 + 8))(v29, v30);

        AnyCRDT.init(from:)(v33, &v57);
      }

      else
      {
        v34 = v49;
        (*(v31 + 32))(v49, v29, v32);
        (*(v54 + 8))(&v57, v27, v32);
        (*(v31 + 8))(v34, v32);
      }

      v35 = v25;
      v36 = v57;
      v37 = v48;
      v38 = v47;
      v39 = v46;
      inited = swift_initStackObject();
      v41 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v41;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 24) = v41;
      *(inited + 16) = v35;

      sub_1ADE62FA4(v37, v38, &v57);
      v42 = v60;
      sub_1AE02AA94(v39, v45, v37, v38);

      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v43 = v57;
      *v42 = v36;
      *(v42 + 1) = v43;
    }
  }
}

void sub_1AE02386C(uint64_t a1, char a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && !*(a1 + 16))
  {
    return;
  }

  v106 = v2;
  if (qword_1ED96AC50 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v7[*(type metadata accessor for Replica(0) + 20)] = 0;
    v8 = *(v5 + 20);
    v96 = v7;
    *&v7[v8] = 0;
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v7 = ((v10 + 63) >> 6);

    v13 = 0;
    v94 = xmmword_1AE241270;
    v97 = a1 + 56;
    v98 = a1;
    v14 = v100;
    v101 = v7;
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_10:
    v15 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
  }

  if (v15 < v7)
  {
    v12 = *(v9 + 8 * v15);
    ++v13;
    if (!v12)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v16 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v5 = v16[1];
      v18 = v14[3];
      v19 = *(v18 + 56);
      v20 = v5 >> 62;
      v107 = v19;
      v105 = v17;
      v99 = v18;
      if ((v5 >> 62) <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v28 = v17;
        v29 = *(v17 + 16);
        v30 = *(v28 + 24);
        sub_1ADDD86D8(v28, v5);

        sub_1ADDD86D8(v28, v5);
        v31 = sub_1AE23BB7C();
        v102 = v5;
        if (v31)
        {
          v32 = sub_1AE23BBAC();
          if (__OFSUB__(v29, v32))
          {
            goto LABEL_105;
          }

          v31 += v29 - v32;
        }

        if (__OFSUB__(v30, v29))
        {
          goto LABEL_102;
        }

        v33 = sub_1AE23BB9C();
        if (v33 >= v30 - v29)
        {
          v34 = v30 - v29;
        }

        else
        {
          v34 = v33;
        }

        if (v31)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < 0xFFFFFFFF80000000)
        {
          goto LABEL_103;
        }

        if (v35 > 0x7FFFFFFF)
        {
          goto LABEL_104;
        }

        v36 = v107;
        sqlite3_bind_blob(*(v107 + 232), 1, v31, v35, *(v107 + 72));
        if (sqlite3_step(*(v36 + 232)) == 100)
        {
          v37 = sqlite3_column_bytes(*(v36 + 232), 0);
          v38 = sqlite3_column_blob(*(v36 + 232), 0);
          v17 = v105;
          if (!v38)
          {
            goto LABEL_110;
          }

          if (v37)
          {
            if (v37 < 15)
            {
              *(&v118 + 6) = 0;
              *&v118 = 0;
              BYTE14(v118) = v37;
              memcpy(&v118, v38, v37);
              v103 = v118;
              v40 = v91 & 0xF00000000000000 | DWORD2(v118) | ((WORD6(v118) | (BYTE14(v118) << 16)) << 32);
              v91 = v40;
            }

            else
            {
              sub_1AE23BBCC();
              swift_allocObject();
              if (v37 == 0x7FFFFFFF)
              {
                v39 = sub_1AE23BB6C();
                sub_1AE23BE2C();
                v103 = swift_allocObject();
                *(v103 + 16) = v94;
                v40 = v39 | 0x8000000000000000;
              }

              else
              {
                v65 = sub_1AE23BB6C();
                v103 = v37 << 32;
                v40 = v65 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v103 = 0;
            v40 = 0xC000000000000000;
          }

          v104 = v40;
          v36 = v107;
        }

        else
        {
          v103 = 0;
          v104 = 0xF000000000000000;
          v17 = v105;
        }

        sqlite3_reset(*(v36 + 232));
        v66 = v17;
        v5 = v102;
        goto LABEL_87;
      }

      *(&v110 + 6) = 0;
      *&v110 = 0;
      v50 = *(v19 + 232);
      v51 = *(v107 + 72);

      v52 = v51;
      v53 = v107;
      sqlite3_bind_blob(v50, 1, &v110, 0, v52);
      if (sqlite3_step(*(v53 + 232)) == 100)
      {
        v54 = sqlite3_column_bytes(*(v53 + 232), 0);
        v55 = sqlite3_column_blob(*(v53 + 232), 0);
        if (!v55)
        {
          goto LABEL_109;
        }

        if (v54)
        {
          if (v54 < 15)
          {
            *(&v118 + 6) = 0;
            *&v118 = 0;
            BYTE14(v118) = v54;
            memcpy(&v118, v55, v54);
            v103 = v118;
            v57 = v92 & 0xF00000000000000 | DWORD2(v118) | ((WORD6(v118) | (BYTE14(v118) << 16)) << 32);
            v92 = v57;
          }

          else
          {
            sub_1AE23BBCC();
            swift_allocObject();
            if (v54 == 0x7FFFFFFF)
            {
              v56 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v103 = swift_allocObject();
              *(v103 + 16) = v94;
              v57 = v56 | 0x8000000000000000;
            }

            else
            {
              v64 = sub_1AE23BB6C();
              v103 = v54 << 32;
              v57 = v64 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v103 = 0;
          v57 = 0xC000000000000000;
        }

        v104 = v57;
        v7 = v101;
        v17 = v105;
        v53 = v107;
      }

      else
      {
        v103 = 0;
        v104 = 0xF000000000000000;
      }

      sqlite3_reset(*(v53 + 232));
      sub_1ADDCC35C(v17, v5);

LABEL_88:
      v12 &= v12 - 1;
      v68 = v104;
      if (v104 >> 60 == 15)
      {
        sub_1ADDCC35C(v17, v5);
        v13 = v15;
        v9 = v97;
        a1 = v98;
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      v69 = v14[5];
      type metadata accessor for CRDecoder();
      inited = swift_initStackObject();
      v71 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v71;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v69;
      *(inited + 24) = v71;

      v72 = v106;
      sub_1ADE62FA4(v103, v68, v109);
      if (v72)
      {
        goto LABEL_97;
      }

      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      sub_1ADDD8290(v96);
      v73 = *(v99 + 56);
      v74 = v14[4];
      v106 = 0;
      v76 = v109[0];
      v75 = v109[1];
      v108 = 1;
      type metadata accessor for CREncoder();
      swift_allocObject();
      sub_1ADDD86D8(v105, v5);
      v107 = v73;

      CREncoder.init(_:version:fileSignature:)(v74, &v108, 0, 0xF000000000000000);
      v77 = v5;
      v99 = v76;
      *&v118 = v76;
      *(&v118 + 1) = v75;
      v95 = v75;
      sub_1ADE6A0EC(v126);
      v122 = v126[4];
      v123 = v126[5];
      v124 = v126[6];
      v125 = v126[7];
      v118 = v126[0];
      v119 = v126[1];
      v120 = v126[2];
      v121 = v126[3];
      sub_1ADE73BC8(v78, v79, v80);
      v81 = v106;
      v82 = sub_1AE23C51C();
      if (v81)
      {

        sub_1ADDE1588(v103, v104);

        v89 = v105;
        sub_1ADDCC35C(v105, v5);
        sub_1ADDCC35C(v89, v5);

        v114 = v122;
        v115 = v123;
        v116 = v124;
        v117 = v125;
        v110 = v118;
        v111 = v119;
        v112 = v120;
        v113 = v121;
        sub_1ADE6AF00(&v110);
        v88 = v96;
        goto LABEL_94;
      }

      v84 = v82;
      v85 = v83;

      v114 = v122;
      v115 = v123;
      v116 = v124;
      v117 = v125;
      v110 = v118;
      v111 = v119;
      v112 = v120;
      v113 = v121;
      sub_1ADE6AF00(&v110);
      v86 = v105;
      sub_1ADDD86D8(v105, v5);
      v5 = v107;

      sub_1AE0297EC(v84, v85, v86, v77, v5);
      v106 = 0;

      sub_1ADDE1588(v103, v104);
      sub_1ADDCC35C(v86, v77);
      sub_1ADDCC35C(v84, v85);

      sub_1ADDCC35C(v86, v77);
      v13 = v15;
      v9 = v97;
      a1 = v98;
      v14 = v100;
      v7 = v101;
      if (!v12)
      {
        goto LABEL_10;
      }

LABEL_9:
      v15 = v13;
    }

    if (v20)
    {
      v102 = v5;
      v41 = v17;
      v5 = (v17 >> 32) - v17;
      if (v17 >> 32 < v17)
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
      }

      v42 = v17;
      v43 = v17;
      v44 = v102;
      sub_1ADDD86D8(v42, v102);

      v45 = v43;
      sub_1ADDD86D8(v43, v44);
      v46 = sub_1AE23BB7C();
      if (v46)
      {
        v47 = sub_1AE23BBAC();
        if (__OFSUB__(v41, v47))
        {
          goto LABEL_106;
        }

        v46 += v41 - v47;
      }

      v48 = sub_1AE23BB9C();
      v23 = v107;
      if (v48 >= v5)
      {
        v49 = v5;
      }

      else
      {
        v49 = v48;
      }

      v17 = v45;
      if (v46)
      {
        v14 = v100;
        if (v49 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_97:
          sub_1ADDE1588(v103, v104);

          sub_1ADDCC35C(v105, v5);
          swift_setDeallocating();
          CRDecoder.deinit();
          swift_deallocClassInstance();
          v88 = v96;
          goto LABEL_94;
        }

        if (v49 > 0x7FFFFFFF)
        {
          goto LABEL_107;
        }
      }

      else
      {
        LODWORD(v49) = 0;
        v14 = v100;
      }

      sqlite3_bind_blob(*(v107 + 232), 1, v46, v49, *(v107 + 72));
      v58 = sqlite3_step(*(v23 + 232));
      v5 = v102;
      if (v58 == 100)
      {
        v59 = sqlite3_column_bytes(*(v23 + 232), 0);
        v60 = sqlite3_column_blob(*(v23 + 232), 0);
        if (!v60)
        {
          goto LABEL_111;
        }

        if (v59)
        {
          if (v59 < 15)
          {
            *(&v118 + 6) = 0;
            *&v118 = 0;
            BYTE14(v118) = v59;
            memcpy(&v118, v60, v59);
            v103 = v118;
            v62 = v90 & 0xF00000000000000 | DWORD2(v118) | ((WORD6(v118) | (BYTE14(v118) << 16)) << 32);
            v90 = v62;
          }

          else
          {
            sub_1AE23BBCC();
            swift_allocObject();
            if (v59 == 0x7FFFFFFF)
            {
              v61 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v103 = swift_allocObject();
              *(v103 + 16) = v94;
              v62 = v61 | 0x8000000000000000;
            }

            else
            {
              v67 = sub_1AE23BB6C();
              v103 = v59 << 32;
              v62 = v67 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v103 = 0;
          v62 = 0xC000000000000000;
        }

        v104 = v62;
        v5 = v102;
LABEL_85:
        v23 = v107;
        goto LABEL_86;
      }
    }

    else
    {
      *&v110 = v17;
      WORD4(v110) = v5;
      BYTE10(v110) = BYTE2(v5);
      BYTE11(v110) = BYTE3(v5);
      BYTE12(v110) = BYTE4(v5);
      BYTE13(v110) = BYTE5(v5);
      v21 = *(v19 + 232);
      v22 = *(v107 + 72);

      v23 = v107;
      sqlite3_bind_blob(v21, 1, &v110, BYTE6(v5), v22);
      if (sqlite3_step(*(v23 + 232)) == 100)
      {
        v24 = sqlite3_column_bytes(*(v23 + 232), 0);
        v25 = sqlite3_column_blob(*(v23 + 232), 0);
        if (!v25)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return;
        }

        if (v24)
        {
          if (v24 < 15)
          {
            *(&v118 + 6) = 0;
            *&v118 = 0;
            BYTE14(v118) = v24;
            memcpy(&v118, v25, v24);
            v103 = v118;
            v27 = v93 & 0xF00000000000000 | DWORD2(v118) | ((WORD6(v118) | (BYTE14(v118) << 16)) << 32);
            v93 = v27;
          }

          else
          {
            sub_1AE23BBCC();
            swift_allocObject();
            if (v24 == 0x7FFFFFFF)
            {
              v26 = sub_1AE23BB6C();
              sub_1AE23BE2C();
              v103 = swift_allocObject();
              *(v103 + 16) = v94;
              v27 = v26 | 0x8000000000000000;
            }

            else
            {
              v63 = sub_1AE23BB6C();
              v103 = v24 << 32;
              v27 = v63 | 0x4000000000000000;
            }
          }

          v104 = v27;
          v17 = v105;
        }

        else
        {
          v103 = 0;
          v104 = 0xC000000000000000;
        }

        goto LABEL_85;
      }
    }

    v103 = 0;
    v104 = 0xF000000000000000;
LABEL_86:
    sqlite3_reset(*(v23 + 232));
    v66 = v17;
LABEL_87:
    sub_1ADDCC35C(v66, v5);

    v7 = v101;
    goto LABEL_88;
  }

  MEMORY[0x1EEE9AC00](v87);
  v88 = v96;
  sub_1AE021180(sub_1AE02AA44);
LABEL_94:
  sub_1ADDE53C0(v88, type metadata accessor for Timestamp);
}

void sub_1AE024678(uint64_t *a1, __int128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = *a1;
  v9 = a1[1];
  v73 = *a3;
  v11 = *(v7 + 32);
  v72[0] = 1;
  type metadata accessor for CREncoder();
  v47 = *a2;
  swift_initStackObject();
  v12 = v11;
  CREncoder.init(_:version:fileSignature:)(v12, v72, 0, 0xF000000000000000);
  v56 = v47;
  sub_1ADE6A0EC(&v64);
  sub_1ADE73BC8(v13, v14, v15);
  v16 = sub_1AE23C51C();
  if (v6)
  {

    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    sub_1ADE6AF00(&v56);
  }

  else
  {
    v43 = v10;
    v44 = v16;
    v48 = v17;

    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    sub_1ADE6AF00(&v56);
    v18 = *(v7 + 24);
    v51[0] = v73;
    v19 = sub_1AE01FD0C(&v49, v51, &type metadata for AnyCRDT, &protocol witness table for AnyCRDT);
    v20 = v49;
    LOBYTE(v51[0]) = v49;
    swift_allocObject();
    v21 = v12;
    CREncoder.init(_:version:fileSignature:)(v21, v51, 0, 0xF000000000000000);
    v51[0] = v73;
    v42 = sub_1ADE694A4(v51, v22, v23);
    v73 = v24;

    sub_1ADDF6EEC();
    v25 = *(v18 + 56);
    LOBYTE(v51[0]) = 1;
    swift_initStackObject();
    v26 = v21;

    CREncoder.init(_:version:fileSignature:)(v26, v51, 0, 0xF000000000000000);
    sub_1ADE6B3B8(a4, a5);
    v28 = v27;
    v30 = v29;

    v54 = 0;
    v55 = 0;

    sub_1AE028F7C(v43, v9, &v54, v25);
    v39 = v30;
    swift_beginAccess();
    sub_1ADDCEE40(v25 + 88, &v49, &qword_1EB5B9DB0, &qword_1AE240B80);
    v38 = v28;
    if (v50)
    {
      sub_1ADE23E6C(&v49, v51);
      v32 = v52;
      v31 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      v33 = (*(v31 + 8))(v42, v73, v32, v31);
      v40 = v34;
      v41 = v33;
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {
      sub_1ADDCEDE0(&v49, &qword_1EB5B9DB0, &qword_1AE240B80);
      v35 = v73;
      sub_1ADDD86D8(v42, v73);
      v40 = v35;
      v41 = v42;
    }

    sub_1ADDD86D8(v44, v48);
    sub_1ADDD86D8(v38, v39);
    sub_1ADDD86D8(v41, v40);
    sub_1AE02921C(v43, v9, v44, v48, v38, v39, v41, v40, v25, 0);
    sub_1ADDCC35C(v41, v40);
    v51[0] = a4;
    v51[1] = a5;
    v36 = v54;
    if (v54)
    {
      v37 = v55;

      sub_1ADDDCE90(v36, v37);
      sub_1ADE43570(((0x3020101u >> (8 * v20)) & 3), v19 & 0x1FFFF);
      sub_1ADDCC35C(v44, v48);

      sub_1ADDCC35C(v42, v73);
      sub_1ADDCC35C(v38, v39);

      sub_1ADE42CB8(v36, v37);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE024BFC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v9 = *(a1 + 24);
  *&v27 = *(a1 + 16);
  *(&v27 + 1) = v9;
  *&v26 = a1;
  v10 = *(a3 + 48);
  sub_1ADDD86D8(v27, v9);
  v11 = type metadata accessor for AnyReference();
  v10(&v28, &v27, &v26, v11, &off_1F23C1040, a2, a3);
  sub_1ADDCC35C(v27, *(&v27 + 1));
  if (!v4)
  {
    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v15 = *(a1 + 24);
      v28 = *(a1 + 16);
      v14 = v28;
      v29 = v15;
      v31 = v13;
      *&v27 = v13;
      *(&v27 + 1) = v30;
      v25 = v30;
      *&v26 = v12;
      sub_1ADDD86D8(v28, v15);
      v16 = MEMORY[0x1E69E7CC0];
      v17 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v18 = sub_1ADDD9ECC(v16);
      sub_1AE024678(&v28, &v27, &v26, v17, v18);
      sub_1ADDCC35C(v14, v15);

      *a4 = v31;
      a4[1] = v25;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1AE23DA2C();
      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE2621D0);
      *&v27 = 10278;
      *(&v27 + 1) = 0xE200000000000000;
      v26 = *(a1 + 16);
      sub_1ADE53D94();
      MEMORY[0x1B26FB670]();

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      MEMORY[0x1B26FB670](v27, *(&v27 + 1));

      v19 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v20 = v28;
      v21 = v29;
      sub_1ADE42E40(v19, v22, v23);
      swift_allocError();
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1AE024E74()
{
  v2 = MEMORY[0x1E69E7CC0];

  sub_1ADE4528C(sub_1AE0254C0);

  if (v0)
  {
  }

  return v2;
}

uint64_t sub_1AE024F14(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  if (a4 >> 60 != 15)
  {
    v31[12] = v9;
    v31[13] = v10;
    v15 = result;
    v17 = *(a5 + 40);
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v19;
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 256;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    sub_1ADDE0F78(a3, a4);

    sub_1ADE62FA4(a3, a4, v31);
    v31[3] = v8;
    if (v8)
    {
      sub_1ADDE1588(a3, a4);
      swift_setDeallocating();
      CRDecoder.deinit();
      return swift_deallocClassInstance();
    }

    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v20 = v31[0];
    sub_1ADF637A8(v31[1], a7);
    if (v21)
    {
    }

    else
    {
      sub_1ADF637A8(v20, a6);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        return sub_1ADDE1588(a3, a4);
      }
    }

    v24 = *a8;
    sub_1ADDD86D8(v15, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1ADE5534C(0, *(v24 + 2) + 1, 1, v24);
      *a8 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      *a8 = sub_1ADE5534C((v26 > 1), v27 + 1, 1, v24);
    }

    result = sub_1ADDE1588(a3, a4);
    v28 = *a8;
    *(v28 + 2) = v27 + 1;
    v29 = &v28[16 * v27];
    *(v29 + 4) = v15;
    *(v29 + 5) = a2;
  }

  return result;
}

uint64_t sub_1AE025128()
{

  sub_1ADE42CB8(*(v0 + 48), *(v0 + 56));
  sub_1ADDCEDE0(v0 + qword_1EB5D7478, &qword_1EB5BA2F8, &unk_1AE2422B0);
  return v0;
}

uint64_t sub_1AE025188()
{
  sub_1AE025128();

  return swift_deallocClassInstance();
}

void sub_1AE0251F8(uint64_t a1)
{
  if (!qword_1EB5B95C0)
  {
    sub_1AE23BFEC();
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB5B95C0);
    }
  }
}

uint64_t sub_1AE025408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE024E74();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AE025484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE0254E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 225) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v5 + 120) = swift_task_alloc();
  v6 = sub_1AE23BDDC();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE0255EC, v4, 0);
}

uint64_t sub_1AE0255EC()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 225);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:

      v29 = *(v0 + 8);

      return v29(2);
    }
  }

  v31 = *(v0 + 112);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 176) = v33;
  v34 = *(v31 + 128);
  *(v0 + 184) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 192) = v36;
  *v36 = v0;
  v36[1] = sub_1AE025A98;
  v37 = *(v0 + 120);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE025A98()
{
  v1 = *(*v0 + 112);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE025BC4, v1, 0);
}

uint64_t sub_1AE025BC4()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);

    v4 = v0[1];

    return v4(2);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);

    v8 = sub_1AE23C76C();
    v9 = sub_1AE23D60C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[22];
      v10 = v0[23];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[16];
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v15 = 136315394;
      *(v15 + 4) = sub_1AE1FB594(v11, v10, &v28);
      *(v15 + 12) = 2080;
      sub_1AE02ADD4(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v16 = sub_1AE23DD9C();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_1AE1FB594(v16, v18, &v28);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1ADDCA000, v8, v9, "%s reading url %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v26, -1, -1);
      MEMORY[0x1B26FDA50](v15, -1, -1);
    }

    else
    {
      v22 = v0[17];
      v21 = v0[18];
      v23 = v0[16];

      v19 = *(v22 + 8);
      v19(v21, v23);
    }

    v0[25] = v19;
    v27 = (v0[12] + *v0[12]);
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_1AE025F6C;
    v25 = v0[19];

    return v27(v0 + 28, v25);
  }
}

uint64_t sub_1AE025F6C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1AE026174;
  }

  else
  {
    v4 = sub_1AE026098;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AE026098()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 224);

  v1(v2, v3);
  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1AE026174()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[16];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE026228(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 224) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v5 + 120) = swift_task_alloc();
  v6 = sub_1AE23BDDC();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE026334, v4, 0);
}

uint64_t sub_1AE026334()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 224);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:

      v29 = *(v0 + 8);

      return v29(1);
    }
  }

  v31 = *(v0 + 112);
  v32 = swift_getObjectType();
  v33 = *(v31 + 120);
  *(v0 + 176) = v33;
  v34 = *(v31 + 128);
  *(v0 + 184) = v34;
  v35 = *(v26 + 32);
  swift_unknownObjectRetain();
  v38 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 192) = v36;
  *v36 = v0;
  v36[1] = sub_1AE0267E0;
  v37 = *(v0 + 120);

  return v38(v37, v33, v34, v32, v26);
}

uint64_t sub_1AE0267E0()
{
  v1 = *(*v0 + 112);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE02690C, v1, 0);
}

uint64_t sub_1AE02690C()
{
  v28 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);

    v8 = sub_1AE23C76C();
    v9 = sub_1AE23D60C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[22];
      v10 = v0[23];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[16];
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v15 = 136315394;
      *(v15 + 4) = sub_1AE1FB594(v11, v10, &v27);
      *(v15 + 12) = 2080;
      sub_1AE02ADD4(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v16 = sub_1AE23DD9C();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_1AE1FB594(v16, v18, &v27);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1ADDCA000, v8, v9, "%s reading url %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v25, -1, -1);
      MEMORY[0x1B26FDA50](v15, -1, -1);
    }

    else
    {
      v22 = v0[17];
      v21 = v0[18];
      v23 = v0[16];

      v19 = *(v22 + 8);
      v19(v21, v23);
    }

    v0[25] = v19;
    v26 = (v0[12] + *v0[12]);
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_1AE026CAC;

    return v26();
  }
}

uint64_t sub_1AE026CAC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1AE026174;
  }

  else
  {
    v4 = sub_1AE026DD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AE026DD8()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[16];

  v1(v2, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(0);
}

double sub_1AE026EA8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      sub_1ADE45ADC(v11, v6, a3, a4);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE029B04(v7, v8, a3, a4);
LABEL_10:

  return result;
}

void sub_1AE027010(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const char *a5, unint64_t a6, uint64_t a7, _BYTE *a8, char *a9, uint64_t a10)
{
  v14 = a3;
  v15 = BYTE6(a2);
  v164[2] = *MEMORY[0x1E69E9840];
  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v164[0] = a1;
      LOWORD(v164[1]) = a2;
      BYTE2(v164[1]) = BYTE2(a2);
      BYTE3(v164[1]) = BYTE3(a2);
      BYTE4(v164[1]) = BYTE4(a2);
      BYTE5(v164[1]) = BYTE5(a2);
      v17 = a4 >> 62;
      v18 = v164 + BYTE6(a2);
      if ((a4 >> 62) <= 1)
      {
        v153 = v164 + BYTE6(a2);
        if (!v17)
        {
          v163[0] = a3;
          LOWORD(v163[1]) = a4;
          BYTE2(v163[1]) = BYTE2(a4);
          BYTE3(v163[1]) = BYTE3(a4);
          BYTE4(v163[1]) = BYTE4(a4);
          BYTE5(v163[1]) = BYTE5(a4);
          swift_retain_n();
          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);
          v143 = v163 + BYTE6(a4);
          v20 = a5;
          v21 = a6;
          v22 = a7;
          v23 = a8;
          v24 = a9;
          v25 = v153;
LABEL_27:
          v45 = a10;
LABEL_81:
          sub_1AE0280A0(v20, v21, v22, v23, v24, v164, v25, v45, v163, v143);
          goto LABEL_150;
        }

        v152 = a10;
        v88 = (a3 >> 32) - a3;
        if (a3 >> 32 >= a3)
        {
          swift_retain_n();
          sub_1ADDD86D8(a5, a6);
          sub_1ADDD86D8(a5, a6);
          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(v14, a4);
          sub_1ADDD86D8(a5, a6);

          v89 = sub_1AE23BB7C();
          if (!v89)
          {
            v92 = 0;
            goto LABEL_121;
          }

          v90 = v89;
          v91 = sub_1AE23BBAC();
          if (!__OFSUB__(v14, v91))
          {
            v92 = (v14 - v91 + v90);
LABEL_121:
            v122 = sub_1AE23BB9C();
            if (v122 >= v88)
            {
              v123 = (v14 >> 32) - v14;
            }

            else
            {
              v123 = v122;
            }

            v124 = &v92[v123];
            if (v92)
            {
              v125 = v124;
            }

            else
            {
              v125 = 0;
            }

            v142 = v92;
            v147 = v125;
            v126 = a5;
            v127 = a6;
            v128 = a7;
            v129 = a8;
            v130 = a9;
            v131 = v153;
LABEL_136:
            sub_1AE0280A0(v126, v127, v128, v129, v130, v164, v131, v152, v142, v147);
            goto LABEL_137;
          }

          goto LABEL_165;
        }

        goto LABEL_155;
      }

      if (v17 == 2)
      {
        v151 = a10;
        v46 = *(a3 + 16);
        v148 = *(a3 + 24);
        swift_retain_n();
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v156 = v14;
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v47 = sub_1AE23BB7C();
        if (v47)
        {
          v48 = v47;
          v49 = v18;
          v50 = sub_1AE23BBAC();
          if (__OFSUB__(v46, v50))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v51 = (v46 - v50 + v48);
        }

        else
        {
          v49 = v164 + v15;
          v51 = 0;
        }

        if (__OFSUB__(v148, v46))
        {
          goto LABEL_157;
        }

        v108 = sub_1AE23BB9C();
        if (v108 >= v148 - v46)
        {
          v109 = v148 - v46;
        }

        else
        {
          v109 = v108;
        }

        v110 = &v51[v109];
        if (v51)
        {
          v111 = v110;
        }

        else
        {
          v111 = 0;
        }

        v141 = v51;
        v146 = v111;
        v112 = a5;
        v113 = a6;
        v114 = a7;
        v115 = a8;
        v116 = a9;
        v117 = v49;
LABEL_119:
        sub_1AE0280A0(v112, v113, v114, v115, v116, v164, v117, v151, v141, v146);
        v14 = v156;
LABEL_137:

        sub_1ADDCC35C(a5, a6);

LABEL_149:
        sub_1ADDCC35C(a5, a6);

        goto LABEL_150;
      }

      memset(v163, 0, 14);
      swift_retain_n();
      sub_1ADDD86D8(v14, a4);
      sub_1ADDD86D8(a5, a6);

      sub_1ADDD86D8(v14, a4);
      sub_1ADDD86D8(a5, a6);
      v143 = v163;
      v20 = a5;
      v21 = a6;
      v22 = a7;
      v23 = a8;
      v24 = a9;
      v25 = v164 + v15;
      goto LABEL_80;
    }

    v37 = a1;
    v38 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v39 = sub_1AE23BB7C();
      if (!v39)
      {
        v42 = 0;
LABEL_49:
        v68 = sub_1AE23BB9C();
        if (v68 >= v38)
        {
          v69 = v38;
        }

        else
        {
          v69 = v68;
        }

        v70 = &v42[v69];
        if (v42)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = a4 >> 62;
        if ((a4 >> 62) > 1)
        {
          v14 = a3;
          if (v72 != 2)
          {
            memset(v164, 0, 14);
            sub_1ADDD86D8(a5, a6);

            v145 = v164;
            v73 = a5;
            v74 = a6;
            v75 = a7;
            v76 = a8;
            v77 = a9;
            v78 = v42;
            goto LABEL_100;
          }

          v150 = v42;
          v79 = *(a3 + 16);
          v80 = *(a3 + 24);
          swift_retain_n();
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(a5, a6);

          v81 = sub_1AE23BB7C();
          if (v81)
          {
            v82 = sub_1AE23BBAC();
            if (__OFSUB__(v79, v82))
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v81 += v79 - v82;
          }

          v30 = __OFSUB__(v80, v79);
          v83 = v80 - v79;
          if (v30)
          {
            goto LABEL_162;
          }

          v84 = sub_1AE23BB9C();
          if (v84 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v84;
          }

          v86 = &v81[v85];
          if (v81)
          {
            v87 = v86;
          }

          else
          {
            v87 = 0;
          }

          sub_1AE0280A0(a5, a6, a7, a8, a9, v150, v71, a10, v81, v87);
          v14 = a3;
        }

        else
        {
          v14 = a3;
          if (!v72)
          {
            v164[0] = a3;
            LOWORD(v164[1]) = a4;
            BYTE2(v164[1]) = BYTE2(a4);
            BYTE3(v164[1]) = BYTE3(a4);
            BYTE4(v164[1]) = BYTE4(a4);
            BYTE5(v164[1]) = BYTE5(a4);
            sub_1ADDD86D8(a5, a6);

            v145 = v164 + BYTE6(a4);
            v73 = a5;
            v74 = a6;
            v75 = a7;
            v76 = a8;
            v77 = a9;
            v78 = v42;
LABEL_100:
            sub_1AE0280A0(v73, v74, v75, v76, v77, v78, v71, a10, v164, v145);
            sub_1ADDCC35C(a5, a6);
            goto LABEL_148;
          }

          if (a3 >> 32 < a3)
          {
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          swift_retain_n();
          sub_1ADDD86D8(a5, a6);

          sub_1ADDD86D8(a5, a6);

          v102 = sub_1AE23BB7C();
          if (v102)
          {
            v103 = sub_1AE23BBAC();
            if (__OFSUB__(a3, v103))
            {
              goto LABEL_170;
            }

            v102 += a3 - v103;
          }

          v14 = a3;
          v104 = sub_1AE23BB9C();
          if (v104 >= (a3 >> 32) - a3)
          {
            v105 = (a3 >> 32) - a3;
          }

          else
          {
            v105 = v104;
          }

          v106 = &v102[v105];
          if (v102)
          {
            v107 = v106;
          }

          else
          {
            v107 = 0;
          }

          sub_1AE0280A0(a5, a6, a7, a8, a9, v42, v71, a10, v102, v107);
        }

        sub_1ADDCC35C(a5, a6);

        sub_1ADDCC35C(a5, a6);

LABEL_148:
        sub_1ADDCC35C(v14, a4);
        goto LABEL_149;
      }

      v40 = v39;
      v41 = sub_1AE23BBAC();
      if (!__OFSUB__(v37, v41))
      {
        v42 = (v37 - v41 + v40);
        goto LABEL_49;
      }

LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    __break(1u);
    goto LABEL_152;
  }

  if (v16 != 2)
  {
    v43 = a4 >> 62;
    memset(v164, 0, 14);
    if ((a4 >> 62) <= 1)
    {
      if (!v43)
      {
        v163[0] = a3;
        LOWORD(v163[1]) = a4;
        BYTE2(v163[1]) = BYTE2(a4);
        BYTE3(v163[1]) = BYTE3(a4);
        BYTE4(v163[1]) = BYTE4(a4);
        BYTE5(v163[1]) = BYTE5(a4);
        swift_retain_n();
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);
        v143 = v163 + BYTE6(a4);
        v25 = v164;
        v20 = a5;
        v21 = a6;
        v22 = a7;
        v23 = a8;
        v24 = a9;
        goto LABEL_27;
      }

      v152 = a10;
      v93 = (a3 >> 32) - a3;
      if (a3 >> 32 >= a3)
      {
        swift_retain_n();
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        sub_1ADDD86D8(v14, a4);
        sub_1ADDD86D8(a5, a6);

        v94 = sub_1AE23BB7C();
        if (v94)
        {
          v95 = v94;
          v96 = sub_1AE23BBAC();
          if (__OFSUB__(v14, v96))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          v97 = (v14 - v96 + v95);
        }

        else
        {
          v97 = 0;
        }

        v132 = sub_1AE23BB9C();
        if (v132 >= v93)
        {
          v133 = (v14 >> 32) - v14;
        }

        else
        {
          v133 = v132;
        }

        v134 = &v97[v133];
        if (v97)
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        v142 = v97;
        v147 = v135;
        v131 = v164;
        v126 = a5;
        v127 = a6;
        v128 = a7;
        v129 = a8;
        v130 = a9;
        goto LABEL_136;
      }

      goto LABEL_156;
    }

    if (v43 == 2)
    {
      v151 = a10;
      v53 = *(a3 + 16);
      v54 = *(a3 + 24);
      swift_retain_n();
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v156 = a3;
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);

      v55 = sub_1AE23BB7C();
      if (v55)
      {
        v56 = v55;
        v57 = sub_1AE23BBAC();
        if (__OFSUB__(v53, v57))
        {
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v58 = (v53 - v57 + v56);
      }

      else
      {
        v58 = 0;
      }

      if (__OFSUB__(v54, v53))
      {
        goto LABEL_158;
      }

      v118 = sub_1AE23BB9C();
      if (v118 >= v54 - v53)
      {
        v119 = v54 - v53;
      }

      else
      {
        v119 = v118;
      }

      v120 = &v58[v119];
      if (v58)
      {
        v121 = v120;
      }

      else
      {
        v121 = 0;
      }

      v141 = v58;
      v146 = v121;
      v117 = v164;
      v112 = a5;
      v113 = a6;
      v114 = a7;
      v115 = a8;
      v116 = a9;
      goto LABEL_119;
    }

    memset(v163, 0, 14);
    swift_retain_n();
    sub_1ADDD86D8(v14, a4);
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(v14, a4);
    sub_1ADDD86D8(a5, a6);
    v143 = v163;
    v25 = v164;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v23 = a8;
    v24 = a9;
LABEL_80:
    v45 = a10;
    goto LABEL_81;
  }

  v27 = *(a1 + 16);
  v26 = *(a1 + 24);

  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);

  v154 = v14;
  sub_1ADDD86D8(v14, a4);
  sub_1ADDD86D8(a5, a6);

  v28 = sub_1AE23BB7C();
  if (v28)
  {
    v29 = sub_1AE23BBAC();
    if (__OFSUB__(v27, v29))
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v28 += v27 - v29;
  }

  v30 = __OFSUB__(v26, v27);
  v31 = v26 - v27;
  if (v30)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v32 = sub_1AE23BB9C();
  if (v32 >= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = &v28[v33];
  if (v28)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v36 != 2)
    {
      memset(v164, 0, 14);
      sub_1ADDD86D8(a5, a6);

      sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v35, a10, v164, v164);
      sub_1ADDCC35C(a5, a6);
LABEL_147:
      v14 = v154;
      goto LABEL_148;
    }

    v149 = v35;
    v59 = *(v154 + 16);
    v60 = *(v154 + 24);
    swift_retain_n();
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(a5, a6);

    v61 = sub_1AE23BB7C();
    if (v61)
    {
      v62 = sub_1AE23BBAC();
      if (__OFSUB__(v59, v62))
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v61 += v59 - v62;
    }

    v30 = __OFSUB__(v60, v59);
    v63 = v60 - v59;
    if (v30)
    {
      goto LABEL_161;
    }

    v64 = sub_1AE23BB9C();
    if (v64 >= v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    v66 = v65 + v61;
    if (v61)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v140 = v61;
    v144 = v67;
LABEL_146:
    sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v149, a10, v140, v144);

    sub_1ADDCC35C(a5, a6);

    sub_1ADDCC35C(a5, a6);

    goto LABEL_147;
  }

  if (v36)
  {
    v149 = v35;
    if (v154 >> 32 < v154)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    swift_retain_n();
    sub_1ADDD86D8(a5, a6);

    sub_1ADDD86D8(a5, a6);

    v98 = sub_1AE23BB7C();
    if (v98)
    {
      v99 = v98;
      v100 = sub_1AE23BBAC();
      if (__OFSUB__(v154, v100))
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
      }

      v101 = (v154 - v100 + v99);
    }

    else
    {
      v101 = 0;
    }

    v136 = sub_1AE23BB9C();
    if (v136 >= (v154 >> 32) - v154)
    {
      v137 = (v154 >> 32) - v154;
    }

    else
    {
      v137 = v136;
    }

    v138 = &v101[v137];
    if (v101)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    v140 = v101;
    v144 = v139;
    goto LABEL_146;
  }

  v164[0] = v154;
  LOWORD(v164[1]) = a4;
  BYTE2(v164[1]) = BYTE2(a4);
  BYTE3(v164[1]) = BYTE3(a4);
  BYTE4(v164[1]) = BYTE4(a4);
  BYTE5(v164[1]) = BYTE5(a4);
  sub_1ADDD86D8(a5, a6);

  sub_1AE0280A0(a5, a6, a7, a8, a9, v28, v35, a10, v164, v164 + BYTE6(a4));
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(v154, a4);
  sub_1ADDCC35C(a5, a6);

  v14 = v154;
LABEL_150:
  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);

  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);

  sub_1ADDCC35C(v14, a4);
  sub_1ADDCC35C(a5, a6);
}

const char *sub_1AE0280A0(const char *result, unint64_t a2, uint64_t a3, _BYTE *a4, char *a5, const void *a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v11 = a5;
  v14 = BYTE6(a2);
  v15 = a9;
  v16 = a10;
  v74 = *MEMORY[0x1E69E9840];
  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v71[0] = result;
      LOWORD(v71[1]) = a2;
      BYTE2(v71[1]) = BYTE2(a2);
      BYTE3(v71[1]) = BYTE3(a2);
      BYTE4(v71[1]) = BYTE4(a2);
      if (a4)
      {
        v18 = a5 - a4;
      }

      else
      {
        v18 = 0;
      }

      BYTE5(v71[1]) = BYTE5(a2);
      if (v18 >= 0xFFFFFFFF80000000)
      {
        if (v18 <= 0x7FFFFFFF)
        {
          v19 = *(a3 + 280);
          v20 = *(a3 + 72);
          swift_retain_n();
          sqlite3_bind_blob(v19, 1, a4, v18, v20);
          if (a6)
          {
            v22 = a7 - a6;
          }

          else
          {
            v22 = 0;
          }

          if (v22 >= 0xFFFFFFFF80000000)
          {
            if (v22 <= 0x7FFFFFFF)
            {
              sqlite3_bind_blob(*(a3 + 280), 2, a6, v22, v20);
              if (a8 >= 0xFFFFFFFF80000000)
              {
                if (a8 <= 0x7FFFFFFF)
                {
                  sqlite3_bind_int(*(a3 + 280), 3, a8);
                  if (a9)
                  {
                    v23 = a10 - a9;
                  }

                  else
                  {
                    v23 = 0;
                  }

                  if (v23 >= 0xFFFFFFFF80000000)
                  {
                    if (v23 <= 0x7FFFFFFF)
                    {
                      sqlite3_bind_blob(*(a3 + 280), 4, a9, v23, v20);
                      sqlite3_bind_blob(*(a3 + 280), 5, v71, v14, v20);
                      if (sqlite3_step(*(a3 + 280)) == 101)
                      {
LABEL_21:
                        sqlite3_reset(*(a3 + 280));
                      }

                      v72 = 0x203A747265736E49;
                      v73 = 0xE800000000000000;
                      if (sqlite3_errmsg(*(a3 + 32)))
                      {
LABEL_109:
                        v53 = sub_1AE23CDEC();
                        MEMORY[0x1B26FB670](v53);

                        v54 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
                        v55 = v72;
                        v56 = v73;
                        sub_1ADE47024(v54, v57, v58);
                        swift_allocError();
                        *v59 = v55;
                        *(v59 + 8) = v56;
                        *(v59 + 16) = 2;
                        swift_willThrow();
                      }

                      __break(1u);
                      goto LABEL_108;
                    }

                    goto LABEL_140;
                  }

                  goto LABEL_136;
                }

                goto LABEL_132;
              }

              goto LABEL_128;
            }

            goto LABEL_124;
          }

          goto LABEL_120;
        }

        goto LABEL_116;
      }

      __break(1u);
      goto LABEL_113;
    }

    goto LABEL_55;
  }

  if (v17 == 2)
  {
    v24 = *(result + 2);
    v16 = *(result + 3);
    swift_retain_n();
    v25 = sub_1AE23BB7C();
    if (v25)
    {
      v26 = sub_1AE23BBAC();
      if (__OFSUB__(v24, v26))
      {
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
      }

      v25 += v24 - v26;
    }

    v27 = __OFSUB__(v16, v24);
    v15 = (v16 - v24);
    if (v27)
    {
      goto LABEL_115;
    }

    v28 = sub_1AE23BB9C();
    if (v28 >= v15)
    {
      v29 = v15;
    }

    else
    {
      v29 = v28;
    }

    if (a4)
    {
      v30 = v11 - a4;
    }

    else
    {
      v30 = 0;
    }

    if (v30 < 0xFFFFFFFF80000000)
    {
      goto LABEL_118;
    }

    if (v30 > 0x7FFFFFFF)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v31 = *(a3 + 72);
    sqlite3_bind_blob(*(a3 + 280), 1, a4, v30, v31);
    if (a6)
    {
      v32 = a7 - a6;
    }

    else
    {
      v32 = 0;
    }

    if (v32 < 0xFFFFFFFF80000000)
    {
      goto LABEL_126;
    }

    if (v32 > 0x7FFFFFFF)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    sqlite3_bind_blob(*(a3 + 280), 2, a6, v32, v31);
    if (a8 < 0xFFFFFFFF80000000)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (a8 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    sqlite3_bind_int(*(a3 + 280), 3, a8);
    if (a9)
    {
      v33 = a10 - a9;
    }

    else
    {
      v33 = 0;
    }

    if (v33 < 0xFFFFFFFF80000000)
    {
      goto LABEL_142;
    }

    if (v33 > 0x7FFFFFFF)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v11 = &v29[v25];
    sqlite3_bind_blob(*(a3 + 280), 4, a9, v33, v31);
    if (v25)
    {
      v34 = v29;
    }

    else
    {
      v34 = 0;
    }

    if (v34 < 0xFFFFFFFF80000000)
    {
      goto LABEL_146;
    }

    if (v34 > 0x7FFFFFFF)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    sqlite3_bind_blob(*(a3 + 280), 5, v25, v34, v31);
    if (sqlite3_step(*(a3 + 280)) == 101)
    {
      goto LABEL_85;
    }

    v72 = 0x203A747265736E49;
    v73 = 0xE800000000000000;
    result = sqlite3_errmsg(*(a3 + 32));
    if (result)
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_55:
    v66 = v15;
    v67 = v16;
    v35 = result;
    v36 = (result >> 32) - result;
    if (result >> 32 < result)
    {
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v69 = a7;
    swift_retain_n();
    v37 = sub_1AE23BB7C();
    if (v37)
    {
      v38 = sub_1AE23BBAC();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_151;
      }

      v37 += v35 - v38;
    }

    v39 = sub_1AE23BB9C();
    if (v39 >= v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v39;
    }

    if (a4)
    {
      v41 = v11 - a4;
    }

    else
    {
      v41 = 0;
    }

    if (v41 < 0xFFFFFFFF80000000)
    {
      goto LABEL_119;
    }

    if (v41 > 0x7FFFFFFF)
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v42 = *(a3 + 72);
    sqlite3_bind_blob(*(a3 + 280), 1, a4, v41, v42);
    if (a6)
    {
      v43 = v69 - a6;
    }

    else
    {
      v43 = 0;
    }

    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_127;
    }

    if (v43 > 0x7FFFFFFF)
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    sqlite3_bind_blob(*(a3 + 280), 2, a6, v43, v42);
    if (a8 < 0xFFFFFFFF80000000)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (a8 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    sqlite3_bind_int(*(a3 + 280), 3, a8);
    if (v66)
    {
      v44 = v67 - v66;
    }

    else
    {
      v44 = 0;
    }

    if (v44 < 0xFFFFFFFF80000000)
    {
      goto LABEL_143;
    }

    if (v44 > 0x7FFFFFFF)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    sqlite3_bind_blob(*(a3 + 280), 4, v66, v44, v42);
    if (v37)
    {
      v45 = v40;
    }

    else
    {
      v45 = 0;
    }

    if (v45 < 0xFFFFFFFF80000000)
    {
      goto LABEL_147;
    }

    if (v45 > 0x7FFFFFFF)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    sqlite3_bind_blob(*(a3 + 280), 5, v37, v45, v42);
    if (sqlite3_step(*(a3 + 280)) == 101)
    {
LABEL_85:
      sqlite3_reset(*(a3 + 280));
    }

    v72 = 0x203A747265736E49;
    v73 = 0xE800000000000000;
    v46 = sqlite3_errmsg(*(a3 + 32));
    if (!v46)
    {
      goto LABEL_153;
    }

LABEL_111:
    v60 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v60);

    v61 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v62 = v73;
    sub_1ADE47024(v61, v63, v64);
    swift_allocError();
    *v65 = v72;
    *(v65 + 8) = v62;
    *(v65 + 16) = 2;
    swift_willThrow();
  }

  memset(v71, 0, 14);
  if (a4)
  {
    v47 = a5 - a4;
  }

  else
  {
    v47 = 0;
  }

  if (v47 < 0xFFFFFFFF80000000)
  {
    goto LABEL_114;
  }

  if (v47 > 0x7FFFFFFF)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v48 = *(a3 + 280);
  v49 = *(a3 + 72);
  swift_retain_n();
  sqlite3_bind_blob(v48, 1, a4, v47, v49);
  if (a6)
  {
    v51 = a7 - a6;
  }

  else
  {
    v51 = 0;
  }

  if (v51 < 0xFFFFFFFF80000000)
  {
    goto LABEL_121;
  }

  if (v51 > 0x7FFFFFFF)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sqlite3_bind_blob(*(a3 + 280), 2, a6, v51, v49);
  if (a8 < 0xFFFFFFFF80000000)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (a8 > 0x7FFFFFFF)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sqlite3_bind_int(*(a3 + 280), 3, a8);
  if (a9)
  {
    v52 = a10 - a9;
  }

  else
  {
    v52 = 0;
  }

  if (v52 < 0xFFFFFFFF80000000)
  {
    goto LABEL_137;
  }

  if (v52 > 0x7FFFFFFF)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  sqlite3_bind_blob(*(a3 + 280), 4, a9, v52, v49);
  sqlite3_bind_blob(*(a3 + 280), 5, v71, 0, v49);
  if (sqlite3_step(*(a3 + 280)) == 101)
  {
    goto LABEL_21;
  }

LABEL_108:
  v72 = 0x203A747265736E49;
  v73 = 0xE800000000000000;
  v46 = sqlite3_errmsg(*(a3 + 32));
  if (v46)
  {
    goto LABEL_109;
  }

  __break(1u);
LABEL_153:
  __break(1u);
  return v46;
}

double sub_1AE028940(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v7 = v25 + BYTE6(a2);
      v8 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
    v7 = v25;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE46D0C(v8, v7, a3, a4, a5);

  return result;
}

double sub_1AE028B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v7 = v25 + BYTE6(a2);
      v8 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
    v7 = v25;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE46AA8(v8, v7, a3, a4, a5);

  return result;
}

double sub_1AE028D68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v7 = v25 + BYTE6(a2);
      v8 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
    v7 = v25;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE466F8(v8, v7, a3, a4, a5);

  return result;
}

uint64_t sub_1AE028F7C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = BYTE6(a2);
  v34[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v34[0] = a1;
      LOWORD(v34[1]) = a2;
      BYTE2(v34[1]) = BYTE2(a2);
      BYTE3(v34[1]) = BYTE3(a2);
      BYTE4(v34[1]) = BYTE4(a2);
      BYTE5(v34[1]) = BYTE5(a2);
      swift_retain_n();
      v8 = v34 + v6;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    memset(v34, 0, 14);
    swift_retain_n();
    v8 = v34;
LABEL_27:
    v27 = sub_1ADE45718(v34, v8);
    if (!v4)
    {
      if (!v27)
      {
        v29 = MEMORY[0x1E69E7CC0];
        v30 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
        v28 = sub_1ADDD9ECC(v29);
        v27 = v30;
      }

      v31 = *a3;
      v32 = a3[1];
      *a3 = v27;
      a3[1] = v28;
      sub_1ADE42CB8(v31, v32);
    }
  }

  v9 = v4;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_retain_n();
  a1 = sub_1AE23BB7C();
  v12 = a1;
  if (a1)
  {
    a1 = sub_1AE23BBAC();
    if (__OFSUB__(v10, a1))
    {
      goto LABEL_33;
    }

    v12 += v10 - a1;
  }

  v13 = __OFSUB__(v11, v10);
  v14 = v11 - v10;
  if (v13)
  {
    __break(1u);
LABEL_11:
    v15 = a1;
    v14 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = v4;
      swift_retain_n();
      v12 = sub_1AE23BB7C();
      if (!v12)
      {
        goto LABEL_15;
      }

      v16 = sub_1AE23BBAC();
      if (!__OFSUB__(v15, v16))
      {
        v12 += v15 - v16;
        goto LABEL_15;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_15:
  v17 = sub_1AE23BB9C();
  if (v17 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  v19 = &v12[v18];
  if (v12)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1ADE45718(v12, v20);
  if (!v9)
  {
    if (!v21)
    {
      v23 = MEMORY[0x1E69E7CC0];
      v24 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v22 = sub_1ADDD9ECC(v23);
      v21 = v24;
    }

    v25 = *a3;
    v26 = a3[1];
    *a3 = v21;
    a3[1] = v22;
    sub_1ADE42CB8(v25, v26);
  }
}

void sub_1AE02921C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, const char *a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v40[0] = a1;
      LOWORD(v40[1]) = a2;
      BYTE2(v40[1]) = BYTE2(a2);
      BYTE3(v40[1]) = BYTE3(a2);
      BYTE4(v40[1]) = BYTE4(a2);
      BYTE5(v40[1]) = BYTE5(a2);
      v17 = v40 + BYTE6(a2);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      sub_1ADDD86D8(a7, a8);

      sub_1AE027010(a3, a4, a5, a6, a7, a8, a9, v40, v17, a10);
LABEL_19:
      sub_1ADDCC35C(a7, a8);
      goto LABEL_29;
    }

    if (a1 >> 32 >= a1)
    {
      v35 = a1;
      v37 = (a1 >> 32) - a1;

      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      v39 = a3;
      sub_1ADDD86D8(a3, a4);
      sub_1ADDD86D8(a5, a6);
      sub_1ADDD86D8(a7, a8);

      v21 = sub_1AE23BB7C();
      if (!v21)
      {
LABEL_12:
        v23 = sub_1AE23BB9C();
        v24 = v37;
        if (v23 < v37)
        {
          v24 = v23;
        }

        v25 = (v24 + v21);
        if (v21)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        sub_1ADDD86D8(a5, a6);
        sub_1ADDD86D8(a7, a8);

        v27 = v21;
        a3 = v39;
        sub_1AE027010(v39, a4, a5, a6, a7, a8, a9, v27, v26, a10);
        sub_1ADDCC35C(a5, a6);
        sub_1ADDCC35C(a7, a8);

        sub_1ADDCC35C(v39, a4);
        sub_1ADDCC35C(a5, a6);
        goto LABEL_19;
      }

      v22 = sub_1AE23BBAC();
      if (!__OFSUB__(v35, v22))
      {
        v21 += v35 - v22;
        goto LABEL_12;
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v16 != 2)
  {
    memset(v40, 0, 14);
    sub_1ADDD86D8(a5, a6);
    sub_1ADDD86D8(a7, a8);

    sub_1ADDD86D8(a3, a4);
    sub_1ADDD86D8(a5, a6);
    sub_1ADDD86D8(a7, a8);

    sub_1ADDD86D8(a7, a8);

    sub_1AE027010(a3, a4, a5, a6, a7, a8, a9, v40, v40, a10);
    goto LABEL_19;
  }

  v36 = *(a1 + 16);
  v34 = *(a1 + 24);

  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);
  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  v38 = a3;
  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  v18 = sub_1AE23BB7C();
  v33 = a4;
  if (v18)
  {
    v19 = sub_1AE23BBAC();
    v20 = v36;
    if (__OFSUB__(v36, v19))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 += v36 - v19;
  }

  else
  {
    v20 = v36;
  }

  v28 = v34 - v20;
  if (__OFSUB__(v34, v20))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = sub_1AE23BB9C();
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = &v18[v30];
  if (v18)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_1ADDD86D8(a5, a6);
  sub_1ADDD86D8(a7, a8);

  a4 = v33;
  sub_1AE027010(v38, v33, a5, a6, a7, a8, a9, v18, v32, a10);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);

  sub_1ADDCC35C(v38, v33);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);
  a3 = v38;
LABEL_29:

  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);

  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a5, a6);
  sub_1ADDCC35C(a7, a8);
}

void sub_1AE0297EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = BYTE6(a2);
  v28[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v28[0] = a1;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);

      sub_1ADDD86D8(a3, a4);

      v10 = a3;
      v11 = a4;
      v12 = a5;
      v13 = v28 + v8;
LABEL_24:
      sub_1AE028940(v10, v11, v12, v28, v13);
      goto LABEL_25;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);

      sub_1ADDD86D8(a3, a4);

      v16 = sub_1AE23BB7C();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1AE23BBAC();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1AE23BB9C();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
    memset(v28, 0, 14);

    sub_1ADDD86D8(a3, a4);

    v13 = v28;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    goto LABEL_24;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);

  sub_1ADDD86D8(a3, a4);

  sub_1ADDD86D8(a3, a4);

  v16 = sub_1AE23BB7C();
  if (v16)
  {
    v17 = sub_1AE23BBAC();
    if (__OFSUB__(v15, v17))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = sub_1AE23BB9C();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = &v16[v21];
  if (v16)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_1AE028940(a3, a4, a5, v16, v27);

  sub_1ADDCC35C(a3, a4);

LABEL_25:
  sub_1ADDCC35C(a3, a4);

  sub_1ADDCC35C(a3, a4);
}

void sub_1AE029B04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = sub_1AE23BB7C();
  if (v8)
  {
    v9 = sub_1AE23BBAC();
    if (__OFSUB__(a1, v9))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v8 += a1 - v9;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v8;
  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE45ADC(v8, v15, a3, a4);
}

uint64_t sub_1AE029BB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1ADF7ACAC(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1AE02A644((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = *(*a3 + 2 * v7);
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1ADE5522C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1AE02A644((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1AE02A108(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1ADF7ACAC(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1AE02A820((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1ADE5522C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1AE02A820((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1ADF7ACAC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1ADF7AC20(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}