uint64_t sub_1000A1FD8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v3, v4, &v8, KeyPath, 0x10uLL);

  if ((a1 & 0x100000000) != 0)
  {
    v6 = 4;
  }

  else
  {
    LODWORD(v9) = 528;
    DWORD1(v9) = a1;
    *(&v9 + 1) = 0;
    v6 = 3;
  }

  AppleDevice.send(request:data:)(v6, &v8);
}

uint64_t DeviceDriver<>.update(ipv4Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v22 = 0u;
  v23 = 0u;
  v11 = (*(a4 + 40))(a2, a4);
  v13 = v12;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v11, v13, &v22, KeyPath, 0x10uLL);

  if ((v19 & 0x100000000) != 0)
  {
    v15 = 4;
  }

  else
  {
    LODWORD(v23) = 528;
    DWORD1(v23) = v19;
    *(&v23 + 1) = 0;
    v15 = 3;
  }

  (*(a3 + 56))(a2, a3);
  v16 = AssociatedTypeWitness;
  (*(v20 + 16))(v15, &v22, AssociatedTypeWitness);
  return (*(v8 + 8))(v10, v16);
}

uint64_t DeviceDriver<>.ipv6Addresses.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (*(a3 + 40))(a1, a3);
  v8 = static ApplePlatform.withInterface<A>(_:matchingAllInFamily:_:)(v6, v7, 30, sub_1000A23B8, 0, AssociatedTypeWitness, &type metadata for IPv6Address);

  return v8;
}

uint64_t sub_1000A23B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 16);
    *a2 = *(v2 + 8);
    a2[1] = v3;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A23D4(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v15 = HIDWORD(a1);
  v16 = a1 >> 40;
  v19 = 0u;
  v20 = 0u;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v7, v8, &v19, KeyPath, 0x10uLL);

  v18 = v20;
  LOWORD(v18) = 4628;
  BYTE4(v18) = 6;
  BYTE6(v18) = 6;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004817D0;
  *(v10 + 32) = v3;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v15;
  *(v10 + 37) = v16;
  v11 = sub_10002D874(v10);
  v13 = v12;

  sub_1000A1CDC(v11, v13, &v18 + 8, &v19 + 4);
  sub_1000124C8(v11, v13);
  v20 = v18;

  AppleDevice.send(request:data:)(a2, &v19);
}

uint64_t sub_1000A2598(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a2;
  v9 = a1;
  v26 = a1 >> 8;
  v28 = a1 >> 16;
  v30 = a1 >> 24;
  v27 = HIDWORD(a1);
  v29 = a1 >> 40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v35 = 0u;
  v36 = 0u;
  v13 = (*(a5 + 40))(a3, a5);
  v15 = v14;
  KeyPath = swift_getKeyPath();

  v17 = v25;
  sub_10000F344(v13, v15, &v35, KeyPath, 0x10uLL);
  v25 = v17;

  v34 = v36;
  LOWORD(v34) = 4628;
  BYTE4(v34) = 6;
  BYTE6(v34) = 6;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004817D0;
  *(v18 + 32) = v9;
  *(v18 + 33) = v26;
  *(v18 + 34) = v28;
  *(v18 + 35) = v30;
  *(v18 + 36) = v27;
  *(v18 + 37) = v29;
  v19 = sub_10002D874(v18);
  v21 = v20;

  v22 = AssociatedTypeWitness;
  sub_1000A1CDC(v19, v21, &v34 + 8, &v35 + 4);
  sub_1000124C8(v19, v21);
  v36 = v34;
  (*(a4 + 56))(a3, a4);
  (*(v32 + 16))(v33, &v35, v22);
  return (*(v10 + 8))(v12, v22);
}

uint64_t sub_1000A292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v26 = a4;
  v27 = a5;
  v23 = a2;
  v24 = a3;
  v25 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = __chkstk_darwin();
  v18 = &v22 - v17;
  (*(a7 + 56))(a6, a7, v16);
  v19 = (*(a8 + 40))(a6, a8);
  (*(a9 + 24))(a1 & 0xFFFFFFFFFFFFLL, v23, v24, v26, v27, v19, v20, v25, AssociatedTypeWitness, a9);
  (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t DeviceDriver<>.clearAllPeerPresence()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin();
  v12 = &v15 - v11;
  (*(a2 + 56))(a1, a2, v10);
  v13 = (*(a3 + 40))(a1, a3);
  (*(a4 + 32))(v13);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1000A2C30(void *a1)
{
  type metadata accessor for Socket();
  swift_initStackObject();
  if (!Socket.init(domain:type:proto:)(30, 2, 0))
  {
    v9 = errno.getter();
    sub_10000B02C();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  memset(v23, 0, 288);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v4, v3, v23, KeyPath, 0x10uLL);

  sub_10001C288(6u);
  v6 = ioctl(_:_:_:)();
  if (v6 == -1)
  {
    goto LABEL_9;
  }

  if (v6)
  {
LABEL_10:
    v12 = v6;
    sub_10000B02C();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  if (!a1[2])
  {
  }

  v7 = a1[5];
  v14 = a1[4];
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v8 = swift_getKeyPath();

  sub_10000F344(v4, v3, &v15, v8, 0x10uLL);

  LOWORD(v16) = 7708;

  *(&v16 + 1) = v14;
  *&v17 = v7;
  sub_10001C288(5u);
  v6 = ioctl(_:_:_:)();
  if (v6 == -1)
  {
LABEL_9:
    v6 = errno.getter();
    goto LABEL_10;
  }

  if (v6)
  {
    goto LABEL_10;
  }
}

uint64_t DeviceDriver<>.update(ipv6Addresses:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Socket();
  swift_initStackObject();
  if (!Socket.init(domain:type:proto:)(30, 2, 0))
  {
    v17 = errno.getter();
    sub_10000B02C();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  memset(v33, 0, 288);
  v7 = *(a4 + 40);
  v24 = a2;
  v8 = v7(a2, a4);
  v10 = v9;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v8, v10, v33, KeyPath, 0x10uLL);

  sub_10001C288(6u);
  v12 = ioctl(_:_:_:)();
  if (v12 == -1)
  {
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_10:
    v20 = v12;
    sub_10000B02C();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  if (!a1[2])
  {
  }

  v22 = a1[5];
  v23 = a1[4];
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;

  v13 = v7(v24, a4);
  v15 = v14;
  v16 = swift_getKeyPath();

  sub_10000F344(v13, v15, &v25, v16, 0x10uLL);

  LOWORD(v26) = 7708;

  *(&v26 + 1) = v23;
  *&v27 = v22;
  sub_10001C288(5u);
  v12 = ioctl(_:_:_:)();
  if (v12 == -1)
  {
LABEL_9:
    v12 = errno.getter();
    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_10;
  }
}

BOOL sub_1000A31A0()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, &v4, &v7, 0, v1, v2);

  result = HIDWORD(v4) != 0;
  if (HIDWORD(v4))
  {
    if (!v5)
    {
      result = HIDWORD(v4) != 1;
      if (HIDWORD(v4) != 1 && !HIDWORD(v5))
      {
        result = HIDWORD(v4) != 2;
        if (HIDWORD(v4) != 2 && !v6)
        {
          if (HIDWORD(v4) != 3 && HIDWORD(v6) == 0)
          {
            return HIDWORD(v4) < 4;
          }

          else
          {
            return HIDWORD(v4) != 3;
          }
        }
      }
    }
  }

  return result;
}

BOOL DeviceDriver<>.powerOn.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_1000A3AF4(&v9, &v12, v4, a1, a2, a3, a4, &v8, 19);
  result = HIDWORD(v9) != 0;
  if (HIDWORD(v9))
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    result = HIDWORD(v9) != 1;
    if (HIDWORD(v9) != 1 && HIDWORD(v10) == 0)
    {
      result = HIDWORD(v9) != 2;
      if (HIDWORD(v9) != 2 && !v11)
      {
        if (HIDWORD(v9) != 3 && HIDWORD(v11) == 0)
        {
          return HIDWORD(v9) < 4;
        }

        else
        {
          return HIDWORD(v9) != 3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A33D0()
{
  v10 = 0;
  v9 = 0;
  v2 = v0[2];
  v1 = v0[3];

  AppleDevice.getRequest(requestType:data:on:)(9uLL, &v9, &v11, 0, v2, v1);

  sub_1000A373C(v12, &v13, v0);
  v5 = v4;
  v6 = 0;
  v7 = 0;

  AppleDevice.getRequest(requestType:data:on:)(4uLL, &v6, &v8, 0, v2, v1);

  if ((sub_100032064(v7, HIDWORD(v7)) & 0xFF00000000) != 0x300000000)
  {
    return v5;
  }

  return 0;
}

uint64_t DeviceDriver<>.wifiNetwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17 = 0;
  v16 = 0;
  sub_1000A3AF4(&v16, &v18, v5, a1, a2, a3, a4, &v13, 9);
  sub_1000A3880(v19, &v20, a1, a2, a3, a4, &v13);
  v10 = v13;
  v13 = 0;
  v14 = 0;
  sub_1000A3AF4(&v13, &v15, v5, a1, a2, a3, a4, &v12, 4);
  if ((sub_100032064(v14, HIDWORD(v14)) & 0xFF00000000) != 0x300000000)
  {
    return v10;
  }

  return 0;
}

void sub_1000A373C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  if (!a1)
  {
    goto LABEL_10;
  }

  v8 = a2 - a1;
  bzero(a1, a2 - a1);
  v9 = a3[2];
  v10 = a3[3];

  AppleDevice.getRequest(requestType:data:on:)(1uLL, a1, a2, 0, v9, v10);

  if (v4)
  {
    return;
  }

  v11 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v11 < 0 || v11 >= v8)
  {
    goto LABEL_9;
  }

  *(a1 + v11) = 0;
  static String.Encoding.utf8.getter();
  String.init(cString:encoding:)();
}

void sub_1000A3880(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v27 = a7;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v26 - v14;
  if (!a1)
  {
    goto LABEL_16;
  }

  v16 = a2 - a1;
  bzero(a1, a2 - a1);
  (*(a4 + 56))(a3, a4);
  v17 = (*(*(v28 + 16) + 40))(a3);
  v18 = v30;
  (*(*(v29 + 8) + 24))(1, a1, a2, 0, v17, v19, AssociatedTypeWitness);
  if (v18)
  {
    (*(v13 + 8))(v15, AssociatedTypeWitness);

    return;
  }

  (*(v13 + 8))(v15, AssociatedTypeWitness);

  v20 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (v20 < 0 || v20 >= v16)
  {
    goto LABEL_15;
  }

  *(a1 + v20) = 0;
  static String.Encoding.utf8.getter();
  v21 = String.init(cString:encoding:)();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v25 = v27;
  *v27 = v23;
  v25[1] = v24;
}

uint64_t sub_1000A3AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v23 = a8;
  v24 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin();
  v17 = &v22 - v16;
  (*(a5 + 56))(a4, a5, v15);
  v18 = (*(*(a6 + 16) + 40))(a4);
  v19 = v26;
  (*(*(a7 + 8) + 24))(a9, v24, v25, 0, v18, v20, AssociatedTypeWitness);
  (*(v14 + 8))(v17, AssociatedTypeWitness);

  if (v19)
  {
    *v23 = v19;
  }

  return result;
}

BOOL sub_1000A3CBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v5 = &v12 - v4;
  Logger.init(subsystem:category:)();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Getting powerOn state from driver", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, &v13, &v16, 0, v10, v9);

  result = HIDWORD(v13) != 0;
  if (HIDWORD(v13))
  {
    if (!v14)
    {
      result = HIDWORD(v13) != 1;
      if (HIDWORD(v13) != 1 && !HIDWORD(v14))
      {
        result = HIDWORD(v13) != 2;
        if (HIDWORD(v13) != 2 && !v15)
        {
          if (HIDWORD(v13) != 3 && HIDWORD(v15) == 0)
          {
            return HIDWORD(v13) < 4;
          }

          else
          {
            return HIDWORD(v13) != 3;
          }
        }
      }
    }
  }

  return result;
}

