uint64_t sub_10002DB70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DBB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DC00(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_10002DFFC();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_10002DD3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002DDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SelectableEventLoop.ExternalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SocketChannelLifecycleManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002DF4CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002DF88()
{
  result = qword_1002AD908[0];
  if (!qword_1002AD908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002AD908);
  }

  return result;
}

uint64_t sub_10002E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E070(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10002E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10002E17C()
{

  return sub_1000A13B0(v0);
}

uint64_t sub_10002E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void sub_10002E1B4()
{
  v1._countAndFlagsBits = 0x70757320746F6E20;
  v1._object = 0xEE00646574726F70;

  sub_1001F6CA8(v1);
}

uint64_t sub_10002E1E4(uint64_t a1)
{

  return swift_getObjectType();
}

void sub_10002E204()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;
  v3._countAndFlagsBits = 0x206E6F6974706FLL;
  v3._object = 0xE700000000000000;

  sub_1001F6CA8(v3);
}

void sub_10002E288()
{

  debugOnly(_:)();
}

uint64_t sub_10002E2A4()
{

  return sub_1000287AC();
}

void sub_10002E32C()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  sub_1001F77B8(23);
}

uint64_t sub_10002E34C(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_10002E39C()
{

  return swift_unknownObjectRelease();
}

void sub_10002E3B4()
{

  debugOnly(_:)();
}

uint64_t NIOMulticastNotSupportedError.device.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PriorityQueue.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10002E9DC(a1, a2, a3, a4);

  return Heap.remove(value:)(v4, v5);
}

void PriorityQueue.push(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10002E9DC(a1, a2, a3, a4);

  Heap.append(_:)();
}

uint64_t PriorityQueue.peek()()
{
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  return sub_1001F7198();
}

uint64_t PriorityQueue.isEmpty.getter()
{
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  return sub_1001F71A8() & 1;
}

Swift::Void __swiftcall PriorityQueue.clear()()
{
  v2 = Heap.init()(*(v0 + 16));

  *v1 = v2;
}

uint64_t static PriorityQueue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Heap.count.getter(a1, a3);
  if (v7 == Heap.count.getter(a2, a3))
  {
    type metadata accessor for PriorityQueue(0, a3, a4, v8);
    sub_10002E9C4();
    swift_getWitnessTable();
    v9 = sub_1001F6E78();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002E6BC(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t (*a3)(uint64_t))
{
  v3 = a2(0, *(a1 + 16), *(a1 + 24));

  return a3(v3);
}

uint64_t sub_10002E720@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  Scheduled.futureResult.getter(v3);

  *a1 = v3;
  return result;
}

uint64_t PriorityQueue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F77B8(28);
  v8._object = 0x8000000100223F70;
  v8._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v8);
  Heap.count.getter(a1, a2);
  v9._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v9);

  v10._countAndFlagsBits = 2112041;
  v10._object = 0xE300000000000000;
  sub_1001F6CA8(v10);
  type metadata accessor for PriorityQueue(0, a2, a3, v6);

  sub_10002E9C4();
  swift_getWitnessTable();
  sub_1001F6FD8();
  sub_1001F6FC8();
  swift_getWitnessTable();
  sub_1001F7E78();

  return 0;
}

uint64_t sub_10002E914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 16);

  return type metadata accessor for Heap(0, v6, v5, a4);
}

unint64_t sub_10002E9FC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = 15;
  while (1)
  {
    v9 = v8 >> 14;
    if (v8 >> 14 == v5)
    {
      return v9 != v5;
    }

    result = v8;
    if ((v8 & 0xC) == v7)
    {
      v13 = sub_100037908();
      result = sub_1001EE2BC(v13, v14, v15);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = a1;
      v20[1] = v21;
      v12 = *(v20 + v11);
    }

    else
    {
      result = v19;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1001F7858();
      }

      v12 = *(result + v11);
    }

    if ((v8 & 0xC) == v7)
    {
      v16 = sub_100037908();
      result = sub_1001EE2BC(v16, v17, v18);
      v8 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      if (v4 <= v8 >> 16)
      {
        goto LABEL_27;
      }

      sub_100037908();
      v8 = sub_1001F6D08();
      if (v12 < 0)
      {
        return v9 != v5;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v12 < 0)
      {
        return v9 != v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t HTTPServerPipelineHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  HTTPServerPipelineHandler.init()();
  return v0;
}

uint64_t HTTPServerPipelineHandler.init()()
{
  *(v0 + 16) = 2;
  *(v0 + 24) = sub_10002ECB0(0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 512;
  *(v0 + 50) = 2;
  return v0;
}

unint64_t sub_10002EC00(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v1 = sub_100106280(result);
    memset(v2, 0, sizeof(v2));
    v3 = 1;
    return sub_1001CAAEC(v2, v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002EC5C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    sub_100106280(result);
    sub_1000378B8();
    v3 = -1;
    return sub_1001CAB90(v2, v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002ECB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    sub_100106280(result);
    sub_1000378B8();
    v3 = -256;
    return sub_1001CAD00(v2, v1);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10002ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

void HTTPServerPipelineHandler.channelRead(context:data:)()
{
  if ((*(v1 + 48) & 0xFE) != 2)
  {
    sub_100037B94();
    sub_100037C40(v1 + 24, v9);
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = __OFSUB__(v3, v2);
    v5 = v3 - v2;
    if (v5 < 0 != v4)
    {
      v5 += *(*(v1 + 24) + 16);
    }

    if (v5 || !*(v1 + 16))
    {
      sub_10002EE44(v0, v8);
      v8[57] = 0;
      swift_beginAccess();
      sub_10002F3F4(v8);
      swift_endAccess();
      sub_10002F4AC(v8);
    }

    else
    {
      v6 = sub_100037B7C();
      sub_10002F4DC(v6, v7);
    }
  }
}

void sub_10002EEA0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *v2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100111F3C(v6, v7, v8, v9);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v6 + 16 * v5;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_100037408(v11, v12);
  *v2 = v6;
  sub_100037608(v5 + 1);
  if (v13)
  {

    sub_100113CFC();
  }
}

void sub_10002EF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000379FC();
  v7 = v3[2];
  v8 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F54(v8, v9, v10, v11);
    v8 = v12;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= *(v8 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v8 + 24 * v7;
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 54) = BYTE6(a3);
  *(v13 + 52) = WORD2(a3);
  *(v13 + 48) = a3;

  *v3 = v8;
  sub_100037608(v7 + 1);
  if (v14)
  {

    sub_100113DE8();
  }
}

void sub_10002F02C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000379FC();
  v7 = v3[2];
  v8 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F6C(v8, v9, v10, v11);
    v8 = v12;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= *(v8 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v8 + 24 * v7;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 48) = a3;
  sub_1000370B8(v14, v15);
  *v3 = v8;
  sub_100037608(v7 + 1);
  if (v16)
  {

    sub_100113EE0();
  }
}

void sub_10002F0F8(__int128 *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = a1[3];
  v20 = a1[2];
  v21 = v3;
  v4 = v1[2];
  v5 = *v1;
  sub_1000370F8(a1, v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F9C(v5, v6, v7, v8);
    v5 = v9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = (v5 + (v4 << 6));
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[5];
  v17[2] = v10[4];
  v17[3] = v13;
  v17[0] = v11;
  v17[1] = v12;
  v14 = v19;
  v10[2] = v18;
  v10[3] = v14;
  v15 = v21;
  v10[4] = v20;
  v10[5] = v15;
  sub_1000374B8(v17, &qword_1002ADC00, &qword_100205800);
  *v1 = v5;
  sub_100037608(v4 + 1);
  if (v16)
  {
    sub_100113FD8();
  }
}

void sub_10002F1C8(uint64_t a1)
{
  v2 = v1[2];
  sub_10002EE44(a1, v8);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100111F84(v3, v4, v5, v6);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_10003743C(v8, v3 + (v2 << 6) + 32, &qword_1002ADD30, qword_100205400);
  *v1 = v3;
  sub_100037608(v2 + 1);
  if (v7)
  {
    sub_1001140B0();
  }
}

void sub_10002F26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  v14 = v13;
  v16 = v15;
  sub_1000379FC();
  v17 = v10[2];
  v18 = *v10;
  sub_100037154(v19);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FB4(v18, v20, v21, v22);
    v18 = v23;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 >= *(v18 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = (v18 + 32 * v17);
  v25 = v24[4];
  v26 = v24[5];
  v27 = v24[6];
  v28 = v24[7];
  v24[4] = v12;
  v24[5] = v11;
  v24[6] = v16 & 0xFFFFFFFFFFFFFFLL;
  v24[7] = v14;
  sub_10003715C(v25, v26, v27, v28);
  *v10 = v18;
  sub_100037608(v17 + 1);
  if (v29)
  {
    sub_100037A50();

    sub_10011416C();
  }

  else
  {
    sub_100037A50();
  }
}

void sub_10002F33C(uint64_t a1)
{
  v2 = v1[2];
  sub_10003736C(a1, v9, &qword_1002ADD78, &qword_100200AE8);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FCC(v3, v4, v5, v6);
    v3 = v7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_10003743C(v9, v3 + 72 * v2 + 32, &qword_1002ADD70, &qword_100200AE0);
  *v1 = v3;
  sub_100037608(v2 + 1);
  if (v8)
  {
    sub_100114244();
  }
}

void sub_10002F3F4(uint64_t a1)
{
  v2 = v1[2];
  sub_100037510(a1, v9);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FE4(v3, v4, v5, v6);
    v3 = v7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_10003743C(v9, v3 + (v2 << 6) + 32, &qword_1002ADA18, &qword_100200400);
  *v1 = v3;
  v8 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v2 + 1);
  v1[2] = v8;
  if (v1[1] == v8)
  {
    sub_100114318();
  }
}

uint64_t sub_10002F4DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
  sub_100031254(v3, &qword_1002ADD40, &qword_1002158B0);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = HIBYTE(v8);
  if (HIBYTE(v8))
  {
    if (v10 != 1)
    {
      v11 = 2;
      switch(*(v2 + 16))
      {
        case 1:
          v11 = 0;
          goto LABEL_5;
        case 3:
LABEL_5:
          *(v2 + 16) = v11;
          v12 = *(v2 + 48);
          if (v12 == 1)
          {
            *(v2 + 48) = 2;
            swift_beginAccess();
            *(v2 + 24) = _swiftEmptyArrayStorage;

            *(v2 + 24) = _swiftEmptyArrayStorage;
            sub_100034244(0, 1, 1);
            v13 = *(v2 + 24);
            v14 = *(v13 + 16);
            v15 = *(v13 + 24);
            v16 = v14 + 1;
            if (v14 >= v15 >> 1)
            {
              v19 = *(v13 + 16);
              v20 = v14 + 1;
              sub_100034244(v15 > 1, v14 + 1, 1);
              v14 = v19;
              v16 = v20;
              v13 = *(v2 + 24);
            }

            *(v13 + 16) = v16;
            v17 = v13 + (v14 << 6);
            *(v17 + 32) = 0u;
            *(v17 + 48) = 0u;
            *(v17 + 64) = 0u;
            *(v17 + 80) = 0;
            *(v17 + 88) = -256;
            *(v2 + 32) = 0;
            *(v2 + 40) = 0;
            *(v2 + 24) = v13;
            swift_endAccess();
            v12 = *(v2 + 48);
          }

          if (v12 == 2 && *(v2 + 16) == 2)
          {
            *(v2 + 48) = 3;
            ChannelHandlerContext.close(mode:promise:)();
          }

          break;
        default:
          __break(1u);
          goto LABEL_16;
      }
    }
  }

  else
  {
    if (*(v2 + 16) != 2)
    {
LABEL_16:
      __break(1u);
      JUMPOUT(0x10002F6CCLL);
    }

    *(v2 + 16) = 1;
  }

  ChannelHandlerContext.fireChannelRead(_:)();
  return sub_100037548(v5, v7, v9, v10);
}

uint64_t sub_10002F6DC(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 0xFE) == 2)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {
      *(v2 + 16) = 0;
    }
  }

  return ChannelHandlerContext.fireErrorCaught(_:)();
}

