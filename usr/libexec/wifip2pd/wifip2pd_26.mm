Swift::Bool __swiftcall NSXPCConnection.has(capability:for:)(Swift::String capability, Swift::String a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_1002014E0();
    if (swift_dynamicCast())
    {
      if ([v8 count] < 1)
      {
      }

      else
      {
        v5 = String._bridgeToObjectiveC()();
        v6 = [v8 containsObject:v5];

        if (v6)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    sub_100016290(v11, &qword_10058BA80, &qword_1004818C0);
  }

  return 0;
}

uint64_t NWConnection.send<A>(_:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for NWConnection.SendCompletion();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v33 = a2;
  v34 = v5;

  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_12;
    }

    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
LABEL_10:
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }

    __break(1u);
LABEL_8:
    LODWORD(v16) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
    }

    v16 = v16;
    goto LABEL_10;
  }

  if (v15)
  {
    goto LABEL_8;
  }

  v16 = BYTE6(v14);
LABEL_13:
  v31 = a3;
  v35 = bswap64(v16);
  v20 = sub_10004F3B0(&v35, &v36);
  v22 = v21;
  v38 = v20;
  v39 = v21;
  v37[3] = &type metadata for Data;
  v37[4] = &protocol witness table for Data;
  v37[0] = v12;
  v37[1] = v14;
  v23 = sub_100029B34(v37, &type metadata for Data);
  v24 = *v23;
  v25 = v23[1];
  v32 = v12;
  sub_10000AB0C(v20, v22);
  sub_10000AB0C(v12, v14);
  sub_100178A18(v24, v25, &v38);
  sub_100002A00(v37);
  v26 = v38;
  v27 = v39;
  v28 = swift_allocObject();
  v29 = v31;
  *(v28 + 16) = v33;
  *(v28 + 24) = v29;
  *v11 = sub_100201690;
  v11[1] = v28;
  (*(v9 + 104))(v11, enum case for NWConnection.SendCompletion.contentProcessed(_:), v8);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_1000124C8(v26, v27);
  sub_1000124C8(v32, v14);
  sub_1000124C8(v20, v22);
  return (*(v9 + 8))(v11, v8);
}

uint64_t NWConnection.send(_:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NWConnection.SendCompletion();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *v9 = sub_10020152C;
  v9[1] = v10;
  (*(v7 + 104))(v9, enum case for NWConnection.SendCompletion.contentProcessed(_:), v6);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001FFAF8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10005DC58(&qword_100591358, &qword_100498860);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002015C8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100016290(v5, &qword_100591358, &qword_100498860);
  }

  v11.n128_f64[0] = (*(v7 + 32))(v9, v5, v6);
  sub_100201638(v11);
  v12 = Error.localizedDescription.getter();
  a2(v12);

  return (*(v7 + 8))(v9, v6);
}

char *Socket.init(domain:type:proto:)(int a1, int a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = socket(a1, a2, a3);
  *(v4 + 16) = v12;
  if ((v12 & 0x80000000) == 0)
  {
    return v4;
  }

  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_6;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v23 = v16;
  *v15 = 136315138;
  v17 = errno.getter();
  result = strerror(v17);
  if (result)
  {
    v19 = String.init(cString:)();
    v21 = sub_100002320(v19, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create socket: %s", v15, 0xCu);
    sub_100002A00(v16);

LABEL_6:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t Socket.__allocating_init(rawValue:)(int a1)
{
  result = swift_allocObject();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t Socket.init(rawValue:)(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
    return v1;
  }

  return result;
}

uint64_t Socket.__deallocating_deinit()
{
  close(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1001FFF7C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for RoutingSocket(0);
  if (!a1)
  {
    goto LABEL_16;
  }

  v7 = result;
  v8 = *(result + 24);
  v9 = a2 - a1;
  result = write(*(*(a3 + v8) + 16), a1, v9);
  if ((result & 0x8000000000000000) != 0)
  {
    if (result >= 0xFFFFFFFF80000000)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      result = read(*(*(a3 + v8) + 16), a1, v9);
      if (result < 1)
      {
        break;
      }

      if (a1[5] == *(a3 + *(v7 + 20)))
      {
        return result;
      }
    }
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_10:
  if (result == -1)
  {
    v10 = errno.getter();
  }

  else
  {
    v10 = result;
  }

  sub_10000B02C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_100200090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 6) == 1)
  {
    v4 = a2 - result;
    v5 = 92;
    while (1)
    {
      v8 = v5 + 16;
      if (__OFADD__(v5, 16))
      {
        break;
      }

      if (!result)
      {
        if (v8 >= 1)
        {
          return result;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v4 < v8)
      {
        return result;
      }

      v9 = result + v5;
      v10 = *(result + v5);
      if (*(result + v5 + 1) != 18)
      {
        goto LABEL_3;
      }

      if (__OFADD__(v5, v10))
      {
        goto LABEL_26;
      }

      if (v10 == 20 && v4 >= v5 + v10)
      {
        v11 = *(v9 + 5);
        v12 = *(v9 + 6);
        v24 = *(v9 + 8);
        v25 = *(v9 + 16);
        v22 = v24;
        v23 = v25;
        v13 = result;
        v14 = a4;
        if (v12)
        {
          if (v12 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v21 = v12;
            memcpy(__dst, &v22 + v11, v12);
            v16 = *__dst;
            v17 = v19 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v21 << 16)) << 32);
            v19 = v17;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v15 = __DataStorage.init(bytes:length:)();
            v16 = v12 << 32;
            v17 = v15 | 0x4000000000000000;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0xC000000000000000;
        }

        v18 = sub_1000172CC(v16, v17);
        *v14 = v18;
        *(v14 + 4) = WORD2(v18);
        *(v14 + 6) = BYTE6(v18) & 1;
        v7 = __OFADD__(v5, 20);
        v5 += 20;
        if (v7)
        {
          goto LABEL_28;
        }

        a4 = v14;
        result = v13;
        if ((v18 & 0x1000000000000) == 0)
        {
          return result;
        }
      }

      else
      {
LABEL_3:
        if (v10 <= 0x10)
        {
          v6 = 16;
        }

        else
        {
          v6 = *(result + v5);
        }

        v7 = __OFADD__(v5, v6);
        v5 += v6;
        if (v7)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100200284(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  result = type metadata accessor for RoutingSocket(0);
  if (!a1)
  {
    goto LABEL_24;
  }

  v9 = result;
  v10 = *(result + 24);
  v11 = a2 - a1;
  v12 = write(*(*(a3 + v10) + 16), a1, v11);
  if (v12 < 0)
  {
    v13 = v12;
    if (errno.getter() != 3 || a4 != 2)
    {
      result = errno.getter();
      if (result != 17 || a4 != 1)
      {
        if (v13 >= 0xFFFFFFFF80000000)
        {
          if (v13 != -1)
          {
            v14 = v13;
            goto LABEL_20;
          }

LABEL_19:
          v14 = errno.getter();
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    result = read(*(*(a3 + v10) + 16), a1, v11);
    if (result < 1)
    {
      break;
    }

    if (a1[5] == *(a3 + *(v9 + 20)))
    {
      return result;
    }
  }

  if (result < 0)
  {
    v14 = result;
    result = errno.getter();
    if (result != 35)
    {
      result = errno.getter();
      if (result != 35)
      {
        if (v14 >= 0xFFFFFFFF80000000)
        {
          if (v14 != -1)
          {
            v14 = v14;
LABEL_20:
            sub_10000B02C();
            swift_allocError();
            *v15 = v14;
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
            return swift_willThrow();
          }

          goto LABEL_19;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100200420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingSocket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100200484(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSocket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002004E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_1000124C8(v7, v6);
      *&v24 = v7;
      *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_100200A08(&v24, a2, v3);
      v9 = v24;
      v10 = *(&v24 + 1) | 0x4000000000000000;
    }

    else
    {
      v23 = a3;
      sub_1000124C8(v7, v6);
      *&v24 = v7;
      WORD4(v24) = v6;
      BYTE10(v24) = BYTE2(v6);
      BYTE11(v24) = BYTE3(v6);
      BYTE12(v24) = BYTE4(v6);
      BYTE13(v24) = BYTE5(v6);
      BYTE14(v24) = BYTE6(v6);
      sub_100200284(&v24, &v24 + BYTE6(v6), a2, v23);
      v9 = v24;
      v10 = DWORD2(v24) | ((WORD6(v24) | (BYTE14(v24) << 16)) << 32);
    }

    *a1 = v9;
    a1[1] = v10;
    return;
  }

  if (v8 != 2)
  {
    *(&v24 + 7) = 0;
    *&v24 = 0;
    sub_100200284(&v24, &v24, a2, a3);
    return;
  }

  sub_1000124C8(v7, v6);
  *&v24 = v7;
  *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v11 = *(&v24 + 1);
  v13 = *(v24 + 16);
  v12 = *(v24 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  v17 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v18 = __OFSUB__(v12, v13);
  v19 = v12 - v13;
  if (v18)
  {
    goto LABEL_17;
  }

  v20 = __DataStorage._length.getter();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  sub_100200284((v15 + v17), v15 + v17 + v21, a2, v3);
  *a1 = v24;
  a1[1] = v11 | 0x8000000000000000;
}

void sub_10020077C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1000124C8(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_100200AD4(&v21, a2);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000124C8(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      sub_1001FFF7C(&v21, &v21 + BYTE6(v4), a2);
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    sub_1001FFF7C(&v21, &v21, a2);
    return;
  }

  sub_1000124C8(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = __DataStorage._length.getter();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  sub_1001FFF7C((v13 + v15), v13 + v15 + v19, a2);
  *a1 = v21;
  a1[1] = v9 | 0x8000000000000000;
}

void sub_100200A08(int *a1, uint64_t a2, int a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = __DataStorage._bytes.getter();
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = __DataStorage._offset.getter();
  v11 = v6 - v10;
  if (__OFSUB__(v6, v10))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v7 - v6;
  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_100200284((v9 + v11), v9 + v11 + v14, a2, a3);
}

void sub_100200AD4(int *a1, uint64_t a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  sub_1001FFF7C((v7 + v9), v7 + v9 + v12, a2);
}

void sub_100200B90(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058D690, &qword_1004872F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = xmmword_100498810;
  *(inited + 48) = 1;
  v91 = 0;
  LODWORD(v10) = sysctl((inited + 32), 6u, 0, &v91, 0, 0);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_57:
    v64 = v10;

    sub_10000B02C();
    swift_allocError();
    *v65 = v64;
    *(v65 + 8) = 0;
LABEL_60:
    *(v65 + 16) = 0;
    swift_willThrow();
    return;
  }

  v11 = malloc(v91);
  if (!v11)
  {

    sub_10000B02C();
    swift_allocError();
    *v65 = xmmword_100481830;
    goto LABEL_60;
  }

  v12 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10011686C(0, 6, 0, inited);
  }

  LODWORD(v10) = sysctl((inited + 32), 6u, v12, &v91, 0, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v80 = v8;
    v81 = v5;
    v84 = v2;
    v83 = a1;
    v14 = 0;
    v15 = v91;
    v82 = bswap32(a2) >> 16;
    v16 = (v6 + 16);
    v17 = (v6 + 8);
    v18 = 92;
    *&v13 = 136315394;
    while (1)
    {
      while (1)
      {
        if (v15 < v18)
        {
LABEL_58:

          free(v12);
          return;
        }

        v19 = &v12[v14];
        v20 = *&v12[v14];
        v21 = v12[v14 + 2];
        v92 = *&v12[v14 + 4];
        v22 = *&v12[v14 + 40];
        v23 = *&v12[v14 + 72];
        v88 = *&v12[v14 + 56];
        v89 = v23;
        v90 = *&v12[v14 + 88];
        v24 = *&v12[v14 + 24];
        v87 = v22;
        v86 = v24;
        v25 = __OFADD__(v14, v20);
        v14 += v20;
        if (v25)
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
        }

        if (v15 < v14)
        {
          goto LABEL_58;
        }

        if (v20 >= 0x8C)
        {
          break;
        }

        v18 = v14 + 92;
        if (__OFADD__(v14, 92))
        {
          goto LABEL_56;
        }
      }

      v79 = a2;
      v26 = v18 + 28;
      if (__OFADD__(v18, 28))
      {
        goto LABEL_63;
      }

      v27 = &v12[v18];
      v28 = *(v27 + 1);
      v72 = *(v27 + 2);
      v73 = v28;
      LODWORD(v74) = *(v27 + 6);
      v29 = v12[v26 + 5];
      v30 = v12[v26 + 6];
      v94 = *&v12[v26 + 8];
      v95 = *&v12[v26 + 16];
      v78 = v16;
      v77 = v17;
      v76 = v13;
      if (v30)
      {
        if (v30 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v30;
          memcpy(&__dst, &v94 + v29, v30);
          v32 = __dst;
          v34 = v75 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v33 = v34;
          goto LABEL_21;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v31 = __DataStorage.init(bytes:length:)();
        v32 = v30 << 32;
        v33 = v31 | 0x4000000000000000;
      }

      else
      {
        v32 = 0;
        v33 = 0xC000000000000000;
      }

      v34 = v75;
LABEL_21:
      v10 = sub_1000172CC(v32, v33);
      a2 = v79;
      v75 = v34;
      if (v74 != v79)
      {
        if (HIWORD(v79))
        {
          goto LABEL_64;
        }

        if (v82 != WORD1(v73))
        {
          goto LABEL_54;
        }
      }

      if ((v83 & 0x1000000000000) != 0)
      {
        if ((v10 & 0x1000000000000) != 0)
        {
          goto LABEL_54;
        }
      }

      else if ((v10 & 0x1000000000000) == 0)
      {
        LODWORD(__dst) = v83;
        WORD2(__dst) = WORD2(v83);
        LODWORD(v94) = v10;
        BYTE4(v94) = BYTE4(v10);
        BYTE5(v94) = BYTE5(v10);
        if (v83 == v10 && WORD2(v83) == WORD2(v94))
        {
          goto LABEL_54;
        }
      }

      v36 = type metadata accessor for RoutingSocket(0);
      v37 = *(v36 + 20);
      *(v19 + 4) = v92;
      v38 = v87;
      *(v19 + 24) = v86;
      v39 = v88;
      *(v19 + 72) = v89;
      v40 = v85;
      v41 = *(v85 + v37) + 1;
      *(v85 + v37) = v41;
      *(v19 + 56) = v39;
      *v19 = v20;
      v19[2] = v21;
      v19[3] = 2;
      *(v19 + 5) = v41;
      *(v19 + 22) = v90;
      *(v19 + 40) = v38;
      v42 = *(v40 + *(v36 + 24));
      v43 = write(*(v42 + 16), v19, v20);
      if (v43 < 0 && (v44 = v43, v45 = errno.getter(), v46 = v44, a2 = v79, v45 != 3))
      {
        if (v46 < 0xFFFFFFFF80000000)
        {
          goto LABEL_65;
        }

        v48 = v81;
        v49 = v80;
        if (v46 == -1)
        {
          v47 = errno.getter();
        }

        else
        {
          v47 = v46;
        }
      }

      else
      {
        while (1)
        {
          v10 = read(*(v42 + 16), v19, v20);
          if (v10 < 1)
          {
            break;
          }

          if (*(v19 + 5) == v41)
          {
            goto LABEL_54;
          }
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v47 = v10;
        LODWORD(v10) = errno.getter();
        if (v10 == 35)
        {
          goto LABEL_54;
        }

        LODWORD(v10) = errno.getter();
        if (v10 == 35)
        {
          goto LABEL_54;
        }

        if (v47 < 0xFFFFFFFF80000000)
        {
          goto LABEL_66;
        }

        if (v47 == -1)
        {
          v47 = errno.getter();
        }

        else
        {
          v47 = v47;
        }

        v48 = v81;
        v49 = v80;
      }

      sub_10000B02C();
      swift_allocError();
      *v50 = v47;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      swift_willThrow();
      v84 = 0;
      (*v78)(v49, v85, v48);
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v69 = v53;
        v71 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v94 = v74;
        *v53 = v76;
        v54 = swift_slowAlloc();
        v70 = v51;
        *&__dst = v73;
        *(&__dst + 1) = v72;
        inet_ntop(30, &__dst, v54, 0x2Eu);
        LOBYTE(v53) = v52;
        *&__dst = String.init(cString:)();
        *(&__dst + 1) = v55;

        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        String.append(_:)(v56);

        v57 = __dst;

        v58 = sub_100002320(v57, *(&v57 + 1), &v94);

        v59 = v69;
        *(v69 + 1) = v58;
        *(v59 + 6) = 2112;
        v60 = v59;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v61;
        v62 = v71;
        *v71 = v61;
        v63 = v70;
        _os_log_impl(&_mh_execute_header, v70, v53, "Failed to remove from NDP entry for %s because %@", v60, 0x16u);
        sub_100016290(v62, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v74);

        LODWORD(v10) = (*v77)(v80, v81);
      }

      else
      {

        LODWORD(v10) = (*v77)(v49, v48);
      }

      a2 = v79;
LABEL_54:
      v18 = v14 + 92;
      v16 = v78;
      v17 = v77;
      v13 = v76;
      if (__OFADD__(v14, 92))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }
  }

  v66 = v10;

  sub_10000B02C();
  swift_allocError();
  *v67 = v66;
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  swift_willThrow();
  free(v12);
}

unint64_t sub_1002014E0()
{
  result = qword_100591210;
  if (!qword_100591210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100591210);
  }

  return result;
}

uint64_t sub_100201548(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Socket();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002015C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100591358, &qword_100498860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100201638(__n128 a1)
{
  result = qword_100591360;
  if (!qword_100591360)
  {
    v4 = type metadata accessor for NWError();
    result = swift_getWitnessTable(&protocol conformance descriptor for NWError, v4, v1, v2);
    atomic_store(result, &qword_100591360);
  }

  return result;
}

uint64_t DispatchTimeInterval.nanDiscoveryWindowCount.getter()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100028EF8();
  *v3 = 0x80000;
  (*(v1 + 104))(v3, enum case for DispatchTimeInterval.microseconds(_:), v0);
  v5 = sub_100028EF8();
  result = (*(v1 + 8))(v3, v0);
  if (v5)
  {
    if (v4 != 0x8000000000000000 || v5 != -1)
    {
      return v4 / v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DispatchTimeInterval.rawSeconds.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
LABEL_7:
    v10 = v8 * v9;
    if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
    {
      if (v8 <= 0)
      {
        return 0x8000000000000000;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  if (v7 != enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    if (v7 == enum case for DispatchTimeInterval.never(_:))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    (*(v3 + 8))(v6, v2);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  (*(v3 + 96))(v6, v2);
  v10 = *v6;
LABEL_12:
  if (v10 > 0x1DCD64FFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v10 <= -2147483649000000000)
  {
    return 0x8000000000000000;
  }

  return v10 / 1000000000;
}

uint64_t static DispatchTime.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 32))(v7, a1, v3, v5);
  + infix(_:_:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int DispatchTime.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100201BA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t DispatchTime.description.getter()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  sub_100029568(&qword_100591368, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    DispatchTime.distance(to:)();
    v14 = DispatchTimeInterval.description.getter();
    v15 = v8;
    (*(v1 + 8))(v3, v0);
    v9 = 1869046048;
    v10 = 0xE400000000000000;
  }

  else
  {
    if ((static DispatchTime.< infix(_:_:)() & 1) == 0)
    {
      v12 = 7827310;
      goto LABEL_9;
    }

    DispatchTime.distance(to:)();
    v14 = DispatchTimeInterval.description.getter();
    v15 = v11;
    (*(v1 + 8))(v3, v0);
    v9 = 0x726574616C20;
    v10 = 0xE600000000000000;
  }

  String.append(_:)(*&v9);
  v12 = v14;
LABEL_9:
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t DispatchTime.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v14 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = __chkstk_darwin();
  (*(v11 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v8, v9);
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100202110(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v8 = v14 - v7;
  v9 = __chkstk_darwin();
  (*(v11 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v9);
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  (*(v4 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0, &protocol conformance descriptor for [A]);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t static DispatchTimeInterval.hours(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result * 3600) >> 64 == (3600 * result) >> 63)
  {
    *a2 = 3600 * result;
    v3 = enum case for DispatchTimeInterval.seconds(_:);
    v4 = type metadata accessor for DispatchTimeInterval();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DispatchTimeInterval.zero.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void DispatchTimeInterval.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000000;
LABEL_7:
    v9 = v7 * v8;
    v10 = (v7 * v8) >> 64 != (v7 * v8) >> 63;
    v11 = v7 <= 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 0x8000000000000000;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    goto LABEL_12;
  }

  if (v6 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v13 = *v5;
  }

  else
  {
    if (v6 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v13);
}

uint64_t static DispatchTimeInterval.+ infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v3, v5);
  sub_100029568(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval, &protocol conformance descriptor for DispatchTimeInterval);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if (v10 & 1) != 0 || (v9(v7, v8, v3), v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v11(v7, v3), (v12) || (v13 = sub_100028EF8(), v14 = sub_100028EF8(), v15 = v13 + v14, __OFADD__(v13, v14)))
  {
    v17 = v20;
    v18 = v8;
  }

  else
  {
    v17 = v20;
    *v20 = v15;
    v18 = enum case for DispatchTimeInterval.nanoseconds(_:);
  }

  return (v9)(v17, v18, v3);
}

uint64_t static DispatchTimeInterval.- infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v3, v5);
  sub_100029568(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval, &protocol conformance descriptor for DispatchTimeInterval);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if (v10 & 1) != 0 || (v9(v7, v8, v3), v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v11(v7, v3), (v12) || (v13 = sub_100028EF8(), v14 = sub_100028EF8(), v15 = v13 - v14, __OFSUB__(v13, v14)))
  {
    v17 = v20;
    v18 = v8;
  }

  else
  {
    v17 = v20;
    *v20 = v15;
    v18 = enum case for DispatchTimeInterval.nanoseconds(_:);
  }

  return (v9)(v17, v18, v3);
}

double DispatchTimeInterval.timeInterval.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
LABEL_7:
    v10 = v8 * v9;
    v11 = (v8 * v9) >> 64 != (v8 * v9) >> 63;
    v12 = v8 <= 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    if (!v11)
    {
      v13 = v10;
    }

    return v13 / 1000000000.0;
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v13 = *v6;
  }

  else
  {
    if (v7 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13 / 1000000000.0;
}

Swift::Int DispatchTimeInterval.hashValue.getter()
{
  Hasher.init(_seed:)();
  DispatchTimeInterval.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100202D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v5);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100028EF8();
  return v14 < sub_100028EF8();
}

BOOL sub_100202E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v5);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100028EF8();
  return v14 >= sub_100028EF8();
}

BOOL sub_100202FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v5);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100028EF8();
  return v14 >= sub_100028EF8();
}

BOOL sub_10020316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DispatchTimeInterval.never(_:), v5);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100028EF8();
  return v14 < sub_100028EF8();
}

uint64_t sub_100203358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v9 = *(a3 - 8);
  v10 = __chkstk_darwin();
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12, a1, v10);
  a5(v12, a2);
  return (*(v9 + 8))(v12, a3);
}

Swift::Int sub_100203454(uint64_t a1)
{
  Hasher.init(_seed:)();
  DispatchTimeInterval.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100203490()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin();
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v3 = sub_100061590();
  v6[0] = "in";
  v6[1] = v3;
  static DispatchQoS.userInteractive.getter();
  v4 = sub_100477144("wifip2pd.nan");
  v8 = _swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.nan = result;
  return result;
}

uint64_t sub_100203730()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin();
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v3 = sub_100061590();
  v6[0] = "Extensions.swift";
  v6[1] = v3;
  static DispatchQoS.userInteractive.getter();
  v4 = sub_100477144("wifip2pd.awdl");
  v8 = _swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.awdl = result;
  return result;
}

uint64_t sub_1002039D0()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin();
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v3 = sub_100061590();
  v6[0] = "wifip2pd.nan-main";
  v6[1] = v3;
  static DispatchQoS.userInteractive.getter();
  v4 = sub_100477144("wifip2pd.p2p");
  v8 = _swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.p2p = result;
  return result;
}

id sub_100203C70(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_100203CD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v20 = a4;
  v21 = a1;
  v19 = a6;
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v8 = type metadata accessor for Result();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v8 - 8);
  (*(v16 + 56))(v14, 1, 1, v8);
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a3;
  v18 = v21;
  v17[4] = v20;
  sub_100203F28(sub_1002046CC, v17, v18, v22, v13, v23, a5);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    (*(v10 + 16))(v12, v15, v9);
    if ((*(v16 + 48))(v12, 1, v8) != 1)
    {
      (*(v16 + 32))(v19, v12, v8);

      return;
    }
  }

  __break(1u);
}