BOOL DeviceDriver<>.getPowerState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v15 - v9;
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Getting powerOn state from driver", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_1000A4360(&v18, &v21, v4, a1, a2, v16, &v17);
  result = HIDWORD(v18) != 0;
  if (HIDWORD(v18))
  {
    if (!v19)
    {
      result = HIDWORD(v18) != 1;
      if (HIDWORD(v18) != 1 && !HIDWORD(v19))
      {
        result = HIDWORD(v18) != 2;
        if (HIDWORD(v18) != 2 && !v20)
        {
          if (HIDWORD(v18) != 3 && HIDWORD(v20) == 0)
          {
            return HIDWORD(v18) < 4;
          }

          else
          {
            return HIDWORD(v18) != 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  (*(a5 + 56))(&v16, a4, a5);
  v13 = (*(*(a6 + 16) + 40))(a4);
  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, a1, a2, 0, v13, v14);

  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_1000A449C(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    v2 = [objc_opt_self() activityWithType:6 reason:0];
    v3 = *(a1 + 48);
    v14 = 0;
    v4 = [v3 beginActivity:v2 error:&v14];
    v5 = v14;
    if (v4)
    {
      v6 = *(a1 + 104);
      *(a1 + 104) = v2;
      v7 = v5;
    }

    else
    {
      v8 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to disable auto join: %@", v11, 0xCu);
        sub_100016290(v12, &qword_10058B780, &qword_100480AC0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000A468C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v16 = *(v8 - 8);
  v17 = v8;
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  v12 = *(v11 + 56);
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  swift_retain_n();
  v14 = v12;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v16 + 8))(v10, v17);
}

uint64_t sub_1000A4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 56);
  v14(&v26, a1, a2, v11);
  v15 = *(v26 + 56);

  (v14)(aBlock, a1, a2);
  aBlock[4] = v19;
  aBlock[5] = aBlock[0];
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v20;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v9, v7);
  (*(v21 + 8))(v13, v22);
}

void sub_1000A4C70(uint64_t a1)
{
  if (*(a1 + 104))
  {
    [*(a1 + 48) endActivity:?];
    v2 = *(a1 + 104);
    *(a1 + 104) = 0;
  }
}

void sub_1000A4CC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30[1] = a3;
  v39 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin();
  v35 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = a2 + 56;
    v11 = -1 << *(a2 + 32);
    v12 = v9 & ~v11;
    if ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {
        v14 = *(*(a2 + 48) + v12);
        if (v14 > 2 && v14 != 4)
        {
          break;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_10;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_10:
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      [qword_10058BC80 updateLinkRecoveryDisabled:v39 & 1];
    }

LABEL_13:
    if (*(a2 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if ((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = *(*(a2 + 48) + v18);
          if (v20 <= 2 && v20 != 1 && v20 != 2)
          {
            break;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_23;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            return;
          }
        }

LABEL_23:
        v22 = *(v30[0] + 40);
        v23 = *(v22 + 56);
        v24 = swift_allocObject();
        *(v24 + 16) = v39 & 1;
        *(v24 + 24) = v22;
        aBlock[4] = v31;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C8B8;
        aBlock[3] = v32;
        v25 = _Block_copy(aBlock);
        swift_retain_n();
        v26 = v23;
        v27 = v33;
        static DispatchQoS.unspecified.getter();
        v40 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v28 = v35;
        v29 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v25);

        (*(v37 + 8))(v28, v29);
        (*(v34 + 8))(v27, v36);
      }
    }
  }
}

void DeviceDriver<>.updateLinkRecoveryDisabled(_:interfaces:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v33 = a3;
  v41 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin();
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = a2 + 56;
    v10 = -1 << *(a2 + 32);
    v11 = v8 & ~v10;
    if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      while (1)
      {
        v13 = *(*(a2 + 48) + v11);
        if (v13 > 2 && v13 != 4)
        {
          break;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_10;
        }

        v11 = (v11 + 1) & v12;
        if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_10:
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      [qword_10058BC80 updateLinkRecoveryDisabled:v41 & 1];
    }

LABEL_13:
    if (*(a2 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if ((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = *(*(a2 + 48) + v17);
          if (v19 <= 2 && v19 != 1 && v19 != 2)
          {
            break;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_23;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            return;
          }
        }

LABEL_23:
        v21 = v34;
        v22 = *(v34 + 56);
        v23 = v33;
        v22(&v43, v33, v34);
        v32 = *(v43 + 56);

        v22(aBlock, v23, v21);
        v24 = aBlock[0];
        v25 = swift_allocObject();
        *(v25 + 16) = v41 & 1;
        *(v25 + 24) = v24;
        aBlock[4] = sub_1000B0220;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C8B8;
        aBlock[3] = &unk_10055EEC0;
        v26 = _Block_copy(aBlock);

        v27 = v35;
        static DispatchQoS.unspecified.getter();
        v42 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v28 = v37;
        v29 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v30 = v32;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v26);

        (*(v39 + 8))(v28, v29);
        (*(v36 + 8))(v27, v38);
      }
    }
  }
}

void sub_1000A58BC(char a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (a1)
  {
    if (!v3)
    {
      v4 = [objc_opt_self() activityWithType:12 reason:0];
      v5 = *(a2 + 48);
      v17 = 0;
      v6 = [v5 beginActivity:v4 error:&v17];
      v7 = v17;
      if (v6)
      {
        v8 = *(a2 + 136);
        *(a2 + 136) = v4;
        v9 = v7;
      }

      else
      {
        v11 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          swift_errorRetain();
          v16 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 4) = v16;
          *v15 = v16;
          _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update link recovery disabled: %@", v14, 0xCu);
          sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
        }

        else
        {
        }
      }
    }
  }

  else if (v3)
  {
    [*(a2 + 48) endActivity:?];
    v10 = *(a2 + 136);
    *(a2 + 136) = 0;
  }
}

uint64_t sub_1000A5B0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 40);
  v15 = *(v14 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v14;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);
  swift_retain_n();
  v18 = v15;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  (*(v20 + 8))(v13, v21);
}

uint64_t DeviceDriver<>.update(isAirPlayingOverInfrastructure:)(int a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  v9 = __chkstk_darwin();
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a3 + 56);
  v12(&v25, a2, a3, v9);
  v20 = *(v25 + 56);

  (v12)(aBlock, a2, a3);
  v13 = aBlock[0];
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1000B022C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055EF10;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v11, v21);
}

void sub_1000A6124(char a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (a1)
  {
    if (!v3)
    {
      v4 = String._bridgeToObjectiveC()();
      v5 = [objc_opt_self() activityWithType:8 reason:v4];

      v6 = *(a2 + 48);
      v18 = 0;
      v7 = [v6 beginActivity:v5 error:&v18];
      v8 = v18;
      if (v7)
      {
        v9 = *(a2 + 112);
        *(a2 + 112) = v5;
        v10 = v8;
      }

      else
      {
        v12 = v18;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          swift_errorRetain();
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "Failed to begin AirPlay over Infrastructure CWFActivity: %@", v15, 0xCu);
          sub_100016290(v16, &qword_10058B780, &qword_100480AC0);
        }

        else
        {
        }
      }
    }
  }

  else if (v3)
  {
    [*(a2 + 48) endActivity:?];
    v11 = *(a2 + 112);
    *(a2 + 112) = 0;
  }
}

uint64_t sub_1000A6394(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 40);
  v15 = *(v14 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);
  swift_retain_n();
  v18 = v15;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_1000A6698(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v24 = a6;
  v22[1] = a5;
  v23 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v12 = *(v27 - 8);
  v13 = __chkstk_darwin();
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 56);
  v16(&v31, a2, a3, v13);
  v25 = *(v31 + 56);

  (v16)(aBlock, a2, a3);
  v17 = aBlock[0];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v23;
  aBlock[4] = v24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v26;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v11, v9);
  (*(v12 + 8))(v15, v27);
}

uint64_t sub_1000A69CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 128);
  if (v3)
  {

    v4 = v3;
  }

  else
  {
    type metadata accessor for AppleDevice.GatewayMonitor(0);
    swift_allocObject();

    v4 = a1(v6);
  }

  *(v2 + 128) = v4;
}

uint64_t DeviceDriver<>.startGatewayMonitor()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 56);
  v8(&v15);
  v9 = v15;
  v14 = v3;
  (v8)(&v13, a1, a2);
  v10 = *(v13 + 128);

  if (!v10)
  {
    type metadata accessor for AppleDevice.GatewayMonitor(0);
    v12 = v4;
    swift_allocObject();
    v10 = sub_1000B0858(&v12, a1, a3);
  }

  *(v9 + 128) = v10;
}

uint64_t DeviceDriver<>.stopGatewayMonitor()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v3, a1);
  *(v3 + 128) = 0;
}

uint64_t DeviceDriver<>.resolveIPForPeer(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a3 + 56))(&v10, a2, a3);
  if (*(v10 + 128))
  {

    v9 = v4;
    sub_1000A0D20(a1 & 0xFFFFFFFFFFFFLL, &v9, a2, a4);
  }
}

uint64_t DeviceDriver<>.resetGatewayIPAddress()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v3, a1);
  if (*(v3 + 128))
  {

    sub_1000A0B5C();
  }
}