uint64_t HTTPServerPipelineHandler.userInboundEventTriggered(context:event:)(uint64_t a1, uint64_t a2)
{
  sub_10002F9B0(a2, v33);
  if (swift_dynamicCast())
  {
    switch(*(v2 + 16))
    {
      case 1:
      case 3:
        *(v2 + 48) = 1;
        break;
      case 2:
        sub_100037A88(3, v17, v20, v23, v26);
        *(v2 + 24) = _swiftEmptyArrayStorage;

        sub_100037A64();
        v7 = *(v2 + 24);
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);
        v10 = v8 + 1;
        if (v8 >= v9 >> 1)
        {
          v19 = v8 + 1;
          sub_100034244(v9 > 1, v8 + 1, 1);
          v10 = v19;
          v7 = *(v2 + 24);
        }

        *(v7 + 16) = v10;
        sub_100037918(v7, v19, v22, v25, v28);
        ChannelHandlerContext.close(mode:promise:)();
        break;
      default:
        sub_100037A88(2, v17, v20, v23, v26);
        *(v2 + 24) = _swiftEmptyArrayStorage;

        sub_100037A64();
        v3 = *(v2 + 24);
        v4 = *(v3 + 16);
        v5 = *(v3 + 24);
        v6 = v4 + 1;
        if (v4 >= v5 >> 1)
        {
          sub_100034244(v5 > 1, v4 + 1, 1);
          v3 = *(v2 + 24);
        }

        *(v3 + 16) = v6;
        sub_100037918(v3, v18, v21, v24, v27);
        break;
    }
  }

  else
  {
    if (!swift_dynamicCast() || (v32 & 1) != 0 || *(v2 + 16))
    {
      goto LABEL_7;
    }

    sub_100037C40(v2 + 24, v31);
    v13 = *(v2 + 32);
    v14 = *(v2 + 40);
    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (v16 < 0 != v15)
    {
      v16 += *(*(v2 + 24) + 16);
    }

    if (v16 < 1)
    {
LABEL_7:
      ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    }

    else
    {
      memset(v29, 0, sizeof(v29));
      v30 = 2;
      sub_100037AAC(v2 + 24, v12);
      sub_10002F3F4(v29);
      swift_endAccess();
      sub_10002F4AC(v29);
    }
  }

  return sub_100019CCC(v33);
}

uint64_t sub_10002F9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t HTTPServerPipelineHandler.errorCaught(context:error:)()
{
  sub_100037B94();
  v7[0] = v1;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast() && !*(v0 + 16))
  {
    LOBYTE(v7[0]) = v6;
    v8 = 1;
    sub_100037AAC(v0 + 24, v2);
    sub_10002F3F4(v7);
    swift_endAccess();
    return sub_10002F4AC(v7);
  }

  else
  {
    v3 = sub_100037B7C();
    return sub_10002F6DC(v3, v4);
  }
}

void HTTPServerPipelineHandler.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100037C08();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1000377A8();
  v12 = sub_1000183C4(v10, v11);
  sub_100031254(v12, &qword_1002ADA10, &unk_10020E830);
  v16 = v13;
  v17 = v14;
  v18 = v15;
  if (!HIBYTE(v15))
  {
    v49 = v14;
    if (!*(v3 + 48))
    {

      goto LABEL_18;
    }

    sub_1001B8BE0(*(v13 + 40), v14, v15);
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v47 = v12;
      v44[0] = v16;
      v44[1] = v17;
      v45 = v18;
      v46 = 0;
      v48 = 2;

      ChannelHandlerContext.write(_:promise:)(v44, v5);
      sub_100034310(v44);

LABEL_19:
      sub_100037B00();
      return;
    }

    v43 = sub_10003783C();
    v20 = sub_10003783C();
    __chkstk_darwin(v20);
    v21 = sub_10003653C(&v49, sub_100034364);
    v25 = *(v49 + 16);
    if (v25 < v21)
    {
      __break(1u);
    }

    else
    {
      sub_100036918(v21, v25, v22, v23, v24);
      if ((sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL) & 1) == 0)
      {
        v17 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_9:
          v26 = *(v17 + 16);
          if (v26 >= *(v17 + 24) >> 1)
          {
            sub_100033A8C();
            v17 = v42;
          }

          *(v17 + 16) = v26 + 1;
          v27 = (v17 + 32 * v26);
          v27[4] = 0x697463656E6E6F63;
          v27[5] = 0xEA00000000006E6FLL;
          v27[6] = 0x65736F6C63;
          v27[7] = 0xE500000000000000;
          if (((sub_10003783C() | v20) | v43))
          {
            v18 = 2;
          }

          goto LABEL_13;
        }

LABEL_30:
        sub_100033A8C();
        v17 = v41;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (HIBYTE(v15) == 1)
  {
    sub_100034284(v13, v14, v15, 1);
LABEL_18:
    ChannelHandlerContext.write(_:promise:)(v7, v5);
    goto LABEL_19;
  }

  sub_100034284(v13, v14, v15, 2);
  switch(*(v3 + 48))
  {
    case 1:
      if (!*(v3 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    case 2:
LABEL_20:
      *(v3 + 48) = 3;
      v28 = sub_100037BA0();
      sub_100030794(v28, v29, v30, v31);
      v33 = v32;
      ChannelHandlerContext.write(_:promise:)(v7, v32);
      swift_retain_n();
      v34 = sub_100037BA0();
      sub_100112C28(v34, v35, v36, v37, v33, v38, v9);

      sub_10002FF80(v5, sub_1000374A4, sub_10011DE78);

      break;
    default:
LABEL_16:
      ChannelHandlerContext.write(_:promise:)(v7, v5);
      break;
  }

  if (*(v3 + 16))
  {
    if (*(v3 + 16) != 1)
    {
      __break(1u);
      JUMPOUT(0x10002FE94);
    }

    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

  *(v3 + 16) = v39;
  sub_10002FFF4(v9);
  sub_100037B00();

  sub_1000303FC();
}

uint64_t sub_10002FEA4()
{
  sub_100030794("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerPipelineHandler.swift", 127, 2, 320);
  v1 = v0;

  ChannelHandlerContext.close(mode:promise:)();

  return v1;
}

uint64_t sub_10002FF80(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    v6 = v3;
    v7 = result;
    swift_retain_n();

    a3(v8, a2, v7, v6);
  }

  return result;
}

void sub_10002FFF4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v19 = 0;
  while (*(v2 + 16))
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    if (v5 == v4)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (HIDWORD(v4))
    {
      goto LABEL_34;
    }

    v6 = *(v2 + 24);
    if (v4 >= *(v6 + 16))
    {
      goto LABEL_35;
    }

    v7 = v6 + (v4 << 6);
    sub_10003736C(v7 + 32, &v23, &qword_1002ADA18, &qword_100200400);
    if (v25[25] == 255)
    {
      goto LABEL_41;
    }

    v26 = v23;
    *v27 = v24;
    *&v27[16] = *v25;
    *&v27[26] = *&v25[10];
    swift_beginAccess();
    sub_10003736C(v7 + 32, &v23, &qword_1002ADA18, &qword_100200400);
    if (v25[25] == 255)
    {
      goto LABEL_42;
    }

    sub_1000374B8(&v23, &qword_1002ADA18, &qword_100200400);
    v8 = v5 - v4;
    if (v5 < v4)
    {
      v8 += *(v6 + 16);
    }

    if (v8 < 1)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100111FE4(v6, v10, v11, v12);
      v6 = v13;
    }

    v24 = 0u;
    memset(v25, 0, 24);
    v23 = 0u;
    *&v25[24] = -256;
    *(v2 + 24) = v6;
    if (v4 >= *(v6 + 16))
    {
      goto LABEL_37;
    }

    sub_10003743C(&v23, v6 + (v4 << 6) + 32, &qword_1002ADA18, &qword_100200400);
    *(v2 + 24) = v6;
    *(v2 + 32) = (*(v6 + 16) + 0x1FFFFFFFFLL) & (v4 + 1);
    swift_endAccess();
    sub_100037510(&v26, &v23);
    if (v25[25])
    {
      if (v25[25] == 1)
      {
        v14 = v23;
        sub_100036A04();
        v15 = swift_allocError();
        *v16 = v14;
        sub_10002F6DC(a1, v15);
        sub_10002F4AC(&v26);
      }

      else
      {
        *(v2 + 17) = 0;
        *(&v21 + 1) = &type metadata for ChannelEvent;
        LOBYTE(v20) = 0;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_10002F4AC(&v26);
        sub_100019CCC(&v20);
      }
    }

    else
    {
      v20 = v23;
      v21 = v24;
      v22[0] = *v25;
      *(v22 + 9) = *&v25[9];
      sub_10002F4DC(a1, &v20);
      sub_100034310(&v20);
      sub_10002F4AC(&v26);
      v19 = 1;
    }
  }

  if (v19)
  {
    ChannelHandlerContext.fireChannelReadComplete()();
  }

  swift_beginAccess();
  sub_1001C2854(*(v2 + 32), *(v2 + 40), &v26);
  if (HIBYTE(*&v27[40]) >= 0xFFu)
  {
    sub_1000374B8(&v26, &qword_1002ADA18, &qword_100200400);
    return;
  }

  if ((*&v27[40] & 0xFF00) != 0x200 || *&v27[40] != 512 || (v17 = vorrq_s8(*&v27[8], *&v27[24]), *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *v27 | *(&v26 + 1) | v26))
  {
    sub_10002F4AC(&v26);
    return;
  }

  sub_10002F4AC(&v26);
  swift_beginAccess();
  v18 = *(v2 + 32);
  if (v18 == *(v2 + 40))
  {
    goto LABEL_38;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!HIDWORD(v18))
  {
    sub_100030980(&v26);
    sub_100031B24(1);
    swift_endAccess();
    sub_10002F4AC(&v26);
    *(v2 + 17) = 0;
    *&v27[8] = &type metadata for ChannelEvent;
    LOBYTE(v26) = 0;
    ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    sub_100019CCC(&v26);
    return;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1000303FC()
{
  if (v0[17] == 1 && v0[16] && (v0[48] & 0xFE) != 2)
  {
    v0[17] = 0;
    ChannelHandlerContext.read()();
  }
}

void HTTPServerPipelineHandler.read(context:)()
{
  if ((v0[48] & 0xFE) != 2)
  {
    if (v0[16])
    {
      ChannelHandlerContext.read()();
    }

    else
    {
      v0[17] = 1;
    }
  }
}

void HTTPServerPipelineHandler.handlerRemoved(context:)()
{
  sub_100037C40(v0 + 24, v20);
  v1 = *(v0 + 32);
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v2 = *(v0 + 40);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (HIDWORD(v2))
  {
    goto LABEL_28;
  }

  v3 = *(v0 + 24);

  v4 = 1;
  LODWORD(v5) = v1;
  while (v2 < v1 == v4 || v5 != v2)
  {
    v7 = *(v3 + 16);
    if (v5 >= v7)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_10003736C(v3 + 32 + (v5 << 6), &v11, &qword_1002ADA18, &qword_100200400);
    v8 = HIBYTE(*&v15[7]);
    if (v8 > 0xFE)
    {
      goto LABEL_29;
    }

    v9 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = *v15;
    v5 = (v7 - 1) & (v5 + 1);
    v4 = v5 >= v1;
    if (HIDWORD(v5))
    {
      goto LABEL_24;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        sub_100036A04();
        swift_allocError();
        *v10 = v9;
        ChannelHandlerContext.fireErrorCaught(_:)();
      }

      else
      {
        *(&v13 + 7) = &type metadata for ChannelEvent;
        v11 = 0;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(&v11);
      }
    }

    else
    {
      v12 = v16;
      v13 = v17;
      v14 = v18;
      *v15 = v19;
      ChannelHandlerContext.fireChannelRead(_:)();
      sub_100034310(&v11);
    }
  }

  if (*(v0 + 48) - 1 <= 1)
  {
    *(&v13 + 7) = &type metadata for ChannelShouldQuiesceEvent;
    ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    sub_100019CCC(&v11);
  }

  if (*(v0 + 17) == 1)
  {
    ChannelHandlerContext.read()();
  }
}

