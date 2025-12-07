unint64_t sub_1000218BC()
{
  result = qword_1000D26C8;
  if (!qword_1000D26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D26C8);
  }

  return result;
}

const char *sub_100021924(char a1)
{
  if (!a1)
  {
    return "UseStoreKitBag";
  }

  if (a1 == 1)
  {
    return "UseStoreKitService";
  }

  return "UseTransactionCacheManager";
}

Swift::Int sub_1000219A0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100021A24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100083AE0();
    if (v2)
    {
    }
  }

  return sub_10002FD24();
}

double sub_100021A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_10007D370(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_100030040(v5);

    sub_100012908(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_100021AEC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = sub_100030040(v4);

    sub_100012908(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100021B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10007D370(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Client.TimedClientOverride(0);
    sub_10002D638(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for Client.TimedClientOverride(0);
    v11 = a4;
    v12 = 1;
  }

  return sub_10001267C(v11, v12, 1, v13);
}

double sub_100021C10@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100083350(), (v4 & 1) != 0))
  {
    v5 = sub_100030040(v3);

    sub_100012908(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100021C6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1000834D8();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100021CB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = sub_100021E68(a1, a2);
  if (a1)
  {
    if (v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 >> 62;
    v13 = BYTE6(a4);
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
        }

        else
        {
          v14 = v14;
LABEL_15:
          if (v11 == v14)
          {
LABEL_16:
            sub_10002F330();
            result = dispatch thunk of DataProtocol.copyBytes(to:count:)();
            v20 = a1[1];
            *a5 = *a1;
            a5[1] = v20;
            return result;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12 != 1)
          {
            v22 = *(a3 + 16);
            v21 = *(a3 + 24);
            v13 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
              goto LABEL_22;
            }

LABEL_26:
            __break(1u);
            JUMPOUT(0x100021E58);
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            v13 = HIDWORD(a3) - a3;
LABEL_22:
            sub_10002F2DC();
            swift_allocError();
            *v23 = v11;
            *(v23 + 8) = v13;
            *(v23 + 16) = 0;
            return swift_willThrow();
          }
        }

        __break(1u);
        goto LABEL_26;
      case 2uLL:
        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v18 = __OFSUB__(v16, v17);
        v14 = v16 - v17;
        if (!v18)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_11:
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = 0;
        goto LABEL_22;
      case 3uLL:
        goto LABEL_11;
      default:
        v14 = v13;
        goto LABEL_15;
    }
  }

  sub_10002F2DC();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100021E68(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100021EB8()
{
  v1 = v0;
  type metadata accessor for URL();
  sub_100014A8C();
  __chkstk_darwin(v2);
  sub_10002FC5C();
  sub_1000300A4();
  v3 = sub_10002FC80();
  __chkstk_darwin(v3);
  sub_10002FC5C();
  v6 = v5 - v4;
  sub_10002FCA0();
  sub_10002D638(v1, v6);
  v7 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v8 = sub_100012898(v6, 2, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      return 0x69746375646F7250;
    }

    else
    {
      return 0x786F62646E6153;
    }
  }

  else
  {
    v10 = sub_1000301C8();
    v11(v10);
    sub_10002FF78();
    sub_10002FC0C();
    sub_10002F140(v12, v13, &protocol conformance descriptor for URL);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = sub_100030080();
    String.append(_:)(v15);
    v9 = v19;
    v16 = sub_1000301BC();
    v17(v16);
  }

  return v9;
}

uint64_t sub_100022084(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002FC80();
  __chkstk_darwin(v5);
  sub_10002FC5C();
  v6 = sub_100012634(&qword_1000D27E8, &unk_1000954B0);
  sub_10002FD0C(v6);
  sub_10002FF34();
  __chkstk_darwin(v7);
  sub_10002FFD4();
  v9 = *(v8 + 56);
  sub_10002D638(a1, v2);
  sub_10002D638(a2, v2 + v9);
  v10 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v11 = sub_10002FF40();
  v13 = sub_100012898(v11, v12, v10);
  if (!v13)
  {
    sub_10002FCA0();
    v15 = sub_10002FD24();
    sub_10002D638(v15, v16);
    v17 = sub_100012898(v2 + v9, 2, v10);
    v18 = type metadata accessor for URL();
    sub_100019360();
    v20 = *(v19 + 8);
    if (!v17)
    {
      v20(v2 + v9, v18);
      v23 = sub_10003020C();
      (v20)(v23);
      goto LABEL_11;
    }

    v21 = sub_10003020C();
    (v20)(v21);
    goto LABEL_9;
  }

  if (v13 != 1)
  {
    if (sub_100012898(v2 + v9, 2, v10) == 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_10002F5A8(v2, &qword_1000D27E8, &unk_1000954B0);
    return 0;
  }

  sub_10003008C(v2 + v9, 2, v10);
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_10002FBD8();
  sub_10002D748(v2, v24);
  return 1;
}

void sub_1000223E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002FFBC();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v28 = sub_10002FD0C(v27);
  __chkstk_darwin(v28);
  sub_10002FC4C();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = sub_100012634(&qword_1000D2850, &qword_1000954F0);
  v36 = sub_10002FD0C(v35);
  __chkstk_darwin(v36);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v37);
  sub_100030010();
  __chkstk_darwin(v38);
  v40 = &a9 - v39;
  sub_10002F290(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride, &a9 - v39, &qword_1000D2850, &qword_1000954F0);
  v41 = type metadata accessor for Client.Server(0);
  sub_10003008C(v40, 1, v41);
  if (!v46)
  {
    sub_10002FDA0();
    v45 = v40;
LABEL_6:
    sub_10002EFD4(v45, v26);
    goto LABEL_11;
  }

  sub_10002F5A8(v40, &qword_1000D2850, &qword_1000954F0);
  sub_100030140();
  if (v46)
  {
    v42 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v43 = v26;
    v44 = 1;
LABEL_10:
    sub_10001267C(v43, v44, 2, v42);
    goto LABEL_11;
  }

  sub_100030140();
  if (v46)
  {
    sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v43 = sub_10002FF40();
    goto LABEL_10;
  }

  sub_100012BAC(0, &qword_1000D2810, &off_1000BD050);
  v47 = 1;
  sub_100034210(*(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID), *(v20 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8), 1, v34);
  sub_10002F244(v34, v31, &qword_1000D1D58, &unk_1000954C0);
  v48 = type metadata accessor for URL();
  sub_10003008C(v31, 1, v48);
  if (!v49)
  {
    (*(*(v48 - 8) + 32))(v22, v31, v48);
    v50 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    sub_10001267C(v22, 0, 2, v50);
    v47 = 0;
  }

  sub_10001267C(v22, v47, 1, v41);
  sub_10002F244(v22, v21, &qword_1000D2850, &qword_1000954F0);
  v51 = sub_10002FFEC();
  sub_10003008C(v51, v52, v41);
  if (!v46)
  {
    sub_10002FDA0();
    v45 = v21;
    goto LABEL_6;
  }

  sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v53 = sub_10002FF40();
  sub_10001267C(v53, v54, 2, v55);
  v56 = sub_10002FFEC();
  sub_10003008C(v56, v57, v41);
  if (!v46)
  {
    sub_10002F5A8(v21, &qword_1000D2850, &qword_1000954F0);
  }

LABEL_11:
  sub_10002FFA4();
}

uint64_t sub_100022CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
  type metadata accessor for URL();
  sub_100019360();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_100022D48(uint64_t a1)
{
  sub_100030140();
  if (!v2)
  {
    return sub_100022F5C() & 1;
  }

  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v4._countAndFlagsBits = 0xD000000000000037;
  v4._object = 0x800000010009F830;
  String.append(_:)(v4);
  String.append(_:)(*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID));
  v5._object = 0x800000010009F870;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  v6 = static os_log_type_t.default.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    sub_10002FF14();
    v8 = swift_slowAlloc();
    sub_10002FE48();
    v11[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000847A8(0, 0xE000000000000000, v11);
    *(v8 + 12) = 2082;
    v9 = sub_1000847A8(0, 0xE000000000000000, v11);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100022F5C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10002FD24();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  if (AppBooleanValue)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v6 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v6, qword_1000E4560);
    v7 = static os_log_type_t.default.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      sub_10002FF14();
      v9 = swift_slowAlloc();
      sub_10002FE48();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1000300EC(v10, v11);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1000847A8(0xD00000000000004FLL, 0x800000010009F8B0, &v33);
      _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    goto LABEL_20;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v8 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (sub_10002EE40(v13, v14, v8) == 2)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v15 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v15, qword_1000E4560);
      v16 = static os_log_type_t.default.getter();
      v17 = Logger.logObject.getter();
      if (!os_log_type_enabled(v17, v16))
      {
        goto LABEL_19;
      }

      v18 = "lation restrictions";
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v0 = 136446466;
      v21 = sub_1000300EC(v19, v20);
      sub_10002FD40(v21);
      v22 = 0xD00000000000004ALL;
    }

    else
    {
      if ([v8 isOnDeviceAppInstallationAllowed])
      {

        return 1;
      }

      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v23 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v23, qword_1000E4560);
      v16 = static os_log_type_t.default.getter();
      v17 = Logger.logObject.getter();
      if (!os_log_type_enabled(v17, v16))
      {
        goto LABEL_19;
      }

      v18 = "se device is in store demo mode";
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v0 = 136446466;
      v26 = sub_1000300EC(v24, v25);
      sub_10002FD40(v26);
      v22 = 0xD000000000000053;
    }

    *(v0 + 14) = sub_1000847A8(v22, v18 | 0x8000000000000000, &v33);
    sub_100030198(&_mh_execute_header, v17, v16, "%{public}s%{public}s");
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();

LABEL_19:

