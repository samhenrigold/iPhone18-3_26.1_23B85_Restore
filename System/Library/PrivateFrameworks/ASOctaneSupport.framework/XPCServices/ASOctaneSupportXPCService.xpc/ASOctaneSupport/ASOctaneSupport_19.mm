Swift::Int sub_10016C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_10016C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016B368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016C0E8(uint64_t a1)
{
  v2 = sub_10016C190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C124(uint64_t a1)
{
  v2 = sub_10016C190();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10016C190()
{
  result = qword_1002B8FD8;
  if (!qword_1002B8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FD8);
  }

  return result;
}

unint64_t sub_10016C1E4()
{
  result = qword_1002B8FE0;
  if (!qword_1002B8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FE0);
  }

  return result;
}

uint64_t sub_10016C238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016C29C(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016C2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10016C340()
{
  result = qword_1002B8FF0;
  if (!qword_1002B8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FF0);
  }

  return result;
}

unint64_t sub_10016C394()
{
  result = qword_1002B9018;
  if (!qword_1002B9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9018);
  }

  return result;
}

unint64_t sub_10016C3E8()
{
  result = qword_1002B9020;
  if (!qword_1002B9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9020);
  }

  return result;
}

unint64_t sub_10016C43C()
{
  result = qword_1002B9028;
  if (!qword_1002B9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9028);
  }

  return result;
}

unint64_t sub_10016C490()
{
  result = qword_1002B9030;
  if (!qword_1002B9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9030);
  }

  return result;
}

_BYTE *sub_10016C4E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10016C5B4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x10016C6E8);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10016C724()
{
  result = qword_1002B9058;
  if (!qword_1002B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9058);
  }

  return result;
}

unint64_t sub_10016C77C()
{
  result = qword_1002B9060;
  if (!qword_1002B9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9060);
  }

  return result;
}

unint64_t sub_10016C7D4()
{
  result = qword_1002B9068;
  if (!qword_1002B9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9068);
  }

  return result;
}

unint64_t sub_10016C82C()
{
  result = qword_1002B9070;
  if (!qword_1002B9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9070);
  }

  return result;
}

unint64_t sub_10016C884()
{
  result = qword_1002B9078;
  if (!qword_1002B9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9078);
  }

  return result;
}

unint64_t sub_10016C8DC()
{
  result = qword_1002B9080;
  if (!qword_1002B9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9080);
  }

  return result;
}

unint64_t sub_10016C934()
{
  result = qword_1002B9088;
  if (!qword_1002B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9088);
  }

  return result;
}

unint64_t sub_10016C98C()
{
  result = qword_1002B9090;
  if (!qword_1002B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9090);
  }

  return result;
}

unint64_t sub_10016C9E4()
{
  result = qword_1002B9098;
  if (!qword_1002B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9098);
  }

  return result;
}

unint64_t sub_10016CA3C()
{
  result = qword_1002B90A0;
  if (!qword_1002B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90A0);
  }

  return result;
}

unint64_t sub_10016CA94()
{
  result = qword_1002B90A8;
  if (!qword_1002B90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90A8);
  }

  return result;
}

unint64_t sub_10016CAEC()
{
  result = qword_1002B90B0;
  if (!qword_1002B90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90B0);
  }

  return result;
}

uint64_t sub_10016CBDC(uint64_t a1, uint64_t a2)
{

  return sub_1001F7D08();
}

uint64_t NIOAtomic.store(_:)()
{
  sub_10012F33C();
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v1 = sub_1001F7BA8();
  v2 = sub_10016E890();
  sub_10016DED4(v2, v3, v1, v4, AssociatedTypeWitness, v5, &type metadata for ()[1], v6, v8);
}

uint64_t static NIOAtomic.makeAtomic(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  v5 = *(v3 + 88);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1001F7BB8();
  v12 = v6;
  v13 = v5;
  v14 = a1;
  sub_10016DED4(sub_10016E470, v11, v8, &type metadata for ()[1], AssociatedTypeWitness, &type metadata for Never, &type metadata for ()[1], &protocol witness table for Never, v10);
  sub_1001F7BC8();

  return swift_dynamicCastClassUnconditional();
}

uint64_t NIOAtomic.load()()
{
  sub_10012F33C();
  v1 = *(v0 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v3 = sub_1001F7BA8();
  v4 = sub_10016E890();
  sub_10016DED4(v4, v5, v3, v6, AssociatedTypeWitness, v7, v1, v8, v10);
}

uint64_t NIOAtomic.compareAndExchange(expected:desired:)(uint64_t a1, uint64_t a2)
{
  sub_10012F33C();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v9 = sub_1001F7BA8();
  v13 = v7;
  v14 = v5;
  v15 = a1;
  v16 = a2;
  sub_10016DED4(sub_10016E4C8, v12, v9, &type metadata for ()[1], AssociatedTypeWitness, &type metadata for Never, &type metadata for Bool, &protocol witness table for Never, v11);

  return v17;
}

uint64_t sub_10016DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  v6(a1, a2);
}

void sub_10016DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v16.n128_f64[0] = __chkstk_darwin(a1);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v13 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14(v12 + ((v26 - 1) & ~v24), &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  if (v9)
  {
    (*(v11 + 32))(a9, v17, a6);
  }
}

uint64_t sub_10016E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v10 = (*(a5 + 24))(a4, a5);
  LOBYTE(a3) = v10(a1, a2, a3);

  *a6 = a3 & 1;
  return result;
}

uint64_t sub_10016E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 32))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E178(uint64_t a1, uint64_t a2)
{
  sub_10012F33C();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v9 = sub_1001F7BA8();
  v13 = v7;
  v14 = v5;
  v15 = a1;
  sub_10016DED4(a2, v12, v9, &type metadata for ()[1], AssociatedTypeWitness, &type metadata for Never, v7, &protocol witness table for Never, v11);
}

uint64_t sub_10016E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 40))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 48))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 56))(a2, a3);
  v4(a1);
}

uint64_t sub_10016E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 64))(a3, a4);
  v6(a1, a2);
}

uint64_t NIOAtomic.deinit()
{
  sub_10012F33C();
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v2 = sub_1001F7BA8();
  v3 = sub_10016E890();
  sub_10016E678(v3, v4, v2, v5, AssociatedTypeWitness, v6, &type metadata for ()[1], v7, v9);

  return v0;
}

void sub_10016E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v15.n128_f64[0] = __chkstk_darwin(a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v13 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14(v12 + v20, v12 + ((v26 - 1) & ~v24), v17, v15);
  if (v9)
  {
    (*(v11 + 32))(a9, v17, a6);
  }
}

uint64_t NIOAtomic.__deallocating_deinit()
{
  NIOAtomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10016E8A0(char a1)
{
  v2 = *(v1 + 12);
  v7 = a1;
  ByteBuffer._setBytes(_:at:)(&v7, &v8, v2);
  v4 = *(v1 + 12);
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
    __break(1u);
  }

  *(v1 + 12) = v6;
  return result;
}

uint64_t sub_10016E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  return HTTPServerProtocolErrorHandler.deinit();
}

uint64_t sub_10016EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  swift_getObjectType();
  debugOnly(_:)();
  result = swift_beginAccess();
  v11 = *(a2 + 24);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + 16);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      sub_10012ED00(v12, v11);
      swift_beginAccess();
      if (*(a4 + 16))
      {
        swift_beginAccess();
        result = 0;
        *(a5 + 16) = 0;
        return result;
      }

      v12 = 0;
      v13 = 0;
    }

    return a6(v12, v13);
  }

  return result;
}

uint64_t sub_10016F0BC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v8 = a3;
  if (a6)
  {
    if (a2)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 56);
      ObjectType = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
      sub_100171E70();
      v18 = EventLoop.makePromise<A>(of:file:line:)(v13, v14, v15, v16, 21, ObjectType, v17, v11);
      v19 = *(v10 + 56);
      v20 = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(v20, &type metadata for ()[1]);
      sub_100171E70();
      v26 = EventLoop.makePromise<A>(of:file:line:)(v21, v22, v23, v24, 21, v20, v25, v19);
      v27 = *(v10 + 56);
      v28 = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(v28, &type metadata for ()[1]);
      sub_100171E70();
      v34 = EventLoop.makePromise<A>(of:file:line:)(v29, v30, v31, v32, 21, v28, v33, v27);

      sub_100171E70();
      sub_10016E930(v35);

      sub_100171E70();
      sub_10016EC64(v36);

      sub_10019F874("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPEncoder.swift", 113, 2, 22, debugOnly(_:), 0);

      sub_10002FEFC(v37);
      v8 = a3;

      v6 = v26;
      goto LABEL_6;
    }
  }

  v34 = 0;
  v18 = 0;
LABEL_6:
  v38 = IOData.readableBytes.getter(v8, a4, a5 & 0xFFFFFFFFFFFFFFLL);
  if ((a2 & 1) == 0)
  {
    v80 = v8;
    v81 = a4;
    v82 = a5;
    sub_100171EC0();
    v85 = 0;
    sub_100037154(v8);
    ChannelHandlerContext.write(_:promise:)(&v80, v6);

    sub_100034310(&v80);
  }

  v39 = v38;
  v71 = v34;
  v73 = v8;
  sub_10009B39C();
  v41 = v40;
  v42 = swift_getObjectType();
  v43 = (*(v41 + 16))(v42, v41);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  type metadata accessor for ByteBuffer._Storage();
  v50 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(32, v43, v45, v47, v49);
  v51 = *(v50 + 16);
  v75 = v50;
  v76 = 0;
  v77 = v51;
  v78 = 0;
  v79 = 0;
  v80 = v39;
  sub_1000DD154();
  v52 = sub_1001F6D88();
  v54 = v53;
  sub_10007C1D0(v52, v53, &v75, 0);
  if (v56)
  {
    v57._countAndFlagsBits = v52;
    v57._object = v54;
    v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, 0);
  }

  v58 = v55;

  v62 = HIDWORD(v76) + v58;
  if (__CFADD__(HIDWORD(v76), v58))
  {
    __break(1u);
    goto LABEL_18;
  }

  HIDWORD(v76) += v58;
  result = sub_100171EF0("\r\n", v60, v61, v62);
  v63 = (HIDWORD(v76) + result);
  if (__CFADD__(HIDWORD(v76), result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v64 = v75;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v80 = v75;
  v81 = v76 | (v63 << 32);
  v84 = v79;
  v83 = v78;
  v82 = v77;
  v85 = 0;

  ChannelHandlerContext.write(_:promise:)(&v80, v18);
  sub_100034310(&v80);
  v80 = v73;
  v81 = a4;
  sub_100171EC0();
  v82 = a5;
  v85 = 0;
  sub_100037154(v69);
  ChannelHandlerContext.write(_:promise:)(&v80, v6);
  result = sub_100034310(&v80);
  if (v63 < v65)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v70 = v63 - 2;
  if (__CFADD__(v65, v63 - v65 - 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v63 >= v70)
  {
    v80 = v64;
    v81 = (v63 << 32) | v70;
    v82 = v66;
    v84 = (v66 | (v67 << 32) | (v68 << 48)) >> 48;
    v83 = (v66 | (v67 << 32) | (v68 << 48)) >> 32;
    v85 = 0;

    ChannelHandlerContext.write(_:promise:)(&v80, v71);

    sub_100034310(&v80);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10016F594(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (a2)
  {
    if (!a3)
    {
      sub_10009B39C();
      v46 = v45;
      ObjectType = swift_getObjectType();
      v48 = (*(v46 + 16))(ObjectType, v46);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      swift_unknownObjectRelease();
      type metadata accessor for ByteBuffer._Storage();
      v55 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(8, v48, v50, v52, v54);
      v56 = *(v55 + 16);
      v58 = v55;
      v59 = 0;
      v60 = v56;
      v61 = 0;
      v62 = 0;
      v40 = ByteBuffer.setStaticString(_:at:)("0\r\n\r\n", 5, 2, 0);
      goto LABEL_20;
    }

    sub_10009B39C();
    v8 = v7;
    v9 = swift_getObjectType();
    v10 = (*(v8 + 16))(v9, v8);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    v17 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v10, v12, v14, v16);
    v18 = *(v17 + 16);
    v58 = v17;
    LODWORD(v59) = 0;
    v60 = v18;
    v61 = 0;
    v62 = 0;
    v19 = ByteBuffer.setStaticString(_:at:)("0\r\n", 3, 2, 0);
    v57 = v5;
    HIDWORD(v59) = v19;
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = (a3 + 56);
      while (1)
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = v19;
        v26 = *(v21 - 1);
        v25 = *v21;

        sub_10007C1D0(v22, v23, &v58, v24);
        if (v28)
        {
          v29._countAndFlagsBits = v22;
          v29._object = v23;
          v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v24);
        }

        v30 = HIDWORD(v59) + v27;
        if (__CFADD__(HIDWORD(v59), v27))
        {
          break;
        }

        HIDWORD(v59) += v27;
        ByteBuffer._setBytes(_:at:)(": ", "", v30);
        v32 = (HIDWORD(v59) + v31);
        if (__CFADD__(HIDWORD(v59), v31))
        {
          goto LABEL_26;
        }

        HIDWORD(v59) += v31;
        sub_10007C1D0(v26, v25, &v58, v32);
        if (v34)
        {
          v35._countAndFlagsBits = v26;
          v35._object = v25;
          v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
        }

        v36 = v33;

        v37 = HIDWORD(v59) + v36;
        if (__CFADD__(HIDWORD(v59), v36))
        {
          goto LABEL_27;
        }

        HIDWORD(v59) += v36;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v37);
        v19 = HIDWORD(v59) + v38;
        if (__CFADD__(HIDWORD(v59), v38))
        {
          goto LABEL_28;
        }

        HIDWORD(v59) += v38;
        v21 += 4;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:
    result = ByteBuffer.setStaticString(_:at:)("\r\n", 2, 2, v19);
    v40 = (HIDWORD(v59) + result);
    if (!__CFADD__(HIDWORD(v59), result))
    {
      v5 = v57;
LABEL_20:
      v63 = v58;
      v64 = v59 | (v40 << 32);
      v67 = v62;
      v66 = v61;
      v65 = v60;
      v68 = 0;

      ChannelHandlerContext.write(_:promise:)(&v63, v5);
      sub_100034310(&v63);
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    if (a5)
    {
      sub_10009B39C();
      v42 = v41;
      v43 = swift_getObjectType();
      v21 = v5;
      v44 = *(v42 + 16);

      v44(v43, v42);
      swift_unknownObjectRelease();
      if (qword_1002AC430 == -1)
      {
LABEL_18:
        v63 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
        v64 = qword_1002E6088;
        v67 = byte_1002E6096;
        v66 = word_1002E6094;
        v65 = dword_1002E6090;
        v68 = 0;

        ChannelHandlerContext.write(_:promise:)(&v63, v21);

        sub_100034310(&v63);
      }

LABEL_29:
      swift_once();
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_10016FA18(char a1, uint64_t *a2, unsigned int a3)
{
  v3 = a3;
  v5 = HIWORD(a3);
  if (a1)
  {
    if (a1 == 1)
    {
      v6._countAndFlagsBits = 0x2D746E65746E6F63;
      v6._object = 0xEE006874676E656CLL;
      HTTPHeaders.remove(name:)(v6);
      v7._object = 0x800000010022B530;
      v7._countAndFlagsBits = 0xD000000000000011;
      HTTPHeaders.remove(name:)(v7);
      return 2;
    }

    v13._countAndFlagsBits = 0x2D746E65746E6F63;
    v13._object = 0xEE006874676E656CLL;
    if (HTTPHeaders.contains(name:)(v13))
    {
      return 1;
    }

    result = 2;
    if (v5 == 1 && v3)
    {
      HTTPHeaders.subscript.getter();
      if (!v14[2])
      {

        return 2;
      }

      v16 = v14[4];
      v15 = v14[5];

      if (v16 != 0x64656B6E756863 || v15 != 0xE700000000000000)
      {
        v18 = sub_1001F7EA8();

        result = 0;
        if ((v18 & 1) == 0)
        {
          return 2;
        }

        return result;
      }

      return 0;
    }
  }

  else
  {
    v9._countAndFlagsBits = 0x2D746E65746E6F63;
    v9._object = 0xEE006874676E656CLL;
    if (HTTPHeaders.contains(name:)(v9))
    {
      return 1;
    }

    result = 2;
    if (v5 == 1 && v3)
    {
      if (sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0xD000000000000011, 0x800000010022B530))
      {
        *(a2 + 8) = 2;
      }

      v10._object = 0x800000010022B530;
      v10._countAndFlagsBits = 0xD000000000000011;
      HTTPHeaders.remove(name:)(v10);
      v11._countAndFlagsBits = 0x64656B6E756863;
      v12._object = 0x800000010022B530;
      v12._countAndFlagsBits = 0xD000000000000011;
      v11._object = 0xE700000000000000;
      HTTPHeaders.add(name:value:)(v12, v11);
      return 0;
    }
  }

  return result;
}

void HTTPRequestEncoder.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000183C4(&qword_1002ADD38, &unk_100200AA0);
  v6 = sub_1000375F8(v5);
  v9 = v6;
  v10 = v7;
  v11 = v8;
  if (HIBYTE(v8))
  {
    if (HIBYTE(v8) != 1)
    {
      v59 = *(v3 + 16);

      sub_10016F594(a1, v59, v9, v10, a3);
      v13 = sub_100171ED4();
      v16 = 2;
      goto LABEL_31;
    }

    if (IOData.readableBytes.getter(v6, v7, v8 & 0xFFFFFFFFFFFFFFLL) >= 1)
    {
      v12 = *(v3 + 16);

      sub_10016F0BC(a1, v12, v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, a3);
      v13 = sub_100171ED4();
      v16 = 1;
LABEL_31:
      sub_100034284(v13, v14, v15, v16);
      return;
    }

    v72 = v9;
    v73 = v10;
    v74 = v11;
    sub_100171EC0();
    v77 = 0;
    v60 = sub_100171ED4();
    sub_100037154(v60);
    ChannelHandlerContext.write(_:promise:)(&v72, a3);
    v61 = sub_100171ED4();
    sub_100034284(v61, v62, v63, 1);
    sub_100034310(&v72);
  }

  else
  {
    v70 = v7;
    v71 = v8;
    v17 = *(v6 + 24);
    if (v17 == 11)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 == 1 || v17 == 4 || v17 == 10)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    *(v3 + 16) = sub_10016FA18(v21, &v70, *(v9 + 48)) == 0;
    v22 = v70;
    sub_10009B39C();
    v24 = v23;
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 16))(ObjectType, v24);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    v33 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v26, v28, v30, v32);
    v34 = *(v33 + 16);
    v65 = v33;
    v66 = 0;
    v67 = v34;
    v68 = 0;
    v69 = 0;
    sub_10017003C(v9);
    v37 = *(v22 + 16);
    v38 = 0;
    if (v37)
    {
      v39 = v22 + 56;
      while (1)
      {
        v40 = *(v39 - 24);
        v41 = *(v39 - 16);
        v42 = v38;

        sub_10007C1D0(v40, v41, &v65, v42);
        if (v44)
        {
          v45._countAndFlagsBits = v40;
          v45._object = v41;
          v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v46 = HIDWORD(v66) + v43;
        if (__CFADD__(HIDWORD(v66), v43))
        {
          break;
        }

        HIDWORD(v66) += v43;
        ByteBuffer._setBytes(_:at:)(": ", "", v46);
        v48 = (HIDWORD(v66) + v47);
        if (__CFADD__(HIDWORD(v66), v47))
        {
          goto LABEL_34;
        }

        HIDWORD(v66) += v47;
        v49 = sub_100171EE4();
        sub_10007C1D0(v49, v50, v51, v48);
        if (v53)
        {
          v54._countAndFlagsBits = sub_100171EE4();
          v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v48);
        }

        v55 = v52;

        v56 = HIDWORD(v66) + v55;
        if (__CFADD__(HIDWORD(v66), v55))
        {
          goto LABEL_35;
        }

        HIDWORD(v66) += v55;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v56);
        v38 = HIDWORD(v66) + v57;
        if (__CFADD__(HIDWORD(v66), v57))
        {
          goto LABEL_36;
        }

        HIDWORD(v66) += v57;
        v39 += 32;
        if (!--v37)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_28:
      v58 = sub_100171EF0("\r\n", v35, v36, v38);
      if (!__CFADD__(HIDWORD(v66), v58))
      {
        v72 = v65;
        v73 = v66 | ((HIDWORD(v66) + v58) << 32);
        v76 = v69;
        v75 = v68;
        v74 = v67;
        v77 = 0;

        ChannelHandlerContext.write(_:promise:)(&v72, a3);
        sub_100034310(&v72);

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10017003C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10005E2E0(v3, v4);
  sub_10017180C(v3, v4);
  sub_10005E2F4(v3, v4);
  sub_10016E8A0(32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  ByteBuffer.writeString(_:)(v7);

  sub_10016E8A0(32);
  sub_1001715CC(*(a1 + 48));
  result = ByteBuffer.setStaticString(_:at:)("\r\n", 2, 2, *(v1 + 12));
  v9 = *(v1 + 12);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v11;
  }

  return result;
}

uint64_t HTTPResponseEncoder.write(context:data:promise:)(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  v9 = sub_1000375F0(v8);
  v12 = v9;
  v13 = v11;
  if (!HIBYTE(v11))
  {
    v97 = v10;
    v98 = v11;
    v18 = v9[4];
    v94 = a3;
    if (v18 >= 0x3C)
    {
      v19 = (HTTPResponseStatus.code.getter(v9[2], v9[3], v18) - 100) < 0x64;
    }

    else
    {
      v19 = byte_10021318A[v18];
    }

    *(v4 + 16) = sub_10016FA18(v19, &v97, *(v12 + 40)) == 0;
    v13 = v97;
    v50 = sub_10009B39C();
    sub_1000A4220(v50);
    sub_10012F1B4();
    v52 = v51();
    v54 = v53;
    v56 = v55;
    a3 = v57;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v52, v54, v56, a3);
    sub_100171E58();
    sub_1001707CC(v12);
    v12 = *(v13 + 16);
    v60 = v100;
    if (v12)
    {
      v61 = (v13 + 56);
      a3 = "\r\n";
      while (1)
      {
        v62 = *(v61 - 3);
        v13 = *(v61 - 2);
        v63 = v60;
        v5 = *v61;

        sub_10007C1D0(v62, v13, v99, v63);
        if (v65)
        {
          v66._countAndFlagsBits = v62;
          v66._object = v13;
          v64 = ByteBuffer._setStringSlowpath(_:at:)(v66, v63);
        }

        v67 = v100 + v64;
        if (__CFADD__(v100, v64))
        {
          break;
        }

        v100 += v64;
        ByteBuffer._setBytes(_:at:)(": ", "", v67);
        v69 = v100 + v68;
        if (__CFADD__(v100, v68))
        {
          goto LABEL_45;
        }

        v100 += v68;
        v70 = sub_100171EE4();
        sub_10007C1D0(v70, v71, v72, v69);
        if (v74)
        {
          v75._countAndFlagsBits = sub_100171EE4();
          v73 = ByteBuffer._setStringSlowpath(_:at:)(v75, v69);
        }

        v76 = v73;

        v77 = v100 + v76;
        if (__CFADD__(v100, v76))
        {
          goto LABEL_46;
        }

        v100 += v76;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v77);
        v60 = v100 + v78;
        if (__CFADD__(v100, v78))
        {
          goto LABEL_47;
        }

        v100 += v78;
        v61 += 4;
        if (!--v12)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_35:
    v79 = sub_100171EF0("\r\n", v58, v59, v60);
    if (__CFADD__(v100, v79))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_100171E80();
    ChannelHandlerContext.write(_:promise:)(v101, v94);
    sub_100034310(v101);
  }

  if (HIBYTE(v11) == 1)
  {
    v14 = *(v4 + 16);
    v15 = v10;

    sub_10016F0BC(a1, v14, v12, v15, v13 & 0xFFFFFFFFFFFFFFLL, a3);
    v9 = v12;
    v10 = v15;
    v11 = v13;
    v16 = 1;
    return sub_100034284(v9, v10, v11, v16);
  }

  if (*(v4 + 16) != 1)
  {
    if (!a3)
    {
      v16 = 2;
      return sub_100034284(v9, v10, v11, v16);
    }

    v5 = v10;
    v80 = sub_10009B39C();
    v81 = sub_1000A4220(v80);
    v82 = *(v3 + 16);

    v82(v81, v3);
    swift_unknownObjectRelease();
    if (qword_1002AC430 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

  v93 = v10;
  if (v9)
  {
    v20 = sub_10009B39C();
    sub_1000A4220(v20);
    sub_10012F1B4();
    v22 = v21();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v22, v24, v26, v28);
    sub_100171E58();
    v29 = ByteBuffer.setStaticString(_:at:)("0\r\n", 3, 2, 0);
    v32 = v100 + v29;
    if (__CFADD__(v100, v29))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_39:
      v101[0] = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
      v101[1] = qword_1002E6088;
      v104 = byte_1002E6096;
      v103 = word_1002E6094;
      v102 = dword_1002E6090;
      v105 = 0;

      ChannelHandlerContext.write(_:promise:)(v101, a3);

      sub_100034284(v12, v5, v13, 2);

      return sub_100034310(v101);
    }

    v92 = v13;
    v100 += v29;
    v33 = v12;
    v12 = *(v12 + 16);
    v95 = a3;
    v96 = v33;
    if (v12)
    {
      a3 = (v33 + 56);
      v13 = "\r\n";
      while (1)
      {
        v34 = *(a3 - 3);
        v5 = *(a3 - 2);
        v35 = v32;
        v37 = *(a3 - 1);
        v36 = *a3;

        sub_10007C1D0(v34, v5, v99, v35);
        if (v39)
        {
          v40._countAndFlagsBits = v34;
          v40._object = v5;
          v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v35);
        }

        v41 = v100 + v38;
        if (__CFADD__(v100, v38))
        {
          break;
        }

        v100 += v38;
        ByteBuffer._setBytes(_:at:)(": ", "", v41);
        v43 = v100 + v42;
        if (__CFADD__(v100, v42))
        {
          goto LABEL_49;
        }

        v100 += v42;
        sub_10007C1D0(v37, v36, v99, v43);
        if (v45)
        {
          v46._countAndFlagsBits = v37;
          v46._object = v36;
          v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
        }

        v47 = v44;

        v48 = v100 + v47;
        if (__CFADD__(v100, v47))
        {
          goto LABEL_50;
        }

        v100 += v47;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v48);
        v32 = v100 + v49;
        if (__CFADD__(v100, v49))
        {
          goto LABEL_51;
        }

        v100 += v49;
        a3 += 32;
        if (!--v12)
        {
          goto LABEL_21;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_21:
    result = sub_100171EF0("\r\n", v30, v31, v32);
    if (!__CFADD__(v100, result))
    {
      a3 = v95;
      v12 = v96;
      v13 = v92;
LABEL_41:
      sub_100171E80();
      ChannelHandlerContext.write(_:promise:)(v101, a3);
      sub_100034284(v12, v93, v13, 2);
      sub_100034310(v101);
    }

    __break(1u);
  }

  else
  {
    v83 = sub_10009B39C();
    sub_1000A4220(v83);
    sub_10012F1B4();
    v85 = v84();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(8, v85, v87, v89, v91);
    sub_100171E58();
    result = ByteBuffer.setStaticString(_:at:)("0\r\n\r\n", 5, 2, 0);
    if (!__CFADD__(v100, result))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

void sub_1001707CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = *(a1 + 32);
  switch(v4)
  {
    case 0uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 100 Continue\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 100 Continue\r\n";
      }

      goto LABEL_289;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 101 Switching Protocols\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 101 Switching Protocols\r\n";
      }

      goto LABEL_322;
    case 2uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 102 Processing\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 102 Processing\r\n";
      }

      goto LABEL_293;
    case 3uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 200 OK\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 200 OK\r\n";
      }

      v6 = 17;
      goto LABEL_243;
    case 4uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 201 Created\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 201 Created\r\n";
      }

      goto LABEL_287;
    case 5uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 202 Accepted\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 202 Accepted\r\n";
      }

      goto LABEL_289;
    case 6uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 203 Non-Authoritative Information\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 203 Non-Authoritative Information\r\n";
      }

      goto LABEL_313;
    case 7uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 204 No Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 204 No Content\r\n";
      }

