void Set<>.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *(a3 - 8);
  v29 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    sub_1AE23D36C();
    a2 = v37;
    v13 = v38;
    v14 = v39;
    v15 = v40;
    v16 = v41;
  }

  else
  {
    v17 = -1 << *(a2 + 32);
    v13 = a2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(a2 + 56);

    v16 = v20;
    v15 = 0;
  }

  v33 = a2;
  v34 = (v28 + 56);
  v27[0] = v14;
  v27[1] = v28 + 16;
  v30 = (v28 + 32);
  v31 = (v28 + 8);
  v32 = v13;
  v36 = v15;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v21 = v16;
  if (v16)
  {
LABEL_13:
    v35 = v16;
    v23 = (v21 - 1) & v21;
    (*(v28 + 16))(v12, *(a2 + 48) + *(v28 + 72) * (__clz(__rbit64(v21)) | (v15 << 6)), a3);
    while (1)
    {
      (*v34)(v12, 0, 1, a3);
      v24 = v12;
      (*v30)(v9, v12, a3);
      v26 = a1[3];
      v25 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      if ((*(v25 + 8))(v26, v25))
      {
        break;
      }

      (*(*(v29 + 8) + 48))(a1, a3);
      (*v31)(v9, a3);
      v16 = v23;
      v13 = v32;
      a2 = v33;
      v12 = v24;
      v36 = v15;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v35 = v16;
      if (!sub_1AE23D9AC())
      {
        goto LABEL_21;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v23 = v35;
    }

    (*v31)(v9, a3);
    a2 = v33;
LABEL_22:
    sub_1ADDDCE74(a2);
  }

  else
  {
    v22 = v36;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= ((v14 + 64) >> 6))
      {
LABEL_21:
        (*v34)(v12, 1, 1, a3);
        goto LABEL_22;
      }

      v21 = *(v13 + 8 * v15);
      ++v22;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t Set<>.copy(renamingReferences:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v6 = sub_1AE23D38C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1ADE08EB0(sub_1ADF573E4, v10, v6, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23D39C();
}

uint64_t Set<>.copy(renamingReferences:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v12 = v9;

  v10 = Set<>.copy(renamingReferences:)(&v12, a2, a3, a4, a5);

  return v10;
}

uint64_t Set<>.needToFinalizeTimestamps()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE23D38C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t Set<>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a1;
  v7 = *(a2 + 16);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v37 - v15;
  v17 = *v4;
  v18 = *(a2 + 24);
  v19 = *v4;
  v49 = a3;
  result = Set<>.needToFinalizeTimestamps()(v19, v7, a3, v18);
  if ((result & 1) == 0)
  {
    return result;
  }

  v50 = sub_1AE23C9EC();
  sub_1AE23D32C();
  v42 = a2;
  result = sub_1AE23D2FC();
  v45 = v16;
  v38 = v4;
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_1AE23D93C();
    result = sub_1AE23D36C();
    v17 = v51;
    v21 = v52;
    v22 = v53;
    v43 = v54;
    v23 = v55;
  }

  else
  {
    v43 = 0;
    v24 = -1 << *(v17 + 32);
    v21 = v17 + 56;
    v22 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v17 + 56);
  }

  v44 = (v39 + 56);
  v37 = v22;
  v27 = (v22 + 64) >> 6;
  v28 = (v39 + 16);
  v40 = (v39 + 32);
  v41 = v17;
  v29 = (v39 + 8);
  while (v17 < 0)
  {
    v36 = sub_1AE23D9AC();
    v34 = v45;
    if (!v36)
    {
LABEL_21:
      (*v44)(v34, 1, 1, v7);
      result = sub_1ADDDCE74(v17);
      *v38 = v50;
      return result;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v44)(v34, 0, 1, v7);
    (*v40)(v13, v34, v7);
    (*(*(v49 + 8) + 64))(v48, v7);
    (*v28)(v47, v13, v7);
    v32 = v46;
    sub_1AE23D33C();
    v33 = *v29;
    (*v29)(v32, v7);
    result = v33(v13, v7);
    v17 = v41;
  }

  v34 = v45;
  if (v23)
  {
    v30 = v43;
LABEL_10:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v39 + 16))(v45, *(v17 + 48) + *(v39 + 72) * (v31 | (v30 << 6)), v7);
    goto LABEL_11;
  }

  v35 = v43;
  while (1)
  {
    v30 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      goto LABEL_21;
    }

    v23 = *(v21 + 8 * v30);
    ++v35;
    if (v23)
    {
      v43 = v30;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF87B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF87B94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  *a4 = result;
  return result;
}

unint64_t sub_1ADF87C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = Set<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t Set<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE66040(a2, a3, a4);
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

double Set<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v5)
  {

    sub_1ADE6DC70(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1ADF87E20(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1ADDFFBC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1ADF87E38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF87E88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF87ED8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1ADE6B938(sub_1ADF87F54);
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

double Data.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    sub_1ADE6D26C(a2, a3);
  }

  return result;
}

void sub_1ADF8800C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if ((a2 & 1) == 0 && a4 == 0.0)
  {
    return;
  }

  v8 = *(v4 + 24);
  v10 = v8[14];
  v9 = v8[15];
  v8[14] = 0;
  v8[15] = 0;
  sub_1ADE71C08(a1, a2, a3);
  if (v5)
  {

    return;
  }

  swift_beginAccess();

  sub_1AE1B7148(a4);
  swift_endAccess();

  sub_1ADE71C08(v11, v12, v13);
  swift_beginAccess();
  v8[14] = v10;

  v8[15] = v9;

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v4 + 16);
    swift_beginAccess();
    v14 = *(v8[3] + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xD)
    {
      v15 = v14 & 0xFFFFFFFFFFFFFFBLL;
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v9 = sub_1ADDF69D0(0, *(v9 + 2) + 1, 1, v9);
LABEL_11:
  v16 = a1;
  v18 = *(v9 + 2);
  v17 = *(v9 + 3);
  if (v18 >= v17 >> 1)
  {
    v9 = sub_1ADDF69D0((v17 > 1), v18 + 1, 1, v9);
    v16 = a1;
  }

  *(v9 + 2) = v18 + 1;
  *&v9[8 * v18 + 32] = v16;
  sub_1AE1B6BF8(v9, v10);
  v19 = *(v8[3] + 16);
  if ((~v19 & 0xF000000000000007) != 0 && ((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xD)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFBLL;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v23);
  if (*(v21 + 16) >= *(v21 + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v22, v21);
  swift_endAccess();
}

double sub_1ADF88300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    sub_1ADE6CDF8(a1);
  }

  return result;
}

void sub_1ADF883A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {
    if (*(*(v5 + 16) + 104) == 1)
    {
      swift_beginAccess();

      sub_1AE1B6CAC(a2);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7008(a2);
    }

    swift_endAccess();
  }
}

void UInt64.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {
    if (*(*(v5 + 16) + 104) == 1 && a2 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B6CAC(a2);
      swift_endAccess();
    }
  }
}

double String.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    v7 = sub_1ADE66494(a2, a3);
    swift_beginAccess();
    sub_1AE1B70A8(v7);
    swift_endAccess();
  }

  return result;
}

double sub_1ADF88620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    v8 = sub_1ADE66494(v5, v6);
    swift_beginAccess();
    sub_1AE1B70A8(v8);
    swift_endAccess();
  }

  return result;
}

double Character.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    v7 = sub_1ADE52308(a2, a3);
    v9 = v8;
    sub_1ADE6D26C(v7, v8);
    sub_1ADDCC35C(v7, v9);
  }

  return result;
}

unint64_t sub_1ADF8875C@<X0>(unint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1ADF89EF0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

double sub_1ADF88788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    v8 = sub_1ADE52308(v5, v6);
    v10 = v9;
    sub_1ADE6D26C(v8, v9);
    sub_1ADDCC35C(v8, v10);
  }

  return result;
}

void Date.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE65960();
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v4 = 0xD000000000000017;
    *(v4 + 8) = 0x80000001AE25FB70;
    *(v4 + 16) = 0;
    swift_willThrow();
  }
}

double Date.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6CDF8(v3);
  }

  return result;
}

BOOL Date._crIsLessThan(_:)(double a1)
{
  sub_1AE23BF1C();
  v2 = v1;
  sub_1AE23BF1C();
  return v2 < v3;
}

BOOL sub_1ADF88964(double a1)
{
  sub_1AE23BF1C();
  v2 = v1;
  sub_1AE23BF1C();
  return v2 < v3;
}

double sub_1ADF889BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6CDF8(v3);
  }

  return result;
}

void DateInterval.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AE23BF4C();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v17 = v37 - v16;
  if (!*(a1 + 72))
  {
    sub_1ADE42E40(v12, v13, v14);
    swift_allocError();
    *v25 = 0xD000000000000021;
    *(v25 + 8) = 0x80000001AE25FCC0;
    *(v25 + 16) = 0;
    swift_willThrow();
LABEL_12:

    return;
  }

  v39 = a2;
  v40 = v15;
  type metadata accessor for CRDecoder.CRValueKeyedContainer();
  *(swift_initStackObject() + 16) = a1;

  sub_1ADE15C9C(0);
  if (!v18)
  {
LABEL_9:
    sub_1ADE42E40(v18, v19, v20);
    swift_allocError();
    *v26 = 0xD000000000000024;
    *(v26 + 8) = 0x80000001AE261380;
    *(v26 + 16) = 0;
    swift_willThrow();

    return;
  }

  v21 = v18;
  sub_1ADE15C9C(1);
  if (!v22)
  {

    goto LABEL_9;
  }

  v38 = v22;
  if (!*(v21 + 72))
  {
    sub_1ADE42E40(v22, v23, v24);
    swift_allocError();
    *v27 = 0xD000000000000017;
    *(v27 + 8) = 0x80000001AE25FB70;
    *(v27 + 16) = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v37[1] = type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = v21;

  sub_1ADE65960();
  if (v2)
  {

LABEL_11:

    goto LABEL_12;
  }

  v28 = (*(v40 + 32))(v17, v10, v5);
  v31 = v38;
  if (*(v38 + 72))
  {
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    sub_1ADE08CAC(inited, v33, v34);
    v36 = v40;
    (*(v40 + 16))(v7, v17, v5);
    sub_1AE23BB2C();

    (*(v36 + 8))(v17, v5);
  }

  else
  {
    sub_1ADE42E40(v28, v29, v30);
    swift_allocError();
    *v35 = 0xD000000000000017;
    *(v35 + 8) = 0x80000001AE25FB70;
    *(v35 + 16) = 0;
    swift_willThrow();

    (*(v40 + 8))(v17, v5);
  }
}

double DateInterval.encode(to:)(uint64_t a1)
{
  v3 = sub_1AE23BF4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ADE71C08(v7, v8, v9);
  if (!v1)
  {
    v12 = v10;
    type metadata accessor for CREncoder.CRValueKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1AE1B6BF8(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE23BB3C();
    sub_1ADF89CC0(v6, 0);
    (*(v4 + 8))(v6, v3);
    sub_1AE23BB4C();
    sub_1ADF8800C(1, 1, v14, v15);
    swift_setDeallocating();
  }

  return result;
}

uint64_t sub_1ADF890BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1ADF89BC8(a1, a3, a4);
  if (!v4)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

double UUID.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    v6 = sub_1ADDF66A8(v3);
    swift_beginAccess();
    sub_1AE1B733C(v6);
    swift_endAccess();
  }

  return result;
}

double sub_1ADF8919C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    v6 = sub_1ADDF66A8(v3);
    swift_beginAccess();
    sub_1AE1B733C(v6);
    swift_endAccess();
  }

  return result;
}

void Float.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    if (*(*(v6 + 16) + 104) >= 2u)
    {
      swift_beginAccess();

      sub_1AE1B7294(a4);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7148(a4);
    }

    swift_endAccess();
  }
}

void sub_1ADF89320(float *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = sub_1ADF8A114(a2, a3, a4);
  if (!v4)
  {
    *a1 = v6;
  }
}

void Double.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6D350(a4);
  }
}

void sub_1ADF893D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6D350(v5);
  }
}

void Bool.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {
    if (*(*(v5 + 16) + 104) == 1)
    {
      swift_beginAccess();

      sub_1AE1B6CAC(v4 & 1);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7008(v4 & 1);
    }

    swift_endAccess();
  }
}

uint64_t URL.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AE23E00C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AE23E00C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t URL.CodingKeys.init(intValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t URL.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 1702060386;
  }
}

void *sub_1ADF896AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1ADF896D8()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1ADF8971C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ADF89748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADF8A3F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1ADF89784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADF8A3F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1ADF897D0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AE23CE6C();
  v6 = sub_1ADF89850(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1ADF89850(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AE23D7FC();
    if (!v9 || (v10 = v9, v11 = sub_1ADDD6E00(v9, 0), v12 = sub_1ADF899A8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1AE23CD9C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AE23CD9C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AE23DADC();
LABEL_4:

  return sub_1AE23CD9C();
}

unint64_t sub_1ADF899A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1ADE56CA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AE23CE2C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AE23DADC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1ADE56CA4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AE23CE0C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1ADF89BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = 0xD000000000000016;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
LABEL_6:
    v8 = v7 | 0x8000000000000000;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v8;
    *(v9 + 16) = 0;
    swift_willThrow();

    return v3;
  }

  v6 = *(v5 + 16);
  v7 = "Date not supported in version2.";
  if ((~v6 & 0xF000000000000007) == 0 || ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) != 3)
  {
    goto LABEL_6;
  }

  v3 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  sub_1ADDD86D8(v3, *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18));
  sub_1ADE51B48(v6);
  return v3;
}

void sub_1ADF89CC0(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  sub_1ADE6B938(sub_1ADF8AA60);
  if (v3)
  {
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    swift_beginAccess();
    v8 = *(*(v5 + 24) + 16);
    if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xD)
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFBLL;
      v6 = *(v9 + 16);
      v4 = *(v9 + 24);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v4 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  v6 = sub_1ADDF69D0(0, *(v6 + 2) + 1, 1, v6);
LABEL_8:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v6 = sub_1ADDF69D0((v10 > 1), v11 + 1, 1, v6);
  }

  *(v6 + 2) = v11 + 1;
  *&v6[8 * v11 + 32] = a2;
  sub_1AE1B6BF8(v6, v4);
  v12 = *(*(v5 + 24) + 16);
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xD)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFBLL;
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v16);
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v15, v14);
  swift_endAccess();
}

unint64_t sub_1ADF89EF0(uint64_t a1)
{
  v2 = sub_1AE23CD5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(v3, v4, v5);
    swift_allocError();
    v11 = "Not decoding a CRDT.";
    v9 = 0xD000000000000017;
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 3)
  {
    v13 = v7 & 0xFFFFFFFFFFFFFFBLL;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    sub_1ADDD86D8(v14, v15);
    sub_1AE23CD4C();
    v9 = sub_1AE23CD2C();
    v17 = v16;
    sub_1ADDCC35C(v14, v15);
    if (!v17)
    {
      sub_1ADE42E40(v18, v19, v20);
      swift_allocError();
      v11 = "ts for DateInterval.";
      v9 = 0xD000000000000018;
      goto LABEL_8;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {

      if ((v17 & 0xF00000000000000) != 0)
      {
        return v9;
      }

      __break(1u);
    }

    else if ((v9 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v9 & 0x1000000000000000) != 0)
      {

        return v9;
      }

LABEL_19:
      v9 = sub_1ADF897D0(v9, v17);

      return v9;
    }

    __break(1u);
    goto LABEL_19;
  }

  v9 = 0xD000000000000016;
  sub_1ADE42E40(v3, v4, v5);
  swift_allocError();
  v11 = "Date not supported in version2.";
LABEL_8:
  *v10 = v9;
  *(v10 + 8) = v11 | 0x8000000000000000;
  *(v10 + 16) = 0;
  swift_willThrow();

  return v9;
}

float sub_1ADF8A114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    sub_1ADE71F8C(inited, v6, v7);
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

uint64_t sub_1ADF8A1E8(uint64_t a1)
{
  result = sub_1ADF8A638(&qword_1EB5BAA58, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADF8A268(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB9E8;
  if (!qword_1EB5BB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9E8);
  }

  return result;
}

uint64_t sub_1ADF8A2BC(uint64_t a1)
{
  result = sub_1ADF8A638(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB9F0;
  if (!qword_1EB5BB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9F0);
  }

  return result;
}

unint64_t sub_1ADF8A36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADF8A39C(a1, a2, a3);
  *(a1 + 16) = v4;
  result = sub_1ADF8A3F0(v4, v5, v6);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADF8A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB9F8;
  if (!qword_1EB5BB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9F8);
  }

  return result;
}

unint64_t sub_1ADF8A3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBA00;
  if (!qword_1EB5BBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA00);
  }

  return result;
}

unint64_t sub_1ADF8A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBA08;
  if (!qword_1EB5BBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA08);
  }

  return result;
}

unint64_t sub_1ADF8A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBA10;
  if (!qword_1EB5BBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA10);
  }

  return result;
}

unint64_t sub_1ADF8A4F8()
{
  result = qword_1EB5BBA18;
  if (!qword_1EB5BBA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BBA20, &qword_1AE24DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA18);
  }

  return result;
}

unint64_t sub_1ADF8A560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBA28;
  if (!qword_1EB5BBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA28);
  }

  return result;
}

uint64_t sub_1ADF8A5B4(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  *(a1 + 16) = sub_1ADF8A638(qword_1EB5BBA30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  result = sub_1ADF8A638(&qword_1EB5BB920, v2, MEMORY[0x1E6968FB8]);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADF8A638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1ADF8A7DC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  sub_1ADE6B938(sub_1ADF8AA14);
  if (v3)
  {
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    swift_beginAccess();
    v8 = *(*(v5 + 24) + 16);
    if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xD)
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFBLL;
      v6 = *(v9 + 16);
      v4 = *(v9 + 24);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v4 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  v6 = sub_1ADDF69D0(0, *(v6 + 2) + 1, 1, v6);
LABEL_8:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v6 = sub_1ADDF69D0((v10 > 1), v11 + 1, 1, v6);
  }

  *(v6 + 2) = v11 + 1;
  *&v6[8 * v11 + 32] = a2;
  sub_1AE1B6BF8(v6, v4);
  v12 = *(*(v5 + 24) + 16);
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xD)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFBLL;
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v16);
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v15, v14);
  swift_endAccess();
}