LABEL_20:
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000238C4(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v38[0] = a1;
  v38[1] = a2;
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_100012634(&qword_1000D2890, &qword_1000954F8);
  if (swift_dynamicCast())
  {
    sub_10002F650(v39, &v42);
    sub_100012980(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    sub_100012A18(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10002F5A8(v39, &qword_1000D2898, &unk_100095500);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v39;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_10002D79C(v5, v6, &v42);
  v7 = *(&v42 + 1);
  v8 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v9;
  __chkstk_darwin(*&v39[0]);
  v33[2] = v38;
  v10 = sub_10002D8B8(sub_10002F634, v33);
  v12 = *(&v39[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v39[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v39[0] + 16);
      v20 = *(*&v39[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v33[4] = v4;
      v34 = v8;
      v35 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v36 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v37 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v27 = sub_10002EDB8(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v13;
      *(&v42 + 1) = v37;
      v30 = *(&v42 + v28);
    }

    else
    {
      v29 = v36;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v17 = sub_10002EDB8(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_100019064(v34, v35);
    goto LABEL_56;
  }

  *&v42 = v41;
  *(&v42 + 6) = *(&v41 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100019064(v34, v35);
LABEL_55:

LABEL_56:
  v31 = v39[0];
  sub_100019008(*&v39[0], *(&v39[0] + 1));

  sub_100018DF0(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_100023DDC(uint64_t a1)
{
  v2 = type metadata accessor for Insecure.SHA1Digest();
  v8 = v2;
  v9 = sub_10002F140(&qword_1000D2888, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
  v3 = sub_100012AE4(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100012980(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100012A18(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

id sub_10002420C(uint64_t a1)
{
  v4 = sub_10002FC80();
  __chkstk_darwin(v4);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v5);
  sub_10002FEE0();
  v6 = [objc_opt_self() currentProcess];
  v7 = sub_100022740();
  [v6 setAccountMediaType:v7];

  v8 = String._bridgeToObjectiveC()();
  [v6 setProxyAppBundleID:v8];

  v9._countAndFlagsBits = 0x6C7070612E6D6F63;
  v9._object = 0xEA00000000002E65;
  v10 = String.hasPrefix(_:)(v9);
  if (v10)
  {
    v18 = String._bridgeToObjectiveC()();
    [v6 setBundleIdentifier:v18];
  }

  sub_1000223E4(v10, v11, v12, v13, v14, v15, v16, v17, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  v19 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v2, 2, 2, v19);
  v20 = sub_1000301EC();
  v22 = sub_100022084(v20, v21);
  sub_10002D748(v2, type metadata accessor for Client.Server);
  v23 = sub_10002D748(v3, type metadata accessor for Client.Server);
  if (v22 & 1) != 0 || (sub_1000223E4(v23, v24, v25, v26, v27, v28, v29, v30, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62), v31 = sub_10002FFEC(), sub_10001267C(v31, v32, 2, v19), v33 = sub_1000301EC(), v35 = sub_100022084(v33, v34), sub_10002D748(v2, type metadata accessor for Client.Server), sub_10002D748(v3, type metadata accessor for Client.Server), (v35))
  {
    if ((*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 32) & 1) == 0)
    {
      v36 = Data.init(bytes:count:)();
      sub_10002EE9C(v36, v37, v6);
    }
  }

  return v6;
}

id sub_1000244F4(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  String._bridgeToObjectiveC()();
  sub_1000216E0();

  return a1;
}

id sub_10002465C()
{
  v0 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:sub_1000229C4()];
  v1 = swift_unknownObjectRelease();
  v2 = sub_1000222C4(v1);
  [v0 setAccount:v2];

  v4 = sub_10002420C(v3);
  [v0 setClientInfo:v4];

  return v0;
}

id sub_100024738()
{
  v0 = objc_opt_self();
  v1 = sub_10002420C(v0);
  v2 = [v0 ams_configurationWithProcessInfo:v1 bag:sub_1000229C4()];

  swift_unknownObjectRelease();
  v3 = String._bridgeToObjectiveC()();
  [v2 set_sourceApplicationBundleIdentifier:v3];

  sub_100012BAC(0, &qword_1000D2870, AMSURLSession_ptr);
  v4 = sub_1000216E0();
  return sub_100024804(v4, 0, 0);
}

id sub_100024804(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

id sub_100024888(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    String._bridgeToObjectiveC()();
    sub_1000216E0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10002490C(uint64_t a1)
{
  sub_10002FFBC();
  v5 = v4;
  v6 = sub_10002FE60();
  type metadata accessor for SKLogger(v6);
  sub_100019360();
  __chkstk_darwin(v7);
  sub_10002FC5C();
  v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v9 = sub_10002FD0C(v8);
  __chkstk_darwin(v9);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v10);
  sub_10002FEE0();
  if (v5)
  {
    sub_100024D34(v5);

    v11 = type metadata accessor for ClientOverride(0);
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for ClientOverride(0);
    v12 = 1;
  }

  sub_10001267C(v3, v12, 1, v11);
  swift_getObjectType();
  v13 = sub_1000301EC();
  sub_10002F290(v13, v14, v15, v16);
  v17 = v1;
  sub_100025390(v17, v2);
  sub_10002F5A8(v3, &qword_1000D2000, qword_1000945D0);

  sub_1000301D4();
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100024D34(uint64_t a1)
{
  sub_10002FFBC();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100014A8C();
  v101 = v7;
  __chkstk_darwin(v8);
  sub_10002FC38();
  v99 = v9;
  sub_10002FD18();
  __chkstk_darwin(v10);
  sub_10002FF4C();
  v98 = v11;
  v12 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v13 = sub_10002FD0C(v12);
  __chkstk_darwin(v13);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v14);
  sub_10002FE54();
  v100 = v15;
  sub_10002FD18();
  __chkstk_darwin(v16);
  v18 = &v98 - v17;
  sub_10002FEBC();
  sub_10001267C(v19, v20, v21, v6);
  v22 = type metadata accessor for ClientOverride(0);
  v23 = v22[7];
  v103 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v5 + v23, 1, 3, v103);
  v102 = xmmword_100095310;
  *v5 = xmmword_100095310;
  v24 = v22[10];
  sub_10002FEBC();
  sub_10001267C(v25, v26, v27, v6);
  sub_100019064(*v5, v5[1]);
  *v5 = v102;
  sub_10002F384(v18, v5 + v24);
  sub_10002FBF0();
  sub_100021AEC(v3, v28, v29);
  if (v107)
  {
    v30 = swift_dynamicCast();
    if (v30)
    {
      v31 = v104;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v105;
    }

    else
    {
      v32 = 0xF000000000000000;
    }
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  sub_100019064(*v5, v5[1]);
  *v5 = v31;
  v5[1] = v32;
  sub_10002FBF0();
  sub_100021AEC(v3, v33, v34);
  if (v107)
  {
    v35 = swift_dynamicCast();
    v36 = v104;
    v37 = v105;
    if (!v35)
    {
      v36 = 0;
      v37 = 0;
    }
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    v36 = 0;
    v37 = 0;
  }

  v5[2] = v36;
  v5[3] = v37;
  sub_10002FBF0();
  sub_100021AEC(v3, v38, v39);
  if (v107)
  {
    v43 = sub_10002FD80(v40, v41, v42, &type metadata for String);
    v44 = v104;
    v45 = v105;
    if (!v43)
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    v44 = 0;
    v45 = 0;
  }

  v5[4] = v44;
  v5[5] = v45;
  sub_10002FBF0();
  sub_100021AEC(v3, v46, v47);
  if (v107)
  {
    sub_10002FD80(v48, v49, v50, &type metadata for UInt64);
    sub_100030184();
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    v51 = 0;
    v52 = 1;
  }

  v53 = v5 + v22[9];
  *v53 = v51;
  v53[8] = v52;
  sub_10002FBF0();
  sub_100021AEC(v3, v54, v55);
  if (v107)
  {
    sub_10002FD80(v56, v57, v58, &type metadata for UInt64);
    sub_100030184();
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    v59 = 0;
    v60 = 1;
  }

  v61 = v5 + v22[8];
  *v61 = v59;
  v61[8] = v60;
  sub_10002FBF0();
  sub_100021AEC(v3, v62, v63);
  if (!v107)
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    goto LABEL_32;
  }

  if ((sub_10002FD80(v64, v65, v66, &type metadata for Int) & 1) == 0)
  {
LABEL_32:
    sub_10002FE94();
    v69 = 1;
    goto LABEL_33;
  }

  v67 = v104;
  sub_10002FE94();
  if (v67 == 2)
  {
    v68 = 3;
  }

  else
  {
    v68 = 1;
  }

  if (v67 == 1)
  {
    v69 = 2;
  }

  else
  {
    v69 = v68;
  }

LABEL_33:
  sub_10001267C(v5 + v23, v69, 3, v103);
  sub_10002FBF0();
  sub_10003014C();
  sub_100021AEC(v70, v71, v72);
  if (v107)
  {
    if ((sub_10002FD80(v73, v74, v75, &type metadata for String) & 1) == 0)
    {
      goto LABEL_40;
    }

    v76 = v100;
    UUID.init(uuidString:)();

    v77 = sub_10002FFEC();
    sub_10003008C(v77, v78, v6);
    if (!v79)
    {
      v95 = v76;
      v96 = *(v101 + 32);
      v97 = v98;
      v96(v98, v95, v6);
      sub_10002F5A8(v5 + v24, &qword_1000D2800, qword_100099E20);
      v96(v5 + v24, v97, v6);
LABEL_45:
      v94 = 0;
      goto LABEL_46;
    }

    v80 = &qword_1000D2800;
    v81 = qword_100099E20;
    v82 = v76;
  }

  else
  {
    v80 = &qword_1000D1D60;
    v81 = &qword_100093620;
    v82 = v106;
  }

  sub_10002F5A8(v82, v80, v81);
LABEL_40:
  sub_10002FBF0();
  sub_10003014C();
  sub_100021AEC(v83, v84, v85);
  if (v107)
  {
    v86 = swift_dynamicCast();
    sub_10001267C(v1, v86 ^ 1u, 1, v6);
    sub_10003008C(v1, 1, v6);
    if (!v79)
    {
      v87 = *(v101 + 32);
      v88 = v99;
      v87(v99, v1, v6);
      sub_10002F5A8(v5 + v24, &qword_1000D2800, qword_100099E20);
      v87(v5 + v24, v88, v6);
      goto LABEL_45;
    }
  }

  else
  {
    sub_10002F5A8(v106, &qword_1000D1D60, &qword_100093620);
    sub_10002FEBC();
    sub_10001267C(v89, v90, v91, v6);
  }

  v92 = sub_1000301EC();
  sub_10002F5A8(v92, v93, qword_100099E20);
  sub_10002F5A8(v5 + v24, &qword_1000D2800, qword_100099E20);
  v94 = 1;
LABEL_46:
  sub_10001267C(v5 + v24, v94, 1, v6);
  sub_10002FFA4();
}

void sub_100025390(uint64_t a1, uint64_t a2)
{
  sub_100030230();
  v39 = v2;
  v47 = v5;
  v7 = v6;
  v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v9 = sub_10002FD0C(v8);
  __chkstk_darwin(v9);
  sub_10002FC4C();
  sub_100030010();
  __chkstk_darwin(v10);
  sub_10002FF4C();
  v40 = v11;
  sub_10002FFE0();
  v12 = type metadata accessor for URL();
  sub_100014A8C();
  v38 = v13;
  __chkstk_darwin(v14);
  sub_10002FC4C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v21 = [v7 processIdentifier];
  v22 = sub_100082A34(v7);
  v43 = 0x5D746E65696C435BLL;
  v44 = 0xE900000000000020;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v22);

  v26._countAndFlagsBits = 91;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  LODWORD(v41) = v21;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 93;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  [v7 auditToken];
  sub_100027A74(v41, *(&v41 + 1), v42);
  if (v3)
  {
    sub_10002F5A8(v47, &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    v29 = v38;
    v37 = v12;

    v30 = v40;
    sub_10002F290(v47, v40, &qword_1000D2000, qword_1000945D0);
    if (([v7 sk_allowClientOverride] & 1) == 0)
    {
      sub_10002F5A8(v30, &qword_1000D2000, qword_1000945D0);
      type metadata accessor for ClientOverride(0);
      sub_10002FEBC();
      sub_10001267C(v31, v32, v33, v34);
    }

    [v7 auditToken];
    v45[0] = v41;
    v45[1] = v42;
    v46 = 0;
    (*(v29 + 16))(v17, v20, v37);
    sub_10002F290(v30, v4, &qword_1000D2000, qword_1000945D0);
    sub_100025DD8(v45, v17, v4);

    sub_10002F5A8(v47, &qword_1000D2000, qword_1000945D0);
    sub_10002F5A8(v40, &qword_1000D2000, qword_1000945D0);
    v35 = sub_10003014C();
    v36(v35);
  }

  sub_100030218();
}

void sub_1000257EC(uint64_t a1)
{
  sub_10002FFBC();
  v5 = v4;
  v6 = sub_10002FE60();
  v34[6] = type metadata accessor for SKLogger(v6);
  sub_100019360();
  __chkstk_darwin(v7);
  sub_10002FC5C();
  v34[7] = v9 - v8;
  sub_10002FFE0();
  v10 = type metadata accessor for URL();
  sub_100014A8C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10002FC38();
  v34[8] = v14;
  sub_10002FD18();
  __chkstk_darwin(v15);
  sub_10002FEE0();
  v16 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v17 = sub_10002FD0C(v16);
  __chkstk_darwin(v17);
  sub_10002FC4C();
  sub_10002FED0();
  __chkstk_darwin(v18);
  v20 = v34 - v19;
  sub_10002FCD4();
  v37[0] = v21;
  v37[1] = v22;
  sub_10002FC0C();
  v25 = sub_10002F140(v23, v24, &protocol conformance descriptor for URL);
  v35 = v10;
  v36 = v1;
  v34[5] = v25;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = sub_100030080();
  String.append(_:)(v27);
  v34[9] = v37[1];
  v34[4] = v37[0];
  if (v5)
  {
    sub_100024D34(v5);

    v28 = type metadata accessor for ClientOverride(0);
    v29 = 0;
  }

  else
  {
    v28 = type metadata accessor for ClientOverride(0);
    v29 = 1;
  }

  sub_10001267C(v20, v29, 1, v28);
  swift_getObjectType();
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  v30 = v3;
  v31 = v3;
  v33 = v35;
  v32 = v36;
  (*(v12 + 16))(v30, v36, v35);
  sub_10002F290(v20, v2, &qword_1000D2000, qword_1000945D0);
  sub_100025DD8(v37, v31, v2);

  (*(v12 + 8))(v32, v33);
  sub_10002F5A8(v20, &qword_1000D2000, qword_1000945D0);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100025DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100030230();
  v242 = v4;
  v239 = v3;
  v240 = v6;
  v251 = v7;
  v9 = v8;
  v10 = type metadata accessor for Client.Server(0);
  v11 = sub_10002FD0C(v10);
  __chkstk_darwin(v11);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v12);
  sub_10002FF4C();
  v226 = v13;
  sub_10002FFE0();
  v248 = type metadata accessor for URL();
  sub_100014A8C();
  v252 = v14;
  __chkstk_darwin(v15);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v16);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v17);
  sub_10002FE54();
  v237 = v18;
  sub_10002FD18();
  __chkstk_darwin(v19);
  sub_10002FE54();
  v236 = v20;
  sub_10002FD18();
  __chkstk_darwin(v21);
  sub_10002FE54();
  v238 = v22;
  sub_10002FD18();
  __chkstk_darwin(v23);
  sub_100030010();
  __chkstk_darwin(v24);
  sub_10002FF4C();
  v255 = v25;
  v26 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v27 = sub_10002FD0C(v26);
  __chkstk_darwin(v27);
  sub_10002FC38();
  v234 = v28;
  sub_10002FD18();
  __chkstk_darwin(v29);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v30);
  v32 = &v224 - v31;
  v33 = type metadata accessor for ClientOverride(0);
  sub_100019360();
  __chkstk_darwin(v34);
  sub_10002FC38();
  v243 = v35;
  sub_10002FD18();
  __chkstk_darwin(v36);
  v38 = (&v224 - v37);
  v39 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v40);
  sub_10002FC38();
  sub_10002FCB8();
  __chkstk_darwin(v41);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v42);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v43);
  sub_10002FE54();
  v235 = v44;
  sub_10002FD18();
  __chkstk_darwin(v45);
  sub_10002FE54();
  sub_10002FCB8();
  __chkstk_darwin(v46);
  v48 = (&v224 - v47);
  sub_10002FCD4();
  v253 = v49;
  v254 = v50;
  v249 = v9;
  v51._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v51);

  v52._countAndFlagsBits = sub_100030080();
  String.append(_:)(v52);
  v53 = v254;
  v241 = v253;
  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  sub_1000128C0(v39, qword_1000E4560);
  sub_10002FBC0();
  v244 = v54;
  sub_10002D638(v54, v48);

  v55 = v48;
  Logger.logObject.getter();
  sub_10002FE60();
  type metadata accessor for Logger();
  sub_10002FC24();
  v246 = *(v56 + 8);
  v247 = v57;
  v245 = v56 + 8;
  v246(v48);
  v58 = static os_log_type_t.info.getter();

  v59 = os_log_type_enabled(v48, v58);
  v250 = v53;
  if (v59)
  {
    v60 = sub_100030288();
    sub_10002FF98();
    v61 = swift_slowAlloc();
    v253 = v61;
    *v60 = 136446210;
    v62 = sub_1000301B0();
    *(v60 + 4) = sub_1000847A8(v62, v53, v63);
    _os_log_impl(&_mh_execute_header, v55, v58, "%{public}s  Initializing client", v60, 0xCu);
    sub_100012A18(v61);
    sub_10002FCC8();

    sub_10002FCC8();
  }

  v64 = v255;
  sub_10002F290(v251, v32, &qword_1000D2000, qword_1000945D0);
  v65 = sub_100012898(v32, 1, v33);
  v66 = v243;
  if (v65 == 1)
  {
    sub_10002F5A8(v32, &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    sub_10002FDE8();
    sub_10002EFD4(v32, v38);
    sub_10002FBC0();
    sub_10002D638(v244, v233);
    sub_10002FDD0();
    v67 = sub_1000300BC();
    sub_10002D638(v67, v68);
    v69 = v250;

    Logger.logObject.getter();
    v70 = sub_10002FF20();
    v71(v70);
    v72 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v72))
    {
      sub_10002FF14();
      swift_slowAlloc();
      sub_10002FD30();
      v73 = swift_slowAlloc();
      v233 = v38;
      v253 = v73;
      *v255 = 136446466;
      v74 = sub_1000301B0();
      v76 = sub_1000847A8(v74, v69, v75);
      sub_10002FD40(v76);
      v77 = sub_10007F380();
      v79 = v78;
      sub_10002D748(v66, type metadata accessor for ClientOverride);
      v80 = v5;
      v81 = sub_1000847A8(v77, v79, &v253);

      *(v255 + 14) = v81;
      v5 = v80;
      sub_100030198(&_mh_execute_header, v38, v72, "%{public}s Overrides %{public}s");
      _os_log_impl(v82, v83, v84, v85, v86, v87);
      swift_arrayDestroy();
      sub_10002FCC8();

      v64 = v255;
      sub_10002FCC8();

      v88 = v233;
    }

    else
    {

      sub_10002D748(v66, type metadata accessor for ClientOverride);
      v88 = v38;
    }

    sub_10002D748(v88, type metadata accessor for ClientOverride);
  }

  v90 = v248;
  v89 = v249;
  v92 = URL.hasDirectoryPath.getter();
  if (v92)
  {
    v93 = *(v252 + 16);
    v94 = ((v252 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v93(v64, v89, v90);
  }

  else
  {
    URL._bridgeToObjectiveC()(v91);
    v96 = v95;
    v97 = _CFBundleCopyBundleURLForExecutableURL();

    if (!v97)
    {
      goto LABEL_50;
    }

    v64 = v255;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = *(v252 + 16);
    v94 = ((v252 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  }

  v93(v5, v64, v90);
  v98 = objc_allocWithZone(LSApplicationRecord);
  v99 = v242;
  v100 = sub_10002D398(v5, 0);
  if (v99)
  {
  }

  else
  {
    v111 = v100;
    if (v100)
    {
LABEL_27:
      v116 = v251;
      v117 = v230;
      sub_10002F290(v251, v230, &qword_1000D2000, qword_1000945D0);
      objc_allocWithZone(v239);
      v118 = v111;
      v119 = sub_100029938(v240, v118, v117);
      v243 = v118;
      v120 = v250;
LABEL_36:
      sub_10002FBC0();
      v143 = v232;
      sub_10002D638(v244, v232);

      v144 = v119;
      v145 = Logger.logObject.getter();
      (v246)(v143, v247);
      v146 = v120;
      v147 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v145, v147))
      {
        v148 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        *v148 = 136446978;
        v149 = sub_1000301B0();
        v151 = sub_1000847A8(v149, v146, v150);
        v152 = sub_100030020(v151);
        v153 = v226;
        sub_1000223E4(v152, v154, v155, v156, v157, v158, v159, v160, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
        v161 = sub_100021EB8();
        v163 = v162;
        sub_10002FBD8();
        sub_10002D748(v153, v164);
        v165 = sub_1000847A8(v161, v163, &v253);

        *(v148 + 14) = v165;
        *(v148 + 22) = 2082;
        sub_100030124();
        v166 = sub_1000301C8();
        v169 = sub_1000847A8(v166, v167, v168);

        *(v148 + 24) = v169;
        *(v148 + 32) = 2082;
        sub_100030124();
        v170 = sub_1000301C8();
        v173 = sub_1000847A8(v170, v171, v172);

        *(v148 + 34) = v173;
        _os_log_impl(&_mh_execute_header, v145, v147, "%{public}s Initialized with server %{public}s bundle ID %{public}s and request bundle ID %{public}s]", v148, 0x2Au);
        swift_arrayDestroy();
        v90 = v248;
        sub_10002FCC8();

        v116 = v251;
        sub_10002FCC8();
      }

      v174 = v231;
      sub_1000223E4(v175, v176, v177, v178, v179, v180, v181, v182, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
      v183 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
      if (sub_100012898(v174, 2, v183))
      {

        sub_10002F5A8(v116, &qword_1000D2000, qword_1000945D0);
        v184 = sub_10002FEF0();
        (v145)(v184);
        v185 = sub_100030158();
        (v145)(v185);
        sub_10002FBD8();
        sub_10002D748(v174, v186);
      }

      else
      {
        (*(v252 + 32))(v229, v174, v90);
        sub_10002FBC0();
        sub_10002D638(v244, v225);
        v205 = v250;

        Logger.logObject.getter();
        v206 = sub_10002FF20();
        v207(v206);
        v208 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v145, v208))
        {
          v209 = sub_100030288();
          sub_10002FF98();
          v210 = swift_slowAlloc();
          v253 = v210;
          *v209 = 136446210;
          v211 = sub_1000301B0();
          v213 = sub_1000847A8(v211, v205, v212);

          *(v209 + 4) = v213;
          _os_log_impl(&_mh_execute_header, v145, v208, "%{public}s StoreKit testing enabled.", v209, 0xCu);
          sub_100012A18(v210);
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        v218 = [objc_opt_self() sharedInstance];
        URL.path.getter();
        v219 = String._bridgeToObjectiveC()();

        sub_100030124();
        sub_1000301C8();
        v220 = String._bridgeToObjectiveC()();

        [v218 useConfigurationDirectory:v219 forBundleID:v220];

        sub_10002F5A8(v251, &qword_1000D2000, qword_1000945D0);
        v221 = sub_10002FEF0();
        (v218)(v221);
        v222 = sub_100030178();
        (v218)(v222);
        v223 = sub_100030158();
        (v218)(v223);
      }

      goto LABEL_46;
    }
  }

  v101 = v90;
  v102 = v89;
  v103 = v238;
  v104 = v101;
  (v93)(v238, v64);
  v105 = objc_allocWithZone(LSApplicationExtensionRecord);
  v106 = sub_10002D4EC(v103);
  v112 = v102;
  if (v106)
  {
    v113 = v106;
    v114 = [v113 containingBundleRecord];

    v90 = v104;
    if (v114)
    {
      objc_opt_self();
      v115 = swift_dynamicCastObjCClass();
      if (v115)
      {
        v111 = v115;
        goto LABEL_27;
      }
    }

    v64 = v255;
    if (v92)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v90 = v104;
    if (v92)
    {
      goto LABEL_30;
    }
  }

  URL._bridgeToObjectiveC()(v107);
  v109 = v108;
  v110 = CFBundleCopyInfoDictionaryForURL(v108);

  if (!v110)
  {
LABEL_30:
    URL._bridgeToObjectiveC()(v107);
    v122 = v121;
    v110 = CFBundleCopyInfoDictionaryForURL(v121);

    if (!v110)
    {

      sub_10002FBC0();
      sub_10002D638(v244, v227);
      v93(v228, v112, v90);
      Logger.logObject.getter();
      v187 = sub_10002FF20();
      v188(v187);
      v189 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(0, v189))
      {
        sub_10002FF14();
        swift_slowAlloc();
        sub_10002FD30();
        v250 = swift_slowAlloc();
        v253 = v250;
        *v64 = 136446466;
        v190 = sub_100030030();
        v191 = sub_1000847A8(v190, 0xE600000000000000, &v253);
        sub_10002FD40(v191);
        sub_10002FC0C();
        sub_10002F140(v192, v193, &protocol conformance descriptor for URL);
        v194 = dispatch thunk of CustomStringConvertible.description.getter();
        v196 = v195;
        v197 = sub_10002FF58();
        v94(v197);
        v198 = sub_1000847A8(v194, v196, &v253);
        v112 = v249;

        *(v64 + 14) = v198;
        sub_100030198(&_mh_execute_header, 0, v189, "[%{public}s] Cannot read info.plist for %{public}s");
        _os_log_impl(v199, v200, v201, v202, v203, v204);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {

        v214 = sub_10002FF58();
        v94(v214);
      }

      v215 = v251;
      sub_10002D690();
      sub_1000301A4();
      v216 = swift_allocError();
      sub_100030108(v216, v217);
      sub_10002F5A8(v215, &qword_1000D2000, qword_1000945D0);
      (v94)(v112, v93);
      (v94)(v255, v93);
LABEL_46:
      sub_100030218();
      return;
    }
  }

  v243 = v110;
  sub_10002FBC0();
  v123 = v235;
  sub_10002D638(v244, v235);
  v124 = v236;
  v93(v236, v112, v90);
  v125 = Logger.logObject.getter();
  (v246)(v123, v247);
  v126 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v125, v126))
  {
    sub_10002FF14();
    v127 = swift_slowAlloc();
    sub_10002FE48();
    v238 = swift_slowAlloc();
    v253 = v238;
    *v127 = 136446466;
    v128 = sub_100030030();
    v129 = sub_1000847A8(v128, 0xE600000000000000, &v253);
    sub_100030020(v129);
    sub_10002FC0C();
    sub_10002F140(v130, v131, &protocol conformance descriptor for URL);
    v132 = dispatch thunk of CustomStringConvertible.description.getter();
    v134 = v133;
    v242 = *(v252 + 8);
    v242(v124, v248);
    v135 = sub_1000847A8(v132, v134, &v253);
    v90 = v248;

    *(v127 + 14) = v135;
    _os_log_impl(&_mh_execute_header, v125, v126, "[%{public}s] Cannot find application record for %{public}s. Initializing with bundle.", v127, 0x16u);
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {

    v242 = *(v252 + 8);
    v242(v124, v90);
  }

  v116 = v251;
  v136 = v237;
  v93(v237, v255, v90);
  objc_opt_self();
  v137 = v243;
  sub_1000301A4();
  swift_dynamicCastObjCClassUnconditional();
  v253 = 0;
  v138 = v137;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v139 = v253;
  if (v253)
  {

    v140 = v234;
    sub_10002F290(v116, v234, &qword_1000D2000, qword_1000945D0);
    v141 = objc_allocWithZone(v239);
    v142 = sub_1000280E0(v240, v136, v139, v140);
    v120 = v250;
    v119 = v142;

    v243 = 0;
    goto LABEL_36;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1000270FC(uint64_t a1)
{
  sub_10002FFBC();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v7 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v7);
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  sub_10002FCD4();
  v23[0] = v11;
  v23[1] = v12;
  v13._countAndFlagsBits = v4;
  v13._object = v2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_100030080();
  String.append(_:)(v14);
  v22[1] = v23[0];
  v15 = objc_allocWithZone(LSApplicationRecord);

  v16 = sub_10002D2BC(v4, v2, 0);
  memset(v23, 0, sizeof(v23));
  v24 = 1;
  type metadata accessor for ClientOverride(0);
  sub_10002FEBC();
  sub_10001267C(v17, v18, v19, v20);
  v21 = objc_allocWithZone(ObjectType);
  sub_100029938(v23, v16, v10);

  swift_getObjectType();
  sub_1000301D4();
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100027544(uint64_t a1)
{
  sub_10002FFBC();
  v43 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v8);
  sub_10002FC5C();
  v42 = v10 - v9;
  v11 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v11);
  sub_10002FF34();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for URL();
  sub_100014A8C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_100021CB8(&v47, 1, v6, v4, &v44);
  v36 = v14;
  v37 = v17;
  v38 = v15;
  v39 = v7;
  v40 = v6;
  v41 = v4;
  v22 = v44;
  v23 = v45;
  v24 = v46;
  sub_100027A74(v44, *(&v44 + 1), v45);
  swift_getObjectType();
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = 0;
  v25 = v37;
  v26 = sub_1000301E0();
  v27 = v38;
  v28(v26);
  type metadata accessor for ClientOverride(0);
  v29 = v36;
  sub_10002FEBC();
  sub_10001267C(v30, v31, v32, v33);
  sub_100025DD8(&v48, v2, v29);
  (*(v25 + 8))(v21, v27);
  v34 = sub_1000301F8();
  sub_100018DF0(v34, v35);
  swift_deallocPartialClassInstance();
  sub_10002FFA4();
}

void sub_100027A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100030230();
  v65 = v3;
  *v66.val = v5;
  v68 = v6;
  v62 = v7;
  v63 = v8;
  *&v66.val[4] = v9;
  *&v66.val[6] = v10;
  *&v66.val[2] = v11;
  v67 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v12);
  sub_10002FC38();
  v64 = v13;
  sub_10002FD18();
  __chkstk_darwin(v14);
  sub_10002FF4C();
  v61 = v15;
  v16 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v17 = sub_10002FD0C(v16);
  __chkstk_darwin(v17);
  sub_10002FC4C();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v60 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v60 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v60 - v29;
  __chkstk_darwin(v28);
  sub_100030164();
  v31 = type metadata accessor for URL();
  sub_10002FEBC();
  sub_10001267C(v32, v33, v34, v31);
  sub_10002F290(v4, v30, &qword_1000D1D58, &unk_1000954C0);
  v35 = sub_100012898(v30, 1, v31);
  sub_10002F5A8(v30, &qword_1000D1D58, &unk_1000954C0);
  if (v35 == 1)
  {
    v36 = swift_slowAlloc();
    v70 = v66;
    if (proc_pidpath_audittoken(&v70, v36, 0x1000u) < 1)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      sub_1000128C0(v67, qword_1000E4560);
      sub_10002FBC0();
      v50 = v61;
      sub_10002D638(v51, v61);
      v52 = v68;

      v53 = Logger.logObject.getter();
      type metadata accessor for Logger();
      sub_10002FC24();
      (*(v54 + 8))(v50);
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v55))
      {
        v56 = sub_100030288();
        sub_10002FF98();
        v57 = swift_slowAlloc();
        v69 = v57;
        *v56 = 136446210;
        *(v56 + 4) = sub_1000847A8(v62, v52, &v69);
        _os_log_impl(&_mh_execute_header, v53, v55, "%{public}s Cannot find process path", v56, 0xCu);
        sub_100012A18(v57);
        sub_10002FCC8();

        sub_10002FCC8();
      }

      sub_10002D690();
      sub_1000301A4();
      v58 = swift_allocError();
      sub_100030108(v58, v59);
      sub_10002FCC8();

      goto LABEL_16;
    }

    String.init(cString:)();
    sub_10002FEBC();
    sub_10001267C(v37, v38, v39, v31);
    sub_10002FD24();
    String.utf8CString.getter();

    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_10002F5A8(v24, &qword_1000D1D58, &unk_1000954C0);
    sub_10002F5A8(v4, &qword_1000D1D58, &unk_1000954C0);

    sub_10001267C(v27, 0, 1, v31);
    sub_10002F244(v27, v4, &qword_1000D1D58, &unk_1000954C0);
    sub_10002FCC8();
  }

  sub_10002F290(v4, v20, &qword_1000D1D58, &unk_1000954C0);
  if (sub_100012898(v20, 1, v31) == 1)
  {
    sub_10002F5A8(v20, &qword_1000D1D58, &unk_1000954C0);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    sub_1000128C0(v67, qword_1000E4560);
    sub_10002FBC0();
    v40 = v64;
    sub_10002D638(v41, v64);
    v42 = v68;

    v43 = v40;
    Logger.logObject.getter();
    sub_10002FE60();
    type metadata accessor for Logger();
    sub_10002FC24();
    (*(v44 + 8))(v40);
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v45))
    {
      v46 = sub_100030288();
      sub_10002FF98();
      v47 = swift_slowAlloc();
      *v70.val = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1000847A8(v62, v42, &v70);
      _os_log_impl(&_mh_execute_header, v43, v45, "%{public}s Cannot find bundle URL", v46, 0xCu);
      sub_100012A18(v47);
      sub_10002FCC8();

      sub_10002FCC8();
    }

    sub_10002D690();
    sub_1000301A4();
    v48 = swift_allocError();
    sub_100030108(v48, v49);
LABEL_16:
    sub_10002F5A8(v4, &qword_1000D1D58, &unk_1000954C0);
    goto LABEL_17;
  }

  sub_10002F5A8(v4, &qword_1000D1D58, &unk_1000954C0);
  (*(*(v31 - 8) + 32))(v63, v20, v31);