NSObject *sub_1000A6CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!*(v3 + 120))
  {

    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v8 = static OS_dispatch_queue.p2p;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000B2C0C;
    *(v11 + 24) = v9;
    v18[4] = sub_1000B2C08;
    v18[5] = v11;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1000991C0;
    v18[3] = &unk_10055F848;
    v12 = _Block_copy(v18);
    v13 = v8;
    swift_unknownObjectRetain_n();
    v14 = v13;

    nw_path_evaluator_set_update_handler();
    _Block_release(v12);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    *(v3 + 120) = v10;

    if (!*(v3 + 120))
    {
      return 0;
    }
  }

  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v15 = result;

    if (nw_path_get_status(v15) == nw_path_status_satisfied)
    {
      v16 = nw_path_copy_interface();
      if (v16)
      {
        nw_interface_get_name(v16);
        v17 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

NSObject *sub_1000A6F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!*(v3 + 120))
  {

    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v8 = static OS_dispatch_queue.p2p;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000B2C0C;
    *(v11 + 24) = v9;
    v18[4] = sub_1000B2C08;
    v18[5] = v11;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1000991C0;
    v18[3] = &unk_10055F488;
    v12 = _Block_copy(v18);
    v13 = v8;
    swift_unknownObjectRetain_n();
    v14 = v13;

    nw_path_evaluator_set_update_handler();
    _Block_release(v12);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    *(v3 + 120) = v10;

    if (!*(v3 + 120))
    {
      return 0;
    }
  }

  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v15 = result;

    if (nw_path_get_status(v15) == nw_path_status_satisfied)
    {
      v16 = nw_path_copy_interface();
      if (v16)
      {
        nw_interface_get_name(v16);
        v17 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

NSObject *DeviceDriver<>.monitorSystemDefaultPath(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 56);
  v10(&v28, a3, a4);
  v11 = *(v28 + 120);

  if (v11)
  {
  }

  else
  {
    v28 = v5;
    v10(&v27, a3, a4);
    v12 = v27;
    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_16;
    }

    v14 = result;
    v25 = v12;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v15 = static OS_dispatch_queue.p2p;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000B0CF4;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055EFD8;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    swift_unknownObjectRetain_n();
    v20 = v19;

    nw_path_evaluator_set_update_handler();
    _Block_release(v18);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    *(v25 + 120) = v24;
  }

  aBlock[0] = v5;
  v10(&v28, a3, a4);
  if (!*(v28 + 120))
  {

    return 0;
  }

  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v21 = result;

    if (nw_path_get_status(v21) == nw_path_status_satisfied)
    {
      v22 = nw_path_copy_interface();
      if (v22)
      {
        nw_interface_get_name(v22);
        v23 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v23;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000A7520(NSObject *a1, void (*a2)(void))
{
  if (nw_path_get_status(a1) != nw_path_status_satisfied)
  {
    return (a2)(0, 0);
  }

  v3 = nw_path_copy_interface();
  if (!v3)
  {
    return (a2)(0, 0);
  }

  nw_interface_get_name(v3);
  v4 = String.init(cString:)();
  a2(v4);
  swift_unknownObjectRelease();
}

uint64_t DeviceDriver<>.stopMonitoringSystemDefaultPath()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v3, a1);
  *(v3 + 120) = 0;
}

uint64_t sub_1000A7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a8;
  v50 = a2;
  v51 = a6;
  v49 = a5;
  v47 = a1;
  v48 = a3;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin();
  v44 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v16 = v11[5];
  swift_beginAccess();
  sub_100012400(v16 + 72, v52, &qword_10058BA80, &qword_1004818C0);
  v17 = v53;
  sub_100016290(v52, &qword_10058BA80, &qword_1004818C0);
  if (v17)
  {
    sub_10000B02C();
    swift_allocError();
    *v18 = xmmword_100481830;
    *(v18 + 16) = 0;
    v51();
  }

  else
  {
    v41 = a4;
    v42 = a11;
    v21 = v11[2];
    v20 = v11[3];

    v22 = sub_100095944(v21, v20);
    v24 = v23;

    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    v40 = v25;
    v26 = 0xE000000000000000;
    if (v24)
    {
      v26 = v24;
    }

    v39 = v26;
    v27 = swift_allocObject();
    v27[2] = v51;
    v27[3] = a7;
    v27[4] = v43;
    v27[5] = a9;
    v51 = type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
    v28 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v29 = v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 2;
    v43 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_internetSharingQueue;
    v38[1] = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v38[0] = "v16@?0@<OS_nw_path>8";
    static DispatchQoS.unspecified.getter();
    v52[0] = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
    sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
    *(v28 + v43) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v30 = (v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
    v31 = v48;
    v32 = v50;
    *v30 = v47;
    v30[1] = v32;
    v33 = (v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
    v34 = v41;
    *v33 = v31;
    v33[1] = v34;
    *(v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode) = v49 & 1;
    v35 = (v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
    v36 = v39;
    *v35 = v40;
    v35[1] = v36;
    v37 = (v28 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
    *v37 = v42;
    v37[1] = v27;
    v53 = v51;
    v52[0] = v28;
    swift_beginAccess();

    sub_1000B1B78(v52, v16 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_100099C3C();
  }
}

uint64_t DeviceDriver<>.startSharingInternet(from:to:useBridging:errorHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void), uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a8;
  v60 = a6;
  v61 = a7;
  v58 = a5;
  v54 = a4;
  v56 = a1;
  v57 = a3;
  v59 = a2;
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  v15 = __chkstk_darwin();
  v16 = v12;
  v62[0] = v12;
  v17 = *(a11 + 56);
  v17(&v66, a10, a11, v15);
  v18 = v66;
  swift_beginAccess();
  sub_100012400(v18 + 72, v64, &qword_10058BA80, &qword_1004818C0);

  v19 = v65;
  sub_100016290(v64, &qword_10058BA80, &qword_1004818C0);
  if (v19)
  {
    sub_10000B02C();
    swift_allocError();
    *v20 = xmmword_100481830;
    *(v20 + 16) = 0;
    v60();
  }

  else
  {
    v44 = a9;
    v64[0] = v16;
    v48 = v16;
    v49 = v17;
    (v17)(v62, a10, a11);
    v66 = v16;
    v22 = (*(*(a12 + 16) + 40))(a10);
    v24 = sub_100095944(v22, v23);
    v47 = a10;
    v26 = v25;

    if (v26)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    v46 = v27;
    v28 = 0xE000000000000000;
    if (v26)
    {
      v28 = v26;
    }

    v45 = v28;
    v29 = swift_allocObject();
    v30 = v61;
    *(v29 + 2) = v60;
    *(v29 + 3) = v30;
    v31 = v44;
    *(v29 + 4) = v50;
    *(v29 + 5) = v31;
    v60 = type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
    v32 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v33 = v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 2;
    v61 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_internetSharingQueue;
    v50 = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v44 = "v16@?0@<OS_nw_path>8";
    static DispatchQoS.unspecified.getter();
    v64[0] = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
    sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v53 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v55);
    *(v32 + v61) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v34 = (v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
    v35 = v57;
    v36 = v59;
    *v34 = v56;
    v34[1] = v36;
    v37 = (v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
    v38 = v54;
    *v37 = v35;
    v37[1] = v38;
    *(v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode) = v58 & 1;
    v39 = (v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
    v40 = v45;
    *v39 = v46;
    v39[1] = v40;
    v41 = (v32 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
    *v41 = sub_1000B0D20;
    v41[1] = v29;
    v66 = v48;

    v49(&v63, v47, a11);
    v42 = v63;
    v65 = v60;
    v64[0] = v32;
    swift_beginAccess();

    sub_1000B1B78(v64, v42 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_100099C3C();
  }
}

void sub_1000A81D8(uint64_t a1, __int16 a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(void))
{
  if (a3 == 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_1004817F0;
    *(v7 + 16) = 0;
    a4();
  }

  else if (!a3)
  {
    a6(a2 & 0x101);
  }
}

uint64_t sub_1000A8284(unint64_t a1)
{
  v3 = *(v1 + 40);
  swift_beginAccess();
  sub_100012400(v3 + 72, v6, &qword_10058BA80, &qword_1004818C0);
  if (!v7)
  {
    return sub_100016290(v6, &qword_10058BA80, &qword_1004818C0);
  }

  type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = v5;
    if (*(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      _NETRBClientSetHostCount();
    }

    __break(1u);
  }

  return result;
}

uint64_t DeviceDriver<>.updateInternetSharingRequesterCount(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 56))(&v7, a2, a3);
  v4 = v7;
  swift_beginAccess();
  sub_100012400(v4 + 72, v8, &qword_10058BA80, &qword_1004818C0);

  if (!v9)
  {
    return sub_100016290(v8, &qword_10058BA80, &qword_1004818C0);
  }

  type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = v6;
    if (*(v6 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      _NETRBClientSetHostCount();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A84CC(uint64_t (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 40);
  swift_beginAccess();
  sub_100012400(v5 + 72, &v7, &qword_10058BA80, &qword_1004818C0);
  if (*(&v8 + 1))
  {
    a1(0);
    if (swift_dynamicCast())
    {
      a2();
    }
  }

  else
  {
    sub_100016290(&v7, &qword_10058BA80, &qword_1004818C0);
  }

  v7 = 0u;
  v8 = 0u;
  swift_beginAccess();

  sub_1000B1B78(&v7, v5 + 72, &qword_10058BA80, &qword_1004818C0);
  swift_endAccess();
}

uint64_t sub_1000A88EC(uint64_t result, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  if (a3 == 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_1004817F0;
    *(v7 + 16) = 0;
    a4();
  }

  else if (!a3 && (result & 1) != 0)
  {
    return a6();
  }

  return result;
}

uint64_t sub_1000A89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v9 = v6;
  v12 = *(a2 + 56);
  v12(&v17);
  v13 = v17;
  swift_beginAccess();
  sub_100012400(v13 + 72, &v18, &qword_10058BA80, &qword_1004818C0);

  if (*(&v19 + 1))
  {
    a5(0);
    if (swift_dynamicCast())
    {
      a6();
    }
  }

  else
  {
    sub_100016290(&v18, &qword_10058BA80, &qword_1004818C0);
  }

  v17 = v9;
  (v12)(&v16, a1, a2);
  v14 = v16;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_1000B1B78(&v18, v14 + 72, &qword_10058BA80, &qword_1004818C0);
  swift_endAccess();
}

void sub_1000A8B40()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  sub_100012400(v1 + 72, v5, &qword_10058BA80, &qword_1004818C0);
  if (v6)
  {
    type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    if (swift_dynamicCast())
    {
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      v2 = qword_10058BC80;
      v3 = [objc_allocWithZone(WiFiUsageLQMUserSample) init];
      v4 = String._bridgeToObjectiveC()();
      [v2 updateLinkQuality:v3 forInterface:v4 supportsLinkRecommendations:0];
    }
  }

  else
  {
    sub_100016290(v5, &qword_10058BA80, &qword_1004818C0);
  }
}

void DeviceDriver<>.performLinkTest()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6, a1);
  v2 = v6;
  swift_beginAccess();
  sub_100012400(v2 + 72, v7, &qword_10058BA80, &qword_1004818C0);

  if (v8)
  {
    type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    if (swift_dynamicCast())
    {
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      v3 = qword_10058BC80;
      v4 = [objc_allocWithZone(WiFiUsageLQMUserSample) init];
      v5 = String._bridgeToObjectiveC()();
      [v3 updateLinkQuality:v4 forInterface:v5 supportsLinkRecommendations:0];
    }
  }

  else
  {
    sub_100016290(v7, &qword_10058BA80, &qword_1004818C0);
  }
}

uint64_t sub_1000A8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a3;
  v94 = a4;
  v92 = a2;
  sub_10005DC58(&qword_10058BDF0, &qword_100481968);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v7 = type metadata accessor for URL();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin();
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v11;
  v13 = __chkstk_darwin();
  v15 = &v82 - v14;
  v16 = *(v4 + 40) + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
  v89 = *(v10 + 16);
  v90 = v10 + 16;
  v89(&v82 - v14, v16, v9, v13);

  v17 = sub_10008DF90();

  if (!v17)
  {
    sub_10000B02C();
    swift_allocError();
    *v54 = xmmword_1004817E0;
    *(v54 + 16) = 0;
    swift_willThrow();
    return (*(v10 + 8))(v15, v9);
  }

  v86 = v12;
  v19 = *a1;
  v18 = *(a1 + 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    v87 = *(a1 + 8);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    sub_1000B0D98(a1);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v102 = v15;
      v58 = v57;
      v59 = v17;
      v60 = swift_slowAlloc();
      v103 = v60;
      *v58 = 136315138;
      *(v58 + 4) = sub_100002320(v19, v87, &v103);
      _os_log_impl(&_mh_execute_header, v55, v56, "Would have displayed %s on HUD", v58, 0xCu);
      sub_100002A00(v60);

      v61 = *(v10 + 8);
      v62 = v102;
    }

    else
    {

      v61 = *(v10 + 8);
      v62 = v15;
    }

    return v61(v62, v9);
  }

  v102 = v15;
  v103 = 0;
  v85 = v10;
  v20 = v17;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v101 = v21;
  v104 = 0xE000000000000000;
  v23 = v18;

  _StringGuts.grow(_:)(25);

  v103 = 0xD000000000000017;
  v104 = 0x80000001004B75A0;
  v24._countAndFlagsBits = v19;
  v24._object = v23;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();

  v26 = [v20 askToLaunchTapToRadarWithMessage:v25];

  if ((v26 & 1) == 0)
  {

    sub_10000B02C();
    swift_allocError();
    *v63 = xmmword_100481840;
    *(v63 + 16) = 0;
    swift_willThrow();

    v10 = v85;
    v15 = v102;
    return (*(v10 + 8))(v15, v9);
  }

  v83 = v20;
  v84 = v9;
  sub_10005DC58(&qword_10058BDF8, &qword_100481970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100481850;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v103 = 0xD000000000000014;
  v104 = 0x80000001004B75C0;
  v82 = v19;
  v28._countAndFlagsBits = v19;
  v87 = v23;
  v28._object = v23;
  String.append(_:)(v28);
  v29 = v104;
  *(inited + 48) = v103;
  *(inited + 56) = v29;
  *(inited + 64) = 0x676169446F747541;
  *(inited + 72) = 0xEF73636974736F6ELL;
  *(inited + 80) = 0x656E6F6870;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x7470697263736544;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = v101;
  *(inited + 120) = v22;
  *(inited + 128) = 0x6E656E6F706D6F43;
  *(inited + 136) = 0xEB00000000444974;
  *(inited + 144) = 0x313433373535;
  *(inited + 152) = 0xE600000000000000;
  strcpy((inited + 160), "ComponentName");
  *(inited + 174) = -4864;
  *(inited + 176) = 0x5032502069466957;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x80000001004B75E0;
  *(inited + 208) = 5459817;
  *(inited + 216) = 0xE300000000000000;
  strcpy((inited + 224), "Classification");
  *(inited + 239) = -18;
  *(inited + 240) = 0x2073756F69726553;
  *(inited + 248) = 0xEB00000000677542;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x80000001004B7600;
  *(inited + 272) = 0xD000000000000023;
  *(inited + 280) = 0x80000001004B7620;
  v30 = sub_1000824E4(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BCB8, &qword_1004818D0);
  swift_arrayDestroy();
  v31 = v109;
  v32 = sub_1000AA480(v30);
  v109 = v31;

  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = 0x80000001004B7650;
  v38 = (v34 + 63) >> 6;
  v88 = v32;

  v40 = 0;
  v41 = 0xD000000000000013;
  v15 = v102;
  if (v36)
  {
    while (1)
    {
      v42 = v40;
LABEL_12:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v44 = (v42 << 10) | (16 * v43);
      v45 = (*(v88 + 48) + v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v88 + 56) + v44);
      v49 = v48[1];
      v99 = *v48;
      v100 = v47;
      v103 = v41;
      v104 = v37;

      v50._countAndFlagsBits = v46;
      v50._object = v47;
      String.append(_:)(v50);
      v101 = v37;

      v51._countAndFlagsBits = 61;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);

      v52._countAndFlagsBits = v99;
      v52._object = v49;
      String.append(_:)(v52);

      v53._countAndFlagsBits = 38;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);

      v41 = v103;
      v37 = v104;
      v15 = v102;
      if (!v36)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    if (v42 >= v38)
    {
      break;
    }

    v36 = *(v33 + 8 * v42);
    ++v40;
    if (v36)
    {
      v40 = v42;
      goto LABEL_12;
    }
  }

  String.index(before:)();
  String.subscript.getter();

  static String._fromSubstring(_:)();

  v64 = v96;
  URL.init(string:)();

  v65 = v97;
  v66 = v98;
  if ((*(v97 + 48))(v64, 1, v98) == 1)
  {

    sub_100016290(v64, &qword_10058BDF0, &qword_100481968);
    sub_10000B02C();
    swift_allocError();
    *v67 = xmmword_100481860;
    *(v67 + 16) = 0;
    swift_willThrow();

    v9 = v84;
    v10 = v85;
    return (*(v10 + 8))(v15, v9);
  }

  (*(v65 + 32))(v95, v64, v66);
  URL._bridgeToObjectiveC()(v68);
  v101 = v69;
  v70 = v86;
  v71 = v84;
  (v89)(v86, v15, v84);
  v72 = v85;
  v73 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v74 = (v91 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v72 + 32))(v75 + v73, v70, v71);
  v76 = (v75 + v74);
  v77 = v87;
  *v76 = v82;
  v76[1] = v77;
  v107 = v93;
  v108 = v75;
  v103 = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_1000AAA78;
  v106 = v94;
  v78 = _Block_copy(&v103);

  v79 = v83;
  v80 = v101;
  v81 = [v83 tapToRadarWithURL:v101 completionHandler:v78];
  _Block_release(v78);

  (*(v65 + 8))(v95, v66);
  return (*(v72 + 8))(v102, v71);
}

uint64_t DeviceDriver<>.report(softError:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v99 = a1;
  v98 = a1[1];
  sub_10005DC58(&qword_10058BDF0, &qword_100481968);
  __chkstk_darwin();
  v95 = &v85 - v6;
  v7 = type metadata accessor for URL();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v92 = v11;
  v93 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v85 - v13;
  v103 = a4;
  v15 = a4[7];
  v15(&v104, a2, a4, v12);
  v101 = v10;
  v17 = *(v10 + 16);
  v16 = v10 + 16;
  v110 = v14;
  v102 = v9;
  v91 = v17;
  v17(v14, v104 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger, v9);

  (v15)(&v104, a2, v103);
  v18 = sub_10008DF90();

  if (!v18)
  {
    sub_10000B02C();
    swift_allocError();
    *v55 = xmmword_1004817E0;
    *(v55 + 16) = 0;
    swift_willThrow();
    return (*(v101 + 8))(v110, v102);
  }

  v19 = v99;
  v20 = *v99;
  v21 = v99[1];
  if ((v99[4] & 1) == 0)
  {
    v56 = v99[1];

    v57 = v110;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    sub_1000B0D98(v19);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v20;
      v63 = v61;
      v104 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_100002320(v62, v56, &v104);
      _os_log_impl(&_mh_execute_header, v58, v59, "Would have displayed %s on HUD", v60, 0xCu);
      sub_100002A00(v63);
    }

    return (*(v101 + 8))(v57, v102);
  }

  v89 = v16;
  v23 = v99[2];
  v22 = v99[3];
  v104 = 0;
  v105 = 0xE000000000000000;

  _StringGuts.grow(_:)(25);

  v104 = 0xD000000000000017;
  v105 = 0x80000001004B75A0;
  v24._countAndFlagsBits = v20;
  v24._object = v21;
  String.append(_:)(v24);
  v25 = v20;
  v26 = String._bridgeToObjectiveC()();

  v27 = [v18 askToLaunchTapToRadarWithMessage:v26];

  if (!v27)
  {

    sub_10000B02C();
    swift_allocError();
    *v64 = xmmword_100481840;
    *(v64 + 16) = 0;
    swift_willThrow();

    return (*(v101 + 8))(v110, v102);
  }

  v88 = v18;
  sub_10005DC58(&qword_10058BDF8, &qword_100481970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100481850;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  v104 = 0;
  v105 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v104 = 0xD000000000000014;
  v105 = 0x80000001004B75C0;
  v86 = v25;
  v87 = v21;
  v29._countAndFlagsBits = v25;
  v29._object = v21;
  String.append(_:)(v29);
  v30 = v105;
  *(inited + 48) = v104;
  *(inited + 56) = v30;
  *(inited + 64) = 0x676169446F747541;
  *(inited + 72) = 0xEF73636974736F6ELL;
  *(inited + 80) = 0x656E6F6870;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x7470697263736544;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = v23;
  *(inited + 120) = v22;
  *(inited + 128) = 0x6E656E6F706D6F43;
  *(inited + 136) = 0xEB00000000444974;
  *(inited + 144) = 0x313433373535;
  *(inited + 152) = 0xE600000000000000;
  strcpy((inited + 160), "ComponentName");
  *(inited + 174) = -4864;
  *(inited + 176) = 0x5032502069466957;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x80000001004B75E0;
  *(inited + 208) = 5459817;
  *(inited + 216) = 0xE300000000000000;
  strcpy((inited + 224), "Classification");
  *(inited + 239) = -18;
  *(inited + 240) = 0x2073756F69726553;
  *(inited + 248) = 0xEB00000000677542;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x80000001004B7600;
  *(inited + 272) = 0xD000000000000023;
  *(inited + 280) = 0x80000001004B7620;
  v31 = sub_1000824E4(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BCB8, &qword_1004818D0);
  swift_arrayDestroy();
  v32 = v100;
  v33 = sub_1000AA480(v31);
  v100 = v32;

  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = 0x80000001004B7650;
  v39 = (v35 + 63) >> 6;
  v90 = v33;

  v41 = 0;
  v42 = 0xD000000000000013;
  if (v37)
  {
    while (1)
    {
      v43 = v41;
LABEL_12:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = (v43 << 10) | (16 * v44);
      v46 = (*(v90 + 48) + v45);
      v47 = *v46;
      v48 = v46[1];
      v49 = (*(v90 + 56) + v45);
      v50 = v49[1];
      v98 = *v49;
      v99 = v48;
      v104 = v42;
      v105 = v38;

      v51._countAndFlagsBits = v47;
      v51._object = v48;
      String.append(_:)(v51);
      v103 = v38;

      v52._countAndFlagsBits = 61;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);

      v53._countAndFlagsBits = v98;
      v53._object = v50;
      String.append(_:)(v53);

      v54._countAndFlagsBits = 38;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);

      v42 = v104;
      v38 = v105;
      if (!v37)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return result;
    }

    if (v43 >= v39)
    {
      break;
    }

    v37 = *(v34 + 8 * v43);
    ++v41;
    if (v37)
    {
      v41 = v43;
      goto LABEL_12;
    }
  }

  String.index(before:)();
  String.subscript.getter();

  static String._fromSubstring(_:)();

  v65 = v95;
  URL.init(string:)();

  v66 = v96;
  v67 = v97;
  if ((*(v96 + 48))(v65, 1, v97) == 1)
  {

    sub_100016290(v65, &qword_10058BDF0, &qword_100481968);
    sub_10000B02C();
    swift_allocError();
    *v68 = xmmword_100481860;
    *(v68 + 16) = 0;
    swift_willThrow();

    return (*(v101 + 8))(v110, v102);
  }

  v69 = v94;
  (*(v66 + 32))(v94, v65, v67);
  v70 = v66;
  URL._bridgeToObjectiveC()(v71);
  v103 = v72;
  v73 = v93;
  v74 = v102;
  v91(v93, v110, v102);
  v75 = v101;
  v76 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v77 = (v92 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (*(v75 + 32))(v78 + v76, v73, v74);
  v79 = (v78 + v77);
  v80 = v87;
  *v79 = v86;
  v79[1] = v80;
  v108 = sub_1000B0DEC;
  v109 = v78;
  v104 = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_1000AAA78;
  v107 = &unk_10055F078;
  v81 = _Block_copy(&v104);

  v82 = v88;
  v83 = v103;
  v84 = [v88 tapToRadarWithURL:v103 completionHandler:v81];
  _Block_release(v81);

  (*(v70 + 8))(v69, v97);
  return (*(v75 + 8))(v110, v74);
}

Swift::Int sub_1000AA480(uint64_t a1)
{
  v46 = type metadata accessor for CharacterSet();
  __chkstk_darwin();
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  v42 = &_swiftEmptyDictionarySingleton;
  v50 = &_swiftEmptyDictionarySingleton;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v44 = (v2 + 8);
  v47 = a1;

  v11 = 0;
  v43 = a1 + 64;
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v11 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (v11 << 10) | (16 * v13);
      v15 = (*(v47 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v47 + 56) + v14);
      v19 = v18[1];
      v48 = *v18;
      v49 = v19;

      v20 = v45;
      static CharacterSet.urlQueryAllowed.getter();
      sub_10005E2E4();
      v21 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v23 = v22;
      (*v44)(v20, v46);

      if (v23)
      {
        break;
      }

      v12 = v11;
      v5 = v43;
      if (!v8)
      {
LABEL_7:
        while (1)
        {
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v11 >= v9)
          {

            return v42;
          }

          v8 = *(v5 + 8 * v11);
          ++v12;
          if (v8)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v41 = v21;
    v24 = v42[2];
    if (v42[3] <= v24)
    {
      sub_10018F794(v24 + 1, 1);
    }

    v25 = v50;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = (v25 + 8);
    v42 = v25;
    v27 = -1 << *(v25 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~v25[(v28 >> 6) + 8]) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~v25[(v28 >> 6) + 8])) | v28 & 0x7FFFFFFFFFFFFFC0;
    v31 = v41;
LABEL_25:
    *&v26[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
    v36 = v42;
    v5 = v43;
    v37 = 16 * v30;
    v38 = (v42[6] + v37);
    *v38 = v16;
    v38[1] = v17;
    v39 = (v36[7] + v37);
    *v39 = v31;
    v39[1] = v23;
    ++v36[2];
  }

  v32 = 0;
  v33 = (63 - v27) >> 6;
  v31 = v41;
  while (++v29 != v33 || (v32 & 1) == 0)
  {
    v34 = v29 == v33;
    if (v29 == v33)
    {
      v29 = 0;
    }

    v32 |= v34;
    v35 = *&v26[8 * v29];
    if (v35 != -1)
    {
      v30 = __clz(__rbit64(~v35)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1000AA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_100002320(a4, a5, &v17);
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create tap to radar %s because %@", v9, 0x16u);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v11);
    }

    else
    {
    }
  }

  else
  {

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100002320(a4, a5, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Created tap to radar: %s", v14, 0xCu);
      sub_100002A00(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1000AAA78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t AppleDevice.EventSource.init(driver:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(a5 + 56))(v23, a4, a5);
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v19 = a6;
  v14 = (*(a6 + 40))(a4, a6);
  v16 = v15;
  *(a8 + 8) = v14;
  *(a8 + 16) = v15;
  v23[5] = swift_unknownObjectUnownedLoadStrong();
  v20 = *(a7 + 40);
  swift_getAssociatedTypeWitness();

  v20(v14, v16, a2);

  (*(*(a4 - 8) + 8))(a1, a4);
  if (!v22)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = v19;
  v23[3] = a7;
  v17 = type metadata accessor for AppleDevice.EventSource(0, v23);
  return (*(*(v17 - 8) + 8))(a8, v17);
}

Swift::Void __swiftcall AppleDevice.EventSource.stop()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  (*(v3 + 16))(v9);
  swift_unknownObjectUnownedLoadStrong();
  (*(v3 + 8))(v9, v2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v2 + 40);
  v7 = *(v6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7(v4, v5, AssociatedTypeWitness, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1000AAE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AppleDevice.EventSource<A>, a1);

  return DriverEventSource.customMirror.getter(a1, WitnessTable);
}

uint64_t sub_1000AB1E8@<X0>(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a2 + 16);
    v15 = v14 + 28;
    if (__OFADD__(v14, 28))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a2 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a2 + 16);
    }

    else
    {
      v16 = a2;
    }

    v51 = v7;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a2 + 28;
    if (v15 >= a2 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a3 & 0xFF000000000000) < 0x1C000000000001)
  {
    goto LABEL_66;
  }

  v51 = v7;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A8114(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v56 = 0;
  *v57 = v53;
  *&v57[16] = v54;
  *&v57[24] = v55;
  if (!v12)
  {
    if (v13 >= BYTE6(a3))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a2);
    v13 += a2;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a2 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v20 = *(a2 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a2 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v23 = a2;
      v22 = a2 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a3);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a4 = *v57;
            *(a4 + 12) = *&v57[12];
            *(a4 + 32) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C((v41 > 1), v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AB7CC@<X0>(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a2 + 16);
    v15 = v14 + 18;
    if (__OFADD__(v14, 18))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a2 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a2 + 16);
    }

    else
    {
      v16 = a2;
    }

    v51 = v7;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a2 + 18;
    if (v15 >= a2 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a3 & 0xFF000000000000) < 0x12000000000001)
  {
    goto LABEL_66;
  }

  v51 = v7;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A91B4(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v55 = 0;
  v56 = v53;
  v57 = v54;
  if (!v12)
  {
    if (v13 >= BYTE6(a3))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a2);
    v13 += a2;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a2 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v20 = *(a2 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a2 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v23 = a2;
      v22 = a2 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a3);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a4 = v56;
            *(a4 + 16) = v57;
            *(a4 + 24) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C((v41 > 1), v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000ABD74@<X0>(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a2 + 16);
    v15 = v14 + 22;
    if (__OFADD__(v14, 22))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a2 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a2 + 16);
    }

    else
    {
      v16 = a2;
    }

    v51 = v7;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a2 + 22;
    if (v15 >= a2 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a3 & 0xFF000000000000) < 0x16000000000001)
  {
    goto LABEL_66;
  }

  v51 = v7;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A8F4C(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v56 = 0;
  *v57 = v53;
  *&v57[20] = v55;
  *&v57[16] = v54;
  if (!v12)
  {
    if (v13 >= BYTE6(a3))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a2);
    v13 += a2;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a2 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v20 = *(a2 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a2 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v23 = a2;
      v22 = a2 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a3);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a4 = *v57;
            *(a4 + 14) = *&v57[14];
            *(a4 + 24) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C((v41 > 1), v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AC324@<X0>(uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a2 + 16);
    v15 = v14 + 16;
    if (__OFADD__(v14, 16))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a2 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a2 + 16);
    }

    else
    {
      v16 = a2;
    }

    v51 = v7;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a2 + 16;
    if (v15 >= a2 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a3 & 0xFF000000000000) < 0x10000000000001)
  {
    goto LABEL_66;
  }

  v51 = v7;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A5C4C(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v54 = 0;
  v55 = v53;
  if (!v12)
  {
    if (v13 >= BYTE6(a3))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a2);
    v13 += a2;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a2 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v20 = *(a2 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a2 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v23 = a2;
      v22 = a2 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a3);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a4 = v55;
            a4[2] = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C((v41 > 1), v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AC8BC@<X0>(uint64_t a2@<X2>, unint64_t a3@<X3>, void (*a4)(__int128 *__return_ptr)@<X4>, uint64_t a5@<X8>)
{
  v9 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_66;
    }

    v15 = *(a2 + 16);
    v16 = v15 + 28;
    if (__OFADD__(v15, 28))
    {
      goto LABEL_68;
    }

    if (v16 >= *(a2 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v14 == 2)
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = a2;
    }

    v50 = v9;
    v51 = result;
    if (v16 >= v17)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v14)
  {
    v16 = a2 + 28;
    if (v16 >= a2 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a3 & 0xFF000000000000) < 0x1C000000000001)
  {
    goto LABEL_66;
  }

  v50 = v9;
  v51 = result;
LABEL_15:
  v18 = Data._Representation.subscript.getter();
  v20 = v19;
  a4(&v53);
  sub_1000124C8(v18, v20);
  v56 = 0;
  *v57 = v53;
  *&v57[16] = v54;
  *&v57[24] = v55;
  if (!v14)
  {
    result = v51;
    if (v51 >= BYTE6(a3))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v14 != 2)
  {
    result = v51 + a2;
    if (__OFADD__(v51, a2))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (result < a2 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  v21 = *(a2 + 16);
  result = v21 + v51;
  if (__OFADD__(v21, v51))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (result >= *(a2 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v14)
  {
    if (v14 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v23 = a2;
      v22 = a2 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a3);
  }

  if (v22 < result || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v51 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a5 = *v57;
            *(a5 + 12) = *&v57[12];
            *(a5 + 32) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C((v41 > 1), v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v11, v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v51;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000ACEA4@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v9)
  {
    goto LABEL_16;
  }

  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(a3 + 16);
    v13 = v12 + 32;
    if (__OFADD__(v12, 32))
    {
      goto LABEL_55;
    }

    if (v13 >= *(a3 + 24))
    {
      goto LABEL_16;
    }

LABEL_11:
    if (v10 == 2)
    {
      v14 = *(a3 + 16);
    }

    else
    {
      v14 = a3;
    }

    v11 = result;
    if (v13 >= v14)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10)
  {
    v13 = a3 + 32;
    if (v13 >= a3 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ((a4 & 0xFF000000000000) < 0x20000000000001)
  {
    goto LABEL_16;
  }

  v11 = result;
LABEL_15:
  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  sub_1002A8778(v15, v16, v38);
  sub_1000124C8(v15, v17);
  v39 = v38[0];
  v40 = v38[1];
  if (v10)
  {
    if (v10 == 2)
    {
      v18 = *(a3 + 16);
      result = v18 + v11;
      if (__OFADD__(v18, v11))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v19 = *(a3 + 24);
    }

    else
    {
      result = v11 + a3;
      if (__OFADD__(v11, a3))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v19 = a3 >> 32;
    }
  }

  else
  {
    v19 = BYTE6(a4);
    result = v11;
  }

  if (result >= v19)
  {
LABEL_16:
    *(a5 + 80) = 0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *(a5 + 88) = -4;
    return result;
  }

  if (v10)
  {
    if (v10 == 2)
    {
      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
    }

    else
    {
      v21 = a3;
      v20 = a3 >> 32;
    }
  }

  else
  {
    v21 = 0;
    v20 = BYTE6(a4);
  }

  if (v20 < result || v20 < v21)
  {
    goto LABEL_56;
  }

  result = Data._Representation.subscript.getter();
  v23 = result;
  v24 = v22;
  v25 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v25)
    {
      LOWORD(v26) = BYTE6(v22);
      goto LABEL_46;
    }

LABEL_40:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v26 = HIDWORD(result) - result;
      goto LABEL_42;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  if (v25 != 2)
  {
    LOWORD(v26) = 0;
    goto LABEL_46;
  }

  v28 = *(result + 16);
  v27 = *(result + 24);
  v26 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    __break(1u);
    goto LABEL_40;
  }

LABEL_42:
  if ((v26 & 0x8000000000000000) != 0 || v26 >= 0x10000)
  {
    goto LABEL_50;
  }

LABEL_46:
  swift_getAtKeyPath();
  if (LOWORD(v41[0]) != v26)
  {
LABEL_50:
    result = sub_1000124C8(v23, v24);
    goto LABEL_16;
  }

  v29 = sub_100033AA8(_swiftEmptyArrayStorage);
  v30 = type metadata accessor for BinaryDecoder();
  v31 = swift_allocObject();
  v32 = 0;
  v31[5] = &_swiftEmptyDictionarySingleton;
  v31[2] = v23;
  v31[3] = v24;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v32 = *(v23 + 16);
    }
  }

  else if (v25)
  {
    v32 = v23;
  }

  v31[4] = v32;
  swift_beginAccess();
  v31[5] = v29;
  v37[3] = v30;
  v37[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v37[0] = v31;
  sub_10000AB0C(v23, v24);

  sub_1001F507C(v37, v41);

  result = sub_1000124C8(v23, v24);
  v33 = v40;
  v34 = v41[0];
  *a5 = v39;
  *(a5 + 16) = v33;
  v35 = v41[1];
  v36 = v42[0];
  *(a5 + 32) = v34;
  *(a5 + 48) = v35;
  *(a5 + 64) = v36;
  *(a5 + 73) = *(v42 + 9);
  return result;
}

unint64_t sub_1000AD250(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 12)
      {
        return 0;
      }

      return sub_1002A941C(result, a2);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 12)
      {
        return 0;
      }

      return sub_1002A941C(result, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 12)
      {
        return sub_1002A941C(result, a2);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AD30C@<X0>(void *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B25BC(__src);
    return memcpy(a3, __src, 0x821uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 2080)
  {
    goto LABEL_9;
  }

  sub_1002A8C78(result, a2, a3);

  return sub_1000B25EC(a3);
}

void *sub_1000AD3DC@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = result[2];
    v4 = result[3];
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      *(a3 + 28) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A8114(result, a2, a3);
      *(a3 + 28) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AD4B0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 20)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 20) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 20)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A89F8(result, a2, a3);
      *(a3 + 20) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000AD57C(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 10)
      {
        return 0;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 10)
      {
        return 0;
      }