double RefBinding.init(wrappedValue:_:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 16) = v13;
  (*(v9 + 16))(v12, a1, v10);
  v16 = xmmword_1AE2427C0;

  Ref.init<A>(_:_:id:)(&v17, v14, v12, &v16, a3, a4);
  (*(v9 + 8))(a1, a3);
  result = *&v17;
  *a5 = v17;
  return result;
}

__n128 RefBinding.init(wrappedValue:_:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

void RefBinding.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Ref(0, *(a1 + 16), *(a1 + 32), a4);
  Ref.subscript.getter(v5, v6);
}

void sub_1ADF8AD20(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v10 = *(a1 + 2);
  v4 = *(a2 + a3 - 16);
  v9[0] = *(a2 + a3 - 32);
  v9[1] = v4;
  v9[2] = v3;
  v5 = type metadata accessor for RefBinding(0, v9);
  RefBinding.wrappedValue.getter(v5, v6, v7, v8);
}

uint64_t sub_1ADF8AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v11[0] = *(a3 + a4 - 32);
  v10 = *&v11[0];
  v11[1] = v5;
  v6 = type metadata accessor for RefBinding(0, v11);
  v7 = RefBinding.wrappedValue.modify(v11, v6);
  (*(*(v10 - 8) + 24))(v8, a1);
  return (v7)(v11, 0);
}

uint64_t (*RefBinding.wrappedValue.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v7 = v5;
  *a1 = v5;
  v8 = *(v2 + 16);
  *(v5 + 32) = *v2;
  v9 = type metadata accessor for Ref(0, *(a2 + 16), *(a2 + 32), v6);
  v7[6] = Ref.subscript.modify(v7, v8, v9);
  return sub_1ADF8AED4;
}

void sub_1ADF8AED4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void RefBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &WitnessTable - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  v7 = *(v2[2] + 32);
  v28 = v2[1];
  v29 = v6;
  v47 = v6;
  v48 = v28;
  v10 = type metadata accessor for Ref(0, v3, *(v8 + 32), v9);

  WitnessTable = swift_getWitnessTable();
  v27 = v10;
  Reference.identity.getter(v10, WitnessTable);
  v12 = v45;
  v11 = v46;
  v13 = v7 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v14 = (v13 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
  ++v14[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v15 = sub_1AE23E34C();
  v16 = *v14;
  swift_beginAccess();
  v17 = *(v16 + 16) != 0;
  *&v40 = v12;
  *(&v40 + 1) = v11;
  sub_1ADDD86D8(v12, v11);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  *v44 = v15;
  *&v44[16] = v16;
  *&v44[24] = 0;
  v44[28] = 0;
  v44[29] = v17;
  v44[30] = 0;
  sub_1ADDDD688(&v40);
  if (!v42)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = v41;
  if (!v41)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = (*(*v18 + 168))();

    *&v41 = v19;
    v18 = v19;
  }

  sub_1ADDDD94C(v14, &v40);
  v38[2] = v42;
  v38[3] = v43;
  v39[0] = *v44;
  *(v39 + 15) = *&v44[15];
  v38[0] = v40;
  v38[1] = v41;
  sub_1ADF8B36C(v38);
  swift_endAccess();
  sub_1ADDCC35C(v12, v11);
  (*(*v18 + 248))(v37);
  v20 = v30;
  swift_dynamicCast();
  v21 = v31;
  (*(v4 + 24))(v20, v31, v3);
  v37[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(v4 + 16))(boxed_opaque_existential_1, v20, v3);
  (*(*v18 + 256))(v37);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v34 = v29;
  v35 = v28;
  Reference.identity.getter(v27, WitnessTable);
  v23 = v32;
  v24 = v33;
  swift_beginAccess();
  sub_1ADDE0110(v36, v23, v24);
  swift_endAccess();

  v25 = *(v4 + 8);
  v25(v21, v3);
  sub_1ADDCC35C(v36[0], v36[1]);
  v25(v20, v3);
}

uint64_t RefBinding.projectedValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t sub_1ADF8B36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA960, &qword_1AE2455E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF8B3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1ADF8B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 72);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 80);
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
    *v13 = 0xD00000000000001DLL;
    *(v13 + 8) = 0x80000001AE261670;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ADF8B634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 88);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 96);
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
    *v13 = 0xD000000000000025;
    *(v13 + 8) = 0x80000001AE261640;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1ADF8B79C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0] + 24);
  if (*(v6 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 16 * result + 32);
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

  if (v10)
  {
    sub_1ADE42E40(result, a2, a3);
    swift_allocError();
    *v11 = 0xD000000000000013;
    *(v11 + 8) = 0x80000001AE25FD70;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v12 = sub_1AE23BFEC();
    return (*(*(v12 - 8) + 16))(a4, v8 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v7, v12);
  }
}

id sub_1ADF8B964(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 2) = MEMORY[0x1E69E7CC0];
  *(v2 + 3) = v3;
  *(v2 + 4) = v3;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  v4 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0]];
  v8 = 1;
  v7 = 1;
  *v4 = 0;
  *(v4 + 1) = v3;
  *(v4 + 2) = v3;
  *(v4 + 3) = v3;
  *(v4 + 4) = 0;
  v4[40] = 1;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  v4[64] = 1;
  *&v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRTTStringEncoder();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1ADF8BA0C(uint64_t a1, unsigned int a2)
{
  v3 = v2;

  v6 = sub_1ADDF66A8(a1);

  v7 = v3 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0];
  *(v7 + 48) = v6;
  *(v7 + 56) = a2;
  *(v7 + 64) = 0;
}

uint64_t sub_1ADF8BFC8()
{
  v1 = v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0];
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0] + 48);
  v22 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0] + 32);
  v23 = v2;
  v24 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0] + 64);
  v3 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0] + 16);
  v20 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence[0]);
  v21 = v3;
  v4 = v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v5 = *(v4 + 24);
  sub_1ADE5218C(&v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 24) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1ADE56088(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 24) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1ADE56088((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[72 * v8];
  *(v9 + 2) = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v9[96] = v24;
  *(v9 + 4) = v11;
  *(v9 + 5) = v12;
  *(v9 + 3) = v10;
  *(v4 + 24) = v5;
  swift_endAccess();
  LOBYTE(v17[0]) = 1;
  v19 = 1;
  v13 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v13;
  v18 = *(v1 + 64);
  v14 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v14;
  *v1 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + 8) = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v15;
  *(v1 + 24) = v15;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  return sub_1ADE521E8(v17);
}

uint64_t sub_1ADF8C184(uint64_t a1)
{
  sub_1ADDE4E28(a1, v12);
  sub_1ADDEE524(0, &qword_1EB5BA0E8, 0x1E696AEC0);
  v2 = swift_dynamicCast();
  if (v2)
  {
    v5 = v12[5];
    v6 = sub_1AE23CD0C();
    v8 = v7;

    v9 = (v1 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence);
    swift_beginAccess();
    *v9 = v6;
    v9[1] = v8;
  }

  else
  {
    sub_1ADE42E40(v2, v3, v4);
    swift_allocError();
    *v11 = 0xD00000000000001BLL;
    *(v11 + 8) = 0x80000001AE2615C0;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF8C2AC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  sub_1ADDF5C7C(v3);
  v5 = v4;
  v7 = v6;

  v8 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  return sub_1ADE42CB8(v9, v10);
}

uint64_t sub_1ADF8C3E4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ObjCVersion();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();

  sub_1ADDF5C7C(v3);
  v5 = v4;
  v7 = v6;

  v8 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v9 = *(v8 + 56);
  v10 = *(v8 + 64);
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  return sub_1ADE42CB8(v9, v10);
}

uint64_t sub_1ADF8C540(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  sub_1ADDF5C7C(v3);
  v5 = v4;
  v7 = v6;

  v8 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;
  return sub_1ADE42CB8(v9, v10);
}

uint64_t sub_1ADF8C678(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  sub_1ADDF5C7C(v3);
  v5 = v4;
  v7 = v6;

  v8 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v9 = *(v8 + 88);
  v10 = *(v8 + 96);
  *(v8 + 88) = v5;
  *(v8 + 96) = v7;
  return sub_1ADE42CB8(v9, v10);
}

void sub_1ADF8C9A8(uint64_t a1)
{
  sub_1ADDE4E28(a1, aBlock);
  sub_1ADDEE524(0, &qword_1EB5BBB18, 0x1E696AAB0);
  v2 = swift_dynamicCast();
  if (!v2)
  {
    sub_1ADE42E40(v2, v3, v4);
    swift_allocError();
    *v19 = 0xD000000000000019;
    *(v19 + 8) = 0x80000001AE261570;
    *(v19 + 16) = 0;
    swift_willThrow();
    return;
  }

  v5 = v26;
  v6 = [v26 string];
  v7 = sub_1AE23CD0C();
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
  swift_beginAccess();
  *v10 = v7;
  v10[1] = v9;

  v27 = 0;
  v11 = [v5 length];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = &v27;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1ADF8D914;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1ADF8D91C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AE1D240C;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  [v5 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    isEscapingClosureAtFileLocation = sub_1ADE561AC(0, 1, 1, isEscapingClosureAtFileLocation);
    v10[4] = isEscapingClosureAtFileLocation;
    goto LABEL_8;
  }

  isEscapingClosureAtFileLocation = v10[4];
  if (*(isEscapingClosureAtFileLocation + 16))
  {
    v17 = v27;
    if (v27)
    {
LABEL_5:
      swift_willThrow();
      v18 = v17;

      return;
    }

    goto LABEL_11;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[4] = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = *(isEscapingClosureAtFileLocation + 16);
  v21 = *(isEscapingClosureAtFileLocation + 24);
  if (v22 >= v21 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_1ADE561AC((v21 > 1), v22 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v22 + 1;
  v23 = isEscapingClosureAtFileLocation + 40 * v22;
  *(v23 + 32) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 40) = v24;
  *(v23 + 64) = 1;
  v10[4] = isEscapingClosureAtFileLocation;
  swift_endAccess();
  v17 = v27;
  if (v27)
  {
    goto LABEL_5;
  }

LABEL_11:
}

void sub_1ADF8CD20(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void **a6)
{
  v97 = sub_1AE23BFEC();
  v11 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    a4 = sub_1ADE561AC(0, *(a4 + 2) + 1, 1, a4);
    *(v11 + 32) = a4;
    goto LABEL_38;
  }

  if (HIDWORD(a3))
  {
    goto LABEL_46;
  }

  v98 = a5;
  v84 = a3;
  v78 = a6;
  v79 = a4;
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v16 = *(a1 + 32);
  v99 = 1;
  v17 = 1 << v16;
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v87 = (v11 + 32);
  v86 = (v11 + 16);
  v96 = (v11 + 8);

  v21 = 0;
  v95 = 0;
  v94 = 0;
  v85 = 0;
  v100 = MEMORY[0x1E69E7CC0];
  v93 = a1;
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      if (v20 <= v21 + 1)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = v20;
      }

      v21 = v24 - 1;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          v19 = 0;
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          goto LABEL_16;
        }

        v19 = *(v15 + 8 * v23);
        ++v22;
        if (v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_42:

      __swift_destroy_boxed_opaque_existential_1(&v104);

LABEL_44:
      v74 = *v78;
      v75 = v85;
      *v78 = v85;
      v76 = v75;

      *v79 = 1;
      return;
    }

    v23 = v21;
LABEL_15:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v23 << 6);
    v27 = *(*(a1 + 48) + 8 * v26);
    sub_1ADDE4E28(*(a1 + 56) + 32 * v26, &v103);
    *&v104 = v27;
    sub_1ADDEE390(&v103, (&v104 + 8));
    v28 = v27;
    v21 = v23;
LABEL_16:
    v107[0] = v104;
    v107[1] = v105;
    v108 = v106;
    v23 = v104;
    if (!v104)
    {
      break;
    }

    sub_1ADDEE390((v107 + 8), &v104);
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v29 = sub_1AE23CD0C();
    v31 = v30;
    if (v29 == sub_1AE23CD0C() && v31 == v32)
    {

LABEL_26:
      sub_1ADDE4E28(&v104, &v103);
      type metadata accessor for ObjCFinalizedTimestamp(0);
      swift_dynamicCast();
      v92 = v102;
      v99 = *(v98 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
      v94 = &v102[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp];
      v34 = v88;
      sub_1ADED0548(&v102[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp], v88);
      v35 = v90;
      v36 = v97;
      (*v87)(v90, v34, v97);
      v37 = type metadata accessor for ObjCReplica(0);
      v38 = objc_allocWithZone(v37);
      v91 = v21;
      v39 = *v86;
      (*v86)(&v38[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v35, v36);
      *&v38[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
      v101.receiver = v38;
      v101.super_class = v37;

      v40 = objc_msgSendSuper2(&v101, sel_init);
      v41 = *v96;
      (*v96)(v35, v36);
      v42 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
      swift_beginAccess();
      v43 = &v40[v42];
      v44 = v97;
      v39(v35, v43, v97);
      v21 = v91;

      v95 = sub_1ADDF66A8(v35);

      v41(v35, v44);
      a1 = v93;
      __swift_destroy_boxed_opaque_existential_1(&v104);
      v94 = *&v94[*(v89 + 20)];

      v99 = 0;
    }

    else
    {
      v33 = sub_1AE23E00C();

      if (v33)
      {
        goto LABEL_26;
      }

      sub_1ADDE4E28(&v104, &v103);
      if (swift_dynamicCast())
      {
        v45 = v102;
        v46 = OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder;
        v47 = v98;
        v91 = sub_1AE23CD0C();
        v49 = v48;
        v92 = v48;

        v50 = sub_1ADE66494(v91, v49);

        v80 = v50;
        if (HIDWORD(v50))
        {
          __break(1u);
          return;
        }

        v51 = v45;
        v52 = *(v47 + v46);
        v53 = (v52 + 112);
        v83 = *(v52 + 112);
        v91 = *(v52 + 120);
        *(v52 + 112) = 0;
        *(v52 + 120) = 0;
        v54 = (*v51 + 152);
        v82 = *v54;
        v81 = v54;

        v92 = v51;
        v56 = v85;
        v82(v55);
        v85 = v56;
        if (v56)
        {
          goto LABEL_42;
        }

        if (*(v52 + 120))
        {
          sub_1ADE42E40(v57, v58, v59);
          v85 = swift_allocError();
          *v73 = 0xD00000000000003DLL;
          *(v73 + 8) = 0x80000001AE260360;
          *(v73 + 16) = 3;
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_1(&v104);

          goto LABEL_44;
        }

        v60 = *v53;
        if (!*v53)
        {
          type metadata accessor for CREncoder.CRValueContainer();
          v60 = swift_allocObject();
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
          *(v60 + 16) = v52;
          *(v60 + 24) = inited;
          *(v52 + 112) = v60;
        }

        swift_beginAccess();
        v62 = *(v60 + 24);
        *(v52 + 112) = v83;

        *(v52 + 120) = v91;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1ADE562C8(0, *(v100 + 2) + 1, 1, v100);
        }

        a1 = v93;
        v64 = *(v100 + 2);
        v63 = *(v100 + 3);
        if (v64 >= v63 >> 1)
        {
          v100 = sub_1ADE562C8((v63 > 1), v64 + 1, 1, v100);
        }

        __swift_destroy_boxed_opaque_existential_1(&v104);
        v65 = v100;
        *(v100 + 2) = v64 + 1;
        v66 = &v65[16 * v64];
        *(v66 + 8) = v80;
        *(v66 + 5) = v62;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v104);
      }
    }
  }

  v11 = v98 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  a4 = *(v11 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 32) = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_38:
  v68 = v84;
  v70 = *(a4 + 2);
  v69 = *(a4 + 3);
  if (v70 >= v69 >> 1)
  {
    a4 = sub_1ADE561AC((v69 > 1), v70 + 1, 1, a4);
  }

  *(a4 + 2) = v70 + 1;
  v71 = &a4[40 * v70];
  *(v71 + 8) = v68;
  v72 = v95;
  *(v71 + 5) = v100;
  *(v71 + 6) = v72;
  *(v71 + 7) = v94;
  v71[64] = v99 & 1;
  *(v11 + 32) = a4;
  swift_endAccess();
}

uint64_t sub_1ADF8D7E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  a5(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);

  return 1;
}

id sub_1ADF8D8B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B26FDA50);
  }

  return result;
}

double sub_1ADF8D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C88C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23C8CC();
  v13 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v20[1] = *(v4 + 40);
    v21 = v14;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v4;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);

    sub_1AE23C8AC();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEEF0(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v17, v11, v19);
    _Block_release(v19);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v17, v21);
  }

  return result;
}