double sub_100203F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a6;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  v17 = __chkstk_darwin();
  (*(v19 + 16))(v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v17);
  (*(v14 + 16))(v16, a4, v13);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a5;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = sub_1002046F4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100569898;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  DispatchWorkItem.init(qos:flags:block:)();

  OS_dispatch_queue.asyncAndWait(execute:)();

  return result;
}

uint64_t sub_100204188(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v5 = type metadata accessor for Result();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = swift_projectBox();
  a2();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  return (*(v7 + 40))(v10, v9, v6);
}

uint64_t OS_dispatch_queue.asyncAndWait<A>(qos:flags:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v17 - v14;
  sub_100203CD0(a1, a2, a3, a4, a5, &v17 - v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a5 - 8) + 32))(a6, v15, a5);
  }

  (*(v13 + 8))(v15, v12);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v15 = a6;
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  type metadata accessor for Result();
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_100203CD0(a1, a2, a3, a4, a5, &v14 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(a5 - 8) + 32))(v15, v12, a5);
  }
}

BOOL static OWEKeys.== infix(_:_:)(uint64_t a1)
{
  v1 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  v4 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v6 = v5;
  v7 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v1, v3, v4, v5);
  sub_1000124C8(v4, v6);
  sub_1000124C8(v1, v3);
  return v7;
}

uint64_t OWEKeys.init(privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1002047F8()
{
  result = sub_10016FD40(0xD000000000000012, 0x80000001004BD2F0);
  qword_10059B5E8 = result;
  qword_10059B5F0 = v1;
  return result;
}

uint64_t sub_100204834()
{
  result = sub_10002D874(&off_1005568B8);
  *&xmmword_100591370 = result;
  *(&xmmword_100591370 + 1) = v1;
  return result;
}

uint64_t OWEKeys.generatePMK(for:asClient:)(uint64_t a1, int a2)
{
  v55 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin();
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v56 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FE48, &qword_100493928);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = type metadata accessor for SharedSecret();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v49 = v6;
  v50 = v2;
  v54 = v5;
  (*(v12 + 56))(v10, 0, 1, v11);
  v51 = v14;
  v52 = v12;
  v15 = *(v12 + 32);
  v53 = v11;
  v15(v14, v10, v11);
  if (v55)
  {
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v16 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v18 = v17;
    (*(v56 + 8))(v8, v49);
    v19 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v21 = v20;
    *&v64[0] = v16;
    *(&v64[0] + 1) = v18;
    v62 = &type metadata for Data;
    v63 = &protocol witness table for Data;
    *&v61 = v19;
    *(&v61 + 1) = v20;
    v22 = sub_100029B34(&v61, &type metadata for Data);
    v23 = *v22;
    v24 = v22[1];
    sub_10000AB0C(v16, v18);
    sub_10000AB0C(v19, v21);
    sub_100178A18(v23, v24, v64);
    v25 = v19;
    v26 = v21;
  }

  else
  {
    v16 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v18 = v27;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v28 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v30 = v29;
    (*(v56 + 8))(v8, v49);
    *&v64[0] = v16;
    *(&v64[0] + 1) = v18;
    v62 = &type metadata for Data;
    v63 = &protocol witness table for Data;
    *&v61 = v28;
    *(&v61 + 1) = v30;
    v31 = sub_100029B34(&v61, &type metadata for Data);
    v32 = *v31;
    v33 = v31[1];
    sub_10000AB0C(v16, v18);
    sub_10000AB0C(v28, v30);
    sub_100178A18(v32, v33, v64);
    v25 = v28;
    v26 = v30;
  }

  sub_1000124C8(v25, v26);
  sub_1000124C8(v16, v18);
  sub_100002A00(&v61);
  v34 = v64[0];
  v35 = v54;
  type metadata accessor for SHA256();
  v36 = v58;
  if (qword_10058AA48 != -1)
  {
    swift_once();
  }

  v37 = xmmword_100591370;
  v64[0] = v34;
  v62 = &type metadata for Data;
  v63 = &protocol witness table for Data;
  v61 = xmmword_100591370;
  v38 = sub_100029B34(&v61, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_10000AB0C(v34, *(&v34 + 1));
  sub_10000AB0C(v37, *(&v37 + 1));
  sub_100178A18(v39, v40, v64);
  sub_100002A00(&v61);
  v61 = v64[0];
  if (qword_10058AA40 != -1)
  {
    swift_once();
  }

  v59 = qword_10059B5E8;
  v60 = qword_10059B5F0;
  sub_10000AB0C(qword_10059B5E8, qword_10059B5F0);
  sub_1002054D0(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  v41 = v51;
  SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
  sub_1000124C8(v59, v60);
  sub_1000124C8(v61, *(&v61 + 1));
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_1000124C8(v34, *(&v34 + 1));
  (*(v57 + 8))(v35, v36);
  (*(v52 + 8))(v41, v53);
  v43 = *(&v61 + 1);
  result = v61;
  v44 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE14(v61);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v44 == 2)
  {
    v47 = *(v61 + 16);
    v46 = *(v61 + 24);
    v48 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v48)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    LODWORD(v45) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v45 = v45;
LABEL_17:
    if (v45 == 32)
    {
      return result;
    }
  }

  sub_1000124C8(result, v43);
  return 0;
}