LABEL_11:
      v7 = sub_1002A856C(result, a2);
      return v7 & 0xFFFFFFFFFFFFLL | (HIWORD(v7) << 48);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 10)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AD640@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B25F4(__src);
    return memcpy(a3, __src, 0x3E6uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 997)
  {
    goto LABEL_9;
  }

  sub_1002A8394(result, a2, a3);

  return sub_1000B2624(a3);
}

int64_t sub_1000AD710@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 72)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_100030E20(result, a2, a3);
      *(a3 + 72) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 72)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1000AD7F4(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

LABEL_9:
    sub_1000B262C(__src);
    memcpy(a3, __src, 0xF20uLL);
    return;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 3872)
  {
    goto LABEL_9;
  }

  sub_1002A7E40(a1, a2, a3);

  NANBitmap.Channel.operatingClass.getter();
}

void sub_1000AD8C4(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

LABEL_9:
    sub_1000B263C(__src);
    memcpy(a3, __src, 0x658uLL);
    return;
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 1624)
  {
    goto LABEL_9;
  }

  sub_1002A7B6C(a1, a2, a3);

  NANBitmap.Channel.operatingClass.getter();
}

void sub_1000AD994(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_12:
      sub_1000B2650(v15);
      v9 = v15[11];
      a3[10] = v15[10];
      a3[11] = v9;
      a3[12] = v15[12];
      v10 = v15[7];
      a3[6] = v15[6];
      a3[7] = v10;
      v11 = v15[9];
      a3[8] = v15[8];
      a3[9] = v11;
      v12 = v15[3];
      a3[2] = v15[2];
      a3[3] = v12;
      v13 = v15[5];
      a3[4] = v15[4];
      a3[5] = v13;
      v14 = v15[1];
      *a3 = v15[0];
      a3[1] = v14;
      return;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 208)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (!v4)
  {
    if (BYTE6(a2) != 208)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_17;
  }

  if (HIDWORD(a1) - a1 != 208)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_1002A7864(a1, a2, a3);

  NANBitmap.Channel.operatingClass.getter();
}

