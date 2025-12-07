uint64_t sub_1001C4354(uint64_t a1)
{
  *(v1 + 32) = sub_1001F6C08();
  *(v1 + 40) = v2;
}

uint64_t sub_1001C4398(uint64_t a1)
{
  swift_beginAccess();
  if (!v1[3])
  {
    v1[3] = _swiftEmptyArrayStorage;
  }

  result = sub_10012F21C((v1 + 3), v2, v3, v4, v5, v6, v7, v8, v12);
  if (v1[5])
  {

    sub_1001F6C08();
    sub_100031FE4();
    v10 = *(v1[3] + 16);
    sub_100032200(v10);
    sub_1001C59F4(v10 + 1);
    v1[3] = v11;
    swift_endAccess();
    v1[4] = 0;
    v1[5] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C4498(uint64_t a1)
{
  *(v1 + 48) = sub_1001F6C08();
  *(v1 + 56) = v2;
}

uint64_t sub_1001C44DC(uint64_t result, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = v6;
  v8 = result;
  if (result != 1)
  {
    *(v6 + 114) = 1;
    if (*(v6 + 96))
    {
      sub_100036A04();
      swift_allocError();
      *v19 = 5;

      ChannelHandlerContext.fireErrorCaught(_:)();

      return v8 == 1;
    }

    goto LABEL_22;
  }

  v11 = a2;
  if (*(v7 + 113))
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!(a2 >> 16))
      {
        v12 = HTTPResponseStatus.init(statusCode:reasonPhrase:)(a5);
        v14 = v13;
        v16 = v15;
        sub_1001C5A08(v12, v13, v15);
        v17 = *(v7 + 16);
        type metadata accessor for HTTPResponseHead._Storage();
        v18 = swift_allocObject();
        *(v18 + 16) = v12;
        *(v18 + 24) = v14;
        *(v18 + 32) = v16;
        *(v18 + 40) = v11;
        *(v18 + 42) = 1;
        v45 = sub_1000183C4(&qword_1002ADD48, &unk_100200AB0);
        v41 = v18;
        v42 = v17;
        v43 = a6;
        v44 = 0;
        v46 = 2;
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (a2 >> 16)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1001C4780(a4);
  v22 = *(v7 + 56);
  if (v22)
  {
    v23 = result;
    v24 = v20;
    v25 = *(v7 + 48);
    sub_1001C5A08(result, v20, v21);
    v26 = *(v7 + 16);
    type metadata accessor for HTTPRequestHead._Storage();
    swift_allocObject();
    v27 = sub_1001BB78C(v23, v24, v25, v22, v11 | 0x10000u);
    v45 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
    v41 = v27;
    v42 = v26;
    v43 = a6;
    v44 = 0;
    v46 = 2;

LABEL_12:

    *(v7 + 48) = 0;
    *(v7 + 56) = 0;

    sub_10012F21C(v7 + 16, v28, v29, v30, v31, v32, v33, v34, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v7 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_100036918(0, *(v39 + 16), v36, v37, v38);
    }

    else
    {
      *(v7 + 16) = sub_100017B80(0, *(v39 + 24) >> 1);
    }

    result = swift_endAccess();
    if (*(v7 + 96))
    {

      ChannelHandlerContext.fireChannelRead(_:)();

      sub_100034310(&v41);
      *(v7 + 64) = a3 & 1;
      return v8 == 1;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1001C4780(unsigned int a1)
{
  if (a1 < 0x22)
  {
    return qword_1002196A8[a1];
  }

  sub_1001F77B8(25);
  v2._object = 0x800000010022DCB0;
  v2._countAndFlagsBits = 0xD000000000000017;
  sub_1001F6CA8(v2);
  type metadata accessor for http_method(0);
  sub_1001F7A28();
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_1001C4860()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
  v4 = *(v0 + 113);
  v5 = *(v0 + 96);
  if (v4)
  {
    if (!v5)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v6 = 2 * (v3 != 0);
    v7 = &qword_1002ADD48;
    v8 = &unk_100200AB0;
LABEL_6:
    v10[0] = v3;
    v10[1] = v6;
    v10[2] = 0x200000000000000;
    v10[3] = sub_1000183C4(v7, v8);
    v11 = 2;

    ChannelHandlerContext.fireChannelRead(_:)();

    result = sub_100034310(v10);
    v9 = *(v1 + 64);
    if (v9 != 2)
    {
      *(v1 + 114) = v9 & 1;
      *(v1 + 64) = 2;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = 2 * (v3 != 0);
    v7 = &qword_1002ADD40;
    v8 = &qword_1002158B0;
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t HTTPDecoder.decoderAdded(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = *v8;
  v11 = v8[13];
  v14[3] = v10;
  v14[4] = &off_100293FD0;
  v14[0] = v9;
  sub_10012F21C(v11 + 16, a2, a3, a4, a5, a6, a7, a8, v13);

  sub_1001C49E4(v14, v11 + 16);
  swift_endAccess();
  return sub_1001C3A88();
}

uint64_t sub_1001C49E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002BBB20, &qword_100219170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HTTPDecoder.decoderRemoved(context:)()
{
  v1 = *(v0 + 104);
  sub_1001C3AC4();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100050548(v1 + 16, v3);
  sub_1001C49E4(v4, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1001C4AAC(uint64_t a1)
{
  *(v1 + 96) = a1;

  sub_1001C3B30(0, 0, 1);
  return sub_1001C4B18(v1);
}

void *sub_1001C4B28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 10);
  v9 = *(a2 + 22);
  swift_beginAccess();
  *(v2 + 72) = v4;
  *(v2 + 80) = v6 | (v5 << 32);
  *(v2 + 94) = v9;
  *(v2 + 92) = v8;
  *(v2 + 88) = v7;

  *(v2 + 96) = a1;

  result = swift_beginAccess();
  if (v5 < v6)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v4 + 24) + (v9 | (v8 << 8)) + v6;

  result = sub_1001C4CAC(v11, v11 + (v5 - v6), &v15);
  if (v13)
  {
    return sub_1001C4C54(v2);
  }

  v12 = v6 + v15;
  if (__CFADD__(v6, v15))
  {
    goto LABEL_8;
  }

  if (v5 >= v12)
  {
    *(a2 + 2) = v12;
    return sub_1001C4C54(v2);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001C4C54(void *a1)
{
  swift_beginAccess();
  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 87) = 0;

  a1[12] = 0;
}

uint64_t sub_1001C4CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001C3B30(a1, a2, 0);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t HTTPDecoder.decode(context:buffer:)(uint64_t a1, uint64_t *a2)
{
  if ((*(v2 + 114) & 1) == 0)
  {
    sub_1001C4B28(a1, a2);
  }

  return 1;
}

uint64_t HTTPDecoder.decodeLast(context:buffer:seenEOF:)(uint64_t result, uint64_t a2, char a3)
{
  v7 = result;
  if ((*(v3 + 114) & 1) == 0)
  {
    v9 = *(a2 + 8);
    v8 = *(a2 + 12);
    if (v8 < v9)
    {
      goto LABEL_16;
    }

    if (v8 != v9)
    {
      result = HTTPDecoder.decode(context:buffer:)(result, a2);
      if (v4)
      {
        return 1;
      }
    }

    if (a3)
    {
      result = sub_1001C4AAC(v7);
      if (v4)
      {
        return 1;
      }
    }
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  if (v11 >= v10)
  {
    if (v11 != v10 && (a3 & 1) == 0)
    {
      if (*(v3 + 112))
      {
        if (*(v3 + 112) == 1)
        {
          v12 = v10 | (v11 << 32);
          v13 = *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48);
          v14 = *a2 | 0x8000000000000000;
          sub_10006A6F0();
          swift_allocError();
          *v15 = v14;
          *(v15 + 8) = v12;
          *(v15 + 16) = v13;
          *(v15 + 30) = 0;
          *(v15 + 28) = 0;
          *(v15 + 24) = 0;

          ChannelHandlerContext.fireErrorCaught(_:)();
        }
      }

      else
      {
        v16 = *(a2 + 16);
        v17 = *(a2 + 20);
        v18 = v10 | (v11 << 32);
        v19 = *(a2 + 22);
        v20[0] = *a2;
        v20[1] = v18;
        v23 = v19;
        v22 = v17;
        v21 = v16;
        v24 = 0;

        ChannelHandlerContext.fireChannelRead(_:)();
        sub_100034310(v20);
      }
    }

    return 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t HTTPDecoder.deinit()
{

  return v0;
}

uint64_t HTTPDecoder.__deallocating_deinit()
{
  HTTPDecoder.deinit();

  return swift_deallocClassInstance();
}

Swift::Int sub_1001C50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

unint64_t sub_1001C5118()
{
  result = qword_1002BBB28;
  if (!qword_1002BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB28);
  }

  return result;
}

unint64_t sub_1001C516C(uint64_t a1)
{
  result = sub_1001C5194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001C5194()
{
  result = qword_1002BBB50;
  if (!qword_1002BBB50)
  {
    sub_100019BC4(&qword_1002B02F0, &qword_1002191E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB50);
  }

  return result;
}

unint64_t sub_1001C51FC()
{
  result = qword_1002BBB90;
  if (!qword_1002BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB90);
  }

  return result;
}

unint64_t sub_1001C5254()
{
  result = qword_1002BBB98;
  if (!qword_1002BBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPDecoderKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C5378);
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

_BYTE *storeEnumTagSinglePayload for RemoveAfterUpgradeStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C5520);
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

_BYTE *storeEnumTagSinglePayload for HTTPDecodingState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1001C562CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NIOHTTPDecoderError.BaseError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001C5700);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001C573C()
{
  result = qword_1002BBEA0;
  if (!qword_1002BBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEA0);
  }

  return result;
}

unint64_t sub_1001C5794()
{
  result = qword_1002BBEA8;
  if (!qword_1002BBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEA8);
  }

  return result;
}

unint64_t sub_1001C57F8()
{
  result = qword_1002BBEB0;
  if (!qword_1002BBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEB0);
  }

  return result;
}

uint64_t sub_1001C584C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BBB20, &qword_100219170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C58FC(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1001C591C()
{
}

uint64_t sub_1001C5990@<X0>(int a1@<W8>, uint64_t a2)
{
  *(v2 + 80) = a1;

  return swift_endAccess();
}

uint64_t sub_1001C59B4()
{

  return ByteBuffer.getSlice(at:length:)(v4, v1, v2, v0, v3);
}

uint64_t sub_1001C59D8()
{

  return sub_10004BD98(v0 + 16, v1);
}

void sub_1001C59F4(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v7 = (v1 + 32 * v5);
  v7[4] = v6;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v4;
}

uint64_t sub_1001C5A08(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

unsigned __int8 *sub_1001C5A28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F5FE8();
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000183C4(&qword_1002B70B0, &qword_1002198D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v77 = 1;
  v13 = *(a1 + 40);
  v60 = *(a1 + 48);

  sub_1001F6018();

  sub_1001C6118(v12, v9);
  v14 = sub_1001F6028();
  v15 = sub_10001C990(v9, 1, v14);
  v61 = v13;
  v62 = a1;
  if (v15 == 1)
  {
    sub_1001C6188(v9);
    goto LABEL_104;
  }

  v16 = sub_1001F5FF8();
  result = (*(*(v14 - 8) + 8))(v9, v14);
  if (!v16)
  {
LABEL_104:
    v18 = 0;
    v52 = 0;
    v53 = 0;
LABEL_105:

    sub_1000E32F8(v60, v75);
    sub_1000402B8(v62);
    sub_1001C6188(v12);
    v69[0] = v18;
    LOBYTE(v69[1]) = v77;
    *(&v69[1] + 1) = *v76;
    HIDWORD(v69[1]) = *&v76[3];
    v69[2] = v52;
    v69[3] = v53;
    memcpy(&v69[4], v75, 0x139uLL);
    v70 = v18;
    LOBYTE(v71) = v77;
    *(&v71 + 1) = *v76;
    HIDWORD(v71) = *&v76[3];
    v72 = v52;
    v73 = v53;
    memcpy(v74, v75, sizeof(v74));
    sub_1001C61F0(v69, &v68);
    sub_1001C6228(&v70);
    return memcpy(a2, v69, 0x159uLL);
  }

  v66 = *(v16 + 16);
  if (!v66)
  {

    goto LABEL_104;
  }

  v54 = v12;
  v55 = a2;
  v18 = 0;
  v56 = 0;
  v57 = 0;
  v19 = 0;
  v65 = v16 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v63 = v67 + 8;
  v64 = v67 + 16;
  v58 = &v70 + 1;
  v59 = 0;
  while (v19 < *(v16 + 16))
  {
    (*(v67 + 16))(v6, v65 + *(v67 + 72) * v19, v4);
    v20 = sub_1001F5FD8();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v25 = sub_1001F5FC8();
      v26 = v24;
      v27 = v25 == 0x746361736E617274 && v24 == 0xED000064496E6F69;
      if (v27 || (sub_1001F7EA8() & 1) != 0)
      {

        v28 = HIBYTE(v23) & 0xF;
        v29 = v22 & 0xFFFFFFFFFFFFLL;
        if ((v23 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v23) & 0xF;
        }

        else
        {
          v30 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            LOBYTE(v69[0]) = 0;
            v32 = sub_1001EE478(v22, v23, 10);
            v46 = v51;
            goto LABEL_94;
          }

          if ((v23 & 0x2000000000000000) != 0)
          {
            v70 = v22;
            v71 = v23 & 0xFFFFFFFFFFFFFFLL;
            if (v22 == 43)
            {
              if (!v28)
              {
                goto LABEL_108;
              }

              if (v28 != 1)
              {
                v32 = 0;
                while (1)
                {
                  sub_1001C6390();
                  if (!v27 && v33)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v27)
                  {
                    break;
                  }

                  sub_1001C63A0();
                  if (v33)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v27)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v22 == 45)
            {
              if (!v28)
              {
                goto LABEL_110;
              }

              if (v28 != 1)
              {
                v32 = 0;
                while (1)
                {
                  sub_1001C6390();
                  if (!v27 && v33)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v27)
                  {
                    break;
                  }

                  v33 = 10 * v32 >= v38;
                  v32 = 10 * v32 - v38;
                  if (!v33)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v27)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v28)
            {
              v32 = 0;
              while (1)
              {
                sub_1001C6390();
                if (!v27 && v33)
                {
                  break;
                }

                sub_1001C6380();
                if (!v27)
                {
                  break;
                }

                sub_1001C63A0();
                if (v33)
                {
                  break;
                }

                sub_10002727C();
                if (v27)
                {
                  goto LABEL_93;
                }
              }
            }
          }

          else
          {
            if ((v22 & 0x1000000000000000) != 0)
            {
              result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_1001F7858();
            }

            v31 = *result;
            if (v31 == 43)
            {
              if (v29 < 1)
              {
                goto LABEL_109;
              }

              if (v29 != 1)
              {
                v32 = 0;
                if (!result)
                {
                  goto LABEL_82;
                }

                while (1)
                {
                  sub_1001C6390();
                  if (!v27 && v33)
                  {
                    break;
                  }

                  sub_1001C6380();
                  if (!v27)
                  {
                    break;
                  }

                  sub_1001C63A0();
                  if (v33)
                  {
                    break;
                  }

                  sub_10002727C();
                  if (v27)
                  {
                    goto LABEL_93;
                  }
                }
              }
            }

            else if (v31 == 45)
            {
              if (v29 < 1)
              {
                goto LABEL_107;
              }

              if (v29 != 1)
              {
                v32 = 0;
                if (result)
                {
                  while (1)
                  {
                    sub_1001C6390();
                    if (!v27 && v33)
                    {
                      goto LABEL_92;
                    }

                    sub_1001C6380();
                    if (!v27)
                    {
                      goto LABEL_92;
                    }

                    v33 = 10 * v32 >= v34;
                    v32 = 10 * v32 - v34;
                    if (!v33)
                    {
                      goto LABEL_92;
                    }

                    sub_10002727C();
                    if (v27)
                    {
                      goto LABEL_93;
                    }
                  }
                }

LABEL_82:
                v35 = 0;
LABEL_93:
                LOBYTE(v69[0]) = v35;
                v46 = v35;
LABEL_94:
                v47 = sub_1001C636C();
                v48(v47);

                if (v46)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v32;
                }

LABEL_97:
                v77 = v46 & 1;
                goto LABEL_98;
              }
            }

            else
            {
              if (!v29)
              {
                goto LABEL_92;
              }

              v32 = 0;
              if (!result)
              {
                goto LABEL_82;
              }

              while (1)
              {
                v45 = *result - 48;
                if (v45 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v32, 0xAuLL))
                {
                  break;
                }

                v33 = __CFADD__(10 * v32, v45);
                v32 = 10 * v32 + v45;
                if (v33)
                {
                  break;
                }

                ++result;
                if (!--v29)
                {
                  goto LABEL_82;
                }
              }
            }
          }

LABEL_92:
          v32 = 0;
          v35 = 1;
          goto LABEL_93;
        }

        v49 = sub_1001C636C();
        v50(v49);

        v18 = 0;
        v46 = 1;
        goto LABEL_97;
      }

      if (v25 == 1684632935 && v26 == 0xE400000000000000)
      {

        v43 = sub_1001C636C();
        v44(v43);
LABEL_55:

        v56 = v23;
        v57 = v22;
        v59 = v23;
        goto LABEL_98;
      }

      v40 = sub_1001F7EA8();

      v41 = sub_1001C636C();
      v42(v41);
      if (v40)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v36 = sub_1001C636C();
      result = v37(v36);
    }

LABEL_98:
    if (++v19 == v66)
    {

      v12 = v54;
      a2 = v55;
      v53 = v56;
      v52 = v57;
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t sub_1001C6118(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B70B0, &qword_1002198D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C6188(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B70B0, &qword_1002198D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C6258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 345))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C62AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 345) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 345) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1001C63B0(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_1001F6198();
  sub_1001C6EB8(v4);
  sub_1001F6188();
  sub_1001C6E88();
  sub_1001C6C9C();
  sub_1001F6178();
  sub_10003A36C(a3, a4);
  v5 = sub_100075518();
  sub_100040C70(v5, v6);
  v7 = sub_100075518();
  sub_1001C6EA0(v7, v8, v9, v10);

  v11 = sub_100075518();
  sub_10003A380(v11, v12);
  return sub_1001C6E20();
}

double sub_1001C64A0(__int128 *a1)
{
  v14 = *(a1 + 4);
  v1 = *a1;
  v13 = a1[1];
  v12 = v1;
  v2 = sub_1001F6198();
  sub_1001C6EB8(v2);
  sub_1001F6188();
  sub_1001C6E88();
  sub_1001C6CF0();
  sub_1001F6178();
  sub_10001C838(&v12);
  sub_10001C838(&v13);
  sub_1001C6D44(&v14);
  v3 = sub_100075518();
  sub_100040C70(v3, v4);
  v5 = sub_100075518();
  sub_1001C6EA0(v5, v6, v7, v8);

  v9 = sub_100075518();
  sub_10003A380(v9, v10);
  return sub_1001C6E20();
}

double sub_1001C65C0@<D0>(uint64_t a3@<X8>)
{
  sub_1001F6198();
  swift_allocObject();
  sub_1001F6188();
  sub_1001F6168();
  sub_1001C6C48();
  v4 = sub_1001F6178();
  v6 = v5;

  sub_100040C70(v4, v6);
  sub_1000B77D0(v4, v6, 0xD000000000000017, 0x80000001002227B0, &v12);

  sub_10003A380(v4, v6);
  v7 = v13;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  *a3 = v12;
  *(a3 + 16) = v7;
  result = v14;
  *(a3 + 24) = v14;
  *(a3 + 32) = v8;
  *(a3 + 36) = v9;
  *(a3 + 38) = v10;
  return result;
}

double sub_1001C673C(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1001F6198();
  sub_1001C6EB8(v7);
  sub_1001F6188();
  sub_1001C6E88();
  a2(0);
  sub_1001C6DAC(a3, a4);
  v8 = sub_1001F6178();
  v10 = v9;

  sub_100040C70(v8, v10);
  sub_1001C6EA0(v8, v10, 0x80000001002227B0, v12);

  sub_10003A380(v8, v10);
  return sub_1001C6E20();
}

double sub_1001C6888@<D0>(double *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_1001F6198();
  sub_1001C6EB8(v3);
  sub_1001F6188();
  sub_1001C6E88();
  sub_1000581BC();
  sub_1001F6178();
  memcpy(v17, __dst, 0xD1uLL);
  sub_100057E48(v17);
  v4 = sub_100075518();
  sub_100040C70(v4, v5);
  v6 = sub_100075518();
  sub_1001C6EA0(v6, v7, v8, v9);

  v10 = sub_100075518();
  sub_10003A380(v10, v11);
  v12 = v20;
  result = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  *a1 = v19;
  *(a1 + 2) = v12;
  a1[3] = result;
  *(a1 + 8) = v14;
  *(a1 + 18) = v15;
  *(a1 + 38) = v16;
  return result;
}

__n128 sub_1001C69CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1000593F4(a1, &v20);
  sub_1001C5A28(a1, &v20);
  if (v21)
  {
    type metadata accessor for InAppTransactionDoneResponse();
    v6 = sub_100042160(v22, v23 & 1, _swiftEmptyArrayStorage);
    sub_1001C6228(&v20);
    sub_1001C6E54();
    sub_1001C673C(v6, v7, v8, type metadata accessor for InAppTransactionDoneResponse);
    sub_1001C6E00();
  }

  else
  {
    v9 = v20;
    sub_10001AE68((v3 + 88), *(v3 + 112));
    v10 = sub_10008E790(v9);
    if (!v10)
    {
      sub_1001C6228(&v20);
      sub_1001C65C0(v24);
      sub_1001C6E00();
      v15 = 25;
      goto LABEL_9;
    }

    v11 = v10;
    v3 = *sub_10001AE68((v3 + 88), *(v3 + 112));
    sub_1000C2440(1);
    if (sub_10008EA08(v11, 0) != 4)
    {
      sub_1001C6228(&v20);
      sub_1001C65C0(v24);
      sub_1001C6E00();

      v15 = 21;
      goto LABEL_9;
    }

    type metadata accessor for InAppTransactionDoneResponse();
    sub_100042160(v22, v23 & 1, _swiftEmptyArrayStorage);
    sub_1001C6228(&v20);

    sub_1001C6E54();
    sub_1001C673C(v12, v13, v14, type metadata accessor for InAppTransactionDoneResponse);
    sub_1001C6E00();
  }

  v15 = 3;
LABEL_9:
  type metadata accessor for HTTPResponseHead._Storage();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  *(v16 + 40) = 65537;
  *a2 = v16;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v18;
  *(a2 + 24) = v19;
  *(a2 + 40) = v18;
  *(a2 + 62) = BYTE6(v3);
  *(a2 + 60) = WORD2(v3);
  *(a2 + 56) = v3;
  return result;
}

unint64_t sub_1001C6C48()
{
  result = qword_1002BBF90;
  if (!qword_1002BBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBF90);
  }

  return result;
}

unint64_t sub_1001C6C9C()
{
  result = qword_1002BBFA0;
  if (!qword_1002BBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBFA0);
  }

  return result;
}

unint64_t sub_1001C6CF0()
{
  result = qword_1002BBFB0;
  if (!qword_1002BBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBFB0);
  }

  return result;
}