void HTTPServerPipelineHandler.channelInactive(context:)(uint64_t a1, uint64_t a2)
{
  sub_100037AAC((v2 + 3), a2);
  v3 = v2[4];
  v4 = v2[5];
  v5 = v4 - v3;
  if (v4 < v3)
  {
    v5 += *(v2[3] + 16);
  }

  sub_100031B24(v5);
  v2[4] = 0;
  v2[5] = 0;
  swift_endAccess();
  ChannelHandlerContext.fireChannelInactive()();
}

uint64_t HTTPServerPipelineHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_100030794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037AEC();
  v8 = v7;
  v10 = v9;
  sub_1000379FC();
  v11 = *(*(v4 + 32) + 56);
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
  EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], v6, v5, v10, v8, ObjectType, &type metadata for ()[1], v11);
  sub_100037A50();
}

uint64_t sub_10003081C()
{
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v2 = swift_allocObject();
  sub_100037950(v2);
  return v0;
}

uint64_t sub_100030890()
{
  sub_100037C40(v0 + 72, v5);
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v3 = swift_allocObject();
  sub_100037950(v3);
  return v1;
}

void sub_100030918(uint64_t a1, uint64_t a2)
{
  sub_100037980();
  if (v4)
  {
    __break(1u);
  }

  else if (*(v2 + 24 * v3 + 32))
  {

    return;
  }

  __break(1u);
}

void sub_100030980(uint64_t a4@<X8>)
{
  sub_100037980();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_10003736C(v5 + (v6 << 6) + 32, v18, &qword_1002ADA18, &qword_100200400);
    if (HIBYTE(v19) != 255)
    {
      sub_100037B2C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v17);
      *(a4 + 42) = v19;
      return;
    }
  }

  __break(1u);
}

void sub_1000309F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100037980();
  if (v5)
  {
    __break(1u);
  }

  else if (*(v3 + 24 * v4 + 32))
  {

    sub_100037A2C();
    return;
  }

  __break(1u);
}

void sub_100030A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100037980();
  if (v5)
  {
    __break(1u);
  }

  else if (*(v3 + 16 * v4 + 32))
  {

    sub_100037A2C();
    return;
  }

  __break(1u);
}

void sub_100030A9C(uint64_t a4@<X8>)
{
  sub_100037980();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_10003736C(v5 + (v6 << 6) + 32, v18, &qword_1002ADD30, qword_100205400);
    if (HIBYTE(v19) != 255)
    {
      sub_100037B2C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v17);
      *(a4 + 41) = v19;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100030B0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(i - 3);
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;

    LOBYTE(v8) = a2(v6, v7, v8, v9);

    if (v8)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_100030BD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000379FC();
  v15[0] = v5;
  v15[1] = v6;
  v14[2] = v15;
  v9 = sub_1001B9274(sub_100037488, v14, v7, v8);
  if ((v9 & 0xFE) == 2)
  {
    v10 = sub_100037908();
    v9 = sub_1001B97FC(v10, v11, v12, a4);
  }

  return v9 & 1;
}

uint64_t sub_100030C5C()
{
  sub_100037030(v0, &v5);
  if (!v8)
  {
    sub_100034300(v5);
    return 0;
  }

  if (v8 == 1)
  {
    v1 = v6;
    v2 = v7;

    sub_10003709C(v1, v2);
    return 0;
  }

  sub_10003708C(&v5, &v4);
  type metadata accessor for SocketChannel(0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030D34()
{
  sub_100037030(v0, &v6);
  if (v10)
  {
    if (v10 == 1)
    {
      v2 = v6;
      v3 = v7;
      v4 = v8;
      v5 = v9;
      sub_1000183C4(&qword_1002ADD58, &qword_100200AC0);
      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
    }

    else
    {
      sub_10003708C(&v6, &v2);
      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
    }
  }

  else
  {
    v2 = v6;
    BYTE6(v3) = BYTE6(v7);
    WORD2(v3) = WORD2(v7);
    LODWORD(v3) = v7;
    sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
  }

  return v11;
}

uint64_t sub_100030E6C()
{
  sub_100037B94();
  sub_100037030(v0, &v7);
  if (!v8)
  {
    sub_100034300(v7);
    return 0;
  }

  if (v8 == 1)
  {

    v1 = sub_100037A2C();
    sub_10003709C(v1, v2);
    return 0;
  }

  sub_10003708C(&v7, &v6);
  v4 = sub_100037B7C();
  sub_1000183C4(v4, v5);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030F5C@<X0>(_OWORD *a1@<X8>)
{
  sub_100037030(v1, &v4);
  if (v5)
  {
    if (v5 != 1)
    {
      return sub_10003708C(&v4, a1);
    }

    sub_1000183C4(&qword_1002ADD58, &qword_100200AC0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_100031058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v6);
  sub_1000376CC();
  __chkstk_darwin(v7);
  sub_1000378DC();
  if (sub_100030C5C())
  {
    sub_100037A50();
  }

  else
  {
    sub_100037BE8();
    v19 = v16;
    sub_100037AC8("tried to decode as type ");
    v20._countAndFlagsBits = 0x684374656B636F53;
    v20._object = 0xED00006C656E6E61;
    sub_1001F6CA8(v20);
    sub_100037738();
    v17 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v16 = swift_allocObject();
    sub_100037C58(v16);
    sub_1001F80E8();
    sub_1001F8128();
    v8 = sub_100037B68();
    v5(v8);
    sub_100088740(&v16);

    if (!v18)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v9 = sub_1000378EC();
    v5(v9);
    v21._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v21);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C("Fatal error", v10, v11, v12, v13, "ASOctaneSupportXPCService/NIOAny.swift", v14, v15, v16, SDWORD2(v16));
    __break(1u);
  }
}

void sub_100031254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100037C08();
  sub_1001F8138();
  sub_100037778();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000376CC();
  __chkstk_darwin(v8);
  sub_1000378DC();
  sub_100030E6C();
  if (HIBYTE(v9) == 255)
  {
    sub_100037BC8();
    v21 = v18;
    v22._object = 0x80000001002240A0;
    v22._countAndFlagsBits = 0xD000000000000018;
    sub_1001F6CA8(v22);
    v23._countAndFlagsBits = sub_1001F8218();
    sub_1001F6CA8(v23);

    sub_100037738();
    v19 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v18 = swift_allocObject();
    sub_100037C58(v18);
    sub_1001F80E8();
    sub_1001F8128();
    v10 = *(v6 + 8);
    v10(v4, v3);
    sub_100088740(&v18);

    if (!v20)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v11 = sub_1000378EC();
    (v10)(v11);
    v24._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v24);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C("Fatal error", v12, v13, v14, v15, "ASOctaneSupportXPCService/NIOAny.swift", v16, v17, v18, SDWORD2(v18));
    __break(1u);
  }

  else
  {
    sub_100037B00();
  }
}

void sub_100031498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v6);
  sub_1000376CC();
  __chkstk_darwin(v7);
  sub_1000378DC();
  if (sub_100030D34())
  {
    sub_100037A50();
  }

  else
  {
    sub_100037BE8();
    v19 = v16;
    sub_100037AC8("tried to decode as type ");
    v20._countAndFlagsBits = 0x6C656E6E616843;
    v20._object = 0xE700000000000000;
    sub_1001F6CA8(v20);
    sub_100037738();
    v17 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v16 = swift_allocObject();
    sub_100037C58(v16);
    sub_1001F80E8();
    sub_1001F8128();
    v8 = sub_100037B68();
    v5(v8);
    sub_100088740(&v16);

    if (!v18)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v9 = sub_1000378EC();
    v5(v9);
    v21._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v21);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C("Fatal error", v10, v11, v12, v13, "ASOctaneSupportXPCService/NIOAny.swift", v14, v15, v16, SDWORD2(v16));
    __break(1u);
  }
}

void sub_100031674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037C08();
  v7 = v4;
  v9 = v8;
  sub_1001F8138();
  sub_100037778();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000376CC();
  __chkstk_darwin(v13);
  sub_1000378DC();
  sub_100037030(v7, v28);
  if (v31 == 2)
  {
    sub_10003708C(v28, &v27);
    if (swift_dynamicCast())
    {
      if (v34[24] != 255)
      {
        v14 = v33;
        *v9 = v32;
        v9[1] = v14;
        v9[2] = *v34;
        *(v9 + 41) = *&v34[9];
        sub_100037B00();
        return;
      }
    }

    else
    {
      sub_1000379D0();
    }
  }

  else
  {
    v26 = v11;
    if (v31)
    {
      v15 = v29;
      v16 = v30;

      sub_10003709C(v15, v16);
    }

    else
    {
      sub_100034300(*&v28[0]);
    }

    sub_1000379D0();
    v11 = v26;
  }

  sub_1000374B8(&v32, &qword_1002ADD30, qword_100205400);
  sub_100037BC8();
  v28[0] = v32;
  v35._object = 0x80000001002240A0;
  v35._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v35);
  v36._countAndFlagsBits = sub_1001F8218();
  sub_1001F6CA8(v36);

  sub_100037738();
  *(&v33 + 1) = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  *&v32 = swift_allocObject();
  sub_100037C58(v32);
  sub_1001F80E8();
  sub_1001F8128();
  v17 = *(v11 + 8);
  v17(v6, v5);
  sub_100088740(&v32);

  if (!*&v34[8])
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v18 = sub_1000378EC();
  (v17)(v18);
  v37._countAndFlagsBits = sub_100037C70();
  sub_1001F6CA8(v37);

  sub_1000376E8();
  sub_1001F7A28();
  sub_1000377F0();
  sub_10003787C("Fatal error", v19, v20, v21, v22, "ASOctaneSupportXPCService/NIOAny.swift", v23, v24, v25, v26);
  __break(1u);
}