uint64_t sub_1000ADAA8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 74)
      {
        goto LABEL_12;
      }

      return sub_1002A75CC(result, a2, a3);
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 74)
      {
        goto LABEL_12;
      }

      return sub_1002A75CC(result, a2, a3);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 74)
      {
        return sub_1002A75CC(result, a2, a3);
      }

LABEL_12:
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = xmmword_100481870;
      *(a3 + 72) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000ADB70(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 16)
      {
        return 0;
      }

      return sub_1002A739C(result, a2);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      return sub_1002A739C(result, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        return sub_1002A739C(result, a2);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000ADC20@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B267C(__src);
    return memcpy(a3, __src, 0x109uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 264)
  {
    goto LABEL_9;
  }

  sub_1002A7118(result, a2, a3);

  return sub_1000B26B0(a3);
}

uint64_t sub_1000ADCF0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 40)
      {
        goto LABEL_8;
      }

LABEL_11:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 40)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6E98(result, a2, a3);
      *(a3 + 40) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 40)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1000ADDC4(uint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_12:
      sub_1000B26B8(v16);
      v9 = v16[13];
      a3[12] = v16[12];
      a3[13] = v9;
      a3[14] = v17[0];
      *(a3 + 233) = *(v17 + 9);
      v10 = v16[9];
      a3[8] = v16[8];
      a3[9] = v10;
      v11 = v16[11];
      a3[10] = v16[10];
      a3[11] = v11;
      v12 = v16[5];
      a3[4] = v16[4];
      a3[5] = v12;
      v13 = v16[7];
      a3[6] = v16[6];
      a3[7] = v13;
      v14 = v16[1];
      *a3 = v16[0];
      a3[1] = v14;
      v15 = v16[3];
      a3[2] = v16[2];
      a3[3] = v15;
      return;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 248)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (!v4)
  {
    if (BYTE6(a2) != 248)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_17;
  }

  if (HIDWORD(result) - result != 248)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_1002A6B74(result, a2, a3);

  sub_1000B26EC(a3);
}

unint64_t sub_1000ADEE8(unint64_t result, unint64_t a2, uint64_t (*a3)(unint64_t))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3(result);
      v9 = 0;
      return v8 | (v9 << 32);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = 0;
      v9 = 1;
      return v8 | (v9 << 32);
    }
  }

  __break(1u);
  return result;
}

void *sub_1000ADFA4@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B26F4(__src);
    return memcpy(a3, __src, 0x1D5uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 468)
  {
    goto LABEL_9;
  }

  sub_1002A6790(result, a2, a3);

  return sub_1000B2744(a3);
}

uint64_t sub_1000AE074@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 24)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 24)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6510(result, a2, a3);
      *(a3 + 24) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 24)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE140@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 104)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0;
      *(a3 + 104) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 104)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6260(result, a2, a3);
      *(a3 + 104) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 104)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE22C(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 8)
      {
        return 0;
      }

      return a3(result);
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 8)
      {
        return 0;
      }

      return a3(result);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 8)
      {
        return a3(result);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE2D8(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 12)
      {
        return 0;
      }

      return a3(result);
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 12)
      {
        return 0;
      }

      return a3(result);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 12)
      {
        return a3(result);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AE398@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B277C(__src);
    return memcpy(a3, __src, 0x301uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 768)
  {
    goto LABEL_9;
  }

  sub_1002A6088(result, a2, a3);

  return sub_1000B27AC(a3);
}

uint64_t sub_1000AE678()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v4 = 2;

  sub_1000AFBC4(v1, v2, 0x12u, &v4, sub_1000A140C);

  return v4;
}

unint64_t sub_1000AE6F8()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v5 = 0;
  v4 = 0;
  v6 = 1;

  sub_1000AFD68(v1, v2, 0x12u, &v4, sub_1000B2990);

  return v4 | (v5 << 32) | (v6 << 48);
}

unint64_t sub_1000AE798()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v4 = 0;
  v5 = 1;

  sub_1000AFF1C(v1, v2, 2u, &v4, sub_1000A1FBC);

  return v4 | (v5 << 32);
}

char *sub_1000AE85C()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);
  v5 = _swiftEmptyArrayStorage;
  swift_bridgeObjectRetain_n();
  sub_1000AF9A4(v3, v2, 0x1Eu, sub_1000A23B8, 0, &v5);

  return v5;
}

uint64_t sub_1000AE928()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  AppleDevice.neighborDiscoveryTableClear(on:)(v3);
}

void sub_1000AE9C4()
{
  if (*(*(*v0 + 40) + 128))
  {

    sub_1000A0B5C();
  }
}

void sub_1000AEAEC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000AEAFC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1000B182C(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_1000AEC50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_1000AEC94(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SCNetworkService(0);
  sub_10001F8F4(&qword_10058C788, type metadata accessor for SCNetworkService, byte_10048062C);
  return static _CFObject.== infix(_:_:)() & 1;
}

void sub_1000AED2C()
{
  type metadata accessor for Logger();
  v1 = *(v0 + 16);

  sub_100091FF8(v1);
}

void *sub_1000AEDD0(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000AEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v5 = a5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    *__source = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v11, __source, v5);
    v10(v13, 0);
    return v5;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v6)
    {
      return v16;
    }
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v9, (v7 + 32), v5);
    v8(v13, 0);
  }

  return v5;
}

unint64_t sub_1000AEF40(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, v6, 0, 0);

  if (!v7)
  {
    v23 = 0;
    _StringGuts.grow(_:)(70);
    v17._countAndFlagsBits = 0xD000000000000044;
    v17._object = 0x80000001004B7D60;
    String.append(_:)(v17);
    v18 = SCError();
    SCErrorString(v18);
    v19._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v19);
LABEL_8:

    return v23;
  }

  if (!SCPreferencesLock(v7, 1u))
  {
    _StringGuts.grow(_:)(49);

    v23 = 0xD00000000000002FLL;
    v20 = SCError();
    SCErrorString(v20);
    v21._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v21);

    goto LABEL_8;
  }

  v8 = sub_100097578(v7, a1, a2, a3);
  if (v10)
  {
    v11 = v9;
    _StringGuts.grow(_:)(16);

    v22 = v11;
    v12 = 0x7265206874697720;
    v13 = 0xEC00000020726F72;
LABEL_5:
    String.append(_:)(*&v12);
    v14 = SCError();
    SCErrorString(v14);
    v15._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v15);

    SCPreferencesUnlock(v7);

    return v22;
  }

  if (v8)
  {
    if (!SCPreferencesCommitChanges(v7))
    {
      v22 = 0;
      _StringGuts.grow(_:)(52);
      v12 = 0xD000000000000032;
      v13 = 0x80000001004B7DF0;
      goto LABEL_5;
    }

    if (!SCPreferencesApplyChanges(v7))
    {
      v22 = 0;
      _StringGuts.grow(_:)(51);
      v12 = 0xD000000000000031;
      v13 = 0x80000001004B7DB0;
      goto LABEL_5;
    }
  }

  SCPreferencesUnlock(v7);

  return 0;
}