void sub_1ADF8DC8C(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = type metadata accessor for RetainedMapRun(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v118 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v117 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v85 - v10;
  v110 = sub_1AE23C0EC();
  v11 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v96);
  v14 = &v85 - v13;
  v15 = sub_1AE23C12C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v85 - v19;
  v86 = type metadata accessor for Replica(0);
  v91 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v106 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v85 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v85 - v27;
  v28 = *(a1 + 64);
  v100 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v105 = v30 & v28;
  v87 = (v29 + 63) >> 6;
  v90 = v16 + 16;
  v104 = (v16 + 32);
  v95 = (v11 + 8);
  v113 = (v4 + 56);
  v114 = (v4 + 48);
  v93 = v16;
  v88 = (v16 + 8);
  v94 = a1;

  v31 = 0;
  v103 = v25;
  v108 = v14;
  v89 = v15;
  while (1)
  {
    v32 = v105;
    if (!v105)
    {
      if (v87 <= v31 + 1)
      {
        v34 = v31 + 1;
      }

      else
      {
        v34 = v87;
      }

      v35 = v34 - 1;
      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v87)
        {
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v84 - 8) + 56))(v25, 1, 1, v84);
          v105 = 0;
          v102 = v35;
          goto LABEL_16;
        }

        v32 = *(v100 + 8 * v33);
        ++v31;
        if (v32)
        {
          v102 = v33;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v102 = v31;
    v33 = v31;
LABEL_15:
    v105 = (v32 - 1) & v32;
    v36 = __clz(__rbit64(v32)) | (v33 << 6);
    v37 = v94;
    v38 = v101;
    sub_1ADDF8098(*(v94 + 48) + *(v91 + 72) * v36, v101, type metadata accessor for Replica);
    v39 = v93;
    v40 = v92;
    (*(v93 + 16))(v92, *(v37 + 56) + *(v93 + 72) * v36, v15);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v42 = *(v41 + 48);
    v43 = v38;
    v25 = v103;
    sub_1ADDDE5A8(v43, v103, type metadata accessor for Replica);
    (*(v39 + 32))(&v25[v42], v40, v15);
    (*(*(v41 - 8) + 56))(v25, 0, 1, v41);
LABEL_16:
    v44 = v99;
    sub_1ADDD2198(v25, v99, &qword_1EB5BA458, &qword_1AE251E00);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      goto LABEL_49;
    }

    (*v104)(v107, v44 + *(v45 + 48), v15);
    v46 = v106;
    sub_1ADDDE5A8(v44, v106, type metadata accessor for Replica);
    v47 = v98;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(v47 + 32);
    v49 = v121;
    *(v47 + 32) = 0x8000000000000000;
    v51 = sub_1ADDD8A6C(v46);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_53;
    }

    v55 = v50;
    if (v49[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v47 + 32) = v49;
        if (v50)
        {
          goto LABEL_25;
        }

LABEL_24:
        v121 = MEMORY[0x1E69E7CC0];
        v122 = 0;
        swift_unknownObjectWeakInit();
        v122 = 0;
        swift_unknownObjectWeakAssign();
        v58 = v101;
        sub_1ADDF8098(v106, v101, type metadata accessor for Replica);
        sub_1ADDE21EC(v51, v58, &v121, v49);
        goto LABEL_25;
      }

      sub_1ADF6E86C();
      v49 = v121;
      *(v47 + 32) = v121;
      if ((v55 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_1ADDE4890(v54, isUniquelyReferenced_nonNull_native);
      v49 = v121;
      v56 = sub_1ADDD8A6C(v106);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_54;
      }

      v51 = v56;
      *(v47 + 32) = v49;
      if ((v55 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v59 = v49[7];
    v60 = v97;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v95)(v60, v110);
    v61 = *(v96 + 36);
    v62 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    if (*&v14[v61] != v121)
    {
      break;
    }

LABEL_4:
    sub_1ADDCEDE0(v14, &qword_1EB5BA440, &unk_1AE24CCB0);
    swift_endAccess();
    sub_1ADDE5360(v106, type metadata accessor for Replica);
    v15 = v89;
    (*v88)(v107, v89);
    v25 = v103;
    v31 = v102;
  }

  v63 = v59 + 24 * v51;
  v109 = v61;
  v119 = v62;
  while (1)
  {
    v64 = sub_1AE23D51C();
    v66 = *v65;
    v67 = *(v65 + 8);
    v64(&v121, 0);
    sub_1AE23D47C();
    v68 = sub_1ADDE22AC(v66, v67);
    v70 = v69;
    v71 = v112;
    if (v68 != v69)
    {
      break;
    }

LABEL_27:
    sub_1ADDE2B98(v68, v70);
    v14 = v108;
    sub_1AE23D46C();
    if (*&v14[v109] == v121)
    {
      goto LABEL_4;
    }
  }

  if (v69 < v68)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v72 = v68;
  v120 = v68;
  if (v68 < v69)
  {
    while ((v68 & 0x8000000000000000) == 0)
    {
      if (v72 >= *(*v63 + 16))
      {
        goto LABEL_46;
      }

      v73 = v117;
      v74 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v75 = *(v118 + 72) * v72;
      sub_1ADDCEE40(*v63 + v74 + v75, v117, &qword_1EB5BA148, &qword_1AE241B60);
      v76 = v116;
      sub_1ADDD2198(v73 + *(v71 + 36), v116, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v114)(v76, 1, v3) == 1)
      {
        sub_1ADDCEDE0(v76, &qword_1EB5BA450, &unk_1AE25B3B0);
        v77 = type metadata accessor for FinalizedTimestamp(0);
        v78 = v115;
        (*(*(v77 - 8) + 56))(v115, 1, 1, v77);
        *(v78 + *(v3 + 20)) = 2;
        (*v113)(v78, 0, 1, v3);
      }

      else
      {
        v79 = v76;
        v80 = v111;
        sub_1ADDDE5A8(v79, v111, type metadata accessor for RetainedMapRun);
        v78 = v115;
        sub_1ADDCEE40(v80, v115, &qword_1EB5BA460, &qword_1AE251020);
        v81 = *(v80 + *(v3 + 20));
        sub_1ADDE5360(v80, type metadata accessor for RetainedMapRun);
        if (__OFADD__(v81, 1))
        {
          goto LABEL_48;
        }

        *(v78 + *(v3 + 20)) = v81 + 1;
        (*v113)(v78, 0, 1, v3);
        v71 = v112;
      }

      v82 = *v63;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *v63 = v82;
      if ((v83 & 1) == 0)
      {
        v82 = sub_1ADF799F0(v82);
        *v63 = v82;
      }

      if (v72 >= v82[2])
      {
        goto LABEL_47;
      }

      ++v72;
      sub_1ADF92F3C(v78, v82 + v74 + *(v71 + 36) + v75, &qword_1EB5BA450, &unk_1AE25B3B0);
      v68 = v120;
      if (v70 == v72)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:

    return;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADF8EA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetainedMapRun(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v97 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v96 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v70 - v11;
  v89 = sub_1AE23C0EC();
  v12 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v76);
  v15 = &v70 - v14;
  v71 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v70 - v18;
  v83 = sub_1AE23C12C();
  v19 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v81 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v70 - v24;
  v84 = 0;
  v73 = a1;
  v80 = *(a1 + 16);
  v78 = (v19 + 32);
  v75 = (v12 + 8);
  v92 = (v5 + 56);
  v93 = (v5 + 48);
  v74 = (v19 + 8);
  v82 = a2;
  v87 = v15;
  while (1)
  {
    v25 = v80;
    if (v84 == v80)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v27 = v81;
      (*(*(v26 - 8) + 56))(v81, 1, 1, v26);
      v84 = v25;
      v28 = v79;
    }

    else
    {
      v27 = v81;
      if (v84 >= v80)
      {
        goto LABEL_44;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v30 = *(v29 - 8);
      v31 = v84;
      sub_1ADDCEE40(v73 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v84, v27, &qword_1EB5BA2A0, &unk_1AE242200);
      v84 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_45;
      }

      (*(v30 + 56))(v27, 0, 1, v29);
      v28 = v79;
      a2 = v82;
    }

    sub_1ADDD2198(v27, v28, &qword_1EB5BA458, &qword_1AE251E00);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    result = (*(*(v32 - 8) + 48))(v28, 1, v32);
    if (result == 1)
    {
      return result;
    }

    (*v78)(v85, v28 + *(v32 + 48), v83);
    v34 = v86;
    sub_1ADDDE5A8(v28, v86, type metadata accessor for Replica);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = *(a2 + 32);
    v36 = v100[0];
    *(a2 + 32) = 0x8000000000000000;
    v38 = sub_1ADDD8A6C(v34);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_43;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(a2 + 32) = v36;
        if (v37)
        {
          goto LABEL_17;
        }

LABEL_16:
        v100[0] = MEMORY[0x1E69E7CC0];
        v101 = 0;
        swift_unknownObjectWeakInit();
        v101 = 0;
        swift_unknownObjectWeakAssign();
        v45 = v72;
        sub_1ADDF8098(v86, v72, type metadata accessor for Replica);
        sub_1ADDE21EC(v38, v45, v100, v36);
        goto LABEL_17;
      }

      sub_1ADF6E86C();
      v36 = v100[0];
      *(a2 + 32) = v100[0];
      if ((v42 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1ADDE4890(v41, isUniquelyReferenced_nonNull_native);
      v36 = v100[0];
      v43 = sub_1ADDD8A6C(v86);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_46;
      }

      v38 = v43;
      *(a2 + 32) = v36;
      if ((v42 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v46 = v36[7];
    v47 = v77;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v75)(v47, v89);
    v48 = *(v76 + 36);
    v49 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    if (*&v15[v48] != v100[0])
    {
      break;
    }

LABEL_2:
    sub_1ADDCEDE0(v15, &qword_1EB5BA440, &unk_1AE24CCB0);
    swift_endAccess();
    sub_1ADDE5360(v86, type metadata accessor for Replica);
    (*v74)(v85, v83);
    a2 = v82;
  }

  v50 = v48;
  v51 = v46 + 24 * v38;
  v88 = v50;
  v98 = v49;
  while (1)
  {
    v52 = sub_1AE23D51C();
    v54 = *v53;
    v55 = *(v53 + 8);
    v52(v100, 0);
    sub_1AE23D47C();
    result = sub_1ADDE22AC(v54, v55);
    v57 = v56;
    v58 = v91;
    if (result != v56)
    {
      break;
    }

LABEL_19:
    sub_1ADDE2B98(result, v57);
    v15 = v87;
    sub_1AE23D46C();
    if (*&v15[v88] == v100[0])
    {
      goto LABEL_2;
    }
  }

  if (v56 < result)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v59 = result;
  v99 = result;
  if (result >= v56)
  {
    goto LABEL_42;
  }

  while ((result & 0x8000000000000000) == 0)
  {
    if (v59 >= *(*v51 + 16))
    {
      goto LABEL_37;
    }

    v60 = v96;
    v61 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v62 = *(v97 + 72) * v59;
    sub_1ADDCEE40(*v51 + v61 + v62, v96, &qword_1EB5BA148, &qword_1AE241B60);
    v63 = v95;
    sub_1ADDD2198(v60 + *(v58 + 36), v95, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((*v93)(v63, 1, v4) == 1)
    {
      sub_1ADDCEDE0(v63, &qword_1EB5BA450, &unk_1AE25B3B0);
      v64 = type metadata accessor for FinalizedTimestamp(0);
      v65 = v94;
      (*(*(v64 - 8) + 56))(v94, 1, 1, v64);
      *(v65 + *(v4 + 20)) = 2;
      (*v92)(v65, 0, 1, v4);
    }

    else
    {
      v66 = v63;
      v67 = v90;
      sub_1ADDDE5A8(v66, v90, type metadata accessor for RetainedMapRun);
      v65 = v94;
      sub_1ADDCEE40(v67, v94, &qword_1EB5BA460, &qword_1AE251020);
      v68 = *(v67 + *(v4 + 20));
      result = sub_1ADDE5360(v67, type metadata accessor for RetainedMapRun);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_39;
      }

      *(v65 + *(v4 + 20)) = v68 + 1;
      (*v92)(v65, 0, 1, v4);
      v58 = v91;
    }

    v69 = *v51;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v51 = v69;
    if ((result & 1) == 0)
    {
      result = sub_1ADF799F0(v69);
      v69 = result;
      *v51 = result;
    }

    if (v59 >= v69[2])
    {
      goto LABEL_38;
    }

    ++v59;
    sub_1ADF92F3C(v65, v69 + v61 + *(v58 + 36) + v62, &qword_1EB5BA450, &unk_1AE25B3B0);
    result = v99;
    if (v57 == v59)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_1ADF8F658(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v116 = a1;
  v2 = type metadata accessor for RetainedMapRun(0);
  v132 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v136 = *(v4 - 8);
  v137 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v102 - v14;
  v15 = sub_1AE23C0EC();
  v135 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v106);
  v18 = &v102 - v17;
  v19 = sub_1AE23C12C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v102 - v24;
  v25 = type metadata accessor for Replica(0);
  v113 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v123 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v102 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v102 - v35;
  v37 = *(v116 + 64);
  v115 = v116 + 64;
  v38 = 1 << *(v116 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v125 = v39 & v37;
  v104 = (v38 + 63) >> 6;
  v108 = v20 + 16;
  v122 = (v20 + 32);
  v105 = (v135 + 1);
  v135 = (v132 + 6);
  v132 += 7;
  v111 = v20;
  v112 = (v20 + 8);
  v40 = v22;
  v41 = v19;

  v42 = 0;
  v124 = v40;
  v120 = v33;
  v119 = v36;
  v128 = v15;
  v127 = v18;
  v117 = v19;
  while (1)
  {
    v43 = v125;
    if (v125)
    {
      v121 = v42;
      v44 = v42;
      goto LABEL_14;
    }

    v45 = v104 <= v42 + 1 ? v42 + 1 : v104;
    v46 = v45 - 1;
    do
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v44 >= v104)
      {
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v96 - 8) + 56))(v33, 1, 1, v96);
        v125 = 0;
        v121 = v46;
        goto LABEL_15;
      }

      v43 = *(v115 + 8 * v44);
      ++v42;
    }

    while (!v43);
    v121 = v44;
LABEL_14:
    v125 = (v43 - 1) & v43;
    v47 = __clz(__rbit64(v43)) | (v44 << 6);
    v48 = v116;
    v49 = v109;
    sub_1ADDF8098(*(v116 + 48) + *(v113 + 72) * v47, v109, type metadata accessor for Replica);
    v50 = v111;
    v51 = *(v48 + 56) + *(v111 + 72) * v47;
    v52 = v110;
    v53 = v117;
    (*(v111 + 16))(v110, v51, v117);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v130 = *(v54 + 48);
    v55 = v49;
    v33 = v120;
    sub_1ADDDE5A8(v55, v120, type metadata accessor for Replica);
    v56 = *(v50 + 32);
    v41 = v53;
    v56(&v33[v130], v52, v53);
    (*(*(v54 - 8) + 56))(v33, 0, 1, v54);
    v36 = v119;
LABEL_15:
    sub_1ADDD2198(v33, v36, &qword_1EB5BA458, &qword_1AE251E00);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v57 - 8) + 48))(v36, 1, v57) == 1)
    {
      goto LABEL_61;
    }

    v58 = *(v57 + 48);
    v59 = v126;
    sub_1ADDDE5A8(v36, v126, type metadata accessor for Replica);
    (*v122)(v124, &v36[v58], v41);
    v60 = v123;
    sub_1ADDF8098(v59, v123, type metadata accessor for Replica);
    v61 = v41;
    v62 = v118;
    swift_beginAccess();
    v63 = sub_1ADDE3EF8(v139, v60);
    if (!*v64)
    {
      v69 = v61;
      (v63)(v139, 0);
      goto LABEL_20;
    }

    v65 = v64;
    v114 = v63;
    v66 = v107;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v105)(v66, v15);
    v67 = *(v106 + 36);
    v68 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    if (*&v18[v67] != v138[0])
    {
      break;
    }

LABEL_18:
    sub_1ADDCEDE0(v18, &qword_1EB5BA440, &unk_1AE24CCB0);
    (v114)(v139, 0);
    v62 = v118;
    v69 = v117;
