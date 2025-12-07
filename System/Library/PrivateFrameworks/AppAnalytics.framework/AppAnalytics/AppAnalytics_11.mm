uint64_t sub_1B6A86AC8(uint64_t a1, uint64_t a2)
{
  sub_1B69827CC(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A86CF0(0, &qword_1EB95B580, sub_1B69827CC, MEMORY[0x1E69E8638]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1B6984A54(a2, v5, sub_1B69827CC);
  sub_1B6A86CF0(0, &qword_1EDBC8E28, sub_1B69827CC, MEMORY[0x1E69E8660]);
  sub_1B6AB96B0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B6A86CC0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1B6A86CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B6A86D54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return MEMORY[0x1B8C979D0](v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1B6A86E8C(v5, v6);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B6A86E8C(v5, v6);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return MEMORY[0x1B8C979D0](v8, v4, a3);
}

uint64_t sub_1B6A86E8C(uint64_t a1, uint64_t a2)
{
  result = sub_1B6AB8900();
  v5 = result;
  if (result)
  {
    result = sub_1B6AB8930();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1B6AB8920();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1B8C979D0](v5, v11);
}

void sub_1B6A86F20(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;

  *a1 = v5;
  *a3 = a1[1];
}

uint64_t sub_1B6A86F7C(uint64_t a1, uint64_t *a2)
{
  sub_1B6A86CF0(0, &qword_1EB95B500, sub_1B698148C, MEMORY[0x1E69E8638]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  v9[1] = *a2;
  sub_1B6A86CF0(0, &qword_1EDBC8E20, sub_1B698148C, MEMORY[0x1E69E8660]);

  sub_1B6AB96B0();
  return (*(v5 + 8))(v7, v4);
}

void sub_1B6A870D0(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];

  *a1 = v6;
  a1[1] = v5;
  *a3 = a1[2];
}

uint64_t sub_1B6A87134(uint64_t a1, uint64_t *a2)
{
  sub_1B69845D4(0, &qword_1EB95B570, MEMORY[0x1E69E8638]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  sub_1B69845D4(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);

  sub_1B6AB96B0();
  return (*(v5 + 8))(v7, v4);
}

void sub_1B6A8726C()
{
  if (!qword_1EB95C4C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C4C8);
    }
  }
}

uint64_t sub_1B6A87308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B6A87364(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1B6A87364(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1B6AB9B30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B6A873C0(uint64_t a1)
{
  if (!qword_1EB95C4D0)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB95C4D0);
    }
  }
}

double sub_1B6A87480@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B6A87508(*(v2 + 16), a1);
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  *a2 = *(a1 + *(v5 + 28));

  return result;
}

uint64_t sub_1B6A87508(uint64_t a1, uint64_t a2)
{
  sub_1B69827CC(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A8756C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B6A875B4(uint64_t a1)
{
  if (!qword_1EB95C4D8)
  {
    type metadata accessor for UserIDComponents(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C4D8);
    }
  }
}

uint64_t sub_1B6A87620(uint64_t a1)
{
  v3 = v2;
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B69AD75C;

  return sub_1B6A7C6CC(a1, v7, v8, v9, v10, v11, v1 + v6);
}

void sub_1B6A87778(uint64_t a1)
{
  if (!qword_1EB95C4E8)
  {
    sub_1B6984584(255, &qword_1EB95C4F0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C4E8);
    }
  }
}

void sub_1B6A87804()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v1 = *(v0 + 16);

  sub_1B6A7CE30(v1);
}

uint64_t sub_1B6A878CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B6A71900(a1, v4, v5, v6);
}

uint64_t sub_1B6A87980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69AD75C;

  return sub_1B6A71DEC(a1, v4, v5, v6);
}

void sub_1B6A87A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AB9A80();
    v7 = sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B6A87B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B6A87BAC(255);
    v7 = v6;
    v8 = sub_1B6A8756C(&qword_1EB95C538, sub_1B6A87BAC, MEMORY[0x1E695BE68]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6A87BAC(uint64_t a1)
{
  if (!qword_1EB95C528)
  {
    sub_1B6AB9A80();
    sub_1B6986438(255, &qword_1EDBCA4B0, 0x1E69E9620);
    sub_1B6A8756C(&qword_1EB95C508, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1B6A87C78();
    v1 = sub_1B6AB8FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C528);
    }
  }
}

unint64_t sub_1B6A87C78()
{
  result = qword_1EB95C530;
  if (!qword_1EB95C530)
  {
    sub_1B6986438(255, &qword_1EDBCA4B0, 0x1E69E9620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C530);
  }

  return result;
}

uint64_t sub_1B6A87CE0(uint64_t a1, uint64_t a2)
{
  sub_1B6A87364(0, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType, sub_1B697ED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A87DA8(uint64_t a1, uint64_t a2)
{
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A87E3C(uint64_t a1, uint64_t a2)
{
  sub_1B6A86CF0(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrackerError.MissingData.key.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static TrackerError.MissingData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B6ABA0F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1B6A880A8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B6ABA0F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TrackerError.FoundData.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TrackerError.FoundData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

uint64_t sub_1B6A88170(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

uint64_t static TrackerError.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return !v5;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  if ((sub_1B6A54C28(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B6A54CE4(v8, v7);
}

uint64_t sub_1B6A88244(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return v5 == 0;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a1[1];
  if ((sub_1B6A54C28(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1B6A54CE4(v9, v8);
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12TrackerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A882F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A88354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B6A883A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B6A8841C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1B6A88628(a1, v12, a2);
  if (v2)
  {
    v16 = *(v6 + 32);
    v16(v9, v12, v5);
    if (sub_1B6ABA0C0())
    {
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      swift_allocError();
      return (v16)(v17, v9, v5);
    }
  }

  return result;
}

uint64_t sub_1B6A88628@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void sub_1B6A88720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B69E4D6C(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1B6AB9BF0();
    v5 = 0;
    v26 = *(a1 + 36);
    v24 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 56) + 32 * v4);
      v9 = v8[1];
      v25 = *v8;
      v10 = v8[2];
      v11 = v8[3];

      sub_1B6AB13D8(v11, v10);
      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = v12;
        sub_1B69E4D6C((v13 > 1), v14 + 1, 1);
        v12 = v23;
      }

      *(v27 + 16) = v14 + 1;
      v15 = (v27 + 24 * v14);
      v15[4] = v25;
      v15[5] = v9;
      v15[6] = v12;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v6 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (a1 + 72 + 8 * v7);
        while (v19 < (v6 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1B6A8A5B4(v4, v26, 0);
            v6 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_1B6A8A5B4(v4, v26, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v24)
      {
        return;
      }
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
    __break(1u);
  }
}

uint64_t sub_1B6A88988(int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v36 = a2;
  v35 = a1;
  sub_1B6A8A4C0(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B6AB8DB0();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = a4;
    v34 = a3;
    v17 = *(result + 104);

    sub_1B6AB8DA0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
      *v12 = v20;
      (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
      v21 = v20;
      LOBYTE(v20) = sub_1B6AB9110();
      result = (*(v10 + 8))(v12, v9);
      if ((v20 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v22 = MEMORY[0x1EEE9AC00](*(v19 + 88));
      *(&v32 - 10) = v19;
      *(&v32 - 9) = &type metadata for SummaryEvent;
      *(&v32 - 8) = v17;
      *(&v32 - 56) = v23;
      *(&v32 - 6) = v15;
      *(&v32 - 5) = v24;
      v25 = v34;
      *(&v32 - 3) = v36;
      *(&v32 - 2) = v25;
      *(&v32 - 1) = v33;
      sub_1B6995F94(v22, sub_1B6A8A518, (&v32 - 12), v26);
    }

    else
    {
      v29 = v34;
      if (v34)
      {
        sub_1B6A16B30();
        v30 = swift_allocError();
        *v31 = xmmword_1B6AC0310;
        *v8 = v30;
        swift_storeEnumTagMultiPayload();
        v29(v8);

        sub_1B698C72C(v8, sub_1B6A8A4C0);
      }

      else
      {
      }
    }

    return (*(v37 + 8))(v15, v38);
  }

  else if (a3)
  {
    sub_1B6A16B30();
    v27 = swift_allocError();
    *v28 = xmmword_1B6AC0310;
    *v8 = v27;
    swift_storeEnumTagMultiPayload();
    a3(v8);
    return sub_1B698C72C(v8, sub_1B6A8A4C0);
  }

  return result;
}

uint64_t sub_1B6A88D84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B6A8A5C0(a1, a2, a3, a4);
  if (result)
  {
    sub_1B6A88F1C(a2);
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v6 = sub_1B6AB8F90();
    __swift_project_value_buffer(v6, qword_1EDBCFDA8);
    v7 = sub_1B6AB8F80();
    v8 = sub_1B6AB9900();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_1B6ABA330();
      v13 = sub_1B698F63C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1B697C000, v7, v8, "Recording event: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1B8C99550](v10, -1, -1);
      MEMORY[0x1B8C99550](v9, -1, -1);
    }

    return sub_1B6A7B4BC();
  }

  return result;
}

uint64_t sub_1B6A88F1C(uint64_t a1)
{
  v2 = v1;
  v91 = a1;
  sub_1B6A8A380(0);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB90F0();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for SummaryEventMetaData(0);
  MEMORY[0x1EEE9AC00](v93);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75 - v13;
  sub_1B698AC90(0, &qword_1EB95C558, type metadata accessor for SummaryEventData);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v75 - v16;
  v18 = type metadata accessor for SummaryEventData(0);
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v20 = sub_1B6AB8F90();
  v96 = __swift_project_value_buffer(v20, qword_1EDBCFDA8);
  v21 = sub_1B6AB8F80();
  v22 = sub_1B6AB9900();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B697C000, v21, v22, "Checking for possibility of saving summary events now...", v23, 2u);
    MEMORY[0x1B8C99550](v23, -1, -1);
  }

  if (sub_1B6A89A78() & 1) == 0 || (v24 = sub_1B6A89F38(), (v25))
  {
    v26 = sub_1B6AB8F80();
    v27 = sub_1B6AB9900();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B697C000, v26, v27, "It's not yet time to persist summary events ... skipping.", v28, 2u);
      MEMORY[0x1B8C99550](v28, -1, -1);
    }

    return 0;
  }

  v82 = v24;
  v83 = v8;
  v30 = sub_1B6AB8F80();
  v31 = sub_1B6AB9900();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1B697C000, v30, v31, "Time threshold reached, generating summary event data ...", v32, 2u);
    MEMORY[0x1B8C99550](v32, -1, -1);
  }

  v33 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  swift_beginAccess();
  v34 = *(v10 + 16);
  v78 = v33;
  v34(v14, v2 + v33, v9);
  v84 = v2;
  v80 = *(v2 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_databaseManager);

  sub_1B6A88720(v35);
  v37 = v36;
  v81 = 0;

  v38 = *(v37 + 16);
  v79 = v10;
  v77 = v10 + 16;
  v76 = v34;
  if (v38)
  {
    v39 = v82;
    v40 = v83;
    v34(v83, v14, v9);
    sub_1B6AB8D10();
    v41 = *(v10 + 8);
    v41(v14, v9);
    sub_1B6A8A43C(v40, v17, type metadata accessor for SummaryEventMetaData);
    v42 = 0;
    v43 = v95;
    *&v17[*(v95 + 20)] = v37;
    *&v17[*(v43 + 24)] = v39;
  }

  else
  {
    v41 = *(v10 + 8);
    v41(v14, v9);

    v42 = 1;
    v43 = v95;
  }

  v44 = v94;
  (*(v94 + 56))(v17, v42, 1, v43);
  if ((*(v44 + 48))(v17, 1, v43) == 1)
  {
    sub_1B6A8AA34(v17, &qword_1EB95C558, type metadata accessor for SummaryEventData);

    v45 = sub_1B6AB8F80();
    v46 = sub_1B6AB9900();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v97[0] = v48;
      *v47 = 136315138;
      v49 = v85;
      v76(v85, v84 + v78, v9);
      sub_1B69ACDCC(&qword_1EDBCCC38, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v50 = sub_1B6ABA080();
      v52 = v51;
      v41(v49, v9);
      v53 = sub_1B698F63C(v50, v52, v97);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1B697C000, v45, v46, "No summarized events, skipping upload, and reseting last submitted date: %s to now...", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1B8C99550](v48, -1, -1);
      MEMORY[0x1B8C99550](v47, -1, -1);
    }

    sub_1B6A8A07C();
    return 0;
  }

  v54 = v92;
  sub_1B6A8A43C(v17, v92, type metadata accessor for SummaryEventData);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v56 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    v57 = v88;
    v58 = v89;
    *v88 = v56;
    v59 = v90;
    (*(v58 + 104))(v57, *MEMORY[0x1E69E8020], v90);
    v60 = v56;
    LOBYTE(v56) = sub_1B6AB9110();
    result = (*(v58 + 8))(v57, v59);
    if ((v56 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v61 = v87;
    sub_1B698A30C(v54, v87, type metadata accessor for SummaryEventData);
    sub_1B69ACDCC(&qword_1EDBC91F8, type metadata accessor for SummaryEventData, &unk_1B6AC5B94);
    v62 = sub_1B6ABA330();
    v63 = v86;
    v64 = (v61 + *(v86 + 36));
    *v64 = v62;
    v64[1] = v65;
    *(v61 + *(v63 + 40)) = 0;
    *(v61 + *(v63 + 44)) = 1;
    sub_1B6A2196C(v61, MEMORY[0x1E69E7CC0], 0xD000000000000066, 0x80000001B6ACE070, 135);

    sub_1B698C72C(v61, sub_1B6A8A380);
  }

  memset(v97, 0, 32);
  sub_1B6A88988(0, v97, 0, 0);
  sub_1B698C72C(v97, sub_1B69FA1E4);
  v66 = sub_1B6AB8F80();
  v67 = sub_1B6AB9900();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1B697C000, v66, v67, "Writing summary events to disk...", v68, 2u);
    MEMORY[0x1B8C99550](v68, -1, -1);
  }

  v69 = v80;
  v70 = *(v80 + OBJC_IVAR____TtC12AppAnalytics27SummaryEventDatabaseManager_lock);
  MEMORY[0x1EEE9AC00](v71);
  *(&v75 - 2) = sub_1B6A8A4A4;
  *(&v75 - 1) = v69;
  os_unfair_lock_lock(v70 + 4);
  sub_1B69AC4BC();
  os_unfair_lock_unlock(v70 + 4);
  sub_1B6A7B6F8();
  sub_1B6A8A07C();
  v72 = sub_1B6AB8F80();
  v73 = sub_1B6AB9900();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1B697C000, v72, v73, "Successfully wrote summary events!", v74, 2u);
    MEMORY[0x1B8C99550](v74, -1, -1);
  }

  sub_1B698C72C(v54, type metadata accessor for SummaryEventData);
  return 1;
}