unint64_t sub_1000AF1E4(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, v4, 0, 0);

  if (!v5)
  {
    v21 = 0;
    _StringGuts.grow(_:)(70);
    v15._countAndFlagsBits = 0xD000000000000044;
    v15._object = 0x80000001004B7D60;
    String.append(_:)(v15);
    v16 = SCError();
    SCErrorString(v16);
    v17._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v17);
LABEL_8:

    return v21;
  }

  if (!SCPreferencesLock(v5, 1u))
  {
    _StringGuts.grow(_:)(49);

    v21 = 0xD00000000000002FLL;
    v18 = SCError();
    SCErrorString(v18);
    v19._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v19);

    goto LABEL_8;
  }

  v6 = sub_1000979A4(v5, a1, a2);
  if (v8)
  {
    v9 = v7;
    _StringGuts.grow(_:)(16);

    v20 = v9;
    v10 = 0x7265206874697720;
    v11 = 0xEC00000020726F72;
LABEL_5:
    String.append(_:)(*&v10);
    v12 = SCError();
    SCErrorString(v12);
    v13._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v13);

    SCPreferencesUnlock(v5);

    return v20;
  }

  if (v6)
  {
    if (!SCPreferencesCommitChanges(v5))
    {
      v20 = 0;
      _StringGuts.grow(_:)(52);
      v10 = 0xD000000000000032;
      v11 = 0x80000001004B7DF0;
      goto LABEL_5;
    }

    if (!SCPreferencesApplyChanges(v5))
    {
      v20 = 0;
      _StringGuts.grow(_:)(51);
      v10 = 0xD000000000000031;
      v11 = 0x80000001004B7DB0;
      goto LABEL_5;
    }
  }

  SCPreferencesUnlock(v5);

  return 0;
}

uint64_t sub_1000AF470()
{
  if (*(v0 + 16))
  {
    return sub_10008D540();
  }

  return result;
}

uint64_t sub_1000AF4C0(const __SCPreferences *a1, void *a2)
{
  SCPreferencesLock(a1, 1u);
  SCPreferencesSynchronize(a1);
  if (a2)
  {
    v4 = a2[24];
    v5 = a2[25];
    v6 = a2[26];
    v7 = *(v4 + 16);

    v8 = v6;
    os_unfair_lock_lock(v7);
    swift_beginAccess();
    *(v5 + 16) = &_swiftEmptyDictionarySingleton;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return SCPreferencesUnlock(a1);
}

void sub_1000AF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v12 = *(v6 + 24);
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();
  v13 = *(v6 + 32);
  if (*(v13 + 16) && (v14 = sub_1000102E8(a4, a5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = *(v16 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v17 = sub_100097170(a4, a5, sub_1000B29FC);
  }

  swift_beginAccess();
  sub_10004F87C(a1 & 0xFFFFFFFFFFFFLL, a2, a3, v17, a6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));
}

unint64_t sub_1000AF710(uint64_t a1, void *a2, char a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, v6, 0, 0);

  if (!v7)
  {
    v23 = 0;
    _StringGuts.grow(_:)(70);
    v17._countAndFlagsBits = 0xD000000000000044;
    v17._object = 0x80000001004B7D60;
    String.append(_:)(v17);
    v18 = SCError();
    SCErrorString(v18);
    v19._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v19);
LABEL_8:

    return v23;
  }

  if (!SCPreferencesLock(v7, 1u))
  {
    _StringGuts.grow(_:)(49);

    v23 = 0xD00000000000002FLL;
    v20 = SCError();
    SCErrorString(v20);
    v21._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v21);

    goto LABEL_8;
  }

  v8 = sub_10009D140(v7, a1, a2, a3 & 1);
  if (v10)
  {
    v11 = v9;
    _StringGuts.grow(_:)(16);

    v22 = v11;
    v12 = 0x7265206874697720;
    v13 = 0xEC00000020726F72;
LABEL_5:
    String.append(_:)(*&v12);
    v14 = SCError();
    SCErrorString(v14);
    v15._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v15);

    SCPreferencesUnlock(v7);

    return v22;
  }

  if (v8)
  {
    if (!SCPreferencesCommitChanges(v7))
    {
      v22 = 0;
      _StringGuts.grow(_:)(52);
      v12 = 0xD000000000000032;
      v13 = 0x80000001004B7DF0;
      goto LABEL_5;
    }

    if (!SCPreferencesApplyChanges(v7))
    {
      v22 = 0;
      _StringGuts.grow(_:)(51);
      v12 = 0xD000000000000031;
      v13 = 0x80000001004B7DB0;
      goto LABEL_5;
    }
  }

  SCPreferencesUnlock(v7);

  return 0;
}

void sub_1000AF9A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, void (*a4)(void *__return_ptr, void), uint64_t a5, char **a6)
{
  v37 = 0;
  if (!getifaddrs(&v37))
  {
    v12 = v37;
    if (v37)
    {
      v32 = a3;
      v30 = a6;
      v29 = a4;
      while (1)
      {
        ifa_flags = v12->ifa_flags;
        v14 = *&v12->ifa_addr;
        v15 = *&v12->ifa_dstaddr;
        v17 = v12;
        v12 = v12->ifa_next;
        ifa_name = v17->ifa_name;
        v38[0] = v12;
        v38[1] = ifa_name;
        v39 = ifa_flags;
        v33 = v14;
        v40 = v14;
        v41 = v15;
        if (!ifa_name)
        {
          __break(1u);
LABEL_26:
          __break(1u);
        }

        v19 = String.init(cString:)() == a1 && v18 == a2;
        if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_26;
        }

        if (*(v33 + 1) != v32)
        {
          goto LABEL_5;
        }

        a4(v35, v38);
        if (v6)
        {
          goto LABEL_21;
        }

        v20 = v36;
        if (v36 == 1)
        {
LABEL_5:
          if (!v12)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v21 = v35[2];
          v22 = v35[0];
          v31 = v35[1];
          v23 = *a6;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a6 = v23;
          v34 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_100116970(0, *(v23 + 2) + 1, 1, v23);
            *a6 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_100116970((v25 > 1), v26 + 1, 1, v23);
            *v30 = v23;
          }

          *(v23 + 2) = v26 + 1;
          v27 = &v23[32 * v26];
          a6 = v30;
          *(v27 + 4) = v34;
          *(v27 + 5) = v31;
          *(v27 + 6) = v21;
          *(v27 + 7) = v20;
          a4 = v29;
          if (!v12)
          {
LABEL_21:
            v28 = v37;
            goto LABEL_23;
          }
        }
      }

      goto LABEL_5;
    }

    v28 = 0;
LABEL_23:
    freeifaddrs(v28);
  }
}

void sub_1000AFBC4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, void (*a5)(unsigned __int8 *__return_ptr, ifaddrs **))
{
  v26 = 0;
  if (!getifaddrs(&v26))
  {
    if (v26)
    {
      v24 = a4;
      ifa_flags = v26->ifa_flags;
      ifa_next = v26->ifa_next;
      ifa_name = v26->ifa_name;
      v27 = v26->ifa_next;
      v28 = ifa_name;
      v29 = ifa_flags;
      v14 = *&v26->ifa_addr;
      v30 = v14;
      v31 = *&v26->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        a5(&v25, &v27);
        if (v5 || (v22 = v25, *v24 = v25, v22 != 2) || !ifa_next)
        {
LABEL_16:
          v23 = v26;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v27 = ifa_next;
        v28 = v19;
        v29 = v16;
        v30 = v17;
        v31 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v23 = 0;
LABEL_18:
    freeifaddrs(v23);
  }
}

void sub_1000AFD68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, ifaddrs **))
{
  v27 = 0;
  if (!getifaddrs(&v27))
  {
    if (v27)
    {
      v25 = a5;
      ifa_flags = v27->ifa_flags;
      ifa_next = v27->ifa_next;
      ifa_name = v27->ifa_name;
      v28 = v27->ifa_next;
      v29 = ifa_name;
      v30 = ifa_flags;
      v14 = *&v27->ifa_addr;
      v31 = v14;
      v32 = *&v27->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        v25(&v26, &v28);
        if (v5 || (v22 = v26, v23 = BYTE6(v26), *(a4 + 4) = WORD2(v26), *a4 = v22, *(a4 + 6) = v23, v23 != 1) || !ifa_next)
        {
LABEL_16:
          v24 = v27;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v28 = ifa_next;
        v29 = v19;
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v24 = 0;
LABEL_18:
    freeifaddrs(v24);
  }
}

void sub_1000AFF1C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, ifaddrs **))
{
  v26 = 0;
  if (!getifaddrs(&v26))
  {
    if (v26)
    {
      v24 = a5;
      ifa_flags = v26->ifa_flags;
      ifa_next = v26->ifa_next;
      ifa_name = v26->ifa_name;
      v27 = v26->ifa_next;
      v28 = ifa_name;
      v29 = ifa_flags;
      v14 = *&v26->ifa_addr;
      v30 = v14;
      v31 = *&v26->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        v24(&v25, &v27);
        if (v5 || (v22 = BYTE4(v25), *a4 = v25, *(a4 + 4) = v22, v22 != 1) || !ifa_next)
        {
LABEL_16:
          v23 = v26;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v27 = ifa_next;
        v28 = v19;
        v29 = v16;
        v30 = v17;
        v31 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v23 = 0;
LABEL_18:
    freeifaddrs(v23);
  }
}

uint64_t sub_1000B00C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v12[4] = sub_1000B2C08;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000991C0;
  v12[3] = &unk_10055FD20;
  v9 = _Block_copy(v12);
  swift_unknownObjectRetain_n();
  v10 = a2;

  nw_path_evaluator_set_update_handler();
  _Block_release(v9);
  swift_unknownObjectRelease();

  nw_path_evaluator_start();
  return v4;
}

void sub_1000B025C()
{
  v1 = v0;
  type metadata accessor for DispatchTimeInterval();
  __chkstk_darwin();
  v5 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16) == 2 && *v5 == 0)
  {
    v45 = v2;
    v46 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
    v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v4;
    v12 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v13 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    v14 = sub_1000AF710(v12, v13, 1);
    v16 = v15;

    v18 = v16;
    if (v16)
    {
      v19 = 0;
      *&v17 = 136315394;
      v47 = v17;
      v20 = v14;
      do
      {
        sub_100050988(v20, v18, 1);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v48 = v24;
          *v23 = v47;
          *(v23 + 4) = sub_100002320(v12, v13, &v48);
          *(v23 + 12) = 2048;
          *(v23 + 14) = v19 + 1;
          _os_log_impl(&_mh_execute_header, v21, v22, "Failed to start DHCP on %s, retry %ld", v23, 0x16u);
          sub_100002A00(v24);
        }

        v25 = sub_1000AF710(v12, v13, 1);
        v27 = v26;

        v18 = v27;
        v28 = v27 != 0;
        if (v27)
        {
          v20 = v25;
        }

        else
        {
          v20 = 0;
        }

        if (v19 > 3)
        {
          break;
        }

        ++v19;
      }

      while (v27);
    }

    else
    {
      v20 = 0;
      v28 = 0;
    }

    v33 = v46;
    v34 = *v46;
    v35 = v46[1];
    *v46 = v20;
    v33[1] = v18;
    v36 = *(v33 + 16);
    *(v33 + 16) = v28;
    sub_10009C958(v34, v35, v36);
    sub_100050988(v34, v35, v36);
    if (!*(v33 + 16))
    {
      v38 = v43;
      v37 = v44;
      *v43 = 15;
      (*(v37 + 104))(v38, enum case for DispatchTimeInterval.seconds(_:), v45);
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v39 = static OS_dispatch_queue.nan;
      v40 = swift_allocObject();
      swift_weakInit();

      _s7CoreP2P0B6PTimerC5async5after2on7executey8Dispatch0H12TimeIntervalO_So17OS_dispatch_queueCyyctFZ_0(v38, v39, sub_1000B1DD4, v40);

      (*(v37 + 8))(v38, v45);

      v41 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor);
      v42 = swift_allocObject();
      swift_weakInit();
      *(v41 + 40) = sub_1000B1DDC;
      *(v41 + 48) = v42;

      sub_10009B7BC(v12, v13);
    }
  }

  else
  {

    *&v47 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50 = v8;
      *v7 = 136315138;
      if (*(v5 + 16))
      {
        if (*(v5 + 16) == 1)
        {
          v9 = 0xEB0000000064656CLL;
          v10 = 0x6961462050434844;
        }

        else
        {
          if (*v5 == 0)
          {
            v10 = 0x72756769666E6F43;
          }

          else
          {
            v10 = 0x74616E696D726554;
          }

          if (*v5 == 0)
          {
            v9 = 0xEB00000000676E69;
          }

          else
          {
            v9 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        v29 = 0x6673697461736E55;
        if (*v5)
        {
          v29 = 0x6569667369746153;
          v30 = 0xE900000000000064;
        }

        else
        {
          v30 = 0xEB00000000646569;
        }

        v48 = v29;
        v49 = v30;

        v31._countAndFlagsBits = 0x7473657571655220;
        v31._object = 0xEA00000000007265;
        String.append(_:)(v31);

        v10 = v48;
        v9 = v49;
      }

      v32 = sub_100002320(v10, v9, &v50);

      *(v7 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v47, v6, "Unable to start internet sharing requester because in %s", v7, 0xCu);
      sub_100002A00(v8);
    }

    else
    {
      v11 = v47;
    }
  }
}