void sub_100031960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037B54();
  if (v10 != v11)
  {
    v9 += *(v7 + 16);
  }

  if (v9 < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
LABEL_14:
      v6[1] = v8;
      sub_100037A50();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111F54(v7, v12, v13, v14);
      v7 = v15;
    }

    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= *(v7 + 16))
      {
        goto LABEL_16;
      }

      v16 = (v7 + 32 + 24 * v8);
      *v16 = 0;
      v16[1] = 0;
      *(v16 + 15) = 0;

      sub_100037A08();
      if (v17)
      {
        *v6 = v7;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_100031A14(uint64_t result)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100111F9C(v3, v8, v9, v10);
        v3 = v11;
      }

      v12 = result - 1;
      if ((v4 & 0x8000000000000000) == 0)
      {
        while (v4 < *(v3 + 16))
        {
          v13 = (v3 + 32 + (v4 << 6));
          v14 = *v13;
          v15 = v13[1];
          v16 = v13[3];
          v17[2] = v13[2];
          v17[3] = v16;
          v17[0] = v14;
          v17[1] = v15;
          v13[2] = 0u;
          v13[3] = 0u;
          *v13 = 0u;
          v13[1] = 0u;
          sub_1000374B8(v17, &qword_1002ADC00, &qword_100205800);
          v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
          if (!v12)
          {
            goto LABEL_14;
          }

          --v12;
          if (v4 < 0)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_17;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      *v1 = v3;
    }

    v1[1] = v4;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_100031B24(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v1[1] = v4;
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111FE4(v3, v8, v9, v10);
      v3 = v11;
    }

    while (1)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v14 = -256;
      if (v4 < 0)
      {
        break;
      }

      if (v4 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      sub_10003743C(v12, v3 + 32 + (v4 << 6), &qword_1002ADA18, &qword_100200400);
      v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void sub_100031C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037B54();
  if (v10 != v11)
  {
    v9 += *(v7 + 16);
  }

  if (v9 < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
LABEL_14:
      v6[1] = v8;
      sub_100037A50();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111F6C(v7, v12, v13, v14);
      v7 = v15;
    }

    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= *(v7 + 16))
      {
        goto LABEL_16;
      }

      v16 = v7 + 32 + 24 * v8;
      v17 = *v16;
      v18 = *(v16 + 8);
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      sub_1000370B8(v17, v18);
      sub_100037A08();
      if (v19)
      {
        *v6 = v7;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_100031CE8(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v1[1] = v4;
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100111F84(v3, v8, v9, v10);
    }

    while (1)
    {
      sub_1000378B8();
      v11[56] = -1;
      if (v4 < 0)
      {
        break;
      }

      if (v4 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      sub_10003743C(v11, v3 + 32 + (v4 << 6), &qword_1002ADD30, qword_100205400);
      v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100031DE8(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13B0(a1);

    return sub_1000374AC(a1, 1);
  }

  else
  {

    return sub_1000A13B0(a1);
  }
}

uint64_t sub_100031E68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    v8 = 1;
  }

  else
  {
    sub_10003742C(a1, a2);
    v8 = 0;
  }

  sub_1000A1568(a1, a2, v8, a4);

  return sub_100037420(a1, a2, a3 & 1);
}

uint64_t sub_100031EE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    v8 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    v8 = 0;
  }

  sub_1000A1714(a1, a2, v8, a4);

  return sub_1000373FC(a1, a2, a3 & 1);
}

void sub_100031F78()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100033204(isUniquelyReferenced_nonNull_native, *(v1 + 16) + 1, 1, v1, &qword_1002ADBD8);
    *v0 = v3;
  }
}

uint64_t sub_100031FFC(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    sub_100037B18();
    result = a1();
    *v1 = result;
  }

  return result;
}

uint64_t sub_100032064(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    sub_100037B18();
    result = a1();
    *v1 = result;
  }

  return result;
}

void sub_1000320D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100032D00();
    *v3 = v6;
  }
}

void sub_1000321AC()
{
  sub_100037BB4();
  if (!(v5 ^ v6 | v4))
  {
    sub_100033204(v3 > 1, v1, 1, v2, &qword_1002ADBD8);
    *v0 = v7;
  }
}

void sub_100032218()
{
  sub_100037A38();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_100032268()
{
  sub_100037A38();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1000322BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100037BB4();
  if (!(v8 ^ v9 | v7))
  {
    sub_100032D00();
    *v6 = v10;
  }
}

uint64_t sub_10003232C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1001F6F58();
  }

  return result;
}

void sub_100032370()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10003243C()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADB88, &qword_1002008B8);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032508()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADBD0, &unk_100200910);
    v7 = sub_10001A2A4();
    j__malloc_size(v7);
    sub_1000376A8();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1000325D4()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADBF0, &unk_100200930);
    v3 = 40;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002BCC90, &unk_10020FC30);
    sub_100037718(v15);
  }
}

void sub_1000326B0()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADDE8, &qword_100200B70);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032840()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_100037990(v6, v7, v8, v9, v10, v11);
    v16 = sub_1000379B4(v15);
    sub_10003768C(v16);
    sub_10003789C(v17);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v18 = sub_100037804();
  if (v1)
  {
    if (v14 != v0 || &v19[48 * v2] <= v18)
    {
      memmove(v18, v19, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88(v18, v19);
  }
}

void sub_1000328FC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    v7 = sub_1000183C4(&qword_1002ADD10, &qword_100200A78);
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000329D0()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADD00, &qword_100200A68);
    v3 = 24;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADD08, &qword_100200A70);
    sub_100037718(v15);
  }
}

void sub_100032AF8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADC60, &unk_10020FC40);
    v3 = 48;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADC68, &qword_1002009B0);
    sub_100037718(v15);
  }
}

void sub_100032BE8()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADB90, &qword_1002008C8);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADB98, &qword_1002008D0);
    sub_100037718(v15);
  }
}

void sub_100032D00()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_100037990(v6, v7, v8, v9, v10, v11);
    v16 = sub_1000379B4(v15);
    sub_10003768C(v16);
    sub_10003789C(v17);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v18 = sub_100037804();
  if (v1)
  {
    if (v14 != v0 || &v19[40 * v2] <= v18)
    {
      memmove(v18, v19, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88(v18, v19);
  }
}

void sub_100032DFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    sub_10003766C();
    if (v12 != v13)
    {
      sub_100037790();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100033DD0(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032F20()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_100037990(v6, v7, v8, v9, v10, v11);
    v16 = sub_1000379B4(v15);
    sub_10003768C(v16);
    sub_10003789C(v17);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v18 = sub_100037804();
  if (v1)
  {
    if (v14 != v0 || &v19[24 * v2] <= v18)
    {
      memmove(v18, v19, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88(v18, v19);
  }
}

void sub_100032FDC()
{
  sub_10003779C();
  if (v3)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_100017C08(v7, v4);
  v9 = *(sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_100033D08(v0 + v10, v7, &v8[v10], &qword_1002AC7C8, &qword_1002008C0);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000330CC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADCB0, &qword_100200A18);
    v7 = swift_allocObject();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037764();
  if (v10)
  {
    sub_10003766C();
    if (v11 != v12)
    {
      sub_100037790();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v11 ^ v12 | v20)
  {
    v21 = v7;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    sub_100037990(v13, v14, v15, v16, v17, v18);
    v22 = sub_10001A2A4();
    j__malloc_size(v22);
    sub_1000376A8();
    v22[2] = v7;
    v22[3] = v23;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v6)
  {
    if (v22 != v5 || v9 + 16 * v7 <= v8)
    {
      v25 = sub_100037870();
      memmove(v25, v26, v27);
    }

    v5[2] = 0;
  }

  else
  {
    v28 = sub_1000378FC();
    sub_1000183C4(v28, v29);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_1000332D8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    v7 = sub_1000183C4(&qword_1002ADCC0, &qword_100200A28);
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[112 * v2] <= v9)
    {
      memmove(v9, v10, 112 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000333A8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_1000183C4(&qword_1002AC818, &qword_1001FE680);
    v7 = sub_10001A2A4();
    j__malloc_size(v7);
    sub_1000377B4();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_100033474()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADDE0, &qword_100200B68);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033540()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    v7 = sub_1000183C4(&qword_1002ADCD8, &qword_100200A40);
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[136 * v2] <= v9)
    {
      memmove(v9, v10, 136 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033628()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_100037990(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * v14 - 64;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = sub_100037804();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1000336EC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADC70, &qword_1002009B8);
    v3 = 80;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADC78, &unk_1002009C0);
    sub_100037718(v15);
  }
}

void sub_1000337C8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADDA8, &qword_100200B30);
    v3 = 24;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADDB0, &qword_100200B38);
    sub_100037718(v15);
  }
}

char *sub_1000338A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBE8, &qword_100200928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000339AC()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADC08, &qword_100200950);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADC10, &qword_100200958);
    sub_100037718(v15);
  }
}

void sub_100033A8C()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADD98, &unk_100200B10);
    sub_100037718(v15);
  }
}

char *sub_100033B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBA0, &qword_1002008D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_100033C80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