LABEL_293:
      v6 = 25;
      goto LABEL_243;
    case 8uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 205 Reset Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 205 Reset Content\r\n";
      }

      goto LABEL_305;
    case 9uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 206 Partial Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 206 Partial Content\r\n";
      }

      goto LABEL_295;
    case 0xAuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 207 Multi-Status\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 207 Multi-Status\r\n";
      }

      goto LABEL_309;
    case 0xBuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 208 Already Reported\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 208 Already Reported\r\n";
      }

      goto LABEL_283;
    case 0xCuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 226 IM Used\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 226 IM Used\r\n";
      }

LABEL_287:
      v6 = 22;
      goto LABEL_243;
    case 0xDuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 300 Multiple Choices\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 300 Multiple Choices\r\n";
      }

      goto LABEL_283;
    case 0xEuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 301 Moved Permanently\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 301 Moved Permanently\r\n";
      }

      goto LABEL_324;
    case 0xFuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 302 Found\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 302 Found\r\n";
      }

      v6 = 20;
      goto LABEL_243;
    case 0x10uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 303 See Other\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 303 See Other\r\n";
      }

      goto LABEL_316;
    case 0x11uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 304 Not Modified\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 304 Not Modified\r\n";
      }

      goto LABEL_309;
    case 0x12uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 305 Use Proxy\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 305 Use Proxy\r\n";
      }

      goto LABEL_316;
    case 0x13uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 307 Tempory Redirect\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 307 Tempory Redirect\r\n";
      }

      goto LABEL_283;
    case 0x14uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 308 Permanent Redirect\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 308 Permanent Redirect\r\n";
      }

      goto LABEL_302;
    case 0x15uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 400 Bad Request\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 400 Bad Request\r\n";
      }

      goto LABEL_326;
    case 0x16uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 401 Unauthorized\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 401 Unauthorized\r\n";
      }

      goto LABEL_309;
    case 0x17uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 402 Payment Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 402 Payment Required\r\n";
      }

      goto LABEL_283;
    case 0x18uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 403 Forbidden\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 403 Forbidden\r\n";
      }

      goto LABEL_316;
    case 0x19uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 404 Not Found\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 404 Not Found\r\n";
      }

LABEL_316:
      v6 = 24;
      goto LABEL_243;
    case 0x1AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 405 Method Not Allowed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 405 Method Not Allowed\r\n";
      }

      goto LABEL_302;
    case 0x1BuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 406 Not Acceptable\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 406 Not Acceptable\r\n";
      }

      v6 = 29;
      goto LABEL_243;
    case 0x1CuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 407 Proxy Authentication Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 407 Proxy Authentication Required\r\n";
      }

      goto LABEL_313;
    case 0x1DuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 408 Request Timeout\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 408 Request Timeout\r\n";
      }

      goto LABEL_295;
    case 0x1EuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 409 Conflict\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 409 Conflict\r\n";
      }

LABEL_289:
      v6 = 23;
      goto LABEL_243;
    case 0x1FuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 410 Gone\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 410 Gone\r\n";
      }

      v6 = 19;
      goto LABEL_243;
    case 0x20uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 411 Length Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 411 Length Required\r\n";
      }

      goto LABEL_295;
    case 0x21uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 412 Precondition Failed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 412 Precondition Failed\r\n";
      }

      goto LABEL_322;
    case 0x22uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 413 Payload Too Large\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 413 Payload Too Large\r\n";
      }

      goto LABEL_324;
    case 0x23uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 414 URI Too Long\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 414 URI Too Long\r\n";
      }

      goto LABEL_309;
    case 0x24uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 415 Unsupported Media Type\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 415 Unsupported Media Type\r\n";
      }

      v6 = 37;
      goto LABEL_243;
    case 0x25uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 416 Request Range Not Satisified\r\n";
        v6 = 43;
        goto LABEL_243;
      }

      if (*(a1 + 40))
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.0 416 Range Not Satisfiable\r\n";
      goto LABEL_299;
    case 0x26uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 417 Expectation Failed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 417 Expectation Failed\r\n";
      }

LABEL_302:
      v6 = 33;
      goto LABEL_243;
    case 0x27uLL:
      goto LABEL_242;
    case 0x28uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 421 Misdirected Request\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 421 Misdirected Request\r\n";
      }

      goto LABEL_322;
    case 0x29uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 422 Unprocessable Entity\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 422 Unprocessable Entity\r\n";
      }

      goto LABEL_281;
    case 0x2AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 423 Locked\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 423 Locked\r\n";
      }

      v6 = 21;
      goto LABEL_243;
    case 0x2BuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 424 Failed Dependency\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 424 Failed Dependency\r\n";
      }

      goto LABEL_324;
    case 0x2CuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 426 Upgrade Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 426 Upgrade Required\r\n";
      }

LABEL_283:
      v6 = 31;
      goto LABEL_243;
    case 0x2DuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 428 Precondition Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 428 Precondition Required\r\n";
      }

      goto LABEL_299;
    case 0x2EuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 429 Too Many Requests\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 429 Too Many Requests\r\n";
      }

LABEL_324:
      v6 = 32;
      goto LABEL_243;
    case 0x2FuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 431 Range Not Satisfiable\r\n";
        goto LABEL_299;
      }

      if (*(a1 + 40))
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.0 431 Request Header Fields Too Large\r\n";
LABEL_197:
      v6 = 46;
      goto LABEL_243;
    case 0x30uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 451 Unavailable For Legal Reasons\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 451 Unavailable For Legal Reasons\r\n";
      }

LABEL_313:
      v6 = 44;
      goto LABEL_243;
    case 0x31uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 500 Internal Server Error\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 500 Internal Server Error\r\n";
      }

LABEL_299:
      v6 = 36;
      goto LABEL_243;
    case 0x32uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 501 Not Implemented\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 501 Not Implemented\r\n";
      }

      goto LABEL_295;
    case 0x33uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 502 Bad Gateway\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 502 Bad Gateway\r\n";
      }

LABEL_326:
      v6 = 26;
      goto LABEL_243;
    case 0x34uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 503 Service Unavailable\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 503 Service Unavailable\r\n";
      }

LABEL_322:
      v6 = 34;
      goto LABEL_243;
    case 0x35uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 504 Gateway Timeout\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 504 Gateway Timeout\r\n";
      }

LABEL_295:
      v6 = 30;
      goto LABEL_243;
    case 0x36uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 505 HTTP Version Not Supported\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 505 HTTP Version Not Supported\r\n";
      }

      v6 = 41;
      goto LABEL_243;
    case 0x37uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 506 Variant Also Negotiates\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 506 Variant Also Negotiates\r\n";
      }

      v6 = 38;
      goto LABEL_243;
    case 0x38uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 507 Insufficient Storage\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 507 Insufficient Storage\r\n";
      }

LABEL_281:
      v6 = 35;
      goto LABEL_243;
    case 0x39uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 508 Loop Detected\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 508 Loop Detected\r\n";
      }

LABEL_305:
      v6 = 28;
      goto LABEL_243;
    case 0x3AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 510 Not Extended\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 510 Not Extended\r\n";
      }

LABEL_309:
      v6 = 27;
      goto LABEL_243;
    case 0x3BuLL:
      if (v3 != 1 || v2 > 1)
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.1 511 Network Authentication Required\r\n";
      goto LABEL_197;
    default:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      if (v2 == 1)
      {

        v9 = "HTTP/1.1 ";
        goto LABEL_328;
      }

      if (!*(a1 + 40))
      {

        v9 = "HTTP/1.0 ";
LABEL_328:
        ByteBuffer.writeStaticString(_:)(v9, 9, 2);
        v13 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);
        sub_100171734(v13, v14, v15);
        sub_1001714E0(v13, v14, v15);
        sub_100171748(v13, v14, v15);
        ByteBuffer.writeStaticString(_:)("\r\n", 2, 2);

        sub_100171748(v7, v8, v4);
        return;
      }

LABEL_242:
      sub_1001715CC(v2 | (v3 << 16));
      sub_10016E8A0(32);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      sub_100171734(v10, v11, v12);
      sub_1001714E0(v10, v11, v12);
      sub_100171748(v10, v11, v12);
      v5 = "\r\n";
      v6 = 2;
LABEL_243:

      ByteBuffer.writeStaticString(_:)(v5, v6, 2);
      return;
  }
}

uint64_t sub_1001714E0(void *a1, uint64_t a2, unint64_t a3)
{
  HTTPResponseStatus.code.getter(a1, a2, a3);
  v6._countAndFlagsBits = sub_1001F7E28();
  ByteBuffer.writeString(_:)(v6);

  sub_10016E8A0(32);
  v7._countAndFlagsBits = HTTPResponseStatus.reasonPhrase.getter(a1, a2, a3);
  ByteBuffer.writeString(_:)(v7);
}