LABEL_17:
  sub_100030218();
}

NSObject *sub_1000280E0(_OWORD *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v132 = a1;
  v5 = v4;
  v134 = a4;
  v138 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v7);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClientOverride.Server(0);
  v11 = __chkstk_darwin(v10 - 8);
  v128 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v127 = &v123 - v14;
  __chkstk_darwin(v13);
  v126 = &v123 - v15;
  v144 = type metadata accessor for URL();
  v136 = *(v144 - 8);
  __chkstk_darwin(v144);
  v133 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100012634(&qword_1000D2800, qword_100099E20);
  __chkstk_darwin(v17 - 8);
  v130 = &v123 - v18;
  v19 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v20 = __chkstk_darwin(v19 - 8);
  v129 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v125 = &v123 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v123 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v123 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v123 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v123 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v123 - v36;
  __chkstk_darwin(v35);
  v137 = &v123 - v38;
  if (!kCFBundleIdentifierKey)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100021A90(v39, v40, a3, &v142);

  if (v143)
  {
    if (swift_dynamicCast())
    {
      v42 = v140;
      v41 = v141;
      v43 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID];
      *v43 = v140;
      v43[1] = v41;

      v123 = v41;
      sub_100029174(v42);
      v44 = type metadata accessor for ClientOverride(0);
      if (sub_100012898(v37, 1, v44) == 1)
      {
        v45 = v137;
        sub_10002F290(v134, v137, &qword_1000D2000, qword_1000945D0);
        if (sub_100012898(v37, 1, v44) != 1)
        {
          sub_10002F5A8(v37, &qword_1000D2000, qword_1000945D0);
        }
      }

      else
      {
        v45 = v137;
        sub_10002EFD4(v37, v137);
        sub_10001267C(v45, 0, 1, v44);
      }

      sub_10002F290(v45, v34, &qword_1000D2000, qword_1000945D0);
      if (sub_100012898(v34, 1, v44) == 1)
      {
        sub_10002F5A8(v34, &qword_1000D2000, qword_1000945D0);
      }

      else
      {
        v54 = *(v34 + 2);
        v53 = *(v34 + 3);

        sub_10002D748(v34, type metadata accessor for ClientOverride);
        if (v53)
        {
          goto LABEL_19;
        }
      }

      v54 = *v43;
      v53 = v43[1];

LABEL_19:
      v55 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID];
      *v55 = v54;
      v55[1] = v53;
      v56 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken];
      v57 = v132;
      v58 = v132[1];
      *v56 = *v132;
      *(v56 + 1) = v58;
      v56[32] = *(v57 + 32);
      v59 = *(v136 + 16);
      v124 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
      v132 = v59;
      (v59)(&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL], v138, v144);
      v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip] = 0;
      v60 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_signerOrganization];
      *v60 = 0;
      v60[1] = 0;
      v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond] = 0;
      v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_iOSTargetPlatform] = [objc_opt_self() deviceIsiPad];
      sub_10002F290(v137, v31, &qword_1000D2000, qword_1000945D0);
      if (sub_100012898(v31, 1, v44) == 1)
      {
        sub_10002F5A8(v31, &qword_1000D2000, qword_1000945D0);
      }

      else
      {
        v62 = *(v31 + 4);
        v61 = *(v31 + 5);

        sub_10002D748(v31, type metadata accessor for ClientOverride);
        if (v61)
        {
          goto LABEL_28;
        }
      }

      if (!kCFBundleVersionKey)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100021A90(v63, v64, a3, &v142);

      if (v143)
      {
        if (swift_dynamicCast())
        {
          v62 = v140;
          v61 = v141;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10002F5A8(&v142, &qword_1000D1D60, &qword_100093620);
      }

      v61 = 0xE300000000000000;
      v62 = 3157553;
LABEL_28:
      v65 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion];
      *v65 = v62;
      v65[1] = v61;
      if (_kCFBundleDisplayNameKey)
      {
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100021A90(v66, v67, a3, &v142);

        if (v143)
        {
          if (swift_dynamicCast())
          {

LABEL_36:
            v70 = v140;
            v71 = v141;
            goto LABEL_39;
          }
        }

        else
        {
          sub_10002F5A8(&v142, &qword_1000D1D60, &qword_100093620);
        }

        if (kCFBundleNameKey)
        {

          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100021A90(v68, v69, a3, &v142);

          if (v143)
          {
            if (swift_dynamicCast())
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_10002F5A8(&v142, &qword_1000D1D60, &qword_100093620);
          }

          v70 = URL.lastPathComponent.getter();
LABEL_39:
          v72 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_localizedName];
          *v72 = v70;
          v72[1] = v71;
          sub_10002F290(v137, v28, &qword_1000D2000, qword_1000945D0);
          v73 = v44;
          if (sub_100012898(v28, 1, v44) == 1)
          {
            sub_10002F5A8(v28, &qword_1000D2000, qword_1000945D0);
            v74 = type metadata accessor for UUID();
            v75 = v130;
            sub_10001267C(v130, 1, 1, v74);
          }

          else
          {
            v75 = v130;
            sub_10002F290(&v28[*(v44 + 40)], v130, &qword_1000D2800, qword_100099E20);
            sub_10002D748(v28, type metadata accessor for ClientOverride);
          }

          v76 = v124;
          sub_10002F244(v75, &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID], &qword_1000D2800, qword_100099E20);
          v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs] = 1;
          v77 = [objc_opt_self() defaultManager];
          v78 = v133;
          v79 = v144;
          (v132)(v133, &v5[v76], v144);
          v80 = sub_100082B68(v78, 1);

          v81 = v79;
          v82 = *(v136 + 8);
          v82(v78, v81);
          v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned] = v80 & 1;
          v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta] = 0;
          v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isThirdPartyDistributed] = 1;
          v83 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_vendorName];
          *v83 = 0;
          v83[1] = 0;
          v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasMIDBasedSINF] = 0;
          v84 = v131;
          sub_10002F290(v137, v131, &qword_1000D2000, qword_1000945D0);
          v85 = v73;
          if (sub_100012898(v84, 1, v73) == 1)
          {
            goto LABEL_43;
          }

          v86 = v84 + *(v73 + 36);
          v87 = *v86;
          v88 = *(v86 + 8);
          sub_10002D748(v84, type metadata accessor for ClientOverride);
          if ((v88 & 1) == 0)
          {
            v116 = v125;
            sub_10002F290(v137, v125, &qword_1000D2000, qword_1000945D0);
            if (sub_100012898(v116, 1, v85) == 1)
            {
              v84 = v116;
LABEL_43:
              sub_10002F5A8(v84, &qword_1000D2000, qword_1000945D0);
              goto LABEL_45;
            }

            v118 = v116 + *(v85 + 32);
            v101 = *v118;
            v119 = *(v118 + 8);
            sub_10002D748(v116, type metadata accessor for ClientOverride);
            if ((v119 & 1) == 0)
            {
              *&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v87;
LABEL_50:
              v102 = v129;
              *&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID] = v101;
              sub_10002F244(v137, v102, &qword_1000D2000, qword_1000945D0);
              if (sub_100012898(v102, 1, v85) == 1)
              {
                sub_10002F5A8(v102, &qword_1000D2000, qword_1000945D0);
                v103 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                v104 = type metadata accessor for Client.Server(0);
                v105 = &v5[v103];
                v106 = 1;
              }

              else
              {
                v107 = v127;
                sub_10002D638(v102 + *(v85 + 28), v127);
                sub_10002D748(v102, type metadata accessor for ClientOverride);
                v108 = v107;
                v109 = v126;
                sub_10002EFD4(v108, v126);
                v110 = v109;
                v111 = v128;
                sub_10002EFD4(v110, v128);
                v112 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
                switch(sub_100012898(v111, 3, v112))
                {
                  case 1u:
                    if (*&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] && *&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID])
                    {
                      v120 = 1;
                    }

                    else
                    {
                      v120 = 2;
                    }

                    v121 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    sub_10001267C(&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v120, 2, v112);
                    v122 = type metadata accessor for Client.Server(0);
                    sub_10001267C(&v5[v121], 0, 1, v122);
                    sub_10002D748(v128, type metadata accessor for ClientOverride.Server);
                    goto LABEL_60;
                  case 2u:
                    v113 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v114 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
                    v115 = 1;
                    goto LABEL_58;
                  case 3u:
                    v113 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    v114 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
                    v115 = 2;
                    goto LABEL_58;
                  default:
                    v113 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
                    (*(v136 + 32))(&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v128, v144);
                    v114 = &v5[v113];
                    v115 = 0;
LABEL_58:
                    sub_10001267C(v114, v115, 2, v112);
                    v104 = type metadata accessor for Client.Server(0);
                    v105 = &v5[v113];
                    v106 = 0;
                    break;
                }
              }

              sub_10001267C(v105, v106, 1, v104);
