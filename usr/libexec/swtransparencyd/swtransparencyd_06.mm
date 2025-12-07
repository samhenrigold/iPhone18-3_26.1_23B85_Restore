unint64_t sub_1000A0834(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135EC0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A0880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001548C8, &qword_1001079A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10009E710(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000A09A0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v0 = Hasher._finalize()();

  return sub_1000A0974(v0);
}

void *sub_1000A09F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100024248(&qword_1001548D8, &qword_1001079B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = sub_1000A09A0();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 5);
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_1000A09A0();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A0AE4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135FA0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A0B54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001360B0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A0BA0(char a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001CF5C;

  return sub_100092A94(a1, a2, v2);
}

uint64_t sub_1000A0C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000258C8;

  return sub_100096BE0();
}

unint64_t sub_1000A0CE0()
{
  result = qword_1001543A0;
  if (!qword_1001543A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543A0);
  }

  return result;
}

unint64_t sub_1000A0D88()
{
  result = qword_1001543B0;
  if (!qword_1001543B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543B0);
  }

  return result;
}

unint64_t sub_1000A0DE4()
{
  result = qword_1001543B8;
  if (!qword_1001543B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001543B8);
  }

  return result;
}

void sub_1000A0EA8(uint64_t a1)
{
  sub_1000A0F1C();
  if (v1 <= 0x3F)
  {
    sub_1000A0FBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A0F1C()
{
  if (!qword_100154430)
  {
    sub_1000A0F64(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100154430);
    }
  }
}

void sub_1000A0F64(uint64_t a1)
{
  if (!qword_100153058)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100153058);
    }
  }
}

ValueMetadata *sub_1000A0FBC()
{
  result = qword_100154438;
  if (!qword_100154438)
  {
    result = &type metadata for SMState;
    atomic_store(&type metadata for SMState, &qword_100154438);
  }

  return result;
}