void sub_100033D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100037B40();
  if (v10 && (sub_1000183C4(a4, a5), sub_100023520(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = sub_1000377DC();

      _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    sub_1000183C4(a4, a5);
    v13 = sub_1000377DC();

    _swift_arrayInitWithTakeFrontToBack(v13);
  }
}

void sub_100033DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100037B40();
  if (v8 && (a4(0), sub_100023520(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_1000377DC();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_1000377DC();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

char *sub_100033F6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000346CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100033F8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000347E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100033FAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100033FCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003408C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000340AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000340CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000340EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003511C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003410C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000352F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003412C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100034284(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_5:
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  return sub_100034300(result);
}

void *sub_1000343AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003588C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003440C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000359C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003442C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000344BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000344DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003452C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000345BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100036268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100034610()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_100037990(v6, v7, v8, v9, v10, v11);
    v16 = sub_1000379B4(v15);
    sub_10003768C(v16);
    sub_10003789C(v17);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v18 = sub_100037804();
  if (v1)
  {
    if (v14 != v0 || &v19[40 * v2] <= v18)
    {
      memmove(v18, v19, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88(v18, v19);
  }
}

char *sub_1000346CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC38, &qword_100200980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000347E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADD20, &qword_100200A88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD28, &unk_100200A90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034910(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADCF0, &qword_100200A58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADCF8, &qword_100200A60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034A48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCE8, &qword_100200A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100034BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037764();
  if (v9)
  {
    sub_10003766C();
    if (v14 != v15)
    {
      sub_100037790();
      if (v14)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v13 = v8;
  }

  v16 = v5[2];
  if (v13 <= v16)
  {
    v17 = v5[2];
  }

  else
  {
    v17 = v13;
  }

  if (v17)
  {
    sub_100037990(v7, v8, v9, v10, v11, v12);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v18[2] = v16;
    v18[3] = 2 * ((v19 - 32) / 24);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  if (v6)
  {
    if (v18 != v5 || &v5[3 * v16 + 4] <= v18 + 4)
    {
      v21 = sub_100037870();
      memmove(v21, v22, v23);
    }

    v5[2] = 0;
  }

  else
  {
    v24 = sub_1000378FC();
    sub_1000183C4(v24, v25);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_100034CC0()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADBF8, &unk_100200940);
    v9 = swift_allocObject();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 6) <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADC00, &qword_100205800);
    sub_100037718(v15);
  }
}

char *sub_100034DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDE8, &qword_100200B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034ED4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCE0, &qword_100200A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[248 * v8] <= v12)
    {
      memmove(v12, v13, 248 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034FEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADCA0, &qword_100200A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADCA8, &unk_100208260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003511C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000183C4(&qword_1002ADBB8, &qword_1002008F8);
  v10 = *(sub_1000183C4(&qword_1002ADBC0, &qword_100200900) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000183C4(&qword_1002ADBC0, &qword_100200900) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100033D08(a4 + v16, v8, v13 + v16, &qword_1002ADBC0, &qword_100200900);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000352F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC40, &qword_100200988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035400(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCC8, &qword_100200A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[224 * v8] <= v12)
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037C08();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v13)
  {
    sub_10003766C();
    if (v14 != v15)
    {
      sub_100037790();
      if (v14)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v14 ^ v15 | v29)
  {
    v23 = v4;
  }

  else
  {
    v23 = v22;
  }

  if (!v23)
  {
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  sub_100037990(v16, v17, v18, v19, v20, v21);
  v24 = *(v8(0) - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v28 = j__malloc_size(v27);
  if (!v25)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28 - v26 == 0x8000000000000000 && v25 == -1;
  if (v29)
  {
    goto LABEL_22;
  }

  v27[2] = v4;
  v27[3] = 2 * ((v28 - v26) / v25);
LABEL_17:
  v30 = *(v8(0) - 8);
  if (v12)
  {
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    sub_100033DD0(v10 + v31, v4, v27 + v31, v6);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100037B00();
}

void sub_1000356AC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    v7 = sub_1000183C4(&qword_1002ADD68, &qword_100200AD8);
    v3 = 72;
    v8 = sub_100037820(v7);
    sub_100037634(v8);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1000183C4(&qword_1002ADD70, &qword_100200AE0);
    sub_100037718(v15);
  }
}

void sub_1000357AC()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    v3[2] = v2;
    v3[3] = (2 * (v10 / 8)) | 1;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = type metadata accessor for ScheduledTask();
    sub_100037718(v15);
  }
}

void *sub_10003588C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADC70, &qword_1002009B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC78, &unk_1002009C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000359C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCC0, &qword_100200A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002B34C0, &qword_1002008E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037764();
  if (v10)
  {
    sub_10003766C();
    if (v11 != v12)
    {
      sub_100037790();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v11 ^ v12 | v20)
  {
    v21 = v7;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    sub_100037990(v13, v14, v15, v16, v17, v18);
    v22 = sub_10001A2A4();
    v23 = j__malloc_size(v22);
    v22[2] = v7;
    v22[3] = 2 * ((v23 - 32) / 32);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v6)
  {
    if (v22 != v5 || v9 + 32 * v7 <= v8)
    {
      v25 = sub_100037870();
      memmove(v25, v26, v27);
    }

    v5[2] = 0;
  }

  else
  {
    v28 = sub_1000378FC();
    sub_1000183C4(v28, v29);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void *sub_100035CC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002B3490, &qword_10020A860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&unk_1002BCCC0, &qword_1002009D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC88, &qword_1002009E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100035EF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDE0, &qword_100200B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037764();
  if (v10)
  {
    sub_10003766C();
    if (v11 != v12)
    {
      sub_100037790();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v11 ^ v12 | v20)
  {
    v21 = v7;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    sub_100037990(v13, v14, v15, v16, v17, v18);
    v22 = sub_10001A2A4();
    j__malloc_size(v22);
    sub_1000376A8();
    v22[2] = v7;
    v22[3] = v23;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v6)
  {
    if (v22 != v5 || v9 + 16 * v7 <= v8)
    {
      v25 = sub_100037870();
      memmove(v25, v26, v27);
    }

    v5[2] = 0;
  }

  else
  {
    v28 = sub_1000378FC();
    sub_1000183C4(v28, v29);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_1000360CC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100036198()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_100037990(v7, v8, v9, v10, v11, v12);
    v13 = sub_10001A2A4();
    j__malloc_size(v13);
    sub_1000377B4();
    *(v13 + 2) = v3;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[8 * v3] <= v15)
    {
      memmove(v15, v16, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

char *sub_100036268(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002AC850, &qword_1001FE6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100036370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  sub_100037764();
  if (v10)
  {
    sub_10003766C();
    if (v11 != v12)
    {
      sub_100037790();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v11 ^ v12 | v20)
  {
    v21 = v7;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    sub_100037990(v13, v14, v15, v16, v17, v18);
    v22 = swift_allocObject();
    v23 = j__malloc_size(v22);
    v22[2] = v7;
    v22[3] = 2 * ((v23 - 32) / 64);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v6)
  {
    if (v22 != v5 || v9 + (v7 << 6) <= v8)
    {
      v25 = sub_100037870();
      memmove(v25, v26, v27);
    }

    v5[2] = 0;
  }

  else
  {
    v28 = sub_1000378FC();
    sub_1000183C4(v28, v29);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_10003646C()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_100037990(v9, v10, v11, v12, v13, v14);
    v15 = sub_10001A2A4();
    sub_10003768C(v15);
    sub_1000376BC(v16);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v18 = sub_1000377A8();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1000183C4(&qword_1002ADD88, &qword_10020DE50);
    sub_100037718(v21);
  }
}

uint64_t sub_10003653C(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  result = sub_100030B0C(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    else
    {
      v25 = a1;
      v30 = a2;
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        for (i = 32 * result + 88; ; i += 32)
        {
          v10 = *(v5 + 16);
          if (v8 == v10)
          {
            break;
          }

          if (v8 >= v10)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = result;
          v12 = v5 + i;
          v13 = *(v5 + i - 24);
          v14 = *(v5 + i - 16);
          v15 = *(v5 + i - 8);
          v16 = *(v5 + i);

          LOBYTE(v15) = v30(v13, v14, v15, v16);

          if (v15)
          {
            result = v11;
          }

          else
          {
            result = v11;
            if (v8 != v11)
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              v17 = *(v5 + 16);
              if (v11 >= v17)
              {
                goto LABEL_23;
              }

              if (v8 >= v17)
              {
                goto LABEL_24;
              }

              v18 = (v5 + 32 + 32 * v11);
              v19 = v18[3];
              v27 = v18[2];
              v28 = *v18;
              v20 = *(v12 - 16);
              v29 = *(v12 - 24);
              v21 = *(v12 - 8);
              v22 = *(v5 + i);
              v26 = v18[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_10019122C(v5);
              }

              v23 = (v5 + 32 * v11);
              v23[4] = v29;
              v23[5] = v20;
              v23[6] = v21;
              v23[7] = v22;

              if (v8 >= *(v5 + 16))
              {
                goto LABEL_25;
              }

              v24 = (v5 + i);
              *(v24 - 3) = v28;
              *(v24 - 2) = v26;
              *(v24 - 1) = v27;
              *v24 = v19;

              *v25 = v5;
              result = v11;
            }

            ++result;
          }

          ++v8;
        }
      }
    }
  }

  return result;
}

void sub_100036754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v10 != v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v8;
  v13 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v8 - v5;
  if (__OFSUB__(0, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v9, v14))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073C84(v9 - v13, 1);
  v15 = *v6;
  v16 = *v6 + 32;
  swift_arrayDestroy();
  if (!v13)
  {
LABEL_15:
    *v6 = v15;
    sub_100037A50();
    return;
  }

  v17 = *(v15 + 16);
  v18 = v17 - v5;
  if (__OFSUB__(v17, v5))
  {
    goto LABEL_21;
  }

  v19 = (v16 + 8 * v5);
  if (v12 != v5 || v19 + 8 * v18 <= v16 + 8 * v12)
  {
    memmove((v16 + 8 * v12), v19, 8 * v18);
    v17 = *(v15 + 16);
  }

  v11 = __OFADD__(v17, v14);
  v21 = v17 - v13;
  if (!v11)
  {
    *(v15 + 16) = v21;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_100036830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v10 != v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v8;
  v13 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v8 - v5;
  if (__OFSUB__(0, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v9, v14))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073C9C(v9 - v13, 1);
  v15 = *v6;
  v16 = *v6 + 32;
  swift_arrayDestroy();
  if (!v13)
  {
LABEL_15:
    *v6 = v15;
    sub_100037A50();
    return;
  }

  v17 = *(v15 + 16);
  if (__OFSUB__(v17, v5))
  {
    goto LABEL_21;
  }

  v18 = (v16 + 40 * v5);
  if (v12 != v5 || v18 + 40 * (v17 - v5) <= v16 + 40 * v12)
  {
    memmove((v16 + 40 * v12), v18, 40 * (v17 - v5));
    v17 = *(v15 + 16);
  }

  v11 = __OFADD__(v17, v14);
  v20 = v17 - v13;
  if (!v11)
  {
    *(v15 + 16) = v20;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_100036918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v10 != v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v8;
  v13 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v8 - v5;
  if (__OFSUB__(0, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v9, v14))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073CD0(v9 - v13, 1);
  v15 = *v6;
  v16 = *v6 + 32;
  sub_1000183C4(&qword_1002ADD98, &unk_100200B10);
  swift_arrayDestroy();
  if (!v13)
  {
LABEL_15:
    *v6 = v15;
    sub_100037A50();
    return;
  }

  v17 = *(v15 + 16);
  v18 = v17 - v5;
  if (__OFSUB__(v17, v5))
  {
    goto LABEL_21;
  }

  v19 = (v16 + 32 * v5);
  if (v12 != v5 || v19 + 32 * v18 <= v16 + 32 * v12)
  {
    memmove((v16 + 32 * v12), v19, 32 * v18);
    v17 = *(v15 + 16);
  }

  v11 = __OFADD__(v17, v14);
  v21 = v17 - v13;
  if (!v11)
  {
    *(v15 + 16) = v21;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_100036A04()
{
  result = qword_1002ADA20;
  if (!qword_1002ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADA20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPServerPipelineHandler.NextExpectedMessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100036B48);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OctaneIAPType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100036C20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100036CECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100036D30(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036D60(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036D80(uint64_t a1)
{
  if ((*(a1 + 57) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 57) & 3;
  }
}

__n128 sub_100036D9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100036DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 58))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 57);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_100036E44(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

unint64_t sub_100036E84()
{
  result = qword_1002ADB68;
  if (!qword_1002ADB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB68);
  }

  return result;
}

unint64_t sub_100036EDC()
{
  result = qword_1002ADB70;
  if (!qword_1002ADB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB70);
  }

  return result;
}

unint64_t sub_100036F34()
{
  result = qword_1002ADB78;
  if (!qword_1002ADB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB78);
  }

  return result;
}

uint64_t sub_100036F88()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    sub_100019CCC((v0 + 16));
  }

  else if (v1 == 1)
  {

    if (*(v0 + 48) != 4 && (~*(v0 + 56) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 72))
  {
    sub_100034300(*(v0 + 16));
  }

  sub_100037A20();

  return _swift_deallocObject(v2, v3, v4);
}

_OWORD *sub_10003708C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003709C(uint64_t result, uint64_t a2)
{
  if (result != 4)
  {
    return sub_10002D83C(a2);
  }

  return result;
}

uint64_t sub_1000370B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003715C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100034300(result);
  }

  return result;
}

void sub_1000371A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100037AEC();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000377C8();
  if (v10 != v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v8;
  v13 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v8 - v5;
  if (__OFSUB__(0, v13))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v9, v14))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100073D30(v9 - v13, 1);
  v15 = *v6;
  v16 = *(type metadata accessor for EventManager.Observer(0) - 8);
  v17 = v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v19 = v17 + v18 * v12;
  swift_arrayDestroy();
  if (!v13)
  {
LABEL_10:
    *v6 = v15;
    sub_100037A50();
    return;
  }

  v20 = *(v15 + 16);
  if (__OFSUB__(v20, v5))
  {
    goto LABEL_16;
  }

  sub_100033DD0(v17 + v18 * v5, v20 - v5, v19, type metadata accessor for EventManager.Observer);
  v21 = *(v15 + 16);
  v11 = __OFADD__(v21, v14);
  v22 = v21 - v13;
  if (!v11)
  {
    *(v15 + 16) = v22;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000372D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_100037B94();
  result = sub_10001744C(*v2);
  if (result < v1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3 - v1;
  if (__OFSUB__(0, v1 - v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = sub_10001A07C();
  v6 = __OFADD__(v5, v4);
  result = v5 + v4;
  if (v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100073F34(result, 1);
  v7 = sub_100037B7C();

  return sub_1000C844C(v7, v8, 0);
}

uint64_t sub_10003736C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100037C20(a1, a2, a3, a4);
  sub_100023520();
  v5 = sub_100037A2C();
  v6(v5);
  return v4;
}

uint64_t sub_1000373FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100037408(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100037420(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100037408(a1, a2);
  }
}

uint64_t sub_10003742C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003743C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100037C20(a1, a2, a3, a4);
  sub_100023520();
  v5 = sub_100037A2C();
  v6(v5);
  return v4;
}

uint64_t sub_1000374AC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000374B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000183C4(a2, a3);
  sub_100023520();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100037548(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return v5;
    }
  }
}

size_t sub_100037634(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void sub_1000376E8()
{
  v1._countAndFlagsBits = 0x6F63206874697720;
  v1._object = 0xEF2073746E65746ELL;

  sub_1001F6CA8(v1);
}

uint64_t sub_100037718(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_100037738()
{
  v1._countAndFlagsBits = 0x756F662074756220;
  v1._object = 0xEB0000000020646ELL;

  sub_1001F6CA8(v1);
}

uint64_t sub_100037820(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10003783C()
{

  return sub_100030BD4(v0, 0xEA00000000006E6FLL, v0, 0xEA00000000006E6FLL);
}

uint64_t sub_10003787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1001F7AC8();
}

uint64_t sub_100037918@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v8 = a1 + (v5 << 6);
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -256;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = a1;

  return swift_endAccess();
}

uint64_t sub_100037950(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_100037990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1000183C4(a5, a6);
}

uint64_t sub_1000379B4(uint64_t a1)
{

  return swift_allocObject();
}

double sub_1000379D0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 88) = -1;
  return result;
}

void sub_100037A64()
{
  *(v0 + 24) = v1;

  sub_100034244(0, 1, 1);
}

uint64_t sub_100037A88@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  *(v5 + 48) = a1;

  return swift_beginAccess();
}

uint64_t sub_100037AAC(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_100037AC8(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000018;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_1001F6CA8(v2);
}

__n128 sub_100037B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

void sub_100037BC8()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;

  sub_1001F77B8(56);
}

void sub_100037BE8()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  sub_1001F77B8(56);
}

uint64_t sub_100037C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000183C4(a3, a4);
}

uint64_t sub_100037C40(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100037C58(uint64_t a1)
{

  return sub_100037030(v1, a1 + 16);
}

uint64_t sub_100037C70()
{

  return sub_1001F8218();
}

uint64_t sub_100037C88(uint64_t a1, uint64_t a2)
{

  return swift_arrayInitWithCopy();
}

uint64_t HTTPServerProtocolErrorHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t HTTPServerProtocolErrorHandler.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t HTTPServerProtocolErrorHandler.errorCaught(context:error:)(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast() && (*(v2 + 16) & 1) == 0)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 21;
    *(v3 + 40) = 65537;
    v4 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
    v6 = v3;
    *&v7 = &off_10027A438;
    *(&v7 + 1) = 2;
    v8 = v4;
    v9 = 2;

    ChannelHandlerContext.write(_:promise:)(&v6, 0);
    sub_100034310(&v6);
    v8 = v4;
    v6 = 0;
    *&v7 = 0;
    *(&v7 + 7) = 0;
    HIBYTE(v7) = 2;
    v9 = 2;
    ChannelHandlerContext.writeAndFlush(_:promise:)(&v6, 0);

    sub_100034310(&v6);
  }

  return ChannelHandlerContext.fireErrorCaught(_:)();
}