uint64_t sub_1001C6D44(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BAA20, &qword_100219A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C6DAC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

double sub_1001C6E20()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 38);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 24);
  *(v0 + 24) = result;
  *(v0 + 32) = v3;
  *(v0 + 36) = v4;
  *(v0 + 38) = v5;
  return result;
}

double sub_1001C6E6C@<D0>(uint64_t a1@<X8>)
{

  return sub_1000B738C(0, 0xE000000000000000, 6, a1);
}

uint64_t sub_1001C6E88()
{

  return sub_1001F6168();
}

double sub_1001C6EA0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return sub_1000B77D0(a1, a2, 0xD000000000000017, a3, a4);
}

uint64_t sub_1001C6EB8(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_1001C6ED0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v30 = v1;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a1 + 48) + v8);
      sub_10002F9B0(*(a1 + 56) + 32 * v8, &v35);
      v34[0] = v9;
      sub_100057CB8(v34, v32, &qword_1002B6D70, &unk_10020F458);
      v10 = v32[0];
      sub_10003708C((v32 + 8), v33);
      v11 = sub_10013EBCC(v10);
      v13 = v12;
      sub_10002F9B0(v33, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_10011108C(v11);
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = (v16 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      v21 = v16;
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v19))
      {
        v22 = sub_10011108C(v11);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v4 &= v4 - 1;
      if (v21)
      {

        v24 = (_swiftEmptyDictionarySingleton[7] + 32 * v20);
        sub_100019CCC(v24);
        sub_10003708C(v32, v24);
        sub_100019CCC(v33);
        sub_10013F8CC(v34);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v20 >> 6) + 8] |= 1 << v20;
        v25 = (_swiftEmptyDictionarySingleton[6] + 16 * v20);
        *v25 = v11;
        v25[1] = v13;
        sub_10003708C(v32, (_swiftEmptyDictionarySingleton[7] + 32 * v20));
        sub_100019CCC(v33);
        sub_10013F8CC(v34);
        v26 = _swiftEmptyDictionarySingleton[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v28;
      }

      v6 = v7;
      v1 = v30;
      if (!v4)
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
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

void *sub_1001C7160(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v28 = v5;
  v29 = v1;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a1 + 56) + 8 * v8);
      v10 = sub_10013EBCC(*(*(a1 + 48) + v8));
      v12 = v11;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_10011108C(v10);
      v16 = _swiftEmptyDictionarySingleton[2];
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      v20 = v15;
      sub_1000183C4(&qword_1002BBFC0, &qword_100219A08);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_10011108C(v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v4 &= v4 - 1;
      if (v20)
      {

        *(_swiftEmptyDictionarySingleton[7] + 8 * v19) = v9;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
        v23 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
        *v23 = v10;
        v23[1] = v12;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v19) = v9;

        v24 = _swiftEmptyDictionarySingleton[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v26;
      }

      v6 = v7;
      v5 = v28;
      v1 = v29;
      if (!v4)
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
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

void sub_1001C738C(uint64_t a1, char a2)
{
  sub_100057CB8(a1, v12, &qword_1002B34A0, &qword_1002009E0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10001AE68(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1001F7E98();
    (*(v6 + 8))(v9, v4);
    sub_100019CCC(v12);
  }

  else
  {
    v10 = 0;
  }

  sub_10013EBCC(a2);
  v11 = sub_1001F6B48();

  [v2 setValue:v10 forProperty:v11];
  swift_unknownObjectRelease();
}

uint64_t sub_1001C7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001C6ED0(a1);
  v8 = *(a2 + 16);
  if (v8)
  {
    v32 = a4;
    sub_1001C7F60();
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      v11 = sub_10013EBCC(v10);
      v13 = v12;
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        v17 = sub_10005669C(v14);
        sub_1000375CC(v17, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      --v8;
    }

    while (v8);
    a4 = v32;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    sub_1001C7F60();
    v19 = (a3 + 32);
    do
    {
      v20 = *v19++;
      v21 = sub_10013EBCC(v20);
      v23 = v22;
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v27 = sub_10005669C(v24);
        sub_1000375CC(v27, v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      --v18;
    }

    while (v18);
  }

  v28 = sub_1001C7160(a4);
  sub_1001C7874(v7, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v28);
  v30 = v29;

  return v30;
}

id sub_1001C76B0(char a1, void *a2, unsigned __int8 a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10013EBCC(a1);
  v7 = sub_1001F6B48();

  sub_10001AE68(a2, a2[3]);
  v8 = [ObjCClassFromMetadata predicateWithProperty:v7 value:sub_1001F7E98() comparisonType:a3 + 1];

  swift_unknownObjectRelease();
  sub_100019CCC(a2);
  return v8;
}

id sub_1001C777C(uint64_t a1, SEL *a2)
{
  isa = sub_1001F6F18().super.isa;

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

id sub_1001C77F8(char a1, SEL *a2)
{
  v4 = objc_opt_self();
  sub_10013EBCC(a1);
  v5 = sub_1001F6B48();

  v6 = [v4 *a2];

  return v6;
}

void sub_1001C7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  v6 = a1 + 64;
  sub_1001C7F38();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v13 = v12;
LABEL_7:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_10002F9B0(*(a1 + 56) + 32 * v15, v76);
    *&v77 = v18;
    *(&v77 + 1) = v17;
    sub_10003708C(v76, &v78);

LABEL_8:
    v80 = v77;
    v81[0] = v78;
    v81[1] = v79;
    v19 = *(&v77 + 1);
    if (!*(&v77 + 1))
    {
      break;
    }

    v20 = v80;
    sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
    sub_10003708C(v81, &v77);
    v21 = sub_1001C7EA0(v20, v19, &v77);
    sub_1001F6F08();
    sub_1001C7F54();
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_10005669C(v23);
      sub_1001F6F58();
    }

    sub_1001F6F98();

    v5 = v82;
    if (!v9)
    {
LABEL_3:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          v9 = 0;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
          goto LABEL_8;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_45;
    }
  }

  v25 = a4;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v28 = a2 + 40;
    do
    {

      v29 = sub_1001F6B48();

      v30 = [v27 isNullPredicateWithProperty:v29];

      v31 = v30;
      sub_1001F6F08();
      sub_1001C7F54();
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_10005669C(v33);
        sub_1001F6F58();
      }

      sub_1001F6F98();

      v28 += 16;
      --v26;
    }

    while (v26);
    v5 = v82;
  }

  v35 = *(a3 + 16);
  if (v35)
  {
    v36 = objc_opt_self();
    v37 = a3 + 40;
    do
    {

      v38 = sub_1001F6B48();

      v39 = [v36 isNotNullPredicateWithProperty:v38];

      v40 = v39;
      sub_1001F6F08();
      sub_1001C7F54();
      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_10005669C(v42);
        sub_1001F6F58();
      }

      sub_1001F6F98();

      v37 += 16;
      --v35;
    }

    while (v35);
    v5 = v82;
    v25 = a4;
  }

  v44 = v25 + 64;
  sub_1001C7F38();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;

  v50 = 0;
  while (v47)
  {
LABEL_32:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = v52 | (v50 << 6);
    v54 = *(*(v25 + 56) + 8 * v53);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = (*(v25 + 48) + 16 * v53);
      v57 = v56[1];
      v72 = *v56;
      *&v76[0] = _swiftEmptyArrayStorage;
      v58 = v54 + 32;
      v74 = v57;

      do
      {
        sub_10002F9B0(v58, &v80);
        sub_10002F9B0(&v80, &v77);
        sub_100019C0C(0, &qword_1002B34A8, NSNull_ptr);
        if (swift_dynamicCast())
        {

          v59 = objc_opt_self();
          v60 = sub_1001F6B48();
          v61 = [v59 isNullPredicateWithProperty:v60];
        }

        else
        {
          sub_100019C0C(0, &qword_1002B3480, off_100275DC0);
          sub_10002F9B0(&v80, &v77);

          v61 = sub_1001C7EA0(v72, v74, &v77);
        }

        v62 = v61;
        sub_1001F6F08();
        v63 = *((*&v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*&v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
        {
          sub_10005669C(v63);
          sub_1001F6F58();
        }

        sub_1001F6F98();

        sub_100019CCC(&v80);
        v58 += 32;
        --v55;
      }

      while (v55);
      v64 = *&v76[0];

      sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
      v65 = sub_10006E930(v64);

      sub_1001C777C(v65, &selRef_predicateMatchingAnyPredicates_);
      sub_1001F6F08();
      sub_1001C7F54();
      v68 = *(v66 + 16);
      v67 = *(v66 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_10005669C(v67);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v5 = v82;
      v25 = a4;
    }
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      sub_100019C0C(0, &qword_1002B3488, off_100275DC8);
      v69 = sub_10006E930(v5);

      sub_1001C777C(v69, &selRef_predicateMatchingAllPredicates_);
      return;
    }

    v47 = *(v44 + 8 * v51);
    ++v50;
    if (v47)
    {
      v50 = v51;
      goto LABEL_32;
    }
  }

LABEL_45:
  __break(1u);
}