uint64_t sub_1001715CC(unsigned int a1)
{
  v2 = HIWORD(a1);
  if (a1 != 1)
  {
LABEL_7:
    result = ByteBuffer.setStaticString(_:at:)("HTTP/", 5, 2, *(v1 + 12));
    v7 = *(v1 + 12);
    v5 = __CFADD__(v7, result);
    v8 = v7 + result;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 12) = v8;
      v9._countAndFlagsBits = sub_1001F7E28();
      ByteBuffer.writeString(_:)(v9);

      result = ByteBuffer.setStaticString(_:at:)(".", 1, 2, *(v1 + 12));
      v10 = *(v1 + 12);
      v5 = __CFADD__(v10, result);
      v11 = v10 + result;
      if (!v5)
      {
        *(v1 + 12) = v11;
        v12._countAndFlagsBits = sub_1001F7E28();
        ByteBuffer.writeString(_:)(v12);
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    if (!v2)
    {
      result = ByteBuffer.setStaticString(_:at:)("HTTP/1.0", 8, 2, *(v1 + 12));
      v4 = *(v1 + 12);
      v5 = __CFADD__(v4, result);
      v6 = v4 + result;
      if (!v5)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    goto LABEL_7;
  }

  result = ByteBuffer.setStaticString(_:at:)("HTTP/1.1", 8, 2, *(v1 + 12));
  v13 = *(v1 + 12);
  v5 = __CFADD__(v13, result);
  v6 = v13 + result;
  if (v5)
  {
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_11:
  *(v1 + 12) = v6;
  return result;
}

double sub_100171734(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x3C)
  {
  }

  return result;
}

uint64_t sub_100171748(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x3C)
  {
  }

  return result;
}

uint64_t sub_10017178C()
{

  return _swift_deallocObject(v0, 56, 7);
}

Swift::Int sub_10017180C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      result = ByteBuffer.setStaticString(_:at:)("GET", 3, 2, *(v2 + 12));
      v4 = *(v2 + 12);
      v5 = __CFADD__(v4, result);
      v6 = v4 + result;
      if (!v5)
      {
        goto LABEL_102;
      }

      __break(1u);
      goto LABEL_5;
    case 1:
      goto LABEL_47;
    case 2:
      goto LABEL_35;
    case 3:
      goto LABEL_41;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_59;
    case 6:
      goto LABEL_68;
    case 7:
      goto LABEL_44;
    case 8:
      goto LABEL_77;
    case 9:
      goto LABEL_26;
    case 10:
      goto LABEL_74;
    case 11:
      goto LABEL_17;
    case 12:
      goto LABEL_23;
    case 13:
      goto LABEL_65;
    case 14:
      goto LABEL_11;
    case 15:
      goto LABEL_38;
    case 16:
      goto LABEL_8;
    case 17:
      goto LABEL_53;
    case 18:
      goto LABEL_71;
    case 19:
      goto LABEL_89;
    case 20:
      goto LABEL_56;
    case 21:
      goto LABEL_62;
    case 22:
      goto LABEL_86;
    case 23:
      goto LABEL_92;
    case 24:
      goto LABEL_32;
    case 25:
      goto LABEL_29;
    case 26:
      goto LABEL_101;
    case 27:
LABEL_5:
      result = ByteBuffer.setStaticString(_:at:)("CHECKOUT", 8, 2, *(v2 + 12));
      v7 = *(v2 + 12);
      v5 = __CFADD__(v7, result);
      v6 = v7 + result;
      if (!v5)
      {
        goto LABEL_102;
      }

      __break(1u);