uint64_t HTTPServerProtocolErrorHandler.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  result = sub_1000375F0(v7);
  v9 = result;
  v11 = v10;
  v13 = v12;
  v14 = HIBYTE(v12);
  v15 = *(v4 + 16);
  if (!HIBYTE(v12))
  {
    goto LABEL_5;
  }

  if (v14 != 1)
  {
    if (*(v4 + 16))
    {
      v16 = 0;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    __break(1u);
LABEL_5:
    if ((v15 & 1) == 0)
    {
      v16 = 1;
LABEL_9:
      *(v4 + 16) = v16;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  ChannelHandlerContext.write(_:promise:)(a2, a3);

  return sub_100034284(v9, v11, v13, v14);
}

unint64_t sub_100037F28()
{
  result = qword_1002ADF38;
  if (!qword_1002ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF38);
  }

  return result;
}

uint8_t *sub_100037F7C(uint64_t a1)
{
  v344 = sub_1001F6938();
  sub_10001A278();
  v3 = v2;
  __chkstk_darwin(v4);
  v345 = &v322 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v348 = &v322 - v7;
  v8 = sub_1001F68E8();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v322 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v347 = &v322 - v15;
  v16 = sub_1001F6B98();
  sub_10001A278();
  v349 = v17;
  __chkstk_darwin(v18);
  v20 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = 0x6E6F6973726576;
  v354 = 0xE700000000000000;
  sub_1001F7758();
  sub_10003A6AC();
  sub_10003A1F8(&v355);
  v346 = v10;
  v343 = v3;
  if (v360)
  {
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v353;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = sub_10003A24C(v358);
  }

  v22 = 3157553;
LABEL_6:
  v350 = v22;
  strcpy(v358, "adNetwork");
  WORD1(v358[1]) = 0;
  HIDWORD(v358[1]) = -385875968;
  sub_10003A76C(v21, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v23 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v23, v24, v25, type metadata for String);
  }

  else
  {
    sub_10003A24C(v358);
  }

  sub_10003A610();
  v31 = sub_100039CBC(v26, v27, v28, v29, v30);
  if (v1)
  {

    return v13;
  }

  v341 = v31;
  v342 = v32;

  v358[0] = 0x6449707061;
  v358[1] = 0xE500000000000000;
  sub_10003A76C(v33, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v34 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v34, v35, v36, &type metadata for UInt64);
  }

  else
  {
    sub_10003A24C(v358);
  }

  sub_10003A610();
  v42 = sub_100039EB4(v37, v38, v39, v40, v41);
  v340 = v42;
  strcpy(v358, "transactionId");
  HIWORD(v358[1]) = -4864;
  sub_10003A76C(v42, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v44 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v44, v45, v46, type metadata for String);
  }

  else
  {
    sub_10003A24C(v358);
  }

  sub_10003A610();
  v327 = sub_100039CBC(v47, v48, v49, v50, v51);
  v339 = v52;
  v326 = v8;

  strcpy(v358, "campaignId");
  BYTE3(v358[1]) = 0;
  HIDWORD(v358[1]) = -369098752;
  sub_10003A76C(v53, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v54 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v54, v55, v56, &type metadata for Int);
    sub_10003A6E4();
    sub_10003A810(v57);
  }

  else
  {
    sub_10003A24C(v358);
    sub_10003A81C(v358);
  }

  LODWORD(v334) = v59;
  v358[0] = 0xD000000000000010;
  v358[1] = 0x80000001002244A0;
  sub_10003A76C(v58, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v60 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v60, v61, v62, type metadata for String);
    sub_10003A6F4();
    v331 = v65;
    if (v66)
    {
      v67 = 0;
    }

    else
    {
      v67 = v64;
    }

    v335 = v67;
  }

  else
  {
    v63 = sub_10003A24C(v358);
    v331 = 0;
    v335 = 0;
  }

  strcpy(v358, "sourceAppId");
  HIDWORD(v358[1]) = -352321536;
  sub_10003A76C(v63, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v68 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v68, v69, v70, &type metadata for UInt64);
    sub_10003A6E4();
    sub_10003A810(v71);
  }

  else
  {
    sub_10003A24C(v358);
    sub_10003A81C(&v355);
  }

  LODWORD(v330) = v73;
  strcpy(v358, "sourceDomain");
  BYTE5(v358[1]) = 0;
  HIWORD(v358[1]) = -5120;
  sub_10003A76C(v72, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v74 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v74, v75, v76, type metadata for String);
    sub_10003A6F4();
    v323 = v79;
    if (v66)
    {
      v80 = 0;
    }

    else
    {
      v80 = v78;
    }

    v337 = v80;
  }

  else
  {
    v77 = sub_10003A24C(v358);
    v323 = 0;
    v337 = 0;
  }

  strcpy(v358, "fidelityType");
  BYTE5(v358[1]) = 0;
  HIWORD(v358[1]) = -5120;
  sub_10003A76C(v77, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v81 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v81, v82, v83, &type metadata for Int);
    sub_10003A6E4();
    sub_10003A810(v84);
  }

  else
  {
    sub_10003A24C(v358);
    sub_10003A81C(&v352);
  }

  LODWORD(v329) = v86;
  strcpy(v358, "redownload");
  BYTE3(v358[1]) = 0;
  HIDWORD(v358[1]) = -369098752;
  sub_10003A76C(v85, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v87 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v87, v88, v89, type metadata for String);
    sub_10003A6F4();
    v332 = v92;
    if (v66)
    {
      v93 = 0;
    }

    else
    {
      v93 = v91;
    }
  }

  else
  {
    v90 = sub_10003A24C(v358);
    v332 = 0;
    v93 = 0;
  }

  v336 = v93;
  v358[0] = 0x6E6957646964;
  v358[1] = 0xE600000000000000;
  sub_10003A76C(v90, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v94 = sub_10003A1F8(&v355);
  if (v360)
  {
    sub_10003A660(v94, v95, v96, type metadata for String);
    sub_10003A6F4();
    v325 = v99;
    if (v66)
    {
      v100 = 0;
    }

    else
    {
      v100 = v98;
    }
  }

  else
  {
    v97 = sub_10003A24C(v358);
    v325 = 0;
    v100 = 0;
  }

  v358[0] = 0xD000000000000015;
  v358[1] = 0x80000001002244C0;
  sub_10003A76C(v97, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v101 = sub_10003A1F8(&v355);
  v338 = v100;
  if (v360)
  {
    sub_10003A660(v101, v102, v103, &type metadata for Int);
    sub_10003A6E4();
    sub_10003A810(v104);
  }

  else
  {
    sub_10003A24C(v358);
    sub_10003A81C(&v351);
  }

  v324 = v105;
  v106 = sub_1001F6B48();
  v107 = [v106 skan_version];

  if ((v107 - 200) < 2)
  {
    sub_10003A794();
    sub_10003A7F8();
    sub_10003A610();
    v118 = sub_100039EB4(v113, v114, v115, v116, v117);
    sub_10003A610();
    v124 = sub_100039CBC(v119, v120, v121, v122, v123);
    sub_10003A7B8(v124, v125);
    sub_10003A610();
    v336 = sub_100039EB4(v126, v127, v128, v129, v130);
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v131 = swift_allocObject();
    v131[3].n128_u64[1] = sub_10003A620(v131, xmmword_100200CB0);
    v355 = v118;

    v132 = &v355;
    v131[4].n128_u64[0] = sub_1001F7E28();
    v131[4].n128_u64[1] = v133;
    sub_10003A6C8();
    v134 = sub_1001F7E28();
    sub_10003A644(v134, v135);
    sub_10003A784();
    v131[7].n128_u64[0] = v137;
    v131[7].n128_u64[1] = v136;
    sub_10003A6D8(&v360);

    v138 = sub_1001F7E28();
    v334 = v131;
    v131[8].n128_u64[0] = v138;
    v131[8].n128_u64[1] = v139;
    v355 = v131;
    v140 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_10003A2B4();
    sub_10003A680();
    sub_1001F6A68();
    sub_10003A828();
    goto LABEL_84;
  }

  if (!v107)
  {
    sub_10003A6A0();
    goto LABEL_64;
  }

  if (v107 != 400)
  {
    if (v107 == 202)
    {
      sub_10003A794();
      sub_10003A7F8();
      sub_10003A610();
      v172 = sub_100039EB4(v152, v153, v154, v155, v156);
      sub_10003A610();
      v178 = sub_100039CBC(v173, v174, v175, v176, v177);
      sub_10003A7B8(v178, v230);
      sub_10003A610();
      v236 = sub_100039EB4(v231, v232, v233, v234, v235);
      sub_10003A610();
      v336 = sub_100039EB4(v237, v238, v239, v240, v241);
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v281 = swift_allocObject();
      v334 = v236;
      v282 = v281;
      v281[3].n128_u64[1] = sub_10003A620(v281, xmmword_100200CA0);
      v355 = v172;

      v132 = &v355;
      v282[4].n128_u64[0] = sub_1001F7E28();
      v282[4].n128_u64[1] = v283;
      sub_10003A6C8();
      v284 = sub_1001F7E28();
      sub_10003A644(v284, v285);
      sub_10003A784();
      v282[7].n128_u64[0] = v287;
      v282[7].n128_u64[1] = v286;
      sub_10003A6D8(&v358[1]);

      v282[8].n128_u64[0] = sub_1001F7E28();
      v282[8].n128_u64[1] = v288;
      sub_10003A6D8(&v360);
      v289 = sub_1001F7E28();
      v333 = v282;
      v282[9].n128_u64[0] = v289;
      v282[9].n128_u64[1] = v290;
      v355 = v282;
      v140 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
      sub_10003A2B4();
      sub_10003A680();
      sub_1001F6A68();
      sub_10003A828();
      goto LABEL_84;
    }

    if (v107 == 300)
    {
      sub_10003A794();
      sub_10003A610();
      v335 = sub_100039EB4(v147, v148, v149, v150, v151);
      sub_10003A610();
      sub_100039CBC(v167, v168, v169, v170, v171);
      sub_10003A7AC();
      sub_10003A848(v223, v224);

      sub_10003A610();
      v248 = sub_100039EB4(v225, v226, v227, v228, v229);
      sub_10003A610();
      v332 = sub_100039EB4(v249, v250, v251, v252, v253);
      v336 = v248;
      sub_10003A610();
      v331 = sub_100039CBC(v254, v255, v256, v257, v258);
      v330 = v259;

      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v295 = swift_allocObject();
      v295[3].n128_u64[1] = sub_10003A620(v295, xmmword_100200C90);
      sub_10003A6D8(&v359);

      v132 = &v355;
      v295[4].n128_u64[0] = sub_1001F7E28();
      v295[4].n128_u64[1] = v296;
      sub_10003A6C8();
      v297 = sub_1001F7E28();
      sub_10003A644(v297, v298);
      v299 = v334;
      v295[7].n128_u64[0] = v333;
      v295[7].n128_u64[1] = v299;
      sub_10003A6D8(&v360);

      v295[8].n128_u64[0] = sub_1001F7E28();
      v295[8].n128_u64[1] = v300;
      sub_10003A6D8(&v357);
      v301 = sub_1001F7E28();
      v338 = v295;
      v295[9].n128_u64[0] = v301;
      v295[9].n128_u64[1] = v302;
      v303 = v330;
      v295[10].n128_u64[0] = v331;
      v295[10].n128_u64[1] = v303;
      v355 = v295;
      v140 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
      sub_10003A2B4();
      sub_10003A680();
      sub_1001F6A68();
      sub_10003A828();
      goto LABEL_84;
    }

    if (v107 == 100)
    {
      sub_10003A794();
      sub_10003A7F8();

      sub_10003A610();
      v350 = sub_100039EB4(v108, v109, v110, v111, v112);
      if ((v329 & 1) == 0)
      {
        if (qword_1002AC510 != -1)
        {
          sub_10001B230(&qword_1002AC510);
        }

        v179 = sub_1001F6688();
        sub_100019C94(v179, qword_1002E6180);
        v180 = sub_1001F6668();
        v181 = sub_1001F7278();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = sub_10003A87C();
          *v182 = 0;
          sub_10003A85C(&_mh_execute_header, v183, v184, "SKAdNetwork signature verification: Found fidelity type specified for unsupported version", v182);
          sub_10003A704();
        }
      }

      if ((v330 & 1) == 0)
      {
        if (qword_1002AC510 != -1)
        {
          sub_10001B230(&qword_1002AC510);
        }

        v185 = sub_1001F6688();
        sub_100019C94(v185, qword_1002E6180);
        v186 = sub_1001F6668();
        v187 = sub_1001F7278();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = sub_10003A87C();
          *v188 = 0;
          sub_10003A85C(&_mh_execute_header, v189, v190, "SKAdNetwork signature verification: Found source app id specified for unsupported version", v188);
          sub_10003A704();
        }
      }

      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_100200CC0;
      *(v191 + 32) = v341;
      *(v191 + 40) = sub_10003A694();
      v355 = v350;

      *(v191 + 48) = sub_1001F7E28();
      *(v191 + 56) = v192;
      sub_10003A6C8();
      *(v191 + 64) = sub_1001F7E28();
      *(v191 + 72) = v193;
      v194 = sub_10003A6A0();
      *(v191 + 80) = v195;
      *(v191 + 88) = v194;
      v355 = v191;

      v350 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
      sub_10003A2B4();
      sub_10003A680();
      v196 = sub_1001F6A68();
      v132 = v197;
      v140 = v196;
      goto LABEL_84;
    }

LABEL_64:

    sub_10003A694();

    sub_10003A794();

LABEL_65:

    sub_10003A720();

    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v157 = sub_1001F6688();
    sub_100019C94(v157, qword_1002E6180);
    v158 = sub_1001F6668();
    v159 = sub_1001F7278();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = sub_10003A87C();
      *v160 = 0;
      _os_log_impl(&_mh_execute_header, v158, v159, "SKAdNetwork postback signing: Unable to compose digest.", v160, 2u);
      sub_10003A72C(v160);
    }

    return 0;
  }

  sub_10003A610();
  v146 = sub_100039CBC(v141, v142, v143, v144, v145);
  sub_10003A848(v146, v161);

  sub_10003A610();
  sub_100039CBC(v162, v163, v164, v165, v166);
  sub_10003A7AC();
  v332 = v210;
  v335 = v211;

  sub_10003A610();
  v336 = sub_100039EB4(v212, v213, v214, v215, v216);
  sub_10003A610();
  v222 = sub_100039CBC(v217, v218, v219, v220, v221);
  v275 = v274;
  v331 = v222;

  sub_10003A610();
  v329 = sub_100039EB4(v276, v277, v278, v279, v280);
  v338 = v275;
  if (v337)
  {
    v330 = v337;
  }

  else
  {
    if (v330)
    {
      sub_10003A7F8();
      sub_10003A794();
      sub_10003A760();

      sub_10003A6A0();

      sub_10003A694();

      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v304 = sub_1001F6688();
      sub_100019C94(v304, qword_1002E6180);
      v305 = sub_1001F6668();
      v306 = sub_1001F7298();
      if (os_log_type_enabled(v305, v306))
      {
        v13 = sub_10003A87C();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v305, v306, "SKAdNetwork signing failure: Source Domain or Source App ID is absent or of unexpected type", v13, 2u);
        sub_10003A72C(v13);
      }

      v307 = sub_100037F28();
      sub_1000276A0(&type metadata for SKANPostbackSigningError, v307);
      *v308 = 5;
      swift_willThrow();
      return v13;
    }

    sub_10003A6D8(&v355);
    v323 = sub_1001F7E28();
    v330 = v309;
  }

  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  v310 = swift_allocObject();
  v311 = sub_10003A620(v310, xmmword_100200C80);
  v312 = v333;
  v310[3].n128_u64[1] = v311;
  v310[4].n128_u64[0] = v312;
  v310[4].n128_u64[1] = v334;
  sub_10003A6C8();

  v132 = &v355;
  v313 = sub_1001F7E28();
  sub_10003A644(v313, v314);
  v315 = v335;
  v310[7].n128_u64[0] = v332;
  v310[7].n128_u64[1] = v315;
  v316 = v330;
  v310[8].n128_u64[0] = v323;
  v310[8].n128_u64[1] = v316;
  sub_10003A6D8(&v360);

  v310[9].n128_u64[0] = sub_1001F7E28();
  v310[9].n128_u64[1] = v317;
  sub_10003A784();
  v310[10].n128_u64[0] = v319;
  v310[10].n128_u64[1] = v318;
  sub_10003A6D8(&v356);
  v320 = sub_1001F7E28();
  v328 = v310;
  v310[11].n128_u64[0] = v320;
  v310[11].n128_u64[1] = v321;
  v355 = v310;
  v140 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10003A2B4();
  sub_10003A680();
  sub_1001F6A68();
  sub_10003A828();