uint64_t sub_1B6A89A78()
{
  v1 = sub_1B6AB8DB0();
  v46 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v45 - v5;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v47 = v0;
  v7 = sub_1B6AB8F90();
  __swift_project_value_buffer(v7, qword_1EDBCFDA8);
  v8 = sub_1B6AB8F80();
  v9 = sub_1B6AB9900();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B697C000, v8, v9, "About to determine if it's time to submit our summary events...", v10, 2u);
    MEMORY[0x1B8C99550](v10, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 standardUserDefaults];
  v13 = sub_1B6AB92B0();
  v14 = [v12 BOOLForKey_];

  if (v14)
  {
    v15 = [v11 standardUserDefaults];
    v16 = sub_1B6AB92B0();
    [v15 removeObjectForKey_];

    v17 = sub_1B6AB8F80();
    v18 = sub_1B6AB9900();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_9:

      return 1;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "We have an override; force returning true for time to submit.";
    v21 = v18;
    v22 = v17;
    v23 = v19;
    v24 = 2;
LABEL_8:
    _os_log_impl(&dword_1B697C000, v22, v21, v20, v23, v24);
    MEMORY[0x1B8C99550](v19, -1, -1);
    goto LABEL_9;
  }

  v26 = v47;
  *&v27 = COERCE_DOUBLE(sub_1B6A89F38());
  if (v28)
  {
    v17 = sub_1B6AB8F80();
    v29 = sub_1B6AB9900();
    if (os_log_type_enabled(v17, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Undetermined summary event time interval, feature likely has a .disabled configuration";
      v32 = v29;
      v33 = v17;
      v34 = v30;
      v35 = 2;
LABEL_16:
      _os_log_impl(&dword_1B697C000, v33, v32, v31, v34, v35);
      MEMORY[0x1B8C99550](v30, -1, -1);
    }
  }

  else
  {
    v36 = v27;
    v37 = *&v27;
    (*(v26 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator))();
    v38 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
    swift_beginAccess();
    v39 = v46;
    (*(v46 + 16))(v4, v26 + v38, v1);
    sub_1B6AB8D00();
    v41 = v40;
    v42 = *(v39 + 8);
    v42(v4, v1);
    v42(v6, v1);
    v17 = sub_1B6AB8F80();
    v43 = sub_1B6AB9900();
    v44 = os_log_type_enabled(v17, v43);
    if (v41 >= v37)
    {
      if (!v44)
      {
        goto LABEL_9;
      }

      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v41;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v36;
      v20 = "Enough time has elapsed. It's time to submit. timeIntervalSinceLastFlush=%f, timeIntervalBetweenFlushes=%f";
      v21 = v43;
      v22 = v17;
      v23 = v19;
      v24 = 22;
      goto LABEL_8;
    }

    if (v44)
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = v41;
      *(v30 + 12) = 2048;
      *(v30 + 14) = v36;
      v31 = "It's not yet time to submit. timeIntervalSinceLastFlush=%f, timeIntervalBetweenFlushes=%f";
      v32 = v43;
      v33 = v17;
      v34 = v30;
      v35 = 22;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1B6A89F38()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B6AB92B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1B698C72C(v8, sub_1B69FA1E4);
  }

  if (*(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_flushCadence + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_flushCadence);
  }
}

void sub_1B6A8A07C()
{
  v1 = v0;
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_dateGenerator))(v4);
  v7 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v7, v6, v2);
  swift_endAccess();
  v8 = [objc_opt_self() standardUserDefaults];
  (*(v3 + 16))(v6, v1 + v7, v2);
  v9 = sub_1B6AB8D20();
  (*(v3 + 8))(v6, v2);
  v10 = sub_1B6AB92B0();
  [v8 setObject:v9 forKey:v10];
}

uint64_t sub_1B6A8A238()
{
  v1 = OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_lastSubmittedDate;
  v2 = sub_1B6AB8DB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B698C72C(v0 + OBJC_IVAR____TtC12AppAnalytics19SummaryEventManager_configuration, type metadata accessor for SummaryEventConfiguration);

  return swift_deallocClassInstance();
}

void sub_1B6A8A380(uint64_t a1)
{
  if (!qword_1EB95B638)
  {
    v2 = type metadata accessor for SummaryEventData(255);
    v3 = sub_1B69ACDCC(&qword_1EDBC91F8, type metadata accessor for SummaryEventData, &unk_1B6AC5B94);
    v5 = type metadata accessor for PushEvent(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB95B638);
    }
  }
}

uint64_t sub_1B6A8A43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B6A8A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB95B648)
  {
    v4 = type metadata accessor for EventSubmitResult(0, &type metadata for SummaryEvent, &off_1F2E7C830, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB95B648);
    }
  }
}