LABEL_8:
      result = ByteBuffer.setStaticString(_:at:)("SEARCH", 6, 2, *(v2 + 12));
      v8 = *(v2 + 12);
      v5 = __CFADD__(v8, result);
      v6 = v8 + result;
      if (v5)
      {
        __break(1u);
LABEL_11:
        result = ByteBuffer.setStaticString(_:at:)("PURGE", 5, 2, *(v2 + 12));
        v9 = *(v2 + 12);
        v5 = __CFADD__(v9, result);
        v6 = v9 + result;
        if (v5)
        {
          __break(1u);
LABEL_14:
          result = ByteBuffer.setStaticString(_:at:)("SOURCE", 6, 2, *(v2 + 12));
          v10 = *(v2 + 12);
          v5 = __CFADD__(v10, result);
          v6 = v10 + result;
          if (v5)
          {
            __break(1u);
LABEL_17:
            result = ByteBuffer.setStaticString(_:at:)("TRACE", 5, 2, *(v2 + 12));
            v11 = *(v2 + 12);
            v5 = __CFADD__(v11, result);
            v6 = v11 + result;
            if (v5)
            {
              __break(1u);
LABEL_20:
              result = ByteBuffer.setStaticString(_:at:)("POST", 4, 2, *(v2 + 12));
              v12 = *(v2 + 12);
              v5 = __CFADD__(v12, result);
              v6 = v12 + result;
              if (v5)
              {
                __break(1u);
LABEL_23:
                result = ByteBuffer.setStaticString(_:at:)("MKCOL", 5, 2, *(v2 + 12));
                v13 = *(v2 + 12);
                v5 = __CFADD__(v13, result);
                v6 = v13 + result;
                if (v5)
                {
                  __break(1u);
LABEL_26:
                  result = ByteBuffer.setStaticString(_:at:)("LINK", 4, 2, *(v2 + 12));
                  v14 = *(v2 + 12);
                  v5 = __CFADD__(v14, result);
                  v6 = v14 + result;
                  if (v5)
                  {
                    __break(1u);
LABEL_29:
                    result = ByteBuffer.setStaticString(_:at:)("OPTIONS", 7, 2, *(v2 + 12));
                    v15 = *(v2 + 12);
                    v5 = __CFADD__(v15, result);
                    v6 = v15 + result;
                    if (v5)
                    {
                      __break(1u);
LABEL_32:
                      result = ByteBuffer.setStaticString(_:at:)("MSEARCH", 7, 2, *(v2 + 12));
                      v16 = *(v2 + 12);
                      v5 = __CFADD__(v16, result);
                      v6 = v16 + result;
                      if (v5)
                      {
                        __break(1u);
LABEL_35:
                        result = ByteBuffer.setStaticString(_:at:)("ACL", 3, 2, *(v2 + 12));
                        v17 = *(v2 + 12);
                        v5 = __CFADD__(v17, result);
                        v6 = v17 + result;
                        if (v5)
                        {
                          __break(1u);
LABEL_38:
                          result = ByteBuffer.setStaticString(_:at:)("NOTIFY", 6, 2, *(v2 + 12));
                          v18 = *(v2 + 12);
                          v5 = __CFADD__(v18, result);
                          v6 = v18 + result;
                          if (v5)
                          {
                            __break(1u);
LABEL_41:
                            result = ByteBuffer.setStaticString(_:at:)("HEAD", 4, 2, *(v2 + 12));
                            v19 = *(v2 + 12);
                            v5 = __CFADD__(v19, result);
                            v6 = v19 + result;
                            if (v5)
                            {
                              __break(1u);
LABEL_44:
                              result = ByteBuffer.setStaticString(_:at:)("MOVE", 4, 2, *(v2 + 12));
                              v20 = *(v2 + 12);
                              v5 = __CFADD__(v20, result);
                              v6 = v20 + result;
                              if (v5)
                              {
                                __break(1u);
LABEL_47:
                                result = ByteBuffer.setStaticString(_:at:)("PUT", 3, 2, *(v2 + 12));
                                v21 = *(v2 + 12);
                                v5 = __CFADD__(v21, result);
                                v6 = v21 + result;
                                if (v5)
                                {
                                  __break(1u);
LABEL_50:
                                  result = ByteBuffer.setStaticString(_:at:)("MKACTIVITY", 10, 2, *(v2 + 12));
                                  v22 = *(v2 + 12);
                                  v5 = __CFADD__(v22, result);
                                  v6 = v22 + result;
                                  if (v5)
                                  {
                                    __break(1u);
LABEL_53:
                                    result = ByteBuffer.setStaticString(_:at:)("UNLOCK", 6, 2, *(v2 + 12));
                                    v23 = *(v2 + 12);
                                    v5 = __CFADD__(v23, result);
                                    v6 = v23 + result;
                                    if (v5)
                                    {
                                      __break(1u);
LABEL_56:
                                      result = ByteBuffer.setStaticString(_:at:)("REPORT", 6, 2, *(v2 + 12));
                                      v24 = *(v2 + 12);
                                      v5 = __CFADD__(v24, result);
                                      v6 = v24 + result;
                                      if (v5)
                                      {
                                        __break(1u);
LABEL_59:
                                        result = ByteBuffer.setStaticString(_:at:)("COPY", 4, 2, *(v2 + 12));
                                        v25 = *(v2 + 12);
                                        v5 = __CFADD__(v25, result);
                                        v6 = v25 + result;
                                        if (v5)
                                        {
                                          __break(1u);
LABEL_62:
                                          result = ByteBuffer.setStaticString(_:at:)("DELETE", 6, 2, *(v2 + 12));
                                          v26 = *(v2 + 12);
                                          v5 = __CFADD__(v26, result);
                                          v6 = v26 + result;
                                          if (v5)
                                          {
                                            __break(1u);
LABEL_65:
                                            result = ByteBuffer.setStaticString(_:at:)("MERGE", 5, 2, *(v2 + 12));
                                            v27 = *(v2 + 12);
                                            v5 = __CFADD__(v27, result);
                                            v6 = v27 + result;
                                            if (v5)
                                            {
                                              __break(1u);
LABEL_68:
                                              result = ByteBuffer.setStaticString(_:at:)("LOCK", 4, 2, *(v2 + 12));
                                              v28 = *(v2 + 12);
                                              v5 = __CFADD__(v28, result);
                                              v6 = v28 + result;
                                              if (v5)
                                              {
                                                __break(1u);
LABEL_71:
                                                result = ByteBuffer.setStaticString(_:at:)("REBIND", 6, 2, *(v2 + 12));
                                                v29 = *(v2 + 12);
                                                v5 = __CFADD__(v29, result);
                                                v6 = v29 + result;
                                                if (v5)
                                                {
                                                  __break(1u);
LABEL_74:
                                                  result = ByteBuffer.setStaticString(_:at:)("PATCH", 5, 2, *(v2 + 12));
                                                  v30 = *(v2 + 12);
                                                  v5 = __CFADD__(v30, result);
                                                  v6 = v30 + result;
                                                  if (v5)
                                                  {
                                                    __break(1u);
LABEL_77:
                                                    result = ByteBuffer.setStaticString(_:at:)("BIND", 4, 2, *(v2 + 12));
                                                    v31 = *(v2 + 12);
                                                    v5 = __CFADD__(v31, result);
                                                    v6 = v31 + result;
                                                    if (v5)
                                                    {
                                                      __break(1u);
LABEL_80:
                                                      result = ByteBuffer.setStaticString(_:at:)("MKCALENDAR", 10, 2, *(v2 + 12));
                                                      v32 = *(v2 + 12);
                                                      v5 = __CFADD__(v32, result);
                                                      v6 = v32 + result;
                                                      if (v5)
                                                      {
                                                        __break(1u);
LABEL_83:
                                                        result = ByteBuffer.setStaticString(_:at:)("UNSUBSCRIBE", 11, 2, *(v2 + 12));
                                                        v33 = *(v2 + 12);
                                                        v5 = __CFADD__(v33, result);
                                                        v6 = v33 + result;
                                                        if (v5)
                                                        {
                                                          __break(1u);
LABEL_86:
                                                          result = ByteBuffer.setStaticString(_:at:)("UNLINK", 6, 2, *(v2 + 12));
                                                          v34 = *(v2 + 12);
                                                          v5 = __CFADD__(v34, result);
                                                          v6 = v34 + result;
                                                          if (v5)
                                                          {
                                                            __break(1u);
LABEL_89:
                                                            result = ByteBuffer.setStaticString(_:at:)("UNBIND", 6, 2, *(v2 + 12));
                                                            v35 = *(v2 + 12);
                                                            v5 = __CFADD__(v35, result);
                                                            v6 = v35 + result;
                                                            if (v5)
                                                            {
                                                              __break(1u);
LABEL_92:
                                                              result = ByteBuffer.setStaticString(_:at:)("CONNECT", 7, 2, *(v2 + 12));
                                                              v36 = *(v2 + 12);
                                                              v5 = __CFADD__(v36, result);
                                                              v6 = v36 + result;
                                                              if (v5)
                                                              {
                                                                __break(1u);
LABEL_95:
                                                                result = ByteBuffer.setStaticString(_:at:)("PROPPATCH", 9, 2, *(v2 + 12));
                                                                v37 = *(v2 + 12);
                                                                v5 = __CFADD__(v37, result);
                                                                v6 = v37 + result;
                                                                if (v5)
                                                                {
                                                                  __break(1u);
LABEL_98:
                                                                  result = ByteBuffer.setStaticString(_:at:)("SUBSCRIBE", 9, 2, *(v2 + 12));
                                                                  v38 = *(v2 + 12);
                                                                  v5 = __CFADD__(v38, result);
                                                                  v6 = v38 + result;
                                                                  if (v5)
                                                                  {
                                                                    __break(1u);
LABEL_101:
                                                                    result = ByteBuffer.setStaticString(_:at:)("PROPFIND", 8, 2, *(v2 + 12));
                                                                    v39 = *(v2 + 12);
                                                                    v5 = __CFADD__(v39, result);
                                                                    v6 = v39 + result;
                                                                    if (v5)
                                                                    {
                                                                      __break(1u);
                                                                      JUMPOUT(0x100171DB8);
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_102:
      *(v2 + 12) = v6;
      return result;
    case 28:
      goto LABEL_95;
    case 29:
      goto LABEL_98;
    case 30:
      goto LABEL_80;
    case 31:
      goto LABEL_50;
    case 32:
      goto LABEL_83;
    case 33:
      goto LABEL_14;
    default:

      return ByteBuffer.writeString(_:)(*&a1);
  }
}

uint64_t sub_100171E80()
{
}

uint64_t sub_100171EF0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{

  return ByteBuffer.setStaticString(_:at:)(a1, 2, 2, a4);
}

unint64_t sub_100171F18(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CB10;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100171F64(char a1)
{
  result = 6580578;
  switch(a1)
  {
    case 1:
      result = 1936881250;
      break;
    case 2:
      result = 1684632935;
      break;
    case 3:
      result = 0x6E4F707041534F69;
      break;
    case 4:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100171FF4(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B9630, &qword_1002132C0);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_100172698();
  sub_1001F8198();
  v10[15] = 0;
  sub_10005DBC4();
  sub_1001F7D88();
  if (!v1)
  {
    v10[14] = 1;
    sub_10005DBC4();
    sub_1001F7D88();
    v10[13] = 2;
    sub_10005DBC4();
    sub_1001F7D18();
    v10[12] = 3;
    sub_10005DBC4();
    sub_1001F7D18();
    v10[11] = 4;
    sub_10005DBC4();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_10017219C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002B9620, &qword_1002132B8);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_100172698();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v32[0]) = 0;
  v11 = sub_1001F7C78();
  v30 = v12;
  sub_100172948(1);
  v13 = sub_1001F7C78();
  v29 = v14;
  v26 = v13;
  sub_100172948(2);
  v25 = sub_1001F7C08();
  v28 = v15;
  sub_100172948(3);
  v24 = sub_1001F7C08();
  v27 = v16;
  v33 = 4;
  v17 = sub_1001F7C08();
  v19 = v18;
  (*(v7 + 8))(v10, v5);
  __src[0] = v11;
  __src[1] = v30;
  v20 = v29;
  __src[2] = v26;
  __src[3] = v29;
  v21 = v28;
  __src[4] = v25;
  __src[5] = v28;
  v22 = v27;
  __src[6] = v24;
  __src[7] = v27;
  __src[8] = v17;
  __src[9] = v19;
  sub_1001726EC(__src, v32);
  sub_100019CCC(a1);
  v32[0] = v11;
  v32[1] = v30;
  v32[2] = v26;
  v32[3] = v20;
  v32[4] = v25;
  v32[5] = v21;
  v32[6] = v24;
  v32[7] = v22;
  v32[8] = v17;
  v32[9] = v19;
  sub_100064048(v32);
  return memcpy(a2, __src, 0x50uLL);
}

unint64_t sub_100172530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100171F18(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100172560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100171F64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100172594@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100171F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001725BC(uint64_t a1)
{
  v2 = sub_100172698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001725F8(uint64_t a1)
{
  v2 = sub_100172698();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100172634@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10017219C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_100172698()
{
  result = qword_1002B9628;
  if (!qword_1002B9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InAppRegrantPurchaseHistoryRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001727F0);
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

unint64_t sub_10017282C()
{
  result = qword_1002B9638;
  if (!qword_1002B9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9638);
  }

  return result;
}

unint64_t sub_100172884()
{
  result = qword_1002B9640;
  if (!qword_1002B9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9640);
  }

  return result;
}

unint64_t sub_1001728DC()
{
  result = qword_1002B9648[0];
  if (!qword_1002B9648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B9648);
  }

  return result;
}

void sub_10017295C(void *a1)
{
  type metadata accessor for JWS.Header(319, a1[2], a1[3], a1[4]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_100172DC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100172A10(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 72) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x100172B60);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return sub_10001C990((a1 + v7 + 72) & ~v7, v6, v4);
  }

  v18 = *(a1 + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

double sub_100172B74(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return result;
      case 2:
        *&a1[v11] = v16;
        return result;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        return result;
      default:
        return result;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x100172D70);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = &a1[v10 + 72] & ~v10;

          sub_100018460(v19, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(a1 + 40) = 0u;
          *(a1 + 24) = 0u;
          *(a1 + 8) = 0u;
          *(a1 + 56) = 0u;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return result;
  }
}

void sub_100172DC8()
{
  if (!qword_1002ACA80)
  {
    v0 = sub_1001F6FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002ACA80);
    }
  }
}

uint64_t sub_100172E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100172E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100172E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100172EE4(uint64_t a1)
{

  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10003A2B4();
  v1 = sub_1001F6A68();

  return v1;
}

unint64_t sub_100172F70(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CBA8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100172FC0(char a1)
{
  result = 6777953;
  switch(a1)
  {
    case 1:
      result = 6580587;
      break;
    case 2:
      result = 7371124;
      break;
    case 3:
      result = 6501752;
      break;
    case 4:
      result = 0x676E696666757473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100173044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001730B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100173124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100173194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_100173204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100172F70(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100173240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100172FC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100173284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100172FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001732E0@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageEnd.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100173314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100173368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void sub_1001733BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10001E850();
  a25 = v28;
  a26 = v29;
  v47[0] = v27;
  v30 = v26;
  v32 = v31;
  type metadata accessor for JWS.Header.CodingKeys(255, v33[2], v33[3], v33[4]);
  sub_100174A04();
  swift_getWitnessTable();
  v34 = sub_1001F7DE8();
  sub_10001A278();
  v36 = v35;
  __chkstk_darwin(v37);
  v39 = v47 - v38;
  sub_10001AE68(v32, v32[3]);
  sub_1001F8198();
  a16 = 0;
  v40 = v47[0];
  sub_1001F7D88();
  if (!v40)
  {
    v41 = v30[2];
    v42 = v30[3];
    a15 = 1;
    sub_100174A1C(v41, v42, &a15);
    v43 = v30[4];
    v44 = v30[5];
    a14 = 2;
    sub_100174A1C(v43, v44, &a14);
    if (v30[6])
    {
      v47[1] = v30[6];
      sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
      sub_10001DE1C(&qword_1002ACB30, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      sub_1001F7DC8();
    }

    v45 = v30[8];
    if (v45)
    {
      v46 = v30[7];
      a13 = 4;
      sub_100174A1C(v46, v45, &a13);
    }
  }

  (*(v36 + 8))(v39, v34);
  sub_10001E868();
}

void sub_1001735DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  v62 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v58 = v32;
  type metadata accessor for JWS.Header.CodingKeys(255, v28, v26, v24);
  sub_100174A04();
  swift_getWitnessTable();
  v60 = sub_1001F7CE8();
  sub_10001A278();
  v59 = v33;
  __chkstk_darwin(v34);
  v36 = v55 - v35;
  sub_10001AE68(v31, v31[3]);
  v61 = v36;
  v37 = v62;
  sub_1001F8178();
  if (v37)
  {
    sub_100019CCC(v31);
  }

  else
  {
    v38 = v59;
    v39 = v29;
    LOBYTE(v64[0]) = 0;
    v56 = sub_1001F7C78();
    v62 = v40;
    LOBYTE(v64[0]) = 1;
    v41 = sub_1001F7C78();
    v57 = v42;
    v55[1] = v41;
    sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    LOBYTE(v63[0]) = 3;
    sub_10001DE1C(&qword_1002ACB50, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1001F7C48();
    v43 = v31;
    v44 = v64[0];
    v45 = sub_1001F7C08();
    v46 = *(v38 + 8);
    v48 = v47;
    v55[0] = v47;
    v46(v61, v60);
    v63[0] = v56;
    v63[1] = v62;
    sub_100174A38();
    v63[2] = v50;
    v63[3] = v49;
    v63[4] = 5527370;
    v63[5] = 0xE300000000000000;
    v63[6] = v44;
    v63[7] = v45;
    v63[8] = v48;
    v51 = type metadata accessor for JWS.Header(0, v39, v27, v25);
    v52 = *(v51 - 8);
    (*(v52 + 16))(v64, v63, v51);
    sub_100019CCC(v43);
    v64[0] = v56;
    v64[1] = v62;
    sub_100174A38();
    v64[2] = v54;
    v64[3] = v53;
    v64[4] = 5527370;
    v64[5] = 0xE300000000000000;
    v64[6] = v44;
    v64[7] = v45;
    v64[8] = v55[0];
    (*(v52 + 8))(v64, v51);
    memcpy(v58, v63, 0x48uLL);
  }

  sub_10001E868();
}

void sub_1001739E0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  sub_1001735DC(a1, a2[2], a2[3], a2[4], a3, a4, a5, a6, v9, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v7)
  {
    memcpy(a7, __src, 0x48uLL);
  }
}

void sub_100173A50()
{
  sub_10001E850();
  v112 = v1;
  v100 = v2;
  v104 = v3;
  v5 = v4;
  v7 = v6;
  v102 = v8;
  v103 = v9;
  __chkstk_darwin(v6);
  sub_1000D4804();
  sub_1001F5E48();
  sub_10001A278();
  __chkstk_darwin(v10);
  sub_1000D4804();
  v96 = v11;
  v106[0] = 46;
  v106[1] = 0xE100000000000000;
  v105[2] = v106;
  v12 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v105, v7, v5);
  v13 = 0;
  v14 = v12[2];
  v15 = v12 + 7;
  v16 = _swiftEmptyArrayStorage;
  while (v14 != v13)
  {
    if (v13 >= v12[2])
    {
      __break(1u);
LABEL_37:
      sub_10001B230(&qword_1002AC510);
LABEL_15:
      v50 = sub_1001F6688();
      sub_100019C94(v50, qword_1002E6180);
      v51 = sub_1001F6668();
      v52 = sub_1001F7298();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Invalid JWS header and/or payload components", v53, 2u);
      }

      LOBYTE(v106[0]) = 0;
      sub_1000B2894();
      swift_willThrowTypedImpl();
LABEL_18:
      *v112 = 0;
LABEL_19:
      sub_10001E868();
      return;
    }

    v17 = sub_1001F6BE8();
    v19 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v16 = v22;
    }

    v20 = v16[2];
    if (v20 >= v16[3] >> 1)
    {
      sub_100032370();
      v16 = v23;
    }

    v16[2] = v20 + 1;
    v21 = &v16[2 * v20];
    v21[4] = v17;
    v21[5] = v19;
    v15 += 4;
    ++v13;
  }

  if (v16[2] != 3)
  {
    goto LABEL_13;
  }

  v24 = v16[5];
  v110 = v16[4];
  v111 = v24;
  v108 = 45;
  v109 = 0xE100000000000000;
  v107[0] = 43;
  v107[1] = 0xE100000000000000;
  v25 = sub_10001C790();
  v26 = type metadata for String;
  v110 = sub_1001749C4(&v108, v107, v27, v28, v29, v30, v31, v32, type metadata for String, v25, v25, v25);
  v111 = v33;
  v108 = 95;
  v109 = 0xE100000000000000;
  v34 = sub_1001749EC(47);
  v42 = sub_1001749C4(v34, v35, v36, v37, v38, v39, v40, v41, type metadata for String, v25, v89, v91);
  v44 = v43;

  v106[0] = v42;
  v106[1] = v44;

  v45 = sub_1001F6C38();

  if (v45 % 4)
  {
    v113._countAndFlagsBits = sub_100174A60(v45 % 4);
    sub_1001F6CA8(v113);
  }

  v46 = sub_1001F6328();
  v48 = v47;
  sub_100040C5C(v46, v47);

  v49 = v104;
  if (v48 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v46, v48);
  if (v16[2] < 2uLL)
  {
    __break(1u);
LABEL_39:
    sub_10001B230(&qword_1002AC510);
LABEL_29:
    v80 = sub_1001F6688();
    sub_100019C94(v80, qword_1002E6180);
    swift_errorRetain();
    v81 = sub_1001F6668();
    v82 = sub_1001F7298();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138412290;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v85;
      *v84 = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to decode JWS data: %@", v83, 0xCu);
      sub_1001327E0(v84);

      v44 = v92;
      v49 = v102;
    }

    LOBYTE(v106[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v44, v48);
    sub_10003A36C(v90, v26);

    if (!v100)
    {
      memcpy(v106, v49, sizeof(v106));
      (*(*(v46 - 8) + 8))(v106, v46);
    }

    goto LABEL_18;
  }

  v92 = v46;
  v54 = v16[7];
  v110 = v16[6];
  v111 = v54;
  v108 = 45;
  v109 = 0xE100000000000000;
  v55 = sub_1001749EC(43);
  v110 = sub_1001749C4(v55, v56, v57, v58, v59, v60, v61, v62, type metadata for String, v25, v0, v96);
  v111 = v63;
  v108 = 95;
  v109 = 0xE100000000000000;
  v64 = sub_1001749EC(47);
  v72 = sub_1001749C4(v64, v65, v66, v67, v68, v69, v70, v71, type metadata for String, v25, v100, v102);
  v74 = v73;

  v106[0] = v72;
  v106[1] = v74;

  v75 = sub_1001F6C38();

  if (v75 % 4)
  {
    v114._countAndFlagsBits = sub_100174A60(v75 % 4);
    sub_1001F6CA8(v114);
  }

  v76 = sub_1001F6328();
  v78 = v77;
  sub_100040C5C(v76, v77);

  v44 = v92;
  if (v78 >> 60 == 15)
  {

    sub_10003A36C(v92, v48);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v76, v78);
  v90 = v76;
  v79 = type metadata accessor for JWS(0, v103, v104, v101);
  *&v102[v79[13]] = v16;
  sub_1001F5E88();
  swift_allocObject();

  sub_1001F5E78();
  (*(v98 + 104))(v97, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v99);
  sub_1001F5E58();
  v46 = type metadata accessor for JWS.Header(0, v103, v104, v101);
  swift_getWitnessTable();
  sub_1001F5E68();
  v100 = v95;
  if (v95)
  {
    v49 = v102;

    v26 = v78;
    if (qword_1002AC510 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  memcpy(v102, v106, 0x48uLL);
  sub_1001F5E68();

  (*(v93 + 32))(&v102[v79[11]], v94, v103);
  if (v16[2] >= 3uLL)
  {
    v87 = v16[8];
    v86 = v16[9];

    sub_10003A36C(v92, v48);
    sub_10003A36C(v90, v78);
    v88 = &v102[v79[12]];
    *v88 = v87;
    *(v88 + 1) = v86;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1001743A4()
{
  sub_10001E850();
  v2 = v1;
  v19 = v4;
  v20 = v3;
  v7 = type metadata accessor for JWS(0, v5, v6, v3);
  sub_10001A278();
  v18 = v8;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_10001AE68(v2, v2[3]);
  sub_100174A4C();
  sub_1001F8168();
  if (v0)
  {
    v13 = v2;
  }

  else
  {
    v16 = v11;
    v17 = v2;
    v15 = v7;
    sub_10001AE68(v21, v21[3]);
    sub_100174A4C();
    sub_1001F7EC8();
    v12 = v16;
    sub_100173A50();
    (*(v18 + 32))(v19, v12, v15);
    sub_100019CCC(v21);
    v13 = v17;
  }

  sub_100019CCC(v13);
  sub_10001E868();
}

uint64_t sub_100174538(void *a1, uint64_t a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_100172EE4(a2);
  sub_10004BD98(v4, v4[3]);
  sub_1001F7EE8();

  return sub_100019CCC(v4);
}

uint64_t sub_100174630(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100174690(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE *sub_10017471C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001747E8);
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

_BYTE *storeEnumTagSinglePayload for JWSError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001748DCLL);
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

unint64_t sub_100174918()
{
  result = qword_1002B97D0;
  if (!qword_1002B97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B97D0);
  }

  return result;
}

uint64_t sub_1001749C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1001F75F8();
}

uint64_t sub_1001749EC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = v1;
  return v2 - 120;
}

uint64_t sub_100174A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7D88();
}

uint64_t sub_100174A60@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 61;
  v2._object = 0xE100000000000000;

  return sub_1001F6D78(v2, 4 - a1);
}

unint64_t sub_100174A80(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1001F7858();
    }

    sub_1001F6388();
  }

  return v2 >> 60;
}

uint64_t sub_100174B14(double a1)
{
  v2 = a1;
  v3[3] = &type metadata for UnsafeRawBufferPointer;
  v3[4] = &protocol witness table for UnsafeRawBufferPointer;
  v3[0] = &v2;
  v3[1] = v3;
  sub_10001AE68(v3, &type metadata for UnsafeRawBufferPointer);
  sub_1001F6388();
  return sub_100019CCC(v3);
}

uint64_t sub_100174BB0(uint64_t result, unint64_t a2, __n128 a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x100174C2CLL);
      }

      result = result;
      goto LABEL_5;
    case 2uLL:
      result = *(result + 16);
LABEL_5:
      result = sub_100177784(result);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100174C3C()
{
  type metadata accessor for CertificateManager(0);
  swift_allocObject();
  result = sub_100174D48();
  qword_1002E6148 = result;
  return result;
}

uint64_t sub_100174C7C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  sub_100176F1C();
  v2 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
  return v2;
}

void sub_100174CDC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_100176F1C();
  v4 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  sub_100047940();
  swift_beginAccess();
  sub_1001776A4(v1 + v4, a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_100174D48()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  v3 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  v4 = sub_1001F68E8();
  sub_100018460(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_100174DCC()
{
  v0 = sub_1001F6B48();
  v1 = sub_100175248();
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  sub_1000183C4(&qword_1002B9910, &qword_1002137F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FEBE0;
  sub_1000183C4(&qword_1002B9918, &unk_1002137F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FE9E0;
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100208ED0;
  v6 = kSecOidCommonName;
  *(v5 + 32) = kSecOidCommonName;
  *(v5 + 40) = v0;
  *(v4 + 32) = v5;
  *(v3 + 32) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001FE9E0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100208ED0;
  v9 = kSecOidOrganization;
  *(v8 + 32) = kSecOidOrganization;
  *(v8 + 40) = v0;
  *(v7 + 32) = v8;
  *(v3 + 40) = v7;
  v10 = v0;
  v11 = v6;
  v12 = v9;
  sub_1000183C4(&qword_1002B9920, &unk_100213808);
  v13.super.isa = sub_1001F6F18().super.isa;

  sub_1000183C4(&qword_1002B1FF0, &unk_1002081D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100208B20;
  v15 = kSecCertificateKeyUsage;
  *(inited + 32) = kSecCertificateKeyUsage;
  v16 = v15;
  isa = sub_1001F7588().super.super.isa;
  type metadata accessor for CFNumber(0);
  v19 = v18;
  *(inited + 40) = isa;
  v20 = kSecSubjectAltName;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  sub_1000183C4(&qword_1002B9928, &qword_100213818);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1001FE9E0;
  v22 = kSecSubjectAltNameEmailAddress;
  *(v21 + 32) = kSecSubjectAltNameEmailAddress;
  *(v21 + 40) = v10;
  type metadata accessor for CFString(0);
  sub_100177974(&qword_1002AC8D0, type metadata accessor for CFString, &unk_1001FE938);
  v23 = v10;
  v24 = v20;
  v25 = v22;
  sub_1001F69B8();
  v26 = sub_1001F6988().super.isa;

  type metadata accessor for CFDictionary(0);
  *(inited + 80) = v26;
  v27 = kSecCSRBasicContraintsPathLen;
  *(inited + 104) = v28;
  *(inited + 112) = v27;
  v29 = v27;
  v30.super.super.isa = sub_1001F70D8().super.super.isa;
  *(inited + 144) = v19;
  *(inited + 120) = v30;
  sub_1001F69B8();
  v31.super.isa = sub_1001F6988().super.isa;

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v36 = sub_1001F6688();
    sub_100019C94(v36, qword_1002E6180);
    v37 = sub_1001F6668();
    v38 = sub_1001F7298();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to generate self-signed certificate for StoreKit testing", v39, 2u);
    }

    return 0;
  }

  v33 = SelfSignedCertificate;
  v34 = SecCertificateCopyData(v33);
  v35 = sub_1001F63C8();

  return v35;
}

SecKeyRef sub_100175248()
{
  sub_1000183C4(&qword_1002B9930, &unk_100213820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100208B20;
  *(inited + 32) = kSecAttrKeyType;
  *(inited + 40) = kSecAttrKeyTypeEC;
  *(inited + 48) = kSecAttrKeyClass;
  *(inited + 56) = kSecAttrKeyClassPrivate;
  *(inited + 64) = kSecAttrKeySizeInBits;
  v1 = kSecAttrKeyType;
  v2 = kSecAttrKeyTypeEC;
  v3 = kSecAttrKeyClass;
  v4 = kSecAttrKeyClassPrivate;
  v5 = kSecAttrKeySizeInBits;
  *(inited + 72) = sub_1001F70D8();
  type metadata accessor for CFString(0);
  sub_100177974(&qword_1002AC8D0, type metadata accessor for CFString, &unk_1001FE938);
  sub_1001F69B8();
  error = 0;
  v6 = sub_1001F68B8();
  v8 = v7;
  isa = sub_1001F63A8().super.isa;
  sub_10003A380(v6, v8);
  v10 = sub_1001F6988().super.isa;

  v11 = SecKeyCreateWithData(isa, v10, &error);

  if (error)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      type metadata accessor for CFError(0);
      v17 = sub_1001F6BA8();
      v19 = sub_1000E4544(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to convert CryptoKit key to SecKey: %{public}s", v15, 0xCu);
      sub_100019CCC(v16);
    }
  }

  return v11;
}

uint64_t sub_10017552C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1001F6288();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = objc_opt_self();
  sub_10017788C(v10);
  if (v11)
  {
    sub_1001F61F8();
    sub_1001F6228();

    (*(v5 + 8))(v9, v3);
    sub_1001779E4();
    return sub_100018460(v12, v13, v14, v15);
  }

  else
  {

    return sub_100018460(a2, 1, 1, v3);
  }
}

Swift::Int sub_100175670(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1001F6288();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017552C(v6);
  if (sub_10001C990(v6, 1, v7) == 1)
  {
    sub_10004BDE8(v6, &qword_1002ACE98, &qword_1001FF1A0);
    type metadata accessor for OctaneError(0);
    sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError, &unk_10020793C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v16 = xmmword_10020F550;
    sub_1001F6438();
    v13 = v12;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v14 = sub_1001F6CF8();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v15 = __OFADD__(v14, 8);
    result = v14 + 8;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      sub_1001F6368(result);
      sub_100174B14(v13 + 31536000.0);
      sub_100175914(a1, a2);
      sub_1001F63F8();
      (*(v8 + 8))(v10, v7);
      return sub_10003A380(v16, *(&v16 + 1));
    }
  }

  return result;
}

unint64_t sub_100175914(uint64_t a1, unint64_t a2)
{
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;

  sub_1000183C4(&qword_1002B6F48, &qword_10020FA20);
  if (swift_dynamicCast())
  {
    sub_10002DD3C(v45, &v47);
    v5 = sub_10001AE68(&v47, v48);
    __chkstk_darwin(v5);
    v38 = v2;
    sub_1001F6108();
    return sub_100019CCC(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_10004BDE8(v45, &qword_1002B6F50, &qword_10020FA28);
  v7 = 0;
  result = sub_100174A80(a1, a2);
  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_61;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v9 = *v2;
    v10 = v2[1];
    v11 = 0;
    v12 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_68;
        }

        v12 = HIDWORD(v9) - v9;
        v11 = v9 >> 32;
LABEL_13:
        if (__OFADD__(v11, v8))
        {
          __break(1u);
        }

        else if ((v11 + v8) >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v15 = sub_1001F6348();
            __chkstk_darwin(v15);
            v37[2] = v12;
            v37[3] = v8;
            v38 = v44;
            v16 = sub_100143ECC(sub_100177928, v37);
            v20 = v17;
            if (v19 == v8)
            {
              v21 = v16;
              v22 = v18;
              LOBYTE(v23) = 0;
              if ((v17 & 0x2000000000000000) != 0)
              {
                v24 = HIBYTE(v17) & 0xF;
              }

              else
              {
                v24 = v16 & 0xFFFFFFFFFFFFLL;
              }

              v25 = (v16 >> 59) & 1;
              if ((v17 & 0x1000000000000000) == 0)
              {
                LOBYTE(v25) = 1;
              }

              v26 = 4 << v25;
              v41 = v17 & 0xFFFFFFFFFFFFFFLL;
              v39 = v7;
              v40 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
              *(v45 + 7) = 0;
              *&v45[0] = 0;
              while (1)
              {
                if (4 * v24 == v22 >> 14)
                {
                  if (v23)
                  {
                    *&v47 = *&v45[0];
                    *(&v47 + 6) = *(v45 + 6);
                    sub_1001F6388();
                  }
                }

                v7 = v22 & 0xC;
                v27 = v22;
                if (v7 == v26)
                {
                  v27 = sub_1001EE2BC(v22, v21, v20);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v24)
                {
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  v8 = sub_1001F6CF8();
                  goto LABEL_8;
                }

                if ((v20 & 0x1000000000000000) != 0)
                {
                  v30 = sub_1001F6D38();
                }

                else if ((v20 & 0x2000000000000000) != 0)
                {
                  *&v47 = v21;
                  *(&v47 + 1) = v41;
                  v30 = *(&v47 + v28);
                }

                else
                {
                  v29 = v40;
                  if ((v21 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_1001F7858();
                  }

                  v30 = *(v29 + v28);
                }

                if (v7 == v26)
                {
                  v22 = sub_1001EE2BC(v22, v21, v20);
                  if ((v20 & 0x1000000000000000) == 0)
                  {
LABEL_35:
                    v22 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
                    goto LABEL_40;
                  }
                }

                else if ((v20 & 0x1000000000000000) == 0)
                {
                  goto LABEL_35;
                }

                if (v24 <= v22 >> 16)
                {
                  goto LABEL_60;
                }

                v22 = sub_1001F6D08();
LABEL_40:
                *(v45 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_59;
                }

                if (v23 == 14)
                {
                  *&v47 = *&v45[0];
                  *(&v47 + 6) = *(v45 + 6);
                  sub_1001F6388();
                  LOBYTE(v23) = 0;
                }
              }
            }

            v31 = *v2;
            v32 = v2[1];
            v33 = 0;
            switch(v32 >> 62)
            {
              case 1uLL:
                v33 = v31;
                break;
              case 2uLL:
                v33 = *(v31 + 16);
                break;
              default:
                break;
            }

            v34 = __OFADD__(v33, v12);
            v35 = v33 + v12;
            if (!v34)
            {
              if (!__OFADD__(v35, v19))
              {
                v36 = 0;
                switch(v32 >> 62)
                {
                  case 1uLL:
                    v36 = v31 >> 32;
                    break;
                  case 2uLL:
                    v36 = *(v31 + 24);
                    break;
                  case 3uLL:
                    break;
                  default:
                    v36 = BYTE6(v32);
                    break;
                }

                if (v36 >= v35 + v19)
                {
                  sub_1001F6358();
                }

LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_64;
      case 2uLL:
        v14 = v9 + 16;
        v13 = *(v9 + 16);
        v11 = *(v14 + 8);
        v12 = v11 - v13;
        if (!__OFSUB__(v11, v13))
        {
          goto LABEL_13;
        }

        goto LABEL_69;
      case 3uLL:
        goto LABEL_13;
      default:
        v11 = BYTE6(v10);
        v12 = BYTE6(v10);
        goto LABEL_13;
    }
  }

  return result;
}

char *sub_100175E34(uint64_t a1)
{
  v3 = sub_1001F6B98();
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1001F6288();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017552C(v8);
  if (sub_10001C990(v8, 1, v9) == 1)
  {
    sub_10004BDE8(v8, &qword_1002ACE98, &qword_1001FF1A0);
    type metadata accessor for OctaneError(0);
    sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError, &unk_10020793C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_1001F62C8();
    if (!v1)
    {
      v17 = v13;
      v18 = v14;
      sub_100174BB0(v13, v14, v15);
      sub_1001F6418();
      v19 = sub_1001F6508();
      v29 = *(v19 - 8);
      v30 = v19;
      v20 = *(v29 + 64);
      v31 = v18;
      v21 = sub_100176210(v20, v17, v18);
      v28 = a1;
      v22 = v21;
      v24 = v23;
      sub_1001F6B88();
      v5 = sub_1001F6B78();
      v26 = v25;
      sub_10003A380(v22, v24);
      if (v26)
      {
        (*(v10 + 8))(v12, v9);
        sub_10003A380(v17, v31);
        return v5;
      }

      type metadata accessor for OctaneError(0);
      sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError, &unk_10020793C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003A380(v17, v31);
      (*(v29 + 8))(v28, v30);
    }

    (*(v10 + 8))(v12, v9);
  }

  return v5;
}

uint64_t sub_100176210(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  v6 = 0;
  v7 = 0;
  switch(v4)
  {
    case 1uLL:
      v7 = a2;
      v6 = a2 >> 32;
      break;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = 0;
      v6 = v3;
      break;
  }

  if (v6 < a1 || v6 < v7)
  {
    __break(1u);
    JUMPOUT(0x100176274);
  }

  return sub_1001F6398();
}

uint64_t sub_100176284()
{
  v1 = v0;
  v46 = *v0;
  v2 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  sub_100056658(v2);
  sub_10001E844();
  __chkstk_darwin(v3);
  v5 = &v44 - v4;
  v6 = sub_1001F6288();
  sub_10001A278();
  v45 = v7;
  __chkstk_darwin(v8);
  sub_100023510();
  v11 = v10 - v9;
  v12 = sub_1001F68E8();
  sub_10001A278();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100023510();
  v18 = v17 - v16;
  v19 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  sub_100056658(v19);
  sub_10001E844();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  sub_100047940();
  swift_beginAccess();
  sub_1001776A4(v1 + v23, v22);
  if (sub_10001C990(v22, 1, v12))
  {
    return sub_10004BDE8(v22, &qword_1002B2570, &unk_100208B30);
  }

  v44 = v11;
  (*(v14 + 16))(v18, v22, v12);
  sub_10004BDE8(v22, &qword_1002B2570, &unk_100208B30);
  v25 = sub_1001F6898();
  v27 = v26;
  (*(v14 + 8))(v18, v12);
  v28 = (v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  v29 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert + 8);
  if (!v29)
  {
    return sub_10003A380(v25, v27);
  }

  v30 = *v28;

  sub_10017552C(v5);
  v31 = v6;
  if (sub_10001C990(v5, 1, v6) == 1)
  {
    v32 = v27;

    sub_10004BDE8(v5, &qword_1002ACE98, &qword_1001FF1A0);
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v33 = sub_1001F6688();
    sub_100019C94(v33, qword_1002E6180);
    v34 = sub_1001F6668();
    v35 = sub_1001F72A8();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      sub_100177A4C(&_mh_execute_header, v36, v37, "Failed to persist testing StoreKit 2 key pair due to missing directory.");
      sub_100021754();
    }

    type metadata accessor for OctaneError(0);
    sub_1001779BC();
    v40 = sub_100177974(v38, v39, &unk_10020793C);
    sub_100177A2C(v40);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_10003A380(v25, v32);
  }

  else
  {
    v42 = v44;
    v41 = v45;
    (*(v45 + 32))(v44, v5, v31);
    v43 = v47;
    sub_1001F63F8();
    if (v43)
    {
      (*(v41 + 8))(v42, v31);
    }

    else
    {
      sub_100175670(v30, v29);
      (*(v45 + 8))(v42, v31);
    }

    sub_10003A380(v25, v27);
  }
}

uint64_t sub_10017672C()
{
  v2 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  sub_100056658(v2);
  sub_10001E844();
  __chkstk_darwin(v3);
  v70 = &v63 - v4;
  v75 = sub_1001F6508();
  sub_10001A278();
  v72 = v5;
  __chkstk_darwin(v6);
  sub_100099484();
  v71 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  __chkstk_darwin(v12);
  v78 = &v63 - v13;
  sub_1001F68E8();
  sub_10001A278();
  v73 = v15;
  v74 = v14;
  __chkstk_darwin(v14);
  sub_100023510();
  v18 = v17 - v16;
  v19 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  sub_100056658(v19);
  sub_10001E844();
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v23 = sub_1001F6288();
  sub_10001A278();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100023510();
  v29 = v28 - v27;
  sub_10017552C(v22);
  if (sub_10001C990(v22, 1, v23) != 1)
  {
    (*(v25 + 32))(v29, v22, v23);
    v38 = sub_1001F62C8();
    if (!v1)
    {
      v42 = v39;
      v69 = v0;
      v76 = v38;
      v77 = v39;
      v43 = v38;
      sub_100040C70(v38, v39);
      sub_1001F68A8();
      v68 = v43;
      v64 = sub_100175E34(v11);
      v65 = v42;
      v66 = v18;
      v67 = v44;
      v45 = v72;
      v46 = v75;
      (*(v72 + 32))(v78, v11, v75);
      v47 = v71;
      sub_1001F64F8();
      sub_100177974(&qword_1002AD110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LOBYTE(v43) = sub_1001F6A78();
      v48 = *(v45 + 8);
      v48(v47, v46);
      if (v43)
      {
        sub_10003A380(v68, v65);
        v48(v78, v46);
        v49 = sub_1001779D4();
        v50(v49);
        v51 = v70;
        (*(v73 + 32))(v70, v66, v74);
        sub_1001779E4();
        sub_100018460(v52, v53, v54, v55);
        v56 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
        v57 = v69;
        swift_beginAccess();
        sub_100177714(v51, v57 + v56);
        swift_endAccess();
        v58 = (v57 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
        v59 = v67;
        *v58 = v64;
        v58[1] = v59;
      }

      type metadata accessor for OctaneError(0);
      sub_1001779BC();
      v62 = sub_100177974(v60, v61, &unk_10020793C);
      sub_100177A2C(v62);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003A380(v68, v65);
      v48(v78, v46);
      (*(v73 + 8))(v66, v74);
    }

    v40 = sub_1001779D4();
    return v41(v40);
  }

  sub_10004BDE8(v22, &qword_1002ACE98, &qword_1001FF1A0);
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v30 = sub_1001F6688();
  sub_100019C94(v30, qword_1002E6180);
  v31 = sub_1001F6668();
  v32 = sub_1001F72A8();
  if (os_log_type_enabled(v31, v32))
  {
    *swift_slowAlloc() = 0;
    sub_100177A4C(&_mh_execute_header, v33, v34, "Failed to read testing StoreKit 2 key pair due to missing directory.");
    sub_100021754();
  }

  type metadata accessor for OctaneError(0);
  sub_1001779BC();
  sub_100177974(v35, v36, &unk_10020793C);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_100176F1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1001F68E8();
  sub_10001A278();
  v32 = v4;
  __chkstk_darwin(v5);
  sub_100099484();
  v31[2] = v6 - v7;
  __chkstk_darwin(v8);
  v10 = v31 - v9;
  v11 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  v12 = sub_100056658(v11);
  __chkstk_darwin(v12);
  sub_100099484();
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  v19 = (v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  if (!*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert + 8) || (v20 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey, sub_100047940(), swift_beginAccess(), sub_1001776A4(v1 + v20, v18), LODWORD(v20) = sub_10001C990(v18, 1, v3), result = sub_10004BDE8(v18, &qword_1002B2570, &unk_100208B30), v20 == 1))
  {
    v22 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
    sub_100047940();
    swift_beginAccess();
    sub_1001776A4(v1 + v22, v15);
    if (sub_10001C990(v15, 1, v3) == 1)
    {
      sub_10004BDE8(v15, &qword_1002B2570, &unk_100208B30);
      return sub_10017672C();
    }

    v23 = v32;
    (*(v32 + 32))(v10, v15, v3);
    v24 = sub_100174DCC();
    if (v25 >> 60 == 15)
    {
      (*(v23 + 8))(v10, v3);
      return sub_10017672C();
    }

    v26 = sub_1001779F4(v24, v25);
    v28 = v27;
    sub_10003A36C(v2, v18);
    *v19 = v26;
    v19[1] = v28;

    sub_100175670(v26, v28);
    v29 = sub_100177A18();
    v30(v29);
  }

  return result;
}

uint64_t sub_1001774A4()
{

  sub_10004BDE8(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey, &qword_1002B2570, &unk_100208B30);

  return v0;
}

uint64_t sub_1001774F8()
{
  sub_1001774A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CertificateManager(uint64_t a1)
{
  result = qword_1002B9810;
  if (!qword_1002B9810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001775A4(uint64_t a1)
{
  sub_10017764C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10017764C(uint64_t a1)
{
  if (!qword_1002B9820)
  {
    sub_1001F68E8();
    v1 = sub_1001F74B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1002B9820);
    }
  }
}

uint64_t sub_1001776A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177784(uint64_t a1)
{
  v2 = sub_1001F6058();
  if (v2)
  {
    v3 = v2;
    result = sub_1001F6078();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1001F6068();
  if (!v5)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001777F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1001F77C8();
  if ((v6 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10017788C(void *a1)
{
  v1 = [a1 persistedDataPath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1001F6B58();

  return v3;
}

uint64_t sub_1001778F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1001777F0(a1, a2, a3, a4, *a5, a5[1]);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_100177974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001779F4(uint64_t a1, uint64_t a2)
{

  return sub_1001F63B8(0);
}

uint64_t sub_100177A2C(uint64_t a1)
{

  return swift_allocError();
}

void sub_100177A4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100177A6C(uint64_t a1, uint64_t a2)
{
  result = sub_1000B3348();
  if (result)
  {
    Lock.lock()();
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
    sub_10002D824(a1);
    sub_10002D824(a2);
    sub_10002D83C(v6);
    sub_10002D83C(v7);
    Lock.unlock()();
    sub_10002D83C(a1);

    return sub_10002D83C(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100177B08()
{
  if (sub_1000B3348())
  {
    return *(v0 + 184);
  }

  Lock.lock()();
  v1 = *(v0 + 184);
  Lock.unlock()();

  return v1;
}

BOOL sub_100177B8C()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  return v1 != 4;
}

BOOL sub_100177C00()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  return (v1 & 0xFB) != 0;
}

uint64_t sub_100177C7C()
{
  result = *(v0 + 160);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100177C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v5 + 56) = Lock.init()();
  sub_1000183C4(&qword_1002BA560, &qword_1002142E0);
  swift_bufferAllocate();
  v12 = swift_unknownObjectRetain();
  sub_1000069C8((v12 + 16), 0);
  swift_unknownObjectRelease();
  v13 = swift_dynamicCastClassUnconditional();
  *(v6 + 64) = v13;
  *(v6 + 88) = 0;
  *(v6 + 144) = 4;
  *(v6 + 152) = 256;
  *(v6 + 160) = xmmword_100213830;
  *(v6 + 216) = 0;
  *(v6 + 256) = j_j__malloc;
  *(v6 + 264) = j_j__realloc;
  *(v6 + 272) = j_j__free;
  *(v6 + 280) = sub_10005EC68;
  *(v6 + 176) = 0xF000000000000007;
  *(v6 + 184) = j_j__malloc;
  *(v6 + 192) = j_j__realloc;
  *(v6 + 200) = j_j__free;
  *(v6 + 208) = sub_10005EC68;
  *(v6 + 32) = a1;
  *(v6 + 48) = a4;
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v14 = swift_allocObject();
  *(v14 + 32) = a4;
  *(v14 + 40) = &protocol witness table for SelectableEventLoop;
  *(v14 + 16) = 0;
  *(v14 + 24) = -1;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v6 + 40) = v14;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_100026064(a5, v6 + 104);
  *(v6 + 168) = vdupq_n_s64(0xF000000000000007);
  *(v6 + 224) = a4;
  *(v6 + 232) = &protocol witness table for SelectableEventLoop;
  *(v6 + 240) = v13;
  *(v6 + 248) = 0;
  swift_unknownObjectRetain();

  swift_retain_n();

  v15 = sub_1000B42D4();
  v17 = v16;

  *(v6 + 72) = v15;
  *(v6 + 80) = v17;
  *(v6 + 96) = 0;
  type metadata accessor for ChannelPipeline();
  swift_allocObject();

  v18 = sub_1001DBFE0();

  swift_unknownObjectRelease();
  sub_100019CCC(a5);
  *(v6 + 160) = v18;

  return v6;
}

uint64_t sub_100177EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = v7;
  v9 = v6;
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();

  *(v6 + 56) = Lock.init()();
  sub_1000183C4(&qword_1002BA560, &qword_1002142E0);
  swift_bufferAllocate();
  v15 = swift_unknownObjectRetain();
  sub_1000069C8((v15 + 16), 0);
  swift_unknownObjectRelease();
  sub_10002E0D8();
  *(v6 + 64) = swift_dynamicCastClassUnconditional();
  *(v6 + 88) = 0;
  *(v6 + 144) = 4;
  *(v6 + 152) = 256;
  *(v6 + 160) = xmmword_100213830;
  *(v6 + 216) = 0;
  *(v6 + 256) = j_j__malloc;
  *(v6 + 264) = j_j__realloc;
  *(v6 + 272) = j_j__free;
  *(v6 + 280) = sub_10005EC68;
  *(v6 + 176) = 0xF000000000000007;
  *(v6 + 184) = j_j__malloc;
  *(v6 + 192) = j_j__realloc;
  *(v6 + 200) = j_j__free;
  *(v6 + 208) = sub_10005EC68;
  *(v6 + 32) = a1;
  *(v6 + 48) = a4;
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v16 = swift_allocObject();
  *(v16 + 32) = a4;
  *(v16 + 40) = &protocol witness table for SelectableEventLoop;
  *(v6 + 40) = sub_1000479AC(v16);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_100026064(a5, v6 + 104);
  sub_100180FB8();
  if (!sub_1000E220C())
  {
    swift_unknownObjectRetain();
    swift_retain_n();
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  swift_retain_n();
  sub_10019E704();
  if (v7)
  {

    v8 = 0;
LABEL_5:
    v17 = 0xF000000000000007;
    goto LABEL_6;
  }

  v17 = sub_1000E2678();
LABEL_6:
  sub_100180FB8();
  if (sub_1000E220C())
  {
    sub_10019E670();
    if (!v8)
    {
      v18 = sub_1000E2678();
      goto LABEL_10;
    }
  }

  v18 = 0xF000000000000007;
LABEL_10:
  v19 = *(v6 + 168);
  v20 = *(v6 + 176);
  *(v9 + 168) = v17;
  *(v9 + 176) = v18;
  sub_10002D83C(v19);
  sub_10002D83C(v20);
  v21 = *(v9 + 64);
  *(v9 + 224) = a4;
  *(v9 + 232) = &protocol witness table for SelectableEventLoop;
  *(v9 + 240) = v21;
  *(v9 + 248) = 0;

  v22 = sub_1000E2FC4();
  v24 = v23;

  *(v9 + 72) = v22;
  *(v9 + 80) = v24;
  *(v9 + 96) = 0;
  type metadata accessor for ChannelPipeline();
  v25 = swift_allocObject();

  v27 = a6(v26, v25);

  swift_unknownObjectRelease();
  sub_100019CCC(a5);
  *(v9 + 160) = v27;

  return v9;
}

void *sub_100178244()
{
  swift_unknownObjectRelease();

  sub_100019CCC(v0 + 13);

  v1 = v0[22];
  sub_10002D83C(v0[21]);
  sub_10002D83C(v1);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1001782D8()
{
  sub_10002E27C();
  v1 = (*(v0 + 584))();
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  v3 = 1;
  if ((v1 & 1) == 0)
  {
    v3 = 2;
  }

  sub_10002E020(v2, v3);
  return swift_willThrow();
}

unint64_t sub_100178358(uint64_t (*a1)(void, _BYTE *, _BYTE *))
{
  sub_10002E27C();
  if (((*(v4 + 584))() & 1) == 0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_100180F60(v7, v8);
    return swift_willThrow();
  }

  v5 = *(v1 + 32);
  sub_100180FB8();
  if (!sub_1000E220C())
  {
    sub_100077354();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100180F48(v9, v10);
    return swift_willThrow();
  }

  result = a1(*(v5 + 16), v12, v11);
  if (!v2)
  {
    return sub_1000E2678();
  }

  return result;
}

uint64_t sub_10017848C(char a1, char a2)
{
  v4 = sub_1000B6F64();
  v5 = v4;
  v7 = v6;
  if (a1)
  {
    v8 = sub_1001782D8();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10002D824(v4);
    v8 = v5;
    if (a2)
    {
LABEL_3:
      v9 = sub_1001782D8();
      goto LABEL_6;
    }
  }

  sub_10002D824(v7);
  v9 = v7;
LABEL_6:
  sub_10002D824(v8);
  sub_10002D824(v9);
  v10 = sub_1000377A8();
  sub_100177A6C(v10, v11);
  v12 = sub_1001814C4();

  return sub_10002D83C(v12);
}

uint64_t sub_10017856C(char a1, char a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    v9 = sub_100178358(sub_10019E704);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10002D824(v5);
    v9 = v6;
    if (a2)
    {
LABEL_3:
      v10 = sub_100178358(sub_10019E670);
      goto LABEL_6;
    }
  }

  sub_10002D824(v8);
  v10 = v8;
LABEL_6:
  sub_10002D824(v9);
  sub_10002D824(v10);
  v11 = sub_1000377A8();
  sub_100177A6C(v11, v12);
  v13 = sub_1001814C4();

  return sub_10002D83C(v13);
}

uint64_t sub_10017867C(unsigned __int8 a1)
{
  sub_10002E27C();
  result = (*(v3 + 584))();
  if ((result & 1) != 0 && *(v1 + 216) != a1)
  {
    *(v1 + 216) = a1;
    return sub_100179C08();
  }

  return result;
}

uint64_t sub_1001787CC()
{
  if ((*(v0 + 216) & 8) != 0)
  {
    return sub_10017867C(*(v0 + 216) & 0xF7);
  }

  return result;
}

uint64_t sub_1001787F0()
{
  if ((*(v0 + 216) & 4) != 0)
  {
    return sub_10017867C(*(v0 + 216) & 0xFB);
  }

  return result;
}

uint64_t sub_100178814()
{
  sub_100047940();
  result = swift_beginAccess();
  if ((*(v0 + 248) & 1) == 0 && (*(v0 + 216) & 2) == 0)
  {
    return sub_10017867C(*(v0 + 216) | 2u);
  }

  return result;
}

uint64_t sub_100178858(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_10002E27C();
  result = (*(v8 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    v12 = swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0(v12);
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    v12 = swift_allocError();
    sub_10002E020(v14, 1);
    goto LABEL_8;
  }

  *(v3 + 216) = 1;
  sub_100179840();
  v15 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000568C0(v10);
  swift_beginAccess();
  v16 = *(v4 + 232);
  swift_getObjectType();
  sub_10002E0AC();
  sub_1001814AC();
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC();
      v17 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC();
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v17 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x100178D28);
    default:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC();
      v17 = sub_100028500;
      break;
  }

  v26 = v17;
  swift_endAccess();
  v18 = v4;
  (*(*v4 + 672))(a1);
  v19 = 0;
  a1 = v15[2];
  v20 = v15 + 5;
  while (a1 != v19)
  {
    v21 = v15[2];
    if (v19 >= v21)
    {
      __break(1u);
      sub_10018133C(v21);
      v15 = v25;

      v15[2] = v16;
      v11 = &v15[2 * v19];
      v11[4] = sub_100180EA0;
      v11[5] = v18;
      goto LABEL_11;
    }

    ++v19;
    v22 = *(v20 - 1);
    v16 = *v20;
    v27[0] = sub_100177C7C();

    v18 = v16;
    v22(v27);

    v20 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    v23 = sub_1001811C0();
    sub_1000A13B0(v23);
  }

  v24 = sub_100177C7C();
  v26(a3, v24);

  SelectableEventLoop.execute(_:)(sub_100180DEC, v4);
}

uint64_t sub_100178D3C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = (*(*v3 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    v10 = swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0(v10);
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    v10 = swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 3;
    goto LABEL_8;
  }

  v3[216] = 1;
  sub_100179840();
  v13 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000E21B0();
  swift_beginAccess();
  v14 = *(v4 + 232);
  swift_getObjectType();
  debugOnly(_:)();
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      v15 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v15 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x100179290);
    default:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      v15 = sub_100028500;
      break;
  }

  v24 = v15;
  swift_endAccess();
  v23 = a1;
  v16 = v4;
  (*(*v4 + 672))(a1);
  v17 = 0;
  a1 = v13[2];
  v18 = v13 + 5;
  while (a1 != v17)
  {
    v19 = v13[2];
    if (v17 >= v19)
    {
      __break(1u);
      sub_100032AD0(v19 > 1, v14, 1, v13);
      v13 = v22;

      v13[2] = v14;
      v9 = &v13[2 * v17];
      v9[4] = sub_10002DBA8;
      v9[5] = v16;
      goto LABEL_11;
    }

    ++v17;
    v20 = *(v18 - 1);
    v14 = *v18;
    v25[0] = sub_100177C7C();

    v16 = v14;
    v20(v25);

    v18 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    sub_1000A13B0(v23);
  }

  v21 = sub_100177C7C();
  v24(a3, v21);

  SelectableEventLoop.execute(_:)(sub_100180E68, v4);
}

uint64_t sub_1001792A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = (*(*v3 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    v10 = swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0(v10);
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    v10 = swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 3;
    goto LABEL_8;
  }

  v3[216] = 1;
  sub_100179840();
  v13 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000B4600();
  swift_beginAccess();
  v14 = *(v4 + 232);
  swift_getObjectType();
  debugOnly(_:)();
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      v15 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v15 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x1001797F8);
    default:
      *(v4 + 249) = 4;
      debugOnly(_:)();
      v15 = sub_100028500;
      break;
  }

  v24 = v15;
  swift_endAccess();
  v23 = a1;
  v16 = v4;
  (*(*v4 + 672))(a1);
  v17 = 0;
  a1 = v13[2];
  v18 = v13 + 5;
  while (a1 != v17)
  {
    v19 = v13[2];
    if (v17 >= v19)
    {
      __break(1u);
      sub_100032AD0(v19 > 1, v14, 1, v13);
      v13 = v22;

      v13[2] = v14;
      v9 = &v13[2 * v17];
      v9[4] = sub_100180EA0;
      v9[5] = v16;
      goto LABEL_11;
    }

    ++v17;
    v20 = *(v18 - 1);
    v14 = *v18;
    v25[0] = sub_100177C7C();

    v16 = v14;
    v20(v25);

    v18 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    sub_1000A13B0(v23);
  }

  v21 = sub_100177C7C();
  v24(a3, v21);

  SelectableEventLoop.execute(_:)(sub_100180E68, v4);
}

void sub_10017980C(uint64_t a1, unsigned __int8 a2)
{
  if (!*(v2 + 88))
  {
    sub_1000B66EC(*(v2 + 16), a2);
  }
}

void sub_100179840()
{
  if (!*(v0 + 88))
  {
    v1 = sub_1001810D4();
    (*(v2 + 848))(v1);
  }
}

uint64_t sub_100179890()
{
  sub_100177C7C();
  sub_10009AF34();

  v0 = sub_10002E2C0();
  sub_1000A13B0(v0);
  return sub_100177A6C(0xF000000000000007, 0xF000000000000007);
}

void sub_1001798FC()
{
  sub_100179C54(1);
  if (!v1)
  {
    swift_beginAccess();
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();
    if (*(v0 + 249) == 1)
    {
      *(v0 + 249) = 2;
      sub_10018103C();
      debugOnly(_:)();
      sub_100177C7C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001799C8(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  v3 = *(v1 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  if (v3 <= 4 && ((1 << v3) & 0x13) != 0)
  {
    sub_1001798FC();
  }

  sub_100047924();
  swift_beginAccess();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  if (*(v1 + 249) == 2)
  {
    *(v1 + 249) = 3;
    sub_10018103C();
    debugOnly(_:)();
    sub_1000069C8((*(v1 + 240) + 16), 1);
    swift_endAccess();
    sub_100177C7C();
    if (a1)
    {
      v5 = sub_10002E2C0();
      sub_1000A13B0(v5);
    }

    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E060();
    }

    v6 = *(v1 + 249);
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();
    if (v6 != 4)
    {
      v7 = sub_100178814();
      (*(*v1 + 720))(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100179C54(char a1)
{
  sub_10002E27C();
  if ((*(v4 + 584))())
  {
    v1[216] = a1;
    result = sub_100179D98();
    if (!v2)
    {
      return result;
    }

    sub_100177C7C();
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E508();
    }

    (*(*v1 + 760))(v2, 2, 0);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v6 = swift_allocError();
    sub_100180F60(v6, v7);
  }

  return swift_willThrow();
}

uint64_t sub_100179D98()
{
  if (*(v0 + 88))
  {
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  else
  {
    v3 = sub_1001810D4();
    return (*(v4 + 840))(v3, *(v5 + 216));
  }
}

uint64_t sub_100179E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v8 = swift_allocObject();
  *(v8 + 32) = v4;
  *(v8 + 40) = &protocol witness table for SelectableEventLoop;
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  type metadata accessor for ScheduledTask();
  swift_allocObject();
  v10 = ScheduledTask.init(_:_:_:)(sub_100180CB4, v9, sub_10002D85C, v8, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100046A8C;
  *(v12 + 24) = v11;
  swift_retain_n();
  swift_retain_n();

  sub_10011DD5C();

  SelectableEventLoop._schedule0(_:)(v10);

  return v8;
}

uint64_t sub_10017A03C(uint64_t a1, void (*a2)(void))
{
  a2();

  return sub_1000A13B0(0);
}

uint64_t sub_10017A0E4(uint64_t (*a1)(void))
{
  if (sub_1000E220C())
  {
    return a1(*(v1 + 16));
  }

  sub_100077354();
  sub_10002E0D8();
  v4 = swift_allocError();
  sub_100180F48(v4, v5);
  return swift_willThrow();
}

uint64_t sub_10017A17C(void (*a1)(uint64_t *__return_ptr, void))
{
  if (sub_1000E220C())
  {
    a1(&v8, *(v1 + 16));
    if (!v2)
    {
      v4 = v8;
    }
  }

  else
  {
    sub_100077354();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_100180F48(v5, v6);
    swift_willThrow();
  }

  return v4 & 1;
}

uint64_t sub_10017A21C(uint64_t result, int a2, int a3)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v3)
      {
      }

      else
      {
        v5 = sub_1000E2678();

        if ((v5 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result);
  return sub_10017A0E4(sub_100180A9C);
}

uint64_t sub_10017A364(uint64_t result, int a2, uint64_t a3)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v3)
      {
      }

      else
      {
        v5 = sub_1000E2678();

        if ((v5 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result);
  return sub_10017A0E4(sub_10018082C);
}

uint64_t sub_10017A4B4(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v5)
      {
      }

      else
      {
        v7 = sub_1000E2678();

        if ((v7 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result);
  return sub_10017A0E4(sub_10018084C);
}

void sub_10017A608(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(38);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000023;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_1001811A0();
    sub_10017B204(sub_100180D48);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017A6E8(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(38);
    sub_100181248();
    sub_100181134();
    v8._countAndFlagsBits = 0xD000000000000023;
    sub_1001F6CA8(v8);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_1001811A0();
    sub_10017A0E4(v7);
    sub_10018127C();
  }

  sub_100181254();
}

uint64_t sub_10017A7B8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t))
{
  result = sub_10017BF9C(a3, a4, 256, *(a2 + 32));
  if (!v5)
  {
    ++*(a2 + 32);
    a5(&v23, a4);
    v11 = a1;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    swift_beginAccess();
    Scheduled.futureResult.getter(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E5DDC(v12, v13 | (v14 << 8) | (v15 << 32), v11, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, *(a2 + 24), v22);
    *(a2 + 24) = v21;
    swift_endAccess();
    return j__swift_release(v12);
  }

  return result;
}

uint64_t sub_10017A8C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t))
{
  result = sub_10017C0A4(a3, a4, 256, *(a2 + 32));
  if (!v5)
  {
    ++*(a2 + 32);
    a5(&v23, a4);
    v11 = a1;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    sub_100047924();
    swift_beginAccess();
    Scheduled.futureResult.getter(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E5DDC(v12, v13 | (v14 << 8) | (v15 << 32), v11, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, *(a2 + 24), v22);
    *(a2 + 24) = v21;
    swift_endAccess();
    return j__swift_release(v12);
  }

  return result;
}

void sub_10017A9D0(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(41);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000026;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_100181220();
    sub_10017B204(sub_100180D0C);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017AAB0(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(41);
    sub_100181248();
    sub_100181134();
    v8._countAndFlagsBits = 0xD000000000000026;
    sub_1001F6CA8(v8);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_100181220();
    sub_10017A0E4(v7);
    sub_10018127C();
  }

  sub_100181254();
}

uint64_t sub_10017AB80(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = a1;
  swift_beginAccess();
  result = sub_1001F1150(v8, *(a2 + 24));
  v11 = result;
  v12 = v10;
  if ((~result & 0xF000000000000007) == 0 && (v10 & 0xFE) == 0xFE)
  {
    __break(1u);
  }

  else
  {
    sub_10017BF9C(a3, v5, BYTE1(v10), HIDWORD(v10));
    if (!v4)
    {
      swift_beginAccess();
      sub_100180934(v11, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001E5DDC(v11, v12 & 0xFFFFFFFF000000FFLL | (v5 << 8), v8, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v18, *(a2 + 24));
      *(a2 + 24) = v19;
      swift_endAccess();
    }

    return sub_100180914(v11, v12);
  }

  return result;
}

void sub_10017ACA4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v10 = a1;
  sub_100047940();
  swift_beginAccess();
  sub_1001F1150(v10, *(a2 + 24));
  sub_1001813A4();
  if ((~v11 & 0xF000000000000007) == 0 && (v6 & 0xFE) == 0xFE)
  {
    __break(1u);
  }

  else
  {
    sub_10017C0A4(a3, v7, BYTE1(v6), HIDWORD(v6));
    if (!v4)
    {
      swift_beginAccess();
      v12 = sub_1000377A8();
      sub_100180934(v12, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001E5DDC(v5, v6 & 0xFFFFFFFF000000FFLL | (v7 << 8), v10, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v21, *(a2 + 24));
      *(a2 + 24) = v22;
      swift_endAccess();
    }

    v19 = sub_1000377A8();
    sub_100180914(v19, v20);
  }
}

void sub_10017ADB8(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(42);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000027;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_10017B204(sub_100180D2C);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017AEA4(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(42);
    sub_100181248();
    sub_100181134();
    v8._countAndFlagsBits = 0xD000000000000027;
    sub_1001F6CA8(v8);
    sub_10018123C();
    sub_100181324(v2, v3, &unk_100283F28, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F94(v4, v5);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v6);
    sub_10017A0E4(v7);
    sub_10018127C();
  }

  sub_100181254();
}

uint64_t sub_10017AF84(int a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_beginAccess();
  v6 = sub_100111164(v5);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + 24);
  v10 = *(v15 + 24);
  sub_1000183C4(&qword_1002BA558, &qword_10021B430);
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(v15 + 56) + 16 * v8;
  v12 = *v11;
  LOWORD(v10) = *(v11 + 9);
  v13 = *(v11 + 12);
  sub_1001F7AB8();
  *(a2 + 24) = v15;
  swift_endAccess();
  sub_10017BF9C(a3, 1, v10, v13);
  return j__swift_release(v12);
}

uint64_t sub_10017B0C8(int a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_100047924();
  swift_beginAccess();
  v6 = sub_100111164(v5);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + 24);
  v10 = *(v15 + 24);
  sub_1000183C4(&qword_1002BA558, &qword_10021B430);
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(v15 + 56) + 16 * v8;
  v12 = *v11;
  LOWORD(v10) = *(v11 + 9);
  v13 = *(v11 + 12);
  sub_1001F7AB8();
  *(a2 + 24) = v15;
  swift_endAccess();
  sub_10017C0A4(a3, 1, v10, v13);
  return j__swift_release(v12);
}

uint64_t sub_10017B204(uint64_t (*a1)(void))
{
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    return a1(*(v1 + 20));
  }

  sub_1000274C4();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000100224AB0;
  *(v4 + 16) = 9;
  return swift_willThrow();
}

uint64_t sub_10017B2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  *(v5 + 296) = 0;
  *(v5 + 298) = 0;
  v11 = a4[14];
  v12 = a4[15];
  v13 = a4[16];
  v14 = a4[17];
  type metadata accessor for PendingStreamWritesManager();
  swift_allocObject();
  *(v6 + 304) = sub_1001CC6D0(v11, v12, v13, v14);
  *(v6 + 288) = 0;
  sub_100026064(a5, v18);
  v15 = sub_100177EF0(a1, a2, a3, a4, v18, sub_1001DBFE0);
  sub_100019CCC(a5);
  return v15;
}

uint64_t sub_10017B3D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  *(v5 + 296) = 0;
  *(v5 + 298) = 0;
  v11 = a4[14];
  v12 = a4[15];
  v13 = a4[16];
  v14 = a4[17];
  type metadata accessor for PendingStreamWritesManager();
  swift_allocObject();
  *(v6 + 304) = sub_1001CC6D0(v11, v12, v13, v14);
  *(v6 + 288) = 0;
  sub_100026064(a5, v18);
  v15 = sub_100177C8C(a1, a2, a3, a4, v18);
  sub_100019CCC(a5);
  return v15;
}

void sub_10017B4EC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      NIOFileHandle.close()();
      if (!v2)
      {
        *(v1 + 297) = 1;
      }
    }
  }

  else
  {
    NIOFileHandle.close()();
    if (!v3)
    {
      *(v1 + 298) = 1;
    }
  }
}

void sub_10017B550(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      sub_100076FB0(0);
      if (!v2)
      {
        *(v1 + 297) = 1;
      }
    }
  }

  else
  {
    sub_100076FB0(1);
    if (!v2)
    {
      *(v1 + 298) = 1;
    }
  }
}

void *sub_10017B5C0()
{
  v0 = sub_100178244();

  return v0;
}

void sub_10017B5F8()
{
  sub_1001813D0();
  if (v14)
  {
    if (*(v2 + 298))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 4;
        goto LABEL_9;
      }

LABEL_37:
      sub_1001814F0();
      return;
    }

    sub_100181398();
    sub_10017B550(v16);
    if (!v1)
    {
      sub_1001CBB4C(v3, 0);
      sub_1001787CC();
      if (v0)
      {
        v18 = sub_10002E2C0();
        sub_1000A13B0(v18);
      }

      sub_100181458();
      v22 = &type metadata for ChannelEvent;
      LOBYTE(v20) = 1;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v4 == 1)
  {
    if (*(v2 + 297))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 5;
LABEL_9:
        sub_10002E020(v5, v6);
        swift_errorRetain();
        sub_10002E17C();

        sub_1001814F0();

        return;
      }

      goto LABEL_37;
    }

    v23 = v3;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {
      v14 = v21 == 3 && v20 == 6;
      if (v14)
      {
        *(v2 + 297) = 1;

LABEL_33:
        sub_1001787F0();
        if (v0)
        {
          v19 = sub_10002E2C0();
          sub_1000A13B0(v19);
        }

        sub_100181458();
        v22 = &type metadata for ChannelEvent;
        LOBYTE(v20) = 0;
LABEL_36:
        ChannelPipeline.fireUserInboundEventTriggered(_:)();

        sub_100019CCC(&v20);
        goto LABEL_37;
      }

      sub_100073868(v20, v21);
    }

    sub_100181398();
    sub_10017B550(v15);
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v0)
    {
      swift_errorRetain();
      v17 = sub_1001811C0();
      sub_1000A13B0(v17);
    }

    goto LABEL_37;
  }

  if (*(v2 + 288))
  {
    *(v2 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v8 = 1;
    swift_errorRetain();
    v9 = sub_1001811C0();
    sub_1000A13B0(v9);
  }

  sub_1001814F0();

  sub_100178D3C(v10, v11, v12);
}

void sub_10017B8A0()
{
  sub_1001813D0();
  if (v14)
  {
    if (*(v2 + 298))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 4;
        goto LABEL_9;
      }

LABEL_37:
      sub_1001814F0();
      return;
    }

    sub_100181398();
    v16();
    if (!v1)
    {
      sub_1001CBB4C(v3, 0);
      sub_1001787CC();
      if (v0)
      {
        v18 = sub_10002E2C0();
        sub_1000A13B0(v18);
      }

      sub_100181458();
      v22 = &type metadata for ChannelEvent;
      LOBYTE(v20) = 1;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v4 == 1)
  {
    if (*(v2 + 297))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 5;
LABEL_9:
        sub_10002E020(v5, v6);
        swift_errorRetain();
        sub_10002E17C();

        sub_1001814F0();

        return;
      }

      goto LABEL_37;
    }

    v23 = v3;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {
      v14 = v21 == 3 && v20 == 6;
      if (v14)
      {
        *(v2 + 297) = 1;

LABEL_33:
        sub_1001787F0();
        if (v0)
        {
          v19 = sub_10002E2C0();
          sub_1000A13B0(v19);
        }

        sub_100181458();
        v22 = &type metadata for ChannelEvent;
        LOBYTE(v20) = 0;
LABEL_36:
        ChannelPipeline.fireUserInboundEventTriggered(_:)();

        sub_100019CCC(&v20);
        goto LABEL_37;
      }

      sub_100073868(v20, v21);
    }

    sub_100181398();
    v15();
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v0)
    {
      swift_errorRetain();
      v17 = sub_1001811C0();
      sub_1000A13B0(v17);
    }

    goto LABEL_37;
  }

  if (*(v2 + 288))
  {
    *(v2 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v8 = 1;
    swift_errorRetain();
    v9 = sub_1001811C0();
    sub_1000A13B0(v9);
  }

  sub_1001814F0();

  sub_1001792A4(v10, v11, v12);
}

void sub_10017BBFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = a4;
  sub_10019EA44(a1, a5, a6, v6, 0x14u);
}

uint64_t sub_10017BCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 8;
  v7 = swift_slowAlloc();
  *v7 = 0;
  sub_10019E798(a1, a2, a3, v7, &v9);
  if (!v3)
  {
    a3 = *v7;
  }

  return a3;
}

uint64_t sub_10017BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 4;
  v7 = swift_slowAlloc();
  *v7 = 0;
  sub_10019E798(a1, a2, a3, v7, &v9);
  if (!v3)
  {
    a3 = *v7;
  }

  sub_100021754();

  return a3;
}

kevent *sub_10017BE7C(kevent *changelist, unint64_t nchanges)
{
  if (nchanges < 1)
  {
    return changelist;
  }

  if (!changelist)
  {
LABEL_12:
    __break(1u);
    return changelist;
  }

  if (nchanges >> 31)
  {
    __break(1u);
    goto LABEL_12;
  }

  changelist = sub_10019F158(*(v2 + 56), changelist, nchanges, 0, 0, 0);
  if (v3)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {

      if (v7 == 4)
      {
      }

      sub_1000274C4();
      sub_10002E0D8();
      swift_allocError();
      *v4 = v5;
      *(v4 + 8) = v6;
      *(v4 + 16) = v7;
      swift_willThrow();
    }
  }

  return changelist;
}

uint64_t sub_10017BF9C(uint64_t a1, char a2, __int16 a3, uint64_t a4)
{
  v4 = a4;
  if ((a3 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_100147A34(v7);
  v9 = sub_100147A34(a2);
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v10 = *(a1 + 20);

    sub_10017C18C(v10, v9, v8, v4);
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v12 = 0xD00000000000001FLL;
    *(v12 + 8) = 0x8000000100224AB0;
    *(v12 + 16) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_10017C0A4(uint64_t a1, char a2, __int16 a3, uint64_t a4)
{
  v4 = a4;
  if ((a3 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_100147A34(v7);
  v9 = sub_100147A34(a2);
  if (sub_1000E220C())
  {
    v10 = *(a1 + 16);

    sub_10017C18C(v10, v9, v8, v4);
  }

  else
  {
    sub_1000274C4();
    sub_10002E0D8();
    swift_allocError();
    *v12 = 0xD00000000000001FLL;
    *(v12 + 8) = 0x8000000100224AB0;
    *(v12 + 16) = 9;
    return swift_willThrow();
  }
}

kevent *sub_10017C18C(unsigned int a1, int a2, int a3, unsigned int a4)
{
  v19 = 0u;
  v20 = 0u;
  v4 = a2;
  v17 = 0u;
  v18 = 0u;
  v5 = a3 ^ a2;
  memset(&v16, 0, sizeof(v16));
  if (((a3 ^ a2) & 4) == 0)
  {
    if (((a3 ^ a2) & 8) == 0)
    {
      v6 = 0;
      if ((v5 & 2) != 0)
      {
        if ((v4 & 2) != 0)
        {
          v7 = 1;
          goto LABEL_23;
        }

LABEL_22:
        v7 = 2;
LABEL_23:
        if ((a1 & 0x80000000) == 0)
        {
          v9 = a1;
          v10 = a4;
LABEL_26:
          v14 = &v16 + v6;
          v14->ident = v9;
          v14->filter = -15;
          v14->flags = v7;
          v14->fflags = 1;
          v14->data = 0x7FFFFFFFFFFFFFFFLL;
          v14->udata = v10;
          return sub_10017BE7C(&v16, ++v6);
        }

LABEL_30:
        __break(1u);
      }

      return sub_10017BE7C(&v16, v6);
    }

    v11 = 0;
    if ((a2 & 8) != 0)
    {
      v12 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v12 = 2;
LABEL_18:
    if ((a1 & 0x80000000) == 0)
    {
      v9 = a1;
      v10 = a4;
LABEL_20:
      v13 = &v16 + v11;
      v13->ident = v9;
      v13->filter = -2;
      v13->flags = v12;
      v13->fflags = 0;
      v13->data = 0;
      v13->udata = v10;
      v6 = v11 + 1;
      if ((v5 & 2) != 0)
      {
        if ((v4 & 2) != 0)
        {
          v7 = 1;
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      return sub_10017BE7C(&v16, v6);
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 4) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = a1;
  v16.ident = a1;
  v16.filter = -1;
  v16.flags = v8;
  v10 = a4;
  v16.data = 0;
  v16.udata = a4;
  if (((a3 ^ a2) & 8) != 0)
  {
    v11 = 1;
    v12 = 1;
    if ((a2 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v6 = 1;
  if ((v5 & 2) != 0)
  {
    v7 = 1;
    if ((v4 & 2) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  return sub_10017BE7C(&v16, v6);
}

uint64_t sub_10017C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServerSocket();
  swift_allocObject();
  v8 = sub_1001810C0();
  v10 = sub_100056768(v8, v9);
  if (!v4)
  {
    v11 = v10;
    swift_allocObject();

    swift_unknownObjectRetain();
    a4 = sub_10017CF00(v11, a2, a3, a4, v12, v13, v14, v15);
    v16 = *(a4 + 288);

    sub_100056824(v16);
  }

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_10017C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ServerSocket();
  swift_allocObject();
  v7 = sub_1001810C0();
  v9 = sub_1000566C8(v7, v8);
  if (v3)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = v9;
    v12 = swift_allocObject();
    return sub_10017CF00(v11, a1, a2, a3, v12, v13, v14, v15);
  }
}

uint64_t sub_10017C514(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Socket();
  v6 = sub_100181360(v5);
  v7 = a2;
  v8 = v6;
  sub_1000E2024(v7);
  if (!v2)
  {
    swift_allocObject();

    sub_10012F1C4();
    v8 = sub_10017E1D0(v9, v10, v11, a1);
  }

  return v8;
}

uint64_t sub_10017C60C()
{
  sub_100181204();
  v2 = sub_1001813E4();
  sub_100181360(v2);
  v3 = sub_100076738(v0, 1, 1);
  if (v1)
  {

    return sub_100181404();
  }

  else
  {
    sub_1001810A0(v3, v4, v5, v6, v7, v8, v9, v10, v30, v33, v35, v37, v38, v39);
    v12 = sub_100181424(&unk_1002909A8);
    sub_100180F78(v12, v13, v14, v15, v16, v17, v18, v19, v20, v31, v34, v36, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v21, v39, v40);
    return sub_1001811CC(v22, v23, v24, v25, v26, v27, v28, v29, v32);
  }
}

uint64_t sub_10017C6DC()
{
  sub_100181204();
  v1 = sub_1001813E4();
  sub_100181360(v1);
  v2 = sub_1001810C0();
  v4 = sub_1000767D8(v2, v3);
  if (v0)
  {

    return sub_100181404();
  }

  else
  {
    sub_1001810A0(v4, v5, v6, v7, v8, v9, v10, v11, v31, v34, v36, v38, v39, v40);
    v13 = sub_100181424(&unk_1002909A8);
    sub_100180F78(v13, v14, v15, v16, v17, v18, v19, v20, v21, v32, v35, v37, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v22, v40, v41);
    return sub_1001811CC(v23, v24, v25, v26, v27, v28, v29, v30, v33);
  }
}

uint64_t sub_10017C79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = 0;
  *(v8 + 320) = 1;
  sub_1001810A0(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29);
  v13 = sub_100181424(&unk_1002909A8);
  sub_100180F78(v13, v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v22, v29, v30);
  return sub_10017B2D8(a1, a2, a3, a4, &v24);
}

void sub_10017C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100181194();
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v8);
  sub_10002DFFC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100023510();
  if (sub_100181474())
  {
    v12 = (*(v10 + 16))(v5, a1, a3);
    if (sub_10018104C(v12, v13, v14, &type metadata for ChannelOptions.Types.ConnectTimeoutOption))
    {
      v15 = sub_1001813B0();
      v16(v15);
      v17 = swift_dynamicCast();
      v18 = v25;
      if (!v17)
      {
        v18 = 0;
      }

      *(v4 + 312) = v18;
      *(v4 + 320) = v17 ^ 1;
    }

    else
    {
      sub_1001B5294(a1, a2, a3, a4);
    }

    v21 = sub_10007B9BC();
    v22(v21);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v19 = swift_allocError();
    sub_100180F60(v19, v20);
    swift_willThrow();
  }

  sub_1001813C4();
}

void sub_10017CA24()
{
  sub_10002DFFC();
  __chkstk_darwin(v2);
  sub_100023510();
  if (sub_100181474())
  {
    v3 = sub_100181288();
    v5 = v4(v3);
    if (sub_10018104C(v5, v6, v7, &type metadata for ChannelOptions.Types.ConnectTimeoutOption))
    {
      sub_1000183C4(&qword_1002BA568, &qword_1002139B8);
      sub_100181194();
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    else
    {
      v10 = sub_1001812A0();
      sub_1001B5574(v10, v11);
    }

    v12 = sub_10007B9BC();
    v13(v12);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v8 = swift_allocError();
    sub_100180F60(v8, v9);
    swift_willThrow();
  }

  sub_1001813C4();
}

uint64_t sub_10017CB98(unint64_t a1)
{
  v3 = v1;
  v4 = (v2 != 0) | sub_100076870(a1);
  if ((v4 & 1) == 0 && (*(v1 + 320) & 1) == 0)
  {
    v5 = *(v1 + 312);
    sub_10004794C();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;

    v7 = static NIODeadline.now()();
    v8 = static NIODeadline.+ infix(_:_:)(v7, v5);
    v9 = sub_100179E24(v8, sub_100180C58, v6);

    *(v3 + 288) = v9;
  }

  return v4 & 1;
}

uint64_t sub_10017CC5C(uint64_t result, uint64_t a2)
{
  if (*(result + 96))
  {
    sub_10002D678();
    swift_allocError();
    *v3 = a2;
    *(v3 + 8) = 0;
    sub_10017B5F8();
  }

  return result;
}

uint64_t sub_10017CCD4(uint64_t a1)
{
  if (*(v1 + 288))
  {
    *(v1 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    v2 = swift_allocError();
    *v3 = 1;
    swift_errorRetain();
    sub_1000A13B0(v2);
  }

  return sub_100076B3C(a1);
}

uint64_t sub_10017CE6C()
{
  sub_10017B5C0();

  return swift_deallocClassInstance();
}

uint64_t sub_10017CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = 128;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  sub_1001810A0(a1, a2, a3, a4, a5, a6, a7, a8, v26, v28, v30, v32, v33, v34);
  v10 = sub_100181424(&unk_1002909A8);
  sub_100180F78(v10, v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v19, v34, v35);
  sub_10012F1C4();
  return sub_100177EF0(v20, v21, v22, a2, v23, v24);
}

void sub_10017CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v7);
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100023510();
  v13 = v12 - v11;
  if (sub_100177B8C())
  {
    (*(v9 + 16))(v13, a1, a3);
    if (swift_dynamicCast())
    {
      v14 = sub_1001813B0();
      v15(v14);
      swift_dynamicCast();
      *(v4 + 288) = v20;
    }

    else
    {
      sub_100029D04(a1, a2, a3, a4);
    }

    (*(v9 + 8))(v13, a3);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v16 = swift_allocError();
    sub_100180F60(v16, v17);
    swift_willThrow();
  }

  sub_1001813C4();
}

void sub_10017D194()
{
  sub_10002DFFC();
  __chkstk_darwin(v2);
  sub_100023510();
  if (sub_100181474())
  {
    v3 = sub_100181288();
    v5 = v4(v3);
    if (sub_10018104C(v5, v6, v7, &type metadata for ChannelOptions.Types.BacklogOption))
    {
      sub_100181194();
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    else
    {
      v10 = sub_1001812A0();
      sub_10002A5F0(v10, v11);
    }

    v12 = sub_10007B9BC();
    v13(v12);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v8 = swift_allocError();
    sub_100180F60(v8, v9);
    swift_willThrow();
  }

  sub_1001813C4();
}

uint64_t sub_10017D2E8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_100177B8C();
  if ((result & 1) == 0)
  {
    if (!a2)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v12 = 2;
    goto LABEL_8;
  }

  result = sub_100177C00();
  if (result)
  {
    v7 = *(v2 + 48);
    sub_1000183C4(&qword_1002ADC18, &qword_100200960);
    v8 = swift_allocObject();
    *(v8 + 32) = v7;
    *(v8 + 40) = &protocol witness table for SelectableEventLoop;
    sub_1000479AC(v8);
    sub_10004794C();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = a2;
    sub_10004794C();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100180B54;
    *(v10 + 24) = v9;

    sub_10019F6C8();

    sub_10012F3D4();
    *(swift_allocObject() + 16) = a2;

    sub_10011DD5C();

    sub_1000E2600(a1);
    sub_10017856C(1, 0, sub_1000B6F64);
    sub_100056824(*(v3 + 288));
    v13 = sub_10002E2C0();
    sub_1000A13B0(v13);
  }

  if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v12 = 12;
LABEL_8:
    sub_10002E020(v11, v12);
    swift_errorRetain();
    sub_10002E17C();
  }

  return result;
}

uint64_t sub_10017D5B4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    swift_errorRetain();
    sub_1000A13B0(v2);
  }

  return result;
}

void sub_10017D608()
{
  v2 = *(v0 + 144);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v1;
  v4 = v0;
  v5 = 1;
  while (1)
  {
    if (!sub_100177B8C())
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      sub_10002E020(v24, 6);
LABEL_18:
      swift_willThrow();
      return;
    }

    if (!sub_1000E220C())
    {
      sub_100077354();
      sub_10002E0D8();
      v25 = swift_allocError();
      sub_100180F48(v25, v26);
      goto LABEL_18;
    }

    sub_10012F1C4();
    sub_10019E394(v6, v7, v8);
    if (v3)
    {
      return;
    }

    v10 = v9;
    if ((v9 & 0x100000000) != 0)
    {
      return;
    }

    v11 = type metadata accessor for Socket();
    sub_100181360(v11);
    v12 = sub_1000E2024(v10);
    if (!sub_1000E220C())
    {
      break;
    }

    sub_10019EEBC(*(v12 + 16));
    *(v4 + 88) = 0;
    v13 = *(v4 + 304);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);

    v16 = v15(ObjectType, v13);
    if (object_getClass(v16) != _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v17 = type metadata accessor for SocketChannel(0);
    swift_allocObject();

    v22 = sub_10017C79C(v12, v4, &off_10027FE88, v16, v18, v19, v20, v21);
    sub_100177C7C();
    v29[3] = v17;
    v29[0] = v22;
    v30 = 2;
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {

      sub_10009E13C();
    }

    sub_100034310(v29);
    if (v2 == v5)
    {
      return;
    }

    if (__CFADD__(v5++, 1))
    {
      __break(1u);
      return;
    }
  }

  sub_100077354();
  sub_10002E0D8();
  v27 = swift_allocError();
  sub_100180F48(v27, v28);
  swift_willThrow();
  sub_1000E21B0();
  swift_willThrow();
}

uint64_t sub_10017D900(uint64_t a1)
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast())
  {
    v1 = 0;
  }

  else
  {
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      if (v3 >= 0x38)
      {
        v1 = 1;
      }

      else
      {
        v1 = 0x5FFFFFFE7FEFFFuLL >> v3;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  return v1 & 1;
}

uint64_t sub_10017D9CC()
{
  v0 = type metadata accessor for SocketChannel(0);
  sub_100031058(v0, v1, v2, v3, v4);
  v6 = v5;

  SelectableEventLoop.execute(_:)(sub_100180B00, v6);
}

uint64_t sub_10017DA40(uint64_t a1)
{
  v2 = sub_1001D5D60("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SocketChannel.swift", 115, 2, 301);
  swift_retain_n();
  sub_1001223F4("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SocketChannel.swift", 115, 2, 301, v2, sub_100180B08, a1);

  swift_retain_n();

  sub_10011DD5C();
}

void sub_10017DB28()
{
  if (sub_100177B8C())
  {
    sub_1001799C8(0);
  }

  else
  {
    sub_10002D678();
    swift_allocError();
    *v0 = 2;
    *(v0 + 8) = 3;
    swift_willThrow();
  }
}

uint64_t sub_10017DB9C()
{
  sub_100177C7C();
  ChannelPipeline.close(mode:promise:)(2, 0, v0, v1, v2, v3, v4, v5, v7, v8);
}

uint64_t sub_10017DC38()
{
  v1 = *(v0 + 32);

  sub_10017A6E8(v1);
}

uint64_t sub_10017DD78()
{
  sub_100178244();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10017DE78()
{
  if ((*(v0 + 376) & 1) == 0)
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 336);
    v3 = *(v0 + 360);
    if (*(v0 + 304))
    {
      sub_100021754();
    }

    if (v1)
    {
      sub_100021754();
    }

    if (v2)
    {
      sub_100021754();
    }

    if (v3)
    {
      sub_100021754();
    }
  }

  v4 = sub_100178244();

  return v4;
}

uint64_t sub_10017DF04()
{
  sub_10017DE78();

  return swift_deallocClassInstance();
}

uint64_t sub_10017DFB0(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 288) = 0;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0;
  *(v4 + 376) = 1;
  v7 = type metadata accessor for Socket();
  sub_100181360(v7);
  v8 = sub_100076738(a2, 2, 0);
  if (!v3)
  {
    v9 = v8;
    if (sub_1000E220C())
    {
      sub_10019EEBC(*(v9 + 16));
      v10 = a1[21];
      v11 = a1[14];
      v12 = a1[15];
      v13 = a1[22];
      v39 = a1[23];
      v40 = a1[20];
      v37 = a1[17];
      v38 = a1[16];
      sub_100047940();
      swift_beginAccess();
      v36 = *(a1 + 12);
      type metadata accessor for PendingDatagramWritesManager();
      v14 = swift_allocObject();
      sub_100181378(v14, v15, v16, v17, v18, v19, v20, v21, v30, v32, v33, v35, v36);
      *(v4 + 296) = sub_10019329C(v40, v10, v11, v12, v13, v39, v38, v37, v31, v34);
      sub_100181068();
      sub_10012F1C4();
      return sub_100177EF0(v22, v23, v24, a1, v25, v26);
    }

    sub_100077354();
    sub_10002E0D8();
    v28 = swift_allocError();
    sub_100180F48(v28, v29);
    swift_willThrow();
    sub_1000E21B0();
    swift_willThrow();
  }

  return swift_deallocPartialClassInstance();
}

uint64_t sub_10017E1D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 288) = 0;
  v38 = 1;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0;
  *(v4 + 376) = 1;
  if (sub_1000E220C())
  {
    sub_10019EEBC(*(a1 + 16));
    if (!v5)
    {
      v10 = a4[21];
      v11 = a4[14];
      v35 = a4[15];
      v36 = a4[20];
      v33 = a4[23];
      v34 = a4[22];
      v31 = a4[17];
      v32 = a4[16];
      sub_100047940();
      swift_beginAccess();
      v30 = *(a4 + 12);
      type metadata accessor for PendingDatagramWritesManager();
      v12 = swift_allocObject();
      sub_100181378(v12, v13, v14, v15, v16, v17, v18, v19, v24, v26, v27, v29, v30);
      *(v4 + 296) = sub_10019329C(v36, v10, v11, v35, v34, v33, v32, v31, v25, v28);
      v37[3] = &type metadata for FixedSizeRecvByteBufferAllocator;
      v37[4] = &protocol witness table for FixedSizeRecvByteBufferAllocator;
      v37[0] = 2048;
      sub_100181068();
      return sub_100177EF0(a1, a2, a3, a4, v37, v20);
    }
  }

  else
  {
    sub_100077354();
    sub_10002E0D8();
    v22 = swift_allocError();
    sub_100180F48(v22, v23);
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  return swift_deallocPartialClassInstance();
}

uint64_t sub_10017E3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v9);
  sub_10002DFFC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100023510();
  if (!sub_100181474())
  {
    sub_10002D678();
    sub_10002E0D8();
    v25 = swift_allocError();
    sub_100180F60(v25, v26);
    return swift_willThrow();
  }

  v13 = (*(v11 + 16))(v5, a1, a3);
  v16 = sub_10018104C(v13, v14, v15, &type metadata for ChannelOptions.Types.WriteSpinOption);
  if (!v16)
  {
    v28 = sub_10018104C(v16, v17, v18, &type metadata for ChannelOptions.Types.WriteBufferWaterMarkOption);
    if (v28)
    {
      v31 = *(v4 + 296);
      v32 = sub_100181028();
      v34 = v33(v32);
      sub_100181080(v34, v35, v36, &type metadata for ChannelOptions.Types.WriteBufferWaterMark);
      *(v31 + 160) = v66;
      goto LABEL_8;
    }

    v37 = sub_10018104C(v28, v29, v30, &type metadata for ChannelOptions.Types.DatagramVectorReadMessageCountOption);
    if (v37)
    {
      goto LABEL_8;
    }

    v42 = sub_10018104C(v37, v38, v39, &type metadata for ChannelOptions.Types.ExplicitCongestionNotificationsOption);
    if (v42)
    {
      v45 = sub_100181028();
      v47 = v46(v45);
      sub_100181080(v47, v48, v49, &type metadata for Bool);
      v50 = v66;
      v51 = sub_1000B6F64();
      sub_10018143C(v51, v52);
      if ((v53 & ~v51) != 0)
      {
        sub_10002D83C(v51);
        if (!(v51 >> 62))
        {
          *(v4 + 288) = 1;
          v54 = 0;
          v55 = 27;
          goto LABEL_27;
        }

        if (v51 >> 62 == 1)
        {
          *(v4 + 288) = 1;
          v54 = 41;
          v55 = 35;
LABEL_27:
          sub_10017A21C(v54, v55, v50);
          goto LABEL_8;
        }
      }
    }

    else
    {
      if (!sub_10018104C(v42, v43, v44, &type metadata for ChannelOptions.Types.ReceivePacketInfo))
      {
        sub_100029D04(a1, a2, a3, a4);
        goto LABEL_8;
      }

      v56 = sub_100181028();
      v58 = v57(v56);
      sub_100181080(v58, v59, v60, &type metadata for Bool);
      v50 = v66;
      v61 = sub_1000B6F64();
      sub_10018143C(v61, v62);
      if ((v63 & ~v61) != 0)
      {
        sub_10002D83C(v61);
        if (!(v61 >> 62))
        {
          *(v4 + 289) = 1;
          if (qword_1002AC518 != -1)
          {
            sub_1001810F4(&qword_1002AC518);
          }

          v55 = dword_1002E6198;
          v54 = 0;
          goto LABEL_27;
        }

        if (v61 >> 62 == 1)
        {
          *(v4 + 289) = 1;
          if (qword_1002AC520 != -1)
          {
            sub_100181114(&qword_1002AC520);
          }

          v55 = dword_1002E619C;
          v54 = 41;
          goto LABEL_27;
        }
      }
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v64, 1);
    swift_willThrow();
    goto LABEL_8;
  }

  v19 = *(v4 + 296);
  v20 = sub_100181028();
  v22 = v21(v20);
  sub_100181080(v22, v23, v24, &type metadata for UInt);
  *(v19 + 192) = v66;
LABEL_8:
  v40 = sub_10007B9BC();
  return v41(v40);
}

uint64_t sub_10017E790(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100023510();
  v12 = v11 - v10;
  if (!sub_100177B8C())
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v19, 2);
    return swift_willThrow();
  }

  v13 = (*(v8 + 16))(v12, a1, a2);
  v16 = sub_100181140(v13, v14, v15, &type metadata for ChannelOptions.Types.WriteSpinOption);
  if (!v16)
  {
    v21 = sub_100181140(v16, v17, v18, &type metadata for ChannelOptions.Types.WriteBufferWaterMarkOption);
    if (!v21)
    {
      v24 = sub_100181140(v21, v22, v23, &type metadata for ChannelOptions.Types.DatagramVectorReadMessageCountOption);
      if (!v24)
      {
        v27 = sub_100181140(v24, v25, v26, &type metadata for ChannelOptions.Types.ExplicitCongestionNotificationsOption);
        if (v27)
        {
          v30 = sub_1000B6F64();
          sub_10018143C(v30, v31);
          if ((v32 & ~v30) == 0)
          {
            goto LABEL_23;
          }

          sub_10002D83C(v30);
          if (v30 >> 62)
          {
            if (v30 >> 62 == 1)
            {
              v33 = *(v3 + 32);
              if (sub_1000E220C())
              {
                v34 = *(v33 + 16);
                v35 = 41;
                v36 = 35;
                goto LABEL_33;
              }

              goto LABEL_35;
            }

LABEL_23:
            sub_10002D678();
            sub_10002E0D8();
            swift_allocError();
            sub_10002E020(v42, 1);
LABEL_24:
            swift_willThrow();
            return (*(v8 + 8))(v12, a2);
          }

          v43 = *(v3 + 32);
          if (sub_1000E220C())
          {
            v34 = *(v43 + 16);
            v35 = 0;
            v36 = 27;
            goto LABEL_33;
          }

LABEL_35:
          sub_100077354();
          sub_10002E0D8();
          v45 = swift_allocError();
          sub_100180F48(v45, v46);
          goto LABEL_24;
        }

        if (!sub_100181140(v27, v28, v29, &type metadata for ChannelOptions.Types.ReceivePacketInfo))
        {
          sub_10002A5F0(a1, a2);
          return (*(v8 + 8))(v12, a2);
        }

        v37 = sub_1000B6F64();
        sub_10018143C(v37, v38);
        if ((v39 & ~v37) == 0)
        {
          goto LABEL_23;
        }

        sub_10002D83C(v37);
        if (v37 >> 62)
        {
          if (v37 >> 62 != 1)
          {
            goto LABEL_23;
          }

          v40 = *(v3 + 32);
          if (qword_1002AC520 != -1)
          {
            sub_100181114(&qword_1002AC520);
          }

          v41 = dword_1002E619C;
          if (!sub_1000E220C())
          {
            goto LABEL_35;
          }

          v34 = *(v40 + 16);
          v35 = 41;
        }

        else
        {
          v44 = *(v3 + 32);
          if (qword_1002AC518 != -1)
          {
            sub_1001810F4(&qword_1002AC518);
          }

          v41 = dword_1002E6198;
          if (!sub_1000E220C())
          {
            goto LABEL_35;
          }

          v34 = *(v44 + 16);
          v35 = 0;
        }

        v36 = v41;
LABEL_33:
        sub_10017BCC4(v34, v35, v36);
        if (v4)
        {
          return (*(v8 + 8))(v12, a2);
        }
      }
    }
  }

  sub_100181194();
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return (*(v8 + 8))(v12, a2);
}

uint64_t sub_10017EBB8()
{
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  sub_10002E020(v0, 1);
  swift_willThrow();
  return 0;
}

uint64_t sub_10017EC20()
{
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  sub_10002E020(v0, 1);
  return swift_willThrow();
}

uint64_t sub_10017EC6C()
{
  if (*(v0 + 376))
  {
    return sub_10017ECE4() & 1;
  }

  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_10017ECE4()
{
  v1 = v0;
  memset(v43, 0, sizeof(v43));
  v42 = 128;
  swift_beginAccess();
  sub_100026064(v0 + 104, v54);
  v2 = v56;
  sub_10001AE68(v54, *(&v55 + 1));
  v3 = sub_100177B08();
  v4 = (*(v2 + 8))(v3);
  v41 = v4;
  sub_100019CCC(v54);
  if ((*(v0 + 288) & 1) != 0 || *(v0 + 289) == 1)
  {
    v5 = *(v0 + 48);
    swift_beginAccess();
    v6 = sub_10006B600(0, *(v5 + 192), *(v5 + 200));
    v34 = v7;
    v35 = v6;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = *(v0 + 144);
  if (!v33)
  {
LABEL_37:
    __break(1u);
  }

  if (!sub_100177B8C())
  {
LABEL_31:
    sub_10002D678();
    swift_allocError();
    *v30 = 6;
    *(v30 + 8) = 3;
    swift_willThrow();
  }

  v8 = 0;
  v9 = v33 == 1;
  v32 = v0;
  v10 = 1;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = v41;
    }

    else
    {
      v11 = sub_10005EFF0(*(v4 + 16));

      v41 = v11;
      v4 = v11;
    }

    v12 = *(v4 + 16);
    v54[0] = v35;
    v54[1] = v34;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v12, 0);
      v4 = v41;
    }

    swift_beginAccess();
    v38 = v9;
    sub_100076DD0(*(v4 + 24), *(v4 + 24) + v12, v43, &v42, v54);
    if (v40)
    {
    }

    v15 = v13;
    v39 = v10;
    v16 = v13;
    if ((v14 & 1) == 0)
    {

      return v8 & 1;
    }

    if ((swift_beginAccess(), v17 = *(v1 + 128), v18 = *(v1 + 136), sub_10004BD98(v1 + 104, v17), v36 = (*(v18 + 16))(v15, v17, v18), swift_endAccess(), *(v1 + 88) = 0, (*(v1 + 288)) || *(v1 + 289) == 1) && (v58 & 1) == 0)
    {
      v59 = v55;
      v60 = DWORD2(v55);
      v61 = v56;
      v62 = DWORD2(v56);
      v63 = v57;
      v20 = sub_10006C900(&v59, v19);
      v22 = v21;
      v24 = v23;
      v25 = v20;
      sub_10002D824(v21);
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v25 = 4;
    }

    *&v50 = sub_1000E2678();
    *(&v50 + 1) = v4;
    LODWORD(v51) = 0;
    *(&v51 + 4) = __PAIR64__(v12, v16);
    WORD6(v51) = 0;
    BYTE14(v51) = 0;
    *&v52 = v25;
    *(&v52 + 1) = v22;
    v53 = v24;
    v1 = v32;
    sub_100177C7C();
    v48 = v53;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v49 = 1;
    swift_getObjectType();
    debugOnly(_:)();
    if (sub_10009D370())
    {

      sub_100180A2C(&v50, v44);
      sub_10009E13C();
    }

    else
    {

      sub_100180A2C(&v50, v44);
    }

    v26 = v39;

    sub_100034310(&v45);
    if ((v36 & 1) != 0 && v39 < *(v32 + 144))
    {
      sub_100026064(v32 + 104, &v45);
      v37 = v25;
      v27 = v47;
      sub_10001AE68(&v45, *(&v46 + 1));
      v28 = sub_100177B08();
      v29 = (*(v27 + 8))(v28);
      sub_1001809C4(&v50);
      sub_10003709C(v37, v22);

      v41 = v29;
      v26 = v39;
      sub_100019CCC(&v45);
      v4 = v29;
    }

    else
    {
      sub_10003709C(v25, v22);
      sub_1001809C4(&v50);
    }

    if (v38)
    {
      break;
    }

    if (v26 == -1)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (!sub_100177B8C())
    {
      goto LABEL_31;
    }

    v9 = v26 + 1 == v33;
    v10 = v26 + 1;
    v8 = 1;
  }

  v8 = 1;
  return v8 & 1;
}

BOOL sub_10017F300(uint64_t a1)
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  return v3 != 61 && v3 != 12;
}

uint64_t sub_10017F380(uint64_t a1, uint64_t a2)
{
  NIOAny.forceAsByteEnvelope()(v4);
  if (sub_100191B1C(v4, a2))
  {
    return sub_1001809C4(v4);
  }

  sub_100177C7C();
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  if (sub_10009D370())
  {
    sub_10009E30C();
    sub_1001809C4(v4);
  }

  else
  {
    sub_1001809C4(v4);
  }
}