void sub_1000A0FF4(uint64_t a1)
{
  sub_10002A598(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ContinuationStore.ContinuationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinuationStore.ContinuationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A13B0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1000A14A8(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1000A14C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000A1514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_1000A1560(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTStateMachine.SMEventResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_20;
  }

  v2 = a2 + 11;
  if (a2 + 11 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 11;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 11;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xA)
  {
    v8 = v7 - 9;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SWTStateMachine.SMEventResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
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

  if (a3 < 0xF5)
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000A16F0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000A1704(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

uint64_t sub_1000A1738(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_10009A7F4(a1, v5, v6, v4);
}

Swift::Int sub_1000A17D8(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = sub_10008F9CC(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1000A0074(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000A190C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v8;
    v25 = v3;
    v23 = &v23;
    __chkstk_darwin(v10);
    v11 = &v23 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v9 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if (sub_10008F9CC(*(*(a1 + 48) + v8), a2))
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1000A0074(v11, v24, v9, a1);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  v20 = sub_10009FFD8(v22, v8, a1, a2);

  return v20;
}

unint64_t sub_1000A1B6C(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_1000A1B84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1BBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000258C8;

  return sub_1000A03BC(a1, v4);
}

uint64_t sub_1000A1C74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1CBC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000258C8;

  return sub_10008E004(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1000A1D70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1DB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_10008E428(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1000A1E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A1F00(uint64_t a1)
{
  v2 = sub_1000A64B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A1F3C(uint64_t a1)
{
  v2 = sub_1000A64B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A1F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    return a1 >> 32;
  }

  else
  {
    return BYTE6(a2);
  }
}

uint64_t sub_1000A1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A59F0(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1000A2084(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = a1 >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  result = v4 - a3;
  if (__OFSUB__(v4, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A20C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v10 = v9 + 7;
  if (__OFADD__(v9, 7))
  {
    __break(1u);
  }

  if (v10 < 0)
  {
    v10 = v9 + 14;
  }

  v11 = v10 >> 3;
  v12 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  __chkstk_darwin(v12);
  v16 = v4;
  v15 = 803;
  sub_1000A3010(v8, sub_1000A5F7C, (&v17 - 4), a3, &type metadata for Never, (&type metadata for () + 1), &protocol witness table for Never, v13);
  (*(v6 + 8))(v8, a3);
  return v11;
}

uint64_t sub_1000A2278(uint64_t a1, uint64_t a2)
{
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v3 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v3 < 0)
    {
      v3 = result + 14;
    }

    return v3 >> 3;
  }

  return result;
}

uint64_t sub_1000A22B8(uint64_t a1, char a2)
{
  v30 = a1;
  v31 = a2;
  v28 = a1;
  v29 = a2;
  sub_100024248(&qword_100154930, &qword_100107C70);
  sub_100024248(&qword_100154938, &qword_100107C78);
  if (swift_dynamicCast())
  {
    sub_100037608(v32, v34);
    v4 = sub_100026F6C(v34, v34[3]);
    __chkstk_darwin(v4);
    v27 = v2;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return sub_100024E14(v34);
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_1000A65C0(v32);
  v6 = *v2;
  v7 = v2[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    v10 = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v9 = *(v11 + 8);
    v10 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    v10 = BYTE6(v7);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_52;
  }

  v10 = HIDWORD(v6) - v6;
  v9 = v6 >> 32;
LABEL_12:
  if (__OFADD__(v9, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v9 + a1 < v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = Data._Representation.resetBytes(in:)();
  __chkstk_darwin(v12);
  v26[2] = v10;
  v26[3] = a1;
  v27 = &v30;
  result = sub_1000A506C(sub_1000A6628, v26);
  if (v15 == a1)
  {
    memset(v34, 0, 15);
    if (v14 != result)
    {
      if ((v14 & 0x8000000000000000) == 0 && v14 < result)
      {
        v16 = v13;
        LOBYTE(v17) = 0;
        for (i = v14 - result + 1; i != 1; ++i)
        {
          *(v34 + v17) = v16;
          v17 = v17 + 1;
          if ((v17 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v17 == 14)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            result = Data._Representation.append(contentsOf:)();
            if (!i)
            {
              return result;
            }

            LOBYTE(v17) = 0;
          }

          else if (!i)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            return Data._Representation.append(contentsOf:)();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 0;
    v20 = *v2;
    v21 = v2[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v19 = *(v20 + 16);
      }
    }

    else if (v22)
    {
      v19 = v20;
    }

    v23 = __OFADD__(v19, v10);
    v24 = v19 + v10;
    if (v23)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v24, v15))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v22)
    {
      v25 = v20 >> 32;
    }

    else
    {
      v25 = BYTE6(v21);
    }

    if (v25 < v24 + v15)
    {
      goto LABEL_51;
    }

    return Data._Representation.replaceSubrange(_:with:count:)();
  }

  return result;
}

uint64_t sub_1000A262C(char a1, uint64_t a2)
{
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = a1;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = &type metadata for UnsafeRawBufferPointer;
  v11[4] = &protocol witness table for UnsafeRawBufferPointer;
  v11[0] = &v10;
  v11[1] = v11;
  sub_100026F6C(v11, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100024E14(v11);
  return 1;
}

uint64_t sub_1000A2750(unsigned int a1, uint64_t a2)
{
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = &type metadata for UnsafeRawBufferPointer;
  v11[4] = &protocol witness table for UnsafeRawBufferPointer;
  v11[0] = &v10;
  v11[1] = v11;
  sub_100026F6C(v11, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100024E14(v11);
  return 2;
}

uint64_t sub_1000A287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v12 = v11 + 7;
  if (__OFADD__(v11, 7))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < 0)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  v14 = a2 + (v12 >> 3);
  if (__OFADD__(a2, v12 >> 3))
  {
    goto LABEL_16;
  }

  if (v5[2] > a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *v5;
  v16 = v5[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v15 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  if (v19 < v14)
  {
LABEL_18:
    __break(1u);
  }

  v20 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  __chkstk_darwin(v20);
  *(&v25 - 4) = v13;
  *(&v25 - 3) = v5;
  v24 = v14;
  v23 = 803;
  sub_1000A3010(v10, sub_1000A6000, (&v25 - 6), a4, &type metadata for Never, (&type metadata for () + 1), &protocol witness table for Never, v21);
  (*(v8 + 8))(v10, a4);
  return v13;
}

uint64_t sub_1000A2AA4()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_100027004(v3, v4);
  sub_100024248(&qword_100154918, &qword_100107C68);
  sub_1000A6508();
  sub_1000A655C();
  DataProtocol.copyBytes<A>(to:from:)();
  sub_100026FB0(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}

uint64_t sub_1000A2BF0()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_100027004(v3, v4);
  sub_100024248(&qword_100154918, &qword_100107C68);
  sub_1000A6508();
  sub_1000A655C();
  DataProtocol.copyBytes<A>(to:from:)();
  sub_100026FB0(v10, v11);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
  return v8 | (v7 << 16);
}

uint64_t sub_1000A2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(a2 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v27[-v12];
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v14 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v15 = v14 + 7;
  if (__OFADD__(v14, 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 0)
  {
    v15 = v14 + 14;
  }

  v16 = v5[2];
  v17 = v16 + (v15 >> 3);
  if (__OFADD__(v16, v15 >> 3))
  {
LABEL_17:
    __break(1u);
  }

  v18 = *v5;
  v19 = v5[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 == 2)
    {
      if (*(v18 + 24) < v17)
      {
        goto LABEL_14;
      }
    }

    else if (v17 > 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    __chkstk_darwin(v14);
    v26 = v17;
    v25 = 4039;
    sub_1000A3010(v13, sub_1000A60B4, &v27[-32], a2, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v23);
    (*(v8 + 16))(v11, v13, a2);
    dispatch thunk of FixedWidthInteger.init(bigEndian:)();
    (*(v8 + 8))(v13, a2);
    result = (*(v8 + 56))(a4, 0, 1, a2);
    v5[2] = v17;
    return result;
  }

  v21 = BYTE6(v19);
  v22 = v18 >> 32;
  if (!v20)
  {
    v22 = v21;
  }

  if (v22 >= v17)
  {
    goto LABEL_9;
  }

LABEL_14:
  (*(v8 + 8))(v13, a2);
  return (*(v8 + 56))(a4, 1, 1, a2);
}

uint64_t sub_1000A3010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1000A3104(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    if (v3)
    {
      v4 = result >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4 < a3 || v4 < v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = Data._Representation.subscript.getter();
  v8 = v7;
  Data.append(_:)();
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_100026FB0(v6, v8);
      return BYTE6(v8);
    }

LABEL_20:
    result = sub_100026FB0(v6, v9);
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      return HIDWORD(v6) - v6;
    }

    goto LABEL_24;
  }

  if (v10 != 2)
  {
    sub_100026FB0(v6, v8);
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  sub_100026FB0(v6, v9);
  result = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A3210(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }
  }

  else
  {
    v9 = BYTE6(v7);
    if (v8)
    {
      v9 = v6 >> 32;
    }
  }

  if (v9 < a4)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v8 > 1)
  {
    v10 = 0;
    if (v8 == 2)
    {
      v10 = *(v6 + 16);
    }
  }

  else if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a4)
  {
    goto LABEL_60;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(result + 16);
      v12 = *(result + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = result >> 32;
    }

    else
    {
      v12 = BYTE6(a2);
    }

    if (v11)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < a3 || v12 < v13)
  {
    goto LABEL_61;
  }

  result = Data._Representation.subscript.getter();
  v15 = result;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v14);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v20 = *(result + 16);
  v19 = *(result + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_34:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_37:
  v22 = *v4;
  v23 = v4[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v25 = BYTE6(v23);
    v26 = v22 >> 32;
    if (!v24)
    {
      v26 = v25;
    }

    goto LABEL_43;
  }

  if (v24 == 2)
  {
    v26 = *(v22 + 24);
LABEL_43:
    v27 = v26 - a4;
    if (v27 < v18)
    {
      v18 = v27;
    }

    goto LABEL_48;
  }

  if (v18 >= -a4)
  {
    v18 = -a4;
  }

LABEL_48:
  if (v18 + a4 < a4)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_1000A5778(result, v14, v4, a4, v18 + a4);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_100026FB0(v15, v16);
      return BYTE6(v16);
    }

LABEL_56:
    result = sub_100026FB0(v15, v16);
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      return HIDWORD(v15) - v15;
    }

    goto LABEL_64;
  }

  if (v17 != 2)
  {
    sub_100026FB0(v15, v16);
    return 0;
  }

  v29 = *(v15 + 16);
  v28 = *(v15 + 24);
  sub_100026FB0(v15, v16);
  result = v28 - v29;
  if (__OFSUB__(v28, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

uint64_t sub_1000A3464(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v2 >> 32;
    }

    else
    {
      v6 = BYTE6(v3);
    }

    if (v5)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 < result || v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_100026FB0(v9, v11);
      result = 0;
      goto LABEL_25;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_100026FB0(v9, v12);
    result = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_22:
    result = sub_100026FB0(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      result = HIDWORD(v9) - v9;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  sub_100026FB0(v9, v11);
  result = BYTE6(v11);
LABEL_25:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
  return result;
}

uint64_t sub_1000A35A4(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          result = Data._Representation.subscript.getter();
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t TransparencyByteBuffer.readableBytesView.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = result >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  if (v4 >= a3)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

void *sub_1000A36C8(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          v9 = Data._Representation.subscript.getter();
          result = sub_1000A3764(v9, v10);
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000A3764(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100026FB0(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100022164(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100026FB0(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

Swift::Int __swiftcall TransparencyByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

uint64_t sub_1000A396C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(v2 + 16);
    }
  }

  else
  {
    v5 = v2;
    if (!v4)
    {
      v5 = 0;
    }
  }

  if (v5 > result)
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v4)
      {
        v7 = v6;
      }
    }

    if (v7 >= result)
    {
      v1[2] = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A39EC(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_1000A22B8(result, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A39FC(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    v15 = BYTE6(v13);
    v16 = v12 >> 32;
    if (!v14)
    {
      v16 = v15;
    }

    goto LABEL_7;
  }

  if (v14 == 2)
  {
    v16 = *(v12 + 24);
LABEL_7:
    v24 = v16;
    goto LABEL_9;
  }

  v24 = 0;
LABEL_9:
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v18 = sub_1000A20C8(v11, v17, a4, a5);
  v19 = *(v9 + 8);
  v19(v11, a4);
  v20 = a2(v5);
  v26 = v20;
  sub_1000A6184();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  sub_1000A287C(v11, v24, v21, a4, a5);
  v19(v11, a4);
  result = v18 + v20;
  if (__OFADD__(v18, v20))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3BC0(uint64_t (*a1)(uint64_t *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  LOBYTE(v13) = 0;
  v16 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  v14 = &v13;
  v15 = (&v13 + 1);
  sub_100026F6C(&v14, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v14);
  v13 = 0;
  v16 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  v14 = &v13;
  v15 = &v14;
  sub_100026F6C(&v14, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v14);
  v9 = a1(v1);
  if (v9 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v10 = v9;
  v11 = sub_1000A262C(SBYTE2(v9), v8);
  if (__OFADD__(v8, v11))
  {
    goto LABEL_12;
  }

  sub_1000A2750(v10, v8 + v11);
  return v10 + 3;
}

uint64_t sub_1000A3D34(uint64_t a1)
{
  if (a1 > 0xFFFFFF)
  {
    __break(1u);
  }

  v1 = a1;
  LOBYTE(v3) = BYTE2(a1);
  v6 = &type metadata for UnsafeRawBufferPointer;
  v7 = &protocol witness table for UnsafeRawBufferPointer;
  v4 = &v3;
  v5 = (&v3 + 1);
  sub_100026F6C(&v4, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v4);
  v3 = bswap32(v1) >> 16;
  v6 = &type metadata for UnsafeRawBufferPointer;
  v7 = &protocol witness table for UnsafeRawBufferPointer;
  v4 = &v3;
  v5 = &v4;
  sub_100026F6C(&v4, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100024E14(&v4);
  return 3;
}

uint64_t sub_1000A3E2C(uint64_t result, uint64_t a2)
{
  if (result > 0xFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  result = sub_1000A262C(SBYTE2(result), a2);
  if (__OFADD__(a2, result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = sub_1000A2750(v3, a2 + result);
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

char *sub_1000A3EDC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v67 = a5;
  v60 = a3;
  v61 = a2;
  v65 = a7;
  v66 = *(a5 - 8);
  __chkstk_darwin(a1);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v10 + 8);
  v58 = *(*(v64 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = &v54 - v11;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = *(a4 - 8);
  v18 = __chkstk_darwin(v14);
  v59 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v54 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v54 - v24;
  v63 = a1;
  sub_1000A2D44(v23, a4, v16);
  if ((*(v17 + 48))(v16, 1, a4) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return (*(v66 + 56))(v65, 1, 1, v67);
  }

  (*(v17 + 32))(v25, v16, a4);
  v26 = *(v17 + 16);
  v55 = v25;
  v26(v22, v25, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  v72 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v27)
  {
    if (v28 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v32 = v59;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v17 + 8))(v32, a4);
      if (v33)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }

LABEL_10:
    sub_1000A6184();
    v29 = v59;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v17 + 8))(v29, a4);
    if (v30)
    {
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  if (v28 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v72 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    sub_1000A6184();
    v36 = v59;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v17 + 8))(v36, a4);
    if (v37)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v35 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v38 = dispatch thunk of BinaryInteger._lowWord.getter();
  v39 = *(v17 + 8);
  v39(v22, a4);
  v40 = sub_1000A35A4(v38);
  if (v41 >> 60 != 15)
  {
    v69 = v40;
    v70 = v41;
    v71 = v42;
    v43 = v62;
    v44 = v68;
    v61(&v69);
    result = v55;
    if (v44)
    {
LABEL_41:
      v39(result, a4);
      return sub_100026FB0(v69, v70);
    }

    v45 = v69;
    v46 = v70;
    v47 = v70 >> 62;
    if ((v70 >> 62) > 1)
    {
      if (v47 == 2)
      {
        v48 = *(v69 + 24);
      }

      else
      {
        v48 = 0;
      }
    }

    else if (v47)
    {
      v48 = v69 >> 32;
    }

    else
    {
      v48 = BYTE6(v70);
    }

    if (!__OFSUB__(v48, v71))
    {
      if (v48 == v71)
      {
        v39(v55, a4);
        sub_100026FB0(v45, v46);
        v50 = v65;
        v49 = v66;
        v51 = v67;
        (*(v66 + 32))(v65, v43, v67);
        return (*(v49 + 56))(v50, 0, 1, v51);
      }

      v52 = v55;
      sub_10002BC44();
      swift_allocError();
      *v53 = 0;
      swift_willThrow();
      (*(v66 + 8))(v43, v67);
      result = v52;
      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v39(v55, a4);
  return (*(v66 + 56))(v65, 1, 1, v67);
}

uint64_t sub_1000A4670@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = type metadata accessor for Optional();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  sub_100027004(*v3, v9);
  v12 = v20;
  a1(v3);
  if (v12)
  {
    sub_100026FB0(*v3, v3[1]);
    *v3 = v10;
    v3[1] = v9;
    v3[2] = v11;
    return swift_willThrow();
  }

  else
  {
    v20 = v11;
    v14 = v19;
    v15 = *(a2 - 8);
    if ((*(v15 + 48))(v8, 1, a2) == 1)
    {
      sub_100026FB0(*v3, v3[1]);
      (*(v18 + 8))(v8, v6);
      *v3 = v10;
      v3[1] = v9;
      v16 = 1;
      v3[2] = v20;
      v17 = v14;
    }

    else
    {
      sub_100026FB0(v10, v9);
      v17 = v14;
      (*(v15 + 32))(v14, v8, a2);
      v16 = 0;
    }

    return (*(v15 + 56))(v17, v16, 1, a2);
  }
}

uint64_t sub_1000A48D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A2AA4();
  if ((v11 & 0x100) != 0)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v12 = v11;
  v13 = sub_1000A2BF0();
  if ((v13 & 0x10000) != 0)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v14 = sub_1000A35A4(v13 | (v12 << 16));
  if (v15 >> 60 == 15)
  {
    return (*(v8 + 56))(a4, 1, 1, a3);
  }

  v22 = v14;
  v23 = v15;
  v24 = v16;
  a2(&v22);
  if (v4)
  {
    return sub_100026FB0(v22, v23);
  }

  result = v22;
  v18 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v22 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v22 >> 32;
  }

  else
  {
    v19 = BYTE6(v23);
  }

  if (!__OFSUB__(v19, v24))
  {
    if (v19 == v24)
    {
      sub_100026FB0(v22, v23);
      (*(v8 + 32))(a4, v10, a3);
      return (*(v8 + 56))(a4, 0, 1, a3);
    }

    sub_10002BC44();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    (*(v8 + 8))(v10, a3);
    return sub_100026FB0(v22, v23);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A4AE0()
{
  v0 = sub_1000A2AA4();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1000A2BF0();
  if ((v2 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v2 | (v1 << 16);
  }
}

void TransparencyByteBuffer.hash(into:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a2 >> 32;
  }

  else
  {
    v5 = BYTE6(a3);
  }

  if (v5 < a4)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    sub_100026FB0(v6, v8);
  }
}

void *TransparencyByteBuffer.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = Hasher.init(_seed:)();
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 < a3)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    sub_100026FB0(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

void *sub_1000A4C9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    sub_100026FB0(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000A4D54(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();

    return sub_100026FB0(v7, v9);
  }

  return result;
}

void *sub_1000A4DF8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  result = Hasher.init(_seed:)();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    sub_100026FB0(v8, v10);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000A4ECC@<X0>(_BYTE *__src@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000617C4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1000A4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1000A5560(&type metadata for UInt8, sub_1000A67AC, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

char *sub_1000A506C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100026FB0(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100026FB0(v7, v6);
    *v4 = xmmword_1001079F0;
    sub_100026FB0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1000A56C0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100026FB0(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1001079F0;
    sub_100026FB0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000A56C0(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1000A5418@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a6 + v12) = result;
  return result;
}

uint64_t sub_1000A5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

char *sub_1000A56C0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000A5778(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v8, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_1000A5950(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000A59F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_100024248(&qword_100154938, &qword_100107C78);
  if (swift_dynamicCast())
  {
    sub_100037608(v32, &v34);
    sub_100026F6C(&v34, v35);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v31;
    sub_100024E14(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_1000A65C0(v32);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v32[0] = sub_1000A5950(v17);
  *(&v32[0] + 1) = v18;
  __chkstk_darwin(*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v26) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10002BEE0(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_10002BEE0(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_100027004(*&v32[0], *(&v32[0] + 1));
  sub_100026FB0(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_1000A5F7C(uint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 == *(v2 + 16))
  {
    v4[3] = &type metadata for UnsafeRawBufferPointer;
    v4[4] = &protocol witness table for UnsafeRawBufferPointer;
    v4[0] = result;
    v4[1] = a2;
    sub_100026F6C(v4, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    return sub_100024E14(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6000(uint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 == v2[2])
  {
    if (v2[5] >= v2[4])
    {
      v4[3] = &type metadata for UnsafeRawBufferPointer;
      v4[4] = &protocol witness table for UnsafeRawBufferPointer;
      v4[0] = result;
      v4[1] = a2;
      sub_100026F6C(v4, &type metadata for UnsafeRawBufferPointer);
      Data._Representation.replaceSubrange(_:with:count:)();
      return sub_100024E14(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A60B4@<X0>(uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  result = *v5;
  v8 = *v5;
  v9 = v5[1];
  if (v5[2] > *(v3 + 24))
  {
    __break(1u);
  }

  else
  {
    sub_100027004(result, v5[1]);
    sub_100024248(&qword_100154918, &qword_100107C68);
    sub_1000A6508();
    sub_1000A655C();
    v7 = DataProtocol.copyBytes<A>(to:from:)();
    result = sub_100026FB0(v8, v9);
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1000A6184()
{
  result = qword_1001548F8;
  if (!qword_1001548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001548F8);
  }

  return result;
}

uint64_t _s15swtransparencyd22TransparencyByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    result = Data._Representation.subscript.getter();
    v11 = result;
    v13 = v12;
    v14 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a4 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = a4 >> 32;
    }

    else
    {
      v15 = BYTE6(a5);
    }

    if (v15 >= a6)
    {
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = sub_100027800(v11, v13, v16, v17);
      sub_100026FB0(v16, v18);
      sub_100026FB0(v11, v13);
      return v19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A6340()
{
  result = qword_100154900;
  if (!qword_100154900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154900);
  }

  return result;
}

unint64_t sub_1000A639C()
{
  result = qword_100154908;
  if (!qword_100154908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154908);
  }

  return result;
}

uint64_t sub_1000A6400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_1000A6454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1000A64B4()
{
  result = qword_100154910;
  if (!qword_100154910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154910);
  }

  return result;
}

unint64_t sub_1000A6508()
{
  result = qword_100154920;
  if (!qword_100154920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154920);
  }

  return result;
}

unint64_t sub_1000A655C()
{
  result = qword_100154928;
  if (!qword_100154928)
  {
    sub_1000242F4(&qword_100154918, &qword_100107C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154928);
  }

  return result;
}

uint64_t sub_1000A65C0(uint64_t a1)
{
  v2 = sub_100024248(&qword_100154940, &qword_100107C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A6628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000A6698(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_1000A6698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int sub_1000A67E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

Swift::Int sub_1000A684C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

unint64_t sub_1000A6908()
{
  sub_100024248(&qword_100153B90, &unk_100105E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001042A0;
  *(inited + 32) = 0x656D614E6B736174;
  v1 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x654667614279656BLL;
  *(inited + 56) = 0xEB00000000686374;
  v2 = sub_100061318(inited);
  swift_setDeallocating();
  sub_10002533C(v1, &qword_100153B98, &qword_100107EA0);
  return v2;
}

uint64_t sub_1000A69D8(uint64_t a1)
{
  v2 = sub_1000A8214();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A6A14(uint64_t a1)
{
  v2 = sub_1000A8214();
  v3 = sub_1000A8268();
  v4 = sub_10005846C();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_1000A6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  sub_100025834(a1, &v18 - v13, &unk_100152620, &unk_1001031E0);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a6;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = sub_1000A7BB4(0, 0, v14, &unk_100107C98, v15, a6);
  sub_10002533C(a1, &unk_100152620, &unk_1001031E0);
  return v16;
}

uint64_t sub_1000A6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1000A6BC0, 0, 0);
}

uint64_t sub_1000A6BC0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1000A6CBC;
  v7 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7);
}

uint64_t sub_1000A6CBC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A6DF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000A6DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for Optional();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_100024248(&unk_100152620, &unk_1001031E0);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6F64, 0, 0);
}

uint64_t sub_1000A6F64()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v13 = v0[6];
  v14 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;

  v0[13] = sub_1000242F4(&qword_100152630, &qword_100103210);
  v8 = type metadata accessor for ThrowingTaskGroup();
  sub_1000A75DC(v1, &unk_100107E40, v7, v8);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v14;
  sub_1000A75DC(v1, &unk_100107E50, v9, v8);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000A719C;
  v11 = v0[11];

  return ThrowingTaskGroup.next(isolation:)(v11, 0, 0, v8);
}

uint64_t sub_1000A719C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000A7478;
  }

  else
  {
    v2 = sub_1000A72B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A72B0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    type metadata accessor for CancellationError();
    sub_1000A8594(&qword_1001548F0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
    ThrowingTaskGroup.cancelAll()();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A7478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A74E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001CF5C;

  return v8(a1);
}

uint64_t sub_1000A75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_100025834(a1, v19 - v9, &unk_100152620, &unk_1001031E0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002533C(v10, &unk_100152620, &unk_1001031E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1000A77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7890, 0, 0);
}

uint64_t sub_1000A7890(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_1000A7950;
  v4 = v1[2];
  v3 = v1[3];

  return sub_100029BA0(v4, v3, 0, 0, 1);
}

uint64_t sub_1000A7950()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000A7B50;
  }

  else
  {
    v5 = sub_1000A7AC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A7AC0()
{
  sub_1000A81AC();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_100025834(a3, &v24[-1] - v11, &unk_100152620, &unk_1001031E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      sub_1000A7E38(v20 + 32, v24);

      v21 = v24[0];
      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000A7E38@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A7EF4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000A8594(&qword_100152CC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000A8594(&qword_100152CD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100029E30;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000A808C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001CF5C;

  return sub_1000A6B98(a1, v9, v10, v5, v6, v7, v8, v4);
}

unint64_t sub_1000A8158()
{
  result = qword_100154948;
  if (!qword_100154948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154948);
  }

  return result;
}

unint64_t sub_1000A81AC()
{
  result = qword_100154950;
  if (!qword_100154950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154950);
  }

  return result;
}

unint64_t sub_1000A8214()
{
  result = qword_100154958;
  if (!qword_100154958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154958);
  }

  return result;
}

unint64_t sub_1000A8268()
{
  result = qword_100154960;
  if (!qword_100154960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154960);
  }

  return result;
}

uint64_t sub_1000A82BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000258C8;

  return sub_1000A6E5C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1000A839C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000A83E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_1000A74E4(a1, v4, v5, v6);
}

uint64_t sub_1000A84C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A84FC()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000A77D0(v4, v5, v6, v2, v3);
}

uint64_t sub_1000A8594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A8610@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015C3E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A86B8(uint64_t a1, char a2, double a3)
{
  *(v3 + 65) = a2;
  *(v3 + 80) = a3;
  *(v3 + 72) = a1;
  sub_100024248(&unk_100152620, &unk_1001031E0);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000A875C, 0, 0);
}

uint64_t sub_1000A875C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 65);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = static Duration.seconds(_:)();
  v7 = v6;
  sub_1000331C0(v3, v0 + 16);
  v8 = swift_allocObject();
  sub_100037608((v0 + 16), v8 + 16);
  *(v8 + 56) = v2;
  v9 = sub_1000A986C();
  v10 = sub_1000A6A70(v1, v5, v7, &unk_100107E78, v8, v9);
  *(v0 + 96) = v10;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = sub_100024248(&qword_100152630, &qword_100103210);
  *v11 = v0;
  v11[1] = sub_1000A8900;

  return Task.result.getter(v0 + 56, v10, v9, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000A8900()
{

  return _swift_task_switch(sub_1000A89FC, 0, 0);
}

uint64_t sub_1000A89FC()
{
  v1 = *(v0 + 56);
  if (*(v0 + 64))
  {
    if (qword_10015C3E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100025AE0(v2, qword_10015D310);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A98B8(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting to configure public key bag %@", v5, 0xCu);
      sub_10002533C(v6, &qword_100153450, &unk_100104140);
    }

    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(v1);
  }
}

uint64_t sub_1000A8C04(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 248) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return _swift_task_switch(sub_1000A8C28, 0, 0);
}

uint64_t sub_1000A8C28()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);
  type metadata accessor for SWTPublicKeyBag(0);
  sub_1000331C0(v2, v0 + 16);
  *(v0 + 152) = sub_10007FC28((v0 + 16));
  v3 = v2[3];
  v4 = v2[4];
  sub_100026F6C(v2, v3);
  v5 = *(v0 + 144);
  if (v1 == 1)
  {
    v7 = v2[3];
    v6 = v2[4];
    sub_100026F6C(v5, v7);
    v8 = (*(v6 + 48))(v7, v6);
    *(v0 + 160) = v8;
    v15 = (*(v4 + 104) + **(v4 + 104));
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000A8EC0;
    v10 = v0 + 96;
  }

  else
  {
    v12 = v2[3];
    v11 = v2[4];
    sub_100026F6C(v5, v12);
    v8 = (*(v11 + 48))(v12, v11);
    *(v0 + 192) = v8;
    v15 = (*(v4 + 104) + **(v4 + 104));
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_1000A9200;
    v10 = v0 + 56;
  }

  return v15(v10, v8, v3, v4);
}

uint64_t sub_1000A8EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v6 = (*(*v3 + 360) + **(*v3 + 360));
  v4 = swift_task_alloc();
  *(v1 + 176) = v4;
  *v4 = v7;
  v4[1] = sub_1000A90C0;

  return v6(v1 + 96);
}

uint64_t sub_1000A90C0()
{
  v2 = *v1;
  v2[23] = v0;

  sub_100024E14(v2 + 12);
  if (v0)
  {
    v3 = sub_1000A96C0;
    v4 = 0;
  }

  else
  {
    v4 = v2[19];
    v5 = (*v4 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
    v2[28] = *(*v4 + 160);
    v2[29] = v5;
    v3 = sub_1000A9540;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1000A9200()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v6 = (*(*v3 + 352) + **(*v3 + 352));
  v4 = swift_task_alloc();
  *(v1 + 208) = v4;
  *v4 = v7;
  v4[1] = sub_1000A9400;

  return v6(v1 + 56);
}

uint64_t sub_1000A9400()
{
  v2 = *v1;
  v2[27] = v0;

  sub_100024E14(v2 + 7);
  if (v0)
  {
    v3 = sub_1000A9724;
    v4 = 0;
  }

  else
  {
    v4 = v2[19];
    v5 = (*v4 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
    v2[28] = *(*v4 + 160);
    v2[29] = v5;
    v3 = sub_1000A9540;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1000A9540()
{
  *(v0 + 240) = (*(v0 + 224))();

  return _swift_task_switch(sub_1000A95B0, 0, 0);
}

uint64_t sub_1000A95B0()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[17];

    *v2 = v1;
  }

  else
  {
    type metadata accessor for SWTStateMachineError(0);
    sub_1000AB7E8(&qword_100152F30, type metadata accessor for SWTStateMachineError, &unk_100107268);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A96C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A9724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A9788()
{
  sub_100024E14((v0 + 16));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000A97C0(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_1000A8C04(a1, v1 + 16, v4);
}

unint64_t sub_1000A986C()
{
  result = qword_100152D78;
  if (!qword_100152D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100152D78);
  }

  return result;
}

void sub_1000A98B8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A98D0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100027A50(v3, a2);
  sub_100025AE0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A9970(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100025AE0(v4, a2);
}

uint64_t sub_1000A99C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015C3E8[0] != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A9A6C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_100037608(a2, v6 + 24);
  sub_100037608(a3, v6 + 64);
  return v6;
}

uint64_t sub_1000A9AD0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_100037608(a2, v3 + 24);
  sub_100037608(a3, v3 + 64);
  return v3;
}

uint64_t sub_1000A9B14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000A9C74, 0, 0);
}

uint64_t sub_1000A9C74(uint64_t a1)
{
  v39 = v1;
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[8];
  URLRequest.url.getter();
  v5 = *(v3 + 48);
  v1[12] = v5;
  v1[13] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v4, 1, v2) == 1)
  {
    sub_10002533C(v1[8], &qword_100152F00, &qword_1001042C0);
    if (qword_10015C3E8[0] != -1)
    {
      swift_once();
    }

    v7 = v1[5];
    v6 = v1[6];
    v8 = v1[4];
    v9 = v1[2];
    v10 = type metadata accessor for Logger();
    sub_100025AE0(v10, qword_10015D328);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v1[12];
      v14 = v1[9];
      v15 = v1[7];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315138;
      URLRequest.url.getter();
      if (v13(v15, 1, v14) == 1)
      {
        sub_10002533C(v1[7], &qword_100152F00, &qword_1001042C0);
        v18 = 0xEB000000004C5255;
        v19 = 0x206E776F6E6B6E75;
      }

      else
      {
        v29 = v1[9];
        v30 = v1[10];
        v31 = v1[7];
        v19 = URL.description.getter();
        v18 = v32;
        (*(v30 + 8))(v31, v29);
      }

      (*(v1[5] + 8))(v1[6], v1[4]);
      v33 = sub_100021D24(v19, v18, &v38);

      *(v16 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetching public key bag from %s", v16, 0xCu);
      sub_100024E14(v17);
    }

    else
    {
      v27 = v1[5];
      v26 = v1[6];
      v28 = v1[4];

      (*(v27 + 8))(v26, v28);
    }

    v34 = SWTURLSession.shared.unsafeMutableAddressor();
    v35 = *v34;
    v1[15] = *v34;
    v36 = (*v35 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
    v1[16] = *(*v35 + 96);
    v1[17] = v36;

    return _swift_task_switch(sub_1000AA484, v35, 0);
  }

  else
  {
    v20 = v1[3];
    (*(v1[10] + 32))(v1[11], v1[8], v1[9]);
    v21 = v20[11];
    v22 = v20[12];
    sub_100026F6C(v20 + 8, v21);
    v37 = (*(v22 + 24) + **(v22 + 24));
    v23 = swift_task_alloc();
    v1[14] = v23;
    *v23 = v1;
    v23[1] = sub_1000AA0B4;
    v24 = v1[11];

    return v37(v24, v21, v22);
  }
}

uint64_t sub_1000AA0B4()
{

  return _swift_task_switch(sub_1000AA1B0, 0, 0);
}

uint64_t sub_1000AA1B0()
{
  v28 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_10015C3E8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100025AE0(v5, qword_10015D328);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    URLRequest.url.getter();
    if (v8(v10, 1, v9) == 1)
    {
      sub_10002533C(v0[7], &qword_100152F00, &qword_1001042C0);
      v13 = 0xEB000000004C5255;
      v14 = 0x206E776F6E6B6E75;
    }

    else
    {
      v18 = v0[9];
      v19 = v0[10];
      v20 = v0[7];
      v14 = URL.description.getter();
      v13 = v21;
      (*(v19 + 8))(v20, v18);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    v22 = sub_100021D24(v14, v13, &v27);

    *(v11 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching public key bag from %s", v11, 0xCu);
    sub_100024E14(v12);
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];

    (*(v16 + 8))(v15, v17);
  }

  v23 = SWTURLSession.shared.unsafeMutableAddressor();
  v24 = *v23;
  v0[15] = *v23;
  v25 = (*v24 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[16] = *(*v24 + 96);
  v0[17] = v25;

  return _swift_task_switch(sub_1000AA484, v24, 0);
}

uint64_t sub_1000AA484()
{
  *(v0 + 144) = (*(v0 + 128))();

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1000AA540;
  v2 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_1000AA540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  *(v5 + 176) = a3;
  *(v5 + 184) = v3;

  if (v3)
  {
    v6 = sub_1000AA910;
  }

  else
  {

    v6 = sub_1000AA660;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000AA660()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[22];
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v6 = v0[22];
    if (v5 == 200)
    {

      v7 = v0[1];
      v8 = v0[20];
      v9 = v0[21];

      return v7(v8, v9);
    }

    v13 = v0[20];
    v17 = v0[21];
    type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
    sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError, &unk_100107EA8);
    swift_allocError();
    v15 = v14;
    sub_100024248(&qword_100154970, &unk_100107E90);
    *v15 = [v3 statusCode];
    URLRequest.url.getter();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100026FB0(v13, v17);
  }

  else
  {
    v12 = v0[20];
    v11 = v0[21];
    type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
    sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError, &unk_100107EA8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100026FB0(v12, v11);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000AA910()
{
  v1 = *(v0 + 184);

  type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
  sub_1000AB7E8(&qword_100154968, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError, &unk_100107EA8);
  swift_allocError();
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000AAA4C()
{
  v1 = v0;
  v2 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
  __chkstk_darwin(v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000AB514(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = sub_100024248(&qword_100154970, &unk_100107E90);
      sub_1000443C0(v10 + *(v13 + 48), v7);
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v29 = 0xD00000000000001ELL;
      v30 = 0x800000010010A780;
      v28 = v12;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0x6C727520726F6620;
      v15._object = 0xE900000000000020;
      String.append(_:)(v15);
      sub_100025834(v7, v5, &qword_100152F00, &qword_1001042C0);
      v16 = type metadata accessor for URL();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v5, 1, v16) == 1)
      {
        sub_10002533C(v5, &qword_100152F00, &qword_1001042C0);
        v18 = 0xE500000000000000;
        v19 = 0x3E6C72753CLL;
      }

      else
      {
        v23 = URL.description.getter();
        v18 = v24;
        (*(v17 + 8))(v5, v16);
        v19 = v23;
      }

      v25 = v18;
      String.append(_:)(*&v19);

      v26 = v29;
      sub_10002533C(v7, &qword_100152F00, &qword_1001042C0);
      return v26;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v20 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x800000010010CE70;
    String.append(_:)(v21);
    v28 = v20;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();

    return v29;
  }
}

unint64_t sub_1000AADC0()
{
  v1 = v0;
  v2 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
  __chkstk_darwin(v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000AB514(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = sub_100024248(&qword_100154970, &unk_100107E90);
      sub_1000443C0(v10 + *(v13 + 48), v7);
      sub_100024248(&qword_100153B90, &unk_100105E80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100106430;
      *(inited + 32) = 7107189;
      *(inited + 40) = 0xE300000000000000;
      sub_100025834(v7, v5, &qword_100152F00, &qword_1001042C0);
      v15 = type metadata accessor for URL();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v5, 1, v15) == 1)
      {
        sub_10002533C(v5, &qword_100152F00, &qword_1001042C0);
        v17 = (inited + 48);
        *(inited + 72) = &type metadata for String;
      }

      else
      {
        v24 = URL.description.getter();
        v26 = v25;
        (*(v16 + 8))(v5, v15);
        v17 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        if (v26)
        {
          *v17 = v24;
LABEL_10:
          *(inited + 56) = v26;
          *(inited + 80) = 0x737574617473;
          *(inited + 88) = 0xE600000000000000;
          *(inited + 120) = &type metadata for Int;
          *(inited + 96) = v12;
          v23 = sub_100061318(inited);
          swift_setDeallocating();
          sub_100024248(&qword_100153B98, &qword_100107EA0);
          swift_arrayDestroy();
          sub_10002533C(v7, &qword_100152F00, &qword_1001042C0);
          return v23;
        }
      }

      *v17 = 45;
      v26 = 0xE100000000000000;
      goto LABEL_10;
    }

    v23 = sub_100061318(_swiftEmptyArrayStorage);
    sub_1000AB578(v10);
  }

  else
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1001042A0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    swift_getErrorValue();
    v20 = v28;
    v21 = v29;
    *(v18 + 72) = v29;
    v22 = sub_100045004((v18 + 48));
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    v23 = sub_100061318(v18);
    swift_setDeallocating();
    sub_10002533C(v18 + 32, &qword_100153B98, &qword_100107EA0);
  }

  return v23;
}

uint64_t sub_1000AB1BC(uint64_t a1)
{
  v2 = sub_1000AB7E8(&qword_100154AD8, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError, &unk_100107F30);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000AB228(uint64_t a1)
{
  v2 = sub_1000AB7E8(&qword_100154AD8, type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError, &unk_100107F30);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000AB29C()
{
  sub_100024E14((v0 + 24));
  sub_100024E14((v0 + 64));
  return v0;
}

uint64_t sub_1000AB2CC()
{
  sub_100024E14((v0 + 24));
  sub_100024E14((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1000AB320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000AB3B8;

  return sub_1000A9B14(a1);
}

uint64_t sub_1000AB3B8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(uint64_t a1)
{
  result = qword_10015C570;
  if (!qword_10015C570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB578(uint64_t a1)
{
  v2 = type metadata accessor for SWTKeyBagFetcher.SWTKeyBagFetcherError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000AB650(uint64_t a1)
{
  sub_1000AB6C4();
  if (v1 <= 0x3F)
  {
    sub_1000AB770(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000AB6C4()
{
  if (!qword_100154A98)
  {
    v0 = sub_1000AB70C();
    if (!v1)
    {
      atomic_store(v0, &qword_100154A98);
    }
  }
}

unint64_t sub_1000AB70C()
{
  result = qword_100154AA0;
  if (!qword_100154AA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100154AA0);
  }

  return result;
}

void sub_1000AB770(uint64_t a1)
{
  if (!qword_100154AA8)
  {
    sub_1000242F4(&qword_100152F00, &qword_1001042C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100154AA8);
    }
  }
}

uint64_t sub_1000AB7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AB864(void *a1)
{
  v2 = swift_allocObject();
  sub_1000AB8A4(a1);
  return v2;
}

uint64_t sub_1000AB8A4(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  type metadata accessor for SMCondition();
  v4 = sub_10008EBD0();
  sub_100024248(&qword_100154AE0, &qword_100108010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100108000;
  sub_1000331C0(a1, v35);
  type metadata accessor for Initial(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = &_swiftEmptySetSingleton;
  v7 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 0, 1, v8);
  sub_100037608(v35, v6 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  v10 = sub_1000AF2A8(&qword_100154AE8, type metadata accessor for Initial, &unk_100108178);
  *(v5 + 32) = v6;
  *(v5 + 40) = v10;
  type metadata accessor for InitialLoadConfigState(0);
  sub_1000331C0(a1, v35);
  v11 = sub_10008849C(v35);
  v12 = sub_1000AF2A8(&qword_100154AF0, type metadata accessor for InitialLoadConfigState, &unk_100106FD0);
  *(v5 + 48) = v11;
  *(v5 + 56) = v12;
  type metadata accessor for WaitForNetwork(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 2;
  *(v13 + 120) = sub_10008B5FC(&off_100136A78);
  v9(v13 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, 1, 1, v8);
  v14 = sub_1000AF2A8(&qword_100154AF8, type metadata accessor for WaitForNetwork, &unk_1001081D0);
  *(v5 + 64) = v13;
  *(v5 + 72) = v14;
  type metadata accessor for LoadConfigState(0);
  sub_1000331C0(a1, v35);
  v15 = sub_100089CE8(v35);
  v16 = sub_1000AF2A8(&qword_100154B00, type metadata accessor for LoadConfigState, &unk_100107028);
  *(v5 + 80) = v15;
  *(v5 + 88) = v16;
  sub_1000331C0(a1, v35);
  type metadata accessor for InitialLoadPublicKeyState(0);
  v17 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v17 + 112) = 4;
  *(v17 + 120) = sub_10008B5FC(&off_100136A28);
  v18 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v9(v17 + v18, 0, 1, v8);
  *(v17 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(v35, v17 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v17 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = v4;
  v19 = sub_1000AF2A8(&qword_100154B08, type metadata accessor for InitialLoadPublicKeyState, &unk_100108228);
  *(v5 + 96) = v17;
  *(v5 + 104) = v19;
  sub_1000331C0(a1, v35);
  type metadata accessor for ReloadPublicKeyState(0);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = 7;
  *(v20 + 120) = &_swiftEmptySetSingleton;
  v9(v20 + OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_priority, 1, 1, v8);
  sub_100037608(v35, v20 + OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps);
  v21 = sub_1000AF2A8(&qword_100154B10, type metadata accessor for ReloadPublicKeyState, &unk_100108280);
  *(v5 + 112) = v20;
  *(v5 + 120) = v21;
  sub_1000331C0(a1, v35);
  type metadata accessor for MilestoneDownloadState(0);
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = 5;
  *(v22 + 120) = &_swiftEmptySetSingleton;
  v9(v22 + OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_priority, 1, 1, v8);
  sub_100037608(v35, v22 + OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps);
  v23 = sub_1000AF2A8(&qword_100154B18, type metadata accessor for MilestoneDownloadState, &unk_1001082D8);
  *(v5 + 128) = v22;
  *(v5 + 136) = v23;
  sub_1000331C0(a1, v35);
  type metadata accessor for PatConsistencyState(0);
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v24 + 112) = 6;
  *(v24 + 120) = &_swiftEmptySetSingleton;
  v9(v24 + OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_priority, 1, 1, v8);
  sub_100037608(v35, v24 + OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps);
  v25 = sub_1000AF2A8(&qword_100154B20, type metadata accessor for PatConsistencyState, &unk_100108330);
  *(v5 + 144) = v24;
  *(v5 + 152) = v25;
  sub_1000331C0(a1, v35);
  type metadata accessor for DetectSplitViewState(0);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v26 + 112) = 8;
  *(v26 + 120) = &_swiftEmptySetSingleton;
  v9(v26 + OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_priority, 1, 1, v8);
  sub_100037608(v35, v26 + OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps);
  v27 = sub_1000AF2A8(&qword_100154B28, type metadata accessor for DetectSplitViewState, &unk_100108388);
  *(v5 + 160) = v26;
  *(v5 + 168) = v27;
  sub_1000331C0(a1, v35);
  type metadata accessor for Ready(0);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 112) = 9;
  *(v28 + 120) = sub_10008B5FC(&off_100136A50);
  v9(v28 + OBJC_IVAR____TtC15swtransparencyd5Ready_priority, 1, 1, v8);
  sub_100037608(v35, v28 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  v29 = sub_1000AF2A8(&qword_100154B30, type metadata accessor for Ready, &unk_1001083E0);
  *(v5 + 176) = v28;
  *(v5 + 184) = v29;
  sub_1000331C0(a1, v2 + 112);
  *(v2 + 160) = v4;
  type metadata accessor for SWTStateMachine(0);
  v30 = a1[3];
  v31 = a1[4];
  sub_100026F6C(a1, v30);
  v32 = *(v31 + 72);

  v32(v35, v30, v31);
  v33 = sub_1000910A0(v5, 0, 7, v35);

  *(v2 + 152) = v33;
  sub_100024E14(a1);
  return v2;
}

uint64_t sub_1000AC004(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2 + v3, 0, 1, v4);
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  return v2;
}

uint64_t sub_1000AC0DC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  *(v0 + 120) = sub_10008B5FC(&off_100136AA0);
  v1 = OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1000AC174(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 4;
  *(v4 + 120) = sub_10008B5FC(&off_100136A28);
  v5 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4 + v5, 0, 1, v6);
  *(v4 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(a1, v4 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v4 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = a2;
  return v4;
}

uint64_t sub_1000AC2B4(__int128 *a1, char a2, uint64_t *a3, void *a4)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = a2;
  *(v8 + 120) = &_swiftEmptySetSingleton;
  v9 = *a3;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_100037608(a1, v8 + *a4);
  return v8;
}

uint64_t sub_1000AC370(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 9;
  *(v2 + 120) = sub_10008B5FC(&off_100136A50);
  v3 = OBJC_IVAR____TtC15swtransparencyd5Ready_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  return v2;
}

uint64_t sub_1000AC448()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100038BE4;

  return sub_100091708();
}

uint64_t sub_1000AC4E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for CancellationError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000AC600, 0, 0);
}

uint64_t sub_1000AC600()
{
  v0[12] = *(v0[5] + 152);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1000AC6A0;

  return sub_100093974(6);
}

uint64_t sub_1000AC6A0()
{

  return _swift_task_switch(sub_1000AC79C, 0, 0);
}

uint64_t sub_1000AC79C()
{
  v1 = *(v0[5] + 160);
  v0[14] = v1;
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000AC8E0;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3, 0xD00000000000001DLL, 0x800000010010CF10);
}

uint64_t sub_1000AC8E0()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ACA34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);
    v4 = *(v2 + 128) == 0;

    return v3(v4);
  }
}

uint64_t sub_1000ACA34()
{
  v0[2] = v0[16];
  swift_errorRetain();
  sub_100024248(&qword_100152630, &qword_100103210);
  if (swift_dynamicCast())
  {
    v1 = v0[14];

    v15 = (*(*v1 + 168) + **(*v1 + 168));
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_1000ACD4C;

    return v15();
  }

  else
  {
    v4 = v0[12];
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];

    (*(v6 + 16))(v5, v4 + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger, v7);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "unknown error for isReadyEnoughForXPC %@", v10, 0xCu);
      sub_10002533C(v11, &qword_100153450, &unk_100104140);
    }

    else
    {
    }

    (*(v0[7] + 8))(v0[8], v0[6]);

    v13 = v0[1];
    v14 = v0[16] == 0;

    return v13(v14);
  }
}

uint64_t sub_1000ACD4C()
{

  return _swift_task_switch(sub_1000ACE48, 0, 0);
}

uint64_t sub_1000ACE48()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];
  v2 = v0[16] == 0;

  return v1(v2);
}

uint64_t sub_1000ACF00()
{
  v1 = v0[8];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v5 = String._bridgeToObjectiveC()();
  v6 = SFAnalyticsSamplerIntervalOncePerReport;
  v0[6] = sub_1000B6988;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000AD168;
  v0[5] = &unk_100136B90;
  v7 = _Block_copy(v0 + 2);

  [v4 addMultiSamplerForName:v5 withTimeInterval:v7 block:v6];
  _Block_release(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AD070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000B65E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000435B4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000B675C();
        v14 = v16;
      }

      result = sub_1000B6434(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

Class sub_1000AD168(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_1000B721C();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_1000AD1F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  type metadata accessor for Date();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for TransparencySWIssue();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD2E4, v2, 0);
}

uint64_t sub_1000AD2E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v14 = v0[11];
  v3 = v0[9];
  v4 = v3[17];
  v5 = v3[18];
  sub_100026F6C(v3 + 14, v4);
  SWTFollowUpType.rawValue.getter();
  Date.init()();

  TransparencySWIssue.init(issue:posted:slh:)();
  (*(v5 + 136))(v1, v4, v5);
  (*(v2 + 8))(v1, v14);
  v6 = v3[17];
  v7 = v3[18];
  sub_100026F6C(v3 + 14, v6);
  (*(v7 + 40))(v6, v7);
  v8 = v0[5];
  v9 = v0[6];
  sub_100026F6C(v0 + 2, v8);
  v15 = (*(v9 + 16) + **(v9 + 16));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000AD4F8;
  v12 = v0[7];
  v11 = v0[8];

  return v15(v12, v3 + 14, v11, v8, v9);
}

uint64_t sub_1000AD4F8()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1000AD608, v1, 0);
}

uint64_t sub_1000AD608()
{
  sub_100024E14((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AD6A0()
{
  v1 = v0[7];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  (*(v3 + 40))(v2, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_100026F6C(v0 + 2, v4);
  v8 = (*(v5 + 40) + **(v5 + 40));
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000AD7FC;

  return v8(v4, v5);
}

uint64_t sub_1000AD7FC()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100091D84, v1, 0);
}

uint64_t sub_1000AD92C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000B7374;

  return sub_100093974(4);
}

uint64_t sub_1000AD9E8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000B7374;

  return sub_100093974(3);
}

uint64_t sub_1000ADAA4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000B7374;

  return sub_100093974(1);
}

uint64_t sub_1000ADB60()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100078568;

  return sub_100093974(5);
}

uint64_t sub_1000ADBFC(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 40) = a2;
  return _swift_task_switch(sub_1000ADC20, v2, 0);
}

uint64_t sub_1000ADC20()
{
  v1 = *(*(v0 + 16) + 152);
  if (*(v0 + 40) == 1)
  {
    *(v0 + 24) = v1;

    return _swift_task_switch(sub_1000ADD10, v1, 0);
  }

  else
  {
    v2 = sub_1000258E4();
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_100077030;

    return sub_1000961B4(v2 & 1);
  }
}

uint64_t sub_1000ADD10()
{
  v1 = *(v0 + 16);
  sub_10009ADBC();

  return _swift_task_switch(sub_1000ADD78, v1, 0);
}

uint64_t sub_1000ADD78()
{
  v1 = sub_1000258E4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100077030;

  return sub_1000961B4(v1 & 1);
}

uint64_t sub_1000ADE20(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_100024248(&qword_100154B38, &qword_100108070);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  sub_100024248(&qword_100154B40, &qword_100108078);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADF5C, v1, 0);
}

uint64_t sub_1000ADF5C()
{
  v1 = v0[11];
  v2 = v1[17];
  v3 = v1[18];
  sub_100026F6C(v1 + 14, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[18] = v4;
  v8 = (*(*v4 + 272) + **(*v4 + 272));
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1000AE0CC;
  v6 = v0[17];

  return v8(v6);
}

uint64_t sub_1000AE0CC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {

    v4 = sub_1000AEA5C;
  }

  else
  {

    v4 = sub_1000AE228;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000AE228()
{
  v0[21] = v0[20];
  v1 = v0[17];
  v2 = v0[11];
  v3 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v2[17];
  v5 = v2[18];
  sub_100026F6C(v2 + 14, v4);
  LODWORD(v5) = [(*(v5 + 32))(v4 v5)];
  swift_unknownObjectRelease();
  countAndFlagsBits = 0;
  object = 0;
  if (v5)
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v11[17];
    v13 = v11[18];
    sub_100026F6C(v11 + 14, v12);
    (*(v13 + 16))(v12, v13);
    v14 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    (*(v9 + 8))(v8, v10);
  }

  v0[22] = countAndFlagsBits;
  v0[23] = object;
  v15 = *(v0[11] + 152);
  v0[24] = v15;

  return _swift_task_switch(sub_1000AE3B8, v15, 0);
}

uint64_t sub_1000AE3B8()
{
  v1 = v0[24];
  v2 = v0[11];
  swift_beginAccess();
  v0[25] = *(v1 + 144);
  v0[26] = *(v1 + 152);
  swift_unknownObjectRetain();

  return _swift_task_switch(sub_1000AE44C, v2, 0);
}

uint64_t sub_1000AE44C()
{
  v1 = v0[26];
  v2 = v0[24];
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 16))(ObjectType, v1);
  swift_unknownObjectRelease();
  v0[27] = sub_10009018C(v1);
  v0[28] = v4;
  v5 = *(v2 + 112);
  v0[29] = v5;
  v6 = (*v5 + 112) & 0xFFFFFFFFFFFFLL | 0xBE5E000000000000;
  v0[30] = *(*v5 + 112);
  v0[31] = v6;

  return _swift_task_switch(sub_1000AE524, v5, 0);
}

uint64_t sub_1000AE524()
{
  v1 = *(v0 + 88);
  *(v0 + 256) = (*(v0 + 240))();

  return _swift_task_switch(sub_1000AE5A0, v1, 0);
}

uint64_t sub_1000AE5A0()
{
  v1 = v0[24];
  v2 = v0[21];
  v0[33] = sub_1000AEBE8(v0[32]);
  v0[34] = v2;

  v3 = *(v1 + 112);
  v0[35] = v3;
  v4 = (*v3 + 136) & 0xFFFFFFFFFFFFLL | 0xDCF0000000000000;
  v0[36] = *(*v3 + 136);
  v0[37] = v4;

  return _swift_task_switch(sub_1000AE658, v3, 0);
}

uint64_t sub_1000AE658()
{
  v1 = *(v0 + 88);
  *(v0 + 304) = (*(v0 + 288))();

  return _swift_task_switch(sub_1000AE6D4, v1, 0);
}

uint64_t sub_1000AE6D4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[11];
  v0[39] = sub_1000AEE0C(v0[38]);

  sub_100025834(v1, v2, &qword_100154B40, &qword_100108078);
  v4 = v3[17];
  v5 = v3[18];
  sub_100026F6C(v3 + 14, v4);
  (*(v5 + 72))(v4, v5);
  v6 = v0[5];
  v7 = v0[6];
  sub_100026F6C(v0 + 2, v6);
  v11 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_1000AE87C;
  v9 = v0[12];

  return v11(v9, v6, v7);
}

uint64_t sub_1000AE87C()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1000AE98C, v1, 0);
}

uint64_t sub_1000AE98C()
{
  v1 = v0[17];
  TransparencySWSysdiagnose.StateMachine.init(state:flags:pendingFlags:publicKeybag:containerPath:reachability:)();
  sub_10002533C(v1, &qword_100154B40, &qword_100108078);
  sub_100024E14(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000AEA5C()
{
  v0[21] = 0;
  v1 = v0[17];
  v2 = v0[11];
  v3 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2[17];
  v5 = v2[18];
  sub_100026F6C(v2 + 14, v4);
  LODWORD(v5) = [(*(v5 + 32))(v4 v5)];
  swift_unknownObjectRelease();
  countAndFlagsBits = 0;
  object = 0;
  if (v5)
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v11[17];
    v13 = v11[18];
    sub_100026F6C(v11 + 14, v12);
    (*(v13 + 16))(v12, v13);
    v14 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    (*(v9 + 8))(v8, v10);
  }

  v0[22] = countAndFlagsBits;
  v0[23] = object;
  v15 = *(v0[11] + 152);
  v0[24] = v15;

  return _swift_task_switch(sub_1000AE3B8, v15, 0);
}

void *sub_1000AEBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = sub_10008EC4C(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_10007DDF0((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100024A68(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
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

void *sub_1000AEE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v24 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = sub_10008EC4C(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_10007DDF0((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100024A68(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
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

uint64_t sub_1000AF030(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1000AF054, v1, 0);
}

uint64_t sub_1000AF054(uint64_t a1)
{
  v2 = static Duration.milliseconds(_:)();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_100077030;

  return sub_100095EEC(9, v2, v4);
}

void *sub_1000AF120()
{
  sub_100024E14((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000AF158()
{
  sub_100024E14((v0 + 112));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000AF200(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd7Initial_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 0, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd7Initial_deps);
  return v1;
}

uint64_t sub_1000AF2A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AF350(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000AF470(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000AF5F0(uint64_t a1)
{
  v4 = (*(*a1 + 216) + **(*a1 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000AF708;

  return v4(0);
}

uint64_t sub_1000AF708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_1000AF800()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, &unk_100152620, &unk_1001031E0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000AF848()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority, &unk_100152620, &unk_1001031E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000AF8A0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  *(v0 + 120) = sub_10008B5FC(&off_100136AF0);
  v1 = OBJC_IVAR____TtC15swtransparencyd14WaitForNetwork_priority;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1000AF928(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008AB68;

  return v6(a1);
}

uint64_t sub_1000AFA48(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008AB68;

  return v6(a1);
}

uint64_t sub_1000AFBE8()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000AFC2C(char a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000AFCDC(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = 4;
  *(v2 + 120) = sub_10008B5FC(&off_100136A28);
  v5 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority;
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2 + v5, 0, 1, v6);
  *(v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_pendingFetch) = 0;
  sub_100037608(a1, v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps);
  *(v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) = a2;
  return v2;
}

uint64_t sub_1000AFDA8(uint64_t a1)
{
  v2[2] = v1;
  if (a1 == 6)
  {
LABEL_4:
    v6 = (*(*v1 + 184) + **(*v1 + 184));
    v3 = swift_task_alloc();
    v2[3] = v3;
    *v3 = v2;
    v3[1] = sub_1000AFF08;

    return v6();
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    a1 = 10;
  }

  v5 = v2[1];

  return v5(a1);
}

uint64_t sub_1000AFF08(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000B0020, v2, 0);
}

uint64_t sub_1000B0020()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
      v2 = 10;
    }

    else if (v1 == 0x8000000000000000)
    {
      v2 = 9;
    }

    else
    {
      v2 = 10;
    }
  }

  else
  {
    sub_10008B670(v1);
    v2 = 11;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000B00B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v5 = (*(*v1 + 184) + **(*v1 + 184));
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000B01C8;

  return v5();
}

uint64_t sub_1000B01C8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000B02E0, v2, 0);
}

uint64_t sub_1000B02E0()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
LABEL_11:
      v7 = v0[1];

      return v7(0x8000000000000000);
    }

    if (v1 != 0x8000000000000000)
    {
      goto LABEL_11;
    }

    v5 = v0[2];
    v6 = (*v5 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
    v0[6] = *(*v5 + 192);
    v0[7] = v6;

    return _swift_task_switch(sub_1000B04B0, v5, 0);
  }

  else
  {
    v2 = v0[2];
    sub_10008B670(v1);
    v8 = (*(*v2 + 216) + **(*v2 + 216));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100088E2C;

    return v8(0);
  }
}

uint64_t sub_1000B04B0()
{
  (*(v0 + 48))(1);
  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B051C()
{
  v1[7] = v0;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000B05DC, v0, 0);
}

uint64_t sub_1000B05DC()
{
  if ((*(*v0[7] + 136))())
  {

    v1 = v0[1];

    return v1(0x8000000000000008);
  }

  else
  {
    v3 = v0[7];
    v4 = *(*v3 + 144);
    v5 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0xE4D0000000000000;
    v0[11] = v4;
    v0[12] = v5;
    v4(1);
    v6 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps;
    v0[13] = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps;
    v7 = (v3 + v6);
    v8 = v7[3];
    v9 = v7[4];
    sub_100026F6C(v7, v8);
    v10 = v7[3];
    v11 = v7[4];
    sub_100026F6C(v7, v10);
    v12 = (*(v11 + 48))(v10, v11);
    v0[14] = v12;
    v14 = (*(v9 + 104) + **(v9 + 104));
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_1000B0818;

    return v14(v0 + 2, v12, v8, v9);
  }
}

uint64_t sub_1000B0818()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);

  return _swift_task_switch(sub_1000B0940, v2, 0);
}

uint64_t sub_1000B0940()
{
  v1 = (v0[7] + v0[13]);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[16] = v4;
  v7 = (*(*v4 + 352) + **(*v4 + 352));
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1000B0AB4;

  return v7(v0 + 2);
}

uint64_t sub_1000B0AB4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1000B0E44;
  }

  else
  {
    v4 = sub_1000B0BFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B0BFC()
{
  v1 = *(v0 + 56);
  (*(v0 + 88))(0);
  sub_100024E14((v0 + 16));
  v4 = (*(**(v1 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) + 168) + **(**(v1 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) + 168));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1000B0D30;

  return v4();
}

uint64_t sub_1000B0D30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_1000B0E44()
{
  v1 = v0[11];
  sub_100024E14(v0 + 2);
  v1(0);
  Logger.init()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "load config threw error: %@", v4, 0xCu);
    sub_10002533C(v5, &qword_100153450, &unk_100104140);
  }

  v7 = v0[18];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  (*(v9 + 8))(v8, v10);
  type metadata accessor for ReachabilityTracker(0);
  v11 = _convertErrorToNSError(_:)();
  sub_1000212AC(v11);
  v13 = v12;

  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v7 | 0x4000000000000000;
  }

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_1000B1010()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B1078()
{

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B10F0(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B1210(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B13B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = (*a1 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
  v2[12] = *(*a1 + 192);
  v2[13] = v5;

  return _swift_task_switch(sub_1000B1490, a1, 0);
}

uint64_t sub_1000B1490()
{
  v1 = *(v0 + 64);
  (*(v0 + 96))(1);

  return _swift_task_switch(sub_1000B1500, v1, 0);
}

uint64_t sub_1000B1500()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps;
  v0[14] = OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v0[15] = v8;
  v11 = (*(v5 + 104) + **(v5 + 104));
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000B1690;

  return v11(v0 + 2, v8, v4, v5);
}

uint64_t sub_1000B1690()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 64);

  return _swift_task_switch(sub_1000B17B8, v2, 0);
}

uint64_t sub_1000B17B8()
{
  v1 = (v0[8] + v0[14]);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[17] = v4;
  v7 = (*(*v4 + 360) + **(*v4 + 360));
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1000B192C;

  return v7(v0 + 2);
}

uint64_t sub_1000B192C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1000B1AE0;
  }

  else
  {
    v4 = sub_1000B1A74;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B1A74()
{
  sub_100024E14((v0 + 16));

  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B1AE0()
{
  sub_100024E14((v0 + 16));
  Logger.init()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "reload config threw error: %@", v3, 0xCu);
    sub_10002533C(v4, &qword_100153450, &unk_100104140);
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  (*(v7 + 8))(v6, v8);
  type metadata accessor for ReachabilityTracker(0);
  v9 = _convertErrorToNSError(_:)();
  sub_1000212AC(v9);
  v11 = v10;

  if (v11)
  {
    v15 = (*(**(v0 + 56) + 216) + **(**(v0 + 56) + 216));
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_1000B1D94;

    return v15(1);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(9);
  }
}

uint64_t sub_1000B1D94()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1000B1EA4, v1, 0);
}

uint64_t sub_1000B1EA4()
{

  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B1F38(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B2058(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B21F0(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  return _swift_task_switch(sub_1000B2210, v1, 0);
}

uint64_t sub_1000B2210()
{
  v1 = v0[34];
  v2 = OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps;
  v0[35] = OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[36] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[37] = *(*v5 + 160);
  v0[38] = v6;

  return _swift_task_switch(sub_1000B22D8, v5, 0);
}

uint64_t sub_1000B22D8()
{
  v1 = (*(v0 + 296))();
  *(v0 + 312) = v1;

  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0x5D5C000000000000;
    *(v0 + 320) = *(*v2 + 200);
    *(v0 + 328) = v3;
    v4 = sub_1000B23A0;
  }

  else
  {
    v5 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 352) = *(*v2 + 184);
    *(v0 + 360) = v5;
    v4 = sub_1000B2ADC;
  }

  return _swift_task_switch(v4, v2, 0);
}

uint64_t sub_1000B23A0()
{
  v1 = *(v0 + 272);
  *(v0 + 368) = (*(v0 + 320))(1) & 1;

  return _swift_task_switch(sub_1000B2418, v1, 0);
}

uint64_t sub_1000B2418()
{
  if (*(v0 + 368))
  {

    v1 = *(v0 + 264);
    v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 352) = *(*v1 + 184);
    *(v0 + 360) = v2;

    return _swift_task_switch(sub_1000B2ADC, v1, 0);
  }

  else
  {
    v3 = (*(v0 + 272) + *(v0 + 280));
    v4 = v3[3];
    v5 = v3[4];
    sub_100026F6C(v3, v4);
    v8 = (*(v5 + 112) + **(v5 + 112));
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_1000B25B0;

    return v8(v0 + 184, v4, v5);
  }
}

uint64_t sub_1000B25B0()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_1000B26C0, v1, 0);
}

uint64_t sub_1000B26C0()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  v3 = (*(v0 + 272) + *(v0 + 280));
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  v23 = (*(v5 + 8))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v22 = (*(v7 + 48))(v6, v7);
  v9 = v3[3];
  v8 = v3[4];
  sub_100026F6C(v3, v9);
  v10 = *(v8 + 64);
  v11 = v1;
  v12 = v10(v9, v8);
  v25 = type metadata accessor for KTSWDB();
  v26 = sub_1000AF2A8(&qword_100152F48, type metadata accessor for KTSWDB, &unk_100105078);
  *&v24 = v12;
  sub_1000331C0(v0 + 184, v0 + 224);
  v13 = v3[3];
  v14 = v3[4];
  sub_100026F6C(v3, v13);
  v15 = (*(v14 + 80))(v13, v14);
  v16 = v3[3];
  v17 = v3[4];
  sub_100026F6C(v3, v16);
  (*(v17 + 88))(v27, v16, v17);

  sub_1000593E8(v23, v22, v11, &v24, v2, (v0 + 224), 0, v15, v0 + 16, v27);
  sub_100059DE0();
  v19 = v18;
  v20 = swift_task_alloc();
  *(v0 + 344) = v20;
  *v20 = v0;
  v20[1] = sub_1000B2930;

  return sub_100059E18(v19);
}

uint64_t sub_1000B2930()
{
  v2 = *v1;

  v3 = *(v2 + 272);
  if (v0)
  {

    v4 = sub_1000B7380;
  }

  else
  {
    v4 = sub_1000B2A68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B2A68()
{
  sub_10006158C(v0 + 16);
  sub_100024E14((v0 + 184));
  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B2ADC()
{
  (*(v0 + 352))(4);
  v1 = *(v0 + 8);

  return v1(7);
}

uint64_t sub_1000B2B70(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B2C90(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B2E30(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_1000B2E50, v1, 0);
}

uint64_t sub_1000B2E50()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps;
  v0[34] = OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[35] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[36] = *(*v5 + 160);
  v0[37] = v6;

  return _swift_task_switch(sub_1000B2F18, v5, 0);
}

uint64_t sub_1000B2F18()
{
  v1 = (*(v0 + 288))();
  *(v0 + 304) = v1;

  v2 = *(v0 + 256);
  if (v1)
  {
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0x5D5C000000000000;
    *(v0 + 312) = *(*v2 + 200);
    *(v0 + 320) = v3;
    v4 = sub_1000B2FE0;
  }

  else
  {
    v5 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 344) = *(*v2 + 184);
    *(v0 + 352) = v5;
    v4 = sub_1000B3700;
  }

  return _swift_task_switch(v4, v2, 0);
}

uint64_t sub_1000B2FE0()
{
  v1 = *(v0 + 264);
  *(v0 + 360) = (*(v0 + 312))(1) & 1;

  return _swift_task_switch(sub_1000B3058, v1, 0);
}

uint64_t sub_1000B3058()
{
  if (*(v0 + 360))
  {

    v1 = *(v0 + 256);
    v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 344) = *(*v1 + 184);
    *(v0 + 352) = v2;

    return _swift_task_switch(sub_1000B3700, v1, 0);
  }

  else
  {
    v3 = (*(v0 + 264) + *(v0 + 272));
    v4 = v3[3];
    v5 = v3[4];
    sub_100026F6C(v3, v4);
    v8 = (*(v5 + 120) + **(v5 + 120));
    v6 = swift_task_alloc();
    *(v0 + 328) = v6;
    *v6 = v0;
    v6[1] = sub_1000B31F0;

    return v8(v0 + 176, v4, v5);
  }
}

uint64_t sub_1000B31F0()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1000B3300, v1, 0);
}

uint64_t sub_1000B3300()
{
  v26 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = (*(v0 + 264) + *(v0 + 272));
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  v21 = (*(v5 + 8))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v20 = (*(v7 + 48))(v6, v7);
  v9 = v3[3];
  v8 = v3[4];
  sub_100026F6C(v3, v9);
  v10 = *(v8 + 64);
  v11 = v1;
  v12 = v10(v9, v8);
  v23 = type metadata accessor for KTSWDB();
  v24 = sub_1000AF2A8(&qword_100152F48, type metadata accessor for KTSWDB, &unk_100105078);
  *&v22 = v12;
  sub_1000331C0(v0 + 176, v0 + 216);
  v13 = v3[3];
  v14 = v3[4];
  sub_100026F6C(v3, v13);
  v15 = (*(v14 + 80))(v13, v14);
  v16 = v3[3];
  v17 = v3[4];
  sub_100026F6C(v3, v16);
  (*(v17 + 88))(v25, v16, v17);

  sub_1000476E0(v21, v20, v11, &v22, v2, (v0 + 216), v15, v25, v0 + 16);
  v18 = swift_task_alloc();
  *(v0 + 336) = v18;
  *v18 = v0;
  v18[1] = sub_1000B3554;

  return sub_100049224();
}

uint64_t sub_1000B3554()
{
  v2 = *v1;

  v3 = *(v2 + 264);
  if (v0)
  {

    v4 = sub_1000B7384;
  }

  else
  {
    v4 = sub_1000B368C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B368C()
{
  sub_10004C15C(v0 + 16);
  sub_100024E14((v0 + 176));
  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B3700()
{
  (*(v0 + 344))(3);
  v1 = *(v0 + 8);

  return v1(7);
}

uint64_t sub_1000B3794(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B38B4(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B3A54(__int128 *a1, char a2, uint64_t *a3, void *a4)
{
  swift_defaultActor_initialize();
  *(v4 + 112) = a2;
  *(v4 + 120) = &_swiftEmptySetSingleton;
  v9 = *a3;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  sub_100037608(a1, v4 + *a4);
  return v4;
}

uint64_t sub_1000B3B00()
{
  v1[12] = v0;
  v2 = type metadata accessor for TransparencySWIssue();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for SWTFollowUpType();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000B3D10, v0, 0);
}

uint64_t sub_1000B3D10()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps;
  v0[30] = OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[31] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[32] = *(*v5 + 160);
  v0[33] = v6;

  return _swift_task_switch(sub_1000B3DD8, v5, 0);
}

uint64_t sub_1000B3DD8()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = (*(v0 + 256))();

  return _swift_task_switch(sub_1000B3E54, v1, 0);
}

uint64_t sub_1000B3E54()
{
  v95 = v0;
  v1 = v0[34];
  if (v1)
  {
    v2 = (v0[12] + v0[30]);
    v3 = v2[3];
    v4 = v2[4];
    sub_100026F6C(v2, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = sub_10004CE5C(v5);
    v0[35] = v6;
    v0[36] = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = (v0[12] + v0[30]);
      v11 = v10[3];
      v12 = v10[4];
      sub_100026F6C(v10, v11);
      v13 = [(*(v12 + 32))(v11 v12)];
      swift_unknownObjectRelease();
      [v13 atBackgroundFollowupDelayPeriod];
      swift_unknownObjectRelease();
      Date.init(timeIntervalSinceNow:)();
      result = [v1 patLogBeginningMs];
      v0[37] = result;
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      v16 = v0[29];
      v17 = (v0[12] + v0[30]);
      v18 = v17[3];
      v19 = v17[4];
      sub_100026F6C(v17, v18);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1000531A4(v8, v9, v15, 2, v16);
      v0[38] = v20;
      v0[39] = 0;
      v22 = v20;

      if (*(v22 + 16))
      {
        Logger.init()();

        v23 = v1;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        v26 = os_log_type_enabled(v24, v25);
        v27 = v0[25];
        v28 = v0[21];
        v90 = v0[20];
        if (v26)
        {
          v29 = swift_slowAlloc();
          v86 = v27;
          v30 = swift_slowAlloc();
          v94[0] = v30;
          *v29 = 136446466;
          *(v29 + 4) = sub_100021D24(v8, v9, v94);
          *(v29 + 12) = 2050;
          *(v29 + 14) = [v23 patLogBeginningMs];

          _os_log_impl(&_mh_execute_header, v24, v25, "Found %{public}s PAT split view from before CFU delay for %{public}llu epoch", v29, 0x16u);
          sub_100024E14(v30);

          (*(v28 + 8))(v86, v90);
        }

        else
        {

          (*(v28 + 8))(v27, v90);
        }

        v39 = v0[14];
        v38 = v0[15];
        v91 = v0[13];
        v40 = (v0[12] + v0[30]);
        (*(v0[17] + 104))(v0[19], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
        v41 = v40[3];
        v42 = v40[4];
        sub_100026F6C(v40, v41);
        SWTFollowUpType.rawValue.getter();
        Date.init()();

        TransparencySWIssue.init(issue:posted:slh:)();
        (*(v42 + 136))(v38, v41, v42);
        (*(v39 + 8))(v38, v91);
        v43 = v40[3];
        v44 = v40[4];
        sub_100026F6C(v40, v43);
        (*(v44 + 40))(v43, v44);
        v45 = v0[5];
        v46 = v0[6];
        sub_100026F6C(v0 + 2, v45);
        v92 = (*(v46 + 16) + **(v46 + 16));
        v47 = swift_task_alloc();
        v0[40] = v47;
        *v47 = v0;
        v47[1] = sub_1000B4AE8;
        v48 = v0[19];
        v49 = v40;
        v50 = v22;
        v51 = v45;
        v52 = v46;
        v53 = v92;
LABEL_15:

        return v53(v48, v49, v50, v51, v52);
      }

      v32 = v0[35];
      v31 = v0[36];
      v33 = (v0[12] + v0[30]);
      v34 = v33[3];
      v35 = v33[4];
      sub_100026F6C(v33, v34);
      (*(v35 + 64))(v34, v35);
      sub_100051B88(v32, v31, 0, 1, 5);
      v0[41] = v36;
      v37 = v0[29];
      v54 = v36;
      v56 = v0[35];
      v55 = v0[36];
      v57 = v0[30];
      v58 = v0[12];

      v59 = (v58 + v57);
      v60 = *(v58 + v57 + 24);
      v61 = v59[4];
      sub_100026F6C(v59, v60);
      (*(v61 + 64))(v60, v61);
      v62 = sub_1000531A4(v56, v55, v54, 5, v37);
      v0[42] = v62;
      v0[43] = 0;
      v63 = v62;

      if (*(v63 + 16))
      {
        v93 = v63;
        Logger.init()();

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v67 = v0[35];
          v66 = v0[36];
          v68 = v0[24];
          v69 = v0[21];
          v87 = v0[20];
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v94[0] = v71;
          *v70 = 136446466;
          *(v70 + 4) = sub_100021D24(v67, v66, v94);
          *(v70 + 12) = 2050;
          *(v70 + 14) = v54;
          _os_log_impl(&_mh_execute_header, v64, v65, "Found %{public}s AT split view from before CFU delay for %{public}lld epoch", v70, 0x16u);
          sub_100024E14(v71);

          (*(v69 + 8))(v68, v87);
        }

        else
        {
          v73 = v0[24];
          v75 = v0[20];
          v74 = v0[21];

          (*(v74 + 8))(v73, v75);
        }

        v76 = v0[15];
        v77 = v0[14];
        v88 = v0[13];
        v78 = (v0[12] + v0[30]);
        (*(v0[17] + 104))(v0[18], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
        v79 = v78[3];
        v80 = v78[4];
        sub_100026F6C(v78, v79);
        SWTFollowUpType.rawValue.getter();
        Date.init()();
        TransparencySWIssue.init(issue:posted:slh:)();
        (*(v80 + 136))(v76, v79, v80);
        (*(v77 + 8))(v76, v88);
        v81 = v78[3];
        v82 = v78[4];
        sub_100026F6C(v78, v81);
        (*(v82 + 40))(v81, v82);
        v83 = v0[10];
        v84 = v0[11];
        sub_100026F6C(v0 + 7, v83);
        v89 = (*(v84 + 16) + **(v84 + 16));
        v85 = swift_task_alloc();
        v0[44] = v85;
        *v85 = v0;
        v85[1] = sub_1000B5390;
        v48 = v0[18];
        v49 = v78;
        v53 = v89;
        v50 = v93;
        v51 = v83;
        v52 = v84;
        goto LABEL_15;
      }

      v72 = v0[34];
      (*(v0[27] + 8))(v0[29], v0[26]);
    }

    else
    {
    }
  }

  v21 = v0[1];

  return v21(9);
}

uint64_t sub_1000B4AE8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1000B4BF8, v1, 0);
}

uint64_t sub_1000B4BF8()
{
  v60 = v0;
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[29];
  v6 = (v0[12] + v0[30]);
  sub_100024E14(v0 + 2);
  v7 = v6[3];
  v8 = v6[4];
  sub_100026F6C(v6, v7);
  (*(v8 + 64))(v7, v8);
  sub_100053230(v4, v3, v2, 2, v5, 3);
  v9 = v1;
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    (*(v12 + 8))(v0[19], v0[16]);
  }

  v14 = v0[35];
  v13 = v0[36];
  v15 = (v0[12] + v0[30]);
  v16 = v15[3];
  v17 = v15[4];
  sub_100026F6C(v15, v16);
  (*(v17 + 64))(v16, v17);
  sub_100051B88(v14, v13, 0, 1, 5);
  v0[41] = v18;
  v19 = v18;
  v21 = v0[35];
  v20 = v0[36];
  v22 = v0[29];
  v23 = v0[30];
  v24 = v0[12];

  v25 = (v24 + v23);
  v26 = *(v24 + v23 + 24);
  v27 = v25[4];
  sub_100026F6C(v25, v26);
  (*(v27 + 64))(v26, v27);
  v28 = sub_1000531A4(v21, v20, v19, 5, v22);
  v0[42] = v28;
  v0[43] = 0;
  v31 = v28;

  if (*(v31 + 16))
  {
    v58 = v31;
    Logger.init()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = v0[35];
      v34 = v0[36];
      v36 = v0[24];
      v37 = v0[21];
      v55 = v0[20];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v59 = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_100021D24(v35, v34, &v59);
      *(v38 + 12) = 2050;
      *(v38 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v32, v33, "Found %{public}s AT split view from before CFU delay for %{public}lld epoch", v38, 0x16u);
      sub_100024E14(v39);

      (*(v37 + 8))(v36, v55);
    }

    else
    {
      v41 = v0[24];
      v43 = v0[20];
      v42 = v0[21];

      (*(v42 + 8))(v41, v43);
    }

    v44 = v0[15];
    v45 = v0[14];
    v56 = v0[13];
    v46 = (v0[12] + v0[30]);
    (*(v0[17] + 104))(v0[18], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
    v47 = v46[3];
    v48 = v46[4];
    sub_100026F6C(v46, v47);
    SWTFollowUpType.rawValue.getter();
    Date.init()();
    TransparencySWIssue.init(issue:posted:slh:)();
    (*(v48 + 136))(v44, v47, v48);
    (*(v45 + 8))(v44, v56);
    v49 = v46[3];
    v50 = v46[4];
    sub_100026F6C(v46, v49);
    (*(v50 + 40))(v49, v50);
    v51 = v0[10];
    v52 = v0[11];
    sub_100026F6C(v0 + 7, v51);
    v57 = (*(v52 + 16) + **(v52 + 16));
    v53 = swift_task_alloc();
    v0[44] = v53;
    *v53 = v0;
    v53[1] = sub_1000B5390;
    v54 = v0[18];

    return v57(v54, v46, v58, v51, v52);
  }

  else
  {
    v40 = v0[34];
    (*(v0[27] + 8))(v0[29], v0[26]);

    v29 = v0[1];

    return v29(9);
  }
}

uint64_t sub_1000B5390()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1000B54BC, v1, 0);
}

uint64_t sub_1000B54BC()
{
  v1 = v0[43];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[29];
  v6 = (v0[12] + v0[30]);
  sub_100024E14(v0 + 7);
  v7 = v6[3];
  v8 = v6[4];
  sub_100026F6C(v6, v7);
  (*(v8 + 64))(v7, v8);
  sub_100053230(v4, v3, v2, 5, v5, 3);
  if (v1)
  {
  }

  v9 = v0[34];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];

  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v16 = v0[1];

  return v16(9);
}

uint64_t sub_1000B5690(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B57B0(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B5944(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 9;
  *(v1 + 120) = sub_10008B5FC(&off_100136A50);
  v3 = OBJC_IVAR____TtC15swtransparencyd5Ready_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  return v1;
}

uint64_t sub_1000B59EC(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return (*(v1 + 8))(10);
  }

  else
  {
    return (*(v1 + 8))((0x805060A070AuLL >> (8 * a1)));
  }
}

uint64_t sub_1000B5A48()
{
  v1 = (*(v0 + 56) + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v6 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000B5B80;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_1000B5B80()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1000B5C90, v1, 0);
}

uint64_t sub_1000B5C90()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100026F6C(v0 + 2, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5DB4;

  return v5(v1, v2);
}

uint64_t sub_1000B5DB4()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1000B5EC4, v1, 0);
}

uint64_t sub_1000B5EC4()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_1000B5F50(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

uint64_t sub_1000B6070(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008BC80;

  return v6(a1);
}

Swift::Int sub_1000B6190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024248(&qword_100155348, &qword_100108650);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B6434(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000B65E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000435B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000B6190(v16, a4 & 1);
      v11 = sub_1000435B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000B675C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1000B675C()
{
  v1 = v0;
  sub_100024248(&qword_100155348, &qword_100108650);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

unint64_t sub_1000B6988()
{
  v1 = v0;
  v22 = sub_1000B7268(_swiftEmptyArrayStorage);
  v2 = v0[17];
  v3 = v0[18];
  sub_100026F6C(v0 + 14, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v5 = [v4 currentEnvironment];

  v6 = v0[17];
  v7 = v0[18];
  sub_100026F6C(v1 + 14, v1[17]);
  v8 = [(*(v7 + 32))(v6 v7)];
  swift_unknownObjectRelease();
  v9 = [v8 getEnvironment];
  swift_unknownObjectRelease();
  v10 = v1[17];
  v11 = v1[18];
  sub_100026F6C(v1 + 14, v10);
  v12 = [(*(v11 + 32))(v10 v11)];
  swift_unknownObjectRelease();
  v13 = v1[17];
  v14 = v1[18];
  sub_100026F6C(v1 + 14, v13);
  v15 = (*(v14 + 48))(v13, v14);
  v16 = [v15 configured];

  sub_1000AD070([objc_allocWithZone(NSNumber) initWithBool:v16], 0x676142676663, 0xE600000000000000);
  v17 = v1[17];
  v18 = v1[18];
  sub_100026F6C(v1 + 14, v17);
  v19 = (*(v18 + 48))(v17, v18);
  v20 = [v19 configurationExpired];

  sub_1000AD070([objc_allocWithZone(NSNumber) initWithBool:v20], 0x707845676663, 0xE600000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v5], 0x766E45624B747773, 0xE800000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v12], 0x766E457441747773, 0xE800000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v9], 0x766E45744B747773, 0xE800000000000000);
  return v22;
}

uint64_t sub_1000B6C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B6C84(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B48, type metadata accessor for Initial, &unk_100108140);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6CDC(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B50, type metadata accessor for WaitForNetwork, &unk_100108194);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6D34(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B58, type metadata accessor for InitialLoadPublicKeyState, &unk_1001081EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6D8C(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B60, type metadata accessor for ReloadPublicKeyState, &unk_100108244);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6DE4(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B68, type metadata accessor for MilestoneDownloadState, &unk_10010829C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6E3C(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B70, type metadata accessor for PatConsistencyState, &unk_1001082F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6E94(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B78, type metadata accessor for DetectSplitViewState, &unk_10010834C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6EEC(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B80, type metadata accessor for Ready, &unk_1001083A4);
  *(a1 + 8) = result;
  return result;
}

void sub_1000B6F78(uint64_t a1)
{
  sub_10008B9A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000B7034(uint64_t a1)
{
  sub_10008B9A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000B7108(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void sub_1000B7160(uint64_t a1)
{
  sub_10008B9A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000B721C()
{
  result = qword_100152F18;
  if (!qword_100152F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100152F18);
  }

  return result;
}

unint64_t sub_1000B7268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100155348, &qword_100108650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000435B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000B738C(char a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();

  [v1 setHTTPMethod:v4];

  if (a1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  [v1 setValue:v6 forHTTPHeaderField:v7];

LABEL_5:
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  [v1 setValue:v8 forHTTPHeaderField:v9];

  v10 = objc_opt_self();
  v11 = [v10 deviceUserAgent];
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = String._bridgeToObjectiveC()();
  [v1 setValue:v11 forHTTPHeaderField:v12];

  sub_100087F8C();
  BinaryInteger.description.getter();
  v13 = String._bridgeToObjectiveC()();

  [v1 setValue:v13 forHTTPHeaderField:off_1001523A0];

  v14 = ProtocolVersion_EnumDescriptor();
  v15 = [v14 textFormatNameForValue:kTransparencyProtocolVersion];

  [v2 setValue:v15 forHTTPHeaderField:off_1001523A8];
  v16 = [v10 transparencyVersionStr];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v2 setValue:v16 forHTTPHeaderField:off_1001523B8];

  v17 = [v10 automatedDeviceGroup];
  if (v17)
  {
    v18 = v17;
    [v2 setValue:v17 forHTTPHeaderField:off_1001523B0];
  }
}

uint64_t sub_1000B76E0(char a1)
{
  if (a1)
  {
    return 1414745936;
  }

  else
  {
    return 5522759;
  }
}

uint64_t sub_1000B7708(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100136E08, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B775C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1414745936;
  }

  else
  {
    v3 = 5522759;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1414745936;
  }

  else
  {
    v5 = 5522759;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000B77F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7868(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000B78C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7938@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100136E08, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000B7998(uint64_t *a1@<X8>)
{
  v2 = 5522759;
  if (*v1)
  {
    v2 = 1414745936;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_1000B79C8(uint64_t a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 cachePolicy:0 timeoutInterval:a2];

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

unint64_t sub_1000B7A7C()
{
  result = qword_100155350;
  if (!qword_100155350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155350);
  }

  return result;
}

double sub_1000BCE18(void *a1)
{
  sub_1000BD258(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

float sub_1000BCE54(void *a1)
{
  sub_1000BD258(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_1000BCE94(uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  while (v2 <= 0x3F)
  {
    sub_1000BD258(a1, 1);
    v4 = *a1;
    v5 = a1[2];
    a1[2] = v5 + 1;
    LOBYTE(v4) = *(v4 + v5);
    v3 |= (v4 & 0x7F) << v2;
    v2 += 7;
    if ((v4 & 0x80) == 0)
    {
      return v3;
    }
  }

  sub_1000BD0CC(-105, @"Invalid VarInt64");
  return 0;
}

uint64_t sub_1000BCF34(void *a1)
{
  sub_1000BD258(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t sub_1000BCF70(void *a1)
{
  sub_1000BD258(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_1000BD014(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 8) || v2 == *(a1 + 24))
  {
    v3 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v3 = sub_1000BCE94(a1);
    *(a1 + 32) = v3;
    if (!sub_1000F1CEC(v3))
    {
      sub_1000BD0CC(-103, @"Invalid wireformat in tag.");
      v3 = *(a1 + 32);
    }

    if (!sub_1000F1CE4(v3))
    {
      sub_1000BD0CC(-103, @"A zero field number on the wire is invalid.");
      return *(a1 + 32);
    }
  }

  return v3;
}

id sub_1000BD0CC(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v8 = @"Reason";
    v9 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = @"TransparencyGPBCodedInputStreamUnderlyingErrorKey";
  v7 = [NSError errorWithDomain:@"TransparencyGPBCodedInputStreamErrorDomain" code:a1 userInfo:v4];
  return [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"TransparencyGPBCodedInputStreamException"];
}

const __CFString *sub_1000BD1C4(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (!v2)
  {
    return &stru_100139EB0;
  }

  sub_1000BD258(a1, v2);
  result = [[NSString alloc] initWithBytes:*a1 + a1[2] length:v2 encoding:4];
  a1[2] += v2;
  if (!result)
  {
    sub_1000BD0CC(-104, 0);
    return 0;
  }

  return result;
}

void *sub_1000BD258(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2] + a2;
  if (v3 > result[1])
  {
    result = sub_1000BD0CC(-100, 0);
  }

  v4 = v2[3];
  if (v3 > v4)
  {
    v2[2] = v4;

    return sub_1000BD0CC(-101, 0);
  }

  return result;
}

id sub_1000BD2C8(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_1000BD258(a1, v3);
  result = [[NSData alloc] initWithBytes:*a1 + a1[2] length:v3];
  a1[2] += v3;
  return result;
}

id sub_1000BD334(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_1000BD258(a1, v3);
  result = [[NSData alloc] initWithBytesNoCopy:*a1 + a1[2] length:v3 freeWhenDone:0];
  a1[2] += v3;
  return result;
}

unint64_t sub_1000BD3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v4 > v3)
  {
    sub_1000BD0CC(-102, 0);
  }

  *(a1 + 24) = v4;
  return v3;
}

_DWORD *sub_1000BD404(_DWORD *result, int a2)
{
  if (result[8] != a2)
  {
    return sub_1000BD0CC(-103, @"Unexpected tag read");
  }

  return result;
}

uint64_t *sub_1000BDE70(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_1000C0E60(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = BYTE3(a2);
  v12 = v3[2];
  if (v12 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v12 = v3[2];
  }

  v13 = *v3;
  v3[2] = v12 + 1;
  *(v13 + v12) = BYTE4(a2);
  v14 = v3[2];
  if (v14 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v14 = v3[2];
  }

  v15 = *v3;
  v3[2] = v14 + 1;
  *(v15 + v14) = BYTE5(a2);
  v16 = v3[2];
  if (v16 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v16 = v3[2];
  }

  v17 = *v3;
  v3[2] = v16 + 1;
  *(v17 + v16) = BYTE6(a2);
  v18 = v3[2];
  if (v18 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v18 = v3[2];
  }

  v19 = *v3;
  v3[2] = v18 + 1;
  *(v19 + v18) = HIBYTE(a2);
  return result;
}