void sub_1B6A8A57C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1B6A8A5B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1B6A8A5C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a4 + 40))(a3, a4))
  {
    sub_1B69A31EC(&v40);
    if (v40 == 2 || (v40 & 1) != 0)
    {
      if (qword_1EDBCAA78 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v40 = 0;
LABEL_12:
    v26 = MEMORY[0x1E69E7CD0];
    goto LABEL_13;
  }

  v20 = Strong;
  v21 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v21;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v22 = v21;
  LOBYTE(v21) = sub_1B6AB9110();
  (*(v8 + 8))(v10, v7);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_5:
    v11 = sub_1B6AB8F90();
    __swift_project_value_buffer(v11, qword_1EDBCFDA8);
    v12 = sub_1B6AB8F80();
    v13 = sub_1B6AB9900();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      v16 = sub_1B6ABA330();
      v18 = sub_1B698F63C(v16, v17, &v40);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B697C000, v12, v13, "Discarding D&U-only summary event: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B8C99550](v15, -1, -1);
      MEMORY[0x1B8C99550](v14, -1, -1);
    }

    goto LABEL_20;
  }

  v23 = *(v20 + 216);
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 8);
  swift_unknownObjectRetain();
  v25(&v40, ObjectType, v23);

  swift_unknownObjectRelease();
  v26 = v40;
  if (!v40)
  {
    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for DenylistDescriptorMatcher();
  *(swift_initStackObject() + 16) = v26;
  v39 = a1;
  swift_getMetatypeMetadata();
  v27 = sub_1B6AB9330();
  v29 = sub_1B69C245C(v27, v28);

  if (!v29)
  {

    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v30 = sub_1B6AB8F90();
  __swift_project_value_buffer(v30, qword_1EDBCFDA8);
  v12 = sub_1B6AB8F80();
  v31 = sub_1B6AB9900();
  if (!os_log_type_enabled(v12, v31))
  {

LABEL_20:

    return 0;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v39 = v33;
  *v32 = 136315138;
  v34 = sub_1B6ABA330();
  v36 = sub_1B698F63C(v34, v35, &v39);

  *(v32 + 4) = v36;
  _os_log_impl(&dword_1B697C000, v12, v31, "Failed privacy validation for summary event: %s", v32, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v33);
  MEMORY[0x1B8C99550](v33, -1, -1);
  MEMORY[0x1B8C99550](v32, -1, -1);

  return 0;
}

uint64_t sub_1B6A8AA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B698AC90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B6A8AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t AppSessionManager.forEachSessionManager(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_1B69877A4(v5, sub_1B6A0A990, v6);
}

uint64_t sub_1B6A8AB70()
{
  sub_1B6A909BC(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EB967240 = result;
  return result;
}

uint64_t sub_1B6A8ABA8()
{
  sub_1B6A90884(0);
  result = swift_allocObject();
  *(result + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  qword_1EDBCFD18 = result;
  return result;
}

uint64_t sub_1B6A8ABE8()
{
  v40 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v40);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  v8 = OBJC_IVAR___AAAccessQueue_queue;
  v41 = v0;
  v42 = v7;
  v9 = *(v7 + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v9;
  v10 = *MEMORY[0x1E69E8020];
  v12 = v4 + 104;
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v13 = v9;
  v14 = sub_1B6AB9110();
  v17 = *(v4 + 8);
  v16 = v4 + 8;
  v15 = v17;
  v17(v6, v3);
  if ((v14 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = *(v42 + v8);
  *v6 = v18;
  v11(v6, v10, v3);
  v19 = v18;
  v14 = sub_1B6AB9110();
  v15(v6, v3);
  if ((v14 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v14 = *(v41 + 72);
  if (v14 >> 62)
  {
LABEL_35:
    v42 = v14 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_1B6AB9E60();
    goto LABEL_5;
  }

  v42 = v14 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (!v20)
  {
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v35 = v15;
  v36 = v11;
  v37 = v12;
  v38 = v10;
  v39 = v16;
  v16 = 0;
  v41 = v14 & 0xC000000000000001;
  v34 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v16;
    while (1)
    {
      if (v41)
      {
        v11 = MEMORY[0x1B8C98510](v12, v14);
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v12 >= *(v42 + 16))
        {
          goto LABEL_31;
        }

        v11 = *(v14 + 8 * v12 + 32);

        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      Strong = swift_weakLoadStrong();
      if (!Strong)
      {

        goto LABEL_9;
      }

      v15 = Strong;
      v10 = v20;
      v22 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
      *v6 = v22;
      v36(v6, v38, v3);
      v23 = v22;
      LOBYTE(v22) = sub_1B6AB9110();

      v35(v6, v3);
      if ((v22 & 1) == 0)
      {
        goto LABEL_32;
      }

      v24 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
      swift_beginAccess();
      sub_1B69804E0(v15 + v24, v2, type metadata accessor for SessionManager.SessionState);

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6984064(v2, type metadata accessor for SessionManager.SessionState);
        v20 = v10;
        goto LABEL_9;
      }

      v20 = v10;
      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

LABEL_9:
      ++v12;
      if (v16 == v20)
      {
        goto LABEL_29;
      }
    }

    v26 = *(*v2 + 16);
    v15 = *(*v2 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1B69B5A00(0, *(v34 + 2) + 1, 1, v34);
    }

    v29 = *(v34 + 2);
    v28 = *(v34 + 3);
    v11 = (v29 + 1);
    if (v29 >= v28 >> 1)
    {
      v34 = sub_1B69B5A00((v28 > 1), v29 + 1, 1, v34);
    }

    v30 = v34;
    *(v34 + 2) = v11;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v26;
    *(v31 + 5) = v15;
    v20 = v10;
  }

  while (v16 != v10);
LABEL_29:

  v32 = sub_1B6A94D5C(v34);

  return v32;
}

uint64_t AppSessionManager.wasPriorSessionCrashDetected.getter()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t AppSessionManager.lastSessionCrashDetails.getter()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 16))(v1, v2);
}

void *AppSessionManager.__allocating_init(accessQueue:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1B6A8FB80(a1);

  return v2;
}

void *AppSessionManager.init(accessQueue:)(void *a1)
{
  v2 = sub_1B6A8FB80(a1);

  return v2;
}

void *AppSessionManager.__allocating_init(accessQueue:trackingConsent:crashDetector:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1B6A8FDA0(a1, a2, a3);

  return v6;
}

void *AppSessionManager.init(accessQueue:trackingConsent:crashDetector:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_1B6A8FDA0(a1, a2, a3);

  return v4;
}

void *AppSessionManager.__allocating_init(accessQueue:trackingConsent:crashDetector:summaryEventConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v9 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v8[3] = a1;
  v8[4] = v9;
  sub_1B6982544(a3, (v8 + 10));
  sub_1B69804E0(a4, v8 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v8[5] = 0;
  v10 = v8 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider;
  v11 = v9;
  sub_1B6AB8E30();
  sub_1B6984064(a4, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a3);
  v12 = &v10[*(type metadata accessor for DiagnosticsConsentProvider(0) + 20)];
  *v12 = sub_1B69A3378;
  *(v12 + 1) = 0;
  v8[6] = a2;
  return v8;
}

void *AppSessionManager.init(accessQueue:trackingConsent:crashDetector:summaryEventConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v4[3] = a1;
  v13 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v4[4] = v13;
  sub_1B6982544(a3, (v4 + 10));
  sub_1B69804E0(a4, v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v4[5] = 0;
  v14 = v13;
  sub_1B6AB8E30();
  sub_1B6984064(a4, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a3);
  v15 = &v12[*(v10 + 28)];
  *v15 = sub_1B69A3378;
  *(v15 + 1) = 0;
  sub_1B6A90280(v12, v4 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v4[6] = a2;
  return v4;
}

void *AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:userDataConfiguration:diagnosticsConsentProvider:)(char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33 = a3;
  v34 = a2;
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a4)
  {
    if (qword_1EB95A9E8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EB967240;
    os_unfair_lock_lock((qword_1EB967240 + 24));
    sub_1B6A8DCFC((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));
  }

  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDBCB570;
  sub_1B6982544(v34, v37);
  sub_1B69804E0(v33, v16, type metadata accessor for SummaryEventConfiguration);
  sub_1B69804E0(a4, v36, sub_1B6A8FF44);
  sub_1B69804E0(a5, v13, type metadata accessor for DiagnosticsConsentProvider);
  v19 = swift_allocObject();
  v20 = v19;
  v19[2] = 0;
  v19[7] = 0;
  v19[8] = 0;
  v19[9] = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v19[3] = v18;
  if (a1)
  {
    v21 = *&a1[OBJC_IVAR___AATrackingConsent_accessGroup];
    v19[4] = v21;
    v22 = v18;
    v23 = a1;
  }

  else
  {
    v24 = v18;
    v20[4] = dispatch_group_create();
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDBCB4A0;
    v23 = qword_1EDBCB4A0;
  }

  v25 = v21;
  v20[6] = v23;
  sub_1B6982544(v37, (v20 + 10));
  sub_1B69804E0(v16, v20 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B69804E0(v36, v35, sub_1B6A8FF44);
  sub_1B69804E0(v13, v11, type metadata accessor for DiagnosticsConsentProvider);
  if (a1)
  {
    v26 = a1;
  }

  else
  {
    if (qword_1EB95A990 != -1)
    {
      swift_once();
    }

    v26 = qword_1EB967220;
  }

  type metadata accessor for UserDataManager(0);
  swift_allocObject();
  v27 = a1;
  v20[5] = sub_1B6A7D3E8(v35, v11, v26);
  sub_1B69804E0(v13, v20 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v28 = qword_1EDBCAA18;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDBCFD78;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1B6A8FF94;
  *(v30 + 24) = v20;

  sub_1B69877A4(v29, sub_1B69B6F90, v30);

  sub_1B6984064(a5, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6984064(v33, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1B6984064(v13, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6984064(v36, sub_1B6A8FF44);
  sub_1B6984064(v16, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_1B6984064(a4, sub_1B6A8FF44);
  return v20;
}

void sub_1B6A8B9E4()
{
  if (qword_1EDBC9580 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBCFD18;
  os_unfair_lock_lock((qword_1EDBCFD18 + 32));
  sub_1B6A90A1C((v0 + 16));

  os_unfair_lock_unlock((v0 + 32));
}

uint64_t sub_1B6A8BA74(uint64_t *a1, uint64_t a2)
{
  swift_weakInit();
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B69E3D38(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1B69E3D38((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  result = sub_1B6A90280(v7, &v3[v5 + 4], sub_1B69E865C);
  *a1 = v3;
  return result;
}

void AppSessionManager.deinit()
{
  if (!*(v0 + 40))
  {
    goto LABEL_6;
  }

  if (qword_1EB95A9E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB967240;
  os_unfair_lock_lock((qword_1EB967240 + 24));
  v2 = *(v1 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 16) = v4;
    os_unfair_lock_unlock((v1 + 24));
LABEL_6:

    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    sub_1B6984064(v0 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
    sub_1B6984064(v0 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);

    return;
  }

  __break(1u);
}

uint64_t AppSessionManager.__deallocating_deinit()
{
  AppSessionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A8BCB4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a1 + 24);
  v11 = *&v22[OBJC_IVAR___AAAccessQueue_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  v13 = sub_1B6AB9110();
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v7 = *(a1 + 72);
    if (!(v7 >> 62))
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  v14 = sub_1B6AB9E60();
LABEL_4:

  if (v14)
  {
    v15 = 0;
    v25 = v7 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        MEMORY[0x1B8C98510](v15, v7);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v15 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        sub_1B69804E0(*(Strong + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v6, type metadata accessor for DiagnosticsConsentProvider);
        v19 = v24;

        sub_1B6AAE978(v22, v6, v23, v19, v18);

        sub_1B6984064(v6, type metadata accessor for DiagnosticsConsentProvider);
      }

      ++v15;
    }

    while (v16 != v14);
  }
}

uint64_t AppSessionManager.endAppSession(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  sub_1B6AB8DA0();
  v13 = v2 + 24;
  v12 = *(v2 + 24);
  v20[1] = *(v13 + 8);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  (*(v6 + 32))(v16 + v14, v9, v5);
  v17 = (v16 + v15);
  *v17 = v21;
  v17[1] = a2;

  sub_1B69877A4(v12, sub_1B6A8FFD8, v16);

  v18 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  swift_beginAccess();
  if (*(v3 + v18))
  {
    swift_endAccess();

    sub_1B6AB9710();

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return swift_endAccess();
  }
}

uint64_t sub_1B6A8C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDBCCB28;
  sub_1B6987B48(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
  v47 = v10;
  v11 = swift_allocObject();
  v46 = xmmword_1B6ABD890;
  *(v11 + 16) = xmmword_1B6ABD890;
  v12 = *(a1 + 24);
  v55 = OBJC_IVAR___AAAccessQueue_queue;
  v13 = *(v12 + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v13;
  v14 = *(v6 + 104);
  v54 = *MEMORY[0x1E69E8020];
  v53 = v14;
  v51 = v6 + 104;
  v14(v8);
  v15 = v13;
  v16 = sub_1B6AB9110();
  v56 = *(v6 + 8);
  result = v56(v8, v5);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = a1;
  v52 = v9;
  v21 = *(a1 + 56);
  v19 = (a1 + 56);
  v20 = v21;
  v22 = *(v18 + 64);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1B698CEC0();
  *(v11 + 64) = v45;
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 7104878;
  }

  v24 = 0xE300000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(v11 + 32) = v23;
  *(v11 + 40) = v24;

  v25 = sub_1B6AB9900();
  sub_1B6AB8F70("Ending app session, identifier=%{public}@", 41, 2, &dword_1B697C000, v52, v25, v11);

  sub_1B6A8C660();
  v26 = dispatch_group_create();
  v27 = *(v12 + v55);
  *v8 = v27;
  v53(v8, v54, v5);
  v28 = v27;
  LOBYTE(v27) = sub_1B6AB9110();
  result = v56(v8, v5);
  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

  v43 = v19;
  v44 = v18;
  v29 = *(v18 + 72);
  MEMORY[0x1EEE9AC00](result);
  v30 = v48;
  *(&v42 - 2) = v26;
  *(&v42 - 1) = v30;

  sub_1B6AB3954(sub_1B6A902E8, (&v42 - 4), v29);

  sub_1B69877A4(v12, v49, v50);
  v31 = swift_allocObject();
  *(v31 + 16) = v46;
  v32 = *(v12 + v55);
  *v8 = v32;
  v53(v8, v54, v5);
  v33 = v32;
  LOBYTE(v32) = sub_1B6AB9110();
  result = v56(v8, v5);
  if ((v32 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = *(v44 + 56);
  v34 = *(v44 + 64);
  v36 = v45;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = v36;
  if (!v34)
  {
    v35 = 7104878;
  }

  v37 = 0xE300000000000000;
  if (v34)
  {
    v37 = v34;
  }

  *(v31 + 32) = v35;
  *(v31 + 40) = v37;

  v38 = sub_1B6AB9900();
  sub_1B6AB8F70("Finished ending app session, identifier=%{public}@", 50, 2, &dword_1B697C000, v52, v38, v31);

  v39 = *(v12 + v55);
  *v8 = v39;
  v53(v8, v54, v5);
  v40 = v39;
  LOBYTE(v39) = sub_1B6AB9110();

  result = v56(v8, v5);
  if (v39)
  {
    v41 = v43;
    *v43 = 0;
    v41[1] = 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B6A8C660()
{
  v1 = sub_1B6AB90F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[3];
  v6 = OBJC_IVAR___AAAccessQueue_queue;
  v7 = *(v5 + OBJC_IVAR___AAAccessQueue_queue);
  *v4 = v7;
  v9 = v2 + 104;
  v8 = *(v2 + 104);
  v25 = *MEMORY[0x1E69E8020];
  v24 = v8;
  v8(v4);
  v10 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  v12 = *(v2 + 8);
  v11 = v2 + 8;
  v23 = v12;
  v12(v4, v1);
  if (v7)
  {
    v21 = v6;
    v22 = v9;
    v9 = v0[9];
    v26 = MEMORY[0x1E69E7CC0];
    if (!(v9 >> 62))
    {
      v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v13 = sub_1B6AB9E60();
LABEL_4:

  if (v13)
  {
    v18[0] = v5;
    v18[1] = v11;
    v19 = v1;
    v20 = v0;
    v11 = 0;
    v5 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v11, v9);
        v1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v14 = v26;
          v1 = v19;
          v0 = v20;
          v5 = v18[0];
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_weakLoadStrong())
      {

        v0 = &v26;
        sub_1B6AB9D50();
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++v11;
      if (v1 == v13)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v15 = *(v5 + v21);
  *v4 = v15;
  v24(v4, v25, v1);
  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = v23(v4, v1);
  if (v15)
  {
    v0[9] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A8C910(uint64_t *a1, dispatch_group_t group, uint64_t a3)
{
  dispatch_group_enter(group);
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = group;
    v7 = group;
    sub_1B6A039D8(a3, sub_1B69C8DA0, v6);
  }

  return result;
}

Swift::Void __swiftcall AppSessionManager.appSessionDidTerminate()()
{
  v1 = v0;
  v2 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB8DB0();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v60 = sub_1B6AB90C0();
  v9 = *(v60 - 8);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v45 - v12;
  v13 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 24);
  sub_1B6A2ACC8();
  v45 = v15;
  sub_1B6987B48(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v46 = v1;
  sub_1B6AB99A0();
  v16 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v17 = sub_1B6AB9E60();
    v19 = v59;
    v18 = v60;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v59;
    v18 = v60;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return;
  }

  v20 = 0;
  v66 = v16 & 0xC000000000000001;
  v52 = v68;
  v51 = v57 + 16;
  v50 = v5 + 7;
  v49 = v57 + 32;
  v48 = (v57 + 8);
  v53 = v16;
  v63 = v17;
  v47 = v8;
  do
  {
    if (v66)
    {
      MEMORY[0x1B8C98510](v20, v16);
    }

    else
    {
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = *(Strong + 56);
      sub_1B6AB90B0();
      v64 = v23;
      sub_1B6AB9910();
      v65 = *(v9 + 8);
      v65(v19, v18);
      if (sub_1B6AB9010())
      {
        sub_1B6AB8DA0();
        v62 = dispatch_group_create();
        dispatch_group_enter(v62);
        v24 = v4;
        v25 = *(v22 + 48);
        v26 = v58;
        sub_1B6AB9070();
        v61 = v25;
        sub_1B6A2AED0(v26);
        sub_1B6AB9070();
        sub_1B6AB9020();
        v68[2] = nullsub_1;
        v68[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v68[0] = sub_1B698E534;
        v68[1] = &block_descriptor_37;
        _Block_copy(aBlock);
        sub_1B6AB90E0();
        swift_allocObject();
        sub_1B6AB90D0();
        sub_1B6AB99C0();

        v27 = v8;
        v28 = v57;
        v29 = v55;
        (*(v57 + 16))(v55, v27, v24);
        v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
        v31 = (v50 + v30) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        *(v32 + 16) = v22;
        v33 = *(v28 + 32);
        v4 = v24;
        v33(v32 + v30, v29, v24);
        v34 = v62;
        *(v32 + v31) = v62;
        v18 = v60;
        v35 = v34;

        sub_1B69877A4(v61, sub_1B6A90088, v32);
        v19 = v59;

        v36 = v54;
        sub_1B6AB90B0();
        sub_1B6AB9100();
        v37 = v65;
        v65(v36, v18);
        LOBYTE(v36) = sub_1B6AB9910();
        v37(v19, v18);
        if (v36)
        {
          v8 = v47;
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v38 = qword_1EDBCCB28;
          v39 = sub_1B6AB98E0();
          sub_1B6AB8F70("Session manager timed out while waiting for session to end in endSync!", 70, 2, &dword_1B697C000, v38, v39, MEMORY[0x1E69E7CC0]);

          (*v48)(v8, v4);
        }

        else
        {
          v8 = v47;
          (*v48)(v47, v4);
        }

        v16 = v53;
        v17 = v63;
      }

      else
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v40 = qword_1EDBCCB28;
        v41 = sub_1B6AB98E0();
        sub_1B6AB8F70("Session manager attempted to endSync when the access group is waiting", 69, 2, &dword_1B697C000, v40, v41, MEMORY[0x1E69E7CC0]);

        v17 = v63;
      }
    }

    else
    {
    }

    ++v20;
  }

  while (v17 != v20);
LABEL_22:

  v42 = v58;
  sub_1B6AB9050();
  sub_1B6A2AED0(v42);
  v43 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  v44 = v46;
  swift_beginAccess();
  if (*(v44 + v43))
  {

    sub_1B6AB9710();
  }
}

Swift::Void __swiftcall AppSessionManager.appSessionDidTerminate(timeout:)(Swift::Double timeout)
{
  v2 = v1;
  v3 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8DB0();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = sub_1B6AB90C0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v53 - v16;
  v17 = *(v1 + 24);
  sub_1B6A2ACC8();
  v53 = v17;
  sub_1B6987B48(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v54 = v2;
  sub_1B6AB99A0();
  v18 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v19 = sub_1B6AB9E60();
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_23:

    v50 = v67;
    sub_1B6AB9050();
    sub_1B6A2AED0(v50);
    v51 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
    v52 = v54;
    swift_beginAccess();
    if (*(v52 + v51))
    {

      sub_1B6AB9710();
    }

    return;
  }

  v19 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = (v13 + 8);
    v22 = v18 & 0xC000000000000001;
    v61 = v78;
    v60 = v66 + 16;
    v59 = v8 + 7;
    v23 = v21;
    v58 = v66 + 32;
    v57 = (v66 + 8);
    v76 = v21;
    v71 = v19;
    v72 = v18;
    v62 = v18 & 0xC000000000000001;
    v56 = v11;
    v55 = v12;
    while (1)
    {
      if (v22)
      {
        v24 = MEMORY[0x1B8C98510](v20, v18);
      }

      else
      {
        v24 = *(v18 + 8 * v20 + 32);
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      if (v19 == ++v20)
      {
        goto LABEL_23;
      }
    }

    v26 = Strong;
    v27 = *(Strong + 56);
    v28 = v73;
    sub_1B6AB90B0();
    v74 = v27;
    sub_1B6AB9910();
    v75 = *v23;
    v75(v28, v12);
    if (sub_1B6AB9010())
    {
      v69 = v24;
      sub_1B6AB8DA0();
      v70 = dispatch_group_create();
      dispatch_group_enter(v70);
      v29 = *(v26 + 48);
      v30 = v11;
      v31 = v67;
      sub_1B6AB9070();
      v68 = v29;
      sub_1B6A2AED0(v31);
      sub_1B6AB9070();
      v32 = v7;
      sub_1B6AB9020();
      v78[2] = nullsub_1;
      v78[3] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v78[0] = sub_1B698E534;
      v78[1] = &block_descriptor_44;
      _Block_copy(aBlock);
      sub_1B6AB90E0();
      swift_allocObject();
      sub_1B6AB90D0();
      sub_1B6AB99C0();

      v33 = v66;
      v34 = v64;
      (*(v66 + 16))(v64, v30, v7);
      v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v36 = (v59 + v35) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = v26;
      v38 = v34;
      v39 = v32;
      (*(v33 + 32))(v37 + v35, v38, v32);
      v40 = v70;
      *(v37 + v36) = v70;
      v41 = v40;

      sub_1B69877A4(v68, sub_1B6A90A40, v37);

      v42 = v63;
      sub_1B6AB90B0();
      sub_1B6AB9100();
      v43 = v55;
      v44 = v75;
      v75(v42, v55);
      LOBYTE(v42) = sub_1B6AB9910();
      v45 = v43;
      v44(v28, v43);
      if ((v42 & 1) == 0)
      {
        v11 = v56;
        (*v57)(v56, v39);

        v7 = v39;
        v12 = v45;
        v19 = v71;
        v18 = v72;
        v22 = v62;
        goto LABEL_21;
      }

      v11 = v56;
      v7 = v39;
      v19 = v71;
      v22 = v62;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDBCCB28;
      v47 = sub_1B6AB98E0();
      sub_1B6AB8F70("Session manager timed out while waiting for session to end in endSync!", 70, 2, &dword_1B697C000, v46, v47, MEMORY[0x1E69E7CC0]);

      (*v57)(v11, v7);

      v12 = v45;
    }

    else
    {
      v19 = v71;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v48 = qword_1EDBCCB28;
      v49 = sub_1B6AB98E0();
      sub_1B6AB8F70("Session manager attempted to endSync when the access group is waiting", 69, 2, &dword_1B697C000, v48, v49, MEMORY[0x1E69E7CC0]);
    }

    v18 = v72;
LABEL_21:
    v23 = v76;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B6A8DA28(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v18 = OBJC_IVAR___AAAccessQueue_queue;
  v7 = *(v19 + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  v8 = *MEMORY[0x1E69E8020];
  v9 = *(v4 + 104);
  v9(v6, v8, v3);
  v10 = v7;
  v11 = sub_1B6AB9110();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if (v11)
  {
    a1[7] = 0;
    a1[8] = 0;

    v13 = *(v19 + v18);
    *v6 = v13;
    v9(v6, v8, v3);
    v14 = v13;
    v15 = sub_1B6AB9110();
    v12(v6, v3);
    if (v15)
    {
      *v17 = a1[9];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AppSessionManager.userEventsID()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40))
  {
    sub_1B6A81954(a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AppSessionManager.userID(for:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40))
  {
    v7 = *a1;
    return sub_1B6A83538(&v7, a2);
  }

  else
  {
    v5 = sub_1B6AB8E40();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

void sub_1B6A8DCFC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 <= 0)
  {
    *a1 = v1 + 1;
  }

  else
  {
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v2 = sub_1B6AB8F90();
    __swift_project_value_buffer(v2, qword_1EDBCFDA8);
    v3 = sub_1B6AB8F80();
    v4 = sub_1B6AB98E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1B697C000, v3, v4, "AppSessionManager instance count = %ld", v5, 0xCu);
      MEMORY[0x1B8C99550](v5, -1, -1);
    }
  }
}

uint64_t sub_1B6A8DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B6A8DE28, 0, 0);
}

uint64_t sub_1B6A8DE28()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B69F69E0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE8](v2, v4, 0, 0, &unk_1B6AC5710, v3, v5);
}

uint64_t sub_1B6A8DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1B69949E8(0);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8DF7C, 0, 0);
}

uint64_t sub_1B6A8DF7C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1B6AB9680();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v6 = sub_1B69F18A0();
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = v6;
  v7[4] = sub_1B6A90464;
  v7[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5720, v7);
  sub_1B6984064(v1, sub_1B69949E8);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = inited;
  v8[3] = v6;
  v8[4] = &unk_1B6AC5730;
  v8[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5740, v8);
  sub_1B6984064(v1, sub_1B69949E8);
  v4(v1, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = inited;
  v9[3] = v6;
  v9[4] = &unk_1B6AC5750;
  v9[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5758, v9);
  sub_1B6984064(v1, sub_1B69949E8);
  v4(v1, 1, 1, v3);
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v6;
  v10[4] = &unk_1B6AC5768;
  v10[5] = v2;

  sub_1B6A8E364(v1, &unk_1B6AC5770, v10);
  sub_1B6984064(v1, sub_1B69949E8);

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_1B6A8E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8E300, v6, v5);
}

uint64_t sub_1B6A8E300()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6A8E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69804E0(a1, v10, sub_1B69949E8);
  v11 = sub_1B6AB9680();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B6984064(v10, sub_1B69949E8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B6AB95E0();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB9670();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1B6A8E57C()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69AD75C;

  return sub_1B6A7EB98();
}

uint64_t sub_1B6A8E620(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B69D1460;

  return v6();
}

uint64_t sub_1B6A8E708()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A80314();
}

uint64_t sub_1B6A8E7AC()
{
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A81174();
}

uint64_t static AppSessionManager.remoteConfigurationUserID.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1B6987C8C(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8E8F8, 0, 0);
}

uint64_t sub_1B6A8E8F8()
{
  if (qword_1EDBC9580 != -1)
  {
    goto LABEL_30;
  }

LABEL_2:
  v1 = qword_1EDBCFD18;
  os_unfair_lock_lock((qword_1EDBCFD18 + 32));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 32));
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_12:

LABEL_13:
    v11 = v0[8];
    v12 = sub_1B6AB8E40();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v14(v11, 1, 1, v12);
    v15 = v0[6];
    sub_1B69804E0(v0[8], v15, sub_1B6987C8C);
    v16 = *(v13 + 48);
    v17 = v16(v15, 1, v12);
    v18 = v0[6];
    v19 = v0[7];
    if (v17 == 1)
    {
      sub_1B6A8F2B8(0, v0[7]);
      if (v16(v18, 1, v12) != 1)
      {
        sub_1B6984064(v0[6], sub_1B6987C8C);
      }
    }

    else
    {
      (*(v13 + 32))(v0[7], v0[6], v12);
      v14(v19, 0, 1, v12);
    }

    v20 = v0[7];
    if (v16(v20, 1, v12) == 1)
    {
      sub_1B6984064(v20, sub_1B6987C8C);
      if (qword_1EDBCAA78 != -1)
      {
        swift_once();
      }

      v21 = sub_1B6AB8F90();
      __swift_project_value_buffer(v21, qword_1EDBCFDA8);
      v22 = sub_1B6AB8F80();
      v23 = sub_1B6AB98E0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B697C000, v22, v23, "Unable to determine remote configuration user ID. Falling back to a default value.", v24, 2u);
        MEMORY[0x1B8C99550](v24, -1, -1);
      }

      if (qword_1EB95A9F8 != -1)
      {
        swift_once();
      }

      v25 = v0[8];
      v26 = v0[4];
      v27 = __swift_project_value_buffer(v12, qword_1EB95C560);
      (*(v13 + 16))(v26, v27, v12);
      sub_1B6984064(v25, sub_1B6987C8C);
    }

    else
    {
      v28 = v0[4];
      sub_1B6984064(v0[8], sub_1B6987C8C);
      (*(v13 + 32))(v28, v20, v12);
    }

    v29 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v4 = 0;
  v5 = v2 + 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
      goto LABEL_2;
    }

    sub_1B69804E0(v5, (v0 + 3), sub_1B69E865C);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);

      if (v7)
      {
        break;
      }
    }

    ++v4;
    sub_1B6984064((v0 + 3), sub_1B69E865C);
    v5 += 8;
    if (v3 == v4)
    {
      goto LABEL_12;
    }
  }

  sub_1B6A90280((v0 + 3), (v0 + 2), sub_1B69E865C);
  v8 = swift_weakLoadStrong();
  v0[9] = v8;
  sub_1B6984064((v0 + 2), sub_1B69E865C);
  if (!v8)
  {
    goto LABEL_13;
  }

  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();

  v10 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A8EE88, v10, v9);
}

uint64_t sub_1B6A8EE88()
{
  if (*(*(v0 + 72) + 40))
  {
    sub_1B6A81954(*(v0 + 64));
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + 64);

  v3 = sub_1B6AB8E40();
  (*(*(v3 - 8) + 56))(v2, v1, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B6A8EF54, 0, 0);
}

uint64_t sub_1B6A8EF54()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_1B69804E0(v0[8], v2, sub_1B6987C8C);
  v3 = sub_1B6AB8E40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3) == 1)
  {
    v6 = v0[6];
    sub_1B6A8F2B8(v1, v0[7]);
    if (v5(v6, 1, v3) != 1)
    {
      sub_1B6984064(v0[6], sub_1B6987C8C);
    }
  }

  else
  {
    v7 = v0[7];
    (*(v4 + 32))(v7, v0[6], v3);
    (*(v4 + 56))(v7, 0, 1, v3);
  }

  v8 = v0[7];
  if (v5(v8, 1, v3) == 1)
  {
    sub_1B6984064(v8, sub_1B6987C8C);
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6AB8F90();
    __swift_project_value_buffer(v9, qword_1EDBCFDA8);
    v10 = sub_1B6AB8F80();
    v11 = sub_1B6AB98E0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B697C000, v10, v11, "Unable to determine remote configuration user ID. Falling back to a default value.", v12, 2u);
      MEMORY[0x1B8C99550](v12, -1, -1);
    }

    if (qword_1EB95A9F8 != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v14 = v0[4];
    v15 = __swift_project_value_buffer(v3, qword_1EB95C560);
    (*(v4 + 16))(v14, v15, v3);

    sub_1B6984064(v13, sub_1B6987C8C);
  }

  else
  {
    v16 = v0[4];
    sub_1B6984064(v0[8], sub_1B6987C8C);

    (*(v4 + 32))(v16, v8, v3);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B6A8F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6987C8C(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  if (!a1)
  {
    v43 = sub_1B6AB8E40();
    v44 = *(*(v43 - 8) + 56);

    return v44(a2, 1, 1, v43);
  }

  v47 = v13;
  v16 = sub_1B6AB8E40();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = v8;
  v18 = *(*(a1 + 24) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v18;
  v19 = *(v17 + 104);
  v57 = *MEMORY[0x1E69E8020];
  v55 = v19;
  v56 = v17 + 104;
  v19(v10);

  v20 = v18;
  v21 = sub_1B6AB9110();
  v22 = *(v17 + 8);
  v58 = v17 + 8;
  v54 = v22;
  v22(v10, v7);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    v59 = sub_1B6AB9E60();
    if (v59)
    {
      goto LABEL_5;
    }

LABEL_48:

    return sub_1B6A90280(v15, a2, sub_1B6987C8C);
  }

  v21 = *(a1 + 72);
  if (v21 >> 62)
  {
    goto LABEL_47;
  }

  v59 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v59)
  {
    goto LABEL_48;
  }

LABEL_5:
  v48 = v15;
  v49 = a1;
  v50 = a2;
  v60 = v21 & 0xC000000000000001;
  v53 = v21 & 0xFFFFFFFFFFFFFF8;

  v23 = 0;
  v24 = v59;
  v51 = v7;
  v52 = v4;
  while (v60)
  {
    MEMORY[0x1B8C98510](v23, v21);
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_42;
    }

LABEL_15:
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      goto LABEL_8;
    }

    v27 = Strong;
    v28 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v28;
    v55(v10, v57, v7);
    v29 = v28;
    LOBYTE(v28) = sub_1B6AB9110();
    v54(v10, v7);
    if ((v28 & 1) == 0)
    {
      goto LABEL_43;
    }

    v30 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B69804E0(v27 + v30, v6, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_1B6984064(v6, type metadata accessor for SessionManager.SessionState);
      }

      else
      {
      }

      goto LABEL_7;
    }

    v32 = *v6;
    v33 = *(*v6 + 32);
    v34 = *(*v6 + 40);
    if (v34)
    {
      if (v34 == 2)
      {

        v35 = v33;
        v36 = 2;
      }

      else if (v34 == 1)
      {

        v35 = v33;
        v36 = 1;
      }

      else
      {
        sub_1B6992E2C(*(*v6 + 32), *(*v6 + 40));

        sub_1B69C2E8C(v33, v34);
        v35 = v33;
        v36 = v34;
      }

      sub_1B69C2E8C(v35, v36);
      sub_1B69C2E8C(0, 0);
      goto LABEL_37;
    }

    sub_1B69C2E8C(*(*v6 + 32), 0);
    sub_1B69C2E8C(0, 0);
    v37 = sub_1B699696C(v32);
    if (!*(v37 + 16) || (v38 = sub_1B6993940(0x6174614472657355, 0xE800000000000000), (v39 & 1) == 0))
    {
LABEL_35:

      goto LABEL_36;
    }

    sub_1B698FE74(*(v37 + 56) + 32 * v38, v62);

    sub_1B697EFC4();
    if (swift_dynamicCast())
    {
      v40 = v61;
      if (!*(v61 + 16))
      {
        goto LABEL_35;
      }

      v41 = sub_1B6993940(0x444972657375, 0xE600000000000000);
      if ((v42 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_1B698FE74(*(v40 + 56) + 32 * v41, v62);

      if (swift_dynamicCast())
      {
        goto LABEL_45;
      }
    }

LABEL_36:

LABEL_37:
    v7 = v51;
LABEL_7:
    v24 = v59;
LABEL_8:
    ++v23;
    if (v25 == v24)
    {

      a2 = v50;
      v15 = v48;
      return sub_1B6A90280(v15, a2, sub_1B6987C8C);
    }
  }

  if (v23 >= *(v53 + 16))
  {
    goto LABEL_44;
  }

  v25 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_15;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:

  v46 = v47;
  sub_1B6AB8DC0();

  v15 = v48;
  sub_1B6984064(v48, sub_1B6987C8C);
  sub_1B6A90280(v46, v15, sub_1B6987C8C);
  a2 = v50;
  return sub_1B6A90280(v15, a2, sub_1B6987C8C);
}

uint64_t sub_1B6A8FA14()
{
  v0 = sub_1B6AB8E40();
  __swift_allocate_value_buffer(v0, qword_1EB95C560);
  __swift_project_value_buffer(v0, qword_1EB95C560);
  return sub_1B6AB8E30();
}

uint64_t sub_1B6A8FA60()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A8FA98(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B69F1038;

  return v4();
}

void *sub_1B6A8FB80(void *a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v1[9] = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v1[3] = a1;
  v6 = a1;
  v1[4] = dispatch_group_create();
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_1EDBCADE8;
  v1[13] = type metadata accessor for CrashDetector();
  v1[14] = &protocol witness table for CrashDetector;
  v1[10] = v7;
  v8 = qword_1EDBCAC70;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SummaryEventConfiguration(0);
  v10 = __swift_project_value_buffer(v9, qword_1EDBCA728);
  sub_1B69804E0(v10, v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v1[5] = 0;
  sub_1B6AB8E30();
  v11 = &v5[*(v3 + 20)];
  *v11 = sub_1B69A3378;
  *(v11 + 1) = 0;
  sub_1B6A90280(v5, v1 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDBCB4A0;
  v1[6] = qword_1EDBCB4A0;
  v13 = v12;
  return v1;
}

void *sub_1B6A8FDA0(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v3[3] = a1;
  v10 = *(a2 + OBJC_IVAR___AATrackingConsent_accessGroup);
  v3[4] = v10;
  sub_1B6982544(a3, (v3 + 10));
  v11 = qword_1EDBCAC70;
  v12 = a1;
  v13 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SummaryEventConfiguration(0);
  v15 = __swift_project_value_buffer(v14, qword_1EDBCA728);
  sub_1B69804E0(v15, v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  v3[5] = 0;
  sub_1B6AB8E30();
  __swift_destroy_boxed_opaque_existential_1(a3);
  v16 = &v9[*(v7 + 20)];
  *v16 = sub_1B69A3378;
  *(v16 + 1) = 0;
  sub_1B6A90280(v9, v3 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v3[6] = a2;
  return v3;
}

void sub_1B6A8FF44()
{
  if (!qword_1EDBC9028[0])
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBC9028);
    }
  }
}

uint64_t sub_1B6A8FF9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1B6A8FFD8()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1B6A8C1C4(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B6A90280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A90304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69AD75C;

  return sub_1B6A8DE08(a1, v4, v5, v6);
}

uint64_t sub_1B6A903B8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B69D1460;

  return sub_1B6A8DEEC(a1, a2, v2);
}

uint64_t sub_1B6A90468()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B69D1460;

  return sub_1B6A8E268(v2, v3, v5, v4);
}

uint64_t sub_1B6A90528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E57C();
}