uint64_t sub_1000B0858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v11 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = -1;
  v12 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v12 + 4) = 0;
  *v12 = 0;
  *(v12 + 6) = 1;
  v13 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v14 = type metadata accessor for DispatchTime();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = nw_parameters_create();
  v37 = a1;
  v38 = a3;
  v16 = (*(*(a3 + 16) + 40))(a2);
  v18 = sub_1000972AC(v16, v17);

  v39 = v15;
  nw_parameters_require_interface(v15, v18);
  swift_unknownObjectRelease();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Start monitoring network path for gateway address updates", v21, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v23 = result;
    v35 = v10;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v24 = static OS_dispatch_queue.p2p;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v36;
    (*(v8 + 16))(v36, v37, a2);
    v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v28 = swift_allocObject();
    v29 = v38;
    *(v28 + 2) = a2;
    *(v28 + 3) = v29;
    *(v28 + 4) = v25;
    (*(v8 + 32))(&v28[v27], v26, a2);
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v30 = swift_allocObject();
    *(v30 + 16) = v23;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1000B1E2C;
    *(v31 + 24) = v28;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055FC58;
    v32 = _Block_copy(aBlock);
    v33 = v24;
    swift_unknownObjectRetain_n();
    v34 = v33;

    nw_path_evaluator_set_update_handler();
    _Block_release(v32);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v4 + v35) = v30;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B0E08(uint64_t a1)
{
  result = sub_10001F8F4(&qword_10058BE00, type metadata accessor for AppleDevice, protocol conformance descriptor for AppleDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0E78(uint64_t a1)
{
  result = sub_10001F8F4(&qword_10058BE70, type metadata accessor for AppleDevice, protocol conformance descriptor for AppleDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0ED8(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AppleDevice.EventSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0F1C(uint64_t a1)
{
  result = type metadata accessor for RoutingSocket(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000B10A8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B118C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B1260(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B1328(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1000B13F4(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_1000B154C(319, qword_10058C5E0, type metadata accessor for RoutingSocket);
    if (v2 <= 0x3F)
    {
      sub_1000B154C(319, qword_100596670, &type metadata accessor for DispatchTime);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000B154C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for NANDataTerminationEvent(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B1600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B1648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B169C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000B16B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B16D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000B1720(uint64_t result, int a2, int a3)
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

unint64_t sub_1000B1784()
{
  result = qword_10058C710;
  if (!qword_10058C710)
  {
    result = swift_getWitnessTable(asc_100481EE8, &type metadata for AppleDevice.RemovedInterfaceHandle, v0, v1);
    atomic_store(result, &qword_10058C710);
  }

  return result;
}

uint64_t sub_1000B17D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B17F0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1000B17F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B182C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1000AEC50(v8, v14, a4) & 1;
}

uint64_t sub_1000B18D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 40);
  swift_beginAccess();
  sub_100012400(v15 + 72, v27, &qword_10058BA80, &qword_1004818C0);
  v16 = v28;
  sub_100016290(v27, &qword_10058BA80, &qword_1004818C0);
  if (v16)
  {
    sub_10000B02C();
    swift_allocError();
    *v17 = xmmword_100481830;
    *(v17 + 16) = 0;
    a4();
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a6;
    v19[5] = a7;
    v20 = type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    v21 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v22 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor;
    type metadata accessor for AppleDevice.InternetSharingRequesterSession.NetworkConnectivityMonitor(0);
    swift_allocObject();
    *(v21 + v22) = sub_10009B3DC();
    v23 = v21 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 2;
    v24 = (v21 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    *v24 = a1;
    v24[1] = a2;
    v25 = (v21 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler);
    *v25 = a9;
    v25[1] = v19;
    v28 = v20;
    v27[0] = v21;
    swift_beginAccess();

    sub_1000B1B78(v27, v15 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_1000B025C();
  }
}

uint64_t sub_1000B1B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B1BF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B1C58()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000B1CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1000AA7CC(a1, a2, v2 + v6, v8, v9);
}

id sub_1000B1DC4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

char *sub_1000B1DF0(char *__source)
{
  result = *(v1 + 16);
  if (result)
  {
    return strlcpy(result, __source, 0x10uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_1000B1F68(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

void sub_1000B1F88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, unsigned __int8 a47)
{
  if (a47 <= 0xCu)
  {
    if (a47 <= 4u)
    {
      if (a47 != 2 && a47 != 3)
      {
        return;
      }
    }

    else if (a47 != 5 && a47 != 6 && a47 != 7)
    {
      return;
    }
  }

  else if (a47 > 0x12u)
  {
    if (a47 == 19)
    {
    }

    else if (a47 != 20 && a47 != 22)
    {
      return;
    }
  }

  else if (a47 != 13)
  {
    if (a47 == 16)
    {

      sub_1000B21BC(a3, a4, a5, a6, a7);
    }

    else if (a47 == 18)
    {

      sub_1000B2244(a4, a5, a6, a7, a8);
    }

    return;
  }
}

uint64_t sub_1000B21BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:
      return sub_100048C4C(a2, a3, a4);
    case 1:
      return sub_1000B21F4(a1, a2, a3, a4);
    case 0:
  }

  return a1;
}

uint64_t sub_1000B21F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
  }

  if (v4 == 3)
  {
    return sub_1000B2238(result, a2, a3 & 0xEFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_1000B2244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFCu)
  {
    return sub_1000B21BC(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1000B2258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B2318(uint64_t a1)
{
  if (*(a1 + 768))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2340(uint64_t a1)
{
  if (*(a1 + 468))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B235C(uint64_t a1)
{
  if (*(a1 + 248))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2378(uint64_t a1)
{
  if (*(a1 + 264))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000B2394()
{
  result = qword_10058C800;
  if (!qword_10058C800)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10005DD04(&qword_10058C7F8, &unk_100482000);
    v4[0] = &protocol witness table for UnsafeRawBufferPointer;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_10058C800);
  }

  return result;
}

uint64_t sub_1000B2410(uint64_t a1)
{
  v1 = *(a1 + 62);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B242C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2448(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2494(uint64_t a1)
{
  if (*(a1 + 997))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B251C(uint64_t a1)
{
  if (*(a1 + 2080))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2594(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1000B25A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000B25A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_1000B2650(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x2000000000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return result;
}

double sub_1000B267C(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 264) = 1;
  return result;
}

double sub_1000B26B8(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = 1;
  return result;
}

double sub_1000B26F4(uint64_t a1)
{
  *(a1 + 464) = 0;
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 468) = 1;
  return result;
}

void sub_1000B2818()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *v5;
  v8 = v5[1];

  sub_100092798(v0 + 16, v0 + v2, v7, v8, v6);
}

uint64_t IDPool.availableID()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v2 = *(a1 + 16);
  v72 = *(*(a1 + 24) + 8);
  v3 = *(v72 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = type metadata accessor for ClosedRange<>.Index();
  v65 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v56 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  v75 = TupleTypeMetadata2;
  __chkstk_darwin();
  v70 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v56 - v9;
  v63 = *(v2 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v56 - v12;
  __chkstk_darwin();
  v14 = &v56 - v13;
  __chkstk_darwin();
  v16 = &v56 - v15;
  v17 = type metadata accessor for ClosedRange();
  v69 = *(v17 - 8);
  *&v18 = __chkstk_darwin().n128_u64[0];
  v67 = &v56 - v19;
  v82 = AssociatedConformanceWitness;
  v83[0] = v3;
  v83[1] = AssociatedConformanceWitness;
  swift_getWitnessTable(&protocol conformance descriptor for <> ClosedRange<A>, v17, v83, v18);
  v61 = v17;
  v62 = type metadata accessor for IndexingIterator();
  v20 = *(v62 - 8);
  __chkstk_darwin();
  v22 = &v56 - v21;
  dispatch thunk of static FixedWidthInteger.min.getter();
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v59 = v20;
    v68 = v11;
    v24 = v63;
    v25 = v63 + 32;
    v26 = *(v63 + 32);
    v77 = v22;
    v27 = v80;
    v57 = v16;
    v26(v80, v16, v2);
    v28 = v75;
    v29 = &v27[*(v75 + 48)];
    v58 = v14;
    v26(v29, v14, v2);
    v30 = v74;
    v31 = v70;
    (*(v74 + 2))(v70, v27, v28);
    v66 = *(v28 + 48);
    v32 = v67;
    v26(v67, v31, v2);
    v33 = *(v24 + 8);
    v33(v66 + v31, v2);
    (*(v30 + 4))(v31, v80, v28);
    v34 = *(v28 + 48);
    v35 = v61;
    v36 = &v32[*(v61 + 36)];
    v74 = v26;
    v75 = v25;
    v26(v36, &v31[v34], v2);
    v66 = v33;
    v33(v31, v2);
    v37 = v69;
    v38 = v77;
    (*(v69 + 16))(v77, v32, v35);
    v39 = *(v62 + 36);
    ClosedRange<>.startIndex.getter();
    (*(v37 + 8))(v32, v35);
    v79 = v3;
    v80 = (v65 + 1);
    v67 = (v24 + 8);
    v69 = v24 + 48;
    v70 = (v65 + 2);
    v64 = v39;
    v65 += 4;
    v40 = v38;
    while (1)
    {
      v41 = v81;
      ClosedRange<>.endIndex.getter();
      v42 = static ClosedRange<>.Index.== infix(_:_:)();
      v43 = *v80;
      v44 = v76;
      (*v80)(v41, v76);
      if (v42)
      {
        (*(v59 + 8))(v40, v62);
        v52 = 1;
        v53 = v60;
        v54 = v63;
        return (*(v54 + 56))(v53, v52, 1, v2);
      }

      v45 = v73;
      (*v70)(v73, &v40[v39], v44);
      result = (*v69)(v45, 1, v2);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v46 = v71;
      v47 = v74;
      v74(v71, v45, v2);
      v48 = &v40[v39];
      v49 = v2;
      v50 = v81;
      (*v65)(v81, v48, v44);
      ClosedRange<>.index(after:)();
      v43(v50, v44);
      v51 = v68;
      v47(v68, v46, v49);
      v2 = v49;
      if ((!*(v78 + 8) || (Set.contains(_:)() & 1) == 0) && (Set.contains(_:)() & 1) == 0)
      {
        break;
      }

      v66(v51, v49);
      v40 = v77;
      v39 = v64;
    }

    v54 = v63;
    (*(v63 + 16))(v58, v51, v49);
    type metadata accessor for Set();
    v55 = v57;
    Set.insert(_:)();
    v66(v55, v49);
    (*(v59 + 8))(v77, v62);
    v53 = v60;
    v74(v60, v51, v49);
    v52 = 0;
    return (*(v54 + 56))(v53, v52, 1, v2);
  }

  else
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t IDPool.giveBack(id:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  type metadata accessor for Set();
  Set.remove(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t IDPool.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v37 - v14;
  v47 = a4;
  v16 = *(a4 + 8);
  v40 = *(v16 + 32);
  v17 = type metadata accessor for ClosedRange();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v46 = &v37 - v18;
  v44 = v16;
  if (a2)
  {
    v19 = Set.count.getter();
  }

  else
  {
    v19 = 0;
  }

  dispatch thunk of static FixedWidthInteger.min.getter();
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v38 = v19;
  v21 = *(v11 + 32);
  v21(v10, v15, a3);
  v22 = TupleTypeMetadata2;
  v21(&v10[*(TupleTypeMetadata2 + 48)], v13, a3);
  v23 = v41;
  (*(v41 + 16))(v8, v10, v22);
  v24 = *(v22 + 48);
  v21(v46, v8, a3);
  v25 = *(v11 + 8);
  v25(&v8[v24], a3);
  (*(v23 + 32))(v8, v10, v22);
  v26 = v43;
  v27 = v46;
  v21(&v46[*(v43 + 36)], &v8[*(v22 + 48)], a3);
  v25(v8, a3);
  v28 = v40;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51[0] = v28;
  v51[1] = AssociatedConformanceWitness;
  swift_getWitnessTable(&protocol conformance descriptor for <> ClosedRange<A>, v26, v51);
  v30 = Collection.count.getter();
  (*(v42 + 8))(v27, v26);
  result = Set.count.getter();
  v31 = v30 - result;
  if (__OFSUB__(v30, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v32 = v31 - v38;
  if (!__OFSUB__(v31, v38))
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v48 = v32;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;

    v49 = v33;
    v50 = v35;
    v36._countAndFlagsBits = 0x62616C6961766120;
    v36._object = 0xEE0073444920656CLL;
    String.append(_:)(v36);
    return v49;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t IDPool.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = a5;
  v9 = type metadata accessor for Mirror.AncestorRepresentation();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v14 = v22 - v13;
  v25 = a1;
  v26 = a2;
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100480F40;
  *(v15 + 32) = 1684370293;
  *(v15 + 40) = 0xE400000000000000;
  swift_bridgeObjectRetain_n();

  if (Set.count.getter() <= 10)
  {
    v18 = type metadata accessor for Set();
  }

  else
  {

    v22[1] = Set.count.getter();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v16;
    v17._countAndFlagsBits = 0x657375206E6920;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
    a1 = v23;
    *(v15 + 56) = v24;
    v18 = &type metadata for String;
  }

  *(v15 + 72) = v18;
  *(v15 + 48) = a1;
  v19 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  type metadata accessor for IDPool(0, a3, a4, v20);
  (*(v10 + 104))(v12, enum case for Mirror.AncestorRepresentation.generated(_:), v9);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000B3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000B3E14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B3E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LongTermPairingKeyStore.__allocating_init(keychain:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LongTermPairingKeyStore.init(keychain:)(a1);
  return v2;
}

uint64_t *LongTermPairingKeyStore.init(keychain:)(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_1000B3FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001B9684(v3 + *(*v3 + 104), a2, a3, *(*v3 + 80), *(*v3 + 88));

  v7 = Logger.logObject.getter();
  if (v6)
  {
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v19 = v10;
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 39;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = sub_100002320(39, 0xE100000000000000, &v19);

      *(v9 + 4) = v13;
      v14 = "Installed new pairing keys for %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v14, v9, 0xCu);
      sub_100002A00(v10);
    }
  }

  else
  {
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v19 = v10;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 39;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = sub_100002320(39, 0xE100000000000000, &v19);

      *(v9 + 4) = v17;
      v14 = "Failed to install new pairing keys for %s";
      goto LABEL_6;
    }
  }

  return v6 & 1;
}

Swift::Void __swiftcall LongTermPairingKeyStore.installNewKeysToKeychainIfNecessary(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v4 = &v5 - v3;
  LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(countAndFlagsBits, object, 1, &v5 - v3);
  sub_1000B5248(v4);
}

uint64_t LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, char *, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a2;
  v7 = *v4;
  v8 = type metadata accessor for SymmetricKeySize();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin();
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  __chkstk_darwin();
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LongTermPairingKeys(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v7[10];
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v32 - v16;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  v18 = __chkstk_darwin();
  v20 = &v32 - v19;
  (*(v15 + 16))(v17, &v4[v7[13]], v14, v18);
  v21 = v39;
  v22 = v7[11];

  sub_1001B98B0(v17, a1, v21, v14, v22, v20);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    sub_1000B5248(v20);
    if (v38)
    {
      v23 = v37;
      UUID.init()();
      v24 = a4;
      if (qword_10058A9E0 != -1)
      {
        swift_once();
      }

      v25 = v35;
      v26 = sub_100037644(v35, qword_10058FDC8);
      (*(v34 + 16))(v33, v26, v25);
      type metadata accessor for LongTermPairingKeys.Identity(0);
      SymmetricKey.init(size:)();
      P256.Signing.PrivateKey.init(compactRepresentable:)();
      v27 = v36;
      Logger.init(subsystem:category:)();
      sub_1000B52B0(v23, v27 + *(v11 + 20));
      type metadata accessor for LongTermPairingKeys.PairedDevices();
      v28 = swift_allocObject();
      *(v28 + 16) = &_swiftEmptyDictionarySingleton;
      *(v28 + 88) = 1;
      *(v28 + 72) = 0;
      *(v28 + 80) = 0;
      *(v28 + 24) = 0u;
      *(v28 + 40) = 0u;
      *(v28 + 56) = 0u;
      *(v28 + 96) = 0;
      *(v28 + 104) = 0;
      sub_1000B5314(v23, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
      *(v27 + *(v11 + 24)) = v28;
      LOBYTE(v28) = sub_1000B3FB8(v27, a1, v21);
      sub_1000B5314(v27, type metadata accessor for LongTermPairingKeys);
      if (v28)
      {
        return LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(a1, v21, 0, v24);
      }

      v30 = *(v12 + 56);
      v31 = v24;
    }

    else
    {
      v30 = *(v12 + 56);
      v31 = a4;
    }

    return v30(v31, 1, 1, v11);
  }

  else
  {
    sub_1000B5374(v20, a4);
    return (*(v12 + 56))(a4, 0, 1, v11);
  }
}

uint64_t LongTermPairingKeyStore.installIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SymmetricKeySize();
  __chkstk_darwin();
  static SymmetricKeySize.bits128.getter();
  SymmetricKey.init(size:)();
  return (*(*(v3 + 88) + 8))(a1, *(v3 + 80));
}

uint64_t LongTermPairingKeyStore.customMirror.getter()
{
  type metadata accessor for Mirror.AncestorRepresentation();
  __chkstk_darwin();
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v8 = v0;
  v7 = _swiftEmptyArrayStorage;
  v5 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  sub_100167804(v2);

  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t *LongTermPairingKeyStore.deinit()
{
  v1 = *v0;
  v2 = qword_10059B2D8;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t LongTermPairingKeyStore.__deallocating_deinit()
{
  LongTermPairingKeyStore.deinit();

  return swift_deallocClassInstance();
}

BOOL LongTermPairingKeys.AuthenticationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100556148, v2);

  return v3 != 0;
}

uint64_t sub_1000B50FC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555038, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int sub_1000B517C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B51E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Optional<A>.attributeFilter.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000B5248(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B52B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B5374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongTermPairingKeys(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5408(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10005DD04(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B5460()
{
  result = qword_10058C8F0[0];
  if (!qword_10058C8F0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LongTermPairingKeys.AuthenticationType, &type metadata for LongTermPairingKeys.AuthenticationType, v0, v1);
    atomic_store(result, qword_10058C8F0);
  }

  return result;
}

uint64_t sub_1000B54B8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000B55C4()
{
  result = qword_10058C978;
  if (!qword_10058C978)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for KeyStorageError, v0, v1);
    atomic_store(result, &qword_10058C978);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WiFiAwarePairedDevice(uint64_t a1)
{
  result = qword_10058CAC0;
  if (!qword_10058CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WiFiAwarePairedDevice.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v3, v4);
  type metadata accessor for UUID();
  sub_1000B6D08(&qword_10058CA20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    type metadata accessor for WiFiAwarePairedDevice(0);
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v3, v4);
    type metadata accessor for Date();
    sub_1000B6D08(&qword_10058CA28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v3);
}

uint64_t WiFiAwarePairedDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Date();
  v31 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WiFiAwarePairedDevice(0);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  v12 = v37;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v12)
  {
    return sub_100002A00(a1);
  }

  v37 = v5;
  v28 = v9;
  v29 = v11;
  v13 = v32;
  sub_100031694(v34, v35);
  sub_1000B6D08(&qword_10058CA30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v33;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v15 = v29;
  (*(v13 + 32))(v29, v8, v14);
  sub_100031694(v34, v35);
  v16 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v17 = v15;
  v18 = v28;
  *&v17[v28[5]] = v16;
  sub_100031694(v34, v35);
  v19 = v3;
  v29[v18[6]] = dispatch thunk of UnkeyedDecodingContainer.decode(_:)() & 1;
  sub_100031694(v34, v35);
  v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v21 = v31;
  *&v29[v18[7]] = v20;
  sub_100031694(v34, v35);
  dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  *&v29[v28[8]] = v22;
  v27 = v36;
  sub_100031694(v34, v35);
  sub_1000B6D08(&qword_10058CA38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v21 + 32))(&v29[v28[9]], v23, v19);
  sub_100031694(v34, v35);
  v24 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v25 = v29;
  *&v29[v28[10]] = v24;
  sub_100002A00(v34);
  sub_1000B5F20(v25, v30);
  sub_100002A00(a1);
  return sub_1000B5F84(v25);
}

uint64_t sub_1000B5F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiAwarePairedDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5F84(uint64_t a1)
{
  v2 = type metadata accessor for WiFiAwarePairedDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WiFiAwarePairedDevice.description.getter()
{
  v1 = 1701736270;
  _StringGuts.grow(_:)(141);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001004B8440;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_1000B6D08(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x656369766544202CLL;
  v4._object = 0xEC000000203A4449;
  String.append(_:)(v4);
  v5 = type metadata accessor for WiFiAwarePairedDevice(0);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x696C61567349202CLL;
  v7._object = 0xEB00000000203A64;
  String.append(_:)(v7);
  if (*(v0 + v5[6]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  v9 = 0xE400000000000000;
  if (*(v0 + v5[6]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v8);

  v12._countAndFlagsBits = 0xD000000000000010;
  v12._object = 0x80000001004B8470;
  String.append(_:)(v12);
  v13 = *(v0 + v5[7]);
  if (v13)
  {
    if (v13 == 2)
    {
      v9 = 0xE900000000000079;
      v14 = 0x7261726F706D6554;
    }

    else if (v13 == 1)
    {
      v14 = 0x6E656E616D726550;
      v9 = 0xE900000000000074;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v14 = 1701736270;
  }

  v15 = v9;
  String.append(_:)(*&v14);

  v16._countAndFlagsBits = 0x69746566694C202CLL;
  v16._object = 0xEC000000203A656DLL;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  v17._object = 0x80000001004B8490;
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  type metadata accessor for Date();
  sub_1000B6D08(&qword_10058CA40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._object = 0x80000001004B84B0;
  v19._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v19);
  v20 = *(v0 + v5[10]);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = 0xE400000000000000;
      v1 = 1230324804;
      goto LABEL_24;
    }

    if (v20 == 3)
    {
      v21 = 0xE300000000000000;
      v1 = 4803651;
      goto LABEL_24;
    }

LABEL_21:
    v21 = 0xE700000000000000;
    v1 = 0x6E776F6E6B6E55;
    goto LABEL_24;
  }

  if (!v20)
  {
    v21 = 0xE400000000000000;
    goto LABEL_24;
  }

  if (v20 != 1)
  {
    goto LABEL_21;
  }

  v21 = 0xE300000000000000;
  v1 = 4936513;
LABEL_24:
  v22._countAndFlagsBits = v1;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return 0;
}

uint64_t WiFiAwarePairedDeviceMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WiFiAwarePairedDeviceMetadata.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WiFiAwarePairedDeviceMetadata.pairingName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WiFiAwarePairedDeviceMetadata.description.getter()
{
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v11 = v12;
  v1._object = 0x80000001004B84D0;
  v1._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v1);
  v12 = *v0;
  v10[1] = *v0;
  sub_1000B6D50(&v12, v10);
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6E6972696150202CLL;
  v3._object = 0xEF203A656D614E67;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 0x726F646E6556202CLL;
  v4._object = 0xEE00203A656D614ELL;
  String.append(_:)(v4);
  String.append(_:)(v0[2]);
  v5._countAndFlagsBits = 0x4E6C65646F4D202CLL;
  v5._object = 0xED0000203A656D61;
  String.append(_:)(v5);
  String.append(_:)(v0[3]);
  v6._countAndFlagsBits = 0x626972747441202CLL;
  v6._object = 0xEE00203A73657475;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v11._countAndFlagsBits;
}

uint64_t sub_1000B6668()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x614E726F646E6576;
  v4 = 0x6D614E6C65646F6DLL;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E676E6972696170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B670C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B764C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B6734(uint64_t a1)
{
  v2 = sub_1000B6DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6770(uint64_t a1)
{
  v2 = sub_1000B6DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WiFiAwarePairedDeviceMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058CA48, &qword_100482538);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_1000B6DC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 64);
    v10[15] = 4;
    sub_10005DC58(&qword_10058CA58, &qword_100482540);
    sub_1000B7814(&qword_10058CA60, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 WiFiAwarePairedDeviceMetadata.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B6E14(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

id WiFiAwarePairedDeviceInfo.init(device:metadata:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_1000B7220(a2);
  v10 = [v5 initWithName:v4 pairingName:v6 vendorName:v7 modelName:v8 attributes:isa];

  [v10 setDeviceID:*(a1 + *(type metadata accessor for WiFiAwarePairedDevice(0) + 20))];
  sub_1000B5F84(a1);
  return v10;
}

void WiFiAwarePairedDeviceInfo.metadata.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 name];
  if (v3)
  {
    v4 = v3;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v21 = 0;
    v6 = 0;
  }

  v7 = [v1 pairingName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [v1 vendorName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v1 modelName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v1 attributes];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v21;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v20;
}

uint64_t sub_1000B6D08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000B6D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B6DC0()
{
  result = qword_10058CA50;
  if (!qword_10058CA50)
  {
    result = swift_getWitnessTable(byte_100482784, &type metadata for WiFiAwarePairedDeviceMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058CA50);
  }

  return result;
}

uint64_t sub_1000B6E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005DC58(&qword_10058CB28, &qword_1004827D8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - v7;
  sub_100029B34(a1, a1[3]);
  sub_1000B6DC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v12 = v9;
    LOBYTE(v38[0]) = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v14;
    LOBYTE(v38[0]) = 2;
    *&v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v13;
    v30 = v12;
    *(&v31 + 1) = v15;
    LOBYTE(v38[0]) = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v28 = v16;
    sub_10005DC58(&qword_10058CA58, &qword_100482540);
    v39[0] = 4;
    sub_1000B7814(&qword_10058CB30, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v27 = v40;
    v19 = v30;
    *&v33 = v30;
    *(&v33 + 1) = v11;
    v20 = v29;
    v22 = *(&v31 + 1);
    v21 = v32;
    *&v34 = v29;
    *(&v34 + 1) = v32;
    v35 = v31;
    *&v36 = v28;
    *(&v36 + 1) = v18;
    v37 = v40;
    sub_1000B7880(&v33, v38);
    sub_100002A00(a1);
    v38[0] = v19;
    v38[1] = v11;
    v38[2] = v20;
    v38[3] = v21;
    v38[4] = v31;
    v38[5] = v22;
    v38[6] = v28;
    v38[7] = v18;
    v38[8] = v27;
    result = sub_1000B7220(v38);
    v24 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v24;
    *(a2 + 64) = v37;
    v25 = v34;
    *a2 = v33;
    *(a2 + 16) = v25;
  }

  return result;
}

void sub_1000B7278(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WiFiAwarePairingStorageClass(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WiFiAwarePairingClient(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000B734C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B7394(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WiFiInterfaceRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}