uint64_t OWEKeys.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v11 - v6;
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  sub_1001B2234(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[1] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t OWEKeys.hash(into:)(uint64_t a1)
{
  v1 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  Data.hash(into:)();

  return sub_1000124C8(v1, v3);
}

Swift::Int OWEKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  Data.hash(into:)();
  sub_1000124C8(v0, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100205170(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  Data.hash(into:)();
  sub_1000124C8(v1, v3);
  return Hasher._finalize()();
}

uint64_t sub_1002051CC(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v11 - v6;
  __chkstk_darwin();
  sub_1001B2234(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[1] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002053D4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058FE48, &qword_100493928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OWEKeys(uint64_t a1)
{
  result = qword_1005913E0;
  if (!qword_1005913E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002054D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100205540(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *NANServiceInfo.genericServiceProtocol.getter(char a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10000AB0C(a2, a3);
  v5 = sub_1000D201C(a2, a3);
  sub_1000124C8(a2, a3);
  return v5;
}

uint64_t NANServiceInfo.init(information:filter:)(uint64_t a1, uint64_t a2)
{
  NANGenericServiceProtocol.packetData(for:)(a2, a1);

  return 2;
}

uint64_t sub_100205734()
{
  v1 = 0x6465767265736552;
  v2 = 0x20636972656E6547;
  if (*v0 != 2)
  {
    v2 = 0x7474614D20415343;
  }

  if (*v0)
  {
    v1 = 0x72756F6A6E6F42;
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

uint64_t NANServiceInfo.csaMatterPayload.getter(char a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 3)
  {
    return 0;
  }

  v3 = a2;
  sub_10000AB0C(a2, a3);
  return v3;
}

uint64_t NANServiceInfo.hash(into:)(uint64_t a1, Swift::UInt8 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int NANServiceInfo.hashValue.getter(Swift::UInt8 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002058F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100205958(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return Data.hash(into:)();
}

Swift::Int sub_1002059AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANServiceInfo.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v8, v9);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_100031694(v8, v9);
    sub_100206440();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v8, v9);
    sub_10000AB0C(a3, a4);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(a3, a4);
  }

  return sub_100002A00(v8);
}

uint64_t sub_100205BB4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = NANServiceInfo.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t NANServiceInfo.customMirror.getter(char a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v12 = &v22[-v11 - 8];
  if (v6 == 2 && (sub_10000AB0C(a2, a3), v13 = sub_1000D201C(a2, a3), sub_1000124C8(a2, a3), v13))
  {
    v22[0] = 2;
    v23 = a2;
    v24 = a3;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100480F40;
    *(v14 + 32) = 0x636972656E6567;
    *(v14 + 40) = 0xE700000000000000;
    *(v14 + 72) = &type metadata for NANGenericServiceProtocol;
    *(v14 + 48) = v13;
    v15 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    (*(v8 + 104))(v10, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
    sub_10000AB0C(a2, a3);
  }

  else
  {
    v22[0] = a1;
    v23 = a2;
    v24 = a3;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100480F40;
    *(v16 + 32) = 1635017060;
    *(v16 + 40) = 0xE400000000000000;
    sub_10000AB0C(a2, a3);
    v17 = Data.hexString.getter(a2, a3);
    *(v16 + 72) = &type metadata for String;
    *(v16 + 48) = v17;
    *(v16 + 56) = v18;
    v19 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    (*(v8 + 104))(v10, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
  }

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void NANServiceInfo.description.getter(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x6465767265736552;
  v6 = 0xEF65636976726553;
  v7 = 0x20636972656E6547;
  if (a1 != 2)
  {
    v7 = 0x7474614D20415343;
    v6 = 0xEA00000000007265;
  }

  if (a1)
  {
    v5 = 0x72756F6A6E6F42;
    v4 = 0xE700000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v12 = v9;
  String.append(_:)(*&v8);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v14)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_19:
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x736574796220;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    return;
  }

  __break(1u);
}

uint64_t sub_1002060AC(void *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v22, v22[3]);
  sub_100039F68();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v5 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v6 = *(v20 + 16);
    v7 = *(v20 + 24);
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_14;
    }

    v6 = v20;
    v7 = v20 >> 32;
  }

  if (v7 >= v6)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v6 = 0;
LABEL_14:
  v8 = Data._Representation.subscript.getter();
  v10 = v9;
  v11 = sub_1002A5EB4(v8, v9);
  result = sub_1000124C8(v8, v10);
  v12 = v6 + 3;
  if (__OFADD__(v6, 3))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    v13 = v20 >> 32;
    if (v5)
    {
      v14 = v20;
    }

    else
    {
      v13 = BYTE6(v21);
      v14 = 0;
    }
  }

  if (v13 < v12 || v12 < v14)
  {
    goto LABEL_57;
  }

  if (!sub_1000319F0(v11 & 0xFFFFFF, 0x9A6F50u))
  {
LABEL_39:
    sub_10000B02C();
    swift_allocError();
    *v16 = xmmword_10047CE70;
LABEL_40:
    *(v16 + 16) = 2;
    swift_willThrow();
    if (v5 > 1)
    {
      if (v5 != 2)
      {
LABEL_48:
        Data.subdata(in:)();
        sub_1000124C8(v20, v21);

        v3 = 0;
LABEL_49:
        sub_100002A00(v22);
        sub_100002A00(a1);
        return v3;
      }

      v18 = *(v20 + 16);
      v19 = *(v20 + 24);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_48;
      }

      v18 = v20;
      v19 = v20 >> 32;
    }

    if (v19 < v18)
    {
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v6 == -3)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v15 = *(v20 + 24);
  }

  else if (v5)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE6(v21);
  }

  if (v12 == v15)
  {
LABEL_32:
    sub_10000B02C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    goto LABEL_40;
  }

LABEL_34:
  v3 = Data._Representation.subscript.getter();
  result = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v3 >= 4u)
  {
    goto LABEL_39;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v17 = *(v20 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v5)
  {
    v17 = v20 >> 32;
  }

  else
  {
    v17 = BYTE6(v21);
  }

  if (v17 >= result)
  {
    Data.subdata(in:)();
    sub_1000124C8(v20, v21);
    goto LABEL_49;
  }

LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_100206440()
{
  result = qword_100591418;
  if (!qword_100591418)
  {
    result = swift_getWitnessTable(byte_100498D54, &type metadata for NANServiceInfo.ServiceProtocolType, v0, v1);
    atomic_store(result, &qword_100591418);
  }

  return result;
}

unint64_t sub_100206498()
{
  result = qword_100591420;
  if (!qword_100591420)
  {
    result = swift_getWitnessTable("\tg\v", &type metadata for NANServiceInfo, v0, v1);
    atomic_store(result, &qword_100591420);
  }

  return result;
}

unint64_t sub_100206510()
{
  result = qword_100591428;
  if (!qword_100591428)
  {
    result = swift_getWitnessTable(byte_100498D2C, &type metadata for NANServiceInfo.ServiceProtocolType, v0, v1);
    atomic_store(result, &qword_100591428);
  }

  return result;
}

unint64_t sub_100206564()
{
  result = qword_100591430;
  if (!qword_100591430)
  {
    result = swift_getWitnessTable(byte_100498CF4, &type metadata for NANServiceInfo.ServiceProtocolType, v0, v1);
    atomic_store(result, &qword_100591430);
  }

  return result;
}

uint64_t sub_1002065B8(uint64_t result, _BYTE *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    v5 = 0;
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
LABEL_5:
  if (v5 <= 7)
  {
    if (v5 < -8)
    {
LABEL_7:
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }

    while (1)
    {
      if (v5 < 0)
      {
        if (v5 == -8)
        {
          goto LABEL_7;
        }

        if (((~a4 << (-v5 & 7)) & 1) == 0)
        {
          v7 = 1u >> -v5;
LABEL_8:
          ++v5;
          *a2 = v7;
          if (v6 == a3)
          {
            goto LABEL_22;
          }

          ++a2;
          v4 = v6;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v5 == 8)
        {
          goto LABEL_7;
        }

        v7 = 1 << v5;
        if (((1 << v5) & a4) != 0)
        {
          goto LABEL_8;
        }
      }

      ++v5;
    }
  }

  a3 = v4;
LABEL_22:
  *result = a4;
  *(result + 8) = v5;
  return a3;
}

void *sub_100206684(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 32);
      while (1)
      {
        v7 = *v6;
        *(a2 + 4) = *(v6 + 2);
        *a2 = v7;
        if (a3 - 1 == v5)
        {
          break;
        }

        a2 += 8;
        v6 += 2;
        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      a3 = v4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002066EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    v6 = a4;
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 == a5)
    {
      a3 = 0;
      v6 = a5;
LABEL_8:
      *result = a4;
      result[1] = a5;
      result[2] = a6;
      result[3] = v6;
      return a3;
    }

    v7 = 0;
    v8 = a4;
    while (1)
    {
      v9 = a6;
      v6 = v8 + 128;
      if (v8 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      *(a2 + v7) = *(&v9 + (a4 >> 7) + v7);
      if (a3 - 1 == v7)
      {
        goto LABEL_8;
      }

      ++v7;
      v8 += 128;
      if (v6 == a5)
      {
        v6 = a5;
        a3 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *ChannelSequence.empty.unsafeMutableAddressor()
{
  if (qword_10058AA50 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.empty;
}

Swift::Int __swiftcall ChannelSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChannelSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100206834(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void *sub_100206878@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100206890(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void (*sub_1002068C0(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 8 * v3;
    v5 = *(v4 + 32);
    *(result + 2) = *(v4 + 36);
    *result = v5;
    return NANBitmap.Channel.operatingClass.getter;
  }

  __break(1u);
  return result;
}

void sub_100206918(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
  }
}

double sub_100206944@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;

  return result;
}

uint64_t *sub_10020696C@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_7:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_6:
      v3 += a2;
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1002069A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069C4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069E0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069FC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100206A14(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_100206A38()
{
  v1 = sub_100118174(*v0);

  return v1;
}

uint64_t sub_100206A78()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = static Channel.awdlSocial5GHz;
  v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v2);
  *(result + 40) = v1;
  *(result + 44) = WORD2(v2);
  *(result + 48) = v1;
  *(result + 52) = WORD2(v2);
  *(result + 56) = v1;
  *(result + 60) = WORD2(v2);
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
    v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v3 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v3);
  *(result + 104) = v2;
  *(result + 108) = WORD2(v2);
  *(result + 112) = v2;
  *(result + 116) = WORD2(v2);
  *(result + 120) = v2;
  *(result + 124) = WORD2(v2);
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlDiscoveryMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlDiscoveryMode.unsafeMutableAddressor()
{
  if (qword_10058AA58 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlDiscoveryMode;
}

uint64_t sub_100206C94()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = static Channel.awdlSocial5GHz;
  v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v2);
  *(result + 40) = v1;
  *(result + 44) = WORD2(v2);
  *(result + 48) = v1;
  *(result + 52) = WORD2(v2);
  *(result + 56) = 0;
  *(result + 60) = 3;
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
    v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v3 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v3);
  *(result + 104) = v2;
  *(result + 108) = WORD2(v2);
  *(result + 112) = v2;
  *(result + 116) = WORD2(v2);
  *(result + 120) = 0;
  *(result + 124) = 3;
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlIdleMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlIdleMode.unsafeMutableAddressor()
{
  if (qword_10058AA60 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlIdleMode;
}

uint64_t sub_100206EB0()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v1);
  *(result + 40) = 0;
  *(result + 44) = 3;
  *(result + 48) = 0;
  *(result + 52) = 3;
  *(result + 56) = 0;
  *(result + 60) = 3;
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
    v1 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v2 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v2);
  *(result + 104) = v1;
  *(result + 108) = WORD2(v1);
  *(result + 112) = v1;
  *(result + 116) = WORD2(v1);
  *(result + 120) = 0;
  *(result + 124) = 3;
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlLowPowerMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlLowPowerMode.unsafeMutableAddressor()
{
  if (qword_10058AA68 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlLowPowerMode;
}

unint64_t sub_1002070E8()
{
  result = qword_100591438;
  if (!qword_100591438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelSequence, &type metadata for ChannelSequence, v0, v1);
    atomic_store(result, &qword_100591438);
  }

  return result;
}

unint64_t sub_100207140()
{
  result = qword_100591440;
  if (!qword_100591440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelSequence, &type metadata for ChannelSequence, v0, v1);
    atomic_store(result, &qword_100591440);
  }

  return result;
}

unint64_t sub_1002071D8()
{
  result = qword_100591458;
  if (!qword_100591458)
  {
    result = swift_getWitnessTable("Yk\v", &type metadata for ChannelSequence, v0, v1);
    atomic_store(result, &qword_100591458);
  }

  return result;
}

uint64_t sub_100207270(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(a2, a3);
    v8 = sub_1002071D8();
    result = swift_getWitnessTable(a4, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002072DC()
{
  result = qword_100591470;
  if (!qword_100591470)
  {
    result = swift_getWitnessTable(")i\v", &type metadata for ChannelSequence, v0, v1);
    atomic_store(result, &qword_100591470);
  }

  return result;
}

uint64_t sub_100207418(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_100207470(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t NANDatapath.DatapathType.description.getter(char a1)
{
  if (a1)
  {
    return 0x73616369746C756DLL;
  }

  else
  {
    return 0x74736163696E75;
  }
}

uint64_t sub_100207628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73616369746C756DLL;
  }

  else
  {
    v3 = 0x74736163696E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x73616369746C756DLL;
  }

  else
  {
    v5 = 0x74736163696E75;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE700000000000000;
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

void sub_1002076E0(uint64_t *a1@<X8>)
{
  v2 = 0x74736163696E75;
  if (*v1)
  {
    v2 = 0x73616369746C756DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100207724()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002077AC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100207820(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002078A4()
{
  if (*v0)
  {
    return 0x73616369746C756DLL;
  }

  else
  {
    return 0x74736163696E75;
  }
}

uint64_t NANDatapath.ServiceType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6576697470616461;
  }

  if (a1 == 1)
  {
    return 0x656D69746C616572;
  }

  return 0x6E6574614C776F6CLL;
}

uint64_t static NANDatapath.ServiceType.< infix(_:_:)(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1 && a2 == 2)
    {
      return 1;
    }
  }

  else if (a2 - 1 < 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10020799C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656D69746C616572;
  if (v2 != 1)
  {
    v5 = 0x6E6574614C776F6CLL;
    v4 = 0xEA00000000007963;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697470616461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x656D69746C616572;
  if (*a2 != 1)
  {
    v8 = 0x6E6574614C776F6CLL;
    v3 = 0xEA00000000007963;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697470616461;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100207AA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P11NANDatapathO11ServiceTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100207AD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656D69746C616572;
  if (v2 != 1)
  {
    v5 = 0x6E6574614C776F6CLL;
    v4 = 0xEA00000000007963;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697470616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100207B48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207BF0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100207C84(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207D28(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 != 1 || v2 != 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100207D5C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    if (*a2 != 1 || v2 != 2)
    {
      return 1;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100207D90(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 != 1 || v2 != 2)
    {
      return 1;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100207DC4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    if (*a2 != 1 || v2 != 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100207DF8()
{
  v1 = 0x656D69746C616572;
  if (*v0 != 1)
  {
    v1 = 0x6E6574614C776F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697470616461;
  }
}

uint64_t NANDatapath.ParametersType.description.getter(char a1)
{
  if (a1)
  {
    return 1735617902;
  }

  else
  {
    return 7365742;
  }
}

uint64_t sub_100207E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1735617902;
  }

  else
  {
    v3 = 7365742;
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
    v5 = 1735617902;
  }

  else
  {
    v5 = 7365742;
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

void sub_100207F3C(uint64_t *a1@<X8>)
{
  v2 = 7365742;
  if (*v1)
  {
    v2 = 1735617902;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100207F6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207FE0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100208040(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002080B0()
{
  if (*v0)
  {
    return 1735617902;
  }

  else
  {
    return 7365742;
  }
}

uint64_t NANDatapath.ParametersMulticastType.description.getter(char a1)
{
  if (a1)
  {
    return 0x614D6F54796E616DLL;
  }

  else
  {
    return 0x6E614D6F54656E6FLL;
  }
}

uint64_t sub_100208128(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100208178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x614D6F54796E616DLL;
  }

  else
  {
    v3 = 0x6E614D6F54656E6FLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xEA0000000000796ELL;
  }

  if (*a2)
  {
    v5 = 0x614D6F54796E616DLL;
  }

  else
  {
    v5 = 0x6E614D6F54656E6FLL;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000796ELL;
  }

  else
  {
    v6 = 0xE900000000000079;
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

void sub_100208234(uint64_t *a1@<X8>)
{
  v2 = 0x6E614D6F54656E6FLL;
  if (*v1)
  {
    v2 = 0x614D6F54796E616DLL;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xEA0000000000796ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020827C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100208308(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100208380(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100208408()
{
  if (*v0)
  {
    return 0x614D6F54796E616DLL;
  }

  else
  {
    return 0x6E614D6F54656E6FLL;
  }
}

uint64_t static NANDatapath.InternetSharingConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_10020C694(a1, v4);
  sub_10020C694(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_100016290(v4, &qword_100591498, &qword_100499038);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  sub_10020C6CC(v5);
LABEL_6:
  sub_10020C6CC(v4);
  return 1;
}

void NANDatapath.InternetSharingConfiguration.hash(into:)()
{
  sub_10020C694(v0, v2);
  v1 = v3 == 0;
  sub_10020C6CC(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int NANDatapath.InternetSharingConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_10020C694(v0, v3);
  v1 = v3[3] == 0;
  sub_10020C6CC(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100208590(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10020C694(v1, v4);
  v2 = v4[3] == 0;
  sub_10020C6CC(v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.operation.getter()
{
  v1 = *(v0 + 8);
  sub_10000AB0C(v1, *(v0 + 16));
  return v1;
}

uint64_t NANAttribute.DatapathExtension.interfaceIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_10005D67C(v1, *(v0 + 32));
  return v1;
}

uint64_t NANAttribute.DatapathExtension.interfaceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100017554(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NANDatapath.SecurityConfiguration.init(cipherSuite:key:pmkID:passphrase:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100017554(0, 0xF000000000000000);
  sub_10000AB0C(a2, a3);
  sub_10005D67C(a4, a5);

  sub_1000124C8(a2, a3);
  sub_100017554(a4, a5);

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void NANDatapath.SecurityConfiguration.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1 + 1);
  Data.hash(into:)();
  if (*(v1 + 32) >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(v1 + 48))
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!*(v1 + 48))
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int NANDatapath.SecurityConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  Data.hash(into:)();
  if (*(v0 + 32) >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(v0 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002088EC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  Hasher._combine(_:)(*v1 + 1);
  Data.hash(into:)();
  if (v2 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1002089D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  Data.hash(into:)();
  if (v3 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100208AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t NANDatapath.Configuration.multicastAddress.setter(uint64_t result)
{
  *(v1 + 144) = result;
  *(v1 + 148) = WORD2(result);
  *(v1 + 150) = BYTE6(result) & 1;
  return result;
}

uint64_t NANDatapath.Configuration.channelInfo.setter(uint64_t result)
{
  *(v1 + 156) = result;
  *(v1 + 160) = WORD2(result);
  return result;
}

uint64_t NANDatapath.Configuration.countryCode.setter(uint64_t result)
{
  *(v1 + 162) = result;
  *(v1 + 164) = BYTE2(result) & 1;
  return result;
}

void NANDatapath.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v1 + 7));
  String.lowercased()();
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 24));
  v9 = *(v1 + 26);
  v10 = *(v1 + 27);
  v11 = *(v1 + 28);
  v12 = *(v1 + 29);
  v13 = *(v1 + 30);
  Hasher._combine(_:)(*(v1 + 25));
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  String.hash(into:)();

  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 40));
  v14 = *(v1 + 96);
  if (v14 != 1)
  {
    v15 = *(v1 + 80);
    v16 = *(v1 + 48);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16 + 1);
    Data.hash(into:)();
    if (v15 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
      if (v14)
      {
LABEL_4:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_7;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
      if (v14)
      {
        goto LABEL_4;
      }
    }
  }

  Hasher._combine(_:)(0);
LABEL_7:
  sub_100012400(v1 + 104, &v44, &qword_1005914A8, &qword_100499048);
  if (*(&v45 + 1) == 1)
  {
    Hasher._combine(_:)(0);
    if ((*(v1 + 150) & 1) == 0)
    {
LABEL_9:
      v17 = *(v2 + 148);
      v18 = *(v2 + 144);
      v19 = v18 | (*(v2 + 148) << 32);
      v20 = v19 >> 8;
      v21 = v19 >> 16;
      v22 = v19 >> 24;
      v23 = v17 >> 8;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v17);
      goto LABEL_12;
    }
  }

  else
  {
    v42[0] = v44;
    v42[1] = v45;
    v43 = v46;
    Hasher._combine(_:)(1u);
    sub_10020C694(v42, v40);
    v24 = v41 == 0;
    sub_10020C6CC(v40);
    Hasher._combine(_:)(v24);
    sub_10020C6CC(v42);
    if ((*(v2 + 150) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  LOBYTE(v23) = 0;
LABEL_12:
  Hasher._combine(_:)(v23);
  if (*(v2 + 151) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v25 = *(v2 + 152);
  if (v25 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v26 = *(v2 + 156) | (*(v2 + 160) << 32);
  if ((v26 & 0xFF00000000) == 0x300000000)
  {
    v27 = 0;
    goto LABEL_20;
  }

  v29 = v26 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v26);
  Hasher._combine(_:)(0x801004u >> ((v26 >> 29) & 0xF8));
  if ((v26 >> 40) <= 3)
  {
    if (v29 == 2)
    {
      v30 = 0;
    }

    else
    {
      if (v29 != 3)
      {
        goto LABEL_41;
      }

      v30 = 1;
    }

LABEL_33:
    Hasher._combine(_:)(v30);
    if (*(v2 + 164))
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  switch(v29)
  {
    case 4:
      v30 = 3;
      goto LABEL_33;
    case 5:
      v30 = 4;
      goto LABEL_33;
    case 6:
      v30 = 5;
      goto LABEL_33;
  }

LABEL_41:
  Hasher._combine(_:)(2uLL);
  v27 = BYTE5(v26) & 1;
LABEL_20:
  Hasher._combine(_:)(v27);
  if (*(v2 + 164))
  {
LABEL_21:
    LOBYTE(v28) = 0;
    goto LABEL_35;
  }

LABEL_34:
  v31 = *(v2 + 162);
  v28 = v31 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v31);
LABEL_35:
  Hasher._combine(_:)(v28);
  v32 = *(v2 + 165);
  if (v32 == 2)
  {
    v33 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v33 = v32 & 1;
  }

  Hasher._combine(_:)(v33);
  v34 = *(v2 + 176);
  if (v34)
  {
    v35 = *(v2 + 216);
    v36 = *(v2 + 208);
    v37 = *(v2 + 200);
    v39 = *(v2 + 184);
    v38 = *(v2 + 168);
    Hasher._combine(_:)(1u);
    *&v44 = v38;
    *(&v44 + 1) = v34;
    v45 = v39;
    v46 = v37;
    v47 = v36;
    v48 = v35;
    NANPairing.Metadata.This.hash(into:)(a1);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NANDatapath.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANDatapath.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

void sub_100209444(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

Swift::Int sub_100209464(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANDatapath.Configuration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ServiceDescriptorExtension.serviceInfo.getter()
{
  v1 = v0[2];
  sub_100184290(v1, v0[3], v0[4]);
  return v1;
}

uint64_t NANDatapath.ResponseConfiguration.serviceName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NANDatapath.ResponseConfiguration.multicastAddress.setter(uint64_t result)
{
  *(v1 + 177) = result;
  *(v1 + 181) = WORD2(result);
  *(v1 + 183) = BYTE6(result) & 1;
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.channelInfo.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = WORD2(result);
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.countryCode.setter(uint64_t result)
{
  *(v1 + 194) = result;
  *(v1 + 196) = BYTE2(result) & 1;
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.init(instanceID:publishID:initiatorManagementAddress:initiatorDataAddress:initiatorServiceInfo:responderManagementAddress:responderDataAddress:serviceName:serviceType:dialogToken:status:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:channelInfo:countryCode:pairingMetadata:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, int a22, __int16 a23, __int16 a24, __int16 a25, char a26, uint64_t a27)
{
  *(a9 + 128) = 1;
  *(a9 + 176) = -1;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = BYTE1(a3);
  *(a9 + 4) = BYTE2(a3);
  *(a9 + 5) = BYTE3(a3);
  *(a9 + 6) = BYTE4(a3);
  *(a9 + 2) = a3;
  *(a9 + 7) = BYTE5(a3);
  *(a9 + 9) = BYTE1(a4);
  *(a9 + 10) = BYTE2(a4);
  *(a9 + 11) = BYTE3(a4);
  *(a9 + 12) = BYTE4(a4);
  *(a9 + 8) = a4;
  *(a9 + 13) = BYTE5(a4);
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 41) = BYTE1(a8);
  *(a9 + 42) = BYTE2(a8);
  *(a9 + 43) = BYTE3(a8);
  *(a9 + 44) = BYTE4(a8);
  *(a9 + 40) = a8;
  *(a9 + 45) = BYTE5(a8);
  *(a9 + 47) = *(&a10 + 1);
  *(a9 + 46) = a10;
  *(a9 + 51) = BYTE5(a10);
  *(a9 + 56) = a11;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 64) = a12;
  *(a9 + 80) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0;
  *(a9 + 72) = a13;
  *(a9 + 136) = 0u;
  *(a9 + 216) = 0u;
  *(a9 + 232) = 0u;
  *(a9 + 248) = 0;
  *(a9 + 73) = *(&a13 + 1);
  *(a9 + 200) = 0u;
  sub_1000B1B78(a14, a9 + 80, &qword_1005914A0, &qword_100499040);
  sub_1000B1B78(a15, a9 + 136, &unk_1005974B0, &qword_1004AFCF0);
  *(a9 + 181) = a17;
  *(a9 + 177) = a16;
  *(a9 + 183) = a18 & 1;
  *(a9 + 184) = a20 & 1;
  *(a9 + 192) = a23;
  *(a9 + 188) = a22;
  *(a9 + 194) = a25;
  *(a9 + 196) = a26 & 1;
  return sub_1000B1B78(a27, a9 + 200, &qword_100595C10, &unk_100499060);
}

void NANDatapath.ResponseConfiguration.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  Hasher._combine(_:)(*(v1 + 2));
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  v8 = *(v1 + 9);
  v9 = *(v1 + 10);
  v10 = *(v1 + 11);
  v11 = *(v1 + 12);
  v12 = *(v1 + 13);
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  v13 = *(v1 + 16);
  if (v13 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
    Data.hash(into:)();
  }

  v14 = *(v1 + 41);
  v15 = *(v1 + 42);
  v16 = *(v1 + 43);
  v17 = *(v1 + 44);
  v18 = *(v1 + 45);
  Hasher._combine(_:)(*(v1 + 40));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  v19 = *(v1 + 47);
  v20 = *(v1 + 48);
  v21 = *(v1 + 49);
  v22 = *(v1 + 50);
  v23 = *(v1 + 51);
  Hasher._combine(_:)(*(v1 + 46));
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(v23);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 73));
  Hasher._combine(_:)(*(v1 + 74));
  v24 = *(v1 + 128);
  if (v24 != 1)
  {
    v25 = *(v1 + 112);
    v26 = *(v1 + 80);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v26 + 1);
    Data.hash(into:)();
    if (v25 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
      if (v24)
      {
LABEL_7:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_10;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
      if (v24)
      {
        goto LABEL_7;
      }
    }
  }

  Hasher._combine(_:)(0);
LABEL_10:
  sub_100012400(v1 + 136, &v50, &unk_1005974B0, &qword_1004AFCF0);
  if (v51[24] != 255)
  {
    v48 = v50;
    v49[0] = *v51;
    *(v49 + 9) = *&v51[9];
    Hasher._combine(_:)(1u);
    sub_10020C6FC(&v48, &v45);
    if (v47)
    {
      sub_10020C758(&v45);
      v27 = 0;
    }

    else
    {
      v27 = v46;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    Hasher._combine(_:)(v27);
    sub_10020C758(&v48);
    if (*(v1 + 183))
    {
      goto LABEL_17;
    }

LABEL_14:
    v28 = *(v1 + 181);
    v29 = *(v1 + 177);
    v30 = v29 | (*(v1 + 181) << 32);
    v31 = v30 >> 8;
    v32 = v30 >> 16;
    v33 = v30 >> 24;
    v34 = v28 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v29);
    Hasher._combine(_:)(v31);
    Hasher._combine(_:)(v32);
    Hasher._combine(_:)(v33);
    Hasher._combine(_:)(v28);
    goto LABEL_18;
  }

  Hasher._combine(_:)(0);
  if ((*(v1 + 183) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  LOBYTE(v34) = 0;
LABEL_18:
  Hasher._combine(_:)(v34);
  if (*(v1 + 184) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v35 = *(v1 + 188) | (*(v1 + 192) << 32);
  if ((v35 & 0xFF00000000) == 0x300000000)
  {
    v36 = 0;
    goto LABEL_23;
  }

  v38 = v35 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v35);
  Hasher._combine(_:)(0x801004u >> ((v35 >> 29) & 0xF8));
  if ((v35 >> 40) <= 3)
  {
    if (v38 == 2)
    {
      v39 = 0;
    }

    else
    {
      if (v38 != 3)
      {
        goto LABEL_41;
      }

      v39 = 1;
    }

LABEL_36:
    Hasher._combine(_:)(v39);
    if (*(v1 + 196))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  switch(v38)
  {
    case 4:
      v39 = 3;
      goto LABEL_36;
    case 5:
      v39 = 4;
      goto LABEL_36;
    case 6:
      v39 = 5;
      goto LABEL_36;
  }

LABEL_41:
  Hasher._combine(_:)(2uLL);
  v36 = BYTE5(v35) & 1;
LABEL_23:
  Hasher._combine(_:)(v36);
  if (*(v1 + 196))
  {
LABEL_24:
    LOBYTE(v37) = 0;
    goto LABEL_38;
  }

LABEL_37:
  v40 = *(v1 + 194);
  v37 = v40 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v40);
LABEL_38:
  Hasher._combine(_:)(v37);
  v41 = *(v1 + 208);
  if (v41)
  {
    v42 = *(v1 + 248);
    v43 = *(v1 + 240);
    v44 = *(v1 + 232);
    *&v50 = *(v1 + 200);
    *(&v50 + 1) = v41;
    *v51 = *(v1 + 216);
    *&v51[16] = v44;
    *&v51[24] = v43;
    v52 = v42;
    Hasher._combine(_:)(1u);
    NANPairing.Metadata.This.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NANDatapath.ResponseConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANDatapath.ResponseConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

void sub_100209FBC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 1) = *(v1 + 8);
  *(a1 + 5) = v2;
}

Swift::Int sub_100209FDC(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANDatapath.ResponseConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t NANDatapath.ConnectionMode.description.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000027;
  }

  if (a1 == 1)
  {
    return 0xD000000000000032;
  }

  return 0xD00000000000001FLL;
}

uint64_t NANDatapath.ConnectionMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E4F646572696170;
  }

  if (a1 == 1)
  {
    return 0x6972696150796E61;
  }

  return 7105633;
}

uint64_t sub_10020A10C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6972696150796E61;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 1)
  {
    v3 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E4F646572696170;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000796CLL;
  }

  v7 = 0x6972696150796E61;
  v8 = 0xEA0000000000676ELL;
  if (*a2 != 1)
  {
    v7 = 7105633;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E4F646572696170;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000796CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_10020A208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P11NANDatapathO14ConnectionModeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10020A238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000796CLL;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6972696150796E61;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E4F646572696170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10020A2A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020A34C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020A3DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

__n128 NANDatapath.Configuration.init(instanceID:serviceName:responderPublishID:responderManagementAddress:initiatorDataAddress:initiatorSubscribeID:publicOWEKey:serviceSpecificInfo:serviceType:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:connectionMode:channelInfo:countryCode:gtkRequired:pairingMetadata:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, _OWORD *a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, int a18, unsigned __int8 a19, __int128 *a20)
{
  v65 = a8;
  v57 = a7;
  v58 = a4;
  v55 = a2;
  v56 = a3;
  v63 = a18;
  v64 = a19;
  v62 = a17;
  v60 = a15;
  v61 = a16;
  v59 = a14;
  v54 = a13;
  v52 = a1;
  v53 = a11;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v50 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v49 - v24;
  v26 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v28 = v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v31 = v49 - v30;
  v32 = a10;
  v66 = a10;
  v33 = *(v29 + 6);
  v51 = v29;
  if (v33 == 1)
  {
    v34 = v65;
LABEL_5:
    sub_100016290(v34, &unk_100595C40, &qword_100499070);
    v38 = v57;
    goto LABEL_6;
  }

  v34 = v65;
  if (*v29 >= 2u)
  {
    goto LABEL_5;
  }

  sub_100012400(v65, v31, &unk_100595C40, &qword_100499070);
  sub_1000CB960(a10, v28);
  sub_1000D1274(v31, &v28[*(v26 + 24)]);
  sub_10020C7F8(v28, v25);
  v35 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  v36 = *(v35 - 8);
  v49[0] = *(v36 + 56);
  v49[1] = v36 + 56;
  (v49[0])(v25, 0, 1, v35);
  v37 = v50;
  sub_100012400(v25, v50, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v37, 7);
  sub_100016290(v25, &qword_10058BB48, &unk_100483040);
  sub_100016290(v31, &unk_100595C40, &qword_100499070);
  sub_10020C85C(v28);
  sub_1000CB960(v66, v28);
  v38 = v57;
  *(v28 + 1) = v57;
  sub_10020C7F8(v28, v25);
  swift_storeEnumTagMultiPayload();
  (v49[0])(v25, 0, 1, v35);
  sub_100012400(v25, v37, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v37, 7);
  sub_100016290(v65, &unk_100595C40, &qword_100499070);
  sub_100016290(v25, &qword_10058BB48, &unk_100483040);
  sub_10020C85C(v28);
  v32 = v66;
LABEL_6:
  v39 = v51;
  v40 = v51[1];
  *(a9 + 48) = *v51;
  *(a9 + 64) = v40;
  *(a9 + 80) = v39[2];
  v41 = v54;
  v42 = v54[1];
  *(a9 + 104) = *v54;
  *(a9 + 120) = v42;
  v43 = a20[3];
  *(a9 + 200) = a20[2];
  v44 = *a20;
  *(a9 + 184) = a20[1];
  *(a9 + 168) = v44;
  v46 = a20[4];
  result = a20[5];
  *(a9 + 248) = result;
  *(a9 + 232) = v46;
  *a9 = v52;
  *(a9 + 1) = a6;
  *(a9 + 3) = BYTE2(a6);
  *(a9 + 4) = BYTE3(a6);
  *(a9 + 5) = BYTE4(a6);
  *(a9 + 6) = BYTE5(a6);
  *(a9 + 7) = v38;
  *(a9 + 8) = v55;
  *(a9 + 16) = v56;
  *(a9 + 24) = v58;
  *(a9 + 25) = a5;
  *(a9 + 27) = BYTE2(a5);
  *(a9 + 28) = BYTE3(a5);
  *(a9 + 29) = BYTE4(a5);
  *(a9 + 30) = BYTE5(a5);
  *(a9 + 31) = 0;
  *(a9 + 32) = v53;
  *(a9 + 40) = v32;
  *(a9 + 96) = *(v39 + 6);
  *(a9 + 136) = *(v41 + 4);
  v47 = v59;
  *(a9 + 148) = WORD2(v59);
  *(a9 + 144) = v47;
  *(a9 + 150) = BYTE6(v47) & 1;
  *(a9 + 151) = v60 & 1;
  *(a9 + 152) = v61;
  LODWORD(v47) = v62;
  *(a9 + 160) = WORD2(v62);
  *(a9 + 156) = v47;
  v48 = BYTE2(v63);
  *(a9 + 162) = v63;
  *(a9 + 164) = v48 & 1;
  *(a9 + 165) = v64;
  *(a9 + 264) = *(a20 + 12);
  *(a9 + 216) = v43;
  return result;
}

uint64_t NANDatapath.ServiceType.init(apiServiceType:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NANDatapath.ConnectionMode.init(apiConnectionMode:)(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10002u >> (8 * a1);
  }
}

BOOL _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v16 = *(a2 + 24);
  v17 = v6;
  v7 = v6;
  v8 = v16;
  if (*(&v6 + 1) >> 60 == 15)
  {
    if (*(&v16 + 1) >> 60 == 15)
    {
      sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
      sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (*(&v16 + 1) >> 60 == 15)
  {
LABEL_8:
    sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
    sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
    sub_100017554(v7, *(&v7 + 1));
    v11 = *(&v8 + 1);
    v10 = v8;
LABEL_9:
    sub_100017554(v10, v11);
    return 0;
  }

  sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
  sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
  v12 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, *(&v7 + 1), v8, *(&v8 + 1));
  sub_100017554(v8, *(&v8 + 1));
  if (!v12)
  {
    v11 = *(&v7 + 1);
    v10 = v7;
    goto LABEL_9;
  }

LABEL_12:
  sub_100017554(v7, *(&v7 + 1));
  v13 = *(a1 + 6);
  v14 = *(a2 + 6);
  if (v13)
  {
    return v14 && (*(a1 + 5) == *(a2 + 5) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v14;
}

BOOL _s7CoreP2P11NANDatapathO21ResponseConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  LODWORD(v113[0]) = *(a1 + 2);
  WORD2(v113[0]) = v2;
  if (LODWORD(v113[0]) != *(a2 + 2) || v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  LODWORD(v113[0]) = *(a1 + 2);
  WORD2(v113[0]) = v5;
  if (LODWORD(v113[0]) != *(a2 + 2) || v5 != v6)
  {
    return 0;
  }

  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *(a2 + 4);
  if (v9 == 4)
  {
    if (v12 == 4)
    {
      v14 = a1;
      v15 = a2;
      sub_100184290(*(a1 + 2), v8, v10);
      sub_100184290(v12, v11, v13);
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  if (v12 == 4)
  {
LABEL_30:
    sub_100184290(*(a1 + 2), v8, v10);
    sub_100184290(v12, v11, v13);
    sub_1001842D0(v9, v8, v10);
    v26 = v12;
    v27 = v11;
    v28 = v13;
LABEL_36:
    sub_1001842D0(v26, v27, v28);
    return 0;
  }

  v14 = a1;
  v15 = a2;
  v29 = *(a1 + 2);
  sub_100184290(*(a1 + 2), v8, v10);
  sub_100184290(v12, v11, v13);
  if (v29 != v12)
  {
    sub_1001842D0(v12, v11, v13);
LABEL_35:
    v26 = v9;
    v27 = v8;
    v28 = v10;
    goto LABEL_36;
  }

  v30 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v10, v11, v13);
  sub_1001842D0(v12, v11, v13);
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_16:
  sub_1001842D0(v9, v8, v10);
  v16 = *(v14 + 22);
  v17 = *(v15 + 22);
  LODWORD(v113[0]) = *(v14 + 10);
  WORD2(v113[0]) = v16;
  if (LODWORD(v113[0]) != *(v15 + 10) || v16 != v17)
  {
    return 0;
  }

  v19 = *(v14 + 25);
  v20 = *(v15 + 25);
  LODWORD(v113[0]) = *(v14 + 46);
  WORD2(v113[0]) = v19;
  if (LODWORD(v113[0]) != *(v15 + 46) || v19 != v20)
  {
    return 0;
  }

  v22 = v14;
  v23 = v15;
  v24 = String.lowercased()();
  v25 = String.lowercased()();
  if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = 0x6576697470616461;
  if (v14[72])
  {
    if (v14[72] == 1)
    {
      v34 = 0xE800000000000000;
      v35 = 0x656D69746C616572;
    }

    else
    {
      v35 = 0x6E6574614C776F6CLL;
      v34 = 0xEA00000000007963;
    }
  }

  else
  {
    v34 = 0xE800000000000000;
    v35 = 0x6576697470616461;
  }

  if (v15[72])
  {
    if (v15[72] == 1)
    {
      v36 = 0xE800000000000000;
      v33 = 0x656D69746C616572;
    }

    else
    {
      v33 = 0x6E6574614C776F6CLL;
      v36 = 0xEA00000000007963;
    }
  }

  else
  {
    v36 = 0xE800000000000000;
  }

  if (v35 == v33 && v34 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if (v14[73] != v15[73] || v14[74] != v15[74])
  {
    return 0;
  }

  v39 = *(v14 + 10);
  v38 = *(v14 + 11);
  v40 = *(v14 + 12);
  v41 = *(v14 + 13);
  v43 = *(v14 + 14);
  v42 = *(v14 + 15);
  v44 = *(v14 + 16);
  v46 = *(v15 + 10);
  v45 = *(v15 + 11);
  v48 = *(v15 + 12);
  v47 = *(v23 + 13);
  v107 = *(v23 + 14);
  v49 = *(v23 + 16);
  v109 = *(v23 + 15);
  if (v44 == 1)
  {
    if (v49 == 1)
    {
      v99 = v46;
      v101 = v48;
      v50 = v38;
      v51 = v42;
      sub_10011A208(v39, v38, v40, v41, v43, v42, 1);
      sub_10011A208(v99, v45, v101, v47, v107, v109, 1);
      sub_10011A270(v39, v50, v40, v41, v43, v51, 1);
      goto LABEL_61;
    }

LABEL_59:
    v52 = v39;
    v53 = v39;
    v54 = v38;
    v104 = v41;
    v55 = v41;
    v56 = v43;
    v57 = v43;
    v58 = v42;
    v98 = v44;
    v59 = v49;
    sub_10011A208(v53, v38, v40, v55, v57, v42, v44);
    sub_10011A208(v46, v45, v48, v47, v107, v109, v59);
    sub_10011A270(v52, v54, v40, v104, v56, v58, v98);
    sub_10011A270(v46, v45, v48, v47, v107, v109, v59);
    return 0;
  }

  if (v49 == 1)
  {
    goto LABEL_59;
  }

  v125[0] = v46;
  v126 = v45;
  v127 = v48;
  v128 = v47;
  v129 = v107;
  v130 = v109;
  v131 = v49;
  v118[0] = v39;
  v119 = v38;
  v120 = v40;
  v121 = v41;
  v122 = v43;
  v123 = v42;
  v124 = v44;
  v93 = v38;
  v94 = v40;
  v60 = v40;
  v105 = v41;
  v61 = v41;
  v96 = v42;
  v62 = v44;
  v63 = v49;
  sub_10011A208(v39, v38, v60, v61, v43, v42, v44);
  sub_10011A208(v46, v45, v48, v47, v107, v109, v63);
  v102 = _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v118, v125);
  sub_10011A270(v46, v45, v48, v47, v107, v109, v63);
  sub_10011A270(v39, v93, v94, v105, v43, v96, v62);
  if (!v102)
  {
    return 0;
  }

LABEL_61:
  sub_100012400((v22 + 136), v113, &unk_1005974B0, &qword_1004AFCF0);
  sub_100012400((v23 + 136), &v115, &unk_1005974B0, &qword_1004AFCF0);
  if (v114 == 255)
  {
    if (v116[24] == 255)
    {
      sub_100016290(v113, &unk_1005974B0, &qword_1004AFCF0);
      goto LABEL_67;
    }

LABEL_71:
    sub_100016290(v113, &qword_1005915C8, &qword_100499EC0);
    return 0;
  }

  sub_100012400(v113, v117, &unk_1005974B0, &qword_1004AFCF0);
  if (v116[24] == 255)
  {
    sub_10020C758(v117);
    goto LABEL_71;
  }

  v111 = v115;
  v112[0] = *v116;
  *(v112 + 9) = *&v116[9];
  v64 = _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(v117, &v111);
  sub_10020C758(&v111);
  sub_10020C758(v117);
  sub_100016290(v113, &unk_1005974B0, &qword_1004AFCF0);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  if (v22[183])
  {
    if ((v23[183] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v23[183])
    {
      return 0;
    }

    v65 = *(v22 + 177) | (*(v22 + 181) << 32);
    v66 = *(v23 + 177) | (*(v23 + 181) << 32);
    v67.i64[0] = 0xFFFFFFFFFFFFLL;
    v67.i64[1] = 0xFFFFFFFFFFFFLL;
    v68 = vandq_s8(vdupq_n_s64(v65), v67);
    v69 = vshlq_u64(v68, xmmword_1004817A0);
    v70 = vandq_s8(vdupq_n_s64(v66), v67);
    v71 = vshlq_u64(v70, xmmword_1004817A0);
    v72 = vshlq_u64(v70, xmmword_100481790);
    LOBYTE(v113[0]) = *(v22 + 177);
    *v68.i8 = vmovn_s64(vshlq_u64(v68, xmmword_100481790));
    *v69.i8 = vmovn_s64(v69);
    v69.i16[1] = v69.i16[2];
    v69.i16[2] = v68.i16[0];
    v69.i16[3] = v68.i16[2];
    *(v113 + 1) = vmovn_s16(v69).u32[0];
    BYTE5(v113[0]) = BYTE5(v65);
    LOBYTE(v117[0]) = v66;
    *v68.i8 = vmovn_s64(v72);
    *v72.i8 = vmovn_s64(v71);
    v72.i16[1] = v72.i16[2];
    v72.i16[2] = v68.i16[0];
    v72.i16[3] = v68.i16[2];
    *(v117 + 1) = vmovn_s16(v72).u32[0];
    BYTE5(v117[0]) = BYTE5(v66);
    if (LODWORD(v113[0]) != LODWORD(v117[0]) || WORD2(v113[0]) != WORD2(v117[0]))
    {
      return 0;
    }
  }

  if (v22[184])
  {
    if (!v23[184])
    {
      return 0;
    }
  }

  else if (v23[184])
  {
    return 0;
  }

  v74 = *(v22 + 47) | (*(v22 + 96) << 32);
  v75 = *(v23 + 47) | (*(v23 + 96) << 32);
  v76 = v75 & 0xFF00000000;
  if ((v74 & 0xFF00000000) != 0x300000000)
  {
    if (v76 == 0x300000000 || *(v22 + 47) != *(v23 + 47) || ((0x801004u >> ((v74 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v75 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v78 = v74 >> 40;
    v79 = v75 >> 40;
    if (v78 <= 3)
    {
      if (v78 == 2)
      {
        if (v79 != 2)
        {
          return 0;
        }

        goto LABEL_84;
      }

      if (v78 == 3)
      {
        if (v79 != 3)
        {
          return 0;
        }

        goto LABEL_84;
      }
    }

    else
    {
      switch(v78)
      {
        case 4:
          if (v79 != 4)
          {
            return 0;
          }

          goto LABEL_84;
        case 5:
          if (v79 != 5)
          {
            return 0;
          }

          goto LABEL_84;
        case 6:
          if (v79 != 6)
          {
            return 0;
          }

          goto LABEL_84;
      }
    }

    if (v79 - 2) < 5 || ((v79 ^ v78))
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v76 != 0x300000000)
  {
    return 0;
  }

LABEL_84:
  v77 = v23[196];
  if (v22[196])
  {
    if (!v23[196])
    {
      return 0;
    }
  }

  else
  {
    if (*(v22 + 97) != *(v23 + 97))
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  v80 = *(v22 + 25);
  v81 = *(v22 + 26);
  v83 = *(v22 + 27);
  v82 = *(v22 + 28);
  v84 = *(v22 + 29);
  v85 = *(v22 + 30);
  v86 = *(v22 + 31);
  v87 = *(v23 + 25);
  v88 = *(v23 + 26);
  v89 = *(v23 + 27);
  v108 = *(v23 + 29);
  v110 = *(v23 + 28);
  v103 = *(v23 + 30);
  v106 = *(v23 + 31);
  if (v81)
  {
    if (v88)
    {
      v100 = *(v23 + 27);
      v113[0] = *(v23 + 25);
      v113[1] = v88;
      v113[2] = v89;
      v113[3] = v110;
      v113[4] = v108;
      v114 = v103;
      *&v115 = v106;
      v90 = v80;
      *&v117[0] = v80;
      *&v117[1] = v81;
      v95 = v80;
      *&v117[2] = v83;
      *&v117[3] = v82;
      v117[4] = v84;
      v117[5] = v85;
      v117[6] = v86;
      v97 = _s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(v117, v113);
      sub_10020D510(v90, v81, v83, v82);
      sub_10020D510(v87, v88, v100, v110);
      sub_100083690(v87, v88, v100, v110);
      sub_100083690(v95, v81, v83, v82);
      return v97;
    }

LABEL_104:
    v91 = v80;
    sub_10020D510(v80, v81, v83, v82);
    sub_10020D510(v87, v88, v89, v110);
    sub_100083690(v91, v81, v83, v82);
    sub_100083690(v87, v88, v89, v110);
    return 0;
  }

  if (v88)
  {
    goto LABEL_104;
  }

  v92 = v80;
  sub_10020D510(v80, 0, v83, v82);
  sub_10020D510(v87, 0, v89, v110);
  sub_100083690(v92, 0, v83, v82);
  return 1;
}

BOOL _s7CoreP2P11NANDatapathO25ConfirmationConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  LOBYTE(v7) = BYTE1(a1);
  BYTE1(v7) = BYTE2(a1);
  BYTE2(v7) = BYTE3(a1);
  HIBYTE(v7) = BYTE4(a1);
  LOBYTE(v8) = BYTE5(a1);
  HIBYTE(v8) = BYTE6(a1);
  LOBYTE(v5) = BYTE1(a2);
  BYTE1(v5) = BYTE2(a2);
  BYTE2(v5) = BYTE3(a2);
  HIBYTE(v5) = BYTE4(a2);
  LOBYTE(v6) = BYTE5(a2);
  HIBYTE(v6) = BYTE6(a2);
  return v7 == v5 && v8 == v6 && (a2 ^ a1) >> 56 == 0;
}

uint64_t _s7CoreP2P11NANDatapathO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a2 + 5);
  LODWORD(v134) = *(a1 + 1);
  WORD2(v134) = v2;
  v4 = v134 == *(a2 + 1) && v2 == v3;
  if (!v4 || a1[7] != a2[7])
  {
    return 0;
  }

  v7 = String.lowercased()();
  if (v7 == String.lowercased()())
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[24] != a2[24])
  {
    return 0;
  }

  v9 = *(a1 + 29);
  v10 = *(a2 + 29);
  LODWORD(v134) = *(a1 + 25);
  WORD2(v134) = v9;
  if (v134 != *(a2 + 25) || v9 != v10)
  {
    return 0;
  }

  if (a1[31])
  {
    v13 = 0x73616369746C756DLL;
  }

  else
  {
    v13 = 0x74736163696E75;
  }

  if (a1[31])
  {
    v14 = 0xE900000000000074;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (a2[31])
  {
    v15 = 0x73616369746C756DLL;
  }

  else
  {
    v15 = 0x74736163696E75;
  }

  if (a2[31])
  {
    v16 = 0xE900000000000074;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = 0x6576697470616461;
  if (a1[32])
  {
    if (a1[32] == 1)
    {
      v19 = 0xE800000000000000;
      v20 = 0x656D69746C616572;
    }

    else
    {
      v20 = 0x6E6574614C776F6CLL;
      v19 = 0xEA00000000007963;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    v20 = 0x6576697470616461;
  }

  if (a2[32])
  {
    if (a2[32] == 1)
    {
      v21 = 0xE800000000000000;
      v18 = 0x656D69746C616572;
    }

    else
    {
      v18 = 0x6E6574614C776F6CLL;
      v21 = 0xEA00000000007963;
    }
  }

  else
  {
    v21 = 0xE800000000000000;
  }

  if (v20 == v18 && v19 == v21)
  {

    goto LABEL_48;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 5), *(a2 + 5));
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v25 = *(a1 + 6);
  v24 = *(a1 + 7);
  v26 = *(a1 + 8);
  v27 = *(a1 + 9);
  v29 = *(a1 + 10);
  v28 = *(a1 + 11);
  v30 = *(a1 + 12);
  v31 = *(a2 + 6);
  v32 = *(a2 + 7);
  v34 = *(a2 + 8);
  v33 = *(a2 + 9);
  v36 = *(a2 + 10);
  v35 = *(a2 + 11);
  v37 = *(a2 + 12);
  if (v30 == 1)
  {
    if (v37 == 1)
    {
      v111 = *(a2 + 6);
      v115 = *(a2 + 9);
      v102 = *(a2 + 7);
      v103 = *(a2 + 8);
      v38 = *(a1 + 10);
      v39 = *(a1 + 11);
      sub_10011A208(v25, v24, v26, v27, v29, v28, 1);
      sub_10011A208(v111, v102, v103, v115, v36, v35, 1);
      sub_10011A270(v25, v24, v26, v27, v38, v39, 1);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v37 == 1)
  {
LABEL_53:
    v40 = *(a2 + 6);
    v41 = *(a1 + 6);
    v42 = v32;
    v43 = v34;
    v112 = v37;
    v116 = v30;
    v44 = v33;
    v119 = v28;
    v122 = v29;
    sub_10011A208(v41, v24, v26, v27, v29, v28, v30);
    sub_10011A208(v40, v42, v43, v44, v36, v35, v112);
    sub_10011A270(v25, v24, v26, v27, v122, v119, v116);
    sub_10011A270(v40, v42, v43, v44, v36, v35, v112);
    return 0;
  }

  v169[0] = *(a2 + 6);
  v170 = v32;
  v171 = v34;
  v172 = v33;
  v173 = v36;
  v174 = v35;
  v175 = v37;
  v162[0] = v25;
  v163 = v24;
  v164 = v26;
  v165 = v27;
  v166 = v29;
  v167 = v28;
  v168 = v30;
  v105 = v25;
  v106 = v24;
  v113 = v31;
  v45 = v25;
  v46 = v24;
  v108 = v26;
  v47 = v34;
  v48 = v26;
  v49 = v33;
  v120 = v28;
  v123 = v29;
  v50 = v35;
  v51 = v30;
  sub_10011A208(v45, v46, v48, v27, v29, v28, v30);
  sub_10011A208(v113, v32, v47, v49, v36, v50, v37);
  v104 = _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v162, v169);
  sub_10011A270(v113, v32, v47, v49, v36, v50, v37);
  sub_10011A270(v105, v106, v108, v27, v123, v120, v51);
  if (!v104)
  {
    return 0;
  }

LABEL_55:
  sub_100012400((a1 + 104), &v134, &qword_1005914A8, &qword_100499048);
  sub_100012400((a2 + 104), &v136[8], &qword_1005914A8, &qword_100499048);
  if (*(&v135 + 1) != 1)
  {
    sub_100012400(&v134, &v146, &qword_1005914A8, &qword_100499048);
    if (*&v136[32] == 1)
    {
      sub_10020C6CC(&v146);
      goto LABEL_60;
    }

    v125 = *&v136[8];
    v126 = *&v136[24];
    *&v127 = *&v136[40];
    sub_10020C694(&v146, &v153);
    *&v155[24] = v126;
    *&v155[8] = v125;
    *&v155[40] = v127;
    if (*(&v154 + 1))
    {
      if (*&v155[32])
      {
        sub_10020C6CC(&v155[8]);
LABEL_68:
        sub_10020C6CC(&v153);
        sub_10020C6CC(&v146);
        goto LABEL_69;
      }
    }

    else if (!*&v155[32])
    {
      goto LABEL_68;
    }

    sub_100016290(&v153, &qword_100591498, &qword_100499038);
    sub_10020C6CC(&v146);
    v52 = &qword_1005914A8;
    v53 = &qword_100499048;
    goto LABEL_61;
  }

  if (*&v136[32] != 1)
  {
LABEL_60:
    v52 = &unk_1005915D0;
    v53 = &unk_100499EC8;
    goto LABEL_61;
  }

LABEL_69:
  sub_100016290(&v134, &qword_1005914A8, &qword_100499048);
  if (a1[150])
  {
    if ((a2[150] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[150])
    {
      return 0;
    }

    v55 = *(a1 + 36) | (*(a1 + 74) << 32);
    v56 = *(a2 + 36) | (*(a2 + 74) << 32);
    v57.i64[0] = 0xFFFFFFFFFFFFLL;
    v57.i64[1] = 0xFFFFFFFFFFFFLL;
    v58 = vandq_s8(vdupq_n_s64(v55), v57);
    v59 = vshlq_u64(v58, xmmword_1004817A0);
    v60 = vandq_s8(vdupq_n_s64(v56), v57);
    v61 = vshlq_u64(v60, xmmword_1004817A0);
    v62 = vshlq_u64(v60, xmmword_100481790);
    LOBYTE(v134) = *(a1 + 36);
    *v58.i8 = vmovn_s64(vshlq_u64(v58, xmmword_100481790));
    *v59.i8 = vmovn_s64(v59);
    v59.i16[1] = v59.i16[2];
    v59.i16[2] = v58.i16[0];
    v59.i16[3] = v58.i16[2];
    *(&v134 + 1) = vmovn_s16(v59).u32[0];
    BYTE5(v134) = BYTE5(v55);
    LOBYTE(v153) = v56;
    *v58.i8 = vmovn_s64(v62);
    *v62.i8 = vmovn_s64(v61);
    v62.i16[1] = v62.i16[2];
    v62.i16[2] = v58.i16[0];
    v62.i16[3] = v58.i16[2];
    *(&v153 + 1) = vmovn_s16(v62).u32[0];
    BYTE5(v153) = BYTE5(v56);
    if (v134 != v153 || WORD2(v134) != WORD2(v153))
    {
      return 0;
    }
  }

  if (a1[151])
  {
    if (!a2[151])
    {
      return 0;
    }
  }

  else if (a2[151])
  {
    return 0;
  }

  v64 = a1[152];
  v65 = a2[152];
  if (v64 == 3)
  {
    if (v65 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v65 == 3)
    {
      return 0;
    }

    v66 = 0x6E4F646572696170;
    v67 = 0xEA0000000000796CLL;
    if (a1[152])
    {
      if (v64 == 1)
      {
        v68 = 0x6972696150796E61;
        v69 = 0xEA0000000000676ELL;
      }

      else
      {
        v69 = 0xE300000000000000;
        v68 = 7105633;
      }
    }

    else
    {
      v68 = 0x6E4F646572696170;
      v69 = 0xEA0000000000796CLL;
    }

    if (a2[152])
    {
      if (v65 == 1)
      {
        v66 = 0x6972696150796E61;
        v67 = 0xEA0000000000676ELL;
      }

      else
      {
        v67 = 0xE300000000000000;
        v66 = 7105633;
      }
    }

    if (v68 == v66 && v69 == v67)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v71 = *(a1 + 39) | (*(a1 + 80) << 32);
  v72 = *(a2 + 39) | (*(a2 + 80) << 32);
  v73 = v72 & 0xFF00000000;
  if ((v71 & 0xFF00000000) != 0x300000000)
  {
    if (v73 == 0x300000000 || *(a1 + 39) != *(a2 + 39) || ((0x801004u >> ((v71 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v72 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v75 = v71 >> 40;
    v76 = v72 >> 40;
    if (v75 <= 3)
    {
      if (v75 == 2)
      {
        if (v76 != 2)
        {
          return 0;
        }

        goto LABEL_101;
      }

      if (v75 == 3)
      {
        if (v76 != 3)
        {
          return 0;
        }

        goto LABEL_101;
      }
    }

    else
    {
      switch(v75)
      {
        case 4:
          if (v76 != 4)
          {
            return 0;
          }

          goto LABEL_101;
        case 5:
          if (v76 != 5)
          {
            return 0;
          }

          goto LABEL_101;
        case 6:
          if (v76 != 6)
          {
            return 0;
          }

          goto LABEL_101;
      }
    }

    if (v76 - 2) < 5 || ((v76 ^ v75))
    {
      return 0;
    }

    goto LABEL_101;
  }

  if (v73 != 0x300000000)
  {
    return 0;
  }

LABEL_101:
  v74 = a2[164];
  if (a1[164])
  {
    if (!a2[164])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 81) != *(a2 + 81))
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  v77 = a1[165];
  v78 = a2[165];
  if (v77 == 2)
  {
    if (v78 != 2)
    {
      return 0;
    }

    goto LABEL_121;
  }

  result = 0;
  if (v78 != 2 && ((v78 ^ v77) & 1) == 0)
  {
LABEL_121:
    v79 = *(a1 + 216);
    v80 = *(a1 + 248);
    v150 = *(a1 + 232);
    v151 = v80;
    v152 = *(a1 + 33);
    v81 = *(a1 + 184);
    v146 = *(a1 + 168);
    v147 = v81;
    v148 = *(a1 + 200);
    v149 = v79;
    v82 = *(a2 + 184);
    v83 = *(a2 + 200);
    v153 = *(a2 + 168);
    v154 = v82;
    v84 = *(a2 + 216);
    v85 = *(a2 + 232);
    v86 = *(a2 + 248);
    v157 = *(a2 + 33);
    *&v155[32] = v85;
    v156 = v86;
    *v155 = v83;
    *&v155[16] = v84;
    v87 = v146;
    v88 = v147;
    v89 = v148;
    v90 = v149;
    v121 = *(&v150 + 1);
    v124 = v150;
    v117 = *(&v151 + 1);
    v118 = v151;
    v114 = v152;
    if (*(&v146 + 1))
    {
      if (*(&v153 + 1))
      {
        v134 = v153;
        v91 = a2;
        v92 = *(a2 + 200);
        v93 = *(a2 + 232);
        *&v136[16] = *(a2 + 216);
        *&v136[32] = v93;
        v137 = *(a2 + 248);
        v94 = *(a2 + 33);
        v138 = v94;
        v135 = *(v91 + 184);
        *v136 = v92;
        v95 = *&v136[24];
        v96 = v93;
        v109 = v137;
        v110 = *(&v93 + 1);
        v107 = *(&v137 + 1);
        v158[0] = v146;
        v158[1] = v147;
        v158[2] = v148;
        v159 = v149;
        v160[0] = v153;
        v160[1] = v135;
        v160[2] = v92;
        v161 = *&v136[16];
        if (_s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(v158, v160) && (__PAIR128__(v124, *(&v90 + 1)) == __PAIR128__(v96, v95) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v121 == v110 && v118 == v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          if (v117 == v107 && v114 == v94)
          {
            sub_100012400(&v146, &v125, &qword_1005968A0, &unk_100499050);
            sub_100012400(&v153, &v125, &qword_1005968A0, &unk_100499050);
            sub_100016290(&v134, &qword_1005968A0, &unk_100499050);
LABEL_151:
            v125 = v87;
            v126 = v88;
            v127 = v89;
            v128 = v90;
            v129 = v124;
            v130 = v121;
            v131 = v118;
            v132 = v117;
            v133 = v114;
            v100 = &v125;
            goto LABEL_152;
          }

          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100012400(&v146, &v125, &qword_1005968A0, &unk_100499050);
          sub_100012400(&v153, &v125, &qword_1005968A0, &unk_100499050);
          sub_100016290(&v134, &qword_1005968A0, &unk_100499050);
          if (v101)
          {
            goto LABEL_151;
          }
        }

        else
        {
          sub_100012400(&v146, &v125, &qword_1005968A0, &unk_100499050);
          sub_100012400(&v153, &v125, &qword_1005968A0, &unk_100499050);
          sub_100016290(&v134, &qword_1005968A0, &unk_100499050);
        }

        v125 = v87;
        v126 = v88;
        v127 = v89;
        v128 = v90;
        v129 = v124;
        v130 = v121;
        v131 = v118;
        v132 = v117;
        v133 = v114;
        v52 = &qword_1005968A0;
        v53 = &unk_100499050;
        v54 = &v125;
        goto LABEL_62;
      }
    }

    else if (!*(&v153 + 1))
    {
      v134 = v146;
      v135 = v147;
      *v136 = v148;
      *&v136[16] = v149;
      *&v136[32] = v150;
      v137 = v151;
      v138 = v152;
      sub_100012400(&v146, &v125, &qword_1005968A0, &unk_100499050);
      sub_100012400(&v153, &v125, &qword_1005968A0, &unk_100499050);
      v100 = &v134;
LABEL_152:
      sub_100016290(v100, &qword_1005968A0, &unk_100499050);
      return 1;
    }

    v134 = v146;
    v135 = v147;
    *v136 = v148;
    *&v136[16] = v149;
    *&v136[32] = v150;
    v137 = v151;
    v138 = v152;
    v139 = v153;
    v140 = *(a2 + 184);
    v141 = *(a2 + 200);
    v97 = *(a2 + 216);
    v98 = *(a2 + 232);
    v99 = *(a2 + 248);
    v145 = *(a2 + 33);
    v144 = v99;
    v143 = v98;
    v142 = v97;
    sub_100012400(&v146, &v125, &qword_1005968A0, &unk_100499050);
    sub_100012400(&v153, &v125, &qword_1005968A0, &unk_100499050);
    v52 = &unk_1005915D8;
    v53 = &unk_100499ED0;
LABEL_61:
    v54 = &v134;
LABEL_62:
    sub_100016290(v54, v52, v53);
    return 0;
  }

  return result;
}

unint64_t _s7CoreP2P11NANDatapathO11ServiceTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553700, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s7CoreP2P11NANDatapathO14ConnectionModeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005537B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10020C7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020C85C(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10020C8BC()
{
  result = qword_1005914B0;
  if (!qword_1005914B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.DatapathType, &type metadata for NANDatapath.DatapathType, v0, v1);
    atomic_store(result, &qword_1005914B0);
  }

  return result;
}

unint64_t sub_10020C940()
{
  result = qword_1005914C8;
  if (!qword_1005914C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.ServiceType, &type metadata for NANDatapath.ServiceType, v0, v1);
    atomic_store(result, &qword_1005914C8);
  }

  return result;
}

unint64_t sub_10020C998()
{
  result = qword_1005914D0;
  if (!qword_1005914D0)
  {
    result = swift_getWitnessTable("y_\v", &type metadata for NANDatapath.ParametersType, v0, v1);
    atomic_store(result, &qword_1005914D0);
  }

  return result;
}

unint64_t sub_10020C9F0()
{
  result = qword_1005914D8;
  if (!qword_1005914D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.ParametersMulticastType, &type metadata for NANDatapath.ParametersMulticastType, v0, v1);
    atomic_store(result, &qword_1005914D8);
  }

  return result;
}

unint64_t sub_10020CA48()
{
  result = qword_1005914E0;
  if (!qword_1005914E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.InternetSharingConfiguration, &type metadata for NANDatapath.InternetSharingConfiguration, v0, v1);
    atomic_store(result, &qword_1005914E0);
  }

  return result;
}

unint64_t sub_10020CAA0()
{
  result = qword_1005914E8;
  if (!qword_1005914E8)
  {
    result = swift_getWitnessTable("A]\v", &type metadata for NANDatapath.SecurityConfiguration, v0, v1);
    atomic_store(result, &qword_1005914E8);
  }

  return result;
}

unint64_t sub_10020CAF4(uint64_t a1)
{
  result = sub_10020CB1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020CB1C()
{
  result = qword_100596790;
  if (!qword_100596790)
  {
    result = swift_getWitnessTable("um\v", &type metadata for NANDatapath.Configuration, v0, v1);
    atomic_store(result, &qword_100596790);
  }

  return result;
}

unint64_t sub_10020CB70()
{
  result = qword_100595BE0;
  if (!qword_100595BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPeerServiceIdentifier, &type metadata for NANPeerServiceIdentifier, v0, v1);
    atomic_store(result, &qword_100595BE0);
  }

  return result;
}

unint64_t sub_10020CBF0()
{
  result = qword_100591530;
  if (!qword_100591530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.Configuration, &type metadata for NANDatapath.Configuration, v0, v1);
    atomic_store(result, &qword_100591530);
  }

  return result;
}

unint64_t sub_10020CC44()
{
  result = qword_100591538;
  if (!qword_100591538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.Configuration, &type metadata for NANDatapath.Configuration, v0, v1);
    atomic_store(result, &qword_100591538);
  }

  return result;
}

unint64_t sub_10020CC9C()
{
  result = qword_100591540;
  if (!qword_100591540)
  {
    result = swift_getWitnessTable("y\\\v", &type metadata for NANDatapath.Configuration, v0, v1);
    atomic_store(result, &qword_100591540);
  }

  return result;
}

unint64_t sub_10020CCF0(uint64_t a1)
{
  result = sub_10020CD18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020CD18()
{
  result = qword_100591548;
  if (!qword_100591548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.ResponseConfiguration, &type metadata for NANDatapath.ResponseConfiguration, v0, v1);
    atomic_store(result, &qword_100591548);
  }

  return result;
}

uint64_t sub_10020CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10020CDD4()
{
  result = qword_100591590;
  if (!qword_100591590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.ResponseConfiguration, &type metadata for NANDatapath.ResponseConfiguration, v0, v1);
    atomic_store(result, &qword_100591590);
  }

  return result;
}

unint64_t sub_10020CE28()
{
  result = qword_100591598;
  if (!qword_100591598)
  {
    result = swift_getWitnessTable(")\\\v", &type metadata for NANDatapath.ResponseConfiguration, v0, v1);
    atomic_store(result, &qword_100591598);
  }

  return result;
}

unint64_t sub_10020CE80()
{
  result = qword_1005915A0;
  if (!qword_1005915A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.ResponseConfiguration, &type metadata for NANDatapath.ResponseConfiguration, v0, v1);
    atomic_store(result, &qword_1005915A0);
  }

  return result;
}

unint64_t sub_10020CED8()
{
  result = qword_1005915A8;
  if (!qword_1005915A8)
  {
    result = swift_getWitnessTable("I[\v", &type metadata for NANDatapath.ConfirmationConfiguration, v0, v1);
    atomic_store(result, &qword_1005915A8);
  }

  return result;
}

unint64_t sub_10020CF60()
{
  result = qword_1005915C0;
  if (!qword_1005915C0)
  {
    result = swift_getWitnessTable("![\v", &type metadata for NANDatapath.ConnectionMode, v0, v1);
    atomic_store(result, &qword_1005915C0);
  }

  return result;
}

uint64_t sub_10020D004(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10020D01C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10020D06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_10020D0C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10020D104(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020D12C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10020D188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_10020D1F8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D21C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_10020D288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10020D31C(unsigned __int8 *a1)
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

uint64_t sub_10020D33C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10020D350(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_10020D394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D3DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDatapath.ConfirmationConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 8))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDatapath.ConfirmationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 2;
    }
  }

  return result;
}

double sub_10020D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t apple80211_ht_capability.maxMCS_maxNSS.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v16 = HIBYTE(a2);
  v15 = HIDWORD(a2) >> 8;
  v14 = a2 >> 8;
  v17 = a3;
  v18 = a4;
  v4 = sub_10020DDAC(&v14, &v19);
  if (v4[2] < 0xAuLL)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 + 4;
LABEL_4:
  v9 = *(v8 + v7);
  if (*(v8 + v7))
  {
    v10 = __CFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_17;
    }
  }

  v11 = 0;
  ++v7;
  v12 = 8 * (v5 - 1);
  while (1)
  {
    if (v11 > 7)
    {
      goto LABEL_8;
    }

    if ((v9 >> v11))
    {
      break;
    }

LABEL_7:
    if (v11 == 7)
    {
      if (v7 == 10)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

LABEL_8:
    ++v12;
    v10 = __CFADD__(v11++, 1);
    if (v10)
    {
      goto LABEL_14;
    }
  }

  if (!v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v6 = v12;
  if (!((v5 - 1) >> 61))
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:

  return v6;
}

uint64_t apple80211_ht_capability.bandwidth.getter(uint64_t a1)
{
  if ((a1 & 0x2000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t apple80211_vht_capability.maxMCS_maxNSS.getter(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 50) & 3;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      result = qword_100499F30[HIWORD(a2) & 3];
    }

    else
    {
      result = 9;
    }
  }

  else if (v2)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v4 = (a2 >> 52) & 3;
  if (v4 > 1)
  {
    if (v4 != 3)
    {
      result = 9;
    }
  }

  else if (v4)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v5 = (a2 >> 54) & 3;
  if (v5 > 1)
  {
    if (v5 != 3)
    {
      result = 9;
    }
  }

  else if (v5)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v6 = HIBYTE(a2) & 3;
  if (v6 > 1)
  {
    if (v6 != 3)
    {
      result = 9;
    }
  }

  else if (v6)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v7 = (a2 >> 58) & 3;
  if (v7 > 1)
  {
    if (v7 != 3)
    {
      result = 9;
    }
  }

  else if (v7)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v8 = (a2 >> 60) & 3;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      result = 9;
    }
  }

  else if (v8)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v9 = a2 >> 62;
  if (a2 >> 62 > 1)
  {
    if (v9 != 3)
    {
      return 9;
    }
  }

  else if (v9)
  {
    return 8;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t apple80211_vht_capability.bandwidth.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000) != 0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t apple80211_he_capability.maxMCS_maxNSS.getter()
{
  v1 = *(v0 + 28);
  v2 = (v1 >> 2) & 3;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      result = qword_100499F70[v1 & 3];
    }

    else
    {
      result = 11;
    }
  }

  else if (v2)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v4 = (v1 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 != 3)
    {
      result = 11;
    }
  }

  else if (v4)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  if ((v1 >> 6) > 1uLL)
  {
    if (v1 >> 6 != 3)
    {
      result = 11;
    }
  }

  else if (v1 >> 6)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v5 = (v1 >> 8) & 3;
  if (v5 > 1)
  {
    if (v5 != 3)
    {
      result = 11;
    }
  }

  else if (v5)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v6 = (v1 >> 10) & 3;
  if (v6 > 1)
  {
    if (v6 != 3)
    {
      result = 11;
    }
  }

  else if (v6)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v7 = (v1 >> 12) & 3;
  if (v7 > 1)
  {
    if (v7 != 3)
    {
      result = 11;
    }
  }

  else if (v7)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v8 = v1 >> 14;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      return 11;
    }
  }

  else if (v8)
  {
    return 10;
  }

  else
  {
    return 9;
  }

  return result;
}

uint64_t apple80211_he_capability.bandwidth.getter()
{
  if ((*(v0 + 14) & 2) != 0)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  if ((*(v0 + 14) & 4) != 0)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t NANDriverCapabilities.maxNSS.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  v3 = sub_1000E5570(0, 4uLL, v2, a1);
  result = sub_1000E5570(4, 4uLL, v2, v4);
  if (result >= v3)
  {
    result = v3;
  }

  if (result < 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t apple80211_ht_capability.shortGI(for:)(unsigned __int8 a1, unint64_t a2)
{
  v2 = (HIWORD(a2) >> 5) & 1;
  if (a1 != 3)
  {
    v2 = (HIWORD(a2) >> 6) & 1;
  }

  if (a1 - 4 < 3 || a1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t apple80211_ht_capability.phyCapabilities.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = apple80211_ht_capability.maxMCS_maxNSS.getter(a1, a2, a3, a4);
  if ((a1 & 0x2000000000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  v10 = 53;
  *a5 = 0;
  if ((a1 & 0x2000000000000) != 0)
  {
    v10 = 54;
  }

  *(a5 + 1) = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = 0;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  *(a5 + 33) = (a1 >> v10) & 1;
  return result;
}

uint64_t sub_10020DB20()
{
  if ((*(v0 + 6) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

double sub_10020DB40@<D0>(uint64_t a1@<X8>)
{
  apple80211_ht_capability.phyCapabilities.getter(*v1, v1[1], v1[2], v1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10020DB8C(unsigned __int8 a1)
{
  v2 = *(v1 + 6);
  v3 = (v2 >> 6) & 1;
  v4 = (v2 >> 5) & 1;
  if (a1 != 3)
  {
    v4 = v3;
  }

  if (a1 - 4 < 3 || a1 == 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t apple80211_vht_capability.shortGI(for:)(char a1, uint64_t a2, __int16 a3)
{
  LOWORD(v5) = HIWORD(a2);
  HIWORD(v5) = a3;
  v3 = (v5 >> 5) & 1;
  if (a1 != 4)
  {
    v3 = 0;
  }

  if (a1 == 5)
  {
    return (v5 >> 6) & 1;
  }

  else
  {
    return v3;
  }
}

uint64_t apple80211_vht_capability.phyCapabilities.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = BYTE6(a1);
  result = apple80211_vht_capability.maxMCS_maxNSS.getter(a1, a2);
  if ((v4 & 0xC) != 0)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  *a3 = 1;
  v8 = 5;
  if ((v4 & 0xC) != 0)
  {
    v8 = 6;
  }

  *(a3 + 1) = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  *(a3 + 33) = (v4 >> v8) & 1;
  return result;
}

uint64_t sub_10020DC78()
{
  if ((*(v0 + 6) & 0xC) != 0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_10020DC8C(uint64_t a1)
{
  *&varC = *(v1 + 6);
  WORD4(varC) = *(v1 + 14);
  return apple80211_vht_capability.maxMCS_maxNSS.getter(a1, *(&varC + 2));
}

double sub_10020DCB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  v5 = *(v1 + 10);
  v6 = *(v1 + 14);
  LODWORD(v9[0]) = *v1;
  WORD2(v9[0]) = v3;
  *(v9 + 6) = v4;
  *(v9 + 10) = v5;
  HIWORD(v9[0]) = v6;
  apple80211_vht_capability.phyCapabilities.getter(*&v9[0], *(&v9[0] + 1), v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_10020DD20(char a1)
{
  v2 = *(v1 + 6);
  v3 = (v2 >> 6) & 1;
  v4 = (v2 >> 5) & 1;
  if (a1 != 4)
  {
    v4 = 0;
  }

  if (a1 == 5)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t apple80211_he_capability.phyCapabilities.getter@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 14) & 2) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if ((*(v1 + 14) & 4) != 0)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  result = apple80211_he_capability.maxMCS_maxNSS.getter();
  *a1 = 2;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

void *sub_10020DDAC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100002728(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static NANActionFrame.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 != 14)
  {
    if (a3 == 14 || byte_10049A1AA[a1] != byte_10049A1AA[a3])
    {
      return 0;
    }

    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a4);
  }

  if (a3 == 14)
  {
    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a4);
  }

  return 0;
}

uint64_t NANActionFrame.init(customDeviceInformation:)(uint64_t a1)
{
  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v2 = *(type metadata accessor for NANAttribute(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F40;
  sub_10020E818(a1, v4 + v3);
  swift_storeEnumTagMultiPayload();
  sub_10020E87C(a1, type metadata accessor for NANAttribute.CustomDeviceInformation);
  return 13;
}

uint64_t NANActionFrame.init(customAttributes:)(uint64_t a1)
{
  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v2 = *(type metadata accessor for NANAttribute(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F40;
  v5 = sub_100033AA8(_swiftEmptyArrayStorage);
  v6 = type metadata accessor for BinaryEncoder();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480A90;
  *(v7 + 32) = v5;
  v18[3] = v6;
  v18[4] = sub_10020EE18(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v18[0] = v7;

  NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(v18);
  sub_100002A00(v18);
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_10000AB0C(v8, v9);

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_8:
      v13 = v4 + v3;
      v14 = Data.subdata(in:)();
      v16 = v15;
      sub_1000124C8(v8, v9);
      *v13 = 5888;
      *(v13 + 2) = -14;
      *(v13 + 8) = v14;
      *(v13 + 16) = v16;
      swift_storeEnumTagMultiPayload();
      sub_10020E87C(a1, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      return 13;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v12 >= v11)
  {
    goto LABEL_8;
  }

  __break(1u);

  sub_100002A00(v18);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10020E204()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10020E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10020E320(uint64_t a1)
{
  v2 = sub_10020E8DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020E35C(uint64_t a1)
{
  v2 = sub_10020E8DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANActionFrame.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_1005915E0, &qword_100499F90);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_10020E8DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10020E930();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
    sub_10020ED7C(&qword_1005915F8, &qword_10058D458, protocol conformance descriptor for NANAttribute, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NANActionFrame.hash(into:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_10049A1AA[a2]);
  }

  v6 = *(a3 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = *(type metadata accessor for NANAttribute(0) - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v8 += v9;
      --v6;
    }

    while (v6);
  }
}

Swift::Int NANActionFrame.hashValue.getter(char a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10020E6D0()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10020E72C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v5, v3, v2);
  return Hasher._finalize()();
}

uint64_t sub_10020E778@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10020E984(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10020E7C8(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 != 14)
  {
    if (v4 == 14 || byte_10049A1AA[v2] != byte_10049A1AA[v4])
    {
      return 0;
    }

    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5);
  }

  if (v4 == 14)
  {
    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5);
  }

  return 0;
}

uint64_t sub_10020E818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020E87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10020E8DC()
{
  result = qword_1005915E8;
  if (!qword_1005915E8)
  {
    result = swift_getWitnessTable("MS\v", &type metadata for NANActionFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005915E8);
  }

  return result;
}

unint64_t sub_10020E930()
{
  result = qword_1005915F0;
  if (!qword_1005915F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANManagementFrameType, &type metadata for NANManagementFrameType, v0, v1);
    atomic_store(result, &qword_1005915F0);
  }

  return result;
}

uint64_t sub_10020E984(void *a1)
{
  v2 = sub_10005DC58(&qword_100591620, &qword_10049A1A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100029B34(a1, a1[3]);
  sub_10020E8DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_10020ED28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  v8[15] = 1;
  sub_10020ED7C(&qword_10058D438, &qword_10058D440, protocol conformance descriptor for NANAttribute, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

unint64_t sub_10020EBAC()
{
  result = qword_100591600;
  if (!qword_100591600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANActionFrame, &type metadata for NANActionFrame, v0, v1);
    atomic_store(result, &qword_100591600);
  }

  return result;
}

unint64_t sub_10020EC24()
{
  result = qword_100591608;
  if (!qword_100591608)
  {
    result = swift_getWitnessTable(byte_10049A124, &type metadata for NANActionFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591608);
  }

  return result;
}

unint64_t sub_10020EC7C()
{
  result = qword_100591610;
  if (!qword_100591610)
  {
    result = swift_getWitnessTable(byte_10049A094, &type metadata for NANActionFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591610);
  }

  return result;
}

unint64_t sub_10020ECD4()
{
  result = qword_100591618;
  if (!qword_100591618)
  {
    result = swift_getWitnessTable(byte_10049A0BC, &type metadata for NANActionFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591618);
  }

  return result;
}

unint64_t sub_10020ED28()
{
  result = qword_100591628;
  if (!qword_100591628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANManagementFrameType, &type metadata for NANManagementFrameType, v0, v1);
    atomic_store(result, &qword_100591628);
  }

  return result;
}

uint64_t sub_10020ED7C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10005DD04(&qword_10058D430, &unk_1004AC7D0);
    v10 = sub_10020EE18(a2, type metadata accessor for NANAttribute, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020EE18(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

ValueMetadata *sub_10020EE60()
{
  sub_10005DC58(&qword_100591840, &qword_10049AAA0);
  v0 = String.init<A>(describing:)();
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  String.append(_:)(v2);

  return v0;
}

ValueMetadata *sub_10020EF54()
{
  sub_10005DC58(&qword_100591838, &qword_10049AA98);
  v1 = String.init<A>(describing:)();
  WORD4(v5) = 0;
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  *&v5 = *(v0 + 12);
  _print_unlocked<A, B>(_:_:)();

  v3._countAndFlagsBits = *(&v5 + 2);
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  return v1;
}

uint64_t sub_10020F070(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  sub_10005DC58(a2, a3);
  v6 = String.init<A>(describing:)();
  BYTE8(v10) = 0;
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *&v10 = *v3;
  _print_unlocked<A, B>(_:_:)();

  v8._countAndFlagsBits = *(&v10 + 1);
  v8._object = 0xE000000000000000;
  String.append(_:)(v8);

  return v6;
}

uint64_t NANPublish.Configuration.serviceInfo.getter()
{
  if (qword_10058AB70 != -1)
  {
    swift_once();
  }

  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = *(v0 + 24);
      goto LABEL_11;
    }
  }

  v5 = *(v0 + 24);
  NANGenericServiceProtocol.blob.getter(v5);
  if (v6 >> 60 != 15)
  {
    return 3;
  }

LABEL_11:
  v7 = *(v0 + *(type metadata accessor for NANPublish.Configuration(0) + 96));
  v8 = *(v0 + 77) == 2;
  v9 = 2;
  if ((v7 & v8) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  NANGenericServiceProtocol.packetData(for:)(v10, v5);
  return v9;
}

uint64_t NANPublish.Configuration.controlFlag.getter()
{
  v1 = type metadata accessor for NANPublish.Configuration(0);
  if (*(*(v0 + *(v1 + 84) + 16) + 16))
  {
    v2 = 68;
  }

  else
  {
    v2 = 4;
  }

  v3 = v2 | 0x200;
  v4 = *(v0 + *(v1 + 136));
  v5 = v2 | 0x600;
  if ((v4 & 1) == 0)
  {
    v5 = v3;
  }

  if (v4 == 2)
  {
    v5 = v3;
  }

  v6 = *(v0 + 77);
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v5 | v8;
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.apiFunction.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t NANPublish.PublishType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6963696C6F736E75;
  }

  if (a1 == 1)
  {
    return 0x65746963696C6F73;
  }

  return 0xD000000000000017;
}

uint64_t sub_10020F3FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746963696C6F73;
  v4 = 0xE900000000000064;
  v5 = 0x80000001004B4F10;
  if (v2 != 1)
  {
    v3 = 0xD000000000000017;
    v4 = 0x80000001004B4F10;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6963696C6F736E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0x65746963696C6F73;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xD000000000000017;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6963696C6F736E75;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_10020F504@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P10NANPublishO11PublishTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10020F534(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xE900000000000064;
  v5 = 0x65746963696C6F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000001004B4F10;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6963696C6F736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10020F5A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F658(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020F6F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020F858()
{
  v1 = 0x65746963696C6F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6963696C6F736E75;
  }
}

uint64_t NANPublish.EventCondition.description.getter(char a1)
{
  if (a1)
  {
    return 0x65746963696C6F73;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10020F9E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746963696C6F73;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000785464;
  }

  if (*a2)
  {
    v5 = 0x65746963696C6F73;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xEB00000000785464;
  }

  else
  {
    v6 = 0xE400000000000000;
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

void sub_10020FA9C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x65746963696C6F73;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000785464;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020FADC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FB60(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020FBD0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FD00()
{
  if (*v0)
  {
    return 0x65746963696C6F73;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.controlFlag.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.description.getter(char a1)
{
  if (a1)
  {
    return 7561575;
  }

  else
  {
    return 0x7055776F6C6C6F66;
  }
}

uint64_t sub_10020FD94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7561575;
  }

  else
  {
    v3 = 0x7055776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7561575;
  }

  else
  {
    v5 = 0x7055776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

void sub_10020FE40(uint64_t *a1@<X8>)
{
  v2 = 7561575;
  if (!*v1)
  {
    v2 = 0x7055776F6C6C6F66;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020FE88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FF04(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020FF6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100210094()
{
  if (*v0)
  {
    return 7561575;
  }

  else
  {
    return 0x7055776F6C6C6F66;
  }
}

void NANPublish.InternetSharingConfiguration.hash(into:)(uint64_t a1)
{
  sub_10020C6FC(v1, &v3);
  if (v5)
  {
    sub_10020C758(&v3);
    v2 = 0;
  }

  else
  {
    v2 = v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v2);
}

Swift::Int NANPublish.InternetSharingConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_10020C6FC(v0, &v3);
  if (v5)
  {
    sub_10020C758(&v3);
    v1 = 0;
  }

  else
  {
    v1 = v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002101F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10020C6FC(v1, &v4);
  if (v6)
  {
    sub_10020C758(&v4);
    v2 = 0;
  }

  else
  {
    v2 = v5;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t NANPublish.PairSetupMode.description.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t NANPublish.PairSetupMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F43726F466B7361;
  }

  else
  {
    return 0x6C7065526F747561;
  }
}

uint64_t sub_100210330(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F43726F466B7361;
  }

  else
  {
    v3 = 0x6C7065526F747561;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xED0000746E65736ELL;
  }

  if (*a2)
  {
    v5 = 0x6F43726F466B7361;
  }

  else
  {
    v5 = 0x6C7065526F747561;
  }

  if (*a2)
  {
    v6 = 0xED0000746E65736ELL;
  }

  else
  {
    v6 = 0xE900000000000079;
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

void sub_1002103F4(uint64_t *a1@<X8>)
{
  v2 = 0x6C7065526F747561;
  if (*v1)
  {
    v2 = 0x6F43726F466B7361;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xED0000746E65736ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100210454()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002104E8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100210568(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002105F8()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

CoreP2P::NANPublish::DatapathConfiguration __swiftcall NANPublish.DatapathConfiguration.init(serviceType:serviceSpecificInfo:securityConfiguration:connectionMode:)(CoreP2P::NANDatapath::ServiceType serviceType, CoreP2P::NANGenericServiceProtocol serviceSpecificInfo, Swift::OpaquePointer securityConfiguration, CoreP2P::NANDatapath::ConnectionMode connectionMode)
{
  v4 = (serviceType << 16) | 0x200;
  result.securityConfiguration = securityConfiguration;
  result.serviceSpecificInfo = serviceSpecificInfo;
  result.parametersType = v4;
  result.multicastType = SBYTE1(v4);
  result.serviceType = BYTE2(v4);
  result.connectionMode = connectionMode;
  return result;
}

uint64_t NANPublish.DatapathConfiguration.hash(into:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char a5)
{
  String.hash(into:)();

  if ((a2 & 0xFF00) == 0x200)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, a3);
  sub_1000E0690(a1, a4);
  String.hash(into:)();
}

Swift::Int NANPublish.DatapathConfiguration.hashValue.getter(__int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v9, a1 & 0xFF01, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1002108A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[24];
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v7, v1 | (v2 << 8), v3, v4, v5);
  return Hasher._finalize()();
}

Swift::Int sub_10021093C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = v1[24];
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v8, v2 | (v3 << 8), v4, v5, v6);
  return Hasher._finalize()();
}

uint64_t NANPublish.Configuration.serviceSpecificInfo.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  ++*(v1 + 32);
  return result;
}

uint64_t sub_100210A50(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    ++*(*result + 32);
  }

  return result;
}

uint64_t NANPublish.Configuration.matchingFilterTx.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NANPublish.Configuration.matchingFilterTx.setter(char a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NANPublish.Configuration.matchingFilterRx.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NANPublish.Configuration.matchingFilterRx.setter(char a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NANPublish.Configuration.managementAddress.setter(uint64_t result)
{
  *(v1 + 78) = result;
  *(v1 + 80) = BYTE2(result);
  *(v1 + 81) = BYTE3(result);
  *(v1 + 82) = BYTE4(result);
  *(v1 + 83) = BYTE5(result);
  return result;
}

uint64_t NANPublish.Configuration.responderAddress.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 86) = BYTE2(result);
  *(v1 + 87) = BYTE3(result);
  *(v1 + 88) = BYTE4(result);
  *(v1 + 89) = BYTE5(result);
  return result;
}

uint64_t NANPublish.Configuration.announcementPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NANPublish.Configuration(0) + 72);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NANPublish.Configuration.announcementPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPublish.Configuration(0) + 72);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NANPublish.Configuration.awakeDWInterval.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.enableFastDiscovery.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}