LABEL_60:
              v139.receiver = v5;
              v139.super_class = ObjectType;
              v47 = objc_msgSendSuper2(&v139, "init");
              sub_10002F5A8(v134, &qword_1000D2000, qword_1000945D0);
              v82(v138, v144);
              return v47;
            }
          }

LABEL_45:
          sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
          v89 = v133;
          (v132)(v133, v138, v144);
          v91 = sub_1000295A8(v89, v90);
          if (v91)
          {
            v92 = v91;
            v93 = [v91 itemID];
            v94 = [v93 unsignedLongLongValue];

            *&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v94;
            v95 = [v92 installerVersionID];
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v98 = v97;

            v99 = sub_100029640(v96, v98);
            LOBYTE(v96) = v100;

            if (v96)
            {
              v101 = 0;
            }

            else
            {
              v101 = v99;
            }
          }

          else
          {
            v101 = 0;
            *&v5[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = 0;
          }

          goto LABEL_50;
        }

LABEL_72:
        __break(1u);
        JUMPOUT(0x100029164);
      }

      goto LABEL_70;
    }
  }

  else
  {

    sub_10002F5A8(&v142, &qword_1000D1D60, &qword_100093620);
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v46 = sub_1000128C0(v7, qword_1000E4560);
  sub_10002D638(v46, v9);
  v47 = Logger.logObject.getter();
  v48 = type metadata accessor for Logger();
  (*(*(v48 - 8) + 8))(v9, v48);
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v142 = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_1000847A8(0x746E65696C43, 0xE600000000000000, &v142);
    _os_log_impl(&_mh_execute_header, v47, v49, "[%{public}s] Cannot find bundle ID", v50, 0xCu);
    sub_100012A18(v51);
  }

  sub_10002D690();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();
  sub_10002F5A8(v134, &qword_1000D2000, qword_1000945D0);
  (*(v136 + 8))(v138, v144);
  swift_deallocPartialClassInstance();
  return v47;
}

void sub_100029174(uint64_t a1)
{
  sub_10002FFBC();
  v5 = v4;
  v6 = sub_100012634(&qword_1000D2818, &qword_1000954D0);
  v7 = sub_10002FD0C(v6);
  __chkstk_darwin(v7);
  sub_10002FC4C();
  sub_10002FF04();
  __chkstk_darwin(v8);
  v9 = sub_100030164();
  v10 = type metadata accessor for Client.TimedClientOverride(v9);
  sub_100014A8C();
  __chkstk_darwin(v11);
  sub_10002FC5C();
  sub_1000300A4();
  v12 = type metadata accessor for ClientOverride(0);
  sub_10002FEBC();
  sub_10001267C(v13, v14, v15, v12);
  v16 = sub_10002C5CC();
  v17 = sub_100030050();
  sub_100021B4C(v17, v18, v16, v19);

  sub_10003008C(v3, 1, v10);
  if (v20)
  {
    sub_10002F5A8(v3, &qword_1000D2818, &qword_1000954D0);
  }

  else
  {
    sub_10002FDB8();
    sub_10002EFD4(v3, v1);
    Date.timeIntervalSinceNow.getter();
    if (v21 <= 0.0)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v22 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v22, qword_1000E4560);
      _StringGuts.grow(_:)(38);

      v37[0] = 0xD000000000000028;
      v37[1] = 0x800000010009F760;
      v23._countAndFlagsBits = sub_100030050();
      String.append(_:)(v23);
      v24 = static os_log_type_t.default.getter();

      v25 = Logger.logObject.getter();

      if (os_log_type_enabled(v25, v24))
      {
        sub_10002FF14();
        v26 = swift_slowAlloc();
        sub_10002FE48();
        v37[0] = swift_slowAlloc();
        *v26 = 136446466;
        v27 = sub_1000847A8(0, 0xE000000000000000, v37);
        sub_100030020(v27);
        v28 = sub_1000847A8(0xD000000000000028, 0x800000010009F760, v37);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      v29 = sub_10002C5CC();
      v30 = sub_100030050();
      sub_10007D370(v30, v31);
      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37[0] = v29;
        v34 = v29[3];
        sub_100012634(&qword_1000D2820, &qword_1000954D8);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
        v29 = v37[0];

        sub_10002FDB8();
        sub_10002EFD4(v35, v2);
        sub_10002FD24();
        _NativeDictionary._delete(at:)();
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      sub_10001267C(v2, v36, 1, v10);
      sub_10002F5A8(v2, &qword_1000D2818, &qword_1000954D0);
      sub_10002C9F0(v29);
      sub_10002FE6C();
    }

    else
    {
      sub_10002F5A8(v5, &qword_1000D2000, qword_1000945D0);
      sub_10002FDD0();
      sub_10002D638(v1, v5);
      sub_10002FE6C();
      sub_10001267C(v5, 0, 1, v12);
    }
  }

  sub_10002FFA4();
}

id sub_1000295A8@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() receiptFromBundleAtURL:v3];

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

unint64_t sub_100029640(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_10002DF10(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

char *sub_100029938(uint64_t a1, void *a2, uint64_t a3)
{
  v193 = a3;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v7 - 8);
  v177 = &v175 - v8;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = __chkstk_darwin(v9 - 8);
  v185 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v183 = &v175 - v13;
  __chkstk_darwin(v12);
  v192 = &v175 - v14;
  v15 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v16 = __chkstk_darwin(v15 - 8);
  v186 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v187 = &v175 - v19;
  __chkstk_darwin(v18);
  v195 = &v175 - v20;
  v21 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  v22 = __chkstk_darwin(v21 - 8);
  v191 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v190 = &v175 - v25;
  v26 = __chkstk_darwin(v24);
  v189 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v180 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v188 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v175 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v175 - v36;
  __chkstk_darwin(v35);
  v196 = &v175 - v38;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v176 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v175 - v43;
  v45 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken];
  v46 = *(a1 + 16);
  *v45 = *a1;
  *(v45 + 1) = v46;
  v45[32] = *(a1 + 32);
  v47 = a2;
  v48 = [v47 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL;
  v50 = *(v40 + 32);
  v184 = v44;
  v179 = v40 + 32;
  v178 = v50;
  v50(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL], v44, v39);
  v51 = v47;
  v52 = sub_10002EF10(v51, &selRef_bundleIdentifier);
  if (!v53)
  {

    sub_10002D690();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();

    sub_10002F5A8(v193, &qword_1000D2000, qword_1000945D0);
    (*(v40 + 8))(&v4[v49], v39);
    swift_deallocPartialClassInstance();
    return v44;
  }

  v54 = v53;
  v175 = v39;
  v55 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleID];
  *v55 = v52;
  v55[1] = v53;
  v56 = v52;

  v181 = v56;
  v182 = v54;
  sub_100029174(v56);
  v57 = type metadata accessor for ClientOverride(0);
  if (sub_100012898(v37, 1, v57) == 1)
  {
    v58 = v196;
    sub_10002F290(v193, v196, &qword_1000D2000, qword_1000945D0);
    v59 = sub_100012898(v37, 1, v57);
    v60 = v195;
    v61 = v186;
    if (v59 != 1)
    {
      sub_10002F5A8(v37, &qword_1000D2000, qword_1000945D0);
    }
  }

  else
  {
    v58 = v196;
    sub_10002EFD4(v37, v196);
    sub_10001267C(v58, 0, 1, v57);
    v60 = v195;
    v61 = v186;
  }

  sub_10002F290(v58, v34, &qword_1000D2000, qword_1000945D0);
  v63 = sub_100012898(v34, 1, v57);
  v195 = v57;
  if (v63 == 1)
  {
    sub_10002F5A8(v34, &qword_1000D2000, qword_1000945D0);
    v64 = type metadata accessor for UUID();
    v65 = v187;
    sub_10001267C(v187, 1, 1, v64);
    goto LABEL_10;
  }

  v66 = &v34[*(v57 + 40)];
  v65 = v187;
  sub_10002F290(v66, v187, &qword_1000D2800, qword_100099E20);
  sub_10002D748(v34, type metadata accessor for ClientOverride);
  v67 = type metadata accessor for UUID();
  if (sub_100012898(v65, 1, v67) == 1)
  {
LABEL_10:
    v68 = [v51 deviceIdentifierForVendor];
    if (v68)
    {
      v69 = v68;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    v71 = type metadata accessor for UUID();
    sub_10001267C(v61, v70, 1, v71);
    sub_10002F244(v61, v60, &qword_1000D2800, qword_100099E20);
    v72 = sub_100012898(v65, 1, v71);
    v73 = v190;
    if (v72 != 1)
    {
      sub_10002F5A8(v65, &qword_1000D2800, qword_100099E20);
    }

    goto LABEL_16;
  }

  (*(*(v67 - 8) + 32))(v60, v65, v67);
  sub_10001267C(v60, 0, 1, v67);
  v73 = v190;
LABEL_16:
  sub_10002F244(v60, &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID], &qword_1000D2800, qword_100099E20);
  v74 = [v51 sk_isAlmond];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond] = v74;
  v75 = sub_100071254();
  v76 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned;
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAppStoreSigned] = v75;
  v77 = [v51 isBeta];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta] = v77;
  v78 = [v51 iTunesMetadata];
  v79 = [v78 distributorInfo];

  LOBYTE(v78) = [v79 distributorIsThirdParty];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isThirdPartyDistributed] = v78;
  v80 = [v51 localizedName];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_localizedName];
  *v84 = v81;
  v84[1] = v83;
  v85 = [v51 applicationHasMIDBasedSINF];
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasMIDBasedSINF] = v85;
  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_iOSTargetPlatform] = sub_1000712E4();
  v86 = v51;
  v87 = sub_10002EF10(v86, &selRef_signerOrganization);
  v88 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_signerOrganization];
  *v88 = v87;
  v88[1] = v89;
  v90 = sub_10002EF10([v86 iTunesMetadata], &selRef_artistName);
  v91 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_vendorName];
  *v91 = v90;
  v91[1] = v92;
  v93 = v188;
  sub_10002F290(v196, v188, &qword_1000D2000, qword_1000945D0);
  v94 = v195;
  if (sub_100012898(v93, 1, v195) == 1)
  {
    goto LABEL_17;
  }

  v95 = v93 + *(v94 + 36);
  v96 = *v95;
  v97 = *(v95 + 8);
  sub_10002D748(v93, type metadata accessor for ClientOverride);
  if (v97)
  {
    goto LABEL_19;
  }

  v93 = v180;
  sub_10002F290(v196, v180, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v93, 1, v94) == 1)
  {
LABEL_17:
    sub_10002F5A8(v93, &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    v118 = v93 + *(v94 + 32);
    v105 = *v118;
    v119 = *(v118 + 8);
    sub_10002D748(v93, type metadata accessor for ClientOverride);
    if ((v119 & 1) == 0)
    {
      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v96;
      goto LABEL_30;
    }
  }

LABEL_19:
  v98 = [v86 iTunesMetadata];
  v99 = [v98 storeItemIdentifier];

  if (v99 && (v100 = [v86 iTunesMetadata], v101 = objc_msgSend(v100, "versionIdentifier"), v100, v101))
  {
    v102 = [v86 iTunesMetadata];
    v103 = [v102 storeItemIdentifier];

    *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v103;
    v104 = [v86 iTunesMetadata];
    v105 = [v104 versionIdentifier];
  }

  else
  {
    sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
    v106 = [v86 URL];
    v107 = v184;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = sub_1000295A8(v107, v108);
    v105 = v109;
    if (v109)
    {
      v110 = [v109 itemID];
      v111 = [v110 unsignedLongLongValue];

      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = v111;
      v112 = [v105 installerVersionID];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = sub_100029640(v113, v115);
      LOBYTE(v113) = v117;

      if (v113)
      {
        v105 = 0;
      }

      else
      {
        v105 = v116;
      }
    }

    else
    {
      *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] = 0;
    }
  }