LABEL_20:
    v33 = v120;
    v36 = v119;
    swift_endAccess();
    sub_1ADDE5360(v123, type metadata accessor for Replica);
    swift_beginAccess();
    v70 = *(v62 + 32);
    if (!*(v70 + 16) || (v71 = sub_1ADDD8A6C(v126), (v72 & 1) == 0))
    {
      memset(v138, 0, sizeof(v138));
      v41 = v69;
LABEL_28:
      sub_1ADDCEDE0(v138, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
LABEL_29:
      (*v112)(v124, v41);
      sub_1ADDE5360(v126, type metadata accessor for Replica);
      goto LABEL_30;
    }

    sub_1ADDE56CC(*(v70 + 56) + 24 * v71, v138);
    v41 = v69;
    if (!v138[0])
    {
      goto LABEL_28;
    }

    sub_1ADDE56CC(v138, &v140);
    sub_1ADDCEDE0(v138, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    v73 = *(v140 + 16);
    if (!v73)
    {
      sub_1ADDE5C20(&v140);
      goto LABEL_51;
    }

    if (v73 != 1)
    {
      sub_1ADDE5C20(&v140);
      goto LABEL_29;
    }

    v74 = v103;
    sub_1ADDCEE40(v140 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v103, &qword_1EB5BA148, &qword_1AE241B60);
    v75 = v102;
    sub_1ADDD2198(v74 + *(v137 + 36), v102, &qword_1EB5BA450, &unk_1AE25B3B0);
    LODWORD(v74) = (*v135)(v75, 1, v2);
    v76 = v75;
    v41 = v69;
    sub_1ADDCEDE0(v76, &qword_1EB5BA450, &unk_1AE25B3B0);
    sub_1ADDE5C20(&v140);
    if (v74 != 1)
    {
      goto LABEL_29;
    }

LABEL_51:
    v97 = v118;
    swift_beginAccess();
    v98 = sub_1ADDD8A6C(v126);
    if (v99)
    {
      v130 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v97 + 32);
      v140 = v101;
      *(v97 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1ADF6E86C();
        v101 = v140;
      }

      sub_1ADDE5360(*(v101 + 48) + *(v113 + 72) * v130, type metadata accessor for Replica);
      sub_1ADDE5634(*(v101 + 56) + 24 * v130, v139);
      sub_1ADF6CF18(v130, v101);
      *(v97 + 32) = v101;
    }

    else
    {
      memset(v139, 0, sizeof(v139));
    }

    swift_endAccess();
    sub_1ADDCEDE0(v139, &qword_1EB5BA468, &unk_1AE259210);
    (*v112)(v124, v41);
    sub_1ADDE5360(v126, type metadata accessor for Replica);
LABEL_30:
    v42 = v121;
  }

  v129 = v68;
  v130 = v67;
  while (1)
  {
    v77 = sub_1AE23D51C();
    v80 = *v78;
    v79 = *(v78 + 8);
    v77(v138, 0);
    sub_1AE23D47C();
    v81 = sub_1ADDE22AC(v80, v79);
    v83 = v81;
    v84 = v82;
    if (v81 != v82)
    {
      break;
    }

LABEL_32:
    sub_1ADDE2B98(v83, v84);
    v18 = v127;
    v15 = v128;
    sub_1AE23D46C();
    if (*&v18[v130] == v138[0])
    {
      goto LABEL_18;
    }
  }

  if (v82 < v81)
  {
    goto LABEL_63;
  }

  v85 = v81;
  if (v81 >= v82)
  {
LABEL_64:
    __break(1u);
    return;
  }

  while ((v83 & 0x8000000000000000) == 0)
  {
    if (v85 >= *(*v65 + 16))
    {
      goto LABEL_59;
    }

    v86 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v87 = *(v136 + 72) * v85;
    v88 = v134;
    sub_1ADDCEE40(*v65 + v86 + v87, v134, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDD2198(v88 + *(v137 + 36), v12, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((*v135)(v12, 1, v2) == 1)
    {
      sub_1ADDCEDE0(v12, &qword_1EB5BA450, &unk_1AE25B3B0);
    }

    else
    {
      v89 = v131;
      sub_1ADDDE5A8(v12, v131, type metadata accessor for RetainedMapRun);
      v90 = v89;
      v91 = *(v89 + *(v2 + 20));
      v92 = v91 - 1;
      if (v91 > 1)
      {
        v93 = v133;
        sub_1ADDD2198(v90, v133, &qword_1EB5BA460, &qword_1AE251020);
        *(v93 + *(v2 + 20)) = v92;
        (*v132)(v93, 0, 1, v2);
        goto LABEL_44;
      }

      sub_1ADDE5360(v90, type metadata accessor for RetainedMapRun);
    }

    v93 = v133;
    (*v132)(v133, 1, 1, v2);
LABEL_44:
    v94 = *v65;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *v65 = v94;
    if ((v95 & 1) == 0)
    {
      v94 = sub_1ADF799F0(v94);
      *v65 = v94;
    }

    if (v85 >= v94[2])
    {
      goto LABEL_60;
    }

    ++v85;
    sub_1ADF92F3C(v93, v94 + v86 + *(v137 + 36) + v87, &qword_1EB5BA450, &unk_1AE25B3B0);
    if (v84 == v85)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
}

void sub_1ADF90668(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for RetainedMapRun(0);
  v4 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v16 = sub_1AE23C0EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v90);
  v20 = &v84 - v19;
  v100 = sub_1AE23C12C();
  v21 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Replica(0);
  v84 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v99 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v84 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v96 = &v84 - v31;
  v102 = 0;
  v94 = (v21 + 32);
  v88 = a1;
  v32 = *(a1 + 16);
  v89 = (v17 + 8);
  v111 = (v4 + 48);
  v108 = (v4 + 56);
  v33 = v32;
  v92 = (v21 + 8);
  v98 = v23;
  v95 = v32;
  v87 = a2;
  v104 = v16;
  v103 = v20;
  while (1)
  {
    if (v102 == v33)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v35 = v97;
      (*(*(v34 - 8) + 56))(v97, 1, 1, v34);
      v102 = v33;
      v36 = v96;
    }

    else
    {
      if (v102 >= v33)
      {
        goto LABEL_54;
      }

      v37 = a2;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v39 = *(v38 - 8);
      v40 = v102;
      v35 = v97;
      sub_1ADDCEE40(v88 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v102, v97, &qword_1EB5BA2A0, &unk_1AE242200);
      v102 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_55;
      }

      (*(v39 + 56))(v35, 0, 1, v38);
      v36 = v96;
      a2 = v37;
      v23 = v98;
    }

    sub_1ADDD2198(v35, v36, &qword_1EB5BA458, &qword_1AE251E00);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v41 - 8) + 48))(v36, 1, v41) == 1)
    {
      return;
    }

    v42 = *(v41 + 48);
    v43 = v36;
    v44 = v36;
    v45 = v101;
    sub_1ADDDE5A8(v43, v101, type metadata accessor for Replica);
    (*v94)(v23, v44 + v42, v100);
    v46 = v99;
    sub_1ADDF8098(v45, v99, type metadata accessor for Replica);
    swift_beginAccess();
    v47 = sub_1ADDE3EF8(v117, v46);
    if (!*v48)
    {
      (v47)(v117, 0);
      goto LABEL_12;
    }

    v93 = v47;
    v49 = v48;
    v50 = v91;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v89)(v50, v16);
    v51 = *(v90 + 36);
    v52 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    if (*&v20[v51] != v116[0])
    {
      break;
    }

LABEL_10:
    sub_1ADDCEDE0(v20, &qword_1EB5BA440, &unk_1AE24CCB0);
    (v93)(v117, 0);
    a2 = v87;