id sub_1001C7EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1001F6B48();

  sub_10001AE68(a3, a3[3]);
  v5 = sub_1001F7E98();
  v6 = [swift_getObjCClassFromMetadata() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  sub_100019CCC(a3);
  return v6;
}

uint64_t sub_1001C7F60()
{

  return sub_1000375CC(0, v0, 0);
}

uint64_t sub_1001C7F80()
{
  v1 = sub_1000183C4(&qword_1002B23B8, &unk_1002087A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  type metadata accessor for PromotionalOfferData.SigningMethod(0);
  sub_100023520();
  __chkstk_darwin(v4);
  sub_100023510();
  v7 = (v6 - v5);
  v8 = type metadata accessor for PromotionalOfferData(0);
  sub_1001CA768(v0 + *(v8 + 20), v7, type metadata accessor for PromotionalOfferData.SigningMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CA168(v7, v3);
    v9 = *(v3 + 2);

    sub_1000374B8(v3, &qword_1002B23B8, &unk_1002087A0);
  }

  else
  {
    v9 = v7[2];
    v10 = v7[6];
    v11 = v7[7];

    sub_10003A36C(v10, v11);
  }

  return v9;
}

uint64_t sub_1001C80E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v98 = a7;
  v97 = a6;
  v96 = a5;
  v99 = a3;
  v95 = a1;
  v87 = sub_1001F68E8();
  sub_10001A278();
  v86 = v11;
  __chkstk_darwin(v12);
  sub_100023510();
  sub_100144CF8(v14 - v13);
  v89 = sub_1001F6968();
  sub_10001A278();
  v88 = v15;
  __chkstk_darwin(v16);
  sub_100023510();
  v85 = v18 - v17;
  v19 = sub_1000183C4(&qword_1002BBFC8, &unk_100219A10);
  __chkstk_darwin(v19 - 8);
  sub_100144CF8(&v82 - v20);
  v94 = sub_1001F6938();
  sub_10001A278();
  v91 = v21;
  __chkstk_darwin(v22);
  sub_100023510();
  sub_100144CF8(v24 - v23);
  v25 = sub_1001F6B98();
  sub_10001A278();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100023510();
  v31 = v30 - v29;
  v106 = *(v7 + 32);
  v32 = *(&v106 + 1);
  if (!*(&v106 + 1) || (v33 = *(v8 + 56), v33 >> 60 == 15) || (v34 = *(v8 + 48), v105 = *(v8 + 64), v35 = *(&v105 + 1), v36 = v106, !*(&v105 + 1)))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v45 = sub_1001F6688();
    sub_100019C94(v45, qword_1002E6180);

    sub_1001C8B74(v8, v103);
    v46 = sub_1001F6668();
    v47 = sub_1001F7298();
    sub_1000AC71C(v8);

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_1000E4544(*v8, *(v8 + 8), v103);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_1000E4544(v99, a4, v103);
      _os_log_impl(&_mh_execute_header, v46, v47, "Missing promotional offer (%s) params to verify cryptographic signature for %s", v48, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C(v49);
      sub_10003A72C(v48);
    }

    goto LABEL_12;
  }

  v83 = v105;
  v84 = v34;
  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100200CB0;
  *(v37 + 32) = v95;
  *(v37 + 40) = a2;
  *v103 = *v98;
  *(v37 + 48) = *v103;
  *(v37 + 64) = v99;
  *(v37 + 72) = a4;
  v104 = *v8;
  *(v37 + 80) = v104;
  v38 = v97;
  *(v37 + 96) = v96;
  *(v37 + 104) = v38;
  *(v37 + 112) = v36;
  *(v37 + 120) = v32;
  *(v37 + 128) = v83;
  *(v37 + 136) = v35;
  v102 = v37;

  sub_1000552A0(v103, &v100);

  sub_1000552A0(&v104, &v100);

  v39 = v84;
  sub_100040C5C(v84, v33);
  sub_10004F684(&v106, &v100);
  sub_10004F684(&v105, &v100);
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10003A2B4();
  sub_1001F6A68();

  sub_1001F6B88();
  v40 = sub_1001F6B68();
  v42 = v41;

  (*(v27 + 8))(v31, v25);
  if (v42 >> 60 != 15)
  {
    v52 = *(v98 + 40);
    if (v52)
    {
      v53 = *(v98 + 32);
      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v54 = sub_1001F6688();
      sub_100019C94(v54, qword_1002E6180);
      v55 = sub_1001F6668();
      v56 = sub_1001F72B8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v40;
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Attempting legacy verification for offer signing key generated in Xcode 11", v58, 2u);
        v59 = v58;
        v40 = v57;
        sub_10003A72C(v59);
      }

      v60 = sub_1000513C4();
      v50 = sub_1001C9AB4(v60, v61, v40, v42, v53, v52);
      sub_10003A36C(v40, v42);
      v62 = sub_1000513C4();
    }

    else
    {
      v100 = v39;
      v101 = v33;
      v64 = sub_1000513C4();
      sub_100040C70(v64, v65);
      sub_10003A3D8();
      v66 = v93;
      sub_1001F6908();
      v99 = v42;
      v67 = v94;
      sub_100018460(v66, 0, 1, v94);
      v68 = v66;
      v69 = v91;
      v70 = v92;
      (*(v91 + 32))(v92, v68, v67);
      v71 = sub_1001F6328();
      if (v72 >> 60 == 15)
      {
        (*(v69 + 8))(v70, v67);
        v73 = sub_1000513C4();
        sub_10003A36C(v73, v74);
        v43 = sub_1001CAA30();
        goto LABEL_6;
      }

      v75 = v72;
      v100 = v71;
      v101 = v72;
      v76 = v71;
      sub_100040C70(v71, v72);
      sub_10003A318();
      v77 = v90;
      sub_1001F6888();
      v78 = v85;
      sub_1001F6878();
      (*(v86 + 8))(v77, v87);
      v97 = v40;
      v100 = v40;
      v101 = v99;
      v79 = v92;
      v50 = sub_1001F6948();
      sub_10003A36C(v76, v75);
      v80 = sub_1000513C4();
      sub_10003A36C(v80, v81);
      (*(v88 + 8))(v78, v89);
      (*(v69 + 8))(v79, v67);
      v62 = v97;
      v63 = v99;
    }

    sub_10003A36C(v62, v63);
    return v50 & 1;
  }

  v43 = v39;
  v44 = v33;
LABEL_6:
  sub_10003A36C(v43, v44);