LABEL_30:
  *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID] = v105;
  if (v4[v76] == 1)
  {
    v120 = objc_opt_self();
    *&v201[0] = 0;
    v121 = [v120 loadMetadataFromApplicationRecord:v86 withError:v201];
    if (v121)
    {
      v122 = v121;
      v123 = *&v201[0];
      v124 = [v122 hasOrEverHasHadIAP];
      if (v124)
      {
        v125 = v124;
        v126 = [v124 BOOLValue];

        v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs] = v126;
        goto LABEL_37;
      }
    }

    else
    {
      v127 = *&v201[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_hasEverHadIAPs] = 1;
LABEL_37:
  v128 = v189;
  v129 = [v86 appClipMetadata];
  v130 = v196;
  if (v129)
  {

    v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip] = 1;
    v131 = [v86 entitlements];

    v132 = String._bridgeToObjectiveC()();
    sub_100012BAC(0, &qword_1000D1D80, NSArray_ptr);
    v133 = [v131 objectForKey:v132 ofClass:swift_getObjCClassFromMetadata()];

    if (v133)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v199 = 0u;
      v200 = 0u;
    }

    v201[0] = v199;
    v201[1] = v200;
    if (*(&v200 + 1))
    {
      sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
      if (swift_dynamicCast())
      {
        if (*(v197 + 16))
        {

          v137 = String._bridgeToObjectiveC()();

          CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
        }

        else
        {
        }
      }

      goto LABEL_49;
    }

    v134 = &qword_1000D1D60;
    v135 = &qword_100093620;
    v136 = v201;
    goto LABEL_48;
  }

  v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_isClip] = 0;
  sub_10002F290(v130, v128, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v128, 1, v195) == 1)
  {
    v134 = &qword_1000D2000;
    v135 = qword_1000945D0;
    v136 = v128;
LABEL_48:
    sub_10002F5A8(v136, v134, v135);
LABEL_49:
    v138 = v182;
    v139 = v181;
    goto LABEL_50;
  }

  v161 = v128;
  v139 = *(v128 + 16);
  v138 = *(v128 + 24);

  sub_10002D748(v161, type metadata accessor for ClientOverride);
  if (!v138)
  {
    goto LABEL_49;
  }

LABEL_50:
  v140 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID];
  *v140 = v139;
  v140[1] = v138;
  sub_10002F290(v130, v73, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v73, 1, v195) == 1)
  {
    sub_10002F5A8(v73, &qword_1000D2000, qword_1000945D0);
    goto LABEL_53;
  }

  v142 = *(v73 + 32);
  v141 = *(v73 + 40);

  sub_10002D748(v73, type metadata accessor for ClientOverride);
  if (!v141)
  {
LABEL_53:
    v143 = sub_10002EF78(v86, &selRef_exactBundleVersion);
    if (v144)
    {
      v142 = v143;
      v141 = v144;
    }

    else
    {
      v141 = 0xE300000000000000;
      v142 = 3157553;
    }
  }

  v145 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion];
  *v145 = v142;
  v145[1] = v141;
  v146 = v191;
  sub_10002F290(v130, v191, &qword_1000D2000, qword_1000945D0);
  v147 = v195;
  if (sub_100012898(v146, 1, v195) == 1)
  {
    sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
    sub_10002F5A8(v146, &qword_1000D2000, qword_1000945D0);
    v148 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
    v149 = type metadata accessor for Client.Server(0);
    v150 = &v4[v148];
    v151 = 1;
  }

  else
  {
    v152 = v183;
    sub_10002D638(v146 + *(v147 + 28), v183);
    sub_10002D748(v146, type metadata accessor for ClientOverride);
    v153 = v152;
    v154 = v192;
    sub_10002EFD4(v153, v192);
    v155 = v154;
    v156 = v185;
    sub_10002D638(v155, v185);
    v157 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
    switch(sub_100012898(v156, 3, v157))
    {
      case 1u:
        if (*&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID] && *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID])
        {
          sub_10002D748(v192, type metadata accessor for ClientOverride.Server);
          sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
          v165 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
          v166 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
          v167 = 1;
        }

        else
        {
          sub_100012BAC(0, &qword_1000D2810, &off_1000BD050);
          v168 = *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID];
          v169 = *&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8];

          v170 = v177;
          sub_100034210(v168, v169, 1, v177);

          sub_10002D748(v192, type metadata accessor for ClientOverride.Server);
          sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
          v171 = v175;
          if (sub_100012898(v170, 1, v175) == 1)
          {
            sub_10002F5A8(v170, &qword_1000D1D58, &unk_1000954C0);
            v165 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v166 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v167 = 2;
          }

          else
          {
            v172 = v176;
            v173 = v178;
            v178(v176, v170, v171);
            v165 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
            v173(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v172, v171);
            v166 = v165;
            v167 = 0;
          }
        }

        sub_10001267C(v166, v167, 2, v157);
        v163 = v193;
        v174 = type metadata accessor for Client.Server(0);
        sub_10001267C(v165, 0, 1, v174);
        sub_10002D748(v185, type metadata accessor for ClientOverride.Server);
        v162 = ObjectType;
        goto LABEL_66;
      case 2u:
        sub_10002D748(v192, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
        v158 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v159 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
        v160 = 1;
        goto LABEL_64;
      case 3u:
        sub_10002D748(v192, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
        v158 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v159 = &v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride];
        v160 = 2;
        goto LABEL_64;
      default:
        sub_10002D748(v192, type metadata accessor for ClientOverride.Server);
        sub_10002F5A8(v130, &qword_1000D2000, qword_1000945D0);
        v158 = OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride;
        v178(&v4[OBJC_IVAR____TtC22StoreKitUISceneService6Client_serverOverride], v185, v175);
        v159 = &v4[v158];
        v160 = 0;
LABEL_64:
        sub_10001267C(v159, v160, 2, v157);
        v149 = type metadata accessor for Client.Server(0);
        v150 = &v4[v158];
        v151 = 0;
        break;
    }
  }

  sub_10001267C(v150, v151, 1, v149);
  v163 = v193;
  v162 = ObjectType;
LABEL_66:
  v198.receiver = v4;
  v198.super_class = v162;
  v44 = objc_msgSendSuper2(&v198, "init");

  sub_10002F5A8(v163, &qword_1000D2000, qword_1000945D0);
  return v44;
}

void sub_10002AE8C(uint64_t a1)
{
  sub_10002FFBC();
  v3 = v2;
  v138 = v4;
  HIDWORD(v137) = v5;
  v6 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v6);
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v134 - v8;
  type metadata accessor for URL();
  sub_100014A8C();
  v139 = v11;
  v140 = v10;
  __chkstk_darwin(v10);
  sub_10002FC38();
  v136 = v12;
  sub_10002FD18();
  __chkstk_darwin(v13);
  sub_10002FF4C();
  v135 = v14;
  v15 = sub_10002FC80();
  __chkstk_darwin(v15);
  sub_10002FC5C();
  sub_10002FFD4();
  v16 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v16);
  sub_10002FF34();
  __chkstk_darwin(v17);
  v19 = &v134 - v18;
  v20 = v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID;
  v21 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v22 = *(v20 + 8);
  v23 = off_1000D0C38;

  sub_10002B894(256, v21, v22);
  v24 = static String._fromSubstring(_:)();
  v26 = v25;

  *(&v145 + 1) = &type metadata for String;
  *&v144 = v24;
  *(&v144 + 1) = v26;
  sub_10002FFF8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000300C8(isUniquelyReferenced_nonNull_native);

  v28 = *(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v29 = *(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);
  v30 = off_1000D0C40;

  sub_10002B894(100, v28, v29);
  v31 = static String._fromSubstring(_:)();
  v33 = v32;

  *(&v145 + 1) = &type metadata for String;
  *&v144 = v31;
  *(&v144 + 1) = v33;
  sub_10002FFF8();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000300C8(v34);

  if (*(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID))
  {
    *&v144 = *(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
    v35 = off_1000D0C10;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v145 + 1) = &type metadata for String;
    *&v144 = v36;
    *(&v144 + 1) = v37;
    sub_10002FD50();
    v38 = sub_10002FC6C();
    sub_100048C9C(v38, v35, v39);
  }

  if (*(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID))
  {
    *&v144 = *(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
    v40 = off_1000D0C18;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v145 + 1) = &type metadata for String;
    *&v144 = v41;
    *(&v144 + 1) = v42;
    sub_10002FD50();
    v43 = sub_10002FC6C();
    sub_100048C9C(v43, v40, v44);
  }

  v45 = off_1000D0C78;
  v46 = objc_opt_self();
  v47 = v45;
  v134 = v46;
  v48 = [v46 deviceGUID];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(&v145 + 1) = &type metadata for String;
  *&v144 = v49;
  *(&v144 + 1) = v51;
  sub_10002FD50();
  v52 = sub_10002FC6C();
  sub_100048C9C(v52, v47, v53);

  v54 = v141;
  v55 = off_1000D0E48;
  sub_10002F290(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v19, &qword_1000D2800, qword_100099E20);
  v56 = type metadata accessor for UUID();
  LODWORD(v48) = sub_100012898(v19, 1, v56);
  v57 = v55;
  if (v48 == 1)
  {
    sub_10002F5A8(v19, &qword_1000D2800, qword_100099E20);
    v58 = sub_100083AE0();
    if (v59)
    {
      v60 = v58;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v54;
      v62 = *(v54 + 24);
      sub_100012634(&qword_1000D2858, &unk_100096C80);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v62);
      v63 = v142;

      sub_100012AD4((*(v63 + 56) + 32 * v60), &v144);
      type metadata accessor for SKServerKey(0);
      sub_10002FE30();
      sub_10002F140(v64, v65, &unk_10009435C);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v144 = 0u;
      v145 = 0u;
    }

    v78 = v140;

    v70 = sub_10002F5A8(&v144, &qword_1000D1D60, &qword_100093620);
  }

  else
  {
    v66 = UUID.uuidString.getter();
    *(&v145 + 1) = &type metadata for String;
    *&v144 = v66;
    *(&v144 + 1) = v67;
    (*(*(v56 - 8) + 8))(v19, v56);
    sub_10002FD50();
    v68 = sub_10002FC6C();
    sub_100048C9C(v68, v57, v69);

    v78 = v140;
  }

  v79 = v139;
  if (*(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isAlmond) == 1)
  {
    sub_1000223E4(v70, v71, v72, v73, v74, v75, v76, v77, v134, v135, v136, v137, v138, v139, v140, v141, v142, *(&v142 + 1), v143, *(&v143 + 1));
    sub_100012634(&qword_1000D2730, &qword_100096BC0);
    v80 = sub_10002FF40();
    if (sub_100012898(v80, v81, v82))
    {
      sub_10002FBD8();
      sub_10002D748(v1, v83);
    }

    else
    {
      (*(v79 + 8))(v1, v78);
      v84 = off_1000D0CF0;
      *(&v145 + 1) = &type metadata for String;
      *&v144 = 49;
      *(&v144 + 1) = 0xE100000000000000;
      sub_10002FFF8();
      v85 = v84;
      swift_isUniquelyReferenced_nonNull_native();
      v86 = sub_10002FC6C();
      sub_100048C9C(v86, v85, v87);
    }
  }

  if (*(v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_isBeta) == 1)
  {
    v88 = off_1000D0CF8;
    *(&v145 + 1) = &type metadata for Bool;
    LOBYTE(v144) = 1;
    sub_10002FFF8();
    v89 = v88;
    swift_isUniquelyReferenced_nonNull_native();
    v90 = sub_10002FC6C();
    sub_100048C9C(v90, v89, v91);
  }

  sub_10002F290(v138, v9, &qword_1000D1D58, &unk_1000954C0);
  sub_10003008C(v9, 1, v78);
  if (v92)
  {
    sub_10002F5A8(v9, &qword_1000D1D58, &unk_1000954C0);
    sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
    v93 = v136;
    (*(v79 + 16))(v136, v3 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL, v78);
    v100 = sub_1000295A8(v93, v94);
    if (!v100)
    {
      goto LABEL_32;
    }

LABEL_22:
    v101 = off_1000D0C08;
    v102 = v100;
    v103 = v101;
    v104 = [v102 opaqueDSIDString];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    *(&v145 + 1) = &type metadata for String;
    *&v144 = v105;
    *(&v144 + 1) = v107;
    sub_10002FD50();
    v108 = sub_10002FC6C();
    sub_100048C9C(v108, v103, v109);

    if ((v137 & 0x100000000) != 0)
    {
      v110 = [v102 receiptType];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      *&v144 = v111;
      *(&v144 + 1) = v113;
      *&v142 = 0x65646F6358;
      *(&v142 + 1) = 0xE500000000000000;
      sub_100012B58();
      LOBYTE(v110) = StringProtocol.contains<A>(_:)();

      if ((v110 & 1) == 0)
      {
        v114 = off_1000D0DC8;
        v115 = [v102 receiptDataString];
        v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v118 = v117;

        *(&v145 + 1) = &type metadata for String;
        *&v144 = v116;
        *(&v144 + 1) = v118;
        sub_10002FD50();
        v119 = sub_10002FC6C();
        sub_100048C9C(v119, v114, v120);

        v121 = v141;
        if ([v102 isDSIDless])
        {
          v122 = off_1000D0DD8;
          v123 = sub_10002EF78(v134, &selRef_serialNumber);
          if (v124)
          {
            *(&v145 + 1) = &type metadata for String;
            *&v144 = v123;
            *(&v144 + 1) = v124;
            v125 = sub_10002FD50();
            v141 = v121;
            sub_100048C9C(&v142, v122, v125);

            goto LABEL_32;
          }

          v126 = sub_100083AE0();
          if (v127)
          {
            v128 = v126;
            v129 = swift_isUniquelyReferenced_nonNull_native();
            v141 = v121;
            v130 = *(v121 + 24);
            sub_100012634(&qword_1000D2858, &unk_100096C80);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v129, v130);
            v131 = v141;

            sub_100012AD4((*(v131 + 56) + 32 * v128), &v142);
            type metadata accessor for SKServerKey(0);
            sub_10002FE30();
            sub_10002F140(v132, v133, &unk_10009435C);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v142 = 0u;
            v143 = 0u;
          }

          sub_10002F5A8(&v142, &qword_1000D1D60, &qword_100093620);
        }
      }
    }

    goto LABEL_32;
  }

  v95 = v135;
  v96 = sub_1000301E0();
  v97(v96);
  sub_100012BAC(0, &qword_1000D2808, ASFReceipt_ptr);
  v98 = URL.path.getter();
  v100 = sub_10002B954(v98, v99);
  (*(v79 + 8))(v95, v78);
  if (v100)
  {
    goto LABEL_22;
  }