LABEL_84:

  v350 = v132;
  sub_1001F6B88();
  v340 = v140;
  v341 = sub_1001F6B68();
  v199 = v198;
  (*(v349 + 8))(v20, v16);
  if (v199 >> 60 == 15)
  {

    sub_10003A6A0();

    goto LABEL_65;
  }

  v349 = v199;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v200 = sub_1001F6688();
  v201 = sub_100019C94(v200, qword_1002E6180);
  v202 = v350;

  v338 = v201;
  v203 = sub_1001F6668();
  v204 = sub_1001F7278();

  if (os_log_type_enabled(v203, v204))
  {
    v205 = sub_10003A8AC();
    v206 = sub_10003A894();
    v336 = v203;
    v207 = v206;
    v355 = v206;
    *v205 = 136315138;
    *(v205 + 4) = sub_1000E4544(v340, v202, &v355);
    v208 = v204;
    v209 = v336;
    _os_log_impl(&_mh_execute_header, v336, v208, "Composed digest: %s", v205, 0xCu);
    sub_100019CCC(v207);
    sub_10003A72C(v207);
    sub_10003A704();
  }

  else
  {
  }

  v242 = v326;
  v243 = v348;
  result = sub_1001F6328();
  if (v244 >> 60 != 15)
  {
    v245 = result;
    v246 = v244;

    sub_10003A694();

    sub_10003A6A0();

    sub_10003A720();

    v355 = v245;
    v356 = v246;
    sub_10003A318();
    sub_1001F6888();
    (*(v346 + 32))(v347, v13, v242);
    v355 = v341;
    v356 = v349;
    sub_10003A3D8();
    v247 = v345;
    sub_1001F68D8();
    (*(v343 + 32))(v243, v247, v344);
    v260 = sub_1001F68F8();
    v262 = v261;
    v13 = sub_1001F63B8(0);
    v264 = v263;
    sub_10003A380(v260, v262);

    sub_10003A7AC();
    v265 = sub_1001F6668();
    v266 = sub_1001F7278();

    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      v355 = v350;
      *v267 = 136315394;
      *(v267 + 4) = sub_1000E4544(v13, v264, &v355);
      *(v267 + 12) = 2080;
      v268 = sub_1001F69A8();
      v270 = sub_1000E4544(v268, v269, &v355);

      *(v267 + 14) = v270;
      _os_log_impl(&_mh_execute_header, v265, v266, "Generated signature: %s from parameters: %s", v267, 0x16u);
      v271 = v350;
      swift_arrayDestroy();
      sub_10003A72C(v271);
      sub_10003A704();
      sub_10003A7DC();

      v272 = sub_10003A744();
      v273(v272);
      (*(v346 + 8))(v347, v326);
    }

    else
    {
      sub_10003A7DC();

      v291 = sub_10003A744();
      v292(v291);
      v293 = sub_10003A834();
      v294(v293);
    }

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_100039CBC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
  }

  else
  {
    if (a5)
    {
      a1 = a5;
    }

    else
    {
      v19 = a3;
      sub_100037F28();
      a4 = sub_1001F7FE8();
      a1 = v8;
    }

    v9 = qword_1002AC510;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_100019C94(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_1000E4544(a4, a1, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100019CCC(v14);
    }

    else
    {
    }

    sub_100037F28();
    swift_allocError();
    *v16 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100039EB4(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v21 = a3;
      sub_100037F28();
      a4 = sub_1001F7FE8();
      v8 = v9;
    }

    v10 = qword_1002AC510;

    if (v10 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v11 = sub_1001F6688();
    sub_100019C94(v11, qword_1002E6180);

    v12 = sub_1001F6668();
    v13 = sub_1001F7298();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_10003A8AC();
      v15 = sub_10003A894();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_1000E4544(a4, v8, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
      sub_100019CCC(v15);
      sub_10003A72C(v15);
      sub_10003A72C(v14);
    }

    else
    {
    }

    v17 = sub_100037F28();
    sub_1000276A0(&type metadata for SKANPostbackSigningError, v17);
    *v18 = a3;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_10003A070(char a1)
{
  result = 0xD000000000000035;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000033;
      break;
    case 2:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD00000000000003ALL;
      break;
    case 5:
      result = 0xD00000000000004BLL;
      break;
    case 6:
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 7:
      result = 0xD000000000000035;
      break;
    case 8:
      result = 0xD000000000000032;
      break;
    case 9:
      result = 0xD00000000000002FLL;
      break;
    case 10:
      result = 0xD00000000000003FLL;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 12:
      result = 0xD000000000000038;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003A24C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003A2B4()
{
  result = qword_1002ADF40;
  if (!qword_1002ADF40)
  {
    sub_100019BC4(&qword_1002ACA10, qword_1001FEBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF40);
  }

  return result;
}

unint64_t sub_10003A318()
{
  result = qword_1002ADF48;
  if (!qword_1002ADF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF48);
  }

  return result;
}

uint64_t sub_10003A36C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003A380(result, a2);
  }

  return result;
}

uint64_t sub_10003A380(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_10003A3D8()
{
  result = qword_1002ADF50;
  if (!qword_1002ADF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKANPostbackSigningError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SKANPostbackSigningError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003A580);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003A5BC()
{
  result = qword_1002ADF58;
  if (!qword_1002ADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF58);
  }

  return result;
}

uint64_t sub_10003A620(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v3 - 240);
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = *(v3 - 312);
  return *(v3 - 304);
}

uint64_t sub_10003A644(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  result = *(v3 - 328);
  v2[12] = *(v3 - 424);
  v2[13] = result;
  return result;
}

uint64_t sub_10003A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double sub_10003A6AC()
{

  return sub_1001F12A0(v1 - 160, v0);
}

uint64_t sub_10003A704()
{
}

uint64_t sub_10003A72C(uint64_t a1)
{
}

void *sub_10003A76C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7758();
}