LABEL_12:
    swift_endAccess();
    sub_1ADDE5360(v99, type metadata accessor for Replica);
    swift_beginAccess();
    v53 = *(a2 + 32);
    v23 = v98;
    if (!*(v53 + 16) || (v54 = sub_1ADDD8A6C(v101), (v55 & 1) == 0))
    {
      memset(v116, 0, sizeof(v116));
      v33 = v95;
LABEL_20:
      sub_1ADDCEDE0(v116, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      goto LABEL_21;
    }

    sub_1ADDE56CC(*(v53 + 56) + 24 * v54, v116);
    v33 = v95;
    if (!v116[0])
    {
      goto LABEL_20;
    }

    sub_1ADDE56CC(v116, &v118);
    sub_1ADDCEDE0(v116, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    v56 = *(v118 + 16);
    if (!v56)
    {
      sub_1ADDE5C20(&v118);
      goto LABEL_41;
    }

    if (v56 == 1)
    {
      v57 = v86;
      sub_1ADDCEE40(v118 + ((*(v113 + 80) + 32) & ~*(v113 + 80)), v86, &qword_1EB5BA148, &qword_1AE241B60);
      v58 = v85;
      sub_1ADDD2198(v57 + *(v115 + 36), v85, &qword_1EB5BA450, &unk_1AE25B3B0);
      LODWORD(v57) = (*v111)(v58, 1, v112);
      v59 = v58;
      v23 = v98;
      v33 = v95;
      sub_1ADDCEDE0(v59, &qword_1EB5BA450, &unk_1AE25B3B0);
      sub_1ADDE5C20(&v118);
      if (v57 != 1)
      {
        goto LABEL_21;
      }

LABEL_41:
      swift_beginAccess();
      v79 = sub_1ADDD8A6C(v101);
      if (v80)
      {
        v81 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = *(a2 + 32);
        v118 = v83;
        *(a2 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1ADF6E86C();
          v83 = v118;
        }

        sub_1ADDE5360(*(v83 + 48) + *(v84 + 72) * v81, type metadata accessor for Replica);
        sub_1ADDE5634(*(v83 + 56) + 24 * v81, v117);
        sub_1ADF6CF18(v81, v83);
        *(a2 + 32) = v83;
      }

      else
      {
        memset(v117, 0, sizeof(v117));
      }

      swift_endAccess();
      sub_1ADDCEDE0(v117, &qword_1EB5BA468, &unk_1AE259210);
      (*v92)(v23, v100);
      sub_1ADDE5360(v101, type metadata accessor for Replica);
      v33 = v95;
    }

    else
    {
      sub_1ADDE5C20(&v118);
LABEL_21:
      (*v92)(v23, v100);
      sub_1ADDE5360(v101, type metadata accessor for Replica);
    }
  }

  v106 = v51;
  v105 = v52;
  while (1)
  {
    v60 = sub_1AE23D51C();
    v62 = *v61;
    v63 = *(v61 + 8);
    v60(v116, 0);
    sub_1AE23D47C();
    v64 = sub_1ADDE22AC(v62, v63);
    v66 = v65;
    if (v64 != v65)
    {
      break;
    }

LABEL_23:
    sub_1ADDE2B98(v64, v66);
    v20 = v103;
    v16 = v104;
    sub_1AE23D46C();
    if (*&v20[v106] == v116[0])
    {
      goto LABEL_10;
    }
  }

  if (v65 < v64)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v67 = v64;
  v114 = v64;
  if (v64 >= v65)
  {
    goto LABEL_53;
  }

  while ((v64 & 0x8000000000000000) == 0)
  {
    if (v67 >= *(*v49 + 16))
    {
      goto LABEL_49;
    }

    v68 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v69 = *(v113 + 72) * v67;
    v70 = v110;
    sub_1ADDCEE40(*v49 + v68 + v69, v110, &qword_1EB5BA148, &qword_1AE241B60);
    v71 = v109;
    sub_1ADDD2198(v70 + *(v115 + 36), v109, &qword_1EB5BA450, &unk_1AE25B3B0);
    v72 = v112;
    if ((*v111)(v71, 1, v112) == 1)
    {
      sub_1ADDCEDE0(v71, &qword_1EB5BA450, &unk_1AE25B3B0);
    }

    else
    {
      v73 = v107;
      sub_1ADDDE5A8(v71, v107, type metadata accessor for RetainedMapRun);
      v74 = v73;
      v75 = *(v73 + *(v72 + 20));
      v76 = v75 - 1;
      if (v75 > 1)
      {
        sub_1ADDD2198(v74, v15, &qword_1EB5BA460, &qword_1AE251020);
        *&v15[*(v72 + 20)] = v76;
        (*v108)(v15, 0, 1, v72);
        goto LABEL_35;
      }

      sub_1ADDE5360(v74, type metadata accessor for RetainedMapRun);
    }

    (*v108)(v15, 1, 1, v72);
LABEL_35:
    v77 = *v49;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *v49 = v77;
    if ((v78 & 1) == 0)
    {
      v77 = sub_1ADF799F0(v77);
      *v49 = v77;
    }

    if (v67 >= v77[2])
    {
      goto LABEL_50;
    }

    ++v67;
    sub_1ADF92F3C(v15, v77 + v68 + *(v115 + 36) + v69, &qword_1EB5BA450, &unk_1AE25B3B0);
    v64 = v114;
    if (v66 == v67)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_1ADF91530(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v63 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB40, &qword_1AE24E078);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for RetainedMapRun(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v53 - v22);
  v65 = v24;
  sub_1ADDCEE40(v4 + *(v24 + 36), v16, &qword_1EB5BA450, &unk_1AE25B3B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    v26 = *v4;
    if (*v4 <= a3)
    {
      v27 = v65;
      v28 = *(v18 + 56);
      result = v28(v23 + *(v65 + 36), 1, 1, v17);
      *v23 = v26;
      v23[1] = a3;
      v29 = v4[1];
      if (v29 >= a3)
      {
        v30 = *(v27 + 36);
        v31 = v62;
        v28(v62 + v30, 1, 1, v17);
        *v31 = a3;
        v31[1] = v29;
        return sub_1ADDD2198(v23, v63, &qword_1EB5BA148, &qword_1AE241B60);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v57 = v17;
  result = sub_1ADDDE5A8(v16, v20, type metadata accessor for RetainedMapRun);
  v32 = *v4;
  v56 = a3;
  v33 = a3 - v32;
  if (__OFSUB__(a3, v32))
  {
    goto LABEL_15;
  }

  v55 = v4;
  v34 = v64;
  v35 = v64 + *(v66 + 48);
  sub_1ADDCEE40(v20, v8, &qword_1EB5BA460, &qword_1AE251020);
  v37 = v60;
  v36 = v61;
  if ((*(v60 + 48))(v8, 1, v61) == 1)
  {
    sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDF8098(v20, v34, type metadata accessor for RetainedMapRun);
    sub_1ADDF8098(v20, v35, type metadata accessor for RetainedMapRun);
    goto LABEL_10;
  }

  v54 = v33;
  v38 = v58;
  sub_1ADDDE5A8(v8, v58, type metadata accessor for FinalizedTimestamp);
  sub_1ADDF8098(v20, v34, type metadata accessor for RetainedMapRun);
  v39 = sub_1AE23BFEC();
  (*(*(v39 - 8) + 16))(v35, v38, v39);
  v40 = *(v38 + v36[5]);
  result = sub_1ADDE5360(v38, type metadata accessor for FinalizedTimestamp);
  if (!__OFADD__(v40, v54))
  {
    *(v35 + v36[5]) = v40 + v54;
    (*(v37 + 56))(v35, 0, 1, v36);
    *(v35 + *(v57 + 20)) = *&v20[*(v57 + 20)];
LABEL_10:
    result = sub_1ADDE5360(v20, type metadata accessor for RetainedMapRun);
    v41 = v56;
    if (v32 <= v56)
    {
      v42 = v65;
      v43 = *(v65 + 36);
      v44 = v59;
      sub_1ADDCEE40(v34, v59, &qword_1EB5BBB40, &qword_1AE24E078);
      v45 = v66;
      v46 = *(v66 + 48);
      sub_1ADDDE5A8(v44, v23 + v43, type metadata accessor for RetainedMapRun);
      v47 = v57;
      v61 = *(v18 + 56);
      (v61)(v23 + v43, 0, 1, v57);
      *v23 = v32;
      v23[1] = v41;
      v48 = v44;
      result = sub_1ADDE5360(v44 + v46, type metadata accessor for RetainedMapRun);
      v49 = v55[1];
      if (v49 >= v41)
      {
        v50 = *(v42 + 36);
        sub_1ADDD2198(v64, v44, &qword_1EB5BBB40, &qword_1AE24E078);
        v51 = v44 + *(v45 + 48);
        v52 = v62;
        sub_1ADDDE5A8(v51, v62 + v50, type metadata accessor for RetainedMapRun);
        (v61)(v52 + v50, 0, 1, v47);
        *v52 = v41;
        v52[1] = v49;
        sub_1ADDE5360(v48, type metadata accessor for RetainedMapRun);
        return sub_1ADDD2198(v23, v63, &qword_1EB5BA148, &qword_1AE241B60);
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF91C08()
{
  v1 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  sub_1ADDF8098(v0 + v4, v3, type metadata accessor for Timestamp);
  if (*&v3[*(type metadata accessor for Replica(0) + 20)])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AE2418F0;
    sub_1ADDF8098(v3, v7 + v6, type metadata accessor for Replica);
    sub_1AE23C09C();
    sub_1ADF8D9C4(v7, &unk_1F23C0E20, sub_1ADF9377C, &block_descriptor_15);
  }

  sub_1ADDE5360(v3, type metadata accessor for Timestamp);
  sub_1ADDE5360(v0 + v4, type metadata accessor for Timestamp);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRTimestampRef(uint64_t a1)
{
  result = qword_1EB5BBB20;
  if (!qword_1EB5BBB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADF91EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ADDF8098(a1, a2, type metadata accessor for Timestamp);
  type metadata accessor for Replica(0);
  sub_1ADDD8290(a2);

  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  sub_1ADF833C4(v4, v5, v6);
}

void sub_1ADF91FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a2 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  if (*(v8 + *(v5 + 28)))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v8 + *(type metadata accessor for Timestamp(0) + 20));
    sub_1ADDF8098(v8, v7, type metadata accessor for Replica);
    v10 = sub_1ADDF66A8(v7);
    v11 = sub_1AE23BFEC();
    v12 = (*(*(v11 - 8) + 8))(v7, v11);
    sub_1ADE71C08(v12, v13, v14);
    if (!v2)
    {
      swift_beginAccess();

      sub_1AE1B6B44(v10, v9);
      swift_endAccess();
    }
  }
}

uint64_t sub_1ADF9217C(uint64_t a1)
{
  v33 = a1;
  v2 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = *v1;
  v12 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  sub_1ADDF8098(v11 + v12, v10, type metadata accessor for Timestamp);
  v13 = type metadata accessor for Replica(0);
  v14 = *&v10[*(v13 + 20)];
  result = sub_1ADDE5360(v10, type metadata accessor for Timestamp);
  if (v14 >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v1;
    v18 = &unk_1ED96B000;
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = *v1;
    }

    else
    {
      v20 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
      swift_beginAccess();
      sub_1ADDF8098(v17 + v20, v7, type metadata accessor for Timestamp);
      type metadata accessor for CRTimestampRef(0);
      v19 = swift_allocObject();
      v18 = &unk_1ED96B000;
      sub_1ADDF8098(v7, v19 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp, type metadata accessor for Timestamp);
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      if (*&v7[*(v13 + 20)])
      {
        v32 = qword_1ED96F2F8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1AE2418F0;
        sub_1ADDF8098(v7, v23 + v22, type metadata accessor for Replica);
        sub_1AE23C09C();
        sub_1ADF8D9C4(v23, &unk_1F23C0D80, sub_1ADF92ED0, &block_descriptor_6);
        v18 = &unk_1ED96B000;
      }

      sub_1ADDE5360(v7, type metadata accessor for Timestamp);

      *v1 = v19;
    }

    v37 = MEMORY[0x1E69E7CC8];
    v38 = MEMORY[0x1E69E7CC8];
    v24 = OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
    swift_beginAccess();
    sub_1ADDF8098(v19 + v24, v4, type metadata accessor for Timestamp);
    sub_1ADDD8290(v4);
    v25 = sub_1ADDE5360(v4, type metadata accessor for Timestamp);
    if (v18[97] != -1)
    {
      v25 = swift_once();
    }

    v26 = v37;
    v27 = v38;
    MEMORY[0x1EEE9AC00](v25);
    *(&v32 - 4) = v26;
    *(&v32 - 3) = v27;
    *(&v32 - 2) = v28;
    *(&v32 - 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v29 = v34;
    v30 = v35;
    v31 = v36;
    swift_beginAccess();
    sub_1ADF833C4(v29, v30, v31);
    swift_endAccess();
  }

  return result;
}

void sub_1ADF92678()
{
  sub_1AE23E31C();
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1ADF9271C(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23DC5C();
  __break(1u);
}

BOOL sub_1ADF9277C()
{
  v1 = *v0 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for Replica(0) + 20)) > 0;
}

void sub_1ADF927E0(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1ADF933BC(a2, a3, a4);
  if (!v4)
  {
    *a1 = v6;
  }
}

unint64_t sub_1ADF9282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBB30;
  if (!qword_1EB5BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB30);
  }

  return result;
}

unint64_t sub_1ADF92880(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1ADDE2A5C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1ADF92954(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1ADF92954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
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

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

  if (v17 < 1)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

  result = sub_1ADDCEE40(a4, v15, &qword_1EB5BA148, &qword_1AE241B60);
  if (v12 >= v17)
  {
    return sub_1ADDCEDE0(a4, &qword_1EB5BBB38, &qword_1AE24E070);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1ADF92AF0(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v29 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = a1 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  v22 = type metadata accessor for Replica(0);
  v23 = *(v21 + *(v22 + 20));
  v24 = a2 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp;
  swift_beginAccess();
  if (v23 > 0 == *(v24 + *(v22 + 20)) < 1)
  {
    v26 = v32;
    if (v23 < 1)
    {
      sub_1ADDF8098(v24, v11, type metadata accessor for Timestamp);
      v20 = v29;
      sub_1ADF91EE8(v11, v29);
      sub_1ADDE5360(v11, type metadata accessor for Timestamp);
      v27 = v30;
      sub_1ADDF8098(v21, v30, type metadata accessor for Timestamp);
      if (*&v20[*(v26 + 20)] == *(v27 + *(v26 + 20)) && *&v20[*(v22 + 20)] == *(v27 + *(v22 + 20)))
      {
        v25 = sub_1AE23BF8C();
      }

      else
      {
        v25 = 0;
      }

      v17 = v27;
    }

    else
    {
      sub_1ADDF8098(v21, v11, type metadata accessor for Timestamp);
      sub_1ADF91EE8(v11, v14);
      sub_1ADDE5360(v11, type metadata accessor for Timestamp);
      v17 = v31;
      sub_1ADDF8098(v24, v31, type metadata accessor for Timestamp);
      if (*&v14[*(v26 + 20)] == *&v17[*(v26 + 20)] && *&v14[*(v22 + 20)] == *&v17[*(v22 + 20)])
      {
        v25 = sub_1AE23BF8C();
        v20 = v14;
      }

      else
      {
        v25 = 0;
        v20 = v14;
      }
    }
  }

  else
  {
    sub_1ADDF8098(v21, v20, type metadata accessor for Timestamp);
    sub_1ADDF8098(v24, v17, type metadata accessor for Timestamp);
    if (*&v20[*(v32 + 20)] == *&v17[*(v32 + 20)] && *&v20[*(v22 + 20)] == *&v17[*(v22 + 20)])
    {
      v25 = sub_1AE23BF8C();
    }

    else
    {
      v25 = 0;
    }
  }

  sub_1ADDE5360(v17, type metadata accessor for Timestamp);
  sub_1ADDE5360(v20, type metadata accessor for Timestamp);
  return v25 & 1;
}

unint64_t sub_1ADF92ED8()
{
  result = qword_1ED96AA50;
  if (!qword_1ED96AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA50);
  }

  return result;
}

uint64_t sub_1ADF92F3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADF92FA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v5 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 24);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v18 > a1;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v26[1] = a3;
    v21 = sub_1AE23BFEC();
    (*(*(v21 - 8) + 16))(v16, v17 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(*(v21 - 8) + 72) * a1, v21);
    *&v16[*(v11 + 20)] = 0;
    sub_1ADDF8098(v16, v10, type metadata accessor for Replica);
    *&v10[*(v5 + 20)] = v27;
    sub_1ADDF8098(v10, v7, type metadata accessor for Timestamp);
    type metadata accessor for CRTimestampRef(0);
    a3 = swift_allocObject();
    sub_1ADDF8098(v7, a3 + OBJC_IVAR____TtC9Coherence14CRTimestampRef_timestamp, type metadata accessor for Timestamp);
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    if (*&v7[*(v11 + 20)])
    {
      v27 = qword_1ED96F2F8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AE2418F0;
      sub_1ADDF8098(v7, v24 + v23, type metadata accessor for Replica);
      sub_1AE23C09C();
      sub_1ADF8D9C4(v24, &unk_1F23C0D80, sub_1ADF92ED0, &block_descriptor_6);
    }

    else
    {
    }

    sub_1ADDE5360(v7, type metadata accessor for Timestamp);
    sub_1ADDE5360(v10, type metadata accessor for Timestamp);
    sub_1ADDE5360(v16, type metadata accessor for Replica);
  }

  else
  {
    sub_1ADE42E40(v12, v13, v14);
    swift_allocError();
    *v20 = 0xD000000000000013;
    *(v20 + 8) = 0x80000001AE25FD70;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return a3;
}

void sub_1ADF933BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
    if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 9)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    sub_1ADF92FA4(v7, v8, a1);
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

uint64_t sub_1ADF934B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_1ADF9352C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF935FC(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1ADF936D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1ADF93784(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF93880()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADF938F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRStructDecoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable();
  return sub_1AE23DD4C();
}

void sub_1ADF9397C(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a7@<X8>)
{
  v8 = v7;
  v88 = a3;
  v84 = a7;
  v12 = sub_1AE23D7CC();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v81 - v13;
  v87 = a5;
  v86 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AE23E3DC();
  if (v19)
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](544826699, 0xE400000000000000);
    sub_1AE23DFDC();
    v20 = 0xD000000000000018;
    v21 = 0x80000001AE261770;
LABEL_3:
    v22 = MEMORY[0x1B26FB670](v20, v21);
    v23 = v89;
    v24 = v90;
    sub_1ADE42E40(v22, v25, v26);
    swift_allocError();
    *v27 = v23;
    *(v27 + 8) = v24;
LABEL_4:
    *(v27 + 16) = 0;
    goto LABEL_39;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v83 = v7;
    v28 = v18;
    v29 = swift_conformsToProtocol2();
    if (v29 && a1)
    {
      v32 = v88[3];
      v33 = *(v32 + 16);
      if (!v33)
      {
LABEL_12:
        v88 = v81;
        v36 = MEMORY[0x1EEE9AC00](v29);
        v38 = v83;
        (*(v37 + 40))(a1, v36);
        if (v38)
        {

          (*(v86 + 56))(v14, 1, 1, v87);
        }

        else
        {
          v74 = v87;
          v75 = swift_dynamicCast();
          v76 = v86;
          (*(v86 + 56))(v14, v75 ^ 1u, 1, v74);
          if ((*(v76 + 48))(v14, 1, v74) != 1)
          {
            v80 = *(v76 + 32);
            v80(v17, v14, v74);
            v80(v84, v17, v74);
            return;
          }
        }

        (*(v85 + 8))(v14, v12);
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_1AE23DA2C();
        MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE261790);
        sub_1AE23DFDC();
        v21 = 0x80000001AE2617B0;
        v20 = 0xD000000000000012;
        goto LABEL_3;
      }

      v34 = 0;
      v35 = v32 + 32;
      while (*(v35 + 8 * v34) != v28)
      {
        if (v33 == ++v34)
        {
          goto LABEL_12;
        }
      }

      v67 = v88[4];
      if (v34 >= *(v67 + 16))
      {
        goto LABEL_54;
      }

      v68 = v29;
      v69 = *(v67 + 8 * v34 + 32);
      v70 = v88[2];
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v71 = sub_1ADE0262C(v69, v70);

      v72 = *(v68 + 8);
      v91 = a1;
      v92 = v68;
      __swift_allocate_boxed_opaque_existential_1(&v89);
      v73 = v83;
      v72(v71, a1, v68);

      if (v73)
      {
        __swift_deallocate_boxed_opaque_existential_0(&v89);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
LABEL_50:
      swift_dynamicCast();
      return;
    }

LABEL_38:
    sub_1ADE42E40(v29, v30, v31);
    swift_allocError();
    *v66 = xmmword_1AE24E080;
    *(v66 + 16) = 4;
LABEL_39:
    swift_willThrow();
    return;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  v29 = swift_dynamicCastMetatype();
  if (!v29)
  {
    goto LABEL_38;
  }

  v29 = swift_conformsToProtocol2();
  if (!v29 || !a4)
  {
    goto LABEL_38;
  }

  v40 = (*(v29 + 8))(a4, v29);
  v41 = v40;
  v42 = v88;
  v43 = v88[3];
  v44 = *(v43 + 16);
  if (!v44)
  {
    v48 = MEMORY[0x1E69E7CC8];
LABEL_47:

    v89 = v48;
    goto LABEL_50;
  }

  v81[1] = v39;
  v45 = v43 + 32;
  v46 = v40 + 56;

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC8];
  while (v47 < *(v43 + 16))
  {
    v49 = *(v45 + 8 * v47);
    if (v49 < 0)
    {
      goto LABEL_53;
    }

    if (*(v41 + 16))
    {
      v50 = sub_1AE23E30C();
      v51 = -1 << *(v41 + 32);
      v52 = v50 & ~v51;
      if ((*(v46 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
      {
        v53 = ~v51;
        v42 = v88;
        while (*(*(v41 + 48) + 8 * v52) != v49)
        {
          v52 = (v52 + 1) & v53;
          if (((*(v46 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_36;
      }

      v42 = v88;
    }

LABEL_28:
    v54 = v42[3];
    v55 = *(v54 + 16);
    if (!v55)
    {
LABEL_45:

      sub_1ADE42E40(v77, v78, v79);
      swift_allocError();
      *v27 = 0xD00000000000001ELL;
      *(v27 + 8) = 0x80000001AE2617D0;
      goto LABEL_4;
    }

    v56 = 0;
    v57 = v54 + 32;
    while (*(v57 + 8 * v56) != v49)
    {
      if (v55 == ++v56)
      {
        goto LABEL_45;
      }
    }

    v85 = v41;
    v86 = v43;
    v82 = v45;
    v83 = v44;
    v58 = v42[4];
    if (v56 >= *(v58 + 16))
    {
      goto LABEL_55;
    }

    v59 = v48;
    v60 = v8;
    v61 = *(v58 + 8 * v56 + 32);
    v62 = v42[2];
    type metadata accessor for CRDecoder();
    swift_allocObject();
    swift_retain_n();

    sub_1ADE0262C(v61, v62);

    AnyCRValue.init(from:)(v63, &v89);
    if (v60)
    {

      return;
    }

    v64 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v59;
    sub_1ADEC004C(v64, v49, isUniquelyReferenced_nonNull_native);

    v8 = 0;
    v48 = v93;
    v42 = v88;
    v41 = v85;
    v43 = v86;
    v45 = v82;
    v44 = v83;
LABEL_36:
    if (++v47 == v44)
    {

      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1ADF941DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23E3DC();
  if (v6)
  {
    return 1;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v8 = *(a2 + 24);
    v9 = *(v8 + 16);
    v10 = (v8 + 32);
    do
    {
      v7 = v9 == 0;
      if (!v9)
      {
        break;
      }

      v11 = *v10++;
      --v9;
    }

    while (v11 != result);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF94288@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  a2[3] = &type metadata for CRStructDecoder.UnkeyedContainer;
  a2[4] = sub_1ADF96EE4(a3, a1, a4);
  *a2 = a1;
  a2[1] = 0;
}

uint64_t sub_1ADF942DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructDecoder();
  a2[4] = sub_1ADF96FB4();
  *a2 = a1;
}

uint64_t sub_1ADF9432C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructDecoder();
  a2[4] = sub_1ADF96FB4();
  *a2 = a1;
}

uint64_t sub_1ADF943BC(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E6370], *v2, *(a2 + 16), MEMORY[0x1E69E6370], &v6);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

double sub_1ADF94468(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E63B0], *v2, *(a2 + 16), MEMORY[0x1E69E63B0], &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_1ADF944BC(uint64_t a1, uint64_t a2)
{
  sub_1ADF9397C(MEMORY[0x1E69E6448], *v2, *(a2 + 16), MEMORY[0x1E69E6448], &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ADF9485C()
{
  result = sub_1AE23E0DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF948AC()
{
  result = sub_1AE23E0EC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94954()
{
  result = sub_1AE23E11C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF949A4()
{
  result = sub_1AE23E0FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94AE4()
{
  result = sub_1AE23E12C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF94B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_1ADF94C24(_BOOL8 result)
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v5 = sub_1ADE0262C(v3, v4);

    if (*(v5 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      inited = swift_initStackObject();
      *(inited + 16) = v5;
      v12 = sub_1ADDF4474(inited, v10, v11);

      if (!v1)
      {
        return v12 != 0;
      }
    }

    else
    {
      sub_1ADE42E40(v6, v7, v8);
      swift_allocError();
      *v14 = 0xD000000000000017;
      *(v14 + 8) = 0x80000001AE25FB70;
      *(v14 + 16) = 0;
      swift_willThrow();
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ADF94D64(unint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v3 = v1;
    v4 = *(v2 + 32);
    v5 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v6 = sub_1ADE0262C(v4, v5);

    if (*(v6 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      v13 = sub_1ADE05C74(inited, v11, v12);
      if (!v1)
      {
        v3 = v13;

        return v3;
      }
    }

    else
    {
      v3 = 0x80000001AE25FB70;
      sub_1ADE42E40(v7, v8, v9);
      swift_allocError();
      *v14 = 0xD000000000000017;
      *(v14 + 8) = 0x80000001AE25FB70;
      *(v14 + 16) = 0;
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1ADF94EAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(a1 + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v4 = sub_1ADE0262C(v2, v3);

    if (*(v4 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      inited = swift_initStackObject();
      *(inited + 16) = v4;
      sub_1ADE08CAC(inited, v9, v10);
    }

    else
    {
      sub_1ADE42E40(v5, v6, v7);
      swift_allocError();
      *v11 = 0xD000000000000017;
      *(v11 + 8) = 0x80000001AE25FB70;
      *(v11 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADF94FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(a1 + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v4 = sub_1ADE0262C(v2, v3);

    if (*(v4 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      inited = swift_initStackObject();
      *(inited + 16) = v4;
      sub_1ADE71F8C(inited, v9, v10);
    }

    else
    {
      sub_1ADE42E40(v5, v6, v7);
      swift_allocError();
      *v11 = 0xD000000000000017;
      *(v11 + 8) = 0x80000001AE25FB70;
      *(v11 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADF9512C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 16))
    {
      v9 = result;
      v10 = *(v8 + 32);
      v11 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v12 = sub_1ADE0262C(v10, v11);

      v13 = *(v9 + 8);
      v15[3] = a2;
      v15[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(v15);
      v13(v12, a2, v9);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v15);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v16;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40(0, v6, v7);
    swift_allocError();
    *v14 = xmmword_1AE24E080;
    *(v14 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADF952BC(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 16))
    {
      v9 = result;
      v10 = *(v8 + 32);
      v11 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v12 = sub_1ADE0262C(v10, v11);

      v13 = *(v9 + 8);
      v15[3] = a2;
      v15[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(v15);
      v13(v12, a2, v9);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v15);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v16;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40(0, v6, v7);
    swift_allocError();
    *v14 = xmmword_1AE24E080;
    *(v14 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADF9544C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 16))
    {
      v9 = result;
      v10 = *(v8 + 32);
      v11 = *(a1 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v12 = sub_1ADE0262C(v10, v11);

      v13 = *(v9 + 8);
      v15[3] = a2;
      v15[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(v15);
      v13(v12, a2, v9);

      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v15);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        swift_dynamicCast();
        return v16;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40(0, v6, v7);
    swift_allocError();
    *v14 = xmmword_1AE24E080;
    *(v14 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADF955DC(uint64_t result, uint64_t (*a2)(void))
{
  v2 = *(result + 32);
  if (*(v2 + 16))
  {
    v4 = *(v2 + 32);
    v5 = *(result + 16);
    type metadata accessor for CRDecoder();
    swift_initStackObject();
    swift_retain_n();

    v6 = sub_1ADE0262C(v4, v5);

    if (*(v6 + 72))
    {
      type metadata accessor for CRDecoder.CRValueContainer();
      *(swift_initStackObject() + 16) = v6;
      v10 = a2();
    }

    else
    {
      v10 = 0x80000001AE25FB70;
      sub_1ADE42E40(v7, v8, v9);
      swift_allocError();
      *v11 = 0xD000000000000017;
      *(v11 + 8) = 0x80000001AE25FB70;
      *(v11 + 16) = 0;
      swift_willThrow();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF9571C(uint64_t a1, uint64_t a2)
{
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    v10 = *(a2 + 32);
    if (*(v10 + 16))
    {
      v11 = result;
      v12 = *(v10 + 32);
      v13 = *(a2 + 16);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v14 = sub_1ADE0262C(v12, v13);

      v15 = *(v11 + 8);
      v17[3] = a1;
      v17[4] = v11;
      __swift_allocate_boxed_opaque_existential_1(v17);
      v15(v14, a1, v11);

      if (v4)
      {
        return __swift_deallocate_boxed_opaque_existential_0(v17);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
        return swift_dynamicCast();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1ADE42E40(result, v8, v9);
    swift_allocError();
    *v16 = xmmword_1AE24E080;
    *(v16 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

void sub_1ADF95A58()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    sub_1ADDF4474(inited, v11, v12);
  }

  else
  {
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001AE25FB70;
    *(v13 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95BB8()
{
  v2 = v0[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *v0;
  v4 = *(*v0 + 32);
  if (v2 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *(v4 + 8 * v2 + 32);
  v0[1] = v2 + 1;
  v6 = *(v3 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v7 = sub_1ADE0262C(v5, v6);

  if (*(v7 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v7;
    sub_1ADE05C74(inited, v12, v13);
    if (!v1)
    {

      return;
    }
  }

  else
  {
    sub_1ADE42E40(v8, v9, v10);
    swift_allocError();
    *v14 = 0xD000000000000017;
    *(v14 + 8) = 0x80000001AE25FB70;
    *(v14 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95D20()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    sub_1ADE08CAC(inited, v11, v12);
  }

  else
  {
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001AE25FB70;
    *(v13 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADF95E80()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(*v0 + 32);
  if (v1 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v0[1] = v1 + 1;
  v5 = *(v2 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v6 = sub_1ADE0262C(v4, v5);

  if (*(v6 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    sub_1ADE71F8C(inited, v11, v12);
  }

  else
  {
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001AE25FB70;
    *(v13 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADF95FE0(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40(0, v5, v6);
    swift_allocError();
    *v15 = xmmword_1AE24E080;
    *(v15 + 16) = 4;
    return swift_willThrow();
  }

  v7 = v1[1];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *v1;
  v9 = *(*v1 + 32);
  if (v7 >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = *(v9 + 8 * v7 + 32);
  v1[1] = v7 + 1;
  v12 = *(v8 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v13 = sub_1ADE0262C(v11, v12);

  v14 = *(v10 + 8);
  v16[3] = a1;
  v16[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v16);
  v14(v13, a1, v10);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v17;
}

uint64_t sub_1ADF96188(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40(0, v5, v6);
    swift_allocError();
    *v15 = xmmword_1AE24E080;
    *(v15 + 16) = 4;
    return swift_willThrow();
  }

  v7 = v1[1];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *v1;
  v9 = *(*v1 + 32);
  if (v7 >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = *(v9 + 8 * v7 + 32);
  v1[1] = v7 + 1;
  v12 = *(v8 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v13 = sub_1ADE0262C(v11, v12);

  v14 = *(v10 + 8);
  v16[3] = a1;
  v16[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v16);
  v14(v13, a1, v10);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v17;
}

uint64_t sub_1ADF96330(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result)
  {
    sub_1ADE42E40(0, v5, v6);
    swift_allocError();
    *v15 = xmmword_1AE24E080;
    *(v15 + 16) = 4;
    return swift_willThrow();
  }

  v7 = v1[1];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *v1;
  v9 = *(*v1 + 32);
  if (v7 >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = *(v9 + 8 * v7 + 32);
  v1[1] = v7 + 1;
  v12 = *(v8 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v13 = sub_1ADE0262C(v11, v12);

  v14 = *(v10 + 8);
  v16[3] = a1;
  v16[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v16);
  v14(v13, a1, v10);

  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  swift_dynamicCast();
  return v17;
}

uint64_t (*sub_1ADF964D8(uint64_t (*result)(void)))(void)
{
  v2 = v1[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *v1;
  v4 = *(*v1 + 32);
  if (v2 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(v4 + 8 * v2 + 32);
  v1[1] = v2 + 1;
  v7 = *(v3 + 16);
  type metadata accessor for CRDecoder();
  swift_initStackObject();
  swift_retain_n();

  v8 = sub_1ADE0262C(v6, v7);

  if (*(v8 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v8;
    v12 = v5();
  }

  else
  {
    v12 = 0x80000001AE25FB70;
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001AE25FB70;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1ADF96638(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (!result || !a1)
  {
    sub_1ADE42E40(result, v7, v8);
    swift_allocError();
    *v17 = xmmword_1AE24E080;
    *(v17 + 16) = 4;
    return swift_willThrow();
  }

  v9 = v3[1];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v3;
  v11 = *(*v3 + 32);
  if (v9 >= *(v11 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = *(v11 + 8 * v9 + 32);
  v3[1] = v9 + 1;
  v14 = *(v10 + 16);
  type metadata accessor for CRDecoder();
  swift_allocObject();
  swift_retain_n();

  v15 = sub_1ADE0262C(v13, v14);

  v16 = *(v12 + 8);
  v18[3] = a1;
  v18[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(v18);
  v16(v15, a1, v12);

  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  return swift_dynamicCast();
}

uint64_t sub_1ADF969EC()
{
  result = sub_1AE23DDDC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96A3C()
{
  result = sub_1AE23DDEC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96AE4()
{
  result = sub_1AE23DE1C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96B34()
{
  result = sub_1AE23DDFC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96C74()
{
  result = sub_1AE23DE2C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1ADF96CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ADF96D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_1ADF96D68@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for CRStructDecoder();
  a1[4] = sub_1ADF96FB4();
  *a1 = v3;
}

uint64_t sub_1ADF96DE8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = *v4;
  a1[3] = &type metadata for CRStructDecoder.UnkeyedContainer;
  a1[4] = sub_1ADF96EE4(a2, a3, a4);
  *a1 = v6;
  a1[1] = 0;
}

uint64_t sub_1ADF96E3C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = *v4;
  a1[3] = &type metadata for CRStructDecoder.SingleValueContainer;
  a1[4] = sub_1ADF96E90(a2, a3, a4);
  *a1 = v6;
}

unint64_t sub_1ADF96E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBB48;
  if (!qword_1EB5BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB48);
  }

  return result;
}

unint64_t sub_1ADF96EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBB50;
  if (!qword_1EB5BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB50);
  }

  return result;
}

uint64_t sub_1ADF96F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ADF96FB4()
{
  result = qword_1ED9692A0[0];
  if (!qword_1ED9692A0[0])
  {
    type metadata accessor for CRStructDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9692A0);
  }

  return result;
}

__n128 sub_1ADF97074(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v2[1] = *a1;
  return result;
}

void sub_1ADF970AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v41 = *(a2 + 16);
  v42 = *(a1 + 16);
  if (v41 >= v42)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F254(0, v5, 0);
  v6 = v49;
  v43 = v5;
  v37 = a1;
  v39 = a2;
  if (v5)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v13 = *v7++;
      v12 = v13;

      sub_1ADDD86D8(v10, v11);
      if (!v9)
      {
        goto LABEL_30;
      }

      v14 = a3(&v47, v9, v10, v11, v12);
      if (v46)
      {

        sub_1ADDCC35C(v10, v11);
        return;
      }

      v15 = v14;
      v48 = v14;

      sub_1ADDCC35C(v10, v11);
      v16 = v47;
      v49 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        v36 = v47;
        sub_1ADE6F254((v17 > 1), v18 + 1, 1);
        v16 = v36;
        v6 = v49;
      }

      v8 += 3;
      *(v6 + 16) = v18 + 1;
      v19 = v6 + 24 * v18;
      *(v19 + 32) = v16;
      *(v19 + 48) = v15;
    }

    while (--v5);
  }

  v21 = v41;
  v20 = v42;
  if (v42 > v41)
  {
    v40 = v39 + 32;
    v22 = v43;
    v23 = (v37 + 24 * v43 + 48);
    v24 = v46;
    while (v22 < v20)
    {
      if (__OFADD__(v22, 1))
      {
        goto LABEL_27;
      }

      if (v21 == v22)
      {
        return;
      }

      if (v22 >= v21)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_29;
      }

      v44 = v22 + 1;
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;
      v28 = v22;
      v29 = *(v40 + 8 * v22);

      sub_1ADDD86D8(v26, v27);
      v30 = a3(&v47, v25, v26, v27, v29);
      if (v24)
      {

        sub_1ADDCC35C(v26, v27);

        return;
      }

      v31 = v30;

      sub_1ADDCC35C(v26, v27);
      v48 = v31;
      v32 = v47;
      v49 = v6;
      v34 = *(v6 + 16);
      v33 = *(v6 + 24);
      if (v34 >= v33 >> 1)
      {
        v38 = v47;
        sub_1ADE6F254((v33 > 1), v34 + 1, 1);
        v32 = v38;
        v6 = v49;
      }

      *(v6 + 16) = v34 + 1;
      v35 = v6 + 24 * v34;
      *(v35 + 32) = v32;
      *(v35 + 48) = v31;
      v22 = v28 + 1;
      v23 += 3;
      v20 = v42;
      v24 = 0;
      v21 = v41;
      if (v44 == v42)
      {
        return;
      }
    }

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
}

uint64_t sub_1ADF973C0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      *a1 = a3;
      a1[1] = a4;
      return a5;
    }

    if (a3 == a3 >> 32)
    {
      goto LABEL_10;
    }

LABEL_11:
    v8 = a1;
    v9 = a4;
    v10 = a3;
    sub_1ADDD86D8(a3, a4);
    a1 = v8;
    a3 = v10;
    a4 = v9;
    goto LABEL_12;
  }

  if (v6 != 2)
  {
LABEL_8:
    sub_1ADDCC35C(a3, a4);
    goto LABEL_10;
  }

  if (*(a3 + 16) != *(a3 + 24))
  {
    goto LABEL_11;
  }

LABEL_10:
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v7 = 0xD000000000000016;
  *(v7 + 8) = 0x80000001AE25FC80;
  *(v7 + 16) = 0;
  swift_willThrow();
  return a5;
}

BOOL sub_1ADF974C4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1ADF65450(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_1ADF655B8(v2, v3);
}

uint64_t sub_1ADF976EC()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 104))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF97794(uint64_t a1)
{
  sub_1AE23E31C();
  (*(**v1 + 104))(v3);
  return sub_1AE23E34C();
}

BOOL sub_1ADF978CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypedReference(0, *(*v4 + 144), *(*v4 + 152), a4);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    v6 = 0;
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    v7 = 0xF000000000000000;
LABEL_6:
    sub_1ADDD86D8(v8, v9);
    if (v9 >> 60 == 15)
    {
      sub_1ADDE1588(v6, v7);
      return 1;
    }

    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1ADDD86D8(v6, v7);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  if (v7 >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_1ADDD86D8(*(v4 + 16), *(v4 + 24));
  if (v9 >> 60 == 15)
  {
    sub_1ADDE0F78(v6, v7);
    sub_1ADDCC35C(v6, v7);
LABEL_8:
    sub_1ADDE1588(v6, v7);
    sub_1ADDE1588(v8, v9);
    return 0;
  }

  sub_1ADDD86D8(v8, v9);
  sub_1ADDE0F78(v6, v7);
  sub_1ADDE0F78(v6, v7);
  sub_1ADDE0F78(v8, v9);
  v11 = sub_1ADDD6F8C(v6, v7, v8, v9);
  sub_1ADDE1588(v8, v9);
  sub_1ADDE1588(v8, v9);
  sub_1ADDCC35C(v8, v9);
  sub_1ADDE1588(v6, v7);
  sub_1ADDCC35C(v6, v7);
  sub_1ADDE1588(v6, v7);
  return v11;
}

void sub_1ADF97A80(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1ADDD86D8(v3, v2);
  sub_1AE23BECC();

  sub_1ADDCC35C(v3, v2);
}

uint64_t sub_1ADF97AE0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = *(*v2 + 144);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  v9 = *(*(*(v8 + 152) + 16) + 8);
  v10 = *(v9 + 8);

  result = v10(v11, v5, v9);
  if (!v3)
  {
    return sub_1ADDD9FE4(v7, v5, a2);
  }

  return result;
}

BOOL sub_1ADF97BD4(uint64_t a1)
{
  v2 = *v1;
  (*(**a1 + 88))(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return DynamicType == *(v2 + 144);
}

unint64_t sub_1ADF97D0C()
{
  result = qword_1EB5B9500;
  if (!qword_1EB5B9500)
  {
    type metadata accessor for AnyReference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9500);
  }

  return result;
}

void sub_1ADF97D60(void *a1, char a2, void *a3)
{
  v35 = a1[2];
  if (!v35)
  {
    goto LABEL_3;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];
  sub_1ADDD86D8(v8, v7);
  if (v7 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v36 = v8;
  v37 = v7;
  v9 = *a3;
  v10 = sub_1ADDDE7CC(v8, v7);
  v13 = v9[2];
  v14 = (v11 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v11;
  if (v9[3] < v16)
  {
    sub_1ADE1D52C(v16, v5 & 1);
    v10 = sub_1ADDDE7CC(v8, v7);
    if ((v17 & 1) == (v11 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v23 = (v22[6] + 16 * v10);
    *v23 = v8;
    v23[1] = v7;
    *(v22[7] + 8 * v10) = v6;
    v24 = v22[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v22[2] = v25;
      if (v35 == 1)
      {
LABEL_3:

        return;
      }

      v5 = a1 + 9;
      v6 = 1;
      while (v6 < a1[2])
      {
        v7 = *(v5 - 1);
        v26 = *v5;
        v8 = *(v5 - 2);
        sub_1ADDD86D8(v8, v7);
        if (v7 >> 60 == 15)
        {
          goto LABEL_3;
        }

        v36 = v8;
        v37 = v7;
        v27 = *a3;
        v10 = sub_1ADDDE7CC(v8, v7);
        v28 = v27[2];
        v29 = (v11 & 1) == 0;
        v15 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v15)
        {
          goto LABEL_25;
        }

        v17 = v11;
        if (v27[3] < v30)
        {
          sub_1ADE1D52C(v30, 1);
          v10 = sub_1ADDDE7CC(v8, v7);
          if ((v17 & 1) != (v11 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v17)
        {
          goto LABEL_10;
        }

        v31 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        v32 = (v31[6] + 16 * v10);
        *v32 = v8;
        v32[1] = v7;
        *(v31[7] + 8 * v10) = v26;
        v33 = v31[2];
        v15 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        ++v6;
        v31[2] = v34;
        v5 += 3;
        if (v35 == v6)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1ADF6F1AC();
  v10 = v21;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v6 = 0xD000000000000015;
  sub_1ADE42E40(v10, v11, v12);
  v18 = swift_allocError();
  *v19 = 0xD000000000000015;
  *(v19 + 8) = 0x80000001AE2601D0;
  *(v19 + 16) = 0;
  swift_willThrow();
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ADDCC35C(v36, v37);

    return;
  }

LABEL_28:
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](v6 + 6, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADF9811C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  sub_1ADDD86D8(v3, v2);
}

uint64_t sub_1ADF98164(uint64_t *a1, uint64_t a2)
{
  v92[11] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CC0];
  sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);

  v90 = sub_1ADDD9ECC(v4);
  __dst[0] = 1;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADE73CBC(a1, v92);
  sub_1ADE649D0(a1, __dst);
  if (v2)
  {

    sub_1ADE73C68(a1);
  }

  v6 = *a1;
  v7 = a1[1];

  sub_1ADF970AC(v6, v7, sub_1ADF98C10);
  v9 = v8;

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
    v10 = sub_1AE23DCDC();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v92[0] = v10;
  sub_1ADF97D60(v9, 1, v92);
  v72 = v92[0];
  v91 = a1[4];
  v75 = v91;
  v11 = *(v91 + 16);
  v12 = sub_1ADE55498(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v71 = a1;
  if (v11)
  {
    v13 = 0;
    do
    {
      if (v13 == 0x7FFFFFFFFFFFFFE0)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
      }

      if (v13 + 32 <= v13)
      {
        goto LABEL_76;
      }

      v14 = sub_1AE23BE7C();
      v92[3] = MEMORY[0x1E6969080];
      v92[4] = MEMORY[0x1E6969078];
      v92[0] = v14;
      v92[1] = v15;
      v16 = __swift_project_boxed_opaque_existential_1(v92, MEMORY[0x1E6969080]);
      v17 = *v16;
      v18 = v16[1];
      v19 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v19 == 2)
        {
          v20 = v12;
          v21 = *(v17 + 16);
          v22 = *(v17 + 24);
          v23 = sub_1AE23BB7C();
          if (v23)
          {
            v24 = v23;
            v25 = sub_1AE23BBAC();
            if (__OFSUB__(v21, v25))
            {
              goto LABEL_84;
            }

            v26 = (v21 - v25 + v24);
            v27 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_82;
            }
          }

          else
          {
            v26 = 0;
            v27 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_82;
            }
          }

          v33 = sub_1AE23BB9C();
          v17 = 0;
          if (v33 < v27)
          {
            v27 = v33;
          }

          v18 = 0xC000000000000000;
          v12 = v20;
          if (v26)
          {
            if (v27)
            {
              if (v27 >= 15)
              {
                goto LABEL_40;
              }

              memset(__dst, 0, sizeof(__dst));
              v89 = v27;
              memcpy(__dst, v26, v27);
              v17 = *__dst;
              v18 = v73 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v89 << 16)) << 32);
              v73 = v18;
            }
          }
        }
      }

      else if (v19)
      {
        v28 = (v17 >> 32) - v17;
        if (v17 >> 32 < v17)
        {
          goto LABEL_81;
        }

        v29 = sub_1AE23BB7C();
        if (v29)
        {
          v30 = v29;
          v31 = sub_1AE23BBAC();
          if (__OFSUB__(v17, v31))
          {
            goto LABEL_85;
          }

          v32 = (v17 - v31 + v30);
        }

        else
        {
          v32 = 0;
        }

        v34 = sub_1AE23BB9C();
        v17 = 0;
        if (v34 >= v28)
        {
          v27 = v28;
        }

        else
        {
          v27 = v34;
        }

        v18 = 0xC000000000000000;
        if (!v32 || !v27)
        {
          goto LABEL_48;
        }

        if (v27 >= 15)
        {
LABEL_40:
          sub_1AE23BBCC();
          swift_allocObject();
          v35 = sub_1AE23BB6C();
          v36 = v35;
          if (v27 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v17 = swift_allocObject();
            *(v17 + 16) = 0;
            *(v17 + 24) = v27;
            v18 = v36 | 0x8000000000000000;
          }

          else
          {
            v17 = v27 << 32;
            v18 = v35 | 0x4000000000000000;
          }

          goto LABEL_48;
        }

        memset(__dst, 0, sizeof(__dst));
        v89 = v27;
        memcpy(__dst, v32, v27);
        v17 = *__dst;
        v18 = v76 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v89 << 16)) << 32);
        v76 = v18;
      }

      else
      {
        __src = *v16;
        v83 = v18;
        v84 = BYTE2(v18);
        v85 = BYTE3(v18);
        v86 = BYTE4(v18);
        v87 = BYTE5(v18);
        if (BYTE6(v18))
        {
          if (BYTE6(v18) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v89 = BYTE6(v18);
            memcpy(__dst, &__src, BYTE6(v18));
            v17 = *__dst;
            v18 = v78 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v89 << 16)) << 32);
            v78 = v18;
          }

          else
          {
            sub_1AE23BBCC();
            swift_allocObject();
            v17 = BYTE6(v18) << 32;
            v18 = sub_1AE23BB6C() | 0x4000000000000000;
          }
        }

        else
        {
          v17 = 0;
          v18 = 0xC000000000000000;
        }
      }

LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v92);
      v38 = *(v12 + 2);
      v37 = *(v12 + 3);
      if (v38 >= v37 >> 1)
      {
        v12 = sub_1ADE55498((v37 > 1), v38 + 1, 1, v12);
      }

      *(v12 + 2) = v38 + 1;
      v39 = &v12[16 * v38];
      *(v39 + 4) = v17;
      *(v39 + 5) = v18;
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB60, &qword_1AE24E680);
  sub_1AE23CA3C();
  v74 = v12;
  v40 = *(v12 + 2);

  if (v40)
  {
    v41 = 0;
    v42 = v90;
    v43 = (v74 + 40);
    do
    {
      if (v41 >= *(v74 + 2))
      {
        goto LABEL_77;
      }

      v46 = *(v43 - 1);
      v45 = *v43;
      v47 = *(v75 + 16);
      if (v41 == v47)
      {
        sub_1ADDD86D8(*(v43 - 1), *v43);

        sub_1ADF98C2C(&v91);
        sub_1ADE73C68(v71);
        sub_1ADDCC35C(v46, v45);
        return v72;
      }

      if (v41 >= v47)
      {
        goto LABEL_78;
      }

      v81 = *(v75 + 32 + 8 * v41);
      sub_1ADDD86D8(v46, v45);
      sub_1AE1A3880(v46, v45, v92);
      v48 = v92[0];
      if (v42[2])
      {
        v49 = *(v92[0] + 16);
        v50 = *(v92[0] + 24);
        sub_1ADDD86D8(v49, v50);
        v51 = sub_1ADDDE7CC(v49, v50);
        if (v52)
        {
          v53 = *(v42[7] + 16 * v51);

          sub_1ADDCC35C(v49, v50);

          if (v53)
          {
            goto LABEL_79;
          }
        }

        else
        {
          sub_1ADDCC35C(v49, v50);
        }
      }

      v79 = v43;
      v80 = v46;
      v77 = v41;
      v54 = v45;
      v55 = *(v48 + 16);
      v56 = *(v48 + 24);
      sub_1ADDD86D8(v55, v56);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__dst = v42;
      v59 = sub_1ADDDE7CC(v55, v56);
      v60 = v42[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_80;
      }

      v63 = v58;
      if (v42[3] >= v62)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADF703A0();
        }
      }

      else
      {
        sub_1ADF6AF70(v62, isUniquelyReferenced_nonNull_native);
        v64 = sub_1ADDDE7CC(v55, v56);
        if ((v63 & 1) != (v65 & 1))
        {
          result = sub_1AE23E27C();
          __break(1u);
          return result;
        }

        v59 = v64;
      }

      v42 = *__dst;
      if (v63)
      {
        v44 = (*(*__dst + 56) + 16 * v59);
        *v44 = v48;
        v44[1] = v81;

        sub_1ADDCC35C(v80, v54);

        sub_1ADDCC35C(v55, v56);
      }

      else
      {
        *(*__dst + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v66 = (v42[6] + 16 * v59);
        *v66 = v55;
        v66[1] = v56;
        v67 = (v42[7] + 16 * v59);
        *v67 = v48;
        v67[1] = v81;
        sub_1ADDCC35C(v80, v54);

        v68 = v42[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_83;
        }

        v42[2] = v70;
      }

      v41 = v77 + 1;
      v90 = v42;
      v43 = v79 + 2;
    }

    while (v40 != v77 + 1);
  }

  sub_1ADF98C2C(&v91);
  sub_1ADE73C68(v71);
  return v72;
}

uint64_t sub_1ADF98A98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1ADDD86D8(a1, a2);
  v8 = sub_1AE23C33C();
  sub_1ADE73D18(v8, v9, v10);
  sub_1AE23C52C();
  if (v3)
  {
    v11 = v3;

    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v19[2] = v15;
    v19[3] = v16;
    v19[4] = v17;
    v20 = v18;
    v19[0] = v13;
    v19[1] = v14;
    v11 = sub_1ADF98164(v19, a3);
    sub_1ADDCC35C(a1, a2);
  }

  return v11;
}

uint64_t sub_1ADF98C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB68, &qword_1AE24E688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ADF98C9C(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1AE23D97C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F2E4(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v31)
    {
      v3 = sub_1AE23D92C();
    }

    else
    {
      v3 = sub_1AE23D8EC();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v35;
        v9 = v37;
        v32 = v36;
        v10 = v1;
        sub_1ADF9C0B0(v35, v36, v37, v1);
        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        sub_1ADDD86D8(v13, v12);

        v14 = v33;
        v38 = v33;
        v16 = *(v33 + 16);
        v15 = *(v33 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1ADE6F2E4((v15 > 1), v16 + 1, 1);
          v14 = v38;
        }

        *(v14 + 16) = v16 + 1;
        v17 = v14 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v12;
        v33 = v14;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1AE23D94C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB70, &qword_1AE24E6E8);
          v6 = sub_1AE23D31C();
          sub_1AE23D9BC();
          v6(v34, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1ADDFFBC8(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v18 = 1 << *(v10 + 32);
          if (v8 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v8 >> 6;
          v20 = *(v29 + 8 * (v8 >> 6));
          if (((v20 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v32)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1ADDFFBC8(v8, v32, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_1ADDFFBC8(v8, v32, 0);
          }

LABEL_31:
          v27 = *(v10 + 36);
          v35 = v18;
          v36 = v27;
          v37 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1ADF98FF0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADF9D934();
    sub_1AE23D36C();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1AE23D9AC() || (type metadata accessor for AnyReference(), v12 = swift_dynamicCast(), (v11 = v24) == 0))
    {
LABEL_24:
      sub_1ADDDCE74(v1);
      return;
    }

LABEL_17:
    if ((*(*v11 + 128))(v12))
    {
      v13 = v11[2];
      v14 = v11[3];
      sub_1ADDD86D8(v13, v14);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1ADE5534C(0, *(v18 + 2) + 1, 1, v18);
      }

      v16 = *(v18 + 2);
      v15 = *(v18 + 3);
      if (v16 >= v15 >> 1)
      {
        v18 = sub_1ADE5534C((v15 > 1), v16 + 1, 1, v18);
      }

      *(v18 + 2) = v16 + 1;
      v17 = &v18[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1ADF99278(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v55 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v68 = sub_1ADF9D624(v5);
  v67 = a1;
  v6 = *(a1 + 16);
  if (!v6)
  {

    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_4:
      v53 = v2;
      v56 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
      swift_beginAccess();
      v11 = 0;
      v12 = *(v10 + 2);
      v14 = v54;
      v13 = v55;
      v15 = v10;
      while (v11 < v12)
      {
        v16 = &v15[16 * v11];
        v17 = *(v16 + 4);
        v18 = *(v16 + 5);
        sub_1ADDD9E68(v57 + v56, v14);
        v19 = *(v14 + *(v13 + 20));
        sub_1ADDD86D8(v17, v18);
        sub_1ADDDF7A8(v17, v18, v19, &v61);
        sub_1ADE73DF4(v14);
        v20 = v63;
        if (v63)
        {
          v59 = v17;
          v60 = v18;
          v58 = v15;
          v22 = v65;
          v21 = v66;
          v23 = v64;
          v24 = v61;
          v25 = v62;

          sub_1ADDDC21C(v26, v25, v20, v23, v22, v21);
          if (v24)
          {
            v27 = type metadata accessor for RetainVisitor();
            v28 = swift_allocObject();
            v29 = MEMORY[0x1E69E7CC0];
            v30 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
            v31 = sub_1ADDD9ECC(v29);
            *(v28 + 16) = v30;
            *(v28 + 24) = v31;
            v64 = v27;
            v65 = &off_1F23C4550;
            v61 = v28;
            v32 = *(*v24 + 128);

            v32(&v61);

            __swift_destroy_boxed_opaque_existential_1(&v61);
            swift_beginAccess();
            v33 = *(v28 + 16);

            v34 = 0;
            v35 = 1 << *(v33 + 32);
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            else
            {
              v36 = -1;
            }

            v37 = v36 & *(v33 + 64);
            v38 = (v35 + 63) >> 6;
            while (v37)
            {
              v39 = v34;
LABEL_19:
              v40 = __clz(__rbit64(v37));
              v37 &= v37 - 1;
              v41 = (*(v33 + 48) + ((v39 << 10) | (16 * v40)));
              v43 = *v41;
              v42 = v41[1];
              sub_1ADDD86D8(*v41, v42);
              sub_1ADDD86D8(v43, v42);
              v44 = sub_1ADDE0110(&v61, v43, v42);
              sub_1ADDCC35C(v61, v62);
              if (v44)
              {
                sub_1ADDD86D8(v43, v42);
                sub_1ADDE0110(&v61, v43, v42);
                sub_1ADDCC35C(v61, v62);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v58 = sub_1ADE5534C(0, *(v58 + 2) + 1, 1, v58);
                }

                v46 = *(v58 + 2);
                v45 = *(v58 + 3);
                v47 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  v52 = v46 + 1;
                  v50 = sub_1ADE5534C((v45 > 1), v46 + 1, 1, v58);
                  v47 = v52;
                  v58 = v50;
                }

                v48 = v58;
                *(v58 + 2) = v47;
                v49 = &v48[16 * v46];
                *(v49 + 4) = v43;
                *(v49 + 5) = v42;
                v34 = v39;
              }

              else
              {
                sub_1ADDCC35C(v43, v42);
                v34 = v39;
              }
            }

            while (1)
            {
              v39 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v39 >= v38)
              {
                sub_1ADDCC35C(v59, v60);

                v14 = v54;
                v13 = v55;
                goto LABEL_28;
              }

              v37 = *(v33 + 64 + 8 * v39);
              ++v34;
              if (v37)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            break;
          }

          sub_1ADDCC35C(v59, v60);
LABEL_28:
          v15 = v58;
        }

        else
        {
          sub_1ADDCC35C(v17, v18);
        }

        ++v11;
        v12 = *(v15 + 2);
        if (v11 >= v12)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_31:

    return;
  }

  v7 = sub_1AE1941D0(*(a1 + 16), 0);
  v8 = sub_1AE03A790(&v61, v7 + 2, v6, a1);
  v9 = v61;
  v60 = v65;
  swift_bridgeObjectRetain_n();
  sub_1ADDDCE74(v9);
  if (v8 == v6)
  {
    v10 = v7;
    if (v7[2])
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1ADF9975C(_WORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v138 = a5;
  v156 = a4;
  v155 = a3;
  v161 = a2;
  v126 = a1;
  v128 = sub_1AE23BFEC();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v119 - v14;
  v157 = a8;
  v153 = *(a8 + 16);
  v158 = a6;
  swift_getAssociatedTypeWitness();
  v131 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v147 = &v119 - v15;
  v160 = a9;
  v162 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135 = *(AssociatedConformanceWitness + 8);
  v152 = swift_getAssociatedTypeWitness();
  v136 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v119 - v16;
  v143 = swift_checkMetadataState();
  v137 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v144 = &v119 - v19;
  v141 = swift_checkMetadataState();
  v142 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v133 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E7CD0];
  v150 = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  v26 = v24 + 16;
  v27 = swift_allocObject();
  v154 = v27;
  *(v27 + 16) = v25;
  v28 = v27 + 16;
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CC8];
  v149 = v29;
  *(v29 + 16) = MEMORY[0x1E69E7CC8];
  v159 = swift_allocObject();
  *(v159 + 16) = v30;
  v31 = v160;
  v32 = v162;
  v139 = *(v160 + 24);
  v139(&v165, v162, v160);
  v33 = *(&v165 + 1);
  v145 = v165;
  v163 = v171;
  (*(v153 + 24))(&v165, v158);
  v164 = v165;
  v34 = *(v31 + 56);
  v140 = v23;
  v35 = v146;
  v34(&v164, v32, v31);
  if (v35)
  {

    v36 = v164;

    return v36;
  }

  v122 = v28;
  v123 = v26;
  v124 = v33;

  v37 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x1E69E7CD0];
  v163 = v171;
  v39 = v162;
  v40 = v160;
  v139(&v165, v162, v160);
  v164 = v165;
  (*(v153 + 56))(&v164, v158);
  v120 = (v38 + 16);
  v121 = v38;

  v41 = v140;
  v42 = v141;
  (*(v40 + 40))(v140, v141, AssociatedConformanceWitness, v39, v40);
  v43 = swift_allocObject();
  v44 = v149;
  v45 = v150;
  if (qword_1ED9670C0 != -1)
  {
    v116 = v43;
    swift_once();
    v43 = v116;
  }

  v46 = byte_1ED96F222;
  *(v43 + 8) = word_1ED96F220;
  v146 = v43;
  v43[18] = v46;
  (*(v142 + 16))(v133, v41, v42);
  sub_1AE23CE7C();
  swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v47 = *(&v165 + 1);
  v48 = v121;
  v49 = v154;
  if (*(&v165 + 1) >> 60 != 15)
  {
    v50 = v165;
    do
    {
      *&v165 = v50;
      *(&v165 + 1) = v47;
      sub_1ADF9C614(&v165, v155, v156, v49, v171, v161, v44, v146, v159, v45, v48, v158, v162, v157, v160);
      sub_1ADDE1588(v50, v47);
      sub_1AE23D80C();
      v47 = *(&v165 + 1);
      v50 = v165;
    }

    while (*(&v165 + 1) >> 60 != 15);
  }

  (*(v136 + 1))(v151, v152);
  (*(v137 + 16))(v130, v144, v143);
  sub_1AE23CE7C();
  swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v51 = *(&v165 + 1);
  if (*(&v165 + 1) >> 60 == 15)
  {
    v52 = v146;
    v53 = v158;
  }

  else
  {
    v54 = v165;
    v52 = v146;
    v53 = v158;
    do
    {
      *&v165 = v54;
      *(&v165 + 1) = v51;
      v55 = v48;
      v118 = v48;
      v56 = v44;
      v57 = v44;
      v58 = v52;
      sub_1ADF9C614(&v165, v155, v156, v154, v171, v161, v57, v52, v159, v45, v118, v53, v162, v157, v160);
      sub_1ADDE1588(v54, v51);
      sub_1AE23D80C();
      v51 = *(&v165 + 1);
      v54 = v165;
      v52 = v58;
      v44 = v56;
      v48 = v55;
    }

    while (*(&v165 + 1) >> 60 != 15);
  }

  v136 = v52 + 16;
  (*(v132 + 8))(v147, AssociatedTypeWitness);
  v59 = v138;
  if (!v138)
  {
    v65 = v143;
    v60 = v45;
    goto LABEL_59;
  }

  v60 = v45;
  if ((v138 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADF9D934();
    sub_1AE23D36C();
    v59 = v166;
    v61 = v167;
    v63 = v168;
    v62 = v169;
    v64 = v170;
  }

  else
  {
    v66 = -1 << *(v138 + 32);
    v61 = v138 + 56;
    v63 = ~v66;
    v67 = -v66;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v64 = (v68 & *(v138 + 56));

    v62 = 0;
  }

  AssociatedConformanceWitness = v63;
  v69 = (v63 + 64) >> 6;
  v151 = (v153 + 64);
  v135 = v157 + 64;
  v65 = v143;
  v138 = v59;
  AssociatedTypeWitness = v69;
  if ((v59 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v152 = v37;
  v70 = sub_1AE23D9AC();
  if (!v70)
  {
    v37 = v152;
    goto LABEL_58;
  }

  *&v164 = v70;
  type metadata accessor for AnyReference();
  swift_dynamicCast();
  v71 = v165;
  v72 = v62;
  v73 = v64;
  v37 = v152;
  if (!v165)
  {
LABEL_65:
    v44 = v149;
    v60 = v150;
    v65 = v143;
LABEL_58:
    sub_1ADDDCE74(v59);
    v48 = v121;
    v53 = v158;
LABEL_59:
    v94 = v123;
    swift_beginAccess();
    v95 = v53;
    v96 = v157;
    v97 = v171;
    v36 = v171;
    v99 = sub_1ADF9BB64(*v94, v161, v95, v162, v157, v160, v98);
    if (!v37)
    {
      v100 = v99;
      swift_beginAccess();

      sub_1AE00F014(v101);
      swift_endAccess();
      swift_beginAccess();
      sub_1AE00F014(v100);
      swift_endAccess();
      v117 = v60;
      v102 = v159;
      v103 = v155;
      v104 = v156;
      v105 = v154;
      sub_1ADF9CB28(0, v159, v44, v97, v155, v156, v154, v161, v146, v117, v48, v158, v162, v96, v160);
      sub_1ADF9CB28(1, v102, v44, v97, v103, v104, v105, v161, v146, v150, v48, v158, v162, v96, v160);
      v37 = 0;
      v156 = &v119;
      v108 = MEMORY[0x1EEE9AC00](v107);
      v61 = v158;
      (*(v109 + 24))(sub_1ADF9D928, v108);

      swift_beginAccess();
      LODWORD(v59) = v146[16];
      LODWORD(v64) = v146[17];
      v110 = v146[18];
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v65 = v129;
      v72 = v150;
      if (v59 == word_1EB5D750B && v64 == HIBYTE(word_1EB5D750B) && ((v110 ^ byte_1EB5D750D) & 1) == 0)
      {
        LODWORD(v156) = v110;
        (*(v160 + 32))(v162);
      }

      else
      {
        if (v59 <= 1 && v64 < 2)
        {
          goto LABEL_82;
        }

        LODWORD(v156) = v110;
        if (qword_1ED96AC50 != -1)
        {
          swift_once();
        }

        sub_1ADDD0F70();
        v65 = v125;
        sub_1AE23BFBC();
      }

      (*(v157 + 32))(v65, v61);
      goto LABEL_81;
    }

    (*(v137 + 8))(v144, v65);
    (*(v142 + 8))(v140, v141);

LABEL_62:

LABEL_63:

    return v36;
  }

  while (1)
  {
    v152 = v73;
    v139 = v62;
    v147 = v64;
    v76 = v171;
    *&v164 = v171;
    v77 = *(v71 + 24);
    *&v165 = *(v71 + 16);
    *(&v165 + 1) = v77;
    v78 = v153;
    v79 = *(v153 + 64);
    sub_1ADDD86D8(v165, v77);
    v80 = v158;
    v81 = v79(&v165, v158, v78);
    sub_1ADDCC35C(v165, *(&v165 + 1));
    if (v81)
    {

      v62 = v72;
      v64 = v152;
      v44 = v149;
      v60 = v150;
      v65 = v143;
      v59 = v138;
      v69 = AssociatedTypeWitness;
      if (v138 < 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v82 = *(v71 + 16);
    v83 = *(v71 + 24);
    swift_beginAccess();
    sub_1ADDD86D8(v82, v83);
    sub_1ADDE0110(&v164, v82, v83);
    swift_endAccess();
    sub_1ADDCC35C(v164, *(&v164 + 1));
    v36 = v76;
    (*(v157 + 64))(&v165, v71, v161, v162, v160, v80);
    if (v37)
    {

      sub_1ADDDCE74(v138);
      (*(v137 + 8))(v144, v143);
      (*(v142 + 8))(v140, v141);

      goto LABEL_63;
    }

    v84 = v61;

    v59 = v138;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v85 = word_1EB5D750B;
    v86 = HIBYTE(word_1EB5D750B);
    v87 = byte_1EB5D750D;

    v88 = v136;
    swift_beginAccess();
    v65 = v143;
    v89 = v152;
    if (v85)
    {
      v90 = *v88;
      if (v90 != v85)
      {
        if (*v88 <= 1u)
        {
          if (!*v88)
          {
LABEL_44:
            *v88 = v85;
            goto LABEL_45;
          }

          v91 = v85 == 2;
LABEL_42:
          if (v91)
          {
            LOBYTE(v85) = 3;
          }

          goto LABEL_44;
        }

        if (v90 == 2)
        {
          v91 = v85 == 1;
          goto LABEL_42;
        }
      }
    }

LABEL_45:
    v61 = v84;
    v69 = AssociatedTypeWitness;
    if (v86)
    {
      v92 = v146[17];
      if (v92 != v86)
      {
        if (v146[17] > 1u)
        {
          if (v92 != 2)
          {
            goto LABEL_55;
          }

          v93 = v86 == 1;
        }

        else
        {
          if (!v146[17])
          {
LABEL_54:
            v146[17] = v86;
            goto LABEL_55;
          }

          v93 = v86 == 2;
        }

        if (v93)
        {
          LOBYTE(v86) = 3;
        }

        goto LABEL_54;
      }
    }

LABEL_55:
    v146[18] = (v146[18] | v87) & 1;
    v62 = v72;
    v64 = v89;
    v44 = v149;
    v60 = v150;
    if (v59 < 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v74 = v62;
    v75 = v64;
    v72 = v62;
    if (!v64)
    {
      break;
    }

LABEL_28:
    v73 = (v75 - 1) & v75;
    v71 = *(*(v59 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v75)))));

    if (!v71)
    {
      goto LABEL_65;
    }
  }

  while (1)
  {
    v72 = (v74 + 1);
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v72 >= v69)
    {
      v44 = v149;
      v60 = v150;
      goto LABEL_58;
    }

    v75 = *(v61 + 8 * v72);
    ++v74;
    if (v75)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_81:
  (*(v127 + 8))(v65, v128);
  v110 = v156;
LABEL_82:
  if (qword_1EB5B9920 != -1)
  {
    swift_once();
  }

  if (v59 == word_1EB5D750E)
  {
    v111 = v142;
    if (v64 == HIBYTE(word_1EB5D750E) && ((v110 ^ byte_1EB5D7510) & 1) == 0)
    {
      v112 = v120;
      swift_beginAccess();
      v113 = *v112;
      v36 = v171;
      (*(v157 + 40))(v113, 1, v61);
      if (v37)
      {
        (*(v137 + 8))(v144, v143);
        (*(v111 + 8))(v140, v141);

        goto LABEL_62;
      }
    }
  }

  else
  {
    v111 = v142;
  }

  (*(v157 + 104))(v61);
  (*(v137 + 8))(v144, v143);
  (*(v111 + 8))(v140, v141);
  v36 = *(v72 + 16);
  v114 = v146[18];
  v115 = v126;
  *v126 = *(v146 + 8);
  *(v115 + 2) = v114;

  return v36;
}

void sub_1ADF9B34C(void *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v104 = a4[1];
  v106 = *a4;
  v11 = sub_1ADDD9ECC(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116[0] = v11;
  sub_1ADDDCB94(a2, sub_1ADF9811C, 0, isUniquelyReferenced_nonNull_native, v116);
  v13 = v6;

  v14 = v116[0];
  v111 = a6;
  if (a1[2])
  {

    v15 = v6;
    v102 = a3;
    while (1)
    {
      v101 = v14;
      v18 = MEMORY[0x1E69E7CC0];
      v108 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v19 = 0;
      v117 = sub_1ADDD9ECC(v18);
      v20 = a1 + 8;
      v21 = 1 << *(a1 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & a1[8];
      v24 = (v21 + 63) >> 6;
      v112 = a1;
      while (v23)
      {
LABEL_13:
        v26 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v27 = v26 | (v19 << 6);
        v28 = *(a1[7] + 8 * v27);
        if ((a3 & 1) != 0 || v28)
        {
          *v116 = *(a1[6] + 16 * v27);
          v115[0] = v106;
          v115[1] = v104;
          v29 = *(v111 + 8);
          v30 = v116[0];
          v113 = v116[1];
          sub_1ADDD86D8(v116[0], v116[1]);
          v31 = v29(v116, v28, v115, a5, v111);
          if (v15)
          {

            sub_1ADDCC35C(v30, v113);
            return;
          }

          v33 = v31;
          v34 = v32;
          if ((v31 - 1) < 2)
          {
            sub_1ADDDDEAC(v31, v32);
LABEL_45:
            sub_1ADDCC35C(v30, v113);
            goto LABEL_46;
          }

          if (v31 == 3 || v31 == 0)
          {
            goto LABEL_45;
          }

          v36 = v31 + 64;
          v37 = 1 << *(v31 + 32);
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          else
          {
            v38 = -1;
          }

          v39 = v38 & *(v31 + 64);
          v40 = (v37 + 63) >> 6;

          v41 = 0;
          v42 = 0;
          v92 = v40;
          if (v39)
          {
            while (1)
            {
              v98 = v41;
              v43 = v42;
LABEL_30:
              v93 = v43;
              v94 = v39;
              v44 = __clz(__rbit64(v39)) | (v43 << 6);
              v45 = (*(v33 + 48) + 16 * v44);
              v46 = *v45;
              v100 = v45[1];
              v95 = *(*(v33 + 56) + 8 * v44);
              sub_1ADDD86D8(*v45, v100);
              sub_1ADDDCE80(v98, 0);
              v47 = v108;
              v96 = swift_isUniquelyReferenced_nonNull_native();
              v116[0] = v108;
              v99 = v46;
              v49 = sub_1ADDDE7CC(v46, v100);
              v50 = v108[2];
              v51 = (v48 & 1) == 0;
              v52 = v50 + v51;
              if (__OFADD__(v50, v51))
              {
                goto LABEL_78;
              }

              if (v108[3] >= v52)
              {
                v36 = v33 + 64;
                if (v96)
                {
                  if (v48)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v97 = v49;
                  v109 = v48;
                  sub_1ADF6F1AC();
                  v68 = v109;
                  v49 = v97;
                  v47 = v116[0];
                  v108 = v116[0];
                  if (v68)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                v53 = v48;
                sub_1ADE1D52C(v52, v96);
                v108 = v116[0];
                v54 = sub_1ADDDE7CC(v99, v100);
                v56 = v55 & 1;
                v57 = v53;
                v58 = v53 & 1;
                v36 = v33 + 64;
                if (v58 != v56)
                {
                  goto LABEL_81;
                }

                v49 = v54;
                v47 = v108;
                if (v57)
                {
                  goto LABEL_39;
                }
              }

              v59 = v49;
              sub_1ADF98C94(v116);
              v60 = v116[0];
              v108[(v59 >> 6) + 8] |= 1 << v59;
              v61 = (v108[6] + 16 * v59);
              *v61 = v99;
              v61[1] = v100;
              *(v108[7] + 8 * v59) = v60;
              v62 = v108[2];
              v63 = __OFADD__(v62, 1);
              v64 = v62 + 1;
              if (v63)
              {
                goto LABEL_80;
              }

              v108[2] = v64;
              sub_1ADDD86D8(v99, v100);
              v47 = v108;
              v49 = v59;
              v36 = v33 + 64;
LABEL_39:
              v65 = *(v47 + 56);
              v66 = *(v65 + 8 * v49);
              v63 = __OFSUB__(v66, v95);
              v67 = v66 - v95;
              if (v63)
              {
                goto LABEL_79;
              }

              v39 = (v94 - 1) & v94;
              *(v65 + 8 * v49) = v67;
              sub_1ADDCC35C(v99, v100);
              v41 = sub_1ADF98C94;
              v42 = v93;
              v40 = v92;
              if (!v39)
              {
                goto LABEL_26;
              }
            }
          }

          while (1)
          {
LABEL_26:
            v43 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_77;
            }

            if (v43 >= v40)
            {
              break;
            }

            v39 = *(v36 + 8 * v43);
            ++v42;
            if (v39)
            {
              v98 = v41;
              goto LABEL_30;
            }
          }

          v69 = v41;

          sub_1ADDDD108(v34);
          sub_1ADDDCE80(v69, 0);
          sub_1ADDCC35C(v30, v113);

LABEL_46:
          v15 = 0;
          a3 = v102;
          a1 = v112;
        }
      }

      while (1)
      {
        v25 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_75:
          sub_1ADDCC35C(v112, v113);

          return;
        }

        if (v25 >= v24)
        {
          break;
        }

        v23 = v20[v25];
        ++v19;
        if (v23)
        {
          v19 = v25;
          goto LABEL_13;
        }
      }

      v16 = v117;

      v17 = swift_isUniquelyReferenced_nonNull_native();
      v116[0] = v101;
      sub_1ADDDCB94(v16, sub_1ADF9811C, 0, v17, v116);
      swift_bridgeObjectRelease_n();
      v14 = v116[0];
      a1 = v108;
      if (!v108[2])
      {
        v13 = v15;

        break;
      }
    }
  }

  v70 = 0;
  v71 = v14 + 64;
  v72 = 1 << *(v14 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v14 + 64);
  v107 = (v72 + 63) >> 6;
  v103 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  while (v74)
  {
LABEL_58:
    v76 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v77 = (v70 << 10) | (16 * v76);
    v78 = (*(v14 + 56) + v77);
    v79 = v78[1];
    if (v79)
    {
      v80 = v14;
      v81 = (*(v14 + 48) + v77);
      v83 = *v81;
      v82 = v81[1];
      v116[0] = *v78;
      v84 = *(v111 + 16);
      v114 = v116[0];
      swift_retain_n();
      v112 = v83;
      v113 = v82;
      sub_1ADDD86D8(v83, v82);
      v85 = v84(v116, v79, a5, v111);
      if (v13)
      {
        goto LABEL_75;
      }

      v86 = v85;

      if (v86)
      {
        v14 = v80;
        if (v86 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_1ADE55498(0, *(v103 + 2) + 1, 1, v103);
          }

          v88 = *(v103 + 2);
          v87 = *(v103 + 3);
          if (v88 >= v87 >> 1)
          {
            v103 = sub_1ADE55498((v87 > 1), v88 + 1, 1, v103);
          }

          *(v103 + 2) = v88 + 1;
          v89 = &v103[16 * v88];
          *(v89 + 4) = v83;
          *(v89 + 5) = v82;
        }

        else
        {
          sub_1ADDCC35C(v83, v82);
        }
      }

      else
      {
        v14 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1ADE556B0(0, *(v105 + 2) + 1, 1, v105);
        }

        v91 = *(v105 + 2);
        v90 = *(v105 + 3);
        if (v91 >= v90 >> 1)
        {
          v105 = sub_1ADE556B0((v90 > 1), v91 + 1, 1, v105);
        }

        sub_1ADDCC35C(v83, v82);
        *(v105 + 2) = v91 + 1;
        *&v105[8 * v91 + 32] = v114;
      }
    }
  }

  while (1)
  {
    v75 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v75 >= v107)
    {

      return;
    }

    v74 = *(v71 + 8 * v75);
    ++v70;
    if (v74)
    {
      v70 = v75;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADF9BB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = v8;
  v12 = a1;
  v69 = a1;
  v63 = MEMORY[0x1E69E7CD0];
  v13 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v14 = v7;
  v60 = a5;
  if (!v13)
  {
    v49 = v12;
LABEL_25:

    sub_1ADF9C2DC(v49, a3, a5);
    if (!v9)
    {
      v59 = a3;
      v38 = v36;

      result = v38;
      v39 = 0;
      v40 = v38 + 56;
      v41 = 1 << *(v38 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v38 + 56);
      v44 = (v41 + 63) >> 6;
      v52 = v38;
      for (i = v38 + 56; v43; v40 = i)
      {
        v45 = v39;
LABEL_35:
        v46 = *(*(result + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v43)))));
        v47 = *(v46 + 16);
        v48 = *(v46 + 24);
        v57 = *(a6 + 72);

        sub_1ADDD86D8(v47, v48);
        v57(&v61, v47, v48, a4, a6);
        sub_1ADDCC35C(v47, v48);
        v62 = v61;
        (*(v60 + 80))(&v62, v59);
        v43 &= v43 - 1;

        v39 = v45;
        result = v52;
      }

      while (1)
      {
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v45 >= v44)
        {

          return v63;
        }

        v43 = *(v40 + 8 * v45);
        ++v39;
        if (v43)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      return result;
    }

LABEL_26:
  }

  v58 = a3;
  while (1)
  {
    sub_1ADF9D9E8(v12, v14, a3, a5);
    if (v9)
    {

      goto LABEL_26;
    }

    v16 = v15;

    v51 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {

      sub_1AE23D93C();
      type metadata accessor for AnyReference();
      sub_1ADF9D934();
      sub_1AE23D36C();
      v16 = v64;
      v17 = v65;
      v18 = v66;
      v19 = v67;
      v20 = v68;
    }

    else
    {
      v21 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v18 = ~v21;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v20 = v23 & *(v16 + 56);

      v19 = 0;
    }

    v56 = v16;
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_11:
    v24 = sub_1AE23D9AC();
    if (v24)
    {
      v62 = v24;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v25 = v61;
      v26 = v19;
      v27 = v20;
      if (v61)
      {
        goto LABEL_19;
      }

LABEL_23:
      v16 = v56;
    }

LABEL_21:
    sub_1ADDDCE74(v16);
    sub_1ADF98C9C(v51);
    v9 = 0;
    v12 = sub_1ADF7E6A4(v30, v31, v32);

    sub_1AE00F014(v33);
    sub_1ADF98FF0(v51);
    v35 = v34;

    sub_1AE017714(v35);

    a5 = v60;
    v14 = v7;
    a3 = v58;
    if (!*(v12 + 16))
    {
      v49 = v69;
      goto LABEL_25;
    }
  }

  while (1)
  {
    v28 = v19;
    v29 = v20;
    v26 = v19;
    if (!v20)
    {
      break;
    }

LABEL_18:
    v27 = (v29 - 1) & v29;
    v25 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));

    if (!v25)
    {
      goto LABEL_23;
    }

LABEL_19:
    (*(v60 + 64))(&v61, v25, a2, a4, a6, v58);

    v19 = v26;
    v20 = v27;
    v16 = v56;
    if (v56 < 0)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v26 >= ((v18 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v29 = *(v17 + 8 * v26);
    ++v28;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ADF9C0B0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_1AE23D95C() != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v13 = sub_1AE23D96C();
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v7 = v12[0];
      sub_1AE23E31C();
      (*(*v12[0] + 104))(v12);
      v8 = sub_1AE23E34C();
      v9 = -1 << *(a4 + 32);
      v5 = v8 & ~v9;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v10 = ~v9;
        do
        {
          v11 = *(**(*(a4 + 48) + 8 * v5) + 96);

          LOBYTE(v11) = v11(v7);

          if (v11)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v10;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:

          return;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x1B26FC240](a1, a2, v6);
  type metadata accessor for AnyReference();
  swift_dynamicCast();
}

void sub_1ADF9C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v39 = MEMORY[0x1E69E7CD0];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = v6;
  v31 = v11;
  v29 = v10;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v38 = *(*(v5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *(a3 + 88);
      v32 = v38;
      sub_1ADDD86D8(v38, *(&v38 + 1));
      v15 = v14(&v38, a2, a3);
      v36 = v16;
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;
      if (v15)
      {

        v17 = 0;
        v18 = v36 + 64;
        v19 = 1 << *(v36 + 32);
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 & *(v36 + 64);
        v22 = (v19 + 63) >> 6;
        v33 = v22;
        while (v21)
        {
          v23 = v17;
LABEL_22:
          v24 = (v23 << 10) | (16 * __clz(__rbit64(v21)));
          v25 = (*(v36 + 48) + v24);
          v27 = *v25;
          v26 = v25[1];
          v28 = *(*(v36 + 56) + v24);
          v37 = *(a3 + 72);
          sub_1ADDD86D8(*v25, v26);

          v4 = 0;
          v21 &= v21 - 1;
          if (v37(v27, v26, a2, a3))
          {

            sub_1ADDCC35C(v27, v26);
          }

          else
          {

            sub_1ADEC1658(&v38, v28);
            sub_1ADDCC35C(v27, v26);
          }

          v17 = v23;
          v22 = v33;
          v18 = v36 + 64;
        }

        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v23 >= v22)
          {
            break;
          }

          v21 = *(v18 + 8 * v23);
          ++v17;
          if (v21)
          {
            goto LABEL_22;
          }
        }

        sub_1ADDCC35C(v32, *(&v32 + 1));

        v12 = v13;
        v6 = v30;
        v5 = v31;
        v10 = v29;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1ADDCC35C(v32, *(&v32 + 1));
        v12 = v13;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    sub_1ADDCC35C(v32, *(&v32 + 1));
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    __break(1u);
  }
}