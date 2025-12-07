unint64_t sub_7D820()
{
  result = qword_22A158;
  if (!qword_22A158)
  {
    sub_1CC1C(&qword_22A160, &qword_1BFDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A158);
  }

  return result;
}

unint64_t sub_7D888()
{
  result = qword_22A168;
  if (!qword_22A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A168);
  }

  return result;
}

unint64_t sub_7D8E0()
{
  result = qword_22A170;
  if (!qword_22A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A170);
  }

  return result;
}

uint64_t sub_7D97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_7DB64(uint64_t a1)
{
  sub_7DC84(319);
  if (v1 <= 0x3F)
  {
    sub_7DCF0(319);
    if (v2 <= 0x3F)
    {
      sub_7DE14(319, &qword_22A210, &qword_22A218, &qword_1BFF60, "assetID timestamp weRecommended ");
      if (v3 <= 0x3F)
      {
        sub_7DE14(319, &qword_22A220, &qword_22A228, &qword_1BFF68, "assetID timestamp mechanism ");
        if (v4 <= 0x3F)
        {
          sub_7DEA4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7DC84(uint64_t a1)
{
  if (!qword_22A200)
  {
    sub_1B40C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_22A200);
    }
  }
}

void sub_7DCF0(uint64_t a1)
{
  if (!qword_22A208)
  {
    __chkstk_darwin(a1);
    sub_1B40C4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_22A208);
    }
  }
}

void sub_7DE14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1B40C4();
    sub_1CC1C(a3, a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_7DEA4(uint64_t a1)
{
  if (!qword_22A230)
  {
    sub_1B40C4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_22A230);
    }
  }
}

uint64_t dispatch thunk of EventStoreType.assetIDsForEvents(ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of EventStoreType.events()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E684;

  return v7(a1, a2);
}

uint64_t dispatch thunk of EventStoreType.events(ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of EventStoreType.events(forBooksWithAssetIDs:ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventStoreType.daysOfEvents(ofTypes:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventStoreType.earliestEventTimestamp()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return v9(a1, a2, a3);
}

uint64_t sub_7E61C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A260, &unk_1C0010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_7E688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  result = sub_1B4244();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for MediaTypesMediaTypeRecommendationService();
    v6 = swift_allocObject();
    sub_264B8(&v11, v6 + 16);
    sub_264B8(&v9, v6 + 56);
    result = sub_264B8(&v7, v6 + 96);
    a2[3] = v5;
    a2[4] = &off_214220;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_7E828()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22A300, &unk_1C0070);
  sub_1B4304();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7E97C()
{

  return swift_deallocClassInstance();
}

char *sub_7E9D8@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 2);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = result;
    result = sub_37658(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (v5 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0)
      {
        break;
      }

      v11 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_37658((v9 > 1), v10 + 1, 1);
        v4 = v11;
      }

      v4[2] = v10 + 1;
      v4[v10 + 4] = v7;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_7EAB0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (!*(v1 + 8))
    {
      *a1 = v2;
    }

    sub_7EBC8();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = 0;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    sub_7EBC8();
    swift_allocError();
    *v4 = v2;
    v5 = 1;
    goto LABEL_8;
  }

  if (v3 == 3)
  {
    sub_7EBC8();
    swift_allocError();
    *v4 = v2;
    v5 = 2;
LABEL_8:
    *(v4 + 8) = v5;
LABEL_11:

    return swift_willThrow();
  }

  sub_7EBC8();
  swift_allocError();
  *v7 = v2;
  *(v7 + 8) = 3;
  return swift_willThrow();
}

unint64_t sub_7EBC8()
{
  result = qword_22A408;
  if (!qword_22A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A408);
  }

  return result;
}