uint64_t sub_10003A794()
{
}

uint64_t sub_10003A7B8(uint64_t a1, uint64_t a2)
{
  *(v2 - 360) = a1;
  *(v2 - 336) = a2;
}

uint64_t sub_10003A7DC()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 248);

  return sub_10003A36C(v2, v3);
}

uint64_t sub_10003A7F8()
{
}

uint64_t sub_10003A848(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 368) = a2;
  return result;
}

void sub_10003A85C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, v6, a4, a5, 2u);
}

uint64_t sub_10003A87C()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A894()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A8AC()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A8E4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  sub_10003E830();
  v3 = sub_10003E8E0(&unk_100280608);
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_1001200D0();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003A9C4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  sub_10003E830();
  v3 = sub_10003E8E0(&unk_1002805E0);
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_10011DE78();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003AA84()
{
  sub_10003E7B8();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E73C();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10003AB9C()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 80;
  sub_10003E830();
  v3 = sub_10003E8E0(&unk_1002805B8);
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_100120368();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003AC64()
{
  sub_10003E7B8();
  sub_10003E7A0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    sub_10003E7D4();

    return v7();
  }
}

uint64_t sub_10003ADB4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 80;
  sub_10003E830();
  v3 = sub_10003E8E0(&unk_100280590);
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_10012049C();

  return _swift_continuation_await(v0);
}

uint64_t EventLoopFuture.get()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10003AEC4, 0, 0);
}

uint64_t sub_10003AEC4()
{
  sub_10003E794();
  v1 = v0[4];
  v2 = sub_10003E75C();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_10003AF7C;
  v4 = v0[2];
  v5 = v0[3];

  return v7(v4, 0, 0, sub_10003B14C, v5, v3);
}

uint64_t sub_10003AF7C()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003B098, 0, 0);
  }

  else
  {
    sub_10003E824();

    return v7();
  }
}

uint64_t sub_10003B0BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  *(v4 + 24) = a1;
  EventLoopFuture.whenComplete(_:)();
}

uint64_t sub_10003B154(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    v5 = swift_allocError();
    *v6 = a1;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v5);
  }

  else
  {

    return _swift_continuation_throwingResume(a3);
  }
}

uint64_t sub_10003B1F8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    v5 = swift_allocError();
    *v6 = a1;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v5);
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;

    return _swift_continuation_throwingResume(a3);
  }
}

void sub_10003B2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v13 = sub_1001F8158();
  v14 = __chkstk_darwin(v13);
  v16 = (&v18 - v15);
  (*(v17 + 16))(&v18 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v16;
    sub_10003B57C(&v19, a2, a3, v12, &protocol self-conformance witness table for Error);
  }

  else
  {
    (*(v6 + 32))(v11, v16, a3);
    (*(v6 + 16))(v8, v11, a3);
    sub_10003B504(v8, a2, a3);
    (*(v6 + 8))(v11, a3);
  }
}

uint64_t sub_10003B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return _swift_continuation_throwingResume(a2);
}

void sub_10003B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  JUMPOUT(0x1001F93C8);
}

uint64_t sub_10003B610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1001F7008();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_10003B6A4, v6, v8);
}

uint64_t sub_10003B6A4()
{
  sub_10003E7B8();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10003E70C;
  v3 = swift_continuation_init();
  v1(v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t EventLoopGroup.shutdownGracefully()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003B760()
{
  sub_10003E7B8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003E86C(v2);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  v5 = sub_10003E878(v4);
  *v5 = v6;
  v5[1] = sub_10003B850;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10003B850()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003B990;
  }

  else
  {
    v7 = sub_10003B96C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000183C4(&qword_1002ADF68, &qword_100200EF8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  EventLoopGroup.shutdownGracefully(_:)();
}

uint64_t sub_10003BB20(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ADF68, &qword_100200EF8);
    return sub_1001F7018();
  }

  else
  {
    sub_1000183C4(&qword_1002ADF68, &qword_100200EF8);
    return sub_1001F7028();
  }
}

uint64_t EventLoopPromise.completeWithTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000183C4(&qword_1002ADF60, &qword_100202600);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1001F7058();
  sub_100018460(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  return sub_10003DEB8(0, 0, v10, &unk_100200E28, v12);
}

uint64_t sub_10003BC98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = *(a7 - 8);
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_10003BDEC;

  return v12(v9);
}

uint64_t sub_10003BDEC()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003BF78;
  }

  else
  {
    v7 = sub_10003BEEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003BEEC()
{
  sub_10003E7B8();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  EventLoopPromise.succeed(_:)(v1, v0[2], v3);
  (*(v2 + 8))(v1, v3);

  sub_10003E824();

  return v4();
}

uint64_t sub_10003BF78()
{
  sub_10003E794();
  EventLoopPromise.fail(_:)(v0[7], v0[2], v0[3]);

  sub_10003E824();

  return v1();
}

uint64_t sub_10003BFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003C030(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_10003E85C(v9);
  *v10 = v11;
  v10[1] = sub_10003C108;

  return sub_10003BC98(a1, v3, v4, v6, v8, v7, v5);
}

uint64_t sub_10003C108()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  sub_10003E824();

  return v3();
}

uint64_t Channel.writeAndFlush<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_10003E71C();
}

{
  return sub_10003F314(a1, a2, a3, a4, 233, ChannelOutboundInvoker.writeAndFlush(_:file:line:));
}

uint64_t sub_10003C204()
{
  sub_10003E794();
  v0[7] = Channel.writeAndFlush<A>(_:)(v0[2], v0[3], v0[4], v0[5]);
  v1 = sub_10003E75C();
  v0[8] = v1;
  *v1 = v0;
  v9 = sub_10003E74C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10003C2A0()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_10003C3A4;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003C3A4()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t Channel.setOption<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003C420()
{
  sub_10003E794();
  v1 = (*(v0[6] + 64))(v0[2], v0[3], v0[5], v0[7], v0[4]);
  sub_10003E7EC(v1);
  v2 = sub_10003E75C();
  v3 = sub_10003E818(v2);
  *v3 = v4;
  v12 = sub_10003E74C(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_10003C4C8()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_10003E700;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t Channel.getOption<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_10003E71C();
}