LABEL_12:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1001C8BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v9 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  v19 = (v4 + v18[6]);
  v20 = *v19 == 0xD000000000000011 && 0x800000010022DD60 == v19[1];
  if (v20 || (sub_1001F7EA8()) && (v28 = a4, sub_1001F64B8(), sub_1001F6468(), v21 = *(v11 + 8), v21(v14, v9), sub_1001F64E8(), sub_1001CA0C0(&qword_1002AD110, &type metadata accessor for Date, &protocol conformance descriptor for Date), v22 = sub_1001F6A78(), v21(v14, v9), v21(v17, v9), (v22 & 1) == 0) && ((v24 = (v5 + v18[11]), *v24 == a1) ? (v25 = v24[1] == a2) : (v25 = 0), (v25 || (sub_1001F7EA8()) && ((v26 = (v5 + v18[8]), *v26 == v29) ? (v27 = v26[1] == v28) : (v27 = 0), v27 || (sub_1001F7EA8())))
  {
    return *(v5 + v18[12] + 8);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001C8E10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D788;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001C8E64(char a1)
{
  result = 7566185;
  switch(a1)
  {
    case 1:
      result = 7627113;
      break;
    case 2:
      result = 6583649;
      break;
    case 3:
      result = 0x65636E6F6ELL;
      break;
    case 4:
      result = 6580578;
      break;
    case 5:
      result = 0x49746375646F7270;
      break;
    case 6:
      result = 0x746361736E617274;
      break;
    case 7:
      result = 0x656449726566666FLL;
      break;
    case 8:
      result = 7370853;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C8F68(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BC1D8, &qword_100219BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001AE68(a1, a1[3]);
  sub_1001CA714();
  sub_1001F8198();
  v8[31] = 0;
  sub_1001F6578();
  sub_1001CA0C0(&qword_1002AD1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1001F7DC8();
  if (!v1)
  {
    type metadata accessor for PromotionalOfferData.JWTPayload(0);
    v8[30] = 1;
    sub_1001F7DD8();
    v8[29] = 2;
    sub_1001F7D88();
    v8[28] = 3;
    sub_1001F7DC8();
    v8[27] = 4;
    sub_1001F7D88();
    v8[26] = 5;
    sub_1001F7D88();
    v8[25] = 6;
    sub_1001F7D18();
    v8[24] = 7;
    sub_1001F7D88();
    v8[15] = 8;
    sub_1001F7D68();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001C9288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = sub_1001F6578();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1000183C4(&qword_1002BC1C8, &qword_100219BA8);
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v55 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  __chkstk_darwin(v55);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v53 = a1;
  sub_10001AE68(a1, v14);
  sub_1001CA714();
  sub_1001F8178();
  v54 = v4;
  if (v2)
  {
    return sub_100019CCC(v53);
  }

  v49 = v6;
  v15 = v51;
  v66 = 0;
  sub_1001CA0C0(&qword_1002AD1E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16 = v52;
  v17 = v12;
  sub_1001F7CB8();
  v18 = v56;
  v19 = v4;
  v20 = *(v57 + 32);
  v20(v56, v9, v19);
  v65 = 1;
  v21 = sub_1001F7CC8();
  v22 = v55;
  *&v18[*(v55 + 20)] = v21;
  v64 = 2;
  v23 = sub_1001F7C78();
  v48 = v20;
  v24 = &v18[v22[6]];
  *v24 = v23;
  v24[1] = v25;
  v63 = 3;
  v26 = v49;
  v27 = v54;
  sub_1001F7CB8();
  v48(&v18[v22[7]], v26, v27);
  v62 = 4;
  v28 = sub_1001F7C78();
  v29 = &v18[v22[8]];
  *v29 = v28;
  v29[1] = v30;
  v61 = 5;
  v31 = sub_1001F7C78();
  v32 = v22;
  v33 = &v18[v22[9]];
  *v33 = v31;
  v33[1] = v34;
  v60 = 6;
  v35 = sub_1001F7C08();
  v36 = &v18[v22[10]];
  *v36 = v35;
  v36[1] = v37;
  v59 = 7;
  v38 = sub_1001F7C78();
  v39 = &v56[v22[11]];
  *v39 = v38;
  v39[1] = v40;
  v58 = 8;
  v41 = sub_1001F7C58();
  LOBYTE(v22) = v42;
  (*(v15 + 8))(v17, v16);
  v43 = v32[12];
  v44 = v56;
  v45 = &v56[v43];
  *v45 = v41;
  v45[8] = v22 & 1;
  sub_1001CA768(v44, v50, type metadata accessor for PromotionalOfferData.JWTPayload);
  sub_100019CCC(v53);
  return sub_1001CA7C8(v44);
}

unint64_t sub_1001C996C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C8E10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001C999C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C8E64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001C99E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C8E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C9A0C(uint64_t a1)
{
  v2 = sub_1001CA714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C9A48(uint64_t a1)
{
  v2 = sub_1001CA714();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001C9AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = sub_1001C9B88(a5, a6);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ECDSASignatureVerifier();
    inited = swift_initStackObject();
    *(inited + 16) = v11;
    *(inited + 24) = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    v13 = kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    v14 = ECDSASignatureVerifier.verify(data:signature:)(a3, a4, a1, a2);
    swift_setDeallocating();
    ECDSASignatureVerifier.deinit();
    swift_deallocClassInstance();
  }

  else
  {
    return 0;
  }

  return v14;
}

SecKeyRef sub_1001C9B88(unint64_t a1, unint64_t a2)
{
  v5 = sub_1001F6328();
  if (v6 >> 60 != 15)
  {
    v7 = v6;
    v8 = v5;
    switch(v6 >> 62)
    {
      case 1uLL:
        LODWORD(v9) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_24;
        }

        v9 = v9;
        goto LABEL_7;
      case 2uLL:
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        v12 = __OFSUB__(v10, v11);
        v9 = v10 - v11;
        if (!v12)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      case 3uLL:
        goto LABEL_12;
      default:
        v9 = BYTE6(v6);
LABEL_7:
        if (v9 <= 49)
        {
LABEL_12:
          sub_10003A36C(v5, v6);
          return 0;
        }

        v13 = sub_1001F63E8();
        if (__OFSUB__(v13, 49))
        {
          __break(1u);
        }

        else
        {
          v41 = a1;
          if (sub_1001F63E8() >= v13 - 49)
          {
            v14 = sub_1001F6398();
            v42 = v15;
            v43 = v14;
            sub_1000183C4(&qword_1002B1FF0, &unk_1002081D0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1001FEBE0;
            *(inited + 32) = kSecAttrKeyType;
            type metadata accessor for CFString(0);
            *(inited + 40) = kSecAttrKeyTypeEC;
            *(inited + 64) = v17;
            *(inited + 72) = kSecAttrKeyClass;
            *(inited + 104) = v17;
            *(inited + 80) = kSecAttrKeyClassPublic;
            sub_1001CA0C0(&qword_1002AC8D0, type metadata accessor for CFString, &unk_1001FE938);
            v18 = kSecAttrKeyType;
            v19 = kSecAttrKeyTypeEC;
            a1 = v42;
            v20 = kSecAttrKeyClass;
            v2 = v43;
            v21 = kSecAttrKeyClassPublic;
            sub_1001F69B8();
            error = 0;
            isa = sub_1001F63A8().super.isa;
            v23 = sub_1001F6988().super.isa;

            v24 = SecKeyCreateWithData(isa, v23, &error);

            if (v24)
            {
              sub_10003A380(v43, v42);
              sub_10003A36C(v8, v7);
              return v24;
            }

            if (qword_1002AC510 == -1)
            {
LABEL_16:
              v26 = sub_1001F6688();
              sub_100019C94(v26, qword_1002E6180);

              sub_100040C70(v2, a1);
              v27 = sub_1001F6668();
              v28 = sub_1001F7298();

              sub_10003A380(v2, a1);
              if (os_log_type_enabled(v27, v28))
              {
                v39 = v28;
                log = v27;
                v29 = swift_slowAlloc();
                v44 = swift_slowAlloc();
                *v29 = 136315650;
                swift_beginAccess();
                v30 = error;
                if (error)
                {
                  type metadata accessor for CFError(0);
                  sub_1001CA0C0(&qword_1002AFE30, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
                  v31 = sub_1001F7FE8();
                  v33 = v32;
                }

                else
                {
                  v31 = 0;
                  v33 = 0xE000000000000000;
                }

                v34 = sub_1000E4544(v31, v33, &v44);

                *(v29 + 4) = v34;
                *(v29 + 12) = 2080;
                *(v29 + 14) = sub_1000E4544(v41, a2, &v44);
                *(v29 + 22) = 2080;
                sub_100040C70(v2, a1);
                v35 = sub_1001F6308();
                v37 = v36;
                sub_10003A380(v2, a1);
                v38 = sub_1000E4544(v35, v37, &v44);

                *(v29 + 24) = v38;
                _os_log_impl(&_mh_execute_header, log, v39, "    Key creation failed with error: %s\n    Attempted DER Container: %s\n    Attempted Key Data: %s", v29, 0x20u);
                swift_arrayDestroy();

                sub_10003A380(v2, a1);
                sub_10003A36C(v8, v7);
              }

              else
              {
                sub_10003A36C(v8, v7);

                sub_10003A380(v2, a1);
              }

              return 0;
            }

LABEL_26:
            swift_once();
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_1001CA0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CA168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B23B8, &unk_1002087A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001CA1F0(uint64_t a1)
{
  sub_1001CA25C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1001CA25C(uint64_t a1)
{
  if (!qword_1002BC050)
  {
    v2 = type metadata accessor for PromotionalOfferData.JWTPayload(255);
    v3 = sub_1001CA0C0(&qword_1002BAC68, type metadata accessor for PromotionalOfferData.JWTPayload, &unk_100219B80);
    v4 = sub_1001CA0C0(&unk_1002BC058, type metadata accessor for PromotionalOfferData.JWTPayload, &unk_100219B58);
    v5 = type metadata accessor for JWS(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1002BC050);
    }
  }
}

uint64_t sub_1001CA33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F6578();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1001CAA40(*(a1 + *(a3 + 24) + 8));
  }

  return sub_10001C990(a1, a2, v6);
}

uint64_t sub_1001CA3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F6578();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100018460(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001CA4A0(uint64_t a1)
{
  sub_1001F6578();
  if (v1 <= 0x3F)
  {
    sub_100140004(319, &qword_1002ACF10, type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100140004(319, &qword_1002AD180, &type metadata for Int64);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001CA588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1001CAA40(*(a1 + 8));
  }

  v7 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  v8 = a1 + *(a3 + 20);

  return sub_10001C990(v8, a2, v7);
}

uint64_t sub_1001CA618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
    v8 = v5 + *(a4 + 20);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001CA698(uint64_t a1)
{
  result = type metadata accessor for PromotionalOfferData.SigningMethod(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001CA714()
{
  result = qword_1002BC1D0;
  if (!qword_1002BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1D0);
  }

  return result;
}

uint64_t sub_1001CA768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001CA7C8(uint64_t a1)
{
  v2 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PromotionalOfferData.JWTPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CA8F0);
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

unint64_t sub_1001CA92C()
{
  result = qword_1002BC1E0;
  if (!qword_1002BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1E0);
  }

  return result;
}

unint64_t sub_1001CA984()
{
  result = qword_1002BC1E8;
  if (!qword_1002BC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1E8);
  }

  return result;
}

unint64_t sub_1001CA9DC()
{
  result = qword_1002BC1F0;
  if (!qword_1002BC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC1F0);
  }

  return result;
}

uint64_t sub_1001CAA40@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void sub_1001CAA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v11 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FB4(v11, v12, v13, v14);
    v11 = v15;
  }

  if (a5 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v16 = (v11 + 32 * a5);
    v17 = v16[4];
    v18 = v16[5];
    v19 = v16[6];
    v20 = v16[7];
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3 & 0xFFFFFFFFFFFFFFLL;
    v16[7] = a4;
    sub_10003715C(v17, v18, v19, v20);
    *v5 = v11;
  }
}

void *sub_1001CAAEC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADD70, &qword_100200AE0);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 72;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADD70, &qword_100200AE0);
    return v2;
  }

  return result;
}

void *sub_1001CAB90(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADD30, qword_100205400);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 64;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADD30, qword_100205400);
    return v2;
  }

  return result;
}

void *sub_1001CAC34(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v9 = result;
    if (a5)
    {
      sub_1000183C4(&qword_1002ADC28, &qword_100200970);
      v10 = sub_1001F78F8();
      *(v10 + 16) = v5;
      for (i = (v10 + 56); ; i += 4)
      {
        --v5;
        *(i - 3) = v9;
        *(i - 2) = a2;
        *(i - 1) = a3;
        *i = a4;
        if (!v5)
        {
          break;
        }

        sub_10006E310(v9, a2, a3, a4);
      }
    }

    else
    {
      sub_10003715C(result, a2, a3, a4);
      return _swiftEmptyArrayStorage;
    }

    return v10;
  }

  return result;
}

void *sub_1001CAD00(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADA18, &qword_100200400);
      v6 = sub_1001F78F8();
      sub_1001CCC9C(v6);
      do
      {
        sub_1001CCC50();
        v3 += 64;
        --v4;
      }

      while (v4);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10004BDE8(v5, &qword_1002ADA18, &qword_100200400);
    return v2;
  }

  return result;
}