LABEL_32:
  sub_10002FFA4();
}

uint64_t sub_10002B894(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

id sub_10002B954(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithContentsOfFile:v3];

  return v4;
}

id sub_10002BB78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002BCDC(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10002BE6C(319, &qword_1000D2720, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      sub_10002BE6C(319, &qword_1000D2728, type metadata accessor for Client.Server);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10002BE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10002BEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10002BFA4(char a1)
{
  if (a1)
  {
    return 0x6C69746E75;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_10002BFD8(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D2938, &qword_100095628);
  sub_100014A8C();
  v7 = v6;
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_100012980(a1, a1[3]);
  sub_10002F91C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  type metadata accessor for ClientOverride(0);
  sub_10002FE18();
  v13 = sub_10002F140(v11, v12, &unk_100099EE0);
  sub_100030268(v3, &v25, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for Client.TimedClientOverride(0) + 20);
    v24 = 1;
    type metadata accessor for Date();
    sub_10002FE00();
    v19 = sub_10002F140(v17, v18, &protocol conformance descriptor for Date);
    sub_100030268(v3 + v16, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_10002C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100030230();
  v25 = v24;
  v48 = v26;
  v49 = type metadata accessor for Date();
  sub_100014A8C();
  v47 = v27;
  __chkstk_darwin(v28);
  sub_10002FC5C();
  v31 = v30 - v29;
  type metadata accessor for ClientOverride(0);
  sub_100019360();
  __chkstk_darwin(v32);
  sub_10002FC5C();
  v50 = v34 - v33;
  sub_100012634(&qword_1000D2950, &qword_100095630);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v35);
  v36 = type metadata accessor for Client.TimedClientOverride(0);
  sub_100019360();
  __chkstk_darwin(v37);
  sub_10002FC5C();
  v40 = v39 - v38;
  sub_100012980(v25, v25[3]);
  sub_10002F91C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100012A18(v25);
  }

  else
  {
    sub_10002FE18();
    sub_10002F140(v41, v42, &unk_100099F08);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FDE8();
    sub_10002EFD4(v50, v40);
    sub_10002FE00();
    sub_10002F140(v43, v44, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = sub_100030178();
    v46(v45);
    (*(v47 + 32))(v40 + *(v36 + 20), v31, v49);
    sub_10002D638(v40, v48);
    sub_100012A18(v25);
    sub_10002D748(v40, type metadata accessor for Client.TimedClientOverride);
  }

  sub_100030218();
}

uint64_t sub_10002C4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002BEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C524(uint64_t a1)
{
  v2 = sub_10002F91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C560(uint64_t a1)
{
  v2 = sub_10002F91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002C5CC()
{
  type metadata accessor for AppDefaultsManager();
  v0 = sub_1000214DC();
  if (v1 >> 60 == 15)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v2, qword_1000E4560);
    v3 = static os_log_type_t.info.getter();
    v4 = Logger.logObject.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v5 = 136446466;
      *(v5 + 4) = sub_1000847A8(0, 0xE000000000000000, &v9);
      *(v5 + 12) = 2082;
      *(v5 + 14) = sub_1000847A8(0xD00000000000001ALL, 0x800000010009F7C0, &v9);
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    v6 = v0;
    v7 = v1;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100012634(&qword_1000D2828, &unk_1000954E0);
    sub_10002F188();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100019064(v6, v7);
    return v9;
  }
}

uint64_t sub_10002C9F0(uint64_t a1)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100012634(&qword_1000D2828, &unk_1000954E0);
  sub_10002F084();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;

  type metadata accessor for AppDefaultsManager();
  sub_1000215CC();
  sub_100018DF0(v1, v3);
}

uint64_t sub_10002CE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  v5 = sub_100012898(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002CEA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100012634(&qword_1000D2730, &qword_100096BC0);

  return sub_10001267C(a1, v5, a3, v6);
}

uint64_t sub_10002CF10(uint64_t a1)
{
  sub_10002CF68();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10002CF68()
{
  if (!qword_1000D27B8)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D27B8);
    }
  }
}

unint64_t sub_10002CFB4()
{
  result = qword_1000D27E0;
  if (!qword_1000D27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D27E0);
  }

  return result;
}

id sub_10002D2BC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10002D398(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

id sub_10002D4EC(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10002D638(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002FE60();
  v4(v3);
  sub_100019360();
  v5 = sub_10002FD24();
  v6(v5);
  return a2;
}

unint64_t sub_10002D690()
{
  result = qword_1000D27F8;
  if (!qword_1000D27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D27F8);
  }

  return result;
}

uint64_t sub_10002D70C(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_10002D748(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_10002FC24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10002D79C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
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

void *sub_10002D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10002DDF8(sub_10002F6A8, v5, a1, a2);
}

uint64_t sub_10002D8B8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100018DF0(v7, v6);
      *v5 = xmmword_100095320;
      sub_100018DF0(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_10002DE5C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100018DF0(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_100095320;
      sub_100018DF0(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_10002DE5C(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_100018DF0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_10002DC8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10002DD04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_10002F4C8(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_10002F3F4(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x10002DDA0);
      }

      return result;
  }
}

uint64_t sub_10002DDB0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002DDF8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_10002DE5C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
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

unsigned __int8 *sub_10002DF10(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002E9A8(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10002E498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v43 = sub_1000301BC();
    v6 = sub_10002E9A8(v43, v44);
    v46 = v45;

    v7 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1000301BC();
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_100030068();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_10003005C();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_100030068();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_10003005C();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v47 = HIBYTE(v7) & 0xF;
  v82 = v6;
  v83 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v47)
      {
        sub_10002FCF0();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              sub_10003005C();
              if (!v22 || v78 >= v80)
              {
                goto LABEL_142;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_141;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        sub_10002FCF0();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              sub_10003005C();
              if (!v22 || v56 >= v58)
              {
                goto LABEL_142;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_141;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      sub_10002FCF0();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            sub_10003005C();
            if (!v22 || v67 >= v69)
            {
              goto LABEL_142;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a3;
        if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_141;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_140:
      v6 = v52;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_10002E9A8(uint64_t a1, unint64_t a2)
{
  v2 = sub_10002EA14(sub_10002EA10, 0, a1, a2);
  v6 = sub_10002EA48(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10002EA48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100084BB4(v9, 0), v12 = sub_10002EBA8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10002EBA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10002EDB8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10002EDB8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_10002EDB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_10002EE40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveBoolValueForSetting:v4];

  return v5;
}

void sub_10002EE9C(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100018DF0(a1, a2);
  [a3 setAuditTokenData:isa];
}

uint64_t sub_10002EF10(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10003020C();
}

uint64_t sub_10002EF78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10002FD24();
}

uint64_t sub_10002EFD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002FE60();
  v4(v3);
  sub_100019360();
  v5 = sub_10002FD24();
  v6(v5);
  return a2;
}

uint64_t sub_10002F04C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10002F084()
{
  result = qword_1000D2830;
  if (!qword_1000D2830)
  {
    sub_10001CEC4(&qword_1000D2828, &unk_1000954E0);
    sub_10002F140(&qword_1000D2838, type metadata accessor for Client.TimedClientOverride, &unk_1000955C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2830);
  }

  return result;
}

uint64_t sub_10002F140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002F188()
{
  result = qword_1000D2840;
  if (!qword_1000D2840)
  {
    sub_10001CEC4(&qword_1000D2828, &unk_1000954E0);
    sub_10002F140(&qword_1000D2848, type metadata accessor for Client.TimedClientOverride, &unk_100095598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2840);
  }

  return result;
}

uint64_t sub_10002F244(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100030248(a1, a2, a3, a4);
  sub_100019360();
  v5 = sub_10002FD24();
  v6(v5);
  return v4;
}

uint64_t sub_10002F290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100030248(a1, a2, a3, a4);
  sub_100019360();
  v5 = sub_10002FD24();
  v6(v5);
  return v4;
}

unint64_t sub_10002F2DC()
{
  result = qword_1000D2860;
  if (!qword_1000D2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2860);
  }

  return result;
}

unint64_t sub_10002F330()
{
  result = qword_1000D2868;
  if (!qword_1000D2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2868);
  }

  return result;
}

uint64_t sub_10002F384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2800, qword_100099E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F3F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Insecure.SHA1();
  sub_10002F140(&qword_1000D2880, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10002F4C8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_10002F140(&qword_1000D2880, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F5A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100012634(a2, a3);
  sub_10002FC24();
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_10002F5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10002D864(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10002F650(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002F668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002DDB0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10002F6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002FE60();
  v7 = type metadata accessor for ClientOverride(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = v3 + *(a3 + 20);
  }

  return sub_100012898(v9, a2, v8);
}

uint64_t sub_10002F788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002FE60();
  v9 = type metadata accessor for ClientOverride(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = v4 + *(a4 + 20);
  }

  return sub_10001267C(v11, a2, a2, v10);
}

uint64_t sub_10002F828(uint64_t a1)
{
  result = type metadata accessor for ClientOverride(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002F8C8()
{
  result = qword_1000D2930;
  if (!qword_1000D2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2930);
  }

  return result;
}

unint64_t sub_10002F91C()
{
  result = qword_1000D2940;
  if (!qword_1000D2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2940);
  }

  return result;
}

_BYTE *sub_10002F970(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002FA3CLL);
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

unint64_t sub_10002FA78()
{
  result = qword_1000D2960;
  if (!qword_1000D2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2960);
  }

  return result;
}

unint64_t sub_10002FAD0()
{
  result = qword_1000D2968;
  if (!qword_1000D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2968);
  }

  return result;
}

unint64_t sub_10002FB28()
{
  result = qword_1000D2970[0];
  if (!qword_1000D2970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D2970);
  }

  return result;
}

uint64_t sub_10002FD40(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_10002FD50()
{
  sub_100012AD4((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10002FD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10002FE6C()
{

  return sub_10002D748(v0, type metadata accessor for Client.TimedClientOverride);
}

uint64_t sub_10002FE94()
{

  return sub_10002D748(v0 + v1, type metadata accessor for ClientOverride.Server);
}

_OWORD *sub_10002FFF8()
{

  return sub_100012AD4((v0 - 112), (v0 - 144));
}

uint64_t sub_100030020(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

_OWORD *sub_1000300C8(char a1)
{
  *(v3 - 152) = v1;

  return sub_100048C9C(v3 - 144, v2, a1);
}

unint64_t sub_1000300EC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1000847A8(0, 0xE000000000000000, va);
}

uint64_t sub_100030108(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100030124()
{
}

uint64_t sub_100030248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100012634(a3, a4);
}

uint64_t sub_100030268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100030288()
{

  return swift_slowAlloc();
}

uint64_t sub_1000302A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000302F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100030348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a3;
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100012980(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000304B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = *(a2 - 8);
  v29 = a3;
  __chkstk_darwin(a1);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedDecodingContainer();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v15 = type metadata accessor for SwiftXPCCoding.TopLevelContainer(0, a2, v13, v14);
  v24 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  sub_100012980(a1, a1[3]);
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v31 = v15;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v12, v20);
    (*(v21 + 32))(v17, v30, a2);
    (*(v24 + 32))(v25, v17, v31);
  }

  return sub_100012A18(a1);
}

_BYTE *sub_1000307E4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100030880);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000308A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100012898(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100012898(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1000309F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x100030BF8);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_10001267C(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_100030C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100030D44(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_100030D80(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100030E30()
{
  Hasher.init(_seed:)();
  sub_100013DFC(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100030E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100030EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013DE4();
  *a1 = result;
  return result;
}

uint64_t sub_100030F24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100030F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100031034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030D80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100031084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001E5F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000310BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100031110(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_100031164(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v7, a2[2], a2[3], a2[4]);
  return Hasher._finalize()();
}

uint64_t sub_1000311E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100031238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10003128C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v6 = a2[2];
  v7 = a2[3];
  sub_1000325BC();
  v12 = _s13CodableResultO17FailureCodingKeysOMa(v8, v9, v10, v11);
  sub_100032558();
  swift_getWitnessTable();
  sub_100032614();
  v70 = v12;
  v68 = v13;
  type metadata accessor for KeyedEncodingContainer();
  sub_100014A8C();
  v72 = v15;
  v73 = v14;
  sub_10002FF34();
  __chkstk_darwin(v16);
  sub_100032608();
  v69 = v17;
  sub_10001F2A0();
  v71 = v18;
  __chkstk_darwin(v19);
  sub_10002FC5C();
  v67 = v21 - v20;
  sub_1000325BC();
  v26 = _s13CodableResultO17SuccessCodingKeysOMa(v22, v23, v24, v25);
  sub_100032540();
  swift_getWitnessTable();
  sub_100032614();
  v63 = v26;
  v61 = v27;
  type metadata accessor for KeyedEncodingContainer();
  sub_100014A8C();
  v65 = v29;
  v66 = v28;
  sub_10002FF34();
  __chkstk_darwin(v30);
  sub_100032608();
  v62 = v31;
  sub_10001F2A0();
  v64 = v32;
  __chkstk_darwin(v33);
  sub_10002FC5C();
  v60 = v35 - v34;
  sub_10001F2A0();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_10002FC5C();
  v41 = v40 - v39;
  v76 = v7;
  v77 = v6;
  sub_1000325BC();
  v46 = _s13CodableResultO10CodingKeysOMa(v42, v43, v44, v45);
  v47 = sub_100032570(v46);
  sub_100032620();
  v78 = type metadata accessor for KeyedEncodingContainer();
  sub_100014A8C();
  v80 = v48;
  sub_10002FF34();
  __chkstk_darwin(v49);
  v51 = &v59 - v50;
  sub_100012980(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v37 + 16))(v41, v79, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = v71;
    v53 = v67;
    v54 = v76;
    (*(v71 + 32))(v67, v41, v76);
    v82 = 1;
    v55 = v69;
    sub_1000325F4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v56 = v73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v57 = v72;
  }

  else
  {
    v52 = v64;
    v53 = v60;
    v54 = v77;
    (*(v64 + 32))(v60, v41, v77);
    v81 = 0;
    v55 = v62;
    sub_1000325F4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v56 = v66;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v57 = v65;
  }

  (*(v57 + 8))(v55, v56);
  (*(v52 + 8))(v53, v54);
  return (*(v80 + 8))(v51, v47);
}

uint64_t sub_100031738@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v85 = a5;
  v84 = a4;
  v77 = a7;
  v11 = _s13CodableResultO17FailureCodingKeysOMa(255, a2, a3, a6);
  sub_100032558();
  swift_getWitnessTable();
  sub_100032614();
  v89 = v12;
  v90 = v11;
  v81 = type metadata accessor for KeyedDecodingContainer();
  sub_100014A8C();
  v80 = v13;
  sub_10002FF34();
  __chkstk_darwin(v14);
  sub_100032608();
  v91 = v15;
  v16 = sub_1000325DC();
  v20 = _s13CodableResultO17SuccessCodingKeysOMa(v16, v17, v18, v19);
  sub_100032540();
  swift_getWitnessTable();
  sub_100032614();
  v86 = v21;
  v87 = v20;
  v79 = type metadata accessor for KeyedDecodingContainer();
  sub_100014A8C();
  v78 = v22;
  sub_10002FF34();
  __chkstk_darwin(v23);
  sub_100032608();
  v88 = v24;
  v25 = sub_1000325DC();
  v29 = _s13CodableResultO10CodingKeysOMa(v25, v26, v27, v28);
  v95 = sub_100032570(v29);
  sub_100032620();
  type metadata accessor for KeyedDecodingContainer();
  sub_100014A8C();
  v93 = v30;
  v94 = v31;
  sub_10002FF34();
  __chkstk_darwin(v32);
  v34 = &v75 - v33;
  v82 = a2;
  v83 = a3;
  v35 = _s13CodableResultOMa(0, a2, a3, a6);
  sub_100014A8C();
  v92 = v36;
  v38 = __chkstk_darwin(v37);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v75 - v42;
  __chkstk_darwin(v41);
  v45 = &v75 - v44;
  v46 = a1[3];
  v101 = a1;
  sub_100012980(a1, v46);
  v47 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v47)
  {
    v95 = v40;
    v96 = v43;
    v76 = v45;
    v48 = v93;
    v49 = v34;
    *&v97 = KeyedDecodingContainer.allKeys.getter();
    sub_100032620();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v99 = ArraySlice.init<A>(_:)();
    *(&v99 + 1) = v50;
    *&v100 = v51;
    *(&v100 + 1) = v52;
    sub_100032620();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v53 = v97;
    if (v97 == 2 || (v75 = v99, v97 = v99, v98 = v100, (Collection.isEmpty.getter() & 1) == 0))
    {
      v56 = type metadata accessor for DecodingError();
      swift_allocError();
      v58 = v57;
      sub_100012634(qword_1000D2A78, &qword_1000959C0);
      *v58 = v35;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v56 - 8) + 104))(v58, enum case for DecodingError.typeMismatch(_:), v56);
      swift_willThrow();
      (*(v94 + 8))(v49, v48);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v53)
      {
        LOBYTE(v97) = 1;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v95;
        v55 = v81;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v61 = sub_10003259C();
        v62(v61, v55);
        v63 = sub_1000325AC();
        v64(v63);
        sub_1000325CC();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v65 = v54;
        v66 = v92;
        v67 = v77;
      }

      else
      {
        LOBYTE(v97) = 0;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v92;
        v59 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = sub_10003259C();
        v69(v68, v59);
        v70 = sub_1000325AC();
        v71(v70);
        sub_1000325CC();
        swift_unknownObjectRelease();
        v72 = v96;
        swift_storeEnumTagMultiPayload();
        v67 = v77;
        v65 = v72;
      }

      v73 = *(v66 + 32);
      v74 = v76;
      v73(v76, v65, v35);
      v73(v67, v74, v35);
    }
  }

  return sub_100012A18(v101);
}

_BYTE *sub_100031EA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100031F70);
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