void *sub_7EC1C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_3747C(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_1B4F84();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1B5594();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v30 = v4;
      v14 = v1;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_3747C((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = v10;
      v17[5] = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_42FF0(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_42FF0(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_7EE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_3741C(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1B4F84();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + 568 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_3741C((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_42FF0(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

void *sub_7F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v39 = *(a2 + 16);
  v38 = *(a3 + 16);
  if (v38 >= v39)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = *(a3 + 16);
  }

  if (v4 >= v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = v4;
  }

  result = sub_376E8(0, v5 & ~(v5 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v36 = v4;
    v37 = v3;
    if (v5)
    {
      v7 = (a1 + 32);
      v8 = (a2 + 32);
      v9 = (a3 + 32);

      v10 = a3;

      v11 = v37;
      v12 = v38;
      v13 = v37;
      v14 = v39;
      v15 = v39;
      v16 = v38;
      v17 = v5;
      v18 = v5;
      while (v13)
      {
        if (!v15)
        {
          goto LABEL_30;
        }

        if (!v16)
        {
          goto LABEL_31;
        }

        v19 = *v7;
        v20 = *v8;
        v21 = *v9;
        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v34 = v18;
          v33 = *v7;
          result = sub_376E8((v22 > 1), v23 + 1, 1);
          v18 = v34;
          v24 = v23 + 1;
          v19 = v33;
          v12 = v38;
          v14 = v39;
          v11 = v37;
          v10 = a3;
        }

        _swiftEmptyArrayStorage[2] = v24;
        v25 = &_swiftEmptyArrayStorage[3 * v23];
        v25[4] = v19;
        ++v9;
        ++v8;
        --v16;
        v25[5] = v20;
        v25[6] = v21;
        ++v7;
        --v15;
        --v13;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {

      v10 = a3;

      v11 = v3;
      v12 = v38;
      v14 = v39;
      v18 = 0;
LABEL_18:
      if (v11 <= v36)
      {
LABEL_28:

        return _swiftEmptyArrayStorage;
      }

      while (v18 < v11)
      {
        v26 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_33;
        }

        if (v14 != v18)
        {
          if (v18 >= v14)
          {
            goto LABEL_34;
          }

          if (v12 != v18)
          {
            if (v18 >= v12)
            {
              goto LABEL_35;
            }

            v27 = *(a1 + 32 + 8 * v18);
            v28 = *(a2 + 32 + 8 * v18);
            v29 = *(v10 + 32 + 8 * v18);
            v31 = _swiftEmptyArrayStorage[2];
            v30 = _swiftEmptyArrayStorage[3];
            if (v31 >= v30 >> 1)
            {
              v35 = v18;
              result = sub_376E8((v30 > 1), v31 + 1, 1);
              v18 = v35;
              v12 = v38;
              v14 = v39;
              v11 = v37;
            }

            _swiftEmptyArrayStorage[2] = v31 + 1;
            v32 = &_swiftEmptyArrayStorage[3 * v31];
            v32[4] = v27;
            v32[5] = v28;
            v32[6] = v29;
            ++v18;
            if (v26 != v11)
            {
              continue;
            }
          }
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_7F358(uint64_t a1, void *a2)
{
  v3[331] = v2;
  v3[330] = a1;
  memcpy(v3 + 235, a2, 0x170uLL);
  v3[332] = a2[46];
  memcpy(v3 + 142, a2 + 47, 0x2E8uLL);

  return _swift_task_switch(sub_7F3E8, 0, 0);
}

uint64_t sub_7F3E8()
{
  v2 = v1[330];
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v4 = *(v2 + *(result + 52));
  if (v4)
  {
    v5 = *(v2 + *(result + 56));
    if (v5 == 0x8000000000000000 && v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v7 = v5 / v4;
      if (v1[332] >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v1[332];
      }

      v9 = sub_7FFC0(v2, v8);
      v1[333] = v9;
      v21 = v9[2];
      if (v21)
      {
        v22 = v9;
        sub_3741C(0, v21, 0);
        v23 = v22 + 4;
        v24 = _swiftEmptyArrayStorage[2];
        do
        {
          v26 = *v23;
          v23 += 8;
          v25 = v26;
          v27 = _swiftEmptyArrayStorage[3];
          if (v24 >= v27 >> 1)
          {
            sub_3741C((v27 > 1), v24 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v24 + 1;
          _swiftEmptyArrayStorage[v24++ + 4] = v25;
          --v21;
        }

        while (v21);
      }

      v1[334] = _swiftEmptyArrayStorage;
      v28 = v1[331];
      v29 = v28[6];
      v30 = v28[7];
      sub_2698(v28 + 3, v29);
      v32 = (*(v30 + 16) + **(v30 + 16));
      v31 = swift_task_alloc();
      v1[335] = v31;
      *v31 = v1;
      v31[1] = sub_7F7E4;

      return v32(_swiftEmptyArrayStorage, v29, v30);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v10 = v1[332];
    v11 = v1[331];
    v12 = qword_22E360;
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BCA80;
    v1[327] = 0;
    v1[328] = 0xE000000000000000;
    v1[329] = v0;
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B51F4();
    v14 = v1[327];
    v15 = v1[328];
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_76888();
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    v16 = sub_1B4DB4();
    sub_1B4614("Falling back to non-tabi due to error: %{public}@", 49, 2, &dword_0, v12, v16, v13);

    v18 = v11[11];
    v17 = v11[12];
    sub_2698(v11 + 8, v18);
    memcpy(v1 + 2, v1 + 235, 0x170uLL);
    v1[48] = v10;
    memcpy(v1 + 49, v1 + 142, 0x2E8uLL);
    v19 = swift_task_alloc();
    v1[339] = v19;
    *v19 = v1;
    v19[1] = sub_7FBBC;
    v20 = v1[330];

    return sub_165F78(v20, (v1 + 2), v18, v17);
  }

  return result;
}

uint64_t sub_7F7E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2688) = a1;
  *(v3 + 2696) = v1;

  if (v1)
  {
    v4 = sub_7FD4C;
  }

  else
  {

    v4 = sub_7F904;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_7F904()
{
  v1 = *(v0 + 2664);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 2424);
    v5 = *(v0 + 2688);
    v6 = v1 + 32;
    v7 = _swiftEmptyArrayStorage;
    v31 = v6;
    do
    {
      v8 = (v6 + (v3 << 6));
      v9 = v3;
      while (1)
      {
        if (v9 >= *(*(v0 + 2664) + 16))
        {
          __break(1u);
          return;
        }

        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        *(v0 + 2456) = v8[2];
        *(v0 + 2472) = v12;
        *v4 = v10;
        *(v0 + 2440) = v11;
        if (*(v5 + 16))
        {
          v13 = sub_43124(*(v0 + 2424));
          if (v14)
          {
            break;
          }
        }

        ++v9;
        v8 += 4;
        if (v2 == v9)
        {
          goto LABEL_15;
        }
      }

      v15 = *(v5 + 56) + 88 * v13;
      v16 = *v15;
      *(v0 + 2264) = *(v15 + 16);
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v15 + 64);
      *(v0 + 2328) = *(v15 + 80);
      *(v0 + 2296) = v18;
      *(v0 + 2312) = v19;
      *(v0 + 2280) = v17;
      *(v0 + 2248) = v16;
      v20 = *(v0 + 2264);
      sub_42BA4(v0 + 2424, v0 + 2488);
      sub_42BA4(v0 + 2424, v0 + 2552);
      sub_5EDD8(v0 + 2248, v0 + 2336);
      v30 = v20;

      v21 = Book.Metadata.genreIDs.getter();
      v29 = sub_40E7C(&off_212D68);
      sub_43FF4(v0 + 2424);
      sub_85554(v0 + 2248);
      v27 = *(v0 + 2304);
      v28 = *(v0 + 2288);
      v26 = *(v0 + 2320);
      v32 = *v4;
      v33 = *(v0 + 2440);
      v34 = *(v0 + 2456);
      v35 = *(v0 + 2472);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_33358(0, *(v7 + 2) + 1, 1, v7);
      }

      v23 = *(v7 + 2);
      v22 = *(v7 + 3);
      if (v23 >= v22 >> 1)
      {
        v7 = sub_33358((v22 > 1), v23 + 1, 1, v7);
      }

      v3 = v9 + 1;
      *(v7 + 2) = v23 + 1;
      v24 = &v7[136 * v23];
      *(v24 + 4) = v34;
      *(v24 + 5) = v35;
      *(v24 + 2) = v32;
      *(v24 + 3) = v33;
      *(v24 + 12) = v30;
      *(v24 + 13) = v21;
      *(v24 + 14) = v29;
      *(v24 + 15) = _swiftEmptySetSingleton;
      *(v24 + 8) = v28;
      *(v24 + 9) = v27;
      v24[160] = v26;
      v6 = v31;
    }

    while (v2 - 1 != v9);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v25 = *(v0 + 8);

  v25(v7);
}

uint64_t sub_7FBBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2720) = v1;

  if (v1)
  {
    v5 = sub_7FF5C;
  }

  else
  {
    *(v4 + 2728) = a1;
    v5 = sub_7FCE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7FCE4()
{

  v1 = *(v0 + 2728);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_7FD4C()
{

  v1 = v0[337];
  v0[338] = v1;
  if (qword_228318 != -1)
  {
    swift_once();
  }

  v2 = v0[332];
  v3 = v0[331];
  v4 = qword_22E360;
  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BCA80;
  v0[327] = 0;
  v0[328] = 0xE000000000000000;
  v0[329] = v1;
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B51F4();
  v6 = v0[327];
  v7 = v0[328];
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_76888();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_1B4DB4();
  sub_1B4614("Falling back to non-tabi due to error: %{public}@", 49, 2, &dword_0, v4, v8, v5);

  v10 = v3[11];
  v9 = v3[12];
  sub_2698(v3 + 8, v10);
  memcpy(v0 + 2, v0 + 235, 0x170uLL);
  v0[48] = v2;
  memcpy(v0 + 49, v0 + 142, 0x2E8uLL);
  v11 = swift_task_alloc();
  v0[339] = v11;
  *v11 = v0;
  v11[1] = sub_7FBBC;
  v12 = v0[330];

  return sub_165F78(v12, (v0 + 2), v10, v9);
}

uint64_t sub_7FF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_7FFC0(uint64_t a1, uint64_t a2)
{
  v146 = a2;
  v4 = sub_1B4414();
  v136 = *(v4 - 8);
  v137 = v4;
  v5 = __chkstk_darwin(v4);
  v141 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v139 = &v134 - v8;
  __chkstk_darwin(v7);
  v140 = &v134 - v9;
  v142 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v138 = *(v142 - 8);
  __chkstk_darwin(v142);
  v11 = &v134 - v10;
  v135 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v12 = v135[5];
  v143 = a1;
  v13 = *(a1 + v12);
  LOBYTE(v12) = v13[32];
  v14 = v12 & 0x3F;
  v15 = ((1 << v12) + 63) >> 6;
  v16 = 8 * v15;

  v18 = "ion";
  v153 = v13;
  v150 = v11;
  if (v14 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_119;
    }
  }

  v144 = &v134;
  v145 = v15;
  __chkstk_darwin(v17);
  v148 = &v134 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v148, v16);
  v149 = 0;
  v19 = 0;
  v20 = v13 + 56;
  v21 = 1 << v13[32];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v13 + 7);
  v24 = (v21 + 63) >> 6;
  v151 = xmmword_1BCA80;
  do
  {
    while (2)
    {
      if (v23)
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        goto LABEL_13;
      }

      v26 = v19;
      do
      {
        v19 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v19 >= v24)
        {
          goto LABEL_25;
        }

        v27 = *&v20[8 * v19];
        ++v26;
      }

      while (!v27);
      v25 = __clz(__rbit64(v27));
      v23 = (v27 - 1) & v27;
LABEL_13:
      v28 = v25 | (v19 << 6);
      v29 = *(v13 + 6);
      v152 = v28;
      memcpy(v161, (v29 + 568 * v28), 0x231uLL);
      v30 = v161[18];
      if (v161[18] >> 1 == 0xFFFFFFFF)
      {
        __break(1u);
        goto LABEL_128;
      }

      v2 = v161[12];
      v31 = v161[13];
      if ((v161[18] >> 62) <= 1)
      {
        v154 = v161[16];
        v155 = v161[14];
        v156 = v161[17];
        v157 = v161[15];
        goto LABEL_18;
      }

      if (v161[18] >> 62 == 2)
      {
        v156 = v161[17];
        v157 = v161[15];
        v154 = v161[16];
        v155 = v161[14];
LABEL_18:
        sub_2B0C(&qword_229488, &qword_1BC520);
        v32 = swift_allocObject();
        *(v32 + 16) = v151;
        *(v32 + 32) = v2;
        *(v32 + 40) = v31;
        v33 = v157;
        *(v32 + 48) = v155;
        *(v32 + 56) = v33;
        v34 = v156;
        *(v32 + 64) = v154;
        *(v32 + 72) = v34;
        *(v32 + 80) = v30 & 1;
      }

      else
      {
        v32 = v161[12];
      }

      sub_4299C(v161, v160);
      sub_43050(&v161[12], v160, &qword_22A4E0, &unk_1C01D0);
      v35 = COERCE_DOUBLE(Array<A>.affinity.getter(v32));
      v37 = v36;

      sub_2601C(v161);
      if ((v37 & 1) != 0 || v35 <= 0.0)
      {
        v13 = v153;
        continue;
      }

      break;
    }

    v13 = v153;
    *&v148[(v152 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v152;
    v38 = __OFADD__(v149++, 1);
  }

  while (!v38);
  __break(1u);
LABEL_25:
  v39 = sub_3D37C(v148, v145, v149, v13);
  v11 = v150;
  v18 = "ion";
  while (1)
  {
    v40 = *(v39 + 16);
    if (!v40)
    {
      break;
    }

    v13 = sub_351DC(*(v39 + 16), 0);
    v18 = sub_3EF0C(v161, v13 + 32, v40, v39);
    v41 = v161[0];
    v11 = v161[2];
    v15 = v161[4];

    sub_417B8(v41);
    if (v18 == v40)
    {
      v11 = v150;
      v18 = "CommonConfiguration" + 16;
      goto LABEL_30;
    }

    __break(1u);
LABEL_119:
    v131 = swift_slowAlloc();
    v132 = v147;
    v133 = sub_1798C8(v131, v15, v13, sub_82760);
    v147 = v132;
    if (v132)
    {
      goto LABEL_133;
    }

    v39 = v133;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_30:
  v161[0] = v13;
  v42 = v147;
  sub_14AF14(v161);
  if (v42)
  {

    __break(1u);
    goto LABEL_132;
  }

  v43 = v161[0];
  if (v146)
  {
    v44 = sub_154B48(0, *(v161[0] + 16), v146, v146, v161[0]);

    v45 = v44;
    if (!v44[2])
    {

      sub_85CD4();
      swift_allocError();
      *v46 = 1;
      swift_willThrow();
      return v43;
    }
  }

  else
  {

    sub_2B0C(&qword_2293A8, &qword_1BC448);
    v45 = swift_allocObject();
    *(v45 + 16) = *(v18 + 168);
    *(v45 + 32) = _swiftEmptyArrayStorage;
    *(v45 + 40) = &_swiftEmptyArrayStorage[4];
    *(v45 + 48) = xmmword_1C00C0;
  }

  v47 = *(v45 + 32);
  v48 = *(v45 + 40);
  v50 = *(v45 + 48);
  v49 = *(v45 + 56);
  swift_unknownObjectRetain();

  __chkstk_darwin(v51);
  *(&v134 - 6) = v47;
  *(&v134 - 5) = v48;
  *(&v134 - 4) = v50;
  *(&v134 - 3) = v49;
  *(&v134 - 2) = v143;
  sub_1B4444();
  v152 = v49;
  v154 = v50;
  v155 = v48;
  v53 = v142;
  sub_1B4454();
  memcpy(v161, v160, 0x1B0uLL);
  sub_43050(&v161[45], v159, &qword_22A4E8, &unk_1C01E0);
  sub_726C8(v161);
  v43 = v161[48];
  if (!v161[48])
  {
    sub_85CD4();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v138 + 8))(v11, v53);
    return v43;
  }

  v156 = &v134;
  v157 = v47;
  *&v151 = v161[53];
  v54 = v161[51];

  sub_1B43F4();

  sub_1B43F4();

  sub_1B43F4();
  v55 = sub_42094(&qword_22A4F8, &qword_22A4D8, &unk_1C5FC0, &protocol conformance descriptor for ComputeService<A>.Response);
  v57 = sub_1B44F4();
  v149 = v55;
  v58 = 0;
  v59 = *(v57 + 2);
  v60 = v57 + 40;
  v61 = _swiftEmptyArrayStorage;
LABEL_40:
  v62 = v60;
  v63 = &v60[16 * v58];
  while (v59 != v58)
  {
    if (v58 >= *(v57 + 2))
    {
      __break(1u);
      goto LABEL_83;
    }

    ++v58;
    v54 = (v63 + 2);
    v55 = *(v63 - 1);
    v64 = *v63;

    v65 = sub_CC298(v55, v64);
    v63 = v54;
    if ((v66 & 1) == 0)
    {
      v55 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_33008(0, *(v61 + 2) + 1, 1, v61);
      }

      v54 = *(v61 + 2);
      v67 = *(v61 + 3);
      v68 = v61;
      if (v54 >= v67 >> 1)
      {
        v68 = sub_33008((v67 > 1), v54 + 1, 1, v61);
      }

      *(v68 + 2) = v54 + 1;
      v61 = v68;
      *&v68[8 * v54 + 32] = v55;
      v60 = v62;
      goto LABEL_40;
    }
  }

  v19 = v150;
  v69 = sub_1B4504();
  v2 = 0;
  v148 = v61;
  v74 = *(v69 + 16);
  if (v74)
  {
    v160[0] = _swiftEmptyArrayStorage;
    v147 = v69;
    sub_37708(0, v74, 0);
    v75 = v147;
    v13 = v160[0];
    v76 = *(v160[0] + 2);
    v77 = 32;
    do
    {
      v78 = *(v75 + v77);
      v160[0] = v13;
      v79 = *(v13 + 3);
      if (v76 >= v79 >> 1)
      {
        sub_37708((v79 > 1), v76 + 1, 1);
        v75 = v147;
        v13 = v160[0];
      }

      *(v13 + 2) = v76 + 1;
      *&v13[8 * v76 + 32] = v78;
      v77 += 4;
      ++v76;
      --v74;
    }

    while (v74);
LABEL_59:
    v61 = _swiftEmptyArrayStorage;

    v19 = v150;
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;

    v13 = _swiftEmptyArrayStorage;
  }

  v80 = sub_1B4504();
  v81 = v143;
  if (v2)
  {

    sub_42F48(&v161[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_63;
  }

  v84 = *(v80 + 16);
  if (v84)
  {
    v160[0] = _swiftEmptyArrayStorage;
    v149 = v80;
    sub_37708(0, v84, 0);
    v85 = v149;
    v86 = v160[0];
    v87 = *(v160[0] + 2);
    v88 = 32;
    do
    {
      v89 = *(v85 + v88);
      v160[0] = v86;
      v90 = *(v86 + 3);
      if (v87 >= v90 >> 1)
      {
        sub_37708((v90 > 1), v87 + 1, 1);
        v85 = v149;
        v86 = v160[0];
      }

      *(v86 + 2) = v87 + 1;
      *&v86[8 * v87 + 32] = v89;
      v88 += 4;
      ++v87;
      --v84;
    }

    while (v84);

    v19 = v150;
    v81 = v143;
  }

  else
  {

    v86 = _swiftEmptyArrayStorage;
  }

  v91 = *(v86 + 2);
  if (v91 != *(v148 + 2))
  {

    sub_42F48(&v161[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 == -1)
    {
LABEL_78:
      v95 = qword_22E360;
      v96 = sub_1B4D94();
      v43 = _swiftEmptyArrayStorage;
      sub_1B4614("Mismatch on book count and scores", 33, 2, &dword_0, v95, v96, _swiftEmptyArrayStorage);
      goto LABEL_50;
    }

LABEL_128:
    swift_once();
    goto LABEL_78;
  }

  if (*(v13 + 2) != v91)
  {

    sub_42F48(&v161[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 != -1)
    {
      swift_once();
    }

    v97 = qword_22E360;
    v98 = sub_1B4D94();
    v43 = _swiftEmptyArrayStorage;
    sub_1B4614("Mismatch on book count and fetch scores", 39, 2, &dword_0, v97, v98, _swiftEmptyArrayStorage);
    goto LABEL_50;
  }

  v54 = sub_7F090(v148, v86, v13);
  v55 = 0;

  LOBYTE(v62) = *(v81 + v135[8]);
  v57 = *(v81 + v135[12]);

  v92 = sub_7EE60(v153);
  v160[0] = v57;
  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = 32;
    do
    {
      sub_111CE0(v159, *(v92 + v94));
      v94 += 8;
      --v93;
    }

    while (v93);

    v57 = v160[0];
  }

  else
  {
LABEL_83:
  }

  v99 = v151;
  if (v151)
  {
    v100 = *(v54 + 16);

    v101 = sub_85A24(0, v100, v99, v99, v54);

    sub_42F48(&v161[45], &qword_22A4E8, &unk_1C01E0);
  }

  else
  {

    sub_2B0C(&qword_229508, &unk_1C01F0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1BCA80;
    *(v101 + 32) = v61;
    *(v101 + 40) = v61 + 32;
    *(v101 + 48) = xmmword_1C00C0;
    v102 = sub_42F48(&v161[45], &qword_22A4E8, &unk_1C01E0);
  }

  v103 = v143;
  v158[0] = v101;
  v158[1] = v157;
  v158[2] = v155;
  v158[3] = v154;
  v158[4] = v152;
  __chkstk_darwin(v102);
  *(&v134 - 32) = v62;
  *(&v134 - 3) = v103;
  *(&v134 - 2) = v57;
  swift_unknownObjectRetain();
  v104 = v55;
  v105 = sub_855A8(v158, sub_85D28);
  v154 = v104;

  swift_unknownObjectRelease();

  v106 = v105;
  v19 = v105[2];
  if (!v19)
  {
    v108 = _swiftEmptyArrayStorage;
LABEL_105:

    v160[0] = v108;

    v118 = v154;
    sub_84C1C(v160);
    if (!v118)
    {

      sub_2B0C(&qword_229500, &unk_1BC580);
      sub_42094(&qword_22A500, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
      sub_1B4984();

      v119 = sub_43174();
      if (v122)
      {
        v124 = v122;
        v125 = v121;
        v126 = v120;
        v127 = v119;
        sub_1B5744();
        swift_unknownObjectRetain_n();
        v128 = v127;
        v129 = swift_dynamicCastClass();
        if (!v129)
        {
          swift_unknownObjectRelease();
          v129 = _swiftEmptyArrayStorage;
        }

        v130 = v129[2];

        if (__OFSUB__(v124 >> 1, v125))
        {
          __break(1u);
        }

        else if (v130 == (v124 >> 1) - v125)
        {
          v43 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v43)
          {
            v19 = v150;
            goto LABEL_51;
          }

          v43 = _swiftEmptyArrayStorage;
LABEL_117:
          v19 = v150;
          goto LABEL_50;
        }

        swift_unknownObjectRelease();
        v122 = v124;
        v121 = v125;
        v119 = v128;
        v120 = v126;
      }

      sub_511BC(v119, v120, v121, v122);
      v43 = v123;
      swift_unknownObjectRelease();
      goto LABEL_117;
    }

LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
    return result;
  }

  v107 = 0;
  v155 = (v106 + 4);
  v108 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v107 >= v106[2])
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      swift_once();
      v70 = qword_22E360;
      v71 = sub_1B4D94();
      v43 = _swiftEmptyArrayStorage;
      sub_1B4614("Unable to extract book fetch scores from output", 47, 2, &dword_0, v70, v71, _swiftEmptyArrayStorage);

      goto LABEL_50;
    }

    v109 = *(v155 + 8 * v107);
    v110 = *(v109 + 16);
    v111 = *(v108 + 2);
    v112 = v111 + v110;
    if (__OFADD__(v111, v110))
    {
      goto LABEL_122;
    }

    v113 = v106;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v112 > *(v108 + 3) >> 1)
    {
      if (v111 <= v112)
      {
        v115 = v111 + v110;
      }

      else
      {
        v115 = v111;
      }

      v108 = sub_3349C(isUniquelyReferenced_nonNull_native, v115, 1, v108);
    }

    if (!*(v109 + 16))
    {

      if (v110)
      {
        goto LABEL_123;
      }

      goto LABEL_90;
    }

    if ((*(v108 + 3) >> 1) - *(v108 + 2) < v110)
    {
      break;
    }

    swift_arrayInitWithCopy();

    if (v110)
    {
      v116 = *(v108 + 2);
      v38 = __OFADD__(v116, v110);
      v117 = v116 + v110;
      if (v38)
      {
        goto LABEL_125;
      }

      *(v108 + 2) = v117;
    }

LABEL_90:
    ++v107;
    v106 = v113;
    if (v19 == v107)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  swift_once();
LABEL_63:
  v82 = qword_22E360;
  v83 = sub_1B4D94();
  v43 = _swiftEmptyArrayStorage;
  sub_1B4614("Unable to extract book scores from output", 41, 2, &dword_0, v82, v83, _swiftEmptyArrayStorage);

LABEL_50:
  swift_unknownObjectRelease();
LABEL_51:
  v72 = v137;
  v73 = *(v136 + 8);
  v73(v141, v137);
  v73(v139, v72);
  v73(v140, v72);
  (*(v138 + 8))(v19, v142);
  return v43;
}

uint64_t WorkServiceSeedBasedRecommendationService.fetchBooks(for:configuration:)(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_8143C, 0, 0);
}

uint64_t sub_8143C()
{
  v1 = sub_2B0C(&qword_229360, &qword_1BC400);
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  *(v2 + 16) = *(v0 + 1144);
  *(v2 + 32) = v0 + 16;
  v3 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v4 = swift_task_alloc();
  *(v0 + 1168) = v4;
  *v4 = v0;
  v4[1] = sub_81564;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1136, v1, v3, 0, 0, &unk_1C0108, v2, v1);
}

uint64_t sub_81564()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_8169C;
  }

  else
  {

    v2 = sub_81680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8169C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_81700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[295] = a5;
  v5[294] = a4;
  v5[293] = a3;
  v5[292] = a2;
  v5[291] = a1;
  v6 = sub_2B0C(&qword_229360, &qword_1BC400);
  v5[296] = v6;
  v5[297] = *(v6 - 8);
  v5[298] = swift_task_alloc();
  v5[299] = swift_task_alloc();
  v5[300] = swift_task_alloc();
  sub_2B0C(&qword_22A4C8, &qword_1CF3D0);
  v5[301] = swift_task_alloc();
  v7 = sub_2B0C(&qword_22A4D0, &unk_1C01A0);
  v5[302] = v7;
  v5[303] = *(v7 - 8);
  v5[304] = swift_task_alloc();
  v8 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v5[305] = v8;
  v5[306] = *(v8 + 64);
  v5[307] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v5[308] = swift_task_alloc();
  v5[309] = swift_task_alloc();

  return _swift_task_switch(sub_81938, 0, 0);
}

uint64_t sub_81938()
{
  v1 = *(v0 + 2344);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2440);
    v31 = **(v0 + 2336);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v29 = *(v3 + 72);
    v30 = v4;
    v28 = (*(v0 + 2448) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1B4C54();
    v7 = *(v6 - 8);
    v27 = *(v7 + 56);
    v26 = (v7 + 48);
    v25 = (v7 + 8);
    do
    {
      v32 = v2;
      v10 = *(v0 + 2472);
      v11 = *(v0 + 2464);
      v12 = *(v0 + 2456);
      v13 = *(v0 + 2360);
      v14 = *(v0 + 2352);
      v27(v10, 1, 1, v6);
      sub_8478C(v5, v12);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_84A24(v12, v15 + v30);
      *(v15 + v28) = v14;
      memcpy((v15 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)), v13, 0x460uLL);
      sub_43050(v10, v11, &qword_2296C0, &qword_1C3800);
      LODWORD(v11) = (*v26)(v11, 1, v6);

      v16 = *(v0 + 2464);
      v17 = *(v0 + 2360);
      if (v11 == 1)
      {
        sub_84BC0(v17, v0 + 16);
        sub_42F48(v16, &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_84BC0(v17, v0 + 1136);
        sub_1B4C44();
        (*v25)(v16, v6);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1B4BC4();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v8 = v0 + 2256;
        *(v0 + 2256) = 0;
        *(v0 + 2264) = 0;
        *(v0 + 2272) = v18;
        *(v0 + 2280) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 2472);
      *(v0 + 2288) = 1;
      *(v0 + 2296) = v8;
      *(v0 + 2304) = v31;
      swift_task_create();

      sub_42F48(v9, &qword_2296C0, &qword_1C3800);
      v5 += v29;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  *(v0 + 2480) = _swiftEmptyDictionarySingleton;
  v21 = swift_task_alloc();
  *(v0 + 2488) = v21;
  *v21 = v0;
  v21[1] = sub_81D38;
  v22 = *(v0 + 2416);
  v23 = *(v0 + 2408);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, 0, 0, v22, v0 + 2312);
}

uint64_t sub_81D38()
{

  if (v0)
  {

    v1 = sub_82284;
  }

  else
  {
    v1 = sub_81E50;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_81E50()
{
  v1 = v0[301];
  v2 = v0[296];
  v3 = (*(v0[297] + 48))(v1, 1, v2);
  v4 = v0[310];
  if (v3 == 1)
  {
    v5 = v0[291];
    (*(v0[303] + 8))(v0[304], v0[302]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v8 = v0[300];
  v9 = v0[299];
  v10 = v0[298];
  v11 = *(v2 + 48);
  v12 = *(v1 + v11);
  v13 = sub_1B40F4();
  v14 = *(v13 - 8);
  v41 = v13;
  (*(v14 + 32))(v8, v1);
  *(v8 + v11) = v12;
  v15 = &qword_229360;
  sub_43050(v8, v9, &qword_229360, &qword_1BC400);

  sub_43050(v8, v10, &qword_229360, &qword_1BC400);
  v16 = *(v10 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[290] = v4;
  v18 = sub_3AC78(v9);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v40 = v18;
    sub_185F44();
    v18 = v40;
LABEL_12:
    v26 = v0[290];
    v27 = v0[300];
    if (v15)
    {
      *(v26[7] + 8 * v18) = v16;

      sub_42F48(v27, &qword_229360, &qword_1BC400);
    }

    else
    {
      v28 = v0[299];
      v26[(v18 >> 6) + 8] |= 1 << v18;
      v29 = v18;
      (*(v14 + 16))(v26[6] + *(v14 + 72) * v18, v28, v41);
      *(v26[7] + 8 * v29) = v16;
      v30 = sub_42F48(v27, &qword_229360, &qword_1BC400);
      v35 = v26[2];
      v22 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v22)
      {
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v30, v31, v32, v33, v34);
      }

      v26[2] = v36;
    }

    v37 = v0[298];
    v38 = *(v14 + 8);
    v38(v0[299], v41);
    v38(v37, v41);
    v0[310] = v26;
    v39 = swift_task_alloc();
    v0[311] = v39;
    *v39 = v0;
    v39[1] = sub_81D38;
    v33 = v0[302];
    v30 = v0[301];
    v34 = v0 + 289;
    v31 = 0;
    v32 = 0;

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v30, v31, v32, v33, v34);
  }

  LOBYTE(v15) = v19;
  if (*(v0[310] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v24 = v0[299];
  sub_17F10C(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_3AC78(v24);
  if ((v15 & 1) == (v25 & 1))
  {
    goto LABEL_12;
  }

  return sub_1B5784();
}

uint64_t sub_82284()
{
  (*(v0[303] + 8))(v0[304], v0[302]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_8237C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7A038;

  return sub_81700(a1, a2, v6, v7, v8);
}

uint64_t sub_82440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[145] = a6;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  return _swift_task_switch(sub_8246C, 0, 0);
}

uint64_t sub_8246C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[142];
  v4 = sub_1B40F4();
  v0[146] = v4;
  v5 = *(v4 - 8);
  v0[147] = v5;
  (*(v5 + 16))(v3, v2, v4);
  memcpy(v0 + 2, v1, 0x460uLL);
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_82580;
  v7 = v0[143];

  return sub_7F358(v7, v0 + 2);
}

uint64_t sub_82580(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1192) = v1;

  if (v1)
  {
    v5 = sub_826E8;
  }

  else
  {
    *(v4 + 1200) = a1;
    *(v4 + 1208) = *(sub_2B0C(&qword_229360, &qword_1BC400) + 48);
    v5 = sub_826C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_826E8()
{
  (*(v0[147] + 8))(v0[142], v0[146]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_82760(uint64_t result)
{
  v1 = *(result + 144);
  v14 = *(result + 128);
  v15 = v1;
  v16 = *(result + 160);
  v2 = *(result + 112);
  v12 = *(result + 96);
  v13 = v2;
  v3 = v15;
  if (v15 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    v5 = v13;
    v6 = v14;
    if ((v15 >> 62) > 2)
    {
      v7 = v12;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1BCA80;
      *(v7 + 32) = v4;
      *(v7 + 48) = v5;
      *(v7 + 64) = v6;
      *(v7 + 80) = v3 & 1;
    }

    sub_42CD4(&v12, v11);
    v8 = COERCE_DOUBLE(Array<A>.affinity.getter(v7));
    v10 = v9;

    return (v8 > 0.0) & ~v10;
  }

  return result;
}

uint64_t sub_82878@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X8>)
{
  v215 = a4;
  v201 = a5;
  v217 = a3;
  v187 = a2;
  v209 = sub_1B4594();
  v200 = *(v209 - 8);
  __chkstk_darwin(v209);
  v203 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v202 = sub_1B4824();
  v195 = *(v202 - 8);
  __chkstk_darwin(v202);
  v188 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v178 = &v172 - v15;
  v16 = __chkstk_darwin(v14);
  v180 = (&v172 - v17);
  v18 = __chkstk_darwin(v16);
  v204 = (&v172 - v19);
  v20 = __chkstk_darwin(v18);
  v183 = (&v172 - v21);
  v22 = __chkstk_darwin(v20);
  v182 = &v172 - v23;
  __chkstk_darwin(v22);
  v185 = &v172 - v24;
  v25 = sub_1B45D4();
  v191 = *(v25 - 8);
  v192 = v25;
  v26 = __chkstk_darwin(v25);
  v190 = &v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v208 = &v172 - v29;
  __chkstk_darwin(v28);
  v205 = &v172 - v30;
  v31 = sub_1B4414();
  v189 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v177 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v193 = &v172 - v35;
  v36 = __chkstk_darwin(v34);
  v179 = &v172 - v37;
  v38 = __chkstk_darwin(v36);
  v210 = &v172 - v39;
  v40 = __chkstk_darwin(v38);
  v181 = &v172 - v41;
  v42 = __chkstk_darwin(v40);
  v184 = &v172 - v43;
  v44 = __chkstk_darwin(v42);
  v186 = &v172 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = (&v172 - v47);
  v49 = __chkstk_darwin(v46);
  v51 = &v172 - v50;
  __chkstk_darwin(v49);
  v53 = &v172 - v52;
  v194 = sub_1B40F4();
  __chkstk_darwin(v194);
  v56 = &v172 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[48])
  {
    sub_85CD4();
    swift_allocError();
    *v97 = 0;
    return swift_willThrow();
  }

  v173 = v54;
  v212 = v13;
  v199 = v31;
  v175 = a6;
  v57 = a1[45];
  v206 = a1[46];
  v207 = v57;
  v214 = a1[51];
  v196 = v56;
  sub_1B40E4();

  v197 = v53;
  sub_1B43F4();

  v198 = v51;
  sub_1B43F4();

  sub_1B43F4();
  v58 = v48;
  if (qword_228318 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v214 = qword_22E360;
    LODWORD(v213) = sub_1B4D84();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1C00D0;
    sub_85D3C();
    v60 = sub_1B5594();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    v63 = sub_76888();
    *(v59 + 64) = v63;
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v220[0] = 0;
    v220[1] = 0xE000000000000000;
    sub_1B51F4();
    v64 = v220[0];
    v65 = v220[1];
    *(v59 + 96) = &type metadata for String;
    *(v59 + 104) = v63;
    *(v59 + 72) = v64;
    *(v59 + 80) = v65;
    v220[0] = 0;
    v220[1] = 0xE000000000000000;
    sub_1B51F4();
    v66 = v220[0];
    v67 = v220[1];
    *(v59 + 136) = &type metadata for String;
    *(v59 + 144) = v63;
    *(v59 + 112) = v66;
    *(v59 + 120) = v67;
    v220[0] = 0;
    v220[1] = 0xE000000000000000;
    v174 = v58;
    sub_1B51F4();
    v68 = v220[0];
    v69 = v220[1];
    *(v59 + 176) = &type metadata for String;
    *(v59 + 184) = v63;
    *(v59 + 152) = v68;
    *(v59 + 160) = v69;
    sub_1B4614("Running on graph with request ID %{public}@ for output %{public}@ score %{public}@ seedBook %{public}@ ", 103, 2, &dword_0, v214, v213, v59);

    v71 = v215 >> 1;
    v72 = (v215 >> 1) - v217;
    if (__OFSUB__(v215 >> 1, v217))
    {
      break;
    }

    v211 = (v215 >> 1);
    v176 = (v215 >> 1) - v217;
    v172 = v72 & ~(v72 >> 63);
    if (v72)
    {
      v221 = _swiftEmptyArrayStorage;
      result = sub_3782C(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        goto LABEL_73;
      }

      if (v71 <= v217)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v73 = v221;
      v58 = (v187 + 568 * v217);
      v74 = (v217 + 1);
      while (1)
      {
        v215 = v73;
        memcpy(v220, v58, 0x231uLL);
        if (LOBYTE(v220[1]) == 1)
        {
          sub_4299C(v220, v218);

          v75 = 1;
        }

        else
        {
          v76 = sub_1B5604();
          sub_4299C(v220, v218);

          v75 = v76 & 1;
        }

        LODWORD(v214) = v75;
        v77 = v220[0];
        v218[2] = *&v220[5];
        v218[3] = *&v220[7];
        v218[4] = *&v220[9];
        v219 = v220[11];
        v218[0] = *&v220[1];
        v218[1] = *&v220[3];
        v78 = Book.Metadata.genreIDs.getter();
        v79 = v216;
        v80 = sub_7EC1C(v78);

        v81 = sub_7EC1C(v220[3]);
        v216 = v79;
        *&v218[0] = v77;
        v82 = sub_1B5594();
        v213 = v83;
        v84 = v207;
        v85 = sub_947FC(v207, v80);

        v86 = v85[2];
        if (v86 == v84)
        {
          v87 = v206;
        }

        else
        {
          v87 = v206;
          if (__OFSUB__(v84, v86))
          {
            goto LABEL_67;
          }

          v88 = sub_972C8(0, 0xE000000000000000, v84 - v86);
          *&v218[0] = v85;
          sub_5FC38(v88);
          v85 = *&v218[0];
        }

        v89 = sub_947FC(v87, v81);

        v90 = v89[2];
        if (v90 == v87)
        {
          sub_2601C(v220);
        }

        else
        {
          if (__OFSUB__(v87, v90))
          {
            goto LABEL_68;
          }

          v91 = sub_972C8(0, 0xE000000000000000, v87 - v90);
          *&v218[0] = v89;
          sub_5FC38(v91);
          sub_2601C(v220);
          v89 = *&v218[0];
        }

        v73 = v215;
        v221 = v215;
        v93 = *(v215 + 16);
        v92 = *(v215 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_3782C((v92 > 1), v93 + 1, 1);
          v73 = v221;
        }

        *(v73 + 16) = v93 + 1;
        v94 = v73 + 40 * v93;
        v95 = v213;
        *(v94 + 32) = v82;
        *(v94 + 40) = v95;
        *(v94 + 48) = v214;
        *(v94 + 56) = v85;
        *(v94 + 64) = v89;
        if (v211 == v74)
        {
          break;
        }

        if (v74 >= v217)
        {
          v58 += 142;
          v96 = v74++ < v211;
          if (v96)
          {
            continue;
          }
        }

        goto LABEL_65;
      }

      v215 = v73;
    }

    else
    {
      v215 = _swiftEmptyArrayStorage;
    }

    v98 = v202;
    v99 = v195;
    v100 = v188;
    sub_1B45C4();
    sub_1B43F4();
    v214 = type metadata accessor for SeedBasedRecommendationRequest(0);
    sub_1B4804();
    v101 = sub_1B47D4();
    v103 = v102;
    v213 = *(v99 + 8);
    result = (v213)(v100, v98);
    if (v103 >> 60 == 15)
    {
      goto LABEL_75;
    }

    v104 = v185;
    sub_1B4584();
    sub_85D94(v101, v103);
    v105 = v209;
    v206 = *(v200 + 56);
    v207 = v200 + 56;
    v206(v104, 0, 1, v209);
    sub_1B45F4();
    sub_1B43F4();
    sub_1B4804();
    v106 = sub_1B47D4();
    v108 = v107;

    result = (v213)(v100, v202);
    if (v108 >> 60 == 15)
    {
      goto LABEL_76;
    }

    v109 = v182;
    sub_1B4584();
    sub_85D94(v106, v108);
    v110 = v206;
    v206(v109, 0, 1, v105);
    sub_1B45F4();
    sub_1B43F4();
    v111 = v105;
    v112 = sub_2B0C(&qword_229460, &qword_1C23E0);
    v113 = swift_allocObject();
    v202 = xmmword_1BCA80;
    *(v113 + 16) = xmmword_1BCA80;
    v114 = v214;
    v115 = v201;
    *(v113 + 32) = v201[*(v214 + 36)];
    v116 = v183;
    *v183 = v113;
    v117 = *(v200 + 104);
    LODWORD(v213) = enum case for Feature.int32List(_:);
    v195 = v200 + 104;
    v188 = v117;
    (v117)(v116);
    v110(v116, 0, 1, v111);
    sub_1B45F4();
    sub_1B43F4();
    v186 = v112;
    result = swift_allocObject();
    *(result + 16) = v202;
    v118 = *&v115[*(v114 + 40)];
    if (v118 < 0xFFFFFFFF80000000)
    {
      goto LABEL_71;
    }

    if (v118 > 0x7FFFFFFF)
    {
      goto LABEL_72;
    }

    v119 = v111;
    *(result + 32) = v118;
    v120 = v115;
    v121 = v204;
    *v204 = result;
    v122 = v188;
    (v188)(v121, v213, v119);
    v110(v121, 0, 1, v119);
    sub_1B45F4();
    sub_1B43F4();
    v123 = swift_allocObject();
    *(v123 + 16) = v202;
    v58 = v214;
    *(v123 + 32) = v120[*(v214 + 44)];
    v124 = v180;
    *v180 = v123;
    v122(v124, v213, v119);
    v110(v124, 0, 1, v119);
    sub_1B45F4();
    sub_1B43F4();
    v125 = v216;
    sub_7EC1C(*&v201[v58[12]]);
    v186 = v125;
    sub_1B4574();
    v110(v121, 0, 1, v119);
    sub_1B45F4();
    sub_1B43F4();
    v126 = _swiftEmptyArrayStorage;
    v127 = v176;
    if (!v176)
    {
      v144 = v199;
      v128 = v212;
LABEL_55:
      v145 = v178;
      *v178 = v126;
      v146 = v209;
      (v188)(v145, enum case for Feature.floatList(_:), v209);
      v206(v145, 0, 1, v146);
      v147 = v205;
      sub_1B45F4();
      sub_156010(v215, 0xD000000000000016, 0x80000000001D63B0, v208);

      v148 = sub_1B45B4();
      v149 = *(v148 + 16);
      if (v149)
      {
        v150 = *(v189 + 16);
        v151 = (*(v189 + 80) + 32) & ~*(v189 + 80);
        v195 = v148;
        v152 = v148 + v151;
        v214 = *(v189 + 72);
        v215 = v200 + 48;
        v211 = (v200 + 32);
        v201 = (v200 + 8);
        *&v202 = v200 + 16;
        v216 = v150;
        v217 = v189 + 16;
        v213 = (v189 + 8);
        v153 = v177;
        (v150)(v177, v148 + v151, v144);
        while (1)
        {
          sub_1B45E4();
          v157 = v144;
          v158 = v209;
          if ((*v215)(v128, 1, v209) == 1)
          {
            (*v213)(v153, v157);
            sub_42F48(v128, &qword_22A518, &qword_1C0220);
          }

          else
          {
            v154 = v203;
            (*v211)(v203, v212, v158);
            (v150)(v210, v153, v157);
            v155 = v204;
            (*v202)(v204, v154, v158);
            v206(v155, 0, 1, v158);
            sub_1B45F4();
            v156 = v154;
            v128 = v212;
            (*v201)(v156, v158);
            (*v213)(v153, v157);
          }

          v144 = v157;
          v152 += v214;
          --v149;
          v150 = v216;
          if (!v149)
          {
            break;
          }

          (v216)(v153, v152, v157);
        }

        v147 = v205;
      }

      else
      {
      }

      (*(v191 + 16))(v190, v147, v192);
      v159 = sub_1B40D4();
      v216 = v160;
      v217 = v159;
      v214 = off_22EE50;
      v215 = qword_22EE48;
      sub_2B0C(&qword_229440, &qword_1BC4E0);
      v161 = v189;
      v162 = *(v189 + 72);
      v163 = (*(v189 + 80) + 32) & ~*(v189 + 80);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_1C00E0;
      v165 = v164 + v163;
      v166 = *(v161 + 16);
      v167 = v199;
      v166(v165, v198, v199);
      v166(v165 + v162, v197, v167);
      v168 = v174;
      v166(v165 + 2 * v162, v174, v167);

      sub_40F30(v164);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B45A4();
      v169 = v192;
      v170 = *(v191 + 8);
      v170(v208, v192);
      v170(v205, v169);
      v171 = *(v161 + 8);
      v171(v168, v167);
      v171(v198, v167);
      v171(v197, v167);
      return (*(v173 + 8))(v196, v194);
    }

    v221 = _swiftEmptyArrayStorage;
    result = sub_3780C(0, v172, 0);
    v128 = v212;
    if ((v127 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    v129 = v211;
    if (v211 > v217)
    {
      v58 = (v187 + 568 * v217);
      v130 = v217 + 1;
      v126 = v221;
      while (2)
      {
        memcpy(v220, v58, 0x231uLL);
        v131 = v220[18];
        v132 = 0.0;
        if (v220[18] >> 1 == 0xFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        v133 = v220[12];
        v134 = v220[13];
        v135 = v220[16];
        if ((v220[18] >> 62) <= 1)
        {
          v213 = v220[14];
          v214 = v220[17];
          v216 = v220[15];
          goto LABEL_41;
        }

        if (v220[18] >> 62 == 2)
        {
          v216 = v220[15];
          v213 = v220[14];
          v214 = v220[17];
LABEL_41:
          sub_2B0C(&qword_229488, &qword_1BC520);
          v136 = swift_allocObject();
          *(v136 + 16) = v202;
          *(v136 + 32) = v133;
          *(v136 + 40) = v134;
          v137 = v216;
          *(v136 + 48) = v213;
          *(v136 + 56) = v137;
          v138 = v214;
          *(v136 + 64) = v135;
          *(v136 + 72) = v138;
          *(v136 + 80) = v131 & 1;
        }

        else
        {
          v136 = v220[12];
        }

        sub_4299C(v220, v218);
        sub_43050(&v220[12], v218, &qword_22A4E0, &unk_1C01D0);
        v139 = COERCE_DOUBLE(Array<A>.affinity.getter(v136));
        v141 = v140;

        sub_2601C(v220);
        if (v141)
        {
          v132 = 0.0;
        }

        else
        {
          v132 = v139;
        }

        v129 = v211;
        v128 = v212;
LABEL_47:
        v221 = v126;
        v143 = v126[2];
        v142 = v126[3];
        if (v143 >= v142 >> 1)
        {
          sub_3780C((v142 > 1), v143 + 1, 1);
          v126 = v221;
        }

        v126[2] = v143 + 1;
        *(v126 + v143 + 8) = v132;
        if (v129 == v130)
        {
          v144 = v199;
          goto LABEL_55;
        }

        if (v130 < v217)
        {
          break;
        }

        v58 += 142;
        v96 = v130++ < v129;
        if (!v96)
        {
          break;
        }

        continue;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

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
LABEL_76:
  __break(1u);
  return result;
}

unint64_t sub_83E58(int a1, uint64_t a2, uint64_t a3, unint64_t a4, void *__src, char a6, uint64_t a7, uint64_t a8)
{
  result = memcpy(__dst, __src, 0x231uLL);
  if (__dst[560] == 12)
  {
    return _swiftEmptyArrayStorage;
  }

  v77 = a4 >> 1;
  v14 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_58;
  }

  if (!v14)
  {
    v35 = a8;
LABEL_18:
    type metadata accessor for SeedBasedRecommendationRequest(0);
    sub_43174();
    v39 = v38 >> 1;
    if (v37 != v38 >> 1)
    {
      v54 = v36;
      v55 = v37;
      v56 = v35 + 56;
      v40 = _swiftEmptyArrayStorage;
      v57 = v37;
      v58 = v37;
      while (1)
      {
        do
        {
          if (v57 >= v39)
          {
            break;
          }

          v59 = (v54 + (v57 << 6));
          v60 = *v59;
          v61 = v59[1];
          v62 = v59[3];
          v83 = v59[2];
          v84 = v62;
          v81 = v60;
          v82 = v61;
          ++v57;
          if (*(v35 + 16))
          {
            v63 = v81;
            v64 = sub_1B57E4();
            v65 = -1 << *(v35 + 32);
            v66 = v64 & ~v65;
            if ((*(v56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
            {
              v67 = ~v65;
              while (*(*(v35 + 48) + 8 * v66) != v63)
              {
                v66 = (v66 + 1) & v67;
                if (((*(v56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              goto LABEL_36;
            }
          }

LABEL_44:
          sub_42BA4(&v81, v78);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_375F8(0, v40[2] + 1, 1);
            v40 = v79;
          }

          v70 = v40[2];
          v69 = v40[3];
          if (v70 >= v69 >> 1)
          {
            sub_375F8((v69 > 1), v70 + 1, 1);
            v40 = v79;
          }

          v40[2] = v70 + 1;
          v71 = &v40[8 * v70];
          v72 = v81;
          v73 = v82;
          v74 = v84;
          v71[4] = v83;
          v71[5] = v74;
          v71[2] = v72;
          v71[3] = v73;
          v35 = a8;
          if (v57 == v39)
          {
            goto LABEL_20;
          }

          v58 = v57;
        }

        while (v57 >= v55);
        do
        {
          __break(1u);
LABEL_36:
          if (v57 == v39)
          {
            goto LABEL_20;
          }
        }

        while (v58 < v55);
      }
    }

    v40 = _swiftEmptyArrayStorage;
LABEL_20:
    result = swift_unknownObjectRelease();
    v41 = v40[2];
    if (!v41)
    {
      v13 = _swiftEmptyArrayStorage;
LABEL_52:

      return v13;
    }

    v42 = 0;
    v13 = _swiftEmptyArrayStorage;
LABEL_22:
    v43 = &v40[8 * v42 + 4];
    v44 = v42;
    while (v44 < v40[2])
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = v43[3];
      v83 = v43[2];
      v84 = v47;
      v81 = v45;
      v82 = v46;
      if (*(&v47 + 1) > 0.0 && v84 && *(&v83 + 1) > 0.0)
      {
        sub_42BA4(&v81, v78);
        result = swift_isUniquelyReferenced_nonNull_native();
        v79 = v13;
        if ((result & 1) == 0)
        {
          result = sub_375F8(0, v13[2] + 1, 1);
          v13 = v79;
        }

        v49 = v13[2];
        v48 = v13[3];
        if (v49 >= v48 >> 1)
        {
          result = sub_375F8((v48 > 1), v49 + 1, 1);
          v13 = v79;
        }

        v42 = v44 + 1;
        v13[2] = v49 + 1;
        v50 = &v13[8 * v49];
        v51 = v81;
        v52 = v82;
        v53 = v84;
        v50[4] = v83;
        v50[5] = v53;
        v50[2] = v51;
        v50[3] = v52;
        if (v41 - 1 != v44)
        {
          goto LABEL_22;
        }

        goto LABEL_52;
      }

      ++v44;
      v43 += 4;
      if (v41 == v44)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_57;
  }

  v78[0] = _swiftEmptyArrayStorage;
  result = sub_375F8(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v78[0];
    result = sub_2B0C(&qword_22A510, &qword_1C0208);
    if (v77 <= a3)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v76 = a6 & 1;
      v16 = a3 + 1;
      v17 = (a2 + 24 * a3 + 8);
      while (1)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v20 = v17[1];
        v85[0] = 0;
        sub_2B0C(&qword_229218, &unk_1C0210);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BCA80;
        memcpy((v21 + 32), __dst, 0x231uLL);
        v86 = v21;
        v22 = sub_1B52B4();
        sub_4299C(__dst, &v81);
        v23 = v85[0];
        v24 = v86;

        result = sub_3AB0C(v23);
        if (v25)
        {
          break;
        }

        v22[(result >> 6) + 8] |= 1 << result;
        *(v22[6] + result) = v23;
        *(v22[7] + 8 * result) = v24;
        v26 = v22[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_56;
        }

        v22[2] = v28;

        result = sub_42F48(v85, &qword_229350, &qword_1BC3F0);
        LODWORD(v81) = v79;
        *(&v81 + 3) = *(&v79 + 3);
        v80[0] = *v87;
        *(v80 + 3) = *&v87[3];
        v30 = *(v15 + 16);
        v29 = *(v15 + 24);
        v78[0] = v15;
        if (v30 >= v29 >> 1)
        {
          result = sub_375F8((v29 > 1), v30 + 1, 1);
          v15 = v78[0];
        }

        *(v15 + 16) = v30 + 1;
        v31 = v15 + (v30 << 6);
        *(v31 + 32) = v18;
        *(v31 + 40) = v76;
        v32 = *(&v81 + 3);
        *(v31 + 41) = v81;
        *(v31 + 44) = v32;
        *(v31 + 48) = 0;
        *(v31 + 56) = -1;
        v33 = v80[0];
        *(v31 + 60) = *(v80 + 3);
        *(v31 + 57) = v33;
        *(v31 + 64) = _swiftEmptyArrayStorage;
        *(v31 + 72) = v20;
        *(v31 + 80) = v22;
        *(v31 + 88) = v19;
        if (v77 == v16)
        {
          v35 = a8;
          goto LABEL_18;
        }

        if (v16 >= a3)
        {
          v17 += 3;
          if (v16++ < v77)
          {
            continue;
          }
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *WorkServiceSeedBasedRecommendationService.deinit()
{

  sub_2BF8((v0 + 24));
  sub_2BF8((v0 + 64));
  return v0;
}

uint64_t WorkServiceSeedBasedRecommendationService.__deallocating_deinit()
{

  sub_2BF8((v0 + 24));
  sub_2BF8((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_84494(uint64_t a1, const void *a2)
{
  v3[143] = a1;
  v3[144] = *v2;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_8450C, 0, 0);
}

uint64_t sub_8450C()
{
  v1 = sub_2B0C(&qword_229360, &qword_1BC400);
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  *(v2 + 16) = *(v0 + 1144);
  *(v2 + 32) = v0 + 16;
  v3 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v4 = swift_task_alloc();
  *(v0 + 1168) = v4;
  *v4 = v0;
  v4[1] = sub_84634;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1136, v1, v3, 0, 0, &unk_1C0190, v2, v1);
}

uint64_t sub_84634()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_85E6C;
  }

  else
  {

    v2 = sub_85E70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8478C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_847F0()
{
  v1 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_1B40F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v4);

  if (*(v0 + v4 + 904))
  {
  }

  if (v6[116])
  {
  }

  if (v6[124])
  {
  }

  if (v6[134])
  {
  }

  return _swift_deallocObject(v0, v4 + 1120, v2 | 7);
}

uint64_t sub_84A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_84A88(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226C;

  return sub_82440(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

Swift::Int sub_84C1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B94(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 8))
          {
            break;
          }

          v13 = v12 - 56;
          v14 = *(v12 + 8);
          v15 = *(v12 + 24);
          v16 = *(v12 + 56);
          v26 = *(v12 + 40);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 40);
          *(v12 + 8) = *(v12 - 56);
          *(v12 + 24) = v17;
          v18 = *(v12 - 8);
          *(v12 + 40) = *(v12 - 24);
          *(v12 + 56) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_84D94(&v24, v23, v28, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_84D94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v91 = v8 + 2;
    v92 = v8[2];
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v8[2 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_85338((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 56);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 56);
      v14 = v9 + 2;
      v15 = (v12 + 184);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
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
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v45 = v8[3];
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_32F04((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v5 + 4];
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = v8[4];
          v50 = v8[5];
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = &v8[2 * v46];
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = &v47[2 * v5];
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = &v8[2 * v46];
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v47[2 * v5];
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
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

        v86 = &v47[2 * v5 - 2];
        v87 = *v86;
        v88 = &v47[2 * v5];
        v89 = v88[1];
        sub_85338((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = v8[2];
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove(&v47[2 * v5], v88 + 2, 16 * (v90 - 1 - v5));
        v8[2] = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = &v47[2 * v46];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = &v8[2 * v46];
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = &v47[2 * v5];
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 - 8) >= *(v36 + 56))
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = (v36 - 64);
    v39 = *(v36 + 32);
    v38 = *(v36 + 48);
    v41 = *v36;
    v40 = *(v36 + 16);
    v42 = *(v36 - 48);
    *v36 = *(v36 - 64);
    *(v36 + 16) = v42;
    v43 = *(v36 - 16);
    *(v36 + 32) = *(v36 - 32);
    *(v36 + 48) = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 64;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_85338(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[8 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[7] < v6[7])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v25 = v6 - 8;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 8, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 8;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFC0)))
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

void *sub_855A8(void *result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, _OWORD *))
{
  v32 = result[3];
  v37 = result[4] >> 1;
  v2 = v37 - v32;
  if (__OFSUB__(v37, v32))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v3 = *result;
  v30 = result[2];
  v4 = *(*result + 16);
  if (v2 >= v4)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = v37 - v32;
  }

  v42 = _swiftEmptyArrayStorage;
  result = sub_37688(0, v5 & ~(v5 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v36 = v4;
    v28 = v3;
    v6 = v42;
    if (v5)
    {
      v29 = v3 + 32;

      result = swift_unknownObjectRetain();
      v7 = 0;
      v8 = 0;
      v9 = 1;
      v35 = v32;
      while (1)
      {
        if (v8)
        {
          sub_85D34(__src);
          memcpy(__dst, __src, 0x251uLL);
          v8 = 1;
        }

        else
        {
          v10 = v36;
          if (v7 == v36)
          {
            goto LABEL_14;
          }

          if (v7 >= v36)
          {
            goto LABEL_42;
          }

          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_43;
          }

          if (v35 == v37)
          {
LABEL_14:
            sub_85D34(__src);
            memcpy(__dst, __src, 0x251uLL);
            v8 = 1;
          }

          else
          {
            if (v35 < v32 || v35 >= v37)
            {
              goto LABEL_44;
            }

            v11 = (v29 + 32 * v7);
            v33 = *v11;
            v31 = v11[1];
            memcpy(__src, (v30 + 568 * v35++), 0x231uLL);
            __dst[0] = v33;
            __dst[1] = v31;
            memcpy(&__dst[2], __src, 0x231uLL);
            AuthorRecommendationSource.id.getter();
            swift_unknownObjectRetain();
            sub_4299C(__src, v39);
            v8 = 0;
          }

          v7 = v10;
        }

        memcpy(__src, __dst, 0x251uLL);
        result = sub_4254C(__src);
        if (result == 1)
        {
          goto LABEL_47;
        }

        v12 = a2(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), &__dst[2]);
        memcpy(v39, __dst, 0x251uLL);
        result = sub_42F48(v39, &qword_22A508, &qword_1C0200);
        v42 = v6;
        v14 = v6[2];
        v13 = v6[3];
        if (v14 >= v13 >> 1)
        {
          result = sub_37688((v13 > 1), v14 + 1, 1);
          v6 = v42;
        }

        v6[2] = v14 + 1;
        v6[v14 + 4] = v12;
        if (v5 == v9)
        {
          break;
        }

        if (__OFADD__(v9++, 1))
        {
          __break(1u);
          goto LABEL_39;
        }
      }
    }

    else
    {

      result = swift_unknownObjectRetain();
      v7 = 0;
      v8 = 0;
      v35 = v32;
    }

    if ((v8 & 1) != 0 || (v16 = v36, v7 == v36))
    {
LABEL_38:
      swift_unknownObjectRelease();

      return v6;
    }

    v17 = (v28 + 32 * v7 + 56);
    v18 = v35;
    v19 = (v30 + 568 * v35);
    v20 = v35;
    while (v7 < v16)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_40;
      }

      if (v37 != v20)
      {
        if (v18 < v32 || v20 >= v37)
        {
          goto LABEL_41;
        }

        v34 = v7 + 1;
        v21 = *(v17 - 3);
        v22 = *(v17 - 2);
        v23 = *(v17 - 1);
        v24 = *v17;
        memcpy(v39, v19, 0x231uLL);
        memcpy(&__dst[2], v19, 0x231uLL);
        *&__dst[0] = v21;
        *(&__dst[0] + 1) = v22;
        *&__dst[1] = v23;
        *(&__dst[1] + 1) = v24;
        swift_unknownObjectRetain();
        sub_4299C(v39, __src);
        v25 = a2(v21, v22, v23, v24, &__dst[2]);
        memcpy(__src, __dst, 0x251uLL);
        result = sub_42F48(__src, &qword_22A508, &qword_1C0200);
        v42 = v6;
        v27 = v6[2];
        v26 = v6[3];
        if (v27 >= v26 >> 1)
        {
          result = sub_37688((v26 > 1), v27 + 1, 1);
          v6 = v42;
        }

        ++v7;
        v6[2] = v27 + 1;
        v6[v27 + 4] = v25;
        v17 += 4;
        v19 += 568;
        ++v20;
        v18 = v35;
        v16 = v36;
        if (v34 != v36)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

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
    goto LABEL_45;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_85A24(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_376A8(0, v8, 0);
  v32 = v6;
  if (v8)
  {
    result = a5;
    v30 = a5 + 4;
    v31 = a5[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_50;
      }

      if (v31 >= v7 + a4)
      {
        v16 = v7 + a4;
      }

      else
      {
        v16 = v31;
      }

      if (v16 < v7)
      {
        goto LABEL_51;
      }

      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v19 = result;

      if (v18 >= v17 >> 1)
      {
        sub_376A8((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * v18];
      v20[4] = v19;
      v20[5] = v30;
      v20[6] = v7;
      v20[7] = (2 * v16) | 1;
      v7 = v15;
      --v8;
      result = v19;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v15 = v7;
    result = a5;
LABEL_29:
    v21 = v15 <= v6;
    if (a3 > 0)
    {
      v21 = v15 >= v6;
    }

    if (v21)
    {
      return _swiftEmptyArrayStorage;
    }

    v22 = result + 4;
    while (1)
    {
      v23 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      if (__OFADD__(v15, a4))
      {
        break;
      }

      if (result[2] >= v15 + a4)
      {
        v24 = v15 + a4;
      }

      else
      {
        v24 = result[2];
      }

      if (v24 < v15)
      {
        goto LABEL_54;
      }

      if (v15 < 0)
      {
        goto LABEL_55;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = result;

      if (v26 >= v25 >> 1)
      {
        sub_376A8((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v26];
      v28[4] = v27;
      v28[5] = v22;
      v28[6] = v15;
      v28[7] = (2 * v24) | 1;
      v29 = v23 <= v32;
      if (a3 > 0)
      {
        v29 = v23 >= v32;
      }

      v15 = v23;
      result = v27;
      if (v29)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_85CD4()
{
  result = qword_22A4F0;
  if (!qword_22A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A4F0);
  }

  return result;
}

unint64_t sub_85D3C()
{
  result = qword_22A520;
  if (!qword_22A520)
  {
    sub_1B40F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A520);
  }

  return result;
}

uint64_t sub_85D94(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_41670(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkServiceSeedBasedRecommendationService.Recommendation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkServiceSeedBasedRecommendationService.Recommendation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_85E18()
{
  result = qword_22A528;
  if (!qword_22A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A528);
  }

  return result;
}

uint64_t sub_85E74(uint64_t a1, char a2)
{
  *(v3 + 8216) = v2;
  *(v3 + 8616) = a2;
  *(v3 + 8168) = a1;
  v4 = sub_1B45D4();
  *(v3 + 8264) = v4;
  *(v3 + 8312) = *(v4 - 8);
  *(v3 + 8360) = swift_task_alloc();
  *(v3 + 8408) = *(type metadata accessor for Event(0) - 8);
  *(v3 + 8456) = swift_task_alloc();

  return _swift_task_switch(sub_85F98, 0, 0);
}

uint64_t sub_85F98()
{

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 696, sub_86038, v0 + 656);
}

uint64_t sub_86038()
{
  *(v1 + 8464) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 696, sub_87140, v1 + 7600);
  }

  else
  {
    return _swift_task_switch(sub_86080, 0, 0);
  }
}

uint64_t sub_86080()
{
  v2 = *(v0 + 1560);
  v1 = *(v0 + 1576);
  v3 = *(v0 + 1544);
  *(v0 + 7768) = v2;
  *(v0 + 7784) = v1;
  v4 = *(v0 + 1576);
  *(v0 + 7800) = *(v0 + 1592);
  v6 = *(v0 + 1496);
  v5 = *(v0 + 1512);
  v7 = *(v0 + 1480);
  *(v0 + 7704) = v6;
  *(v0 + 7720) = v5;
  v8 = *(v0 + 1512);
  v10 = *(v0 + 1528);
  v9 = *(v0 + 1544);
  *(v0 + 7736) = v10;
  *(v0 + 7752) = v9;
  v11 = *(v0 + 1448);
  *(v0 + 7640) = *(v0 + 1432);
  *(v0 + 7656) = v11;
  v12 = *(v0 + 1480);
  v14 = *(v0 + 1432);
  v13 = *(v0 + 1448);
  v15 = *(v0 + 1464);
  *(v0 + 7672) = v15;
  *(v0 + 7688) = v12;
  *(v0 + 7544) = v2;
  *(v0 + 7560) = v4;
  *(v0 + 7576) = *(v0 + 1592);
  *(v0 + 7480) = v6;
  *(v0 + 7496) = v8;
  *(v0 + 7512) = v10;
  *(v0 + 7528) = v3;
  *(v0 + 7416) = v14;
  *(v0 + 7432) = v13;
  *(v0 + 7816) = *(v0 + 1608);
  *(v0 + 7592) = *(v0 + 1608);
  *(v0 + 7448) = v15;
  *(v0 + 7464) = v7;
  if (sub_87EF8(v0 + 7416) == 1)
  {
    sub_87F10();
    *(v0 + 8608) = swift_allocError();
    swift_willThrow();

    return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_870A0, v0 + 7824);
  }

  else
  {
    sub_404C4(*(v0 + 8216) + 56, v0 + 8088);
    v16 = *(v0 + 8112);
    *(v0 + 8472) = v16;
    *(v0 + 8488) = sub_2698((v0 + 8088), v16);
    *(v0 + 8496) = sub_9EF50(&off_212D90);
    sub_87F64(v0 + 7640, v0 + 7864);

    return _swift_asyncLet_get_throwing(v0 + 16, v0 + 696, sub_86248, v0 + 8048);
  }
}

uint64_t sub_86248()
{
  v1[1063] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_871E0, 0, 0);
  }

  else
  {
    v2 = v1[927];
    memcpy(v1 + 227, v1 + 87, 0x460uLL);
    memcpy(v1 + 367, v1 + 87, 0x460uLL);
    sub_84BC0((v1 + 227), (v1 + 507));
    v3 = swift_task_alloc();
    v1[1064] = v3;
    *v3 = v1;
    v3[1] = sub_86364;
    v4 = v1[1062];
    v5 = v1[1060];
    v6 = v1[1059];

    return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v4, v2, v1 + 367, v6, v5);
  }
}

uint64_t sub_86364(uint64_t a1)
{
  v3 = *v2;
  v3[1065] = a1;
  v3[1066] = v1;

  if (v1)
  {
    memcpy(v3 + 647, v3 + 367, 0x460uLL);
    sub_2B54((v3 + 647));

    v4 = sub_87314;
  }

  else
  {

    memcpy(v3 + 787, v3 + 367, 0x460uLL);
    sub_2B54((v3 + 787));
    v4 = sub_864E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_864E8()
{
  v1 = v0[1027];
  sub_2BF8(v0 + 1011);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[1067] = v4;
  *v4 = v0;
  v4[1] = sub_8661C;

  return v6(v2, v3);
}

uint64_t sub_8661C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 8544) = a1;
  *(v3 + 8552) = v1;

  if (v1)
  {
    v4 = sub_87434;
  }

  else
  {
    v4 = sub_86734;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_86734()
{
  v42 = v0;
  v1 = v0[1068];

  result = sub_43158();
  v40 = result;
  v3 = *(v1 + 16);
  if (!v3)
  {
    v7 = result;
LABEL_77:
    v32 = v0[1027];
    v33 = v32[15];
    v34 = v32[16];
    sub_2698(v32 + 12, v33);
    v35 = *(v7 + 16);
    if (v35)
    {
      v36 = sub_3503C(*(v7 + 16), 0);
      v37 = sub_3F09C(v41, v36 + 4, v35, v7);
      sub_417B8(v41[0]);
      if (v37 == v35)
      {
LABEL_81:
        v0[1070] = v36;
        v39 = (*(v34 + 16) + **(v34 + 16));
        v38 = swift_task_alloc();
        v0[1071] = v38;
        *v38 = v0;
        v38[1] = sub_86C34;

        return v39(v36, v33, v34);
      }

      __break(1u);
    }

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  v4 = 0;
  v5 = v0[1051];
  v6 = v0[1068] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v4 < *(v1 + 16))
  {
    sub_7A1B4(v6 + *(v5 + 72) * v4, v0[1057]);
    result = Event.assetID.getter();
    v10 = HIBYTE(v9) & 0xF;
    v11 = result & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      goto LABEL_5;
    }

    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v41[0] = result;
        v41[1] = v9 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (!v10)
          {
            goto LABEL_85;
          }

          v11 = v10 - 1;
          if (v10 != 1)
          {
            v14 = 0;
            v22 = v41 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                break;
              }

              v17 = __CFADD__(10 * v14, v23);
              v14 = 10 * v14 + v23;
              if (v17)
              {
                break;
              }

              ++v22;
              if (!--v11)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v10)
          {
            goto LABEL_87;
          }

          v11 = v10 - 1;
          if (v10 != 1)
          {
            v14 = 0;
            v18 = v41 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                break;
              }

              v17 = 10 * v14 >= v19;
              v14 = 10 * v14 - v19;
              if (!v17)
              {
                break;
              }

              ++v18;
              if (!--v11)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v10)
        {
          v14 = 0;
          v25 = v41;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = __CFADD__(10 * v14, v26);
            v14 = 10 * v14 + v26;
            if (v17)
            {
              break;
            }

            v25 = (v25 + 1);
            if (!--v10)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1B5154();
          v11 = v31;
        }

        v13 = *result;
        if (v13 == 43)
        {
          if (v11 < 1)
          {
            goto LABEL_88;
          }

          if (--v11)
          {
            v14 = 0;
            if (!result)
            {
              goto LABEL_69;
            }

            v20 = (result + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                break;
              }

              v17 = __CFADD__(10 * v14, v21);
              v14 = 10 * v14 + v21;
              if (v17)
              {
                break;
              }

              ++v20;
              if (!--v11)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v13 == 45)
        {
          if (v11 < 1)
          {
            goto LABEL_86;
          }

          if (--v11)
          {
            v14 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v14, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v17 = 10 * v14 >= v16;
                v14 = 10 * v14 - v16;
                if (!v17)
                {
                  goto LABEL_70;
                }

                ++v15;
                if (!--v11)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_69:
            LOBYTE(v11) = 0;
LABEL_71:
            v27 = v11;

            if ((v27 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_5;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_70;
          }

          v14 = 0;
          if (!result)
          {
            goto LABEL_69;
          }

          while (1)
          {
            v24 = *result - 48;
            if (v24 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = __CFADD__(10 * v14, v24);
            v14 = 10 * v14 + v24;
            if (v17)
            {
              break;
            }

            ++result;
            if (!--v11)
            {
              goto LABEL_71;
            }
          }
        }
      }

LABEL_70:
      v14 = 0;
      LOBYTE(v11) = 1;
      goto LABEL_71;
    }

    v14 = sub_3DBA4(result, v9, 10);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
LABEL_72:
      v28 = v0[1057];
      sub_111CE0(v41, v14);
      v8 = v28;
      goto LABEL_6;
    }

LABEL_5:
    v8 = v0[1057];
LABEL_6:
    result = sub_7A218(v8);
    if (++v4 == v3)
    {
      v7 = v40;
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_86C34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 8576) = a1;
  *(v3 + 8584) = v1;

  if (v1)
  {
    v4 = sub_87550;
  }

  else
  {

    v4 = sub_86D54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_86D54()
{
  v26 = v0;
  v1 = *(v0 + 8520);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_35388(*(v1 + 16), 0);
    v4 = sub_3F350(v24, v3 + 32, v2, v1);
    sub_417B8(*&v24[0]);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v5 = *(v0 + 8576);
  v6 = *(v0 + 8544);
  v7 = *(v0 + 8360);
  v8 = *(v0 + 8616);
  v9 = *(v0 + 7560);
  v24[8] = *(v0 + 7544);
  v24[9] = v9;
  v24[10] = *(v0 + 7576);
  v25 = *(v0 + 7592);
  v10 = *(v0 + 7496);
  v24[4] = *(v0 + 7480);
  v24[5] = v10;
  v11 = *(v0 + 7528);
  v24[6] = *(v0 + 7512);
  v24[7] = v11;
  v12 = *(v0 + 7432);
  v24[0] = *(v0 + 7416);
  v24[1] = v12;
  v13 = *(v0 + 7464);
  v24[2] = *(v0 + 7448);
  v24[3] = v13;
  sub_94934(v6, v3, v5, v24, v7);

  sub_87FD4(v0 + 7640);
  if (v8 == 1)
  {
    v14 = *(v0 + 8584);
    sub_1B3C84();
    swift_allocObject();
    sub_1B3C74();
    sub_8803C();
    v15 = sub_1B3C54();
    *(v0 + 8592) = v14;
    if (v14)
    {
      (*(*(v0 + 8312) + 8))(*(v0 + 8360), *(v0 + 8264));

      v17 = sub_8768C;
      v18 = v0 + 16;
      v19 = v0 + 696;
      v20 = v0 + 8368;
      goto LABEL_10;
    }

    v21 = v15;
    v22 = v16;
    sub_1B3FB4();
    *(v0 + 8600) = 0;
    sub_41670(v21, v22);
  }

  (*(*(v0 + 8312) + 32))(*(v0 + 8168), *(v0 + 8360), *(v0 + 8264));
  v17 = sub_87008;
  v18 = v0 + 16;
  v19 = v0 + 696;
  v20 = v0 + 8320;
LABEL_10:

  return _swift_asyncLet_finish(v18, v19, v17, v20);
}

uint64_t sub_87024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_870BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8715C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_871E0()
{
  sub_87FD4(v0 + 7640);

  sub_2BF8((v0 + 8088));

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_87274, v0 + 8128);
}

uint64_t sub_87290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87314()
{
  sub_87FD4(v0 + 7640);
  sub_2BF8((v0 + 8088));

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_87394, v0 + 8176);
}

uint64_t sub_873B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87434()
{

  sub_87FD4(v0 + 7640);

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_874B0, v0 + 8224);
}

uint64_t sub_874CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87550()
{

  sub_87FD4(v0 + 7640);

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_875EC, v0 + 8272);
}

uint64_t sub_87608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_876A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_877CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_877EC, 0, 0);
}

uint64_t sub_877EC()
{
  v1 = v0[3];
  v2 = v1[20];
  v3 = v1[21];
  sub_2698(v1 + 17, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_8791C;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_8791C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_87A10()
{
  sub_1B3EF4(1);
  v11 = [objc_opt_self() defaultManager];
  v0 = sub_1B4794();
  v1 = [v11 fileExistsAtPath:v0];

  if (v1)
  {
    v2 = sub_1B4794();

    v12 = 0;
    v3 = [v11 removeItemAtPath:v2 error:&v12];

    if (v3)
    {
      v4 = v12;
    }

    else
    {
      v5 = v12;
      sub_1B3E64();

      swift_willThrow();
      if (qword_228330 != -1)
      {
        swift_once();
      }

      v6 = qword_22E378;
      v7 = sub_1B4D94();
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BCA80;
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_2B0C(&qword_229560, &unk_1BFC70);
      sub_1B51F4();
      v9 = v12;
      v10 = v13;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_76888();
      *(v8 + 32) = v9;
      *(v8 + 40) = v10;
      sub_1B4614("Unable to clear cache: %{public}@", 33, 2, &dword_0, v6, v7, v8);
    }
  }

  else
  {
  }
}

uint64_t sub_87CAC()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  v1 = OBJC_IVAR____TtC20BooksPersonalization32UserEncodingInputFeaturesService_cachePath;
  v2 = sub_1B3F34();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserEncodingInputFeaturesService(uint64_t a1)
{
  result = qword_22A560;
  if (!qword_22A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_87DBC(uint64_t a1)
{
  result = sub_1B3F34();
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

uint64_t sub_87E5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226C;

  return sub_877CC(a1, v1);
}

uint64_t sub_87EF8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_87F10()
{
  result = qword_22A608;
  if (!qword_22A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A608);
  }

  return result;
}

uint64_t sub_87F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22A610, &qword_1CF5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87FD4(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A610, &qword_1CF5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_8803C()
{
  result = qword_22A618;
  if (!qword_22A618)
  {
    sub_1B45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A618);
  }

  return result;
}

unint64_t sub_880A8()
{
  result = qword_22A620;
  if (!qword_22A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A620);
  }

  return result;
}

char *sub_880FC()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
      v11 = *(v10 + 16);
      v12 = *(v8 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v13 > *(v8 + 3) >> 1)
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_33128(result, v14, 1, v8);
        v8 = result;
      }

      v4 &= v4 - 1;
      if (*(v10 + 16))
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v11)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = *(v8 + 2);
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_34;
          }

          *(v8 + 2) = v17;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_32;
        }
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v18 = *(v8 + 2);
    if (v18)
    {
      sub_3741C(0, v18, 0);
      v19 = _swiftEmptyArrayStorage[2];
      v20 = 32;
      do
      {
        v21 = *&v8[v20];
        v22 = _swiftEmptyArrayStorage[3];
        if (v19 >= v22 >> 1)
        {
          sub_3741C((v22 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        _swiftEmptyArrayStorage[v19 + 4] = v21;
        v20 += 568;
        ++v19;
        --v18;
      }

      while (v18);
    }
  }

  v23 = sub_40854(_swiftEmptyArrayStorage);

  return v23;
}

uint64_t sub_8836C(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v33 = v3;
  while (v6)
  {
LABEL_11:
    v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v11 = *a2;
    v12 = *(*a2 + 16);
    if (v12)
    {
      v13 = sub_43124(v10);
      if (v14)
      {
        v12 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v12 = 0;
      }
    }

    v15 = v12 + 1;
    if (v12 == -1)
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a2;
    v35 = *a2;
    v18 = a2;
    *a2 = 0x8000000000000000;
    v19 = v10;
    v20 = sub_43124(v10);
    v22 = *(v17 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_29;
    }

    v26 = v21;
    if (*(v17 + 24) < v25)
    {
      sub_17D544(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_43124(v19);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      v28 = v35;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v31 = v20;
    sub_18535C();
    v20 = v31;
    v28 = v35;
    if (v26)
    {
LABEL_4:
      *(v28[7] + 8 * v20) = v15;
      goto LABEL_5;
    }

LABEL_22:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    *(v28[6] + 8 * v20) = v19;
    *(v28[7] + 8 * v20) = v15;
    v29 = v28[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_30;
    }

    v28[2] = v30;
LABEL_5:
    v6 &= v6 - 1;
    a2 = v18;
    *v18 = v28;

    v3 = v33;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_885C8(char *a1, const void *a2)
{
  memcpy(__dst, a2, 0x16BuLL);
  v103 = _swiftEmptyDictionarySingleton;
  v3 = *(a1 + 2);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_3:
    v88 = v5;
    sub_71C74(__dst, v102);
    *&v96 = _swiftEmptyArrayStorage;
    sub_375F8(0, v3, 0);
    v6 = 0;
    v92 = v96;
    v89 = a1;
    v90 = a1 + 32;
    v7 = v103;
    while (2)
    {
      v8 = v6;
      v9 = &v90[64 * v6];
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v8 + 1;
      v13 = *(v9 + 3);
      *&v102[32] = *(v9 + 2);
      *&v102[48] = v13;
      *v102 = v10;
      *&v102[16] = v11;
      *v101 = v10;
      *&v101[16] = v11;
      *&v101[32] = *&v102[32];
      *&v101[48] = v13;
      sub_42BA4(v102, v100);
      v14 = sub_880FC();
      v15 = v14;
      v16 = 0;
      v4 = v14 + 56;
      v17 = 1 << v14[32];
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v14 + 7);
      v20 = *&v102[56];
      v21 = (v17 + 63) >> 6;
      while (v19)
      {
LABEL_14:
        v23 = 0.0;
        if (v7[2])
        {
          v24 = sub_43124(*(*(v15 + 6) + ((v16 << 9) | (8 * __clz(__rbit64(v19))))));
          if (v25)
          {
            v23 = *(v7[7] + 8 * v24);
          }
        }

        v19 &= v19 - 1;
        v20 = v20 * pow(__dst[34], v23);
      }

      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if (v22 >= v21)
        {
          break;
        }

        v19 = *&v4[8 * v22];
        ++v16;
        if (v19)
        {
          v16 = v22;
          goto LABEL_14;
        }
      }

      v91 = v12;
      v26 = v3;

      v27 = *v102;
      v28 = v102[8];
      v29 = *&v102[16];
      v30 = v102[24];
      v31 = *&v102[32];
      v32 = *&v102[40];
      v33 = v92;
      *&v96 = v92;
      v35 = *(v92 + 16);
      v34 = *(v92 + 24);
      if (v35 >= v34 >> 1)
      {
        v93 = *&v102[40];
        sub_375F8((v34 > 1), v35 + 1, 1);
        v32 = v93;
        v33 = v96;
      }

      *(v33 + 16) = v35 + 1;
      v92 = v33;
      v36 = v33 + (v35 << 6);
      *(v36 + 32) = v27;
      *(v36 + 40) = v28;
      v37 = *&v100[3];
      *(v36 + 41) = *v100;
      *(v36 + 44) = v37;
      *(v36 + 48) = v29;
      *(v36 + 56) = v30;
      v38 = v95[0];
      *(v36 + 60) = *(v95 + 3);
      *(v36 + 57) = v38;
      *(v36 + 64) = v31;
      *(v36 + 72) = v32;
      *(v36 + 88) = v20;
      v6 = v91;
      if (v91 != v26)
      {
        v3 = v26;
        continue;
      }

      break;
    }

    result = sub_71DC0(__dst);
    v5 = v88;
    a1 = v89;
    v40 = v92;
    v41 = *(v92 + 16);
    if (v41)
    {
      while (1)
      {
        v42 = v40[3];
        *v102 = v40[2];
        *&v102[16] = v42;
        v43 = v40[5];
        *&v102[32] = v40[4];
        *&v102[48] = v43;
        sub_42BA4(v102, v100);
        *v101 = *v102;
        *&v101[16] = *&v102[16];
        *&v101[32] = *&v102[32];
        *&v101[48] = *&v102[48];
        v44 = *v102;
        v105 = *&v102[8];
        v106 = *&v102[24];
        v107 = *&v102[40];
        v108 = *&v102[56];
        if (v41 != 1)
        {
          break;
        }

LABEL_25:

        *v100 = v44;
        *&v100[8] = v105;
        *&v100[24] = v106;
        *&v100[40] = v107;
        *&v100[56] = v108;
        v45 = sub_880FC();
        sub_8836C(v45, &v103);

        sub_42BA4(v101, v100);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_3349C(0, *(v5 + 2) + 1, 1, v5);
          v5 = result;
        }

        v47 = *(v5 + 2);
        v46 = *(v5 + 3);
        if (v47 >= v46 >> 1)
        {
          result = sub_3349C((v46 > 1), v47 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 2) = v47 + 1;
        v48 = &v5[64 * v47];
        *(v48 + 4) = v44;
        v49 = v105;
        v50 = v106;
        v51 = v107;
        *(v48 + 11) = v108;
        *(v48 + 72) = v51;
        *(v48 + 56) = v50;
        *(v48 + 40) = v49;
        v52 = *(a1 + 2);
        if (v52)
        {
          v53 = 0;
          v54 = 96;
          v55 = 32;
          while (*&a1[v55] != v44)
          {
            ++v53;
            v55 += 64;
            v54 += 64;
            if (v52 == v53)
            {
              v53 = *(a1 + 2);
              goto LABEL_62;
            }
          }

          v62 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_85;
          }

          result = sub_42BA4(v101, v100);
          v63 = *(a1 + 2);
          while (v62 != v63)
          {
            if (v62 >= v63)
            {
              goto LABEL_77;
            }

            v64 = &a1[v54];
            if (*&a1[v54] != *v101)
            {
              if (v62 != v53)
              {
                if (v53 >= v63)
                {
                  goto LABEL_78;
                }

                v65 = &a1[64 * v53 + 32];
                v66 = *v65;
                v67 = *(v65 + 1);
                v68 = *(v65 + 3);
                v98 = *(v65 + 2);
                v99 = v68;
                v96 = v66;
                v97 = v67;
                v69 = *v64;
                v70 = *(v64 + 1);
                v71 = *(v64 + 3);
                *&v100[32] = *(v64 + 2);
                *&v100[48] = v71;
                *v100 = v69;
                *&v100[16] = v70;
                sub_42BA4(&v96, v95);
                sub_42BA4(v100, v95);
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_56AA4(a1);
                  a1 = result;
                }

                if (v53 >= *(a1 + 2))
                {
                  goto LABEL_79;
                }

                v72 = &a1[64 * v53];
                v73 = *(v72 + 2);
                v74 = *(v72 + 3);
                v75 = *(v72 + 5);
                v94[2] = *(v72 + 4);
                v94[3] = v75;
                v94[0] = v73;
                v94[1] = v74;
                v76 = *v100;
                v77 = *&v100[16];
                v78 = *&v100[48];
                *(v72 + 4) = *&v100[32];
                *(v72 + 5) = v78;
                *(v72 + 2) = v76;
                *(v72 + 3) = v77;
                result = sub_43FF4(v94);
                if (v62 >= *(a1 + 2))
                {
                  goto LABEL_80;
                }

                v79 = &a1[v54];
                v80 = *&a1[v54];
                v81 = *&a1[v54 + 16];
                v82 = *&a1[v54 + 48];
                v95[2] = *&a1[v54 + 32];
                v95[3] = v82;
                v95[0] = v80;
                v95[1] = v81;
                v83 = v96;
                v84 = v97;
                v85 = v99;
                *(v79 + 2) = v98;
                *(v79 + 3) = v85;
                *v79 = v83;
                *(v79 + 1) = v84;
                result = sub_43FF4(v95);
              }

              ++v53;
            }

            ++v62;
            v63 = *(a1 + 2);
            v54 += 64;
          }

          result = sub_43FF4(v101);
          v52 = *(a1 + 2);
          if (v52 < v53)
          {
            goto LABEL_82;
          }

          if (v53 < 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v53 = 0;
        }

LABEL_62:
        if (__OFADD__(v52, v53 - v52))
        {
          goto LABEL_84;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v53 > *(a1 + 3) >> 1)
        {
          if (v52 <= v53)
          {
            v87 = v53;
          }

          else
          {
            v87 = v52;
          }

          a1 = sub_3349C(isUniquelyReferenced_nonNull_native, v87, 1, a1);
          v104 = a1;
        }

        sub_5EC58(v53, v52, 0);
        result = sub_43FF4(v101);
        if (!*(a1 + 2))
        {

          goto LABEL_74;
        }

        v3 = *(a1 + 2);
        if (v3)
        {
          goto LABEL_3;
        }

        v40 = _swiftEmptyArrayStorage;
        v41 = _swiftEmptyArrayStorage[2];
        if (!v41)
        {
          goto LABEL_81;
        }
      }

      v56 = v40 + 6;
      v57 = 1;
      result = v40;
      while (v57 < *(result + 16))
      {
        v58 = *v56;
        v59 = v56[1];
        v60 = v56[3];
        *&v100[32] = v56[2];
        *&v100[48] = v60;
        *v100 = v58;
        *&v100[16] = v59;
        if (*&v101[56] < *(&v60 + 1) || (*(&v60 + 1) == *&v101[56] ? (v61 = *v100 >= v44) : (v61 = 1), !v61))
        {
          sub_42BA4(v100, &v96);
          sub_43FF4(v101);
          result = v40;
          *v101 = *v100;
          *&v101[16] = *&v100[16];
          *&v101[32] = *&v100[32];
          *&v101[48] = *&v100[48];
        }

        ++v57;
        v44 = *v101;
        v105 = *&v101[8];
        v106 = *&v101[24];
        v107 = *&v101[40];
        v108 = *&v101[56];
        v56 += 4;
        if (v41 == v57)
        {
          goto LABEL_25;
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
    }

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

  else
  {
LABEL_73:
    v5 = v4;
LABEL_74:

    return v5;
  }

  return result;
}

uint64_t sub_88CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_88D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_88DE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  v4 = type metadata accessor for BooksBackendSeedBasedRecommendationService();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = v4;
  v14 = &off_2203D8;
  *&v12 = result;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v9)
  {
    v6 = type metadata accessor for CombinedSeedBasedRecommendationService();
    v7 = swift_allocObject();
    sub_264B8(&v12, v7 + 16);
    sub_264B8(&v10, v7 + 56);
    result = sub_264B8(&v8, v7 + 96);
    a2[3] = v6;
    a2[4] = &off_221340;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_88F64(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A770, &qword_1C0558);
  result = sub_1B4264();
  if (!v36)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7F0, &unk_1C05F0);
  result = sub_1B4264();
  if (!v34)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v32)
  {
    v3 = sub_40474(v35, v36);
    v26[1] = v26;
    __chkstk_darwin(v3);
    v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = sub_40474(v33, v34);
    v26[0] = v26;
    __chkstk_darwin(v7);
    v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v5;
    v12 = *v9;
    v13 = type metadata accessor for BooksBackendDiversifier();
    v30[3] = v13;
    v30[4] = &off_218F58;
    v30[0] = v11;
    v14 = type metadata accessor for SeedBasedRecommendationServiceResolver();
    v29 = &off_220D90;
    v28 = v14;
    v27[0] = v12;
    type metadata accessor for SeedBasedSuggestionsService();
    v15 = swift_allocObject();
    v16 = sub_40474(v30, v13);
    __chkstk_darwin(v16);
    v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_40474(v27, v28);
    __chkstk_darwin(v20);
    v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v18;
    v25 = *v22;
    v15[5] = v13;
    v15[6] = &off_218F58;
    v15[2] = v24;
    v15[10] = v14;
    v15[11] = &off_220D90;
    v15[7] = v25;
    sub_264B8(&v31, (v15 + 12));
    sub_2BF8(v27);
    sub_2BF8(v30);
    sub_2BF8(v33);
    sub_2BF8(v35);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_89488()
{
  type metadata accessor for BooksBackendDiversifier();

  return swift_allocObject();
}

uint64_t sub_894BC()
{
  type metadata accessor for BooksBackendPostScorer();

  return swift_allocObject();
}

void *sub_894F0(void *a1)
{
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  v3 = v22;
  if (v22 == 4)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7A8, &qword_1C0598);
  result = sub_1B4264();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A798, &qword_1C0588);
  result = sub_1B4264();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2698(a1, a1[3]);
  type metadata accessor for BooksBackendPostScorer();
  result = sub_1B4254();
  if (result)
  {
    v4 = result;
    v5 = sub_40474(v20, v21);
    __chkstk_darwin(v5);
    v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for SeedBasedRecommendationRequestMapper();
    v17[3] = v10;
    v17[4] = &off_2215A8;
    v17[0] = v9;
    type metadata accessor for BooksBackendSeedBasedRecommendationService();
    v11 = swift_allocObject();
    v12 = sub_40474(v17, v10);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 80) = v10;
    *(v11 + 88) = &off_2215A8;
    *(v11 + 56) = v16;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = v3;
    sub_264B8(&v18, v11 + 96);
    *(v11 + 136) = v4;
    sub_2BF8(v17);
    sub_2BF8(v20);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_897E4()
{
  type metadata accessor for DelegatingBookScorer();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_89838@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2698(a1, a1[3]);
  v7 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_898BC()
{
  type metadata accessor for IdentityBookScorer();

  return swift_allocObject();
}

void *sub_898F0(void *a1)
{
  v2 = sub_1B4204();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D0, &qword_1C05D0);
  result = sub_1B4264();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7E0, &qword_1C05E0);
  result = sub_1B4264();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7E8, &qword_1C05E8);
  result = sub_1B4264();
  if (v9)
  {
    sub_1B41F4();
    type metadata accessor for BookHistoryService(0);
    v7 = swift_allocObject();
    sub_264B8(&v14, v7 + 16);
    sub_264B8(&v12, v7 + 56);
    sub_264B8(&v10, v7 + 96);
    sub_264B8(&v8, v7 + 136);
    (*(v3 + 32))(v7 + OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone, v5, v2);
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_89B7C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  result = sub_1B4264();
  if (v14)
  {
    sub_2698(a1, a1[3]);
    sub_2B0C(a2, a3);
    result = sub_1B4264();
    if (v12[3])
    {
      a4(0);
      v11 = swift_allocObject();
      sub_264B8(&v13, v11 + 16);
      a5(v12, v11 + 56);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_89C8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  if (v4)
  {
    a2[3] = &type metadata for URLSessionTransport;
    a2[4] = &protocol witness table for URLSessionTransport;
    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_89D14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() sharedSession];
  sub_2B0C(&qword_22A7C8, &qword_1C05C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BFC80;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7A0, &qword_1C0590);
  result = sub_1B4244();
  if (v10)
  {
    sub_264B8(&v9, v5 + 32);
    sub_2698(a1, a1[3]);
    result = sub_1B4244();
    if (v8)
    {
      result = sub_264B8(&v7, v5 + 72);
      *a2 = v4;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_89E70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7B0, &unk_1C05A0);
  result = sub_1B4264();
  if (v19)
  {
    v4 = sub_40474(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SHA256Base64SigningService();
    v17[3] = v9;
    v17[4] = &off_218B90;
    v17[0] = v8;
    v10 = type metadata accessor for SignerMiddleware();
    v11 = swift_allocObject();
    v12 = sub_40474(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_218B90;
    v11[2] = v16;
    sub_2BF8(v17);
    result = sub_2BF8(v18);
    a2[3] = v10;
    a2[4] = &off_2204A0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_8A094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7C0, &qword_1C05C0);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for ExperimentIDsMiddleware();
    v5 = swift_allocObject();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_2213B0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_8A140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for SeedBasedRecommendationRequestMapper();
    v5 = swift_allocObject();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_2215A8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_8A1EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7B8, &unk_1C05B0);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for SHA256Base64SigningService();
    v5 = swift_allocObject();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_218B90;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_8A298(void *a1)
{
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  v3 = v13;
  if (v13 == 255)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v11;
  v5 = v12;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A798, &qword_1C0588);
  result = sub_1B4264();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v8)
  {
    type metadata accessor for BooksBackendPersonalizationMetadataService();
    v6 = swift_allocObject();
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
    *(v6 + 64) = v3 & 1;
    sub_264B8(&v9, v6 + 72);
    sub_264B8(&v7, v6 + 112);
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_8A3F0(void *a1)
{
  sub_2698(a1, a1[3]);
  v2 = type metadata accessor for BooksBackendPersonalizationMetadataService();
  result = sub_1B4254();
  if (result)
  {
    v5[3] = v2;
    v5[4] = &off_21F310;
    v5[0] = result;
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v4[3])
    {
      type metadata accessor for BooksPersonalizationMetadataCache();
      swift_allocObject();
      return BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(v5, 0, 0, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_8A4E0(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A790, &qword_1C0580);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_212DB8 + v4++ + 32);
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v23)
    {
      break;
    }

    sub_264B8(&v22, v24);
    swift_beginAccess();
    sub_404C4(v24, &v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 16);
    *(a1 + 16) = 0x8000000000000000;
    v10 = sub_3AD4C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_17F4E8(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_3AD4C(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v18 = v9;
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v10;
    sub_1861C4();
    v10 = v21;
    v18 = v9;
    if (v16)
    {
LABEL_2:
      v5 = (v18[7] + 40 * v10);
      sub_2BF8(v5);
      sub_264B8(&v22, v5);
      goto LABEL_3;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + v10) = v7;
    sub_264B8(&v22, v18[7] + 40 * v10);
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
LABEL_3:
    *(a1 + 16) = v18;
    swift_endAccess();
    result = sub_2BF8(v24);
    if (v4 == 3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_8A7A8(uint64_t a1)
{
  v2 = sub_1B4274();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22A758, &unk_1C0540);
  sub_1B4304();

  v8 = enum case for Scope.singleton(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Scope.singleton(_:), v4);
  sub_1B4214();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22A768, &qword_1C0550);
  sub_1B4304();

  v33 = v9;
  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22A770, &qword_1C0558);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  v11 = a1;
  sub_1B4284();
  v29 = sub_2B0C(&qword_22A778, &unk_1C0560);
  sub_1B4304();

  v12 = v8;
  v34 = v8;
  v13 = v8;
  v14 = v33;
  v33(v7, v13, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  type metadata accessor for SeedBasedSuggestionsService();
  sub_1B42F4();

  v14(v7, v12, v4);
  v28[1] = v5 + 104;
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  sub_1B4304();

  v15 = v34;
  v14(v7, v34, v4);
  sub_1B4214();

  v16 = v10;
  v10(v7, v4);
  v17 = v11;
  sub_1B4284();
  sub_1B4304();

  v18 = v33;
  v33(v7, v15, v4);
  sub_1B4214();

  v16(v7, v4);
  v19 = v16;
  sub_1B4284();
  sub_2B0C(&qword_22A780, &qword_1C0570);
  sub_1B4304();

  v20 = v34;
  v18(v7, v34, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22A788, &qword_1C0578);
  sub_1B4304();

  v18(v7, v20, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BookHistorySeedBookService();
  sub_1B42F4();

  v18(v7, v20, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BooksBackendDiversifier();
  sub_1B42F4();

  v18(v7, v20, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BooksBackendPostScorer();
  sub_1B42F4();

  v18(v7, v20, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BooksBackendSeedBasedRecommendationService();
  sub_1B42F4();

  v18(v7, v20, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  v29 = type metadata accessor for DelegatingBookScorer();
  sub_1B42F4();

  v21 = v34;
  v18(v7, v34, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22A790, &qword_1C0580);
  sub_1B4304();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for IdentityBookScorer();
  sub_1B42F4();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BookHistoryService(0);
  sub_1B42F4();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BookHistoryServiceStressTest();
  sub_1B42F4();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22A798, &qword_1C0588);
  sub_1B4304();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  v28[2] = v17;
  sub_1B4294();
  sub_1B4304();

  v18(v7, v21, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22A7A0, &qword_1C0590);
  sub_1B4304();

  v22 = v34;
  v18(v7, v34, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v23 = v33;
  v33(v7, v22, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22A7A8, &qword_1C0598);
  sub_1B4304();

  v23(v7, v22, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22A7B0, &unk_1C05A0);
  sub_1B4304();

  v23(v7, v22, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BooksBackendPersonalizationMetadataService();
  sub_1B42F4();

  v23(v7, v22, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B4294();
  type metadata accessor for BooksPersonalizationMetadataCache();
  sub_1B42F4();

  v23(v7, v34, v4);
  sub_1B4214();

  v19(v7, v4);
  sub_1B42A4();
  sub_2698(v35, v35[3]);
  v25 = v30;
  v24 = v31;
  v26 = v32;
  (*(v31 + 104))(v30, enum case for CallbackScope.any(_:), v32);
  sub_1B4314();
  (*(v24 + 8))(v25, v26);
  return sub_2BF8(v35);
}

uint64_t CollectionRecommendationRequest.userInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_OWORD *ScoredAuthor.init(author:score:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 16) = a3;
  return result;
}

uint64_t sub_8B9A0()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x726F68747561;
  }
}

uint64_t sub_8B9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_8BAA8(uint64_t a1)
{
  v2 = sub_8BCC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8BAE4(uint64_t a1)
{
  v2 = sub_8BCC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredAuthor.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22A7F8, &qword_1C0600);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  sub_2698(a1, a1[3]);
  sub_8BCC0();

  sub_1B5884();
  v13 = v7;
  v14 = v8;
  v12 = 0;
  sub_8BD14();
  v9 = v11;
  sub_1B5544();

  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_1B5514();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_8BCC0()
{
  result = qword_22A800;
  if (!qword_22A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A800);
  }

  return result;
}

unint64_t sub_8BD14()
{
  result = qword_22A808;
  if (!qword_22A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A808);
  }

  return result;
}

uint64_t ScoredAuthor.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A810, &qword_1C0608);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_2698(a1, a1[3]);
  sub_8BCC0();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v14[15] = 0;
  sub_8BF48();
  sub_1B5404();
  v10 = v15;
  v9 = v16;
  LOBYTE(v15) = 1;
  sub_1B53D4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 1) = v9;
  *(a2 + 2) = v12;

  sub_2BF8(a1);
}

unint64_t sub_8BF48()
{
  result = qword_22A818;
  if (!qword_22A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A818);
  }

  return result;
}

unint64_t MediaTypeRecommendationServiceError.description.getter()
{
  v1 = *v0;
  sub_1B5084(32);

  v2 = 0xD00000000000002FLL;
  v3 = "a paid storefront";
  v4 = "d Recommendations disabled";
  v5 = 0xD00000000000005ALL;
  if (v1 == 2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "No access to recommendations; ";
  }

  if (v1)
  {
    v2 = 0xD000000000000021;
    v3 = "user is under thirteen";
  }

  if (v1 <= 1)
  {
    v6._countAndFlagsBits = v2;
  }

  else
  {
    v6._countAndFlagsBits = v5;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v6._object = (v7 | 0x8000000000000000);
  sub_1B48D4(v6);

  return 0xD00000000000001ELL;
}

uint64_t AuthorRecommendationSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_212E08;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_8C118@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_212E68;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_8C180()
{
  result = qword_22A820;
  if (!qword_22A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A820);
  }

  return result;
}

unint64_t sub_8C1D8()
{
  result = qword_22A828;
  if (!qword_22A828)
  {
    sub_1CC1C(&qword_22A830, &qword_1C0768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A828);
  }

  return result;
}

unint64_t sub_8C240()
{
  result = qword_22A838;
  if (!qword_22A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A838);
  }

  return result;
}

uint64_t sub_8C294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_8C2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AuthorRecommendationServiceType.fetchRecommendedAuthors(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

unint64_t sub_8C4B0()
{
  result = qword_22A840;
  if (!qword_22A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A840);
  }

  return result;
}

unint64_t sub_8C508()
{
  result = qword_22A848;
  if (!qword_22A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A848);
  }

  return result;
}

unint64_t sub_8C560()
{
  result = qword_22A850;
  if (!qword_22A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A850);
  }

  return result;
}

uint64_t Book.Metadata.genreIDs.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_28:
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
      }

      v6 = *(v4 - 1);
      v7 = *v4;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      v9 = (inited + 16);
      *(inited + 32) = v6;
      v10 = *(v7 + 16);

      if (v10)
      {
        v20 = sub_33008(&dword_0 + 1, v10 + 1, 1, inited);
        if (!*(v7 + 16))
        {

          __break(1u);
          return result;
        }

        inited = v20;
        v9 = (v20 + 16);
        v21 = *(v20 + 2);
        if ((*(v20 + 3) >> 1) - v21 < v10)
        {
          goto LABEL_32;
        }

        memcpy(&v20[8 * v21 + 32], (v7 + 32), 8 * v10);

        v22 = *(inited + 16);
        v11 = v22 + v10;
        if (__OFADD__(v22, v10))
        {
          goto LABEL_33;
        }

        *v9 = v11;
      }

      else
      {

        v11 = *v9;
      }

      v12 = *(v5 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v5 + 3) >> 1)
      {
        if (!*v9)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v5 = sub_33008(isUniquelyReferenced_nonNull_native, v15, 1, v5);
        if (!*v9)
        {
LABEL_3:

          if (v11)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }
      }

      v16 = *(v5 + 2);
      if ((*(v5 + 3) >> 1) - v16 < v11)
      {
        goto LABEL_30;
      }

      memcpy(&v5[8 * v16 + 32], (inited + 32), 8 * v11);

      if (v11)
      {
        v17 = *(v5 + 2);
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_31;
        }

        *(v5 + 2) = v19;
      }

LABEL_4:
      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_26:
  v23 = sub_40854(v5);

  return v23;
}

uint64_t Book.Metadata.SeriesMembership.init(seriesID:ordinal:seriesMetadata:mappedSeriesID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = a2;
  *(a6 + 8) = result;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_8C840()
{
  v1 = 0x6C616E6964726FLL;
  v2 = 0x654D736569726573;
  if (*v0 != 2)
  {
    v2 = 0x655364657070616DLL;
  }

  if (*v0)
  {
    v1 = 0x4449736569726573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_8C8D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_8F280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_8C8FC(uint64_t a1)
{
  v2 = sub_8E398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8C938(uint64_t a1)
{
  v2 = sub_8E398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.SeriesMembership.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A858, &qword_1C09C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v13 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  sub_2698(a1, a1[3]);
  sub_8E398();
  sub_1B5884();
  v18 = 0;
  sub_1B5534();
  if (!v2)
  {
    v9 = v12;
    v17 = 1;
    sub_1B5574();
    v16 = v9;
    v15 = 2;
    sub_8E3EC();
    sub_1B5544();
    v14 = 3;
    sub_1B54E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void Book.Metadata.SeriesMembership.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B5804(*v0);
  sub_1B5834(v1);
  sub_1B5814(v2);
  if (v4 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v3);
  }
}

Swift::Int Book.Metadata.SeriesMembership.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5834(v2);
  sub_1B5814(v3);
  if (v5 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v4);
  }

  return sub_1B5844();
}

uint64_t Book.Metadata.SeriesMembership.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A870, &qword_1C09D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_2698(a1, a1[3]);
  sub_8E398();
  sub_1B5864();
  if (!v2)
  {
    v22 = 0;
    v9 = sub_1B53F4();
    v21 = 1;
    v10 = sub_1B5434();
    v19 = 2;
    sub_8E440();
    sub_1B5404();
    v17 = v20;
    v18 = 3;
    v12 = sub_1B53A4();
    v13 = v8;
    v15 = v14;
    (*(v6 + 8))(v13, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v17;
    *(a2 + 24) = v12;
    *(a2 + 32) = v15 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_8CF24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_1B57F4();
  sub_1B5804(v2);
  sub_1B5834(v3);
  sub_1B5814(v4);
  if (v6 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v5);
  }

  return sub_1B5844();
}

uint64_t sub_8CFC8()
{
  if (*v0)
  {
    return 1752457584;
  }

  else
  {
    return 0x444965726E6567;
  }
}

uint64_t sub_8CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965726E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_8D0D8(uint64_t a1)
{
  v2 = sub_8E494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D114(uint64_t a1)
{
  v2 = sub_8E494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.GenreTreeNode.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A880, &unk_1C09D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  sub_2698(a1, a1[3]);
  sub_8E494();
  sub_1B5884();
  v11 = 0;
  sub_1B5574();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    sub_61BC8(&qword_2298A8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    sub_1B5544();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Book.Metadata.GenreTreeNode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A890, &qword_1C09E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_2698(a1, a1[3]);
  sub_8E494();
  sub_1B5864();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B5434();
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    v13 = 1;
    sub_61BC8(&qword_2298B8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_2BF8(a1);
}

uint64_t sub_8D534(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_80F4();
  }

  else
  {
    return 0;
  }
}

__n128 Book.Metadata.seriesMembership.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Book.Metadata.init(authorIDs:mediaType:leafGenres:mappedAssetID:seriesMembership:editions:)@<Q0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = *a6;
  v9 = *(a6 + 16);
  *(a8 + 40) = *a6;
  v10 = *(a6 + 32);
  *a8 = *a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 56) = v9;
  *(a8 + 72) = v10;
  *(a8 + 80) = a7;
  return result;
}

uint64_t sub_8D5B0()
{
  v1 = *v0;
  v2 = 0x707954616964656DLL;
  v3 = 0x734164657070616DLL;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974696465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726E65476661656CLL;
  if (v1 != 1)
  {
    v5 = 0x4449726F68747561;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_8D684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_8F3F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_8D6AC(uint64_t a1)
{
  v2 = sub_8E708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D6E8(uint64_t a1)
{
  v2 = sub_8E708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A898, &qword_1C09F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v23 = *(v1 + 2);
  v24 = v9;
  v22 = *(v1 + 3);
  v28 = v1[32];
  v10 = *(v1 + 40);
  v20 = *(v1 + 56);
  v21 = v10;
  v19 = v1[72];
  v11 = *(v1 + 10);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  sub_2698(v13, v12);
  sub_8E708();
  sub_1B5884();
  LOBYTE(v25) = v8;
  v29 = 0;
  sub_8E75C();
  sub_1B5544();
  if (!v2)
  {
    v16 = v23;
    *&v25 = v24;
    v29 = 1;
    sub_2B0C(&qword_22A8B0, &unk_1C09F8);
    sub_8E918(&qword_22A8B8, sub_8E7B0, &protocol conformance descriptor for <A> [A]);
    sub_1B5544();
    *&v25 = v16;
    v29 = 2;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    LOBYTE(v25) = 3;
    sub_1B54E4();
    v26 = v20;
    v25 = v21;
    v27 = v19;
    v29 = 4;
    sub_8E870();
    sub_1B54B4();
    *&v25 = v11;
    v29 = 5;
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    sub_61BC8(&qword_2298A8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    sub_1B54B4();
  }

  return (*(v5 + 8))(v7, v15);
}

void Book.Metadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v8 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  v11 = *(v2 + 80);
  sub_1B4884();

  sub_1C578(a1, v4);
  sub_8E228(a1, v5);
  if (v7 == 1)
  {
    sub_1B5814(0);
    if (v10 == 2)
    {
LABEL_6:
      sub_1B5814(0);
      if (v11)
      {
        goto LABEL_7;
      }

LABEL_12:
      sub_1B5814(0);
      return;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v6);
    if (v10 == 2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5814(1u);
  sub_1B5804(v9);
  sub_1B5834(v8);
  sub_1B5814(v10 & 1);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_1B5814(1u);
  sub_1B5834(v15);
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_1B5814(1u);
  sub_1B5804(*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      sub_1B5834(v14);
      --v12;
    }

    while (v12);
  }
}

Swift::Int Book.Metadata.hashValue.getter()
{
  sub_1B57F4();
  Book.Metadata.hash(into:)(v1);
  return sub_1B5844();
}

uint64_t Book.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A8D8, &qword_1C0A08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_2698(a1, a1[3]);
  sub_8E708();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v31) = 0;
  sub_8E8C4();
  sub_1B5404();
  v9 = v37;
  sub_2B0C(&qword_22A8B0, &unk_1C09F8);
  LOBYTE(v31) = 1;
  sub_8E918(&qword_22A8E8, sub_8E990, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v30 = v37;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v31) = 2;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v29 = v37;
  LOBYTE(v37) = 3;
  v28 = sub_1B53A4();
  v49 = v10 & 1;
  LOBYTE(v31) = 4;
  sub_8E9E4();
  sub_1B5374();
  v11 = v37;
  v27 = v38;
  v26 = v39;
  v25 = v40;
  v24 = v41;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  v50 = 5;
  sub_61BC8(&qword_2298B8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5374();
  (*(v6 + 8))(v8, v5);
  v12 = v48;
  LOBYTE(v31) = v9;
  *(&v31 + 1) = v30;
  v23 = v11;
  *&v32 = v29;
  *(&v32 + 1) = v28;
  v22 = v49;
  LOBYTE(v33) = v49;
  v13 = v27;
  *(&v33 + 1) = v11;
  *&v34 = v27;
  v14 = v26;
  v15 = v25;
  *(&v34 + 1) = v26;
  *&v35 = v25;
  v16 = v24;
  BYTE8(v35) = v24;
  v36 = v48;
  *(a2 + 80) = v48;
  v17 = v35;
  v19 = v32;
  v18 = v33;
  *a2 = v31;
  *(a2 + 16) = v19;
  *(a2 + 48) = v34;
  *(a2 + 64) = v17;
  *(a2 + 32) = v18;
  sub_5EDD8(&v31, &v37);
  sub_2BF8(a1);
  LOBYTE(v37) = v9;
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v22;
  v42 = v23;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v12;
  return sub_85554(&v37);
}

Swift::Int sub_8E1EC(uint64_t a1)
{
  sub_1B57F4();
  Book.Metadata.hash(into:)(v2);
  return sub_1B5844();
}

void sub_8E228(uint64_t a1, uint64_t a2)
{
  sub_1B5844();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      sub_1B5804(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v3 ^= sub_1B57E4();
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
}

uint64_t _s20BooksPersonalization4BookV8MetadataV16SeriesMembershipV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      if ((*(a2 + 32) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 24) == *(a2 + 24))
      {
        v5 = *(a2 + 32);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_8E398()
{
  result = qword_22A860;
  if (!qword_22A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A860);
  }

  return result;
}

unint64_t sub_8E3EC()
{
  result = qword_22A868;
  if (!qword_22A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A868);
  }

  return result;
}

unint64_t sub_8E440()
{
  result = qword_22A878;
  if (!qword_22A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A878);
  }

  return result;
}

unint64_t sub_8E494()
{
  result = qword_22A888;
  if (!qword_22A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A888);
  }

  return result;
}

BOOL _s20BooksPersonalization4BookV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v22 = *(a1 + 40);
  v20 = *(a1 + 48);
  v26 = *(a1 + 24);
  v27 = *(a1 + 56);
  v16 = *(a1 + 64);
  v18 = *(a1 + 72);
  v4 = *(a2 + 16);
  v24 = *(a1 + 80);
  v25 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *a1 == 0;
  v21 = *(a2 + 40);
  v19 = *(a2 + 48);
  if (*a1)
  {
    v7 = 0x6F6F626F69647561;
  }

  else
  {
    v7 = 0x6B6F6F6265;
  }

  v8 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (v6)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE90000000000006BLL;
  }

  v17 = *(a2 + 72);
  if (*a2)
  {
    v10 = 0x6F6F626F69647561;
  }

  else
  {
    v10 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v11 = 0xE90000000000006BLL;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v23 = *(a2 + 80);
  if (v7 == v10 && v9 == v11)
  {
  }

  else
  {
    v12 = sub_1B5604();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_9144() & 1) == 0 || (sub_2E0DC(v2, v4) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v26 == v25)
    {
      v13 = v5;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v27 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    return 0;
  }

  result = 0;
  if (v22 == v21 && v20 == v19 && ((v27 ^ v8) & 1) == 0)
  {
    if (v18)
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    result = 0;
    if ((v17 & 1) == 0 && v16 == v15)
    {
LABEL_28:
      if (v24)
      {
        return v23 && (sub_80F4() & 1) != 0;
      }

      return !v23;
    }
  }

  return result;
}

unint64_t sub_8E708()
{
  result = qword_22A8A0;
  if (!qword_22A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8A0);
  }

  return result;
}

unint64_t sub_8E75C()
{
  result = qword_22A8A8;
  if (!qword_22A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8A8);
  }

  return result;
}

unint64_t sub_8E7B0()
{
  result = qword_22A8C0;
  if (!qword_22A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8C0);
  }

  return result;
}

uint64_t sub_8E804(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_2292C8, &unk_1BCB00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8E870()
{
  result = qword_22A8D0;
  if (!qword_22A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8D0);
  }

  return result;
}

unint64_t sub_8E8C4()
{
  result = qword_22A8E0;
  if (!qword_22A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8E0);
  }

  return result;
}

uint64_t sub_8E918(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22A8B0, &unk_1C09F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8E990()
{
  result = qword_22A8F0;
  if (!qword_22A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8F0);
  }

  return result;
}

unint64_t sub_8E9E4()
{
  result = qword_22A900;
  if (!qword_22A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A900);
  }

  return result;
}

unint64_t sub_8EA3C()
{
  result = qword_22A908;
  if (!qword_22A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A908);
  }

  return result;
}

unint64_t sub_8EA94()
{
  result = qword_22A910;
  if (!qword_22A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A910);
  }

  return result;
}

unint64_t sub_8EAEC()
{
  result = qword_22A918;
  if (!qword_22A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A918);
  }

  return result;
}

__n128 sub_8EB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_8EB64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_8EBAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for BookHistory.CollectionAddition(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8EC24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_8EC78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookMetadataServiceType.fetchMetadataFor(bookIDs:audiobookIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BookMetadataServiceType.fetchMetadataFor(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

unint64_t sub_8EF6C()
{
  result = qword_22A920;
  if (!qword_22A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A920);
  }

  return result;
}

unint64_t sub_8EFC4()
{
  result = qword_22A928;
  if (!qword_22A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A928);
  }

  return result;
}

unint64_t sub_8F01C()
{
  result = qword_22A930;
  if (!qword_22A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A930);
  }

  return result;
}

unint64_t sub_8F074()
{
  result = qword_22A938;
  if (!qword_22A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A938);
  }

  return result;
}

unint64_t sub_8F0CC()
{
  result = qword_22A940;
  if (!qword_22A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A940);
  }

  return result;
}

unint64_t sub_8F124()
{
  result = qword_22A948;
  if (!qword_22A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A948);
  }

  return result;
}

unint64_t sub_8F17C()
{
  result = qword_22A950;
  if (!qword_22A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A950);
  }

  return result;
}

unint64_t sub_8F1D4()
{
  result = qword_22A958;
  if (!qword_22A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A958);
  }

  return result;
}

unint64_t sub_8F22C()
{
  result = qword_22A960;
  if (!qword_22A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A960);
  }

  return result;
}

uint64_t sub_8F280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449736569726573 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D736569726573 && a2 == 0xEE00617461646174 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655364657070616DLL && a2 == 0xEE00444973656972)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_8F3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726E65476661656CLL && a2 == 0xEA00000000007365 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726F68747561 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x734164657070616DLL && a2 == 0xED00004449746573 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D6600 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974696465 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

BooksPersonalization::Scorer_optional __swiftcall Scorer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212EC8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t sub_8F690()
{
  result = qword_22A968;
  if (!qword_22A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A968);
  }

  return result;
}

unint64_t sub_8F6F4()
{
  result = qword_22A970;
  if (!qword_22A970)
  {
    sub_1CC1C(&qword_22A978, &qword_1C1110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A970);
  }

  return result;
}

unint64_t sub_8F76C()
{
  result = qword_22A980;
  if (!qword_22A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A980);
  }

  return result;
}

uint64_t sub_8F880(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 1256) = v3;
  *(v4 + 1248) = a2;
  *(v4 + 1240) = a1;
  *(v4 + 1288) = *a3;
  return _swift_task_switch(sub_8F8B0, 0, 0);
}

uint64_t sub_8F8B0()
{
  v1 = *(v0 + 1256);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_3AD4C(*(v0 + 1288)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 1240);
    sub_404C4(*(v2 + 56) + 40 * v3, v0 + 1176);
    sub_43178((v0 + 1176), v0 + 1136);
    swift_endAccess();
    v6 = (v5 + 64);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = *v6;
      v6 += 8;
      if (*(v8 + 16))
      {
        if (*(v0 + 1288) == 2)
        {
          sub_8FD88();
          swift_allocError();
          *v9 = 3;
          swift_willThrow();
          sub_2BF8((v0 + 1136));
          goto LABEL_9;
        }

        break;
      }
    }

    v14 = *(v0 + 1248);
    v15 = *(v0 + 1160);
    v16 = *(v0 + 1168);
    sub_2698((v0 + 1136), v15);
    memcpy((v0 + 16), v14, 0x460uLL);
    v19 = (*(v16 + 8) + **(v16 + 8));
    v17 = swift_task_alloc();
    *(v0 + 1264) = v17;
    *v17 = v0;
    v17[1] = sub_8FB38;
    v18 = *(v0 + 1240);

    return v19(v18, v0 + 16, v15, v16);
  }

  else
  {
    v10 = *(v0 + 1288);
    swift_endAccess();
    sub_8FD88();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
LABEL_9:
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_8FB38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1272) = v1;

  if (v1)
  {
    v5 = sub_8FCC8;
  }

  else
  {
    *(v4 + 1280) = a1;
    v5 = sub_8FC60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8FC60()
{
  sub_2BF8(v0 + 142);
  v1 = v0[1];
  v2 = v0[160];

  return v1(v2);
}

uint64_t sub_8FCC8()
{
  sub_2BF8((v0 + 1136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AggregateFlattener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_8FD88()
{
  result = qword_22AA28;
  if (!qword_22AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA28);
  }

  return result;
}

unint64_t sub_8FDDC()
{
  result = qword_22AA30;
  if (!qword_22AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelegatingBookScorer.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DelegatingBookScorer.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}