uint64_t sub_1B6A905B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B69D1460;

  return sub_1B6A8E620(v2, v3, v4);
}

uint64_t sub_1B6A90678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E708();
}

uint64_t sub_1B6A90708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B69D1460;

  return sub_1B6A8E7AC();
}

uint64_t objectdestroy_77Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6A907D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B69AD75C;

  return sub_1B6A8FA98(v2);
}

void sub_1B6A90884(uint64_t a1)
{
  if (!qword_1EDBC8DE8)
  {
    sub_1B6A908EC(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8DE8);
    }
  }
}

void sub_1B6A908EC(uint64_t a1)
{
  if (!qword_1EDBC8E40)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1B6987B48(255, &qword_1EDBC8E38, sub_1B69E865C, MEMORY[0x1E69E62F8]);
    sub_1B6987B48(255, &qword_1EDBC8E30, sub_1B69E89FC, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC8E40);
    }
  }
}

void sub_1B6A909BC(uint64_t a1)
{
  if (!qword_1EB95C578)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C578);
    }
  }
}

uint64_t sub_1B6A90A7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a5;
  v13[1] = a4;
  sub_1B6A910F0(0, &qword_1EB95C590, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9109C();
  sub_1B6ABA2D0();
  v16 = 0;
  sub_1B6ABA000();
  if (!v5)
  {
    v15 = 1;
    sub_1B6ABA030();
    v14 = 2;
    sub_1B6ABA030();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B6A90C1C()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x66664F646E756F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B6A90C78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A90D68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A90CA0(uint64_t a1)
{
  v2 = sub_1B6A9109C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A90CDC(uint64_t a1)
{
  v2 = sub_1B6A9109C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A90D18@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6A90E84(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1B6A90D68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F646E756F72 && a2 == 0xEF73657275676946)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B6A90E84(void *a1)
{
  sub_1B6A910F0(0, &qword_1EB95C580, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9109C();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1B6AB9F50();
    v12 = 1;
    sub_1B6AB9F80();
    v11 = 2;
    sub_1B6AB9F80();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1B6A9109C()
{
  result = qword_1EB95C588;
  if (!qword_1EB95C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C588);
  }

  return result;
}

void sub_1B6A910F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A9109C();
    v7 = a3(a1, &type metadata for SummaryEventDatabaseEntity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A91168()
{
  result = qword_1EB95C598;
  if (!qword_1EB95C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C598);
  }

  return result;
}

unint64_t sub_1B6A911C0()
{
  result = qword_1EB95C5A0;
  if (!qword_1EB95C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5A0);
  }

  return result;
}

unint64_t sub_1B6A91218()
{
  result = qword_1EB95C5A8;
  if (!qword_1EB95C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5A8);
  }

  return result;
}

uint64_t sub_1B6A912E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6A91A18(a1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, v7, type metadata accessor for StoredUserIDComponents);
  v9 = a3(v8);
  sub_1B6A91D64(v7, type metadata accessor for RotationMode);
  return v9;
}

id sub_1B6A913B0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoredUserIDComponents(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698103C(0);
  v9 = v8[12];
  v10 = v8[16];
  v11 = v8[20];
  sub_1B6AB8E30();
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v7[v9], a1, v12);
  *&v7[v10] = 0;
  *&v7[v11] = 0;
  type metadata accessor for RotationMode(0);
  swift_storeEnumTagMultiPayload();
  *&v7[*(v5 + 28)] = xmmword_1B6AC5940;
  sub_1B6A91CFC(v7, v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, type metadata accessor for StoredUserIDComponents);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a1, v12);
  return v14;
}

id BridgedStoredUserIDComponents.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B6AB92B0();
  v6 = [a1 decodeInt64ForKey_];

  v7 = sub_1B6AB92B0();
  v8 = [a1 decodeInt64ForKey_];

  type metadata accessor for BridgedRotationMode(0);
  v9 = sub_1B6AB9AF0();
  if (v9)
  {
    v10 = &v2[OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents];
    v11 = v9;
    sub_1B6A91A18(v9 + OBJC_IVAR___AARotationMode_mode, &v2[OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents], type metadata accessor for RotationMode);
    v12 = &v10[*(type metadata accessor for StoredUserIDComponents(0) + 20)];
    *v12 = v6;
    *(v12 + 1) = v8;
    v15.receiver = v2;
    v15.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

Swift::Void __swiftcall BridgedStoredUserIDComponents.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredUserIDComponents(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents;
  sub_1B6A91A18(v1 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, v9, type metadata accessor for StoredUserIDComponents);
  sub_1B6A91CFC(v9, v5, type metadata accessor for RotationMode);
  v11 = type metadata accessor for BridgedRotationMode(0);
  v12 = objc_allocWithZone(v11);
  sub_1B6A91A18(v5, v12 + OBJC_IVAR___AARotationMode_mode, type metadata accessor for RotationMode);
  v20.receiver = v12;
  v20.super_class = v11;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  sub_1B6A91D64(v5, type metadata accessor for RotationMode);
  v14 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = (v10 + *(v7 + 28));
  v16 = *v15;
  v17 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeInteger:v16 forKey:v17];

  v18 = v15[1];
  v19 = sub_1B6AB92B0();
  [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];
}