_BYTE *sub_100031FA0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10003203CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003206C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000320E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10003222C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x100032400);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_100032570(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_10003262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

uint64_t sub_1000326AC()
{
  v0 = 8;
  sub_100077764(0, 8, 0);
  do
  {
    swift_stdlib_random();
    sub_1000328D8();
    result = String.init<A>(_:radix:uppercase:)();
    v2 = result;
    v4 = v3;
    v6 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    if (v6 >= v5 >> 1)
    {
      result = sub_100077764((v5 > 1), v6 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6 + 1;
    v7 = &_swiftEmptyArrayStorage[2 * v6];
    v7[4] = v2;
    v7[5] = v4;
    --v0;
  }

  while (v0);
  v8 = 0;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage[5];
  v11 = v6 + 1;
  while (1)
  {
    if (v11 == v8)
    {

      return v9;
    }

    if (v8 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v8;

    v12 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    v9 = v12;
    v10 += 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032868()
{
  sub_100012634(&qword_1000D2C80, &unk_100095DA0);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1000E4520 = result;
  return result;
}

unint64_t sub_1000328D8()
{
  result = qword_1000D2C88;
  if (!qword_1000D2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C88);
  }

  return result;
}

__n128 sub_100032948(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003295C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10003299C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032A24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100032AAC(void *a1)
{
  v2 = sub_100012634(&qword_1000D2CE8, &qword_100095FD8);
  sub_100014A8C();
  v4 = v3;
  sub_10002FF34();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100012634(&qword_1000D2CF0, &qword_100095FE0);
  sub_100014A8C();
  v10 = v9;
  sub_10002FF34();
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_100012980(a1, a1[3]);
  sub_100033BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100033C30();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_100032C68(void *a1)
{
  v3 = sub_100012634(&qword_1000D2CC8, &qword_100095FC0);
  sub_100014A8C();
  v37 = v4;
  sub_10002FF34();
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_100012634(&qword_1000D2CD0, &unk_100095FC8);
  sub_100014A8C();
  v38 = v9;
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  sub_100012980(a1, a1[3]);
  sub_100033BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004DB94(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = result;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v32 = &type metadata for OfferDisplayRequest.ProductKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    return sub_100012A18(v33);
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_10004E284(v15 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_100033C30();
      v26 = v35;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
      return sub_100012A18(v33);
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656E656373 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4B746375646F7270 && a2 == 0xEB00000000646E69)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10003315C(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x4449656E656373;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4B746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000331F8(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D2CF8, &qword_100095FE8);
  sub_100014A8C();
  v7 = v6;
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100012980(a1, a1[3]);
  sub_100033ADC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  sub_100034204();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    sub_100034204();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v12[15] = 2;
    sub_100033C84();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[14] = 3;
    sub_100033CD8();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1000333B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100012634(&qword_1000D2CA8, &qword_100095FB8);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_100012980(a1, a1[3]);
  sub_100033ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100012A18(a1);
  }

  sub_1000341F8();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_1000341F8();
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v9;
  sub_100033B34();
  sub_1000341F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100033B88();
  sub_1000341F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = sub_1000341E8();
  v11(v10);
  result = sub_100012A18(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_10003365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000329F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000336A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001E5F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000336D0(uint64_t a1)
{
  v2 = sub_100033C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003370C(uint64_t a1)
{
  v2 = sub_100033C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032A24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100033798(uint64_t a1)
{
  v2 = sub_100033BDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000337D4(uint64_t a1)
{
  v2 = sub_100033BDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100033810()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100033888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000338B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100033154();
  *a1 = result;
  return result;
}

uint64_t sub_1000338D8(uint64_t a1)
{
  v2 = sub_100033ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033914(uint64_t a1)
{
  v2 = sub_100033ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100033950@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000333B8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1000339AC(uint64_t a1)
{
  *(a1 + 16) = sub_1000339DC();
  result = sub_100033A30();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1000339DC()
{
  result = qword_1000D2C90;
  if (!qword_1000D2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C90);
  }

  return result;
}

unint64_t sub_100033A30()
{
  result = qword_1000D2C98;
  if (!qword_1000D2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2C98);
  }

  return result;
}

unint64_t sub_100033A88()
{
  result = qword_1000D2CA0;
  if (!qword_1000D2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CA0);
  }

  return result;
}

unint64_t sub_100033ADC()
{
  result = qword_1000D2CB0;
  if (!qword_1000D2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CB0);
  }

  return result;
}

unint64_t sub_100033B34()
{
  result = qword_1000D2CB8;
  if (!qword_1000D2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CB8);
  }

  return result;
}

unint64_t sub_100033B88()
{
  result = qword_1000D2CC0;
  if (!qword_1000D2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CC0);
  }

  return result;
}

unint64_t sub_100033BDC()
{
  result = qword_1000D2CD8;
  if (!qword_1000D2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CD8);
  }

  return result;
}

unint64_t sub_100033C30()
{
  result = qword_1000D2CE0;
  if (!qword_1000D2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2CE0);
  }

  return result;
}

unint64_t sub_100033C84()
{
  result = qword_1000D2D00;
  if (!qword_1000D2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D00);
  }

  return result;
}

unint64_t sub_100033CD8()
{
  result = qword_1000D2D08;
  if (!qword_1000D2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D08);
  }

  return result;
}

_BYTE *sub_100033D30(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100033DCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100033EE0);
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

unint64_t sub_100033F1C()
{
  result = qword_1000D2D10;
  if (!qword_1000D2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D10);
  }

  return result;
}

unint64_t sub_100033F74()
{
  result = qword_1000D2D18;
  if (!qword_1000D2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D18);
  }

  return result;
}

unint64_t sub_100033FCC()
{
  result = qword_1000D2D20;
  if (!qword_1000D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D20);
  }

  return result;
}

unint64_t sub_100034024()
{
  result = qword_1000D2D28;
  if (!qword_1000D2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D28);
  }

  return result;
}

unint64_t sub_10003407C()
{
  result = qword_1000D2D30;
  if (!qword_1000D2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D30);
  }

  return result;
}

unint64_t sub_1000340D4()
{
  result = qword_1000D2D38;
  if (!qword_1000D2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D38);
  }

  return result;
}

unint64_t sub_10003412C()
{
  result = qword_1000D2D40;
  if (!qword_1000D2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D40);
  }

  return result;
}

unint64_t sub_100034184()
{
  result = qword_1000D2D48;
  if (!qword_1000D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D48);
  }

  return result;
}

uint64_t sub_100034210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v43 = a1;
  v44 = a2;
  v47 = a4;
  v4 = type metadata accessor for URL();
  sub_100014A8C();
  v45 = v5;
  __chkstk_darwin(v6);
  sub_10002FC5C();
  v42 = v8 - v7;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10002FC5C();
  v15 = v14 - v13;
  v16 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v17 = sub_10002FD0C(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v40 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v40 - v25;
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  v41 = objc_opt_self();
  v29 = [v41 defaultManager];
  v30 = [v29 sk_octanePersistedDataURL];

  if (v30)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_100037CC4(v23, v31);
  sub_100037984(v23, v26);
  v32 = sub_100037C28();
  if (sub_100012898(v32, v33, v4) == 1)
  {
    sub_1000379F4(v26);
    v34 = 1;
  }

  else
  {
    v48 = v43;
    v49 = v44;
    (*(v11 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100012B58();
    URL.appending<A>(path:directoryHint:)();
    (*(v11 + 8))(v15, v9);
    (*(v45 + 8))(v26, v4);
    v34 = 0;
  }

  sub_100037CC4(v28, v34);
  if (v46)
  {
    sub_100037A5C(v28, v20);
    if (sub_100012898(v20, 1, v4) == 1)
    {
      sub_1000379F4(v20);
    }

    else
    {
      v35 = v45;
      v36 = v42;
      (*(v45 + 32))(v42, v20, v4);
      v37 = [v41 defaultManager];
      v38 = sub_100039EF8();

      (*(v35 + 8))(v36, v4);
      if ((v38 & 0x100) == 0 || (v38 & 1) == 0)
      {
        sub_1000379F4(v28);
        return sub_100037CC4(v47, 1);
      }
    }
  }

  return sub_100037984(v28, v47);
}

uint64_t sub_1000346E4(void *a1, int a2)
{
  v3 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v4 = sub_1000301E0();
  sub_100034210(v4, v5, a2, v6);
}

uint64_t sub_100034760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v8);
  sub_10002FF34();
  __chkstk_darwin(v9);
  sub_100037C08();
  sub_100034210(a1, a2, 0, v4);
  v10 = type metadata accessor for URL();
  if (sub_100012898(v4, 1, v10) == 1)
  {
    sub_1000379F4(v4);
    v11 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100012B58();
    URL.appending<A>(component:directoryHint:)();

    (*(*(v10 - 8) + 8))(v4, v10);
    v11 = 0;
  }

  return sub_100037CC4(a4, v11);
}

uint64_t sub_1000348AC(void *a1, uint64_t a2)
{
  v2 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v3 = sub_1000301E0();
  sub_100034760(v3, v4, v5);
}