void *sub_1001CADA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a4;
    v7 = result;
    if (a4)
    {
      sub_1000183C4(&qword_1002ADE10, &unk_100200BA0);
      v10 = sub_1001F78F8();
      sub_1001CCC3C(v10);
      while (1)
      {
        v11 = v4 + v5;
        *v11 = v7;
        *(v11 + 8) = a2;
        *(v11 + 16) = a3;
        *(v11 + 22) = BYTE6(a3);
        *(v11 + 20) = WORD2(a3);
        if (!v6)
        {
          break;
        }

        v5 += 24;
        --v6;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void *sub_1001CAE60(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a4;
    v9 = result;
    if (a4)
    {
      sub_1000183C4(&qword_1002ADBB0, &qword_1002008F0);
      v10 = sub_1001F78F8();
      sub_1001CCC3C(v10);
      while (1)
      {
        v11 = v4 + v5;
        *v11 = v9;
        *(v11 + 8) = a2;
        *(v11 + 16) = a3;
        if (!v6)
        {
          break;
        }

        sub_10012DC6C(v9, a2);
        v5 += 24;
        --v6;
      }
    }

    else
    {
      sub_1000370B8(result, a2);
      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

__int128 *sub_1001CAF14(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      sub_1000183C4(&qword_1002ADC00, &qword_100205800);
      v6 = sub_1001F78F8();
      sub_1001CCC3C(v6);
      while (1)
      {
        v7 = (v2 + v3);
        v8 = *v5;
        v9 = v5[1];
        v10 = v5[3];
        v7[2] = v5[2];
        v7[3] = v10;
        *v7 = v8;
        v7[1] = v9;
        if (!v4)
        {
          break;
        }

        sub_100057CB8(v5, &v11, &qword_1002ADC00, &qword_100205800);
        v3 += 64;
        --v4;
      }
    }

    else
    {
      sub_10004BDE8(result, &qword_1002ADC00, &qword_100205800);
      return _swiftEmptyArrayStorage;
    }

    return v2;
  }

  return result;
}

void *sub_1001CAFE4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a3)
    {
      sub_1000183C4(&qword_1002BC2D0, &qword_100219E28);
      v6 = sub_1001F78F8();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        sub_10012ECF0(v5, a2);
        --v7;
      }
    }

    else
    {
      sub_1000375E0(result, a2);
      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

uint64_t sub_1001CB094(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v92 = a5;
  v93 = a6;
  v94 = a3;
  v95 = a4;
  v9 = a1;
  v89 = *(a1 + 192);
  v90 = 0;
  v91 = a1;
LABEL_2:
  sub_100047940();
  swift_beginAccess();
  sub_100047940();
  swift_beginAccess();
  while (2)
  {
    if (*(v9 + 200) != 1 || (*(v9 + 136) & 1) != 0)
    {
      goto LABEL_30;
    }

    switch(sub_1001933D8())
    {
      case 1u:
        v99 = v7;
        v100 = &v83;
        v32 = *(a2 + 104);
        v121 = *(a2 + 152);
        v33 = *(a2 + 136);
        v34 = *(a2 + 120);
        v120[0] = v32;
        v120[1] = v34;
        v120[2] = v33;
        v35 = *(a2 + 48);
        v97 = *(a2 + 56);
        v98 = v35;
        v36 = *(a2 + 16);
        v37 = *(a2 + 24);
        v38 = *(a2 + 64);
        v96 = *(a2 + 72);
        v40 = *(a2 + 32);
        v39 = *(a2 + 40);
        v41 = *(a2 + 80);
        v42 = *(a2 + 88);
        v43 = *(a2 + 96);
        sub_1001939D8(v120, v109);
        v44 = v99;
        v45 = sub_100191DF8(v120, v98, v97, v36, v37, v38, v96, v40, v39, v41, v42, v43, v92, v93);
        v7 = v44;
        if (v44)
        {
          sub_1001CCB10(v120);
          swift_getErrorValue();
          if (!sub_100191CDC(v111))
          {
            swift_willThrow();
          }

          v47 = *(a2 + 112);
          if (v47 == *(a2 + 120))
          {
            goto LABEL_43;
          }

          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (HIDWORD(v47))
          {
            goto LABEL_45;
          }

          if (v47 >= *(*(a2 + 104) + 16))
          {
            goto LABEL_46;
          }

          sub_1001CCC70(v47);
          if (!v57)
          {
            goto LABEL_49;
          }

          v58 = *(v56 + 48);
          v116[0] = *(v56 + 32);
          v116[1] = v58;
          v59 = v110;
          v118 = *(v56 + 72);
          v119 = *(v56 + 88);
          v117 = v110;
          v60 = sub_1001CCC1C(v48, v49, v50, v51, v52, v53, v54, v55, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
          sub_1001CCC1C(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
          sub_1000DFB14(v59, v116, v94);
          sub_100047940();
          v31 = sub_1001934DC(v74, v75, v76, v77, 1);
          sub_10004BDE8(v109, &qword_1002ADC00, &qword_100205800);

          v7 = 0;
          v9 = v91;
        }

        else
        {
          v68 = v45;
          v69 = v46;
          sub_1001CCB10(v120);
          v31 = sub_1001934DC(v68, v69 & 1, *(a2 + 16), *(a2 + 24), 0);
          v9 = v91;
        }

LABEL_24:
        if (!v31)
        {
          continue;
        }

        if (v31 == 2 || v90 == v89)
        {
          v79 = 1;
        }

        else
        {
          if (!__CFADD__(v90++, 1))
          {
            goto LABEL_2;
          }

          __break(1u);
LABEL_30:
          v79 = 0;
        }

        if (*(v9 + 184) == 1)
        {

          v80 = 0;
        }

        else
        {
          v81 = sub_1000069BC((*(v9 + 176) + 16));
          *(v9 + 184) = v81;

          if (v81)
          {
            v80 = 256;
          }

          else
          {
            v80 = 0;
          }
        }

        return v80 | v79;
      case 2u:
        goto LABEL_47;
      case 3u:
        continue;
      default:
        v10 = *(a2 + 112);
        if (v10 == *(a2 + 120))
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
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          JUMPOUT(0x1001CB55CLL);
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_41;
        }

        if (v10 >= *(*(a2 + 104) + 16))
        {
          goto LABEL_42;
        }

        sub_1001CCC70(v10);
        if (!v20)
        {
          goto LABEL_48;
        }

        v21 = *(v19 + 48);
        v112[0] = *(v19 + 32);
        v112[1] = v21;
        v22 = v110;
        v114 = *(v19 + 72);
        v115 = *(v19 + 88);
        v113 = v110;
        v23 = sub_1001CCC1C(v11, v12, v13, v14, v15, v16, v17, v18, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        sub_1001CCC1C(v23, v24, v25, v26, v27, v28, v29, v30, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        sub_1000DFB14(v22, v112, v94);
        if (v7)
        {
          v31 = sub_100193694(v7);
          v7 = 0;
        }

        else
        {
          sub_100047940();
          v31 = sub_1001934DC(v70, v71, v72, v73, 1);
        }

        sub_10004BDE8(v109, &qword_1002ADC00, &qword_100205800);
        goto LABEL_24;
    }
  }
}

uint64_t sub_1001CB56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v9 = v8;
  v90 = a7;
  v91 = a8;
  v86 = a5;
  v87 = a6;
  v92 = a3;
  v93 = a4;
  v10 = a2;
  v11 = a1;
  v83 = *(a1 + 128);
  v84 = 0;
  v94 = a1;
  v85 = a2;
LABEL_2:
  sub_100047940();
  swift_beginAccess();
  sub_100047940();
  result = swift_beginAccess();
  while (1)
  {
    do
    {
      v13 = *(v11 + 136);
      v14 = __OFSUB__(v13, 1);
      if (v13 != 1 || (*(v11 + 48) & 1) != 0)
      {
        goto LABEL_84;
      }

      v15 = *(v11 + 24);
      if ((v15 & 0x8000000000000000) != 0)
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
        goto LABEL_103;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_99;
      }

      v16 = *(v11 + 16);
      v17 = *(v16 + 16);
      v18 = v17 - 1;
      v19 = (v17 - 1) & (v15 + *(v11 + 40));
      if (v19 < 0 != v14)
      {
        goto LABEL_100;
      }

      if (HIDWORD(v19))
      {
        goto LABEL_101;
      }

      v20 = v19 < v15;
      v21 = v19 - v15;
      if (v20)
      {
        v22 = *(v16 + 16);
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 + v22;
      v14 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v14)
      {
        goto LABEL_102;
      }
    }

    while (!v24);
    if (v24 == 1)
    {
      if (v15 == *(v11 + 32))
      {
        goto LABEL_110;
      }

      if (v15 >= v17)
      {
        goto LABEL_112;
      }

      v25 = v16 + 32 * v15;
      if (*(v25 + 56) == 1)
      {
        goto LABEL_130;
      }

      if ((*(v25 + 32) & 0x8000000000000000) == 0)
      {
LABEL_60:
        v54 = *(v10 + 24);
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (HIDWORD(v54))
        {
          goto LABEL_117;
        }

        v55 = *(v10 + 16);
        v56 = *(v55 + 16);
        v57 = (v56 + 0xFFFFFFFF) & v54;
        if (v57 >= v56)
        {
          goto LABEL_118;
        }

        v58 = v55 + 32 * v57;
        v61 = *(v58 + 32);
        v59 = (v58 + 32);
        v60 = v61;
        if (v59[3] == 1)
        {
          goto LABEL_132;
        }

        if (v60 < 0)
        {
          goto LABEL_133;
        }

        v62 = v59[1];
        v63 = v59[2];
        sub_100047940();
        result = swift_beginAccess();
        if (HIDWORD(v62) < v62)
        {
          goto LABEL_119;
        }

        v64 = *(v60 + 24) + ((v63 >> 24) & 0xFFFF00 | BYTE6(v63)) + v62;
        v65 = sub_1001CCC8C();
        sub_100037154(v65);
        v66 = v92(v64, v64 + (HIDWORD(v62) - v62));
        if (v9)
        {
          v81 = sub_1001CCC8C();
          sub_100034300(v81);
        }

        v68 = sub_1001CC608(1uLL, v66, v67 & 1);
        v69 = sub_1001CCC8C();
        result = sub_100034300(v69);
        v11 = v94;
        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v15 >= v17)
    {
      goto LABEL_111;
    }

    v26 = v16 + 32;
    v27 = (v16 + 32 + 32 * v15);
    if (v27[3] == 1)
    {
      goto LABEL_129;
    }

    v28 = v18 & (v15 + 1);
    if (HIDWORD(v28))
    {
      goto LABEL_113;
    }

    v29 = (v26 + 32 * v28);
    v30 = v29[3];
    v31 = __OFSUB__(v30, 1);
    if (v30 == 1)
    {
      goto LABEL_131;
    }

    if ((*v27 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_68:
    result = sub_1001CC3F0(v10, v90, v91);
    if (v9)
    {
    }

    v68 = result;
LABEL_78:
    if (v68)
    {
      if (v68 == 2 || v84 == v83)
      {
        v78 = 1;
      }

      else
      {
        if (!__CFADD__(v84++, 1))
        {
          goto LABEL_2;
        }

        __break(1u);
LABEL_84:
        v78 = 0;
      }

      if (*(v11 + 120) == 1)
      {

        v79 = 0;
      }

      else
      {
        v80 = sub_1000069BC((*(v11 + 112) + 16));
        *(v11 + 120) = v80;

        if (v80)
        {
          v79 = 256;
        }

        else
        {
          v79 = 0;
        }
      }

      return v79 | v78;
    }
  }

  if ((*v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v88 = v82;
  v89 = v9;
  v32 = *(v10 + 16);
  v33 = *(v10 + 64);
  v34 = *(v10 + 80);
  if ((*(v10 + 48) & 1) == 0)
  {
    v35 = *(v10 + 24);
    if (v35 < 0)
    {
      goto LABEL_122;
    }

    if (HIDWORD(v35))
    {
      goto LABEL_123;
    }

    v36 = *(v10 + 40) + v35;
    v99 = *(v32 + 16);
    v98 = v99 - 1;
    v37 = (v99 - 1) & v36;
    if (v37 < 0 != v31)
    {
      goto LABEL_124;
    }

    if (HIDWORD(v37))
    {
      goto LABEL_125;
    }

    v20 = v37 < v35;
    v38 = v37 - v35;
    v39 = v99;
    if (!v20)
    {
      v39 = 0;
    }

    v40 = v38 + v39;
    v14 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v14)
    {
      goto LABEL_126;
    }

    if (v41 >= 1024)
    {
      v42 = 1024;
    }

    else
    {
      v42 = v41;
    }

    if (v41 < 0)
    {
      goto LABEL_120;
    }

    if (v41)
    {
      v82[1] = v32;
      v82[2] = v82;
      v43 = 0;
      v44 = 0;
      v96 = v35;
      v97 = v32 + 32;
      v82[0] = v33;
      v45 = (v33 + 8);
      v95 = v42;
      while (v43 < v42)
      {
        if (__OFADD__(v43, 1))
        {
          goto LABEL_104;
        }

        v46 = (v35 + v43) & v98;
        if (v46 < 0 != __OFSUB__(v43, -1))
        {
          goto LABEL_105;
        }

        if (HIDWORD(v46))
        {
          goto LABEL_106;
        }

        if (!v99)
        {
          goto LABEL_107;
        }

        v47 = (v97 + 32 * v46);
        if (v47[3] == 1)
        {
          goto LABEL_128;
        }

        v48 = *v47;
        if (*v47 < 0)
        {
          goto LABEL_59;
        }

        v49 = v47[1];
        v50 = v47[2];
        if (v43)
        {
          if (__OFSUB__(0x7FFFFFFFLL, v44))
          {
            goto LABEL_114;
          }

          v51 = HIDWORD(v49) - v49;
          if (HIDWORD(v49) < v49)
          {
            goto LABEL_115;
          }

          if (0x7FFFFFFF - v44 < v51)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v51 = HIDWORD(v49) - v49;
          if (HIDWORD(v49) < v49)
          {
            goto LABEL_108;
          }
        }

        if (v51 >= 0x7FFFFFFF)
        {
          v52 = 0x7FFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        v14 = __OFADD__(v44, v52);
        v44 += v52;
        if (v14)
        {
          goto LABEL_109;
        }

        sub_100047940();
        swift_beginAccess();
        v53 = *(v48 + 24) + ((v50 >> 24) & 0xFFFF00 | BYTE6(v50));
        *(v34 + 8 * v43) = v48;
        *(v45 - 1) = v53 + v49;
        *v45 = v52;
        result = swift_unknownObjectRetain();
        v42 = v95;
        v35 = v96;
        v45 += 2;
        if (++v43 == v95)
        {
          v43 = v95;
LABEL_59:
          v11 = v94;
          v33 = v82[0];
          goto LABEL_71;
        }
      }

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
LABEL_121:
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
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      return result;
    }
  }

  v43 = 0;
LABEL_71:
  if (!v33)
  {
    goto LABEL_134;
  }

  v70 = v33;
  v71 = v89;
  result = v86(v70, v43);
  v9 = v71;
  if (!v71)
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }

    v73 = result;
    v74 = v72;
    if (v43)
    {
      v75 = v43;
      do
      {
        v34 += 8;
        swift_unknownObjectRelease();
        --v75;
      }

      while (v75);
    }

    v76 = v43;
    v10 = v85;
    result = sub_1001CC608(v76, v73, v74 & 1);
    v68 = result;
    goto LABEL_78;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_127;
  }

  for (; v43; --v43)
  {
    v34 += 8;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001CBB4C(uint64_t a1, char a2)
{
  if (a2)
  {
    *(v2 + 136) = 0;
  }

  swift_beginAccess();
  sub_1001CC1DC();
  v5 = v4;
  result = swift_endAccess();
  if (v5)
  {
    swift_errorRetain();
    sub_1000A13B0(a1);
  }

  return result;
}

uint64_t sub_1001CBBD0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v5 < 0 != v4)
  {
    v5 += *(*(v0 + 16) + 16);
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1 < 0;
  v7 = v5 - 1;
  if (v6 == v4)
  {
    *(v0 + 40) = v7;
    *(v0 + 48) = 0;
  }

  return result;
}

uint64_t sub_1001CBC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  sub_1001CBEAC(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, v10, v11, v12, v13);
  swift_endAccess();
  if (*(v5 + 104) >= *(v5 + 56))
  {
    return 1;
  }

  v14 = 1;
  if (sub_100006980((*(v5 + 112) + 16), 1, 0))
  {
    v14 = 0;
    *(v5 + 120) = 0;
  }

  return v14;
}

void sub_1001CBCE4()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = sub_100193C5C();
  if (v3 >= *(v2 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v2 + 32 * v3;
  if (*(v4 + 56) != 1)
  {
    sub_100037154(*(v4 + 32));

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1001CBD90(uint64_t result)
{
  v2 = v1[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= *(*v1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = *v1 + 32 * v2;
  v6 = *(v3 + 32);
  v4 = (v3 + 32);
  v5 = v6;
  v7 = v4[3];
  if (v7 != 1)
  {
    v9 = v4[1];
    v10 = v4[2];
    if (v5 < 0)
    {
      v14 = (v10 & 0xFFFFFFFFFFFFFFLL) + result;
      if (__OFADD__(v10 & 0xFFFFFFFFFFFFFFLL, result))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v14 < 0)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v13 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(v14);
      v12 = v9;
    }

    else
    {
      v11 = (v9 + result);
      if (__CFADD__(v9, result))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v11 > HIDWORD(v9))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = v9 & 0xFFFFFFFF00000000 | v11;
      v13 = v10;
    }

    sub_100037154(v5);

    sub_1001CAA54(v5, v12, v13 & 0xFFFFFFFFFFFFFFLL, v7, v2);
    v15 = v1[5];
    v16 = __OFSUB__(v15, result);
    v17 = v15 - result;
    if (!v16)
    {
      v1[5] = v17;
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
}

void sub_1001CBEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002F26C(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6, a7, a8, v18, v19);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v12 = HIDWORD(a2) - a2;
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
      goto LABEL_9;
    }

    v13 = v8[5];
    v8 += 5;
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (!v14)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v16 = FileRegion.readableBytes.getter(a1 & 0x7FFFFFFFFFFFFFFFLL, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v17 = v8[5];
  v8 += 5;
  v15 = v17 + v16;
  if (!__OFADD__(v17, v16))
  {
LABEL_7:
    *v8 = v15;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1001CBF2C(unint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = a2;
  if ((a3 & 1) != 0 || a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v40 = 0;
      for (i = 0; ; ++i)
      {
        while (1)
        {
          v8 = v5;
          if (result == i)
          {
            return;
          }

          if (i >= result)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
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
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_49;
          }

          v10 = *(v4 + 8);
          v9 = *(v4 + 16);
          if (v9 == v10)
          {
            goto LABEL_50;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (HIDWORD(v10))
          {
            goto LABEL_52;
          }

          v11 = *v4;
          v12 = *(*v4 + 16);
          if (v10 >= v12)
          {
            goto LABEL_53;
          }

          v13 = (v11 + 32 * v10);
          if (v13[7] == 1)
          {
            goto LABEL_63;
          }

          v14 = v13[5];
          if ((v13[4] & 0x8000000000000000) != 0)
          {
            if (v14 < 0)
            {
              goto LABEL_60;
            }

            v16 = v14 - (v13[6] & 0xFFFFFFFFFFFFFFLL);
          }

          else
          {
            v15 = HIDWORD(v14) >= v14;
            v16 = (HIDWORD(v14) - v14);
            if (!v15)
            {
              goto LABEL_58;
            }
          }

          v5 -= v16;
          if (v8 < v16)
          {
            sub_1001CBD90(v8);
            return;
          }

          if (__OFSUB__(v8, v16))
          {
            goto LABEL_54;
          }

          if ((*(v4 + 32) & 1) == 0)
          {
            v17 = *(v4 + 24);
            v18 = v17 < 1;
            v19 = v17 - 1;
            v20 = v18;
            if (v18)
            {
              v19 = 0;
            }

            *(v4 + 24) = v19;
            *(v4 + 32) = v20;
          }

          v18 = v9 < v10;
          v21 = v9 - v10;
          if (!v18)
          {
            v12 = 0;
          }

          if ((v21 + v12) < 1)
          {
            goto LABEL_55;
          }

          v22 = v13[7];
          if (v22 == 1)
          {
            goto LABEL_64;
          }

          v23 = v13[4];
          v24 = v13[5];
          v25 = v13[6];
          sub_100037154(v23);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100111FB4(v11, v26, v27, v28);
            v11 = v29;
          }

          if (v10 >= *(v11 + 16))
          {
            goto LABEL_56;
          }

          v30 = (v11 + 32 * v10);
          v31 = v30[4];
          v32 = v30[5];
          v33 = v30[6];
          v34 = v30[7];
          v30[4] = 0;
          v30[5] = 0;
          v30[6] = 0;
          v30[7] = 1;
          sub_10003715C(v31, v32, v33, v34);
          *v4 = v11;
          *(v4 + 8) = (*(v11 + 16) + 0x1FFFFFFFFLL) & (v10 + 1);
          if (v23 < 0)
          {
            if (v24 < 0)
            {
              goto LABEL_61;
            }

            v35 = v24 - (v25 & 0xFFFFFFFFFFFFFFLL);
          }

          else
          {
            v35 = (HIDWORD(v24) - v24);
            if (HIDWORD(v24) < v24)
            {
              goto LABEL_59;
            }
          }

          v36 = *(v4 + 40);
          v37 = __OFSUB__(v36, v35);
          v38 = v36 - v35;
          if (v37)
          {
            goto LABEL_57;
          }

          *(v4 + 40) = v38;

          sub_10003715C(v23, v24, v25, v22);
          if (v22)
          {
            break;
          }

LABEL_43:
          ++i;
        }

        if (v40)
        {
          swift_retain_n();

          sub_10002FEFC(v39);

          goto LABEL_43;
        }

        v40 = v22;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }
}

void sub_1001CC1DC()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 != v1)
  {
    v29 = 0;
    v30 = v0;
    v3 = v0[5];
    v4 = *v0;
    while (1)
    {
      if ((v0[4] & 1) == 0)
      {
        v5 = v0[3];
        v6 = v5 < 1;
        v7 = v5 - 1;
        v8 = v6;
        if (v6)
        {
          v7 = 0;
        }

        v0[3] = v7;
        *(v0 + 32) = v8;
      }

      v9 = v1 - v2;
      if (v1 < v2)
      {
        v9 += *(v4 + 16);
      }

      if (v9 < 1)
      {
        break;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (HIDWORD(v2))
      {
        goto LABEL_38;
      }

      v10 = *(v4 + 16);
      if (v2 >= v10)
      {
        goto LABEL_39;
      }

      v11 = (v4 + 32 * v2);
      v12 = v11[7];
      if (v12 == 1)
      {
        goto LABEL_45;
      }

      if (v1 >= v2)
      {
        v10 = 0;
      }

      if ((v1 - v2 + v10) < 1)
      {
        goto LABEL_40;
      }

      v13 = v11[4];
      v14 = v11[5];
      v15 = v11[6];
      sub_100037154(v13);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100111FB4(v4, v16, v17, v18);
        v4 = v19;
      }

      if (v2 >= *(v4 + 16))
      {
        goto LABEL_41;
      }

      v20 = (v4 + 32 * v2);
      v21 = v20[4];
      v22 = v20[5];
      v23 = v20[6];
      v24 = v20[7];
      v20[4] = 0;
      v20[5] = 0;
      v20[6] = 0;
      v20[7] = 1;
      sub_10003715C(v21, v22, v23, v24);
      v25 = *(v4 + 16);
      if (v13 < 0)
      {
        if (v14 < 0)
        {
          goto LABEL_44;
        }

        v26 = v14 - (v15 & 0xFFFFFFFFFFFFFFLL);
      }

      else
      {
        v26 = (HIDWORD(v14) - v14);
        if (HIDWORD(v14) < v14)
        {
          goto LABEL_43;
        }
      }

      v27 = __OFSUB__(v3, v26);
      v3 -= v26;
      if (v27)
      {
        goto LABEL_42;
      }

      sub_10003715C(v13, v14, v15, v12);
      if (v12)
      {
        if (v29)
        {
          swift_retain_n();

          sub_10002FEFC(v28);
        }

        else
        {
          v29 = v12;
        }
      }

      v2 = (v25 + 0x1FFFFFFFFLL) & (v2 + 1);
      v0 = v30;
      if (v2 == v1)
      {
        *v30 = v4;
        v30[1] = v1;
        v30[5] = v3;
        return;
      }
    }

    __break(1u);
LABEL_37:
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
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

uint64_t sub_1001CC3F0(_OWORD *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  sub_1001CBCE4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100037154(v6);
  sub_100034300(v7);

  if (v7 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      if (*((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == 1)
      {
        v12 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x14);
        sub_100037154(v7);

        v13 = v12;
        v14 = a3;
        v15 = a2(v13, v11 & 0xFFFFFFFFFFFFFFLL, v9);
        if (!v3)
        {
          v14 = sub_1001CC608(1uLL, v15, v16 & 1);

          sub_100034300(v7);
          sub_100034300(v7);
          return v14;
        }
      }

      else
      {
        v14 = 0x8000000100224AB0;
        sub_1000274C4();
        swift_allocError();
        *v17 = 0xD00000000000001FLL;
        *(v17 + 8) = 0x8000000100224AB0;
        *(v17 + 16) = 9;
        swift_willThrow();
        sub_100037154(v7);
      }

      sub_100034300(v7);
      sub_100034300(v7);
      return v14;
    }

    __break(1u);
  }

  result = sub_100034300(v7);
  __break(1u);
  return result;
}

uint64_t sub_1001CC608(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  sub_1001CBF2C(a1, a2, a3 & 1);
  v9 = v8;
  v11 = v10;
  swift_endAccess();
  if (v4[7] < v4[12])
  {
    sub_1000069C8((v4[14] + 16), 1);
  }

  if (v9)
  {

    sub_1000A13B0(0);
  }

  return v11;
}

uint64_t sub_1001CC6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100106280(16);
  *(v4 + 16) = sub_1001CAC34(0, 0, 0, 1, v9);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 56) = 0;
  *(v4 + 96) = xmmword_1002141E0;
  sub_1000183C4(&qword_1002BA560, &qword_1002142E0);
  swift_bufferAllocate();
  v10 = swift_unknownObjectRetain();
  sub_1000069C8((v10 + 16), 1);
  swift_unknownObjectRelease();
  *(v4 + 112) = swift_dynamicCastClassUnconditional();
  *(v4 + 120) = 1;
  *(v4 + 128) = 16;
  *(v4 + 136) = 1;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  return v4;
}

uint64_t sub_1001CC7D4()
{

  return v0;
}

uint64_t sub_1001CC7FC()
{
  sub_1001CC7D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CC854(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001CC894(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1001CC8F0()
{
  sub_1001F77B8(49);

  sub_100047940();
  swift_beginAccess();
  if (*(v0 + 48))
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v1._countAndFlagsBits = 1702195828;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v1._object = v2;
  sub_1001F6CA8(v1);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  sub_1001F6CA8(v8);
  sub_1001F77B8(33);
  v9._object = 0x800000010022DDF0;
  v9._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v9);
  v3 = sub_1000069BC((*(v0 + 112) + 16));
  v4 = v3 == 0;
  if (v3)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v5._object = v6;
  sub_1001F6CA8(v5);

  v10._countAndFlagsBits = 0x6574617473202C29;
  v10._object = 0xEA0000000000203ALL;
  sub_1001F6CA8(v10);
  sub_1001F7A28();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_1001F6CA8(v11);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1001F6CA8(v12);

  return 0xD00000000000002DLL;
}

uint64_t sub_1001CCB64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CCBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return sub_100057CB8(va, &a27, v34, v35);
}

uint64_t sub_1001CCC50()
{

  return sub_100057CB8(v0, v3, v1, v2);
}

uint64_t NIOThreadPool.runIfActive<A>(eventLoop:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = EventLoop.makePromise<A>(of:file:line:)(a5, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, a5, a2);
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;

  NIOThreadPool.submit(_:)(sub_1001CE2A8, v11);

  return v10;
}

uint64_t NIOThreadPool.shutdownGracefully(queue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = sub_1001F6738();
  sub_10001A278();
  v39 = v5;
  __chkstk_darwin(v6);
  sub_100023510();
  v37 = v8 - v7;
  v35 = sub_1001F7308();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100023510();
  v14 = v13 - v12;
  v15 = sub_1001F72E8();
  __chkstk_darwin(v15);
  sub_100023510();
  v36 = sub_1001F6768();
  sub_10001A278();
  v42 = v16;
  __chkstk_darwin(v17);
  sub_100023510();
  v20 = v19 - v18;
  v34 = dispatch_group_create();
  v21 = *(v3 + 24);

  v32 = sub_10015F600(v21, v3, a1);
  sub_10004B17C();
  sub_1001F6758();
  aBlock = _swiftEmptyArrayStorage;
  sub_10004B244(&qword_1002AE9B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640, &qword_10020E200);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640, &qword_10020E200);
  sub_1001F7708();
  (*(v10 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v33 = sub_1001F7348();
  sub_10012F3D4();
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  v47 = sub_1001CE2EC;
  v48 = v22;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1000172C0;
  v46 = &unk_1002946A0;
  v23 = _Block_copy(&aBlock);
  v31 = v34;
  sub_1001F6758();
  sub_1001CEA58();
  sub_10004B244(v24, v25, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v23);

  v26 = *(v39 + 8);
  v26(v37, v38);
  v27 = *(v42 + 8);
  v27(v20, v36);

  sub_10004794C();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  v47 = sub_1001CE30C;
  v48 = v28;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1000172C0;
  v46 = &unk_1002946F0;
  v29 = _Block_copy(&aBlock);

  sub_1001F6758();
  sub_1001F7708();
  sub_1001F72D8();
  _Block_release(v29);

  v26(v37, v38);
  v27(v20, v36);
}

void sub_1001CD358(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F6738();
  sub_10001A278();
  v34 = v5;
  __chkstk_darwin(v6);
  sub_100023510();
  v9 = v8 - v7;
  sub_1001F6768();
  sub_10001A278();
  __chkstk_darwin(v10);
  sub_100023510();
  v15 = v14 - v13;
  v16 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    v30 = a2;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v32 = v12;
    v33 = v11;
    sub_1000A41C8();
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v16;
    v19[4] = v18;
    v39 = sub_1001CEA28;
    v40 = v19;
    sub_1001CEA70();
    v36 = 1107296256;
    v37 = sub_1000172C0;
    v38 = &unk_100294990;
    v31 = _Block_copy(aBlock);
    sub_1001CE978(v17, v16, v18, 1);
    v29 = v17;

    sub_1001F6758();
    v41 = _swiftEmptyArrayStorage;
    sub_1001CEA58();
    sub_10004B244(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
    sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
    sub_1001F7708();
    sub_1001F7338();
    _Block_release(v31);
    (*(v34 + 8))(v9, v4);
    (*(v32 + 8))(v15, v33);

    v22 = *(a1 + 72);
    v23 = sub_1000C6A50(1, v22);
    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    v26 = *(a1 + 56);
    *(a1 + 40) = v23;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v27 = *(a1 + 64);
    *(a1 + 64) = 0;
    sub_100160308(v25, v24, v26, v27);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      for (; v22; --v22)
      {
        sub_1001F73A8();
      }

      swift_beginAccess();
      v28 = *(a1 + 32);
      if (v28)
      {

        sub_100160308(v29, v16, v18, 1);
        *v30 = v28;
        *(a1 + 32) = 0;

        return;
      }
    }

    __break(1u);
  }

  else
  {
    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001CD6C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a3 | a2) < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v5 = result;
  v6 = result + 32;

  v7 = 1;
  LODWORD(v8) = a2;
  while (a3 < a2 == v7 || v8 != a3)
  {
    v10 = *(v5 + 16);
    if (v8 >= v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = v6 + 16 * v8;
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_21;
    }

    v8 = (v10 - 1) & (v8 + 1);
    if (HIDWORD(v8))
    {
      goto LABEL_17;
    }

    v13 = *(v11 + 8);
    v7 = v8 >= a2;
    v14 = 1;

    v12(&v14);
    result = sub_1000375E0(v12, v13);
  }
}

uint64_t sub_1001CD7F0(uint64_t a1)
{
  result = sub_10013B560();
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    pthread_join(*(v5 + 32), 0);
  }

  return result;
}

uint64_t (*NIOThreadPool.submit(_:)(uint64_t a1, uint64_t a2))(unsigned __int8 *a1)
{
  v5 = *(v2 + 24);

  result = sub_10015F558(v5, v2, a1, a2);
  if (result)
  {
    v8 = result;
    v9 = v7;
    v10[0] = 1;
    result(v10);
    return sub_1000375E0(v8, v9);
  }

  return result;
}

void sub_1001CD928(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(unsigned __int8 *a1)@<X8>)
{
  if (*(a1 + 64) != 1)
  {
    sub_10004794C();
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *a4 = sub_1001CE9C8;
    a4[1] = v20;

    return;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  sub_10004794C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1001CE978(v10, v8, v9, 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100112014(v10, v12, v13, v14);
    v10 = v15;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v10 + 16 * v9;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *(v16 + 32) = sub_1001CEA48;
  *(v16 + 40) = v11;
  sub_1000375E0(v17, v18);
  v19 = (*(v10 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v9 + 1);
  if (v8 == v19)
  {
    sub_1001143D4();
  }

  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  *(a1 + 40) = v10;
  *(a1 + 48) = v8;
  *(a1 + 56) = v19;
  v24 = *(a1 + 64);
  *(a1 + 64) = 1;
  sub_100160308(v21, v22, v23, v24);
  sub_1001F73A8();
  *a4 = 0;
  a4[1] = 0;
}

uint64_t NIOThreadPool.__allocating_init(numberOfThreads:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NIOThreadPool.init(numberOfThreads:)(a1);
  return v2;
}

uint64_t NIOThreadPool.init(numberOfThreads:)(uint64_t a1)
{
  *(v1 + 16) = dispatch_semaphore_create(0);
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v1 + 24) = Lock.init()();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 2;
  *(v1 + 72) = a1;
  return v1;
}

void sub_1001CDB7C(unint64_t a1)
{
  v2 = v1;
  while (1)
  {
    sub_1001F7398();

    Lock.lock()();
    v4 = *(v2 + 40);
    if (!*(v2 + 64))
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1001912BC();
        v4 = v28;
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      if (*(v4 + 16) <= a1)
      {
        goto LABEL_26;
      }

      *(v4 + a1 + 32) = 0;
      v24 = *(v2 + 40);
      v25 = *(v2 + 48);
      v26 = *(v2 + 56);
      *(v2 + 40) = v4;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      v27 = *(v2 + 64);
      *(v2 + 64) = 0;
      sub_100160308(v24, v25, v26, v27);
LABEL_18:
      v8 = 0;
      v10 = 0;
      goto LABEL_19;
    }

    if (*(v2 + 64) != 1)
    {
      goto LABEL_18;
    }

    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    if (v5 == v6)
    {
      break;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (HIDWORD(v6))
    {
      goto LABEL_27;
    }

    sub_100030A54(v6 | 0x1FFFFFF00000000, *(v2 + 40), *(v2 + 48));
    v8 = v7;
    v10 = v9;
    v11 = v5 - v6;
    if (v5 < v6)
    {
      v11 += *(v4 + 16);
    }

    if (v11 < 1)
    {
      goto LABEL_28;
    }

    sub_1001CE978(v4, v6, v5, 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100112014(v4, v12, v13, v14);
      v4 = v15;
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_29;
    }

    v16 = v4 + 16 * v6;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    sub_1000375E0(v17, v18);
    v19 = *(v4 + 16) + 0x1FFFFFFFFLL;
    v20 = *(v2 + 40);
    v21 = *(v2 + 48);
    v22 = *(v2 + 56);
    *(v2 + 40) = v4;
    *(v2 + 48) = v19 & (v6 + 1);
    *(v2 + 56) = v5;
    v23 = *(v2 + 64);
    *(v2 + 64) = 1;
    sub_100160308(v20, v21, v22, v23);
LABEL_19:
    Lock.unlock()();

    if (!v8)
    {
      return;
    }

    v29 = 0;
    v8(&v29);
    sub_1000375E0(v8, v10);
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
}

Swift::Void __swiftcall NIOThreadPool.start()()
{
  v1 = v0;
  v2 = *(v0 + 24);

  if ((sub_10015F37C(v2, v1) & 1) == 0)
  {
    v3 = dispatch_group_create();
    Lock.lock()();
    sub_1001CDEF8(v1);
    Lock.unlock()();
    v4 = *(v1 + 72);
    if (v4 < 0)
    {
      __break(1u);

      Lock.unlock()();
      __break(1u);
    }

    else
    {
      if (v4)
      {
        type metadata accessor for NIOThread();
        for (i = 0; i != v4; ++i)
        {
          dispatch_group_enter(v3);
          v8._countAndFlagsBits = sub_1001F7E28();
          sub_1001F6CA8(v8);

          sub_1000A41C8();
          v6 = swift_allocObject();
          v6[2] = v1;
          v6[3] = v3;
          v6[4] = i;

          v7 = v3;
          sub_1000B35F4(590172244, 0xE400000000000000, 0, sub_1001CE374, v6);
        }
      }

      sub_1001F72C8();
    }
  }
}

uint64_t sub_1001CDEF8(uint64_t a1)
{
  swift_beginAccess();
  *(a1 + 32) = _swiftEmptyArrayStorage;

  sub_100073F34(*(a1 + 72), 0);
  return swift_endAccess();
}

void sub_1001CDF68(uint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4)
{
  Lock.lock()();
  sub_1001CDFF0(a2, a1);
  Lock.unlock()();
  dispatch_group_leave(a3);
  sub_1001CDB7C(a4);
}

uint64_t sub_1001CDFF0(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {

    sub_1001F6F08();
    sub_1000375FC();
    sub_1001F6F98();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NIOThreadPool.deinit()
{

  sub_100160308(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t NIOThreadPool.__deallocating_deinit()
{
  NIOThreadPool.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CE108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    sub_10010E53C();
    v13 = swift_allocError();
    EventLoopPromise.fail(_:)(v13, a2, a5);
  }

  else
  {
    v8(v9);
    EventLoopPromise.succeed(_:)(v11, a2, a5);
    return (*(v7 + 8))(v11, a5);
  }
}

uint64_t sub_1001CE268()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CE2B8()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE2F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CE338()
{

  sub_1000A41C8();

  return _swift_deallocObject(v1, v2, v3);
}

void NIOThreadPool.shutdownGracefully(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F6748();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100023510();
  v10 = v9 - v8;
  sub_10004B17C();
  (*(v6 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v11 = sub_1001F7358();
  (*(v6 + 8))(v10, v4);
  NIOThreadPool.shutdownGracefully(queue:_:)(v11, a1, a2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOThreadPool.syncShutdownGracefully()()
{
  v0 = sub_1001F6738();
  __chkstk_darwin(v0);
  sub_100023510();
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  v1 = Lock.init()();
  sub_10012F3D4();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v11 = debugOnly(_:);
  v12 = 0;
  sub_1001CEA70();
  v8 = 1107296256;
  v9 = sub_1000172C0;
  v10 = &unk_100294768;
  _Block_copy(aBlock);
  v13 = _swiftEmptyArrayStorage;
  sub_1001CEA58();
  sub_10004B244(v3, v4, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
  sub_1001F7708();
  sub_1001F6818();
  swift_allocObject();
  v5 = sub_1001F67F8();
  sub_1000A41C8();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v5;

  NIOThreadPool.shutdownGracefully(_:)(sub_1000E5F68, v6);

  sub_1001F67E8();
  Lock.lock()();
  swift_beginAccess();
  if (*(v2 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  Lock.unlock()();
}

uint64_t sub_1001CE740()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE774()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1001CE7BC()
{
  result = qword_1002BC2D8;
  if (!qword_1002BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC2D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NIOThreadPool.WorkItemState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CE918);
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

uint64_t sub_1001CE94C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

void sub_1001CE978(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1001CE994()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001CE9F4()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1001CEAA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D880;
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

uint64_t sub_1001CEAEC(char a1)
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

uint64_t sub_1001CEB7C(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BC3B0, &qword_10021A180);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1001CF20C();
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

void *sub_1001CED24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BC3A0, &qword_10021A178);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001CF20C();
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
  sub_1001CF260(__src, v32);
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
  sub_100040BA4(v32);
  return memcpy(a2, __src, 0x50uLL);
}

unint64_t sub_1001CF0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CEAA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001CEAEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001CF108@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001CEAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001CF130(uint64_t a1)
{
  v2 = sub_1001CF20C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CF16C(uint64_t a1)
{
  v2 = sub_1001CF20C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001CF1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001CED24(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_1001CF20C()
{
  result = qword_1002BC3A8;
  if (!qword_1002BC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InAppQueueCheckRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001CF364);
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

unint64_t sub_1001CF3A0()
{
  result = qword_1002BC3B8;
  if (!qword_1002BC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3B8);
  }

  return result;
}

unint64_t sub_1001CF3F8()
{
  result = qword_1002BC3C0;
  if (!qword_1002BC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3C0);
  }

  return result;
}

unint64_t sub_1001CF450()
{
  result = qword_1002BC3C8;
  if (!qword_1002BC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3C8);
  }

  return result;
}

double sub_1001CF4AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = a2;
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      v7 = sub_1001CF6F8(a2, a3 & 0x3F) * a1;
      sub_1001F6508();
      sub_1000B2EC8();
      (*(v8 + 8))(a4);
      if (v6 == 3)
      {
        return round(v7 / 60.0) * 60.0;
      }
    }

    else
    {
      sub_1001F6508();
      sub_1000B2EC8();
      (*(v11 + 8))(a4);
      return dbl_10021A540[a3 & 0x3F];
    }
  }

  else
  {
    v9 = sub_1001ECBB4(a4, a1, a2);
    sub_1001F6508();
    sub_1000B2EC8();
    (*(v10 + 8))(a4);
    return dbl_10021A570[a3] * v9;
  }

  return v7;
}

unint64_t sub_1001CF628(unint64_t a1)
{
  result = sub_1001CF6BC(a1);
  if (result == 7)
  {
    v3 = sub_1001CF7CC(a1);
    if (v3 == 6)
    {
      v4 = sub_1001CF858(a1);
      if (v4 == 6)
      {
        return 4294967288;
      }

      else
      {
        return *&v4 | 0xFFFFFF80;
      }
    }

    else
    {
      return v3 | 0x40u;
    }
  }

  return result;
}

uint64_t sub_1001CF690(uint64_t result)
{
  v1 = (result & 0x3F) + 10;
  if (result >> 6 != 1)
  {
    v1 = (result & 0x3F) + 1000;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1001CF6BC(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1001CF6CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF6BC(*a1);
  *a2 = result;
  return result;
}

double sub_1001CF6F8(char a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = 2;
      goto LABEL_7;
    case 2:
      v5 = sub_1001CF6F8(3, a2);
      v6 = 24.0;
      goto LABEL_8;
    case 3:
      v5 = sub_1001CF6F8(4, a2) * 0.666666667;
      v6 = 3.0;
      goto LABEL_8;
    case 4:
      v3 = a2;
      v4 = &unk_10021A5D8;
      goto LABEL_10;
    case 5:
      v3 = a2;
      v4 = &unk_10021A5A8;
LABEL_10:
      result = v4[v3];
      break;
    case 6:
      result = sub_1001CF6F8(5, a2) * 12.0;
      break;
    default:
      v2 = 1;
LABEL_7:
      v5 = sub_1001CF6F8(v2, a2);
      v6 = 60.0;
LABEL_8:
      result = v5 / v6;
      break;
  }

  return result;
}

uint64_t sub_1001CF7CC(uint64_t a1)
{
  if ((a1 - 10) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 10;
  }
}

uint64_t sub_1001CF804@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF7CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF830()
{
  v1 = sub_100056690();
  result = sub_1001CF7E0(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1001CF858(uint64_t a1)
{
  if ((a1 - 1000) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 1000;
  }
}

uint64_t sub_1001CF890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF858(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF8BC()
{
  v1 = sub_100056690();
  result = sub_1001CF86C(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1001CF8E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CF628(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CF910()
{
  v1 = sub_100056690();
  result = sub_1001CF690(v1);
  *v0 = result;
  return result;
}

_BYTE *sub_1001CF948(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1001CFA14);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001CFA48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1001CFB14);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001CFB48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1001CFBE0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
        JUMPOUT(0x1001CFCB8);
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
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CFD20()
{
  result = qword_1002BC3D0;
  if (!qword_1002BC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3D0);
  }

  return result;
}

unint64_t sub_1001CFD78()
{
  result = qword_1002BC3D8;
  if (!qword_1002BC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3D8);
  }

  return result;
}

unint64_t sub_1001CFDD0()
{
  result = qword_1002BC3E0;
  if (!qword_1002BC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC3E0);
  }

  return result;
}

void sub_1001CFE54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1001CFEB8()
{
  v1 = v0;
  sub_100013EFC();
  ObjectType = swift_getObjectType();
  type metadata accessor for TransactionEntity();
  v3 = sub_1001EB55C(v0, ObjectType, &off_100294D38);
  v4 = sub_10013F1EC(v3, [v1 connection]);
  type metadata accessor for Transaction();
  v5 = v4;
  v6 = sub_1000C518C();
  v7 = sub_10006EB84(v6);

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_100013EFC();
  v10 = sub_1001D149C(v9, v7);

  return v10;
}

id sub_1001CFF90(uint64_t a1, unint64_t a2)
{
  v5 = [v2 connection];
  v6 = sub_1001F6B48();
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10004794C();
  v8 = swift_allocObject();
  v8[2] = sub_1001D43A0;
  v8[3] = v7;
  aBlock[4] = sub_1001D4948;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DF3E0;
  aBlock[3] = &unk_100294EB0;
  v9 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v10 = [v5 executeStatement:v6 error:aBlock bindings:v9];
  _Block_release(v9);

  if (!v10)
  {
    v12 = aBlock[0];
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v11 = aBlock[0];
LABEL_7:

  while (1)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v10;
    }

    __break(1u);
LABEL_11:
    sub_10001B230(&qword_1002AC510);
LABEL_4:
    v13 = sub_1001F6688();
    sub_100019C94(v13, qword_1002E6180);

    swift_errorRetain();
    v14 = sub_1001F6668();
    v15 = sub_1001F7298();

    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_7;
    }

    v16 = a1;
    a1 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *a1 = 136315394;
    *(a1 + 4) = sub_1000E4544(v16, a2, aBlock);
    *(a1 + 12) = 2080;
    swift_getErrorValue();
    v18 = sub_1001F7FE8();
    a2 = sub_1000E4544(v18, v19, aBlock);

    *(a1 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error deleting transactions for %s: %s", a1, 0x16u);
    swift_arrayDestroy();
    sub_10003A72C(v17);
    sub_10003A72C(a1);
  }
}

void sub_1001D0318(void *a1, uint64_t a2)
{
  v3 = sub_1001F6B48();
  [a1 bindString:v3 atPosition:1];
}

void *sub_1001D037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100019C0C(0, &qword_1002AC800, &off_100275DD8);
  sub_1000183C4(&unk_1002BC430, &qword_10020A068);
  inited = swift_initStackObject();
  *(inited + 32) = 0x695F656C646E7562;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = type metadata for String;
  *(inited + 80) = 0x6C616E696769726FLL;
  *(inited + 120) = &type metadata for UInt;
  *(inited + 88) = 0xEB0000000064695FLL;
  *(inited + 96) = a3;

  v9 = sub_1001F69B8();
  sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  v10 = sub_1001F69B8();
  sub_1001C7874(v9, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10);
  v12 = v11;

  type metadata accessor for TransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [v4 connection];
  v15 = [ObjCClassFromMetadata queryOnConnection:v14 predicate:v12];

  v22 = &_swiftEmptySetSingleton;
  v16 = swift_allocObject();
  *(v16 + 16) = &v22;
  sub_10004794C();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1001D1528;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1001D153C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CFE54;
  aBlock[3] = &unk_100294E38;
  v18 = _Block_copy(aBlock);

  [v15 enumerateMemoryEntitiesUsingBlock:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    [v15 deleteAllEntities];

    v20 = v22;

    return v20;
  }

  return result;
}

void sub_1001D068C(void *a1)
{
  v2 = sub_1001F6B48();
  v3 = [a1 numberValueForProperty:v2];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];

    sub_1001D193C(&v5, v4);
  }
}

uint64_t sub_1001D071C(void *a1)
{
  if (![a1 databaseID])
  {
    return 2;
  }

  [swift_getObjCClassFromObject() databaseEntityClass];
  swift_getObjCClassMetadata();
  sub_100019C0C(0, &unk_1002BC420, off_100275DD0);
  v3 = 3;
  if (swift_dynamicCastMetatype())
  {
    v4 = [a1 databaseID];
    v5 = [v1 connection];
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v4 onConnection:v5];

    LODWORD(v5) = [v6 deleteFromDatabase];
    if (v5)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return v3;
}

uint64_t sub_1001D0828(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (![a1 databaseID])
  {
    return 2;
  }

  [swift_getObjCClassFromObject() databaseEntityClass];
  swift_getObjCClassMetadata();
  sub_100019C0C(0, &unk_1002BC420, off_100275DD0);
  if (!swift_dynamicCastMetatype())
  {
    return 3;
  }

  v5 = [a1 databaseID];
  v6 = [v2 connection];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v5 onConnection:v6];

  type metadata accessor for Transaction();
  v8 = swift_dynamicCastClass();
  if (!v8 || (*(v8 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) != 0)
  {
    v13 = [a1 propertyValues];
    sub_1001D49BC();
    v14 = sub_1001F6998();

    sub_1001EB5C0(v14, ObjectType, &off_100294D38);

    sub_1001D49BC();
    v11.super.isa = sub_1001F6988().super.isa;

    [v7 setValuesWithDictionary:v11.super.isa];
  }

  else
  {
    v9 = a1;
    v10 = [v9 propertyValues];
    sub_1001D49BC();
    sub_1001F6998();

    sub_1001D49BC();
    v11.super.isa = sub_1001F6988().super.isa;

    [v7 setValuesWithDictionary:v11.super.isa];
  }

  return 4;
}

id sub_1001D0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v46 = a4;
  v49 = a3;
  v47 = a2;
  v9 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = [v6 connection];
  aBlock = 0;
  v51 = 0xE000000000000000;
  sub_1001F77B8(60);
  v56._countAndFlagsBits = 0x20455441445055;
  v56._object = 0xE700000000000000;
  sub_1001F6CA8(v56);
  v16 = [type metadata accessor for TransactionEntity() databaseTable];
  v17 = sub_1001F6B58();
  v19 = v18;

  v57._countAndFlagsBits = v17;
  v57._object = v19;
  sub_1001F6CA8(v57);

  v58._countAndFlagsBits = 0x2054455320;
  v58._object = 0xE500000000000000;
  sub_1001F6CA8(v58);
  v59._countAndFlagsBits = 0x6C616E696769726FLL;
  v59._object = 0xEB0000000064695FLL;
  sub_1001F6CA8(v59);
  v60._countAndFlagsBits = 0x202C3F203D20;
  v60._object = 0xE600000000000000;
  sub_1001F6CA8(v60);
  v61._countAndFlagsBits = 0xD000000000000016;
  v61._object = 0x8000000100222940;
  sub_1001F6CA8(v61);
  v62._countAndFlagsBits = 0x202C3F203D20;
  v62._object = 0xE600000000000000;
  sub_1001F6CA8(v62);
  v63._countAndFlagsBits = 0x6470755F7473616CLL;
  v63._object = 0xEC00000064657461;
  sub_1001F6CA8(v63);
  v64._countAndFlagsBits = 0x454857203F203D20;
  v64._object = 0xEB00000000204552;
  sub_1001F6CA8(v64);
  v65._countAndFlagsBits = 0x695F656C646E7562;
  v65._object = 0xE900000000000064;
  sub_1001F6CA8(v65);
  v66._countAndFlagsBits = 0x444E41203F203D20;
  v66._object = 0xE900000000000020;
  sub_1001F6CA8(v66);
  v67._object = 0x8000000100222970;
  v67._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v67);
  v68._countAndFlagsBits = 1059077408;
  v68._object = 0xE400000000000000;
  sub_1001F6CA8(v68);
  sub_1001F6B48();
  sub_100013EFC();

  (*(v11 + 16))(v15, a6, v9);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v45;
  (*(v11 + 32))(v22 + v20, v15, v9);
  v24 = v46;
  v23 = v47;
  v25 = (v22 + v21);
  v45 = a1;
  *v25 = a1;
  v25[1] = v23;
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v23;
  *v26 = v49;
  v26[1] = v24;
  sub_10004794C();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1001D13C8;
  *(v28 + 24) = v22;
  v54 = sub_1001D147C;
  v55 = v28;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1001DF3E0;
  v53 = &unk_100294DC0;
  v29 = _Block_copy(&aBlock);

  aBlock = 0;
  v30 = v48;
  v31 = [v48 executeStatement:&aBlock error:&aBlock bindings:v29];
  _Block_release(v29);

  if (!v31)
  {
    v33 = aBlock;
    sub_100013EFC();
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v32 = aBlock;
LABEL_7:

  while (1)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v31;
    }

    __break(1u);
LABEL_11:
    sub_10001B230(&qword_1002AC510);
LABEL_4:
    v34 = sub_1001F6688();
    sub_100019C94(v34, qword_1002E6180);

    swift_errorRetain();
    v35 = sub_1001F6668();
    v36 = sub_1001F7298();

    if (!os_log_type_enabled(v35, v36))
    {

      goto LABEL_7;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v27;
    v27 = v39;
    aBlock = v39;
    *v37 = 136315650;
    *(v37 + 4) = sub_1000E4544(v45, v40, &aBlock);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1000E4544(v49, v24, &aBlock);
    *(v37 + 22) = 2112;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 24) = v41;
    *v38 = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Failed to update original ID for %s/%s: %@", v37, 0x20u);
    sub_1001327E0(v38);
    sub_10003A72C(v38);
    swift_arrayDestroy();
    sub_10003A72C(v27);
    sub_10003A72C(v37);
  }
}

void sub_1001D10C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a2];
  [a1 bindNumber:v7 atPosition:1];

  sub_1001F6428();
  [a1 bindDouble:2 atPosition:?];
  sub_1001F6438();
  [a1 bindDouble:3 atPosition:?];
  v8 = sub_1001F6B48();
  [a1 bindString:v8 atPosition:4];

  v9 = sub_1001F6B48();
  [a1 bindString:v9 atPosition:5];
}

id sub_1001D11EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseTransaction();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001D1244(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DatabaseTransaction();
  v3 = objc_msgSendSuper2(&v5, "initWithConnection:", a1);

  return v3;
}

id sub_1001D12BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseTransaction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D1314()
{
  v1 = sub_1001F6508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1001D13C8(void *a1)
{
  v3 = *(sub_1001F6508() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  sub_1001D10C8(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_1001D1484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001D149C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4.super.isa = sub_1001F6F18().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithDatabaseEntity:a1 properties:v4.super.isa];

  return v5;
}

BOOL sub_1001D1564(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1001F8068();
  sub_1001F6C28();
  sub_1001F80D8();
  sub_1001D49B0();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1001F7EA8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1001D2B78(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1001D16AC(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1001F6608();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = *v2;
  sub_1001D48EC(&qword_1002BBAB8, &protocol conformance descriptor for Calendar.Component);
  v30 = a2;
  sub_1001F69F8();
  v27 = v10;
  v28 = v10 + 56;
  sub_1001D49B0();
  v13 = ~v12;
  v29 = v6 + 16;
  v26 = v6 + 8;
  while (1)
  {
    v14 = v11 & v13;
    v15 = (1 << (v11 & v13)) & *(v28 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      v20 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v6 + 16))(v9, v30, v4);
      v31 = *v20;
      sub_1001D2CE0(v9, v14, isUniquelyReferenced_nonNull_native);
      *v20 = v31;
      (*(v6 + 32))(v25, v22, v4);
      return v15 == 0;
    }

    v16 = *(v6 + 72) * v14;
    v17 = *(v6 + 16);
    v17(v9, *(v27 + 48) + v16, v4);
    sub_1001D48EC(&qword_1002BC460, &protocol conformance descriptor for Calendar.Component);
    v18 = sub_1001F6B28();
    v19 = *(v6 + 8);
    v19(v9, v4);
    if (v18)
    {
      break;
    }

    v11 = v14 + 1;
  }

  v19(v30, v4);
  v17(v25, *(v27 + 48) + v16, v4);
  return v15 == 0;
}

BOOL sub_1001D193C(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1001F8058();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1001D2F44(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1001D1A0C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1001F8068();
  sub_100159E50(a2);
  sub_1001F6C28();

  sub_1001F80D8();
  sub_1001D49B0();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xED0000746E65746ELL;
      v10 = 0x6F43646574736F68;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1684957547;
          break;
        case 2:
          v10 = sub_1001D4974();
          break;
        case 3:
          v10 = sub_1000EC528();
          break;
        case 4:
          v10 = sub_1001D4994();
          break;
        default:
          break;
      }

      v11 = 0x6F43646574736F68;
      v12 = 0xED0000746E65746ELL;
      switch(a2)
      {
        case 1:
          v12 = 0xE400000000000000;
          v11 = 1684957547;
          break;
        case 2:
          sub_1000EC720();
          v12 = 0xEB00000000737265;
          break;
        case 3:
          sub_1001D49C8();
          v12 = 0xED00007372656666;
          break;
        case 4:
          sub_1001D49DC();
          v12 = 0xE900000000000065;
          break;
        default:
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v14 = sub_1001F7EA8();

      if (v14)
      {
        goto LABEL_21;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1001D3048(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001D1C7C(_BYTE *a1, char a2)
{
  v4 = *v2;
  v19 = a2 & 1;
  sub_1000BE87C(*(*v2 + 40));
  sub_1001D49B0();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    if (a2)
    {
      v9 = 1634497893;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0x80000001002223B0;
    }

    while (1)
    {
      v11 = *(*(v4 + 48) + v7) ? 1634497893 : 0xD000000000000010;
      v12 = *(*(v4 + 48) + v7) ? 0xE400000000000000 : 0x80000001002223B0;
      if (v11 == v9 && v12 == v10)
      {
        break;
      }

      v14 = sub_1001F7EA8();

      if (v14)
      {
        goto LABEL_22;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v16 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v18;
    v16 = v19;
    sub_1001D32FC(v19, v7, isUniquelyReferenced_nonNull_native);
    *v18 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1001D1E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&unk_1002BC450, &unk_10020A100);
  result = sub_1001F7778();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1001D34D8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1001F8068();
    sub_1001F6C28();
    result = sub_1001F80D8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D206C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1001F6608();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000183C4(&qword_1002BC468, &qword_10021A690);
  result = sub_1001F7778();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1001D34D8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1001D48EC(&qword_1002BBAB8, &protocol conformance descriptor for Calendar.Component);
    result = sub_1001F69F8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D23B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&qword_1002BC440, &qword_10021A678);
  result = sub_1001F7778();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1001D34D8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1001F8058();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001D25D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&unk_1002BC470, qword_10021A698);
  v4 = sub_1001F7778();
  v5 = v4;
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
    v12 = v4 + 56;
    if (v10)
    {
LABEL_6:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1001D28D8);
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_12:
        v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        v17 = sub_1001F80D8();
        v18 = -1 << *(v5 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v23 && (v22 & 1) != 0)
            {
              goto LABEL_29;
            }

            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v12 + 8 * v20);
          }

          while (v25 == -1);
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        }

        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v5 + 48) + v21) = v16;
        ++*(v5 + 16);
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1001D34D8(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1001D28EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&qword_1002BC448, &unk_10021A680);
  result = sub_1001F7778();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1001D34D8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1001F8068();
    sub_1001F6C28();

    result = sub_1001F80D8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1001D2B78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1001D1E10(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1001D3C48(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1001F8068();
      sub_1001F6C28();
      v16 = sub_1001F80D8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1001F7EA8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1001D353C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1001D2CE0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1001F6608();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D206C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1001D3E7C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1001D48EC(&qword_1002BBAB8, &protocol conformance descriptor for Calendar.Component);
      v14 = sub_1001F69F8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1001D48EC(&qword_1002BC460, &protocol conformance descriptor for Calendar.Component);
        v16 = sub_1001F6B28();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1001D3674();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_1001D2F44(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D23B0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1001D4180(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_1001F8058();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1001D38A8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1001F7FB8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1001D3048(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001D25D4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1001D39C8();
        goto LABEL_26;
      }

      sub_1001D43A8(v6 + 1);
    }

    v8 = *v3;
    sub_1001F8068();
    sub_100159E50(v5);
    sub_1001F6C28();

    sub_1001F80D8();
    sub_1001D49B0();
    a2 = v10 & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v9;
      while (1)
      {
        v12 = 0xED0000746E65746ELL;
        v13 = 0x6F43646574736F68;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xE400000000000000;
            v13 = 1684957547;
            break;
          case 2:
            v13 = sub_1001D4974();
            break;
          case 3:
            v13 = sub_1000EC528();
            break;
          case 4:
            v13 = sub_1001D4994();
            break;
          default:
            break;
        }

        v14 = 0x6F43646574736F68;
        v15 = 0xED0000746E65746ELL;
        switch(v5)
        {
          case 1:
            v15 = 0xE400000000000000;
            v14 = 1684957547;
            break;
          case 2:
            sub_1000EC720();
            v15 = 0xEB00000000737265;
            break;
          case 3:
            sub_1001D49C8();
            v15 = 0xED00007372656666;
            break;
          case 4:
            sub_1001D49DC();
            v15 = 0xE900000000000065;
            break;
          default:
            break;
        }

        if (v13 == v14 && v12 == v15)
        {
          break;
        }

        v17 = sub_1001F7EA8();

        if (v17)
        {
          goto LABEL_30;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_29:

LABEL_30:
      sub_1001F7FB8();
      __break(1u);
      JUMPOUT(0x1001D32D4);
    }
  }

LABEL_26:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v18 + 16) = v21;
}

uint64_t sub_1001D32FC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1001D28EC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001D3B08();
      goto LABEL_27;
    }

    sub_1001D4690(v6 + 1);
  }

  v8 = *v3;
  result = sub_1000BE87C(*(*v3 + 40));
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 1634497893;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v5)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0x80000001002223B0;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 1634497893 : 0xD000000000000010;
      v14 = *(*(v8 + 48) + a2) ? 0xE400000000000000 : 0x80000001002223B0;
      if (v13 == v11 && v14 == v12)
      {
        goto LABEL_30;
      }

      v16 = sub_1001F7EA8();

      if (v16)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = sub_1001F7FB8();
  __break(1u);
  return result;
}

uint64_t sub_1001D34D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10021A610;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1001D353C()
{
  v2 = v0;
  sub_1000183C4(&unk_1002BC450, &unk_10020A100);
  v3 = *v0;
  v4 = sub_1001F7768();
  if (*(v3 + 16))
  {
    v5 = sub_1001D494C();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }
}

void *sub_1001D3674()
{
  v1 = v0;
  v2 = sub_1001F6608();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000183C4(&qword_1002BC468, &qword_10021A690);
  v6 = *v0;
  v7 = sub_1001F7768();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1001D38A8()
{
  v2 = v0;
  sub_1000183C4(&qword_1002BC440, &qword_10021A678);
  v3 = *v0;
  v4 = sub_1001F7768();
  if (*(v3 + 16))
  {
    result = sub_1001D494C();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + 8 * v16) = *(*(v3 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

void *sub_1001D39C8()
{
  v1 = v0;
  sub_1000183C4(&unk_1002BC470, qword_10021A698);
  v2 = *v0;
  v3 = sub_1001F7768();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1001D3B08()
{
  v1 = v0;
  sub_1000183C4(&qword_1002BC448, &unk_10021A680);
  v2 = *v0;
  v3 = sub_1001F7768();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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