uint64_t sub_1B6A91A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id BridgedStoredUserIDComponents.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedStoredUserIDComponents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedStoredUserIDComponents(uint64_t a1)
{
  result = qword_1EB95C5B8;
  if (!qword_1EB95C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A91C40(uint64_t a1)
{
  result = type metadata accessor for StoredUserIDComponents(319);
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

uint64_t sub_1B6A91CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A91D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A91DC4@<X0>(const void *a1@<X0>, size_t a4@<X5>, unint64_t a5@<X6>, int *a6@<X8>)
{
  result = sub_1B6AB8B80();
  v11 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v11 != 2)
    {
      a4 = 0;
      goto LABEL_11;
    }

    v13 = *(a4 + 16);
    v12 = *(a4 + 24);
    a4 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v11)
  {
    a4 = BYTE6(a5);
LABEL_11:
    v14 = sub_1B6AB9350();

    v15 = sub_1B6AB9350();
    v16 = setxattr((v14 + 32), (v15 + 32), a1, a4, 0, 0);

    *a6 = v16;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    a4 = HIDWORD(a4) - a4;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_1B6A91EEC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1B6AB8900();
  v8 = result;
  if (result)
  {
    result = sub_1B6AB8930();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1B6AB8920();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

void sub_1B6A91F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6ABA090();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A91FF0(uint64_t a1)
{
  sub_1B69B4824();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A9204C()
{
  result = qword_1EDBCBA90;
  if (!qword_1EDBCBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBA90);
  }

  return result;
}

uint64_t sub_1B6A920A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A920F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6A92148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B6A92160(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6A92194(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 24))(a3, a4) & 1;
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_requiresTrackingConsent);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata requiresTrackingConsent];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B6A92230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1B6A9227C(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata accessor for SummaryEventData(uint64_t a1)
{
  result = qword_1EDBC91E8;
  if (!qword_1EDBC91E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B6A92320(uint64_t a1)
{
  type metadata accessor for SummaryEventMetaData(319);
  if (v1 <= 0x3F)
  {
    sub_1B6A923AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6A923AC()
{
  if (!qword_1EB95C5C8)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C5C8);
    }
  }
}

uint64_t sub_1B6A923FC(void *a1)
{
  v3 = v1;
  sub_1B6A92D90(0, &qword_1EB95C5F8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A92BC0();
  sub_1B6ABA2D0();
  v13 = 0;
  type metadata accessor for SummaryEventMetaData(0);
  sub_1B6A92DF4(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData, &unk_1B6AC7CD8);
  sub_1B6ABA040();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SummaryEventData(0) + 20));
    v11[15] = 1;
    sub_1B6A923AC();
    sub_1B6A92E3C(&qword_1EB95C600, sub_1B6A47128, MEMORY[0x1E69E6300]);
    sub_1B6ABA040();
    v11[14] = 2;
    sub_1B6ABA020();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B6A92644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SummaryEventMetaData(0);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A92D90(0, &qword_1EB95C5D0, MEMORY[0x1E69E6F48]);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SummaryEventData(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A92BC0();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v11;
  v26 = 0;
  sub_1B6A92DF4(&qword_1EB95C5E0, type metadata accessor for SummaryEventMetaData, &unk_1B6AC7D00);
  v14 = v21;
  sub_1B6AB9F90();
  sub_1B6A92C14(v22, v13);
  sub_1B6A923AC();
  v24 = 1;
  sub_1B6A92E3C(&qword_1EB95C5E8, sub_1B6A92C78, MEMORY[0x1E69E6330]);
  sub_1B6AB9F90();
  *(v13 + *(v9 + 20)) = v25;
  v23 = 2;
  sub_1B6AB9F70();
  v16 = v15;
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v16;
  sub_1B6A92CCC(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A92D30(v13, type metadata accessor for SummaryEventData);
}

unint64_t sub_1B6A92A10()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B6A92A6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A92FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A92A94(uint64_t a1)
{
  v2 = sub_1B6A92BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A92AD0(uint64_t a1)
{
  v2 = sub_1B6A92BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A92B3C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A92DF4(&qword_1EDBC9200, type metadata accessor for SummaryEventData, &unk_1B6AC5B6C);
  result = sub_1B6A92DF4(qword_1EDBC9208, type metadata accessor for SummaryEventData, &unk_1B6AC5B44);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A92BC0()
{
  result = qword_1EB95C5D8;
  if (!qword_1EB95C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5D8);
  }

  return result;
}

uint64_t sub_1B6A92C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventMetaData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B6A92C78()
{
  result = qword_1EB95C5F0;
  if (!qword_1EB95C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5F0);
  }

  return result;
}

uint64_t sub_1B6A92CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A92D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B6A92D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A92BC0();
    v7 = a3(a1, &type metadata for SummaryEventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A92DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6A92E3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A923AC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A92EBC()
{
  result = qword_1EB95C608;
  if (!qword_1EB95C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C608);
  }

  return result;
}

unint64_t sub_1B6A92F14()
{
  result = qword_1EB95C610;
  if (!qword_1EB95C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C610);
  }

  return result;
}

unint64_t sub_1B6A92F6C()
{
  result = qword_1EB95C618;
  if (!qword_1EB95C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C618);
  }

  return result;
}

uint64_t sub_1B6A92FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B6ACE500 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B6A930EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B69E4C6C(0, v1, 0);
    v3 = v37;
    v4 = a1 + 56;
    v5 = sub_1B6AB9BF0();
    v6 = 0;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v34 = v6;
      v35 = *(a1 + 36);
      v9 = (*(a1 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      DenylistDescriptor.init(value:)(&v36, v12);
      countAndFlagsBits = v36.eventName._countAndFlagsBits;
      object = v36.eventName._object;
      v15 = v36.dataName._countAndFlagsBits;
      v16 = v36.dataName._object;
      v17 = v36.propertyName._countAndFlagsBits;
      v18 = v36.propertyName._object;
      v37 = v3;
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      if (v20 >= v19 >> 1)
      {
        v31 = v36.dataName._countAndFlagsBits;
        v32 = v36.eventName._countAndFlagsBits;
        v29 = v36.propertyName._object;
        v30 = v36.propertyName._countAndFlagsBits;
        sub_1B69E4C6C((v19 > 1), v20 + 1, 1);
        v18 = v29;
        v17 = v30;
        v15 = v31;
        countAndFlagsBits = v32;
        v3 = v37;
      }

      *(v3 + 16) = v20 + 1;
      v21 = (v3 + 48 * v20);
      v21[4] = countAndFlagsBits;
      v21[5] = object;
      v21[6] = v15;
      v21[7] = v16;
      v21[8] = v17;
      v21[9] = v18;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 56;
      v22 = *(a1 + 56 + 8 * v8);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v7 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (a1 + 64 + 8 * v8);
        while (v25 < (v7 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1B6A8A5B4(v5, v35, 0);
            v7 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1B6A8A5B4(v5, v35, 0);
      }

LABEL_4:
      v6 = v34 + 1;
      v5 = v7;
      if (v34 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t DisabledPrivacyValidationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id BridgedPrivacyValidationProvider.bridgedPrivacyValidation.getter()
{
  v1 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id BridgedPrivacyValidationProvider.__allocating_init(bridgedPrivacyValidation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BridgedPrivacyValidationProvider.init(bridgedPrivacyValidation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t BridgedPrivacyValidationProvider.privacyValidation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  if (v6[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v7 = *&v6[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];
    v8 = v6;
    sub_1B6A930EC(v7);
    v5 = sub_1B6A94B10(v9);
  }

  *a1 = v5;
  return result;
}

id BridgedPrivacyValidationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPrivacyValidationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double DisabledPrivacyValidationProvider.privacyValidation.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t DisabledPrivacyValidationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A93750(void *a1, void *a2)
{
  v4 = *v2;
  sub_1B6ABA1F0();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v36 = a2;
  v10 = a2[4];
  v9 = a2[5];
  sub_1B6AB9380();
  v40 = v8;
  v41 = v7;
  sub_1B6AB9380();
  v38 = v9;
  v39 = v10;
  sub_1B6AB9380();
  v11 = sub_1B6ABA230();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v34 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = (v16 + 48 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v21 = v17[4];
      v20 = v17[5];
      v22 = *v17 == v5 && v17[1] == v6;
      if (v22 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v23 = v18 == v41 && v19 == v40;
        if (v23 || (sub_1B6ABA0F0() & 1) != 0)
        {
          v24 = v21 == v39 && v20 == v38;
          if (v24 || (sub_1B6ABA0F0() & 1) != 0)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1B6A94CB0(v36);
    v25 = (*(v34 + 48) + 48 * v14);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    *a1 = *v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;
    a1[4] = v29;
    a1[5] = v30;

    return 0;
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v35;
    sub_1B6A94C54(v36, v43);
    sub_1B6A93FC8(v36, v14, isUniquelyReferenced_nonNull_native);
    *v35 = v42;
    v33 = *(v36 + 1);
    *a1 = *v36;
    *(a1 + 1) = v33;
    *(a1 + 2) = *(v36 + 2);
    return 1;
  }
}

uint64_t sub_1B6A93984(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v8 = sub_1B6ABA230();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B6ABA0F0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B6A941F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B6A93AD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B69C287C(0);
  v4 = sub_1B6AB9C50();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v14 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      *v13 = v19;
      v13[1] = v20;
      v13[2] = v21;
      v13[3] = v22;
      v13[4] = v24;
      v13[5] = v23;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B6A93D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B6A94D04();
  result = sub_1B6AB9C50();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1B6A93FC8(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1B6A93AD4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B6A94370();
      goto LABEL_27;
    }

    sub_1B6A9463C(v6 + 1);
  }

  v8 = *v3;
  sub_1B6ABA1F0();
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v14 = result[4];
  v13 = result[5];
  sub_1B6AB9380();
  v38 = v12;
  v39 = v11;
  sub_1B6AB9380();
  v36 = v13;
  v37 = v14;
  sub_1B6AB9380();
  v15 = sub_1B6ABA230();
  v16 = -1 << *(v8 + 32);
  a2 = v15 & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = v8 + 56;
    v18 = ~v16;
    v19 = *(v8 + 48);
    while (1)
    {
      v20 = (v19 + 48 * a2);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v24 = v20[5];
      v25 = *v20 == v9 && v20[1] == v10;
      if (v25 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v26 = v21 == v39 && v22 == v38;
        if (v26 || (sub_1B6ABA0F0() & 1) != 0)
        {
          v27 = v23 == v37 && v24 == v36;
          if (v27 || (sub_1B6ABA0F0() & 1) != 0)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v18;
      if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    sub_1B6ABA180();
    __break(1u);
  }

LABEL_27:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = (*(v28 + 48) + 48 * a2);
  v30 = *(result + 1);
  *v29 = *result;
  v29[1] = v30;
  v29[2] = *(result + 2);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }
}

void sub_1B6A941F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B6A93D74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1B6A944EC();
      goto LABEL_16;
    }

    sub_1B6A948E4(v8 + 1);
  }

  v10 = *v4;
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v11 = sub_1B6ABA230();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1B6ABA0F0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1B6ABA180();
  __break(1u);
}

void sub_1B6A94370()
{
  v1 = v0;
  sub_1B69C287C(0);
  v2 = *v0;
  v3 = sub_1B6AB9C40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B6A944EC()
{
  v1 = v0;
  sub_1B6A94D04();
  v2 = *v0;
  v3 = sub_1B6AB9C40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1B6A9463C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B69C287C(0);
  result = sub_1B6AB9C50();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v35 + 48) + 48 * v13);
      *v14 = v19;
      v14[1] = v20;
      v10 = v36;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v24;
      v14[5] = v23;
      ++*(v35 + 16);
      v3 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v32 = v5;

        v2 = v33;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_26:
    *v2 = v32;
  }

  return result;
}

uint64_t sub_1B6A948E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B6A94D04();
  result = sub_1B6AB9C50();
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
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

uint64_t sub_1B6A94B10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B69C28D8();
  result = MEMORY[0x1B8C98010](v2, &type metadata for DenylistDescriptor, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_1B6A94C54(v9, &v7);
      sub_1B6A93750(&v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1B6A94D04()
{
  if (!qword_1EB95C628)
  {
    v0 = sub_1B6AB9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C628);
    }
  }
}

uint64_t sub_1B6A94D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C98010](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B6A93984(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B6A94E04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  sub_1B6A953E8(0, &qword_1EB95C640, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A95394();
  sub_1B6ABA2D0();
  v14 = 0;
  sub_1B6ABA000();
  if (!v4)
  {
    v13 = 1;
    sub_1B6ABA030();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B6A94F84()
{
  if (*v0)
  {
    return 0x756F43746E657665;
  }

  else
  {
    return 0x6D614E746E657665;
  }
}

uint64_t sub_1B6A94FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A950B4(uint64_t a1)
{
  v2 = sub_1B6A95394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A950F0(uint64_t a1)
{
  v2 = sub_1B6A95394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A9512C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6A951AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1B6A9517C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A92C78();
  result = sub_1B6A47128();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B6A951AC(void *a1)
{
  sub_1B6A953E8(0, &qword_1EB95C630, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A95394();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1B6AB9F50();
    v10[14] = 1;
    sub_1B6AB9F80();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1B6A95394()
{
  result = qword_1EB95C638;
  if (!qword_1EB95C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C638);
  }

  return result;
}

void sub_1B6A953E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A95394();
    v7 = a3(a1, &type metadata for SummaryEventDataItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A95460()
{
  result = qword_1EB95C648;
  if (!qword_1EB95C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C648);
  }

  return result;
}

unint64_t sub_1B6A954B8()
{
  result = qword_1EB95C650;
  if (!qword_1EB95C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C650);
  }

  return result;
}

unint64_t sub_1B6A95510()
{
  result = qword_1EB95C658;
  if (!qword_1EB95C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C658);
  }

  return result;
}

uint64_t UploadBatchEventProcessor.Errors.hashValue.getter()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t UploadBatchEventProcessor.deinit()
{
  swift_unknownObjectRelease();
  sub_1B6A97418(v0 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);
  return v0;
}

uint64_t UploadBatchEventProcessor.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1B6A97418(v0 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);

  return swift_deallocClassInstance();
}

void UploadBatchEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B6AB8E40();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v61[-v12];
  v14 = type metadata accessor for Session(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v4 + v18, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B6A97418(v13);
    sub_1B6A974A4();
    v19 = swift_allocError();
    swift_willThrow();
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDBCCB28;
    v25 = sub_1B6AB98F0();
    sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B6ABD890;
    v76 = 0;
    v77 = 0xE000000000000000;
    v75[0] = v19;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v27 = v76;
    v28 = v77;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1B698CEC0();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_1B6AB8F70("Failed to process event for batching, error=%{public}@", 54, 2, &dword_1B697C000, v24, v25, v26);
  }

  else
  {
    sub_1B69B6C5C(v13, v17, type metadata accessor for Session);
    v21 = type metadata accessor for ProcessEvent(0, a2, a3, v20);
    v22 = ProcessEventType.payload()(v21, &protocol witness table for ProcessEvent<A>);
    v23 = v17;
    v29 = *(v4 + 16);
    v30 = (a1 + v21[12]);
    v32 = *v30;
    v31 = v30[1];
    v33 = a1 + v21[13];
    v66 = *v33;
    v67 = v22;
    v65 = *(v33 + 8);
    v34 = (a1 + v21[15]);
    v36 = *v34;
    v35 = v34[1];
    v64 = v36;
    v63 = v35;
    v37 = *v23;
    v38 = v23[1];
    if (v31)
    {
      v39 = v32;
    }

    else
    {
      v39 = 0;
    }

    v69 = v39;
    v70 = v37;
    v76 = v37;
    v77 = v38;
    v78 = v39;
    v79 = v31;
    v80 = v31 != 0;

    v71 = v38;

    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    v40 = v29[10];
    v41 = *(v40 + 16);
    v68 = v23;
    if (v41 && (v42 = sub_1B69B3B58(&v76), (v43 & 1) != 0))
    {
      v44 = (*(v40 + 56) + 16 * v42);
      v45 = *v44;
      v46 = v44[1];
      swift_endAccess();
    }

    else
    {
      v62 = v31 != 0;
      swift_endAccess();
      sub_1B6AB8E30();
      v47 = sub_1B6AB8DD0();
      v46 = v48;
      (*(v72 + 8))(v10, v73);
      swift_beginAccess();
      v50 = v70;
      v49 = v71;
      v73 = v32;
      v51 = v69;
      sub_1B69E0EBC(v70, v71, v69, v31, v31 != 0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v29[10];
      v29[10] = 0x8000000000000000;
      sub_1B69E6AA8(v47, v46, &v76, isUniquelyReferenced_nonNull_native);
      v53 = v51;
      v32 = v73;
      v45 = v47;
      sub_1B69B47D4(v50, v49, v53, v31, v62);
      v29[10] = v74;
      swift_endAccess();
    }

    os_unfair_lock_unlock(*(v29[11] + 16));
    __swift_project_boxed_opaque_existential_1(v29 + 4, v29[7]);
    v75[0] = v64;
    v75[1] = v63;
    v54 = v68;
    v55 = sub_1B6A5D130(v67, v45, v46, v32, v31, v66, v65, v68, v31 == 0, v75);

    if (v55)
    {
      os_unfair_lock_lock_with_options();
      swift_beginAccess();
      sub_1B69B3AA0(&v76);
      swift_endAccess();
      os_unfair_lock_unlock(*(v29[11] + 16));

      v56 = v70;
      v57 = v71;
      v58 = v69;
      v59 = v31;
      v60 = v31 != 0;
    }

    else
    {
      v60 = v31 != 0;
      v56 = v70;
      v57 = v71;
      v58 = v69;
      v59 = v31;
    }

    sub_1B69B47D4(v56, v57, v58, v59, v60);
    sub_1B6A974F8(v54);
  }
}

uint64_t UploadBatchEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);
  swift_beginAccess();
  v4 = type metadata accessor for Session(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDBCCB28;
    v6 = sub_1B6AB98E0();
    sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B6ABD890;
    v9 = *(a1 + OBJC_IVAR___AAGroup_name);
    v8 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1B698CEC0();
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;

    sub_1B6AB8F70("Attempted to leave a group without a current session, group=%{public}@", 70, 2, &dword_1B697C000, v5, v6, v7);
  }

  else
  {
    v11 = v3[1];
    v13 = *(a1 + OBJC_IVAR___AAGroup_name);
    v12 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
    *&v14 = *v3;
    *(&v14 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v17 = 1;
    swift_bridgeObjectRetain_n();

    sub_1B6A6CF6C(&v14);

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t UploadBatchEventProcessor.didUpdateSession(_:)(uint64_t *a1)
{
  v2 = v1;
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = type metadata accessor for Session(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B6A97418(v9);
LABEL_9:
    __swift_project_boxed_opaque_existential_1((*(v2 + 16) + 32), *(*(v2 + 16) + 56));
    sub_1B6A5EC3C(*(a1 + *(v10 + 32)));
    sub_1B69B6D84(a1, v7);
    (*(v11 + 56))(v7, 0, 1, v10);
    swift_beginAccess();
    sub_1B69B6B60(v7, v2 + v14);
    return swift_endAccess();
  }

  sub_1B69B6C5C(v9, v13, type metadata accessor for Session);
  v16 = *a1;
  v15 = a1[1];
  v17 = *v13 == *a1 && v13[1] == v15;
  if (v17 || (sub_1B6ABA0F0() & 1) != 0)
  {
    sub_1B6A974F8(v13);
    goto LABEL_9;
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDBCCB28;
  v20 = sub_1B6AB98F0();
  sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B6ABD890;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1B698CEC0();
  *(v21 + 32) = v16;
  *(v21 + 40) = v15;

  sub_1B6AB8F70("UploadBatchEventProcessor got didUpdateSession with a session that is not the current session! Ignoring update for sessionID=%{public}@", 135, 2, &dword_1B697C000, v19, v20, v21);

  return sub_1B6A974F8(v13);
}

uint64_t UploadBatchEventProcessor.didEndSession(_:endDate:)()
{
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Session(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v3, v0 + v5);
  swift_endAccess();
  return sub_1B69B4E4C();
}

void UploadBatchEventProcessor.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B698E534;
    v7[3] = &block_descriptor_12;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 flushWithCallbackQueue:a1 completion:v6];
  _Block_release(v6);
}

double sub_1B6A96A98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B69A5E70(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DE7CC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1B6AB9E10();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1B69979CC((*(v9 + 56) + 32 * v7), a2);
    sub_1B69E5A7C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B6A96C44@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1B69DA8D8(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v31 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v31;
    }

    v18 = *(v17 + 48);
    v19 = sub_1B6AB8E40();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    sub_1B697F08C(0, a2, a3, MEMORY[0x1E69E8660]);
    v23 = v22;
    v30 = *(v22 - 8);
    (*(v30 + 32))(a6, v21 + *(v30 + 72) * v20, v22);
    a4(v20, v17);
    *v11 = v17;
    v24 = *(v30 + 56);
    v25 = a6;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    sub_1B697F08C(0, a2, a3, MEMORY[0x1E69E8660]);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a6;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

double sub_1B6A96ED0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1B6993940(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B6A96FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B6993940(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DF54C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Tracker.Timer(0);
    v19 = *(v12 - 8);
    sub_1B69B6C5C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Tracker.Timer);
    sub_1B69E6274(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Tracker.Timer(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1B6A97110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B69DA8D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DF7C0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1B6AB8E40();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Tracker.DelayedEvent(0);
    v20 = *(v13 - 8);
    sub_1B69B6C5C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for Tracker.DelayedEvent);
    sub_1B69E6460(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Tracker.DelayedEvent(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1B6A972AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B69DA824(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69E0138();
      v10 = v20;
    }

    sub_1B69C2E8C(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for UserIDComponents(0);
    v19 = *(v12 - 8);
    sub_1B69B6C5C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for UserIDComponents);
    sub_1B69E67C8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UserIDComponents(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1B6A97418(uint64_t a1)
{
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A974A4()
{
  result = qword_1EB95C660;
  if (!qword_1EB95C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C660);
  }

  return result;
}

uint64_t sub_1B6A974F8(uint64_t a1)
{
  v2 = type metadata accessor for Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A97558()
{
  result = qword_1EB95C668;
  if (!qword_1EB95C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C668);
  }

  return result;
}

unint64_t sub_1B6A975DC()
{
  result = qword_1EDBCBB48;
  if (!qword_1EDBCBB48)
  {
    sub_1B6AB9950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBB48);
  }

  return result;
}

uint64_t _s12AppAnalytics0B5ActorC14assumeIsolated_4file4linexxyKACYcYTXE_s12StaticStringVSutKlFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDBCFDA0;
  *v14 = qword_1EDBCFDA0;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a1;
  v18[4] = a2;

  sub_1B6A979BC();

  if (v7)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t static AnalyticsActor.shared.getter(uint64_t a1)
{
  type metadata accessor for AnalyticsActor();

  return swift_initStaticObject();
}

uint64_t sub_1B6A9786C()
{
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  return sub_1B6AB9AD0();
}

uint64_t _s12AppAnalytics0B5ActorC3run10resultType_xxm_xyYaKACYcYTXEtYaKlFZ(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B69AD75C;

  return v7(a1);
}

uint64_t sub_1B6A97A20()
{
  type metadata accessor for AnalyticsActor();

  return swift_initStaticObject();
}

uint64_t sub_1B6A97A50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

id static BridgedAnalyticsActor.underlyingQueue.getter()
{
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCFDA0;

  return v1;
}

id BridgedAnalyticsActor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAnalyticsActor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedAnalyticsActor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A97CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = unk_1F2E74258;
  if ((unk_1F2E74258 & ~qword_1F2E74250) == 0)
  {
    v2 = 0;
  }

  v3 = qword_1F2E74260;
  if ((qword_1F2E74260 & ~(v2 | qword_1F2E74250)) == 0)
  {
    v3 = 0;
  }

  v4 = v3 | v2 | qword_1F2E74250;
  type metadata accessor for FlushProcessor();
  v5 = swift_allocObject();
  swift_weakInit();
  v5[4] = v4;
  v5[5] = 0x404E000000000000;
  v5[6] = 0;
  v5[3] = dispatch_group_create();
  *(a1 + 40) = &type metadata for TimestampJitter;
  *(a1 + 48) = &protocol witness table for TimestampJitter;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for DisabledPrivacyValidationProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = &protocol witness table for DisabledPrivacyValidationProvider;
  v7 = type metadata accessor for SessionManagerConfiguration(0);
  *(a1 + *(v7 + 36)) = 0;
  v8 = *(v7 + 32);
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

id BridgedAppSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAppSessionManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDBCADE0;
  v6 = qword_1EDBCB4A0;
  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_1EDBCADE8;
  v8 = qword_1EDBCAC70;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EDBCA728);
  sub_1B6980548(v9, v4, type metadata accessor for SummaryEventConfiguration);
  v10 = sub_1B6A9968C(v6, v7, v4);

  *&v0[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v10;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id BridgedAppSessionManager.__allocating_init(trackingConsent:)(void *a1)
{
  v3 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  v7 = qword_1EDBCAC70;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_1EDBCA728);
  sub_1B6980548(v9, v5, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EDBCADE8;

  v11 = sub_1B6A9968C(v8, v10, v5);

  *&v6[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v11;
  v15.receiver = v6;
  v15.super_class = v1;
  v12 = objc_msgSendSuper2(&v15, sel_init);

  return v12;
}

id BridgedAppSessionManager.init(trackingConsent:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EDBCAC70;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EDBCA728);
  sub_1B6980548(v9, v6, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EDBCADE8;

  v11 = sub_1B6A9968C(v8, v10, v6);

  *&v1[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v11;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_init);

  return v12;
}

id BridgedAppSessionManager.__allocating_init(trackingConsent:userDataConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B6A99B38(a1, a2);

  return v6;
}

id BridgedAppSessionManager.init(trackingConsent:userDataConfiguration:)(void *a1, void *a2)
{
  v4 = sub_1B6A99B38(a1, a2);

  return v4;
}

id BridgedAppSessionManager.createBridgedSessionManager()()
{
  v0 = type metadata accessor for SessionManagerConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A97CCC(v2);
  v3 = AppSessionManager.createSessionManager(with:)(v2);
  sub_1B6A9A254(v2, type metadata accessor for SessionManagerConfiguration);
  v4 = objc_allocWithZone(type metadata accessor for BridgedSessionManager());
  v5 = sub_1B6AA700C(v3);

  return v5;
}

Swift::Void __swiftcall BridgedAppSessionManager.startAppSession()()
{
  v1 = *(v0 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v2 = *(v1 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  *(v3 + 24) = v1;

  sub_1B69877A4(v2, sub_1B69949DC, v3);
}

Swift::Void __swiftcall BridgedAppSessionManager.startAppSession(shouldCorrelateSceneSessions:)(Swift::Bool shouldCorrelateSceneSessions)
{
  v3 = *(v1 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v4 = *(v3 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = shouldCorrelateSceneSessions;
  *(v5 + 24) = v3;

  sub_1B69877A4(v4, sub_1B6A90A48, v5);
}

uint64_t BridgedAppSessionManager.endAppSession(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  AppSessionManager.endAppSession(_:)(sub_1B69BDB14, v4);
}

Swift::Void __swiftcall BridgedAppSessionManager.appSessionDidTerminate()()
{
  v1 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B6AB8DB0();
  v59 = *(v65 - 8);
  v3 = *(v59 + 64);
  v4 = MEMORY[0x1EEE9AC00](v65);
  v57 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v68 = sub_1B6AB90C0();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v46 - v10;
  v11 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  sub_1B6A2ACC8();
  sub_1B6A9A194(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v47 = v13;
  sub_1B6AB99A0();
  v14 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v15 = sub_1B6AB9E60();
    v16 = v61;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v61;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  v17 = 0;
  v69 = v14 & 0xC000000000000001;
  v18 = (v7 + 8);
  v53 = v71;
  v52 = v59 + 16;
  v51 = v3 + 7;
  v50 = v59 + 32;
  v49 = (v59 + 8);
  v64 = (v7 + 8);
  v55 = v14;
  v54 = v15;
  v48 = v6;
  do
  {
    if (v69)
    {
      MEMORY[0x1B8C98510](v17, v14);
    }

    else
    {
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = *(Strong + 56);
      sub_1B6AB90B0();
      v66 = v21;
      sub_1B6AB9910();
      v67 = *v18;
      v67(v16, v68);
      if (sub_1B6AB9010())
      {
        sub_1B6AB8DA0();
        v63 = dispatch_group_create();
        dispatch_group_enter(v63);
        v22 = *(v20 + 48);
        v23 = v60;
        sub_1B6AB9070();
        v62 = v22;
        sub_1B6A2AED0(v23);
        sub_1B6AB9070();
        sub_1B6AB9020();
        v71[2] = nullsub_1;
        v71[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v71[0] = sub_1B698E534;
        v71[1] = &block_descriptor_13;
        _Block_copy(aBlock);
        sub_1B6AB90E0();
        swift_allocObject();
        sub_1B6AB90D0();
        sub_1B6AB99C0();

        v24 = v59;
        v25 = v6;
        v26 = v57;
        v27 = v65;
        (*(v59 + 16))(v57, v25, v65);
        v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
        v29 = (v51 + v28) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = v20;
        v31 = *(v24 + 32);
        v32 = v68;
        v31(v30 + v28, v26, v27);
        v33 = v63;
        *(v30 + v29) = v63;
        v34 = v33;

        sub_1B69877A4(v62, sub_1B6A0A35C, v30);
        v16 = v61;

        v35 = v56;
        sub_1B6AB90B0();
        sub_1B6AB9100();
        v36 = v35;
        v37 = v67;
        v67(v36, v32);
        LOBYTE(v28) = sub_1B6AB9910();
        v37(v16, v32);
        if (v28)
        {
          v6 = v48;
          v38 = v65;
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v39 = qword_1EDBCCB28;
          v40 = sub_1B6AB98E0();
          sub_1B6AB8F70("Session manager timed out while waiting for session to end in endSync!", 70, 2, &dword_1B697C000, v39, v40, MEMORY[0x1E69E7CC0]);

          (*v49)(v6, v38);
        }

        else
        {
          v6 = v48;
          (*v49)(v48, v65);
        }

        v14 = v55;
        v15 = v54;
        v18 = v64;
      }

      else
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v41 = qword_1EDBCCB28;
        v42 = sub_1B6AB98E0();
        sub_1B6AB8F70("Session manager attempted to endSync when the access group is waiting", 69, 2, &dword_1B697C000, v41, v42, MEMORY[0x1E69E7CC0]);

        v18 = v64;
      }
    }

    else
    {
    }

    ++v17;
  }

  while (v15 != v17);
LABEL_22:

  v43 = v47;
  v44 = v60;
  sub_1B6AB9050();
  sub_1B6A2AED0(v44);
  v45 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  swift_beginAccess();
  if (*(v43 + v45))
  {

    sub_1B6AB9710();
  }
}

uint64_t BridgedAppSessionManager.userEventsID()@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___AAAppSessionManager_appSessionManager) + 40))
  {
    sub_1B6A81954(a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

id BridgedAppSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B6A9968C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - v10;
  v12 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for CrashDetector();
  v33[4] = &protocol witness table for CrashDetector;
  v33[0] = a2;
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDBCB570;
  sub_1B6982544(v33, v32);
  sub_1B6980548(a3, v14, type metadata accessor for SummaryEventConfiguration);
  memset(v31, 0, sizeof(v31));
  sub_1B6AB8E30();
  v16 = &v11[*(v6 + 20)];
  *v16 = sub_1B69A3378;
  *(v16 + 1) = 0;
  type metadata accessor for AppSessionManager(0);
  v17 = swift_allocObject();
  v18 = v17;
  v17[2] = 0;
  v17[7] = 0;
  v17[8] = 0;
  v17[9] = MEMORY[0x1E69E7CC0];
  *(v17 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v17[3] = v15;
  if (a1)
  {
    v19 = *&a1[OBJC_IVAR___AATrackingConsent_accessGroup];
    v17[4] = v19;
    v20 = v15;
    v21 = a1;
  }

  else
  {
    v22 = v15;
    v18[4] = dispatch_group_create();
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDBCB4A0;
    v21 = qword_1EDBCB4A0;
  }

  v23 = v19;
  v18[6] = v21;
  sub_1B6982544(v32, (v18 + 10));
  sub_1B6980548(v14, v18 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v31, v30, sub_1B6A8FF44);
  sub_1B6980548(v11, v9, type metadata accessor for DiagnosticsConsentProvider);
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    if (qword_1EB95A990 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB967220;
  }

  type metadata accessor for UserDataManager(0);
  swift_allocObject();
  v25 = a1;
  v18[5] = sub_1B6A7D3E8(v30, v9, v24);
  sub_1B6980548(v11, v18 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v26 = qword_1EDBCAA18;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDBCFD78;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B6A90A44;
  *(v28 + 24) = v18;

  sub_1B69877A4(v27, sub_1B6A402B8, v28);

  sub_1B6A9A254(a3, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A9A254(v11, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v31, sub_1B6A8FF44);
  sub_1B6A9A254(v14, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v18;
}

id sub_1B6A99B38(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - v10;
  v11 = type metadata accessor for SummaryEventConfiguration(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = qword_1EDBCAC70;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_1EDBCA728);
  sub_1B6980548(v19, v16, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A9A1F8(a2 + OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration, v46);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_1EDBCADE8;
  v45[3] = type metadata accessor for CrashDetector();
  v45[4] = &protocol witness table for CrashDetector;
  v45[0] = v20;

  v21 = v40;
  sub_1B6AB8E30();
  v22 = (v21 + *(v4 + 20));
  *v22 = sub_1B69A3378;
  v22[1] = 0;
  if (v46[0])
  {
    if (qword_1EB95A9E8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EB967240;
    os_unfair_lock_lock((qword_1EB967240 + 24));
    sub_1B6A8DCFC((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
  }

  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDBCB570;
  sub_1B6982544(v45, v44);
  sub_1B6980548(v16, v14, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v46, v43, sub_1B6A8FF44);
  sub_1B6980548(v40, v9, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for AppSessionManager(0);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[7] = 0;
  v25[8] = 0;
  v25[9] = MEMORY[0x1E69E7CC0];
  *(v25 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v25[3] = v24;
  v36 = v16;
  v26 = *&v18[OBJC_IVAR___AATrackingConsent_accessGroup];
  v25[4] = v26;
  v25[6] = v18;
  sub_1B6982544(v44, (v25 + 10));
  sub_1B6980548(v14, v25 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v43, v42, sub_1B6A8FF44);
  v27 = v37;
  sub_1B6980548(v9, v37, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for UserDataManager(0);
  swift_allocObject();
  v28 = v18;
  v29 = v24;
  v30 = v26;
  v25[5] = sub_1B6A7D3E8(v42, v27, v28);
  sub_1B6980548(v9, v25 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v31 = qword_1EDBCAA18;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDBCFD78;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B6A8FF94;
  *(v33 + 24) = v25;

  sub_1B69877A4(v32, sub_1B69B6F90, v33);

  sub_1B6A9A254(v9, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v43, sub_1B6A8FF44);
  sub_1B6A9A254(v14, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1B6A9A254(v40, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v36, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_1B6A9A254(v46, sub_1B6A8FF44);
  v34 = v39;
  *&v39[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v25;
  v41.receiver = v34;
  v41.super_class = ObjectType;
  return objc_msgSendSuper2(&v41, sel_init);
}

void sub_1B6A9A194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B6A9A254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FlushProcessor.__allocating_init(flushEvents:flushInterval:)(uint64_t *a1, double a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  swift_weakInit();
  *(v4 + 48) = 0;
  *(v4 + 32) = v5;
  *(v4 + 40) = a2;
  *(v4 + 24) = dispatch_group_create();
  return v4;
}

uint64_t sub_1B6A9A370(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1B6A9A3C0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1B6A9A450;
}

void sub_1B6A9A450(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t FlushProcessor.deinit()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    *(v0 + 48) = 0;
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlushProcessor.__deallocating_deinit()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    *(v0 + 48) = 0;
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9A5E0()
{
  sub_1B69A214C(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    *(v0 + 48) = 0;
    result = swift_unknownObjectRelease();
  }

  if ((*(v0 + 32) & 4) != 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      v6 = *(v0 + 24);
      dispatch_group_enter(v6);
      v7 = sub_1B6AB9040();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(v4);
      sub_1B69BD428(v4);
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      v10 = *(v5 + 48);
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = sub_1B69C8DA0;
      v12[5] = v9;
      v13 = v6;

      v14 = v8;

      sub_1B69877A4(v10, sub_1B69A4190, v12);
    }
  }

  return result;
}

void sub_1B6A9A828()
{
  if ((*(v0 + 32) & 8) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v2 = Strong;
        swift_once();
        Strong = v2;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }
}

void sub_1B6A9A8D4(void *a1, double a2)
{
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6AB8F90();
  __swift_project_value_buffer(v4, qword_1EDBCFDA8);
  v5 = sub_1B6AB8F80();
  v6 = sub_1B6AB98D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&dword_1B697C000, v5, v6, "Flushing analytics data based on %g-second flush interval", v7, 0xCu);
    MEMORY[0x1B8C99550](v7, -1, -1);
  }

  if (a1)
  {
    if (qword_1EDBCAF40 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDBCAA10;

    [a1 flushWithCallbackQueue:v8 completion:0];
  }
}

unint64_t sub_1B6A9AA40()
{
  result = qword_1EB95C678;
  if (!qword_1EB95C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C678);
  }

  return result;
}

unint64_t sub_1B6A9AA98()
{
  result = qword_1EB95C680;
  if (!qword_1EB95C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C680);
  }

  return result;
}

unint64_t sub_1B6A9AC68()
{
  result = qword_1EB95C688;
  if (!qword_1EB95C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C688);
  }

  return result;
}

uint64_t sub_1B6A9ACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6A9AF04(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  swift_unknownObjectRetain();
  if (v9)
  {
    v10 = [v8 endpointURLWithContentType_];
    if (v10)
    {
      v11 = v10;
      sub_1B6AB8B60();
      swift_unknownObjectRelease();

      v12 = sub_1B6AB8BB0();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      swift_unknownObjectRelease();
      v17 = sub_1B6AB8BB0();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    return sub_1B6A9AF5C(v7, a2);
  }

  else
  {
    v13 = [v8 url];
    sub_1B6AB8B60();
    swift_unknownObjectRelease();

    v14 = sub_1B6AB8BB0();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 0, 1, v14);
  }
}

uint64_t sub_1B6A9AEB0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1B6A9AF04(uint64_t a1)
{
  if (!qword_1EDBCCC40)
  {
    sub_1B6AB8BB0();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBCCC40);
    }
  }
}

uint64_t sub_1B6A9AF5C(uint64_t a1, uint64_t a2)
{
  sub_1B6A9AF04(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BridgedSessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionObserver.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BridgedSessionObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B6A9B138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v7 + 8))(a1, a2, a3, ObjectType, v7);
}

uint64_t sub_1B6A9B1A8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9B210(uint64_t a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3);
}

uint64_t sub_1B6A9B268(uint64_t a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a1, ObjectType, v3);
}

uint64_t sub_1B6A9B2C0(uint64_t a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

uint64_t sub_1B6A9B318(uint64_t a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  (*(v3 + 40))(a1, ObjectType, v3);
  return (*(v3 + 56))(a1, 0, ObjectType, v3);
}

uint64_t sub_1B6A9B3A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(a1, a2, ObjectType, v5);
}

void *sub_1B6A9B434(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  aBlock[6] = &unk_1F2E868A0;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v7 = result;
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B698E534;
      aBlock[3] = &block_descriptor_15;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_1B69A18C0(a2);
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = 0;
    }

    [v7 flushWithCallbackQueue:a1 completion:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1B6A9B648@<X0>(uint64_t a1@<X8>)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___debugBaseURL;
  swift_beginAccess();
  sub_1B699AA2C(v1 + v9, v8);
  v10 = sub_1B6AB8BB0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1B699AAC0(v8);
  v12 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 24);
  v13 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider), v12);
  (*(v13 + 16))(v12, v13);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1B699AD30(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1B6A9B884()
{
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___baseURL);
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___debugBaseURL);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_fileManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9B958()
{
  v1 = OBJC_IVAR____TtC12AppAnalytics46BaseDocumentDirectoryUploadDropboxPathProvider_baseURL;
  v2 = sub_1B6AB8BB0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12AppAnalytics46BaseDocumentDirectoryUploadDropboxPathProvider_debugBaseURL, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BA44@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1B6A9BADC()
{
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___baseURL);
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___debugBaseURL);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_fileManager));

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BBB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BC3C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x65636E65646163;
  }
}

uint64_t sub_1B6A9BC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A9BD4C(uint64_t a1)
{
  v2 = sub_1B6A9BF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A9BD88(uint64_t a1)
{
  v2 = sub_1B6A9BF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RotationPeriod.encode(to:)(void *a1)
{
  sub_1B6A9C140(0, &qword_1EB95C698, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9BF3C();
  sub_1B6ABA2D0();
  v12 = 0;
  sub_1B6ABA030();
  if (!v2)
  {
    v11 = 1;
    sub_1B6ABA030();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B6A9BF3C()
{
  result = qword_1EB95C6A0;
  if (!qword_1EB95C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6A0);
  }

  return result;
}

uint64_t RotationPeriod.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A9C140(0, &qword_1EB95C6A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9BF3C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_1B6AB9F80();
    v14 = 1;
    v12 = sub_1B6AB9F80();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A9C140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A9BF3C();
    v7 = a3(a1, &type metadata for RotationPeriod.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RotationPeriod(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RotationPeriod(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1B6A9C26C()
{
  result = qword_1EB95C6B0;
  if (!qword_1EB95C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6B0);
  }

  return result;
}

unint64_t sub_1B6A9C2C4()
{
  result = qword_1EB95C6B8;
  if (!qword_1EB95C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6B8);
  }

  return result;
}

unint64_t sub_1B6A9C31C()
{
  result = qword_1EB95C6C0;
  if (!qword_1EB95C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6C0);
  }

  return result;
}

uint64_t DataEventTrait.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A9C3FC()
{
  result = qword_1EB95C6C8;
  if (!qword_1EB95C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6C8);
  }

  return result;
}

void sub_1B6A9C450(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1B6A9C508(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B6A9C644(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1B6A9C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB9250();

  return sub_1B6A9C898(a1, v6, a2, a3);
}

unint64_t sub_1B6A9C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1B6AB92A0();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

id DefaultUserIDStorage.init(accessGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for DefaultKeyValueStore;
  *(a3 + 32) = &off_1F2E74C50;
  *a3 = a1;
  *(a3 + 8) = a2;
  result = [objc_opt_self() standardUserDefaults];
  *(a3 + 40) = 0xD000000000000017;
  *(a3 + 48) = 0x80000001B6AC94D0;
  *(a3 + 72) = 2;
  *(a3 + 56) = 2;
  *(a3 + 64) = result;
  return result;
}

id DefaultUserIDStorage.init(accessGroup:syncRequirements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *(a4 + 24) = &type metadata for DefaultKeyValueStore;
  *(a4 + 32) = &off_1F2E74C50;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = [objc_opt_self() standardUserDefaults];
  *(a4 + 40) = 0xD000000000000017;
  *(a4 + 48) = 0x80000001B6AC94D0;
  *(a4 + 72) = 2;
  *(a4 + 56) = v5;
  *(a4 + 64) = result;
  return result;
}

void DefaultUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  v111 = a1;
  v5 = v4;
  v9 = type metadata accessor for StoredUserIDComponents(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v103[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v103[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v103[-v15];
  v16 = *a2;
  v17 = a2[1];
  v18 = *(v5 + 56);
  if ((v18 & 1) == 0 || (a4) && ((v18 & 2) == 0 || (a3))
  {
    v19 = *(v5 + 72);
    if (v19 == 2)
    {
      v69 = a2[1];
      v70 = v16;
      v71 = [objc_opt_self() defaultManager];
      v72 = [v71 ubiquityIdentityToken];

      if (v72)
      {
        swift_unknownObjectRelease();
        LOBYTE(v19) = 1;
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      v16 = v70;
      v17 = v69;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v21 = *(v5 + 40);
  v20 = *(v5 + 48);
  v114 = 0;
  v115 = 0xE000000000000000;
  v22 = 0xE900000000000079;
  v23 = 0x7274656D656C6574;
  v24 = 0xE800000000000000;
  v25 = 0x656D69746C616572;
  if (v17 != 2)
  {
    v25 = v16;
    v24 = v17;
  }

  if (v17 != 1)
  {
    v23 = v25;
    v22 = v24;
  }

  if (v17)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0x6E65764572657375;
  }

  if (v17)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0xEA00000000007374;
  }

  sub_1B6992E2C(v16, v17);
  MEMORY[0x1B8C97BE0](v26, v27);

  v28 = v114;
  v29 = v115;
  v114 = v21;
  v115 = v20;

  MEMORY[0x1B8C97BE0](v28, v29);

  v31 = v114;
  v30 = v115;
  v114 = 59;
  v115 = 0xE100000000000000;
  if (v19)
  {
    v32 = 0x646572616873;
  }

  else
  {
    v32 = 0x6C61636F6CLL;
  }

  if (v19)
  {
    v33 = 0xE600000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x1B8C97BE0](v32, v33);

  v34 = v114;
  v35 = v115;
  v114 = v31;
  v115 = v30;

  MEMORY[0x1B8C97BE0](v34, v35);

  v37 = v114;
  v36 = v115;
  if (v19)
  {
    v38 = *(v5 + 24);
    v39 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v38);
    v106 = *(v39 + 16);
    v40 = v37;
    v41 = sub_1B6A9E86C(&qword_1EB95C6D8, &protocol conformance descriptor for StoredUserIDComponents);
    v42 = sub_1B6A9E86C(&qword_1EB95C6E0, &protocol conformance descriptor for StoredUserIDComponents);
    v43 = sub_1B6A9E86C(&qword_1EB95C6D0, &protocol conformance descriptor for StoredUserIDComponents);
    v44 = v110;
    (v106)(v111, v40, v36, 1, v9, v41, v42, v43, v38, v39);
    if (v44)
    {

      return;
    }

    v106 = v9;
    v109 = v40;
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v73 = sub_1B6AB8F90();
    __swift_project_value_buffer(v73, qword_1EDBCFD80);
    v74 = v107;
    sub_1B6A9E908(v111, v107, type metadata accessor for StoredUserIDComponents);

    v75 = sub_1B6AB8F80();
    v76 = sub_1B6AB98D0();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113 = v111;
      *v77 = 136315394;
      v78 = v108;
      sub_1B6A9E908(v74, v108, type metadata accessor for StoredUserIDComponents);
      v114 = 0;
      v115 = 0xE000000000000000;
      LODWORD(v110) = v76;
      sub_1B6AB9CA0();
      MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
      type metadata accessor for RotationMode(0);
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
      v112 = *&v78[*(v106 + 20)];
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
      v79 = v114;
      v80 = v115;
      sub_1B6A9E970(v78, type metadata accessor for StoredUserIDComponents);
      sub_1B6A9E970(v74, type metadata accessor for StoredUserIDComponents);
      v81 = sub_1B698F63C(v79, v80, &v113);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = sub_1B698F63C(v109, v36, &v113);

      *(v77 + 14) = v82;
      _os_log_impl(&dword_1B697C000, v75, v110, "Stored ID components for sync in keychain: %s, with key: %s", v77, 0x16u);
      v83 = v111;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v83, -1, -1);
      MEMORY[0x1B8C99550](v77, -1, -1);

      return;
    }

    v102 = v74;
LABEL_47:
    sub_1B6A9E970(v102, type metadata accessor for StoredUserIDComponents);
    return;
  }

  v45 = v12;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6A9E86C(&qword_1EB95C6D0, &protocol conformance descriptor for StoredUserIDComponents);
  v46 = v110;
  v47 = sub_1B6AB8870();
  v109 = v37;
  if (!v46)
  {
    v84 = v47;
    v106 = v9;
    v85 = v48;

    v86 = *(v5 + 64);
    v107 = v85;
    v87 = sub_1B6AB8C60();
    v88 = sub_1B6AB92B0();
    [v86 setObject:v87 forKey:v88];

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v89 = sub_1B6AB8F90();
    __swift_project_value_buffer(v89, qword_1EDBCFD80);
    v90 = v45;
    sub_1B6A9E908(v111, v45, type metadata accessor for StoredUserIDComponents);

    v91 = sub_1B6AB8F80();
    v92 = sub_1B6AB98D0();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113 = v111;
      *v93 = 136315394;
      v94 = v45;
      v95 = v108;
      sub_1B6A9E908(v94, v108, type metadata accessor for StoredUserIDComponents);
      v114 = 0;
      v115 = 0xE000000000000000;
      v105 = v91;
      sub_1B6AB9CA0();
      MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
      type metadata accessor for RotationMode(0);
      v104 = v92;
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
      v112 = *&v95[*(v106 + 20)];
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
      v96 = v114;
      v97 = v115;
      sub_1B6A9E970(v95, type metadata accessor for StoredUserIDComponents);
      sub_1B6A9E970(v90, type metadata accessor for StoredUserIDComponents);
      v98 = sub_1B698F63C(v96, v97, &v113);

      *(v93 + 4) = v98;
      *(v93 + 12) = 2080;
      v99 = sub_1B698F63C(v109, v36, &v113);

      *(v93 + 14) = v99;
      v100 = v105;
      _os_log_impl(&dword_1B697C000, v105, v104, "Stored ID components in UserDefaults: %s, with key: %s", v93, 0x16u);
      v101 = v111;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v101, -1, -1);
      MEMORY[0x1B8C99550](v93, -1, -1);
      sub_1B6993C94(v84, v107);

      return;
    }

    sub_1B6993C94(v84, v107);

    v102 = v45;
    goto LABEL_47;
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v49 = sub_1B6AB8F90();
  v50 = __swift_project_value_buffer(v49, qword_1EDBCFD80);
  v51 = v46;
  v52 = sub_1B6AB8F80();
  v53 = sub_1B6AB98E0();

  v54 = os_log_type_enabled(v52, v53);
  v110 = v46;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v111 = v50;
    v56 = v55;
    v57 = swift_slowAlloc();
    v114 = v57;
    *v56 = 136315138;
    swift_getErrorValue();
    v58 = sub_1B6ABA1A0();
    v60 = sub_1B698F63C(v58, v59, &v114);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_1B697C000, v52, v53, "Failed to encode userIDComponents for UserDefaults. Error: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1B8C99550](v57, -1, -1);
    MEMORY[0x1B8C99550](v56, -1, -1);
  }

  v61 = *(v5 + 64);
  v62 = v109;
  v63 = sub_1B6AB92B0();
  [v61 removeObjectForKey_];

  v64 = sub_1B6AB8F80();
  v65 = sub_1B6AB98E0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v114 = v67;
    *v66 = 136315138;
    v68 = sub_1B698F63C(v62, v36, &v114);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_1B697C000, v64, v65, "Removed potentially stale value for key: %s due to encoding failure.", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x1B8C99550](v67, -1, -1);
    MEMORY[0x1B8C99550](v66, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
}

uint64_t DefaultUserIDStorage.userIDComponents(for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v12 = type metadata accessor for StoredUserIDComponents(0);
  v130 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v126 = &v119[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v119[-v17];
  sub_1B6A9E8B0(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v127 = &v119[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v129 = &v119[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v119[-v24];
  v132 = v12;
  v25 = *a1;
  v26 = a1[1];
  v27 = *(v7 + 56);
  v128 = v18;
  if ((v27 & 1) == 0 || (a3) && ((v27 & 2) == 0 || (a2))
  {
    v28 = *(v7 + 72);
    if (v28 == 2)
    {
      v56 = v26;
      v57 = v25;
      v58 = [objc_opt_self() defaultManager];
      v59 = [v58 ubiquityIdentityToken];

      if (v59)
      {
        swift_unknownObjectRelease();
        LOBYTE(v28) = 1;
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      v25 = v57;
      v26 = v56;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  v29 = *(v7 + 40);
  v30 = *(v7 + 48);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v31 = 0xE900000000000079;
  v32 = 0x7274656D656C6574;
  v33 = 0xE800000000000000;
  v34 = 0x656D69746C616572;
  if (v26 != 2)
  {
    v34 = v25;
    v33 = v26;
  }

  if (v26 != 1)
  {
    v32 = v34;
    v31 = v33;
  }

  if (v26)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0x6E65764572657375;
  }

  if (v26)
  {
    v36 = v31;
  }

  else
  {
    v36 = 0xEA00000000007374;
  }

  sub_1B6992E2C(v25, v26);
  MEMORY[0x1B8C97BE0](v35, v36);

  v37 = v136[0];
  *&v136[0] = v29;
  *(&v136[0] + 1) = v30;

  MEMORY[0x1B8C97BE0](v37, *(&v37 + 1));

  v38 = v136[0];
  *&v136[0] = 59;
  *(&v136[0] + 1) = 0xE100000000000000;
  if (v28)
  {
    v39 = 0x646572616873;
  }

  else
  {
    v39 = 0x6C61636F6CLL;
  }

  if (v28)
  {
    v40 = 0xE600000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  MEMORY[0x1B8C97BE0](v39, v40);

  v42 = *(&v136[0] + 1);
  v41 = *&v136[0];
  v136[0] = v38;

  MEMORY[0x1B8C97BE0](v41, v42);

  v43 = *(&v136[0] + 1);
  v44 = *&v136[0];
  if (v28)
  {
    v124 = a4;
    v46 = *(v7 + 24);
    v45 = *(v7 + 32);
    __swift_project_boxed_opaque_existential_1(v7, v46);
    v128 = *(v45 + 8);
    v47 = sub_1B6A9E86C(&qword_1EB95C6D8, &protocol conformance descriptor for StoredUserIDComponents);
    v48 = v44;
    v49 = sub_1B6A9E86C(&qword_1EB95C6E0, &protocol conformance descriptor for StoredUserIDComponents);
    v50 = sub_1B6A9E86C(&qword_1EB95C6D0, &protocol conformance descriptor for StoredUserIDComponents);
    v118 = v45;
    v51 = v132;
    v128(v48, v43, 1, v132, v47, v49, v50, v46, v118);
    if (v6)
    {
    }

    v123 = v48;
    v60 = v124;
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v61 = sub_1B6AB8F90();
    __swift_project_value_buffer(v61, qword_1EDBCFD80);
    v62 = v131;
    v63 = v129;
    sub_1B6A9E908(v131, v129, sub_1B6A9E8B0);

    v64 = sub_1B6AB8F80();
    v65 = sub_1B6AB98D0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v133[0] = v128;
      *v66 = 136315394;
      v67 = v127;
      sub_1B6A9E908(v63, v127, sub_1B6A9E8B0);
      v68 = (*(v130 + 48))(v67, 1, v51);
      v69 = 0xE000000000000000;
      v70 = sub_1B6A9E8B0;
      if (v68 == 1)
      {
        v71 = 0;
      }

      else
      {
        *&v136[0] = 0;
        *(&v136[0] + 1) = 0xE000000000000000;
        sub_1B6AB9CA0();
        MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
        type metadata accessor for RotationMode(0);
        sub_1B6AB9DF0();
        MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
        v134 = *&v67[*(v51 + 20)];
        sub_1B6AB9DF0();
        MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
        v69 = *(&v136[0] + 1);
        v71 = *&v136[0];
        v70 = type metadata accessor for StoredUserIDComponents;
      }

      sub_1B6A9E970(v67, v70);
      sub_1B6A9E970(v129, sub_1B6A9E8B0);
      v115 = sub_1B698F63C(v71, v69, v133);

      *(v66 + 4) = v115;
      *(v66 + 12) = 2080;
      v116 = sub_1B698F63C(v123, v43, v133);

      *(v66 + 14) = v116;
      _os_log_impl(&dword_1B697C000, v64, v65, "Retrieved user ID components: %s, from keychain, with key: %s", v66, 0x16u);
      v117 = v128;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v117, -1, -1);
      MEMORY[0x1B8C99550](v66, -1, -1);

      v62 = v131;
      v60 = v124;
    }

    else
    {

      sub_1B6A9E970(v63, sub_1B6A9E8B0);
    }

    return sub_1B6984EC0(v62, v60, sub_1B6A9E8B0);
  }

  v53 = *(v7 + 64);
  v54 = sub_1B6AB92B0();
  v55 = [v53 valueForKey_];

  if (v55)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v134 = 0u;
    v135 = 0u;
  }

  v136[0] = v134;
  v136[1] = v135;
  if (*(&v135 + 1))
  {
    if (swift_dynamicCast())
    {
      v72 = v133[0];
      v73 = v133[1];
      sub_1B6AB8840();
      swift_allocObject();
      sub_1B6AB8830();
      sub_1B6A9E86C(&qword_1EB95C6E0, &protocol conformance descriptor for StoredUserIDComponents);
      v74 = v132;
      v129 = v72;
      v75 = v6;
      sub_1B6AB8820();
      v131 = v6;
      if (v6)
      {

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v76 = sub_1B6AB8F90();
        __swift_project_value_buffer(v76, qword_1EDBCFD80);
        v77 = v6;
        v78 = sub_1B6AB8F80();
        v79 = sub_1B6AB98E0();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v123 = v44;
          v81 = v80;
          v82 = swift_slowAlloc();
          v127 = v73;
          v83 = v82;
          *&v136[0] = v82;
          *v81 = 136315138;
          swift_getErrorValue();
          v84 = sub_1B6ABA1A0();
          v86 = sub_1B698F63C(v84, v85, v136);

          *(v81 + 4) = v86;
          _os_log_impl(&dword_1B697C000, v78, v79, "Failed to decode userIDComponents for UserDefaults. Error: %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v83);
          v87 = v83;
          v73 = v127;
          MEMORY[0x1B8C99550](v87, -1, -1);
          v88 = v81;
          v44 = v123;
          MEMORY[0x1B8C99550](v88, -1, -1);
        }

        v89 = sub_1B6AB92B0();
        [v53 removeObjectForKey_];

        v90 = sub_1B6AB8F80();
        v91 = sub_1B6AB98E0();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v136[0] = v93;
          *v92 = 136315138;
          v94 = sub_1B698F63C(v44, v43, v136);

          *(v92 + 4) = v94;
          _os_log_impl(&dword_1B697C000, v90, v91, "Removed potentially stale value for key: %s due to decoding failure.", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x1B8C99550](v93, -1, -1);
          MEMORY[0x1B8C99550](v92, -1, -1);
        }

        else
        {
        }

        swift_willThrow();
        return sub_1B6993C94(v129, v73);
      }

      else
      {
        v101 = v43;
        v102 = v74;

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v103 = sub_1B6AB8F90();
        __swift_project_value_buffer(v103, qword_1EDBCFD80);
        v104 = v126;
        sub_1B6A9E908(v128, v126, type metadata accessor for StoredUserIDComponents);
        v105 = v101;

        v106 = sub_1B6AB8F80();
        v107 = sub_1B6AB98D0();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v133[0] = v122;
          *v108 = 136315394;
          v121 = v106;
          v109 = v125;
          sub_1B6A9E908(v104, v125, type metadata accessor for StoredUserIDComponents);
          *&v136[0] = 0;
          *(&v136[0] + 1) = 0xE000000000000000;
          v120 = v107;
          sub_1B6AB9CA0();
          MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
          type metadata accessor for RotationMode(0);
          v123 = v44;
          v127 = v73;
          sub_1B6AB9DF0();
          MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
          v134 = *&v109[*(v102 + 20)];
          sub_1B6AB9DF0();
          MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
          v110 = v136[0];
          sub_1B6A9E970(v109, type metadata accessor for StoredUserIDComponents);
          sub_1B6A9E970(v104, type metadata accessor for StoredUserIDComponents);
          v111 = sub_1B698F63C(v110, *(&v110 + 1), v133);

          *(v108 + 4) = v111;
          *(v108 + 12) = 2080;
          v112 = sub_1B698F63C(v123, v105, v133);

          *(v108 + 14) = v112;
          v113 = v121;
          _os_log_impl(&dword_1B697C000, v121, v120, "Retrieved user ID components: %s, from UserDefaults, with key: %s", v108, 0x16u);
          v114 = v122;
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v114, -1, -1);
          MEMORY[0x1B8C99550](v108, -1, -1);
          sub_1B6993C94(v129, v127);
        }

        else
        {

          sub_1B6993C94(v129, v73);

          sub_1B6A9E970(v104, type metadata accessor for StoredUserIDComponents);
        }

        sub_1B6984EC0(v128, a4, type metadata accessor for StoredUserIDComponents);
        return (*(v130 + 56))(a4, 0, 1, v102);
      }
    }
  }

  else
  {
    sub_1B6A9E970(v136, sub_1B69FA1E4);
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v95 = sub_1B6AB8F90();
  __swift_project_value_buffer(v95, qword_1EDBCFD80);

  v96 = sub_1B6AB8F80();
  v97 = sub_1B6AB98D0();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v136[0] = v99;
    *v98 = 136315138;
    v100 = sub_1B698F63C(v44, v43, v136);

    *(v98 + 4) = v100;
    _os_log_impl(&dword_1B697C000, v96, v97, "No ID components found in UserDefaults for key: %s.", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x1B8C99550](v99, -1, -1);
    MEMORY[0x1B8C99550](v98, -1, -1);
  }

  else
  {
  }

  return (*(v130 + 56))(a4, 1, 1, v132);
}

uint64_t sub_1B6A9E86C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoredUserIDComponents(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A9E8B0(uint64_t a1)
{
  if (!qword_1EB95B258[0])
  {
    type metadata accessor for StoredUserIDComponents(255);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, qword_1EB95B258);
    }
  }
}

uint64_t sub_1B6A9E908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A9E970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgedSessionData.__allocating_init(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AASessionData_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___AASessionData_data] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedSessionData.init(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AASessionData_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___AASessionData_data] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedSessionData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6A9ED50(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *a2;
  sub_1B6AABFA0(a1, &v5, a3, v4);
}

uint64_t sub_1B6A9ED80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v6 = *v3;
  v12 = *a1;
  v7 = sub_1B6A41D24(a1, a2);
  v8 = [v6 userIDComponentsWithKind:v7 isDiagnosticSubmissionAllowed:{v4 & 1, v12}];

  if (v8)
  {
    sub_1B69F4778(v8 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, a3);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for StoredUserIDComponents(0);
  return (*(*(v10 - 8) + 56))(a3, v9, 1, v10);
}

id BridgedEventProperty.__allocating_init(dataType:requirement:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___AAEventProperty_dataType] = a1;
  *&v5[OBJC_IVAR___AAEventProperty_requirement] = a2;
  v6 = [swift_getObjCClassFromMetadata() dataName];
  v7 = sub_1B6AB92E0();
  v9 = v8;

  v10 = &v5[OBJC_IVAR___AAEventProperty_dataKey];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}