uint64_t sub_100034928(void *a1)
{
  sub_100012BAC(0, &qword_1000D2D58, LSBundleRecord_ptr);
  v2 = [a1 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_100034A0C(v3, v5, 0);
  v8 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = [v6 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_100034A0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_100034AF4(uint64_t a1, unint64_t a2, void *a3)
{
  v154 = a1;
  v155 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10002FC5C();
  v10 = v9 - v8;
  v11 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v12 = sub_10002FD0C(v11);
  __chkstk_darwin(v12);
  sub_10002FC38();
  v144 = v13;
  sub_10002FD18();
  __chkstk_darwin(v14);
  v16 = &v139[-v15];
  v17 = type metadata accessor for URL();
  sub_100014A8C();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10002FC38();
  v147 = v21;
  sub_10002FD18();
  __chkstk_darwin(v22);
  sub_10002FE54();
  v146 = v23;
  sub_10002FD18();
  __chkstk_darwin(v24);
  sub_10002FE54();
  v148 = v25;
  sub_10002FD18();
  __chkstk_darwin(v26);
  sub_10002FE54();
  v149 = v27;
  sub_10002FD18();
  __chkstk_darwin(v28);
  v30 = &v139[-v29];
  v150 = *(v6 + 104);
  (v150)(v10, enum case for URL.DirectoryHint.checkFileSystem(_:), v4);
  sub_1000348AC(a3, v10);
  v151 = *(v6 + 8);
  v151(v10, v4);
  v31 = sub_100037C28();
  if (sub_100012898(v31, v32, v17) == 1)
  {
    sub_1000379F4(v16);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v33 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v33, qword_1000E4560);
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    sub_100037B40();
    v156 = 0xD00000000000001ELL;
    v157 = v34;
    v35 = [a3 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100037B9C();

    v36._countAndFlagsBits = sub_1000301E0();
    String.append(_:)(v36);

    v37 = static os_log_type_t.error.getter();

    v38 = Logger.logObject.getter();

    if (os_log_type_enabled(v38, v37))
    {
      sub_10002FF14();
      v39 = swift_slowAlloc();
      sub_10002FE48();
      v40 = swift_slowAlloc();
      v156 = v40;
      *v39 = 136446466;
      v42 = sub_100037CAC(v40, v41, &v156);
      v43 = sub_100037B8C(v42);
      v45 = sub_100037C94(v43, v44, &v156);

      *(v39 + 14) = v45;
      sub_100037B4C(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    return;
  }

  v145 = v19;
  v48 = *(v19 + 32);
  v152 = v30;
  v143 = v17;
  v48(v30, v16, v17);
  v142 = a3;
  sub_100034928(a3);
  if (!v49)
  {
    goto LABEL_14;
  }

  v50 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v158 = 0;
  v141 = v50;
  v52 = [(__CFString *)v50 JSONObjectWithData:isa options:1 error:&v158];

  v53 = v158;
  if (!v52)
  {
    v59 = v53;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v153 = 0;
LABEL_14:
    sub_100019008(v154, v155);
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100012BAC(0, &qword_1000D2D50, NSMutableDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v54 = v158;
  v55 = String._bridgeToObjectiveC()();

  v156 = 0x656D614E707061;
  v157 = 0xE700000000000000;
  [v54 __swift_setObject:v55 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v156 = 0;
  v56 = [(__CFString *)v141 dataWithJSONObject:v54 options:1 error:&v156];
  v57 = v156;
  if (!v56)
  {
    v128 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_25;
  }

  v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v155 = v58;

LABEL_15:
  v60 = objc_opt_self();
  v61 = [v60 defaultManager];
  v62 = sub_100039EF8();

  v63 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  if ((v62 & 0x100) != 0 || (v62 & 1) == 0)
  {
    v156 = 0;
    v94 = [v63 createDirectoryAtURL:v65 withIntermediateDirectories:1 attributes:0 error:&v156];

    v69 = v155;
    v68 = v156;
    if (v94)
    {
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v95;
      (v150)(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
      sub_100012B58();
      v96 = v68;
      v97 = v147;
      v98 = v152;
      URL.appending<A>(path:directoryHint:)();
      v99 = sub_100037B7C();
      v100(v99);

      v102 = v153;
      v101 = v154;
      Data.write(to:options:)();
      v103 = v143;
      if (v102)
      {
        sub_100018DF0(v101, v69);
        v89 = *(v145 + 8);
        v89(v97, v103);
        v104 = v98;
        v105 = v103;
LABEL_28:
        v89(v104, v105);
        return;
      }

      v108 = *(v145 + 8);
      v108(v97, v143);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v156 = 0;
  v67 = [v63 URLForDirectory:99 inDomain:1 appropriateForURL:v65 create:1 error:&v156];

  v69 = v155;
  v68 = v156;
  if (!v67)
  {
LABEL_24:
    v106 = v68;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100018DF0(v154, v69);
LABEL_25:
    (*(v145 + 8))(v152, v143);
    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v68;

  v141 = @"Configuration.storekit";
  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v71;
  v140 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v150(v10);
  v72 = sub_100012B58();
  v73 = v148;
  v147 = v72;
  URL.appending<A>(path:directoryHint:)();
  v74 = sub_100037B7C();
  v75(v74);

  v76 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v77);
  v79 = v78;
  v156 = 0;
  v80 = [v76 createDirectoryAtURL:v78 withIntermediateDirectories:0 attributes:0 error:&v156];

  v81 = v156;
  if (!v80)
  {
    v107 = v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v73, v143);
    v91 = v149;
    sub_10003599C();
    v92 = v154;
    v93 = v155;
    goto LABEL_27;
  }

  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v82;
  (v150)(v10, v140, v4);
  v83 = v81;
  v84 = v146;
  URL.appending<A>(path:directoryHint:)();
  v85 = sub_100037B7C();
  v86(v85);

  v87 = v154;
  v69 = v155;
  v88 = v153;
  Data.write(to:options:)();
  if (v88)
  {
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v84, v143);
    v89(v73, v90);
    v91 = v149;
    sub_10003599C();
    v92 = v87;
    v93 = v69;
LABEL_27:
    sub_100018DF0(v92, v93);
    v89(v91, v90);
    v104 = v152;
    v105 = v90;
    goto LABEL_28;
  }

  v153 = 0;
  v129 = *(v145 + 8);
  v103 = v143;
  v150 = (v145 + 8);
  v151 = v129;
  v129(v84, v143);
  v130 = [v60 defaultManager];
  v156 = 46;
  v157 = 0xE100000000000000;
  v131._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v131);

  v132 = v144;
  v133 = v153;
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (v133)
  {
    v134 = v151;
    v151(v148, v103);

    v135 = v149;
    sub_10003599C();
    sub_100018DF0(v87, v69);
    v134(v135, v103);
    v134(v152, v103);
    return;
  }

  sub_1000379F4(v132);
  v137 = v151;
  v151(v148, v103);
  v138 = v149;
  sub_10003599C();
  v137(v138, v103);
  v108 = v137;
LABEL_30:
  v151 = v108;
  v155 = v69;
  v153 = 0;
  v109 = v142;
  if (qword_1000D1AE8 != -1)
  {
    sub_10002FBAC();
    swift_once();
  }

  v110 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v110, qword_1000E4560);
  v156 = 0;
  v157 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  sub_100037B40();
  v156 = 0xD00000000000001DLL;
  v157 = v111;
  v112 = [v109 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100037B9C();

  v113._countAndFlagsBits = sub_1000301E0();
  String.append(_:)(v113);

  v114 = v156;
  v115 = v157;
  v116 = [v109 logKey];
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v120 = static os_log_type_t.debug.getter();

  v121 = Logger.logObject.getter();

  if (os_log_type_enabled(v121, v120))
  {
    sub_10002FF14();
    v122 = swift_slowAlloc();
    sub_10002FE48();
    v158 = swift_slowAlloc();
    *v122 = 136446466;
    v156 = 91;
    v157 = 0xE100000000000000;
    v123._countAndFlagsBits = v117;
    v123._object = v119;
    String.append(_:)(v123);
    v124._countAndFlagsBits = sub_100037BA8();
    String.append(_:)(v124);
    v125 = v114;
    v126 = sub_1000847A8(v156, v157, &v158);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2082;
    v127 = sub_1000847A8(v125, v115, &v158);

    *(v122 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v121, v120, "%{public}s%{public}s", v122, 0x16u);
    swift_arrayDestroy();
    v103 = v143;
    sub_10002FCC8();

    v109 = v142;
    sub_10002FCC8();
  }

  else
  {
  }

  v136 = v151;
  sub_100035ABC(v109);
  sub_100018DF0(v154, v155);
  v136(v152, v103);
}

id sub_10003599C()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100035ABC(void *a1)
{
  v3 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v3);
  sub_10002FF34();
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  sub_100014A8C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10002FC5C();
  sub_100037C08();
  sub_1000346E4(a1, 1);
  if (sub_100012898(v6, 1, v7) == 1)
  {
    return sub_1000379F4(v6);
  }

  v12 = sub_1000301E0();
  v13(v12);
  v14 = [swift_getObjCClassFromMetadata() sharedInstance];
  URL.path(percentEncoded:)(0);
  v15 = String._bridgeToObjectiveC()();

  v16 = [a1 bundleID];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 useConfigurationDirectory:v15 forBundleID:v16];

  return (*(v9 + 8))(v1, v7);
}

void sub_100035D78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v90 = a3;
  v91 = a4;
  v92 = a1;
  v93 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10002FC5C();
  sub_100037C08();
  v13 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v13);
  sub_10002FF34();
  __chkstk_darwin(v14);
  v16 = v86 - v15;
  v17 = type metadata accessor for URL();
  sub_100014A8C();
  v97 = v18;
  __chkstk_darwin(v19);
  sub_10002FC38();
  v89 = v20;
  sub_10002FD18();
  __chkstk_darwin(v21);
  sub_10002FE54();
  v98 = v22;
  sub_10002FD18();
  __chkstk_darwin(v23);
  v96 = v86 - v24;
  v94 = *(v11 + 104);
  v94(v7, enum case for URL.DirectoryHint.checkFileSystem(_:), v9);
  sub_1000348AC(a5, v7);
  v25 = sub_1000301E0();
  v95 = v26;
  v26(v25);
  if (sub_100012898(v16, 1, v17) == 1)
  {
    sub_1000379F4(v16);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v27 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v27, qword_1000E4560);
    sub_100037C34();

    sub_100037B40();
    v100 = 0xD00000000000001ELL;
    v101 = v28;
    v29 = [a5 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100037B9C();

    v30._countAndFlagsBits = sub_1000301E0();
    String.append(_:)(v30);

    v31 = static os_log_type_t.error.getter();

    v32 = Logger.logObject.getter();

    if (os_log_type_enabled(v32, v31))
    {
      sub_10002FF14();
      v33 = swift_slowAlloc();
      sub_10002FE48();
      v34 = swift_slowAlloc();
      v100 = v34;
      *v33 = 136446466;
      v36 = sub_100037CAC(v34, v35, &v100);
      v37 = sub_100037B8C(v36);
      v39 = sub_100037C94(v37, v38, &v100);

      *(v33 + 14) = v39;
      sub_100037B4C(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }
  }

  else
  {
    v86[1] = v5;
    v87 = a5;
    v88 = v6;
    (*(v97 + 32))(v96, v16, v17);
    v100 = 0x737465737341;
    v101 = 0xE600000000000000;
    v94(v7, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100012B58();
    URL.appending<A>(path:directoryHint:)();
    v42 = sub_1000301E0();
    v95(v42);
    v43 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v100 = 0;
    v47 = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v100];

    v48 = v100;
    if (v47)
    {
      v49 = v97;
      v100 = v90;
      v101 = v91;
      v94(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
      v50 = v48;
      v51 = v89;
      v52 = v98;
      URL.appending<A>(path:directoryHint:)();
      v53 = sub_1000301E0();
      v95(v53);
      v54 = v88;
      Data.write(to:options:)();
      if (v54)
      {
        v55 = *(v49 + 8);
        v55(v51, v17);
        v55(v52, v17);
        v55(v96, v17);
      }

      else
      {
        v59 = v49 + 8;
        v58 = *(v49 + 8);
        v94 = v17;
        v95 = v58;
        (v58)(v51, v17);
        if (qword_1000D1AE8 != -1)
        {
          sub_10002FBAC();
          swift_once();
        }

        v60 = type metadata accessor for SKLogger(0);
        sub_1000128C0(v60, qword_1000E4560);
        sub_100037C34();

        sub_100037B40();
        v100 = 0xD00000000000001ELL;
        v101 = v61;
        v62 = v87;
        v63 = [v87 bundleID];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        String.append(_:)(v67);
        v68 = v62;

        v69 = [v62 logKey];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = static os_log_type_t.debug.getter();

        v73 = Logger.logObject.getter();

        LODWORD(v93) = v72;
        if (os_log_type_enabled(v73, v72))
        {
          sub_10002FF14();
          v74 = swift_slowAlloc();
          v88 = 0;
          v75 = v74;
          sub_10002FE48();
          v76 = swift_slowAlloc();
          v97 = v59;
          *v75 = 136446466;
          v99 = v76;
          v100 = 91;
          v101 = 0xE100000000000000;
          v77._countAndFlagsBits = v92;
          v77._object = v71;
          String.append(_:)(v77);
          v78._countAndFlagsBits = sub_100037BA8();
          String.append(_:)(v78);
          v79 = sub_1000847A8(v100, v101, &v99);

          *(v75 + 4) = v79;
          v68 = v87;
          *(v75 + 12) = 2082;
          v82 = sub_100037C94(v80, v81, &v99);

          *(v75 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v73, v93, "%{public}s%{public}s", v75, 0x16u);
          swift_arrayDestroy();
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        v83 = v96;
        sub_100035ABC(v68);
        v85 = v94;
        v84 = v95;
        (v95)(v98, v94);
        (v84)(v83, v85);
      }
    }

    else
    {
      v56 = v100;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v57 = *(v97 + 8);
      v57(v98, v17);
      v57(v96, v17);
    }
  }
}

uint64_t sub_1000366E0(void *a1)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v4);
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_100037C14();
  v6 = type metadata accessor for URL();
  sub_100014A8C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002FC5C();
  sub_100037C08();
  sub_1000346E4(a1, 1);
  v10 = sub_100037C28();
  if (sub_100012898(v10, v11, v6) == 1)
  {
    sub_1000379F4(v1);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v12 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v12, qword_1000E4560);
    sub_100037B6C();
    _StringGuts.grow(_:)(31);

    sub_100037B40();
    v94 = v13;
    v14 = [a1 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = v94;
    v20 = [a1 logKey];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_10002FF14();
      v26 = swift_slowAlloc();
      sub_10002FE48();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      sub_100037B28(v27);
      v28._countAndFlagsBits = v21;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v29);
      v30 = sub_100037BB4();

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = sub_1000847A8(0xD00000000000001DLL, v19, &v95);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      sub_100037BEC();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v2, v1, v6);
    v32 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v93 = 0;
    v36 = [v32 removeItemAtURL:v34 error:&v93];

    if (v36)
    {
      v37 = qword_1000D1AE8;
      v38 = v93;
      if (v37 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v39 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v39, qword_1000E4560);
      sub_100037B6C();
      _StringGuts.grow(_:)(26);

      sub_100037B40();
      v93 = 0xD000000000000018;
      v94 = v40;
      v41 = &stru_1000CE000;
      v42 = [a1 bundleID];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      String.append(_:)(v46);

      v47 = v94;
      v89 = v93;
      v48 = [a1 logKey];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = static os_log_type_t.debug.getter();

      v52 = Logger.logObject.getter();

      v88 = v51;
      if (os_log_type_enabled(v52, v51))
      {
        sub_10002FF14();
        v91 = v8;
        v53 = swift_slowAlloc();
        sub_10002FE48();
        v54 = swift_slowAlloc();
        *v53 = 136446466;
        sub_100037B28(v54);
        v55._countAndFlagsBits = v87;
        v55._object = v50;
        String.append(_:)(v55);
        v56._countAndFlagsBits = sub_100037BA8();
        String.append(_:)(v56);
        v57 = v2;
        v58 = sub_100037BB4();

        *(v53 + 4) = v58;
        v2 = v57;
        *(v53 + 12) = 2082;
        v59 = sub_1000847A8(v89, v47, &v95);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v52, v88, "%{public}s%{public}s", v53, 0x16u);
        sub_100037BEC();
        v41 = &stru_1000CE000;
        sub_10002FCC8();

        v8 = v91;
        sub_10002FCC8();
      }

      else
      {
      }

      v85 = [objc_opt_self() shared];
      v86 = [a1 v41[145].attr];
      if (!v86)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = String._bridgeToObjectiveC()();
      }

      [v85 appRemovedWithBundleID:v86];

      return (*(v8 + 8))(v2, v6);
    }

    else
    {
      v90 = v2;
      v92 = v8;
      v61 = v93;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v63 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v63, qword_1000E4560);
      sub_100037B6C();
      _StringGuts.grow(_:)(37);
      v64._countAndFlagsBits = 0xD00000000000001FLL;
      v64._object = 0x800000010009FAB0;
      String.append(_:)(v64);
      v65 = [a1 bundleID];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 8250;
      v70._object = 0xE200000000000000;
      String.append(_:)(v70);
      v95 = v62;
      sub_100012634(&qword_1000D1C80, &qword_1000935C0);
      _print_unlocked<A, B>(_:_:)();
      v72 = v93;
      v71 = v94;
      v73 = [a1 logKey];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = static os_log_type_t.error.getter();

      v78 = Logger.logObject.getter();

      if (os_log_type_enabled(v78, v77))
      {
        sub_10002FF14();
        v79 = swift_slowAlloc();
        sub_10002FE48();
        v80 = swift_slowAlloc();
        *v79 = 136446466;
        sub_100037B28(v80);
        v81._countAndFlagsBits = v74;
        v81._object = v76;
        String.append(_:)(v81);
        v82._countAndFlagsBits = sub_100037BA8();
        String.append(_:)(v82);
        v83 = sub_100037BB4();

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v84 = sub_1000847A8(v72, v71, &v95);

        *(v79 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v78, v77, "%{public}s%{public}s", v79, 0x16u);
        sub_100037BEC();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      return (*(v92 + 8))(v90, v6);
    }
  }
}