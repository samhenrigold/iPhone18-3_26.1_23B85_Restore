uint64_t sub_10043395C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042C8C4(a1, v4, v5, v6);
}

uint64_t sub_100433A10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004320FC(a1, v4, v5, v6);
}

uint64_t sub_100433ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100432DAC(a1, v4, v5, v6);
}

uint64_t sub_100433B8C()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100433C7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1004324C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100433DC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004328E8(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100433DF4()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100433E88()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100433EFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 endpoint];
  *a2 = result;
  return result;
}

uint64_t sub_100433F40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100433F88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100431480(v2, v3);
}

uint64_t sub_100434038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100430B58(v2, v3, v4);
}

uint64_t sub_1004340F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004303B0(v2, v3, v4);
}

uint64_t sub_1004341A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042FC24(v2, v3);
}

uint64_t sub_100434254()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042F68C(v2, v3);
}

uint64_t sub_100434300()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042F0F4(v2, v3);
}

uint64_t sub_1004343AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042EAC4(v2, v3, v4);
}

uint64_t sub_100434460()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042E874(v2, v3, v4);
}

uint64_t sub_100434514()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042DD1C(v2, v3, v4);
}

uint64_t sub_1004345C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8._object = 0x8000000100715640;
  v8._countAndFlagsBits = 0xD000000000000037;
  if (NSXPCConnection.isEntitled(_:)(v8))
  {
    v9 = *(v2 + 152);
    os_unfair_lock_lock((v9 + 24));
    sub_10042D0A8((v9 + 16), a1, v2, &v16);
    os_unfair_lock_unlock((v9 + 24));
    return v16;
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(0xD000000000000038, 0x80000001007165F0, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s caller not entitled, rejecting.", v13, 0xCu);
      sub_10000BB78(v14);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_1004347C8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100843558, &qword_1006E1270);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 168);
  KeyPath = swift_getKeyPath();
  v26 = sub_100434D78;
  v27 = KeyPath;
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v15 + v17));
  sub_100434D7C();
  os_unfair_lock_unlock((v15 + v17));

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000BE18(v7, &qword_100843558, &qword_1006E1270);
    (*(v22 + 104))(v24, enum case for DIPError.Code.unexpectedDaemonState(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v18 = _convertErrorToNSError(_:)();
    (*(v25 + 16))(v25, 0, v18);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v20 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderViewServiceIdentifier());
    v21 = XPCMobileDocumentProviderViewServiceIdentifier.init(value:)();
    (*(v25 + 16))(v25, v21, 0);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_100434C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100434C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042D498(a1, v4, v5, v6);
}

void *sub_100434D98(uint64_t a1)
{
  v35 = type metadata accessor for Locale();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Locale.identifier.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100172D4C((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_100316220(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_100316220(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

uint64_t sub_1004350A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100434D98(a2);
  v7 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v7 preferredLocalizationsFromArray:isa forPreferences:v9];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v4 + 8);
    v15 = v11 + 40;
    v16 = v12 - 1;
    while (1)
    {

      Locale.init(identifier:)();
      if (*(a2 + 16))
      {
        v17 = sub_10003ACF8(v6);
        if (v18)
        {
          break;
        }
      }

      (*v14)(v6, v3);
      if (v16 == v13)
      {
        goto LABEL_8;
      }

      ++v13;
      v15 += 16;
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    v20 = *(*(a2 + 56) + 16 * v17);
    v21 = *v14;

    v21(v6, v3);

    return v20;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

unint64_t sub_1004352E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  defaultLogger()();
  v46 = a1;
  sub_10043865C(a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v45 = v8;
    v19 = v18;
    v48 = v18;
    *v17 = 136315138;
    v20 = sub_10015E5E4();
    v44 = v11;
    v21 = v7;
    v23 = v22;
    sub_1004386C0(v6);
    v24 = sub_100141FE4(v20, v23, &v48);
    v7 = v21;
    v11 = v44;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to retrieve brand identifier for proposal: %s", v17, 0xCu);
    sub_10000BB78(v19);
    v8 = v45;

    v2 = v43;
  }

  else
  {

    sub_1004386C0(v6);
  }

  v25 = *(v8 + 8);
  v25(v13, v7);
  v26 = sub_1004356C8(v46);
  if (!v2)
  {
    v47 = 0;
    if (v28)
    {
      v2 = v26;
      v29 = v27;
    }

    else
    {
      v2 = 0;
      v29 = 0;
    }

    defaultLogger()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v11;
      v33 = v32;
      v34 = swift_slowAlloc();
      v46 = v7;
      v35 = v34;
      v48 = v34;
      *v33 = 136315138;
      if (v29)
      {
        v36 = v2;
      }

      else
      {
        v36 = 0x3E6C696E3CLL;
      }

      v45 = v8;
      if (v29)
      {
        v37 = v29;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      v38 = sub_100141FE4(v36, v37, &v48);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Retrieved brand identifier: %s", v33, 0xCu);
      sub_10000BB78(v35);

      v39 = v44;
      v40 = v46;
    }

    else
    {

      v39 = v11;
      v40 = v7;
    }

    v25(v39, v40);
  }

  return v2;
}

unint64_t sub_1004356C8(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Certificate();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  sub_10000BA08((v1 + 48), *(v1 + 72));
  if (dispatch thunk of DeviceInformationProviding.isSimulator.getter())
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Simulator does not support fetching information from PIR, continuing.", v20, 2u);
    }

    (*(v46 + 8))(v17, v47);
    return 0;
  }

  v22 = sub_100437C40();
  if (v23)
  {
    v24 = v22;
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Using hardcoded certificate values", v27, 2u);
    }

    (*(v46 + 8))(v15, v47);
    return v24;
  }

  else
  {
    v28 = v45 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) + 52);
    v29 = *(v28 + 8);
    if (v29 >> 60 == 15)
    {
      if (*(v1 + 40) == 1)
      {
        defaultLogger()();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Allowing nil reader authentication certificate as developer test mode is enabled", v32, 2u);
        }

        (*(v46 + 8))(v9, v47);
        return 0;
      }

      (*(v43 + 104))(v44, enum case for DIPError.Code.webPresentmentTrustedAuthenticationCertificateMissing(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v33 = *v28;
      sub_10000B8B8(*v28, *(v28 + 8));
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Extracting certificate values from reader authentication certificate", v36, 2u);
      }

      (*(v46 + 8))(v12, v47);
      v37 = v48;
      decodeCertificate(fromDER:)();
      if (v37)
      {
        return sub_10000BD94(v33, v29);
      }

      else
      {
        v38 = v40;
        Certificate.init(_:)();
        v39 = sub_100437FEC();
        (*(v41 + 8))(v38, v42);
        sub_10000BD94(v33, v29);
        return v39;
      }
    }
  }
}

uint64_t sub_100435D6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100435E48, 0, 0);
}

uint64_t sub_100435E48(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 80);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  if (v4)
  {
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching brand with identifier: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  *(v1 + 88) = v12;
  sub_10000BA08(*(v1 + 40), *(*(v1 + 40) + 24));
  v13 = swift_task_alloc();
  *(v1 + 96) = v13;
  *v13 = v1;
  v13[1] = sub_100436008;
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);

  return sub_10043872C(v15, v14);
}

uint64_t sub_100436008(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100436354;
  }

  else
  {
    v4 = sub_10043611C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10043611C(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[13];
    v18 = v1[9];
    v19 = v1[11];
    v17 = v1[6];
    v6 = v1[3];
    v5 = v1[4];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v1[2] = v4;

    v8 = String.init<A>(describing:)();
    v10 = sub_100141FE4(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100141FE4(v6, v5, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully retrieved brand %s with identifier: %s", v7, 0x16u);
    swift_arrayDestroy();

    v19(v18, v17);
  }

  else
  {
    v11 = v1[11];
    v12 = v1[9];
    v13 = v1[6];

    v11(v12, v13);
  }

  v14 = v1[13];

  v15 = v1[1];

  return v15(v14);
}

uint64_t sub_100436354(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v18 = v1[8];
    v10 = swift_slowAlloc();
    v17 = v5;
    v11 = swift_slowAlloc();
    v16 = v7;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v19);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get brand with identifier %s, treating as non-fatal: %@", v10, 0x16u);
    sub_1004385F4(v11);

    sub_10000BB78(v12);

    v17(v18, v16);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = v1[1];

  return v14(0);
}

unint64_t sub_100436584(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  defaultLogger()();
  v49 = a1;
  sub_10043865C(a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44 = v8;
    v19 = v7;
    v20 = v18;
    v52 = v18;
    *v17 = 136315138;
    v21 = sub_10015E5E4();
    v23 = v22;
    sub_1004386C0(v6);
    v24 = sub_100141FE4(v21, v23, &v52);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to retrieve permissions identifier for proposal: %s", v17, 0xCu);
    sub_10000BB78(v20);
    v7 = v19;
    v8 = v44;

    v11 = v48;
  }

  else
  {

    sub_1004386C0(v6);
  }

  v25 = *(v8 + 8);
  v25(v13, v7);
  v26 = v51;
  sub_1004356C8(v49);
  if (v26)
  {
    (*(v45 + 104))(v47, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v46);
    swift_errorRetain();
    v29 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v30 = v28;
    if (v28)
    {
      v31 = v27;

      v29 = v31;
    }

    else
    {
      v29 = 0;
      v31 = 0x3E6C696E3CLL;
    }

    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v48 = v11;
    v34 = v33;

    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      v51 = v29;
      v36 = v35;
      v37 = swift_slowAlloc();
      v50 = v7;
      v38 = v37;
      v52 = v37;
      *v36 = 136315138;
      v44 = v8;
      if (v30)
      {
        v39 = v30;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      v40 = sub_100141FE4(v31, v39, &v52);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v34, "Retrieved permissions identifier: %s", v36, 0xCu);
      sub_10000BB78(v38);

      v29 = v51;

      v41 = v48;
      v42 = v50;
    }

    else
    {

      v41 = v48;
      v42 = v7;
    }

    v25(v41, v42);
  }

  return v29;
}

uint64_t sub_100436AC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100436C60, 0, 0);
}

uint64_t sub_100436C60(uint64_t a1)
{
  v34 = v1;
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.permissionsCheckDelay.getter();
  v36 = NSUserDefaults.internalDouble(forKey:)(v3);
  v4 = *&v36.is_nil;
  v6 = v5;

  if (v6)
  {
    defaultLogger()();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 128);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    if (v9)
    {
      v14 = *(v1 + 24);
      v13 = *(v1 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(v14, v13, &v33);
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to retrieve permissions for identifier: %s", v15, 0xCu);
      sub_10000BB78(v16);
    }

    v17 = *(v12 + 8);
    v17(v10, v11);
    *(v1 + 168) = v17;
    sub_10000BA08(*(v1 + 40), *(*(v1 + 40) + 24));
    v18 = swift_task_alloc();
    *(v1 + 176) = v18;
    *v18 = v1;
    v18[1] = sub_100437604;
    v20 = *(v1 + 24);
    v19 = *(v1 + 32);

    return sub_100438D60(v20, v19);
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v22, v23, "Adding artificial delay of %f sec before fetching permissions", v24, 0xCu);
    }

    v25 = *(v1 + 136);
    v26 = *(v1 + 96);
    v27 = *(v1 + 104);

    v28 = *(v27 + 8);
    *(v1 + 144) = v28;
    v28(v25, v26);
    v29 = static Duration.seconds(_:)();
    v31 = v30;
    static Clock<>.continuous.getter();
    v32 = swift_task_alloc();
    *(v1 + 152) = v32;
    *v32 = v1;
    v32[1] = sub_100436FC8;

    return sub_1003DA1A4(v29, v31, 0, 0, 1);
  }
}

uint64_t sub_100436FC8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_1004372F0;
  }

  else
  {
    v3 = sub_100437130;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100437130(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 128);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  if (v4)
  {
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to retrieve permissions for identifier: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  *(v1 + 168) = v12;
  sub_10000BA08(*(v1 + 40), *(*(v1 + 40) + 24));
  v13 = swift_task_alloc();
  *(v1 + 176) = v13;
  *v13 = v1;
  v13[1] = sub_100437604;
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);

  return sub_100438D60(v15, v14);
}

uint64_t sub_1004372F0(uint64_t a1)
{
  v20 = v1;
  v2 = v1[18];
  defaultLogger()();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[14];
  v7 = v1[12];
  if (v5)
  {
    v9 = v1[3];
    v8 = v1[4];
    v18 = v2;
    v10 = swift_slowAlloc();
    v17 = v6;
    v11 = swift_slowAlloc();
    v16 = v7;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v19);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch permissions with identifier %s: %@", v10, 0x16u);
    sub_1004385F4(v11);

    sub_10000BB78(v12);

    v18(v17, v16);
  }

  else
  {

    v2(v6, v7);
  }

  (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.webPresentmentCouldNotFetchPermissions(_:), v1[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_100437604(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_10043792C;
  }

  else
  {
    v4 = sub_100437718;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100437718(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[23];
    v18 = v1[21];
    v5 = v1[15];
    v6 = v1[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v1[2] = v4;

    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieved permissions: %s", v7, 0xCu);
    sub_10000BB78(v8);

    v18(v5, v6);
  }

  else
  {
    v12 = v1[21];
    v13 = v1[15];
    v14 = v1[12];

    v12(v13, v14);
  }

  v15 = v1[1];
  v16 = v1[23];

  return v15(v16);
}

uint64_t sub_10043792C(uint64_t a1)
{
  v20 = v1;
  v2 = v1[21];
  defaultLogger()();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[14];
  v7 = v1[12];
  if (v5)
  {
    v9 = v1[3];
    v8 = v1[4];
    v18 = v2;
    v10 = swift_slowAlloc();
    v17 = v6;
    v11 = swift_slowAlloc();
    v16 = v7;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v19);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch permissions with identifier %s: %@", v10, 0x16u);
    sub_1004385F4(v11);

    sub_10000BB78(v12);

    v18(v17, v16);
  }

  else
  {

    v2(v6, v7);
  }

  (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.webPresentmentCouldNotFetchPermissions(_:), v1[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_100437C40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = UserDefaultsConfiguration.userDefaults.getter();
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.injectBrandIdentifier.getter();
  v9 = NSUserDefaults.internalString(forKey:)(v8);

  if (v9.value._object && (v30 = v9, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , (v10 = v29) != 0))
  {
    v11 = v28;
    v12 = UserDefaultsConfiguration.userDefaults.getter();
    v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.injectBrandIdentifierPermissionsOnly.getter();
    v14 = NSUserDefaults.internalBool(forKey:)(v13);

    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v0;
      v30.value._countAndFlagsBits = v26;
      *v17 = 136446466;
      if (v14)
      {
        v18 = 0xD000000000000015;
      }

      else
      {
        v18 = 0;
      }

      if (v14)
      {
        v19 = 0x8000000100716860;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v20 = v14;
      v21 = sub_100141FE4(v18, v19, &v30.value._countAndFlagsBits);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100141FE4(v11, v10, &v30.value._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v15, v16, "Using injected brand identifier%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v1 + 8))(v6, v27);
      if (!v20)
      {
        goto LABEL_11;
      }
    }

    else
    {

      (*(v1 + 8))(v6, v0);
      if (!v14)
      {
LABEL_11:

        return v11;
      }
    }

    return 0;
  }

  else
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No hardcoded brand identifier found", v25, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

unint64_t sub_100437FEC()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - v9;
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = Certificate.wrapped.getter();
  v14 = SecCertificateRef.commonName()();
  if (v14.value._object)
  {
    countAndFlagsBits = v14.value._countAndFlagsBits;
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100141FE4(countAndFlagsBits, v14.value._object, &v48);
      _os_log_impl(&_mh_execute_header, v15, v16, "Brand permissions identifier from certificate: %s", v17, 0xCu);
      sub_10000BB78(v18);
    }

    v19 = *(v46 + 8);
    v19(v12, v47);
    v20 = v44;
    v21 = SecCertificateRef.brandAssetsIdentifier.getter();
    if (v20)
    {
      defaultLogger()();
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v19;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get brand assets identifier (non-fatal, treating as nil): %@", v26, 0xCu);
        sub_1004385F4(v27);

        v19 = v25;
      }

      else
      {
      }

      v19(v7, v47);
      return 0;
    }

    else
    {
      v29 = v21;
      v30 = v22;

      defaultLogger()();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      v44 = v31;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v42 = v32;
        v34 = v33;
        v41 = swift_slowAlloc();
        v48 = v41;
        *v34 = 136315138;
        if (v30)
        {
          v35 = v29;
        }

        else
        {
          v35 = 0x3E6C696E3CLL;
        }

        v43 = v19;
        if (v30)
        {
          v36 = v30;
        }

        else
        {
          v36 = 0xE500000000000000;
        }

        v37 = sub_100141FE4(v35, v36, &v48);

        *(v34 + 4) = v37;
        v38 = v44;
        _os_log_impl(&_mh_execute_header, v44, v42, "Brand assets identifier from certificate: %s", v34, 0xCu);
        sub_10000BB78(v41);

        v43(v10, v47);
      }

      else
      {

        v19(v10, v47);
      }
    }
  }

  else
  {
    (*(v1 + 104))(v3, enum case for DIPError.Code.webPresentmentInvalidCertificate(_:), v0);
    v29 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_1004385F4(uint64_t a1)
{
  v2 = sub_100007224(&unk_100833B50, &unk_1006D8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043865C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004386C0(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043872C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for DIPSignpost.Config();
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043881C, v2, 0);
}

uint64_t sub_10043881C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  static DaemonSignposts.WebPresentment.fetchBrand.getter();
  DIPSignpost.init(_:)();
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100438924;

  return sub_1004394B4(0xD000000000000016, 0x8000000100716980, sub_10043B464, v4);
}

uint64_t sub_100438924(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100438BA4;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 96) = a1;

    v6 = sub_100438A64;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100438A64()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = [v1 localizedNames];
  type metadata accessor for Locale();
  sub_10043B470(&qword_100834788, 255, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100438BA4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_100438C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 112);

  v8 = String._bridgeToObjectiveC()();
  v10[4] = sub_10043B838;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001335C;
  v10[3] = &unk_100810C60;
  v9 = _Block_copy(v10);

  [v7 brandWithIdentifier:v8 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_100438D60(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for DIPSignpost.Config();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100438E50, v2, 0);
}

uint64_t sub_100438E50()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  static DaemonSignposts.WebPresentment.fetchBrandPermissions.getter();
  DIPSignpost.init(_:)();
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100438F60;

  return sub_100439854((v0 + 2), 0xD000000000000024, 0x80000001007168D0, sub_10043AE30, v4);
}

uint64_t sub_100438F60()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100439240;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100439088;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100439088()
{
  v1 = v0[14];
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10043AE3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    sub_10000B90C(v2, v3);

    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    sub_10000B90C(v2, v3);

    v12 = v0[4];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_100439240()
{

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1004392F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 112);

  v8 = String._bridgeToObjectiveC()();
  v10[4] = sub_10043B410;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100439408;
  v10[3] = &unk_100810B20;
  v9 = _Block_copy(v10);

  [v7 permissionsForBrandWithIdentifier:v8 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_100439408(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_10000BD94(v4, v8);
}

uint64_t sub_1004394B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1004394DC, v4, 0);
}

uint64_t sub_1004394DC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_100007224(&qword_100844478, &qword_1006E2AE8);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  sub_10043B470(&qword_100844460, v6, type metadata accessor for WebPresentmentBrandStore, &unk_1006E2A90);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  sub_10043B59C();
  *v7 = v0;
  v7[1] = sub_100439658;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1006E2AF8);
}

uint64_t sub_100439658()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1004397E8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100439780;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100439780()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004397E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100439854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_10043987C, v5, 0);
}

uint64_t sub_10043987C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_100007224(&qword_100844458, &qword_1006E2AC0);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  sub_10043B470(&qword_100844460, v6, type metadata accessor for WebPresentmentBrandStore, &unk_1006E2A90);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1004399F4;
  v8 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v8, &unk_1006E2AD0);
}

uint64_t sub_1004399F4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1004397E8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100439B1C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100439B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100439B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100439BA8, 0, 0);
}

uint64_t sub_100439BA8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_100439C9C;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, v7, v8, sub_10043B270, v4, &type metadata for Data);
}

uint64_t sub_100439C9C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100439DD8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100439DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100439E3C(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), os_unfair_lock_s *))
{
  os_unfair_lock_lock(a2 + 8);
  sub_10043B620(&a2[4]);
  os_unfair_lock_unlock(a2 + 8);

  a5(sub_10043B640, a2);
}

uint64_t sub_100439ED8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), os_unfair_lock_s *))
{
  os_unfair_lock_lock(a2 + 8);
  sub_10043B288(&a2[4]);
  os_unfair_lock_unlock(a2 + 8);

  a5(sub_10043B2A8, a2);
}

double sub_100439F74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100844488, qword_1006E2B00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if (*a1)
  {
    sub_10001FE8C(*a1, a1[1]);
  }

  (*(v9 + 16))(v12, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10043B73C;
  *(v16 + 24) = v14;
  *a1 = sub_10043B878;
  a1[1] = v16;

  return result;
}

double sub_10043A118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100844470, &qword_1006E2AD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if (*a1)
  {
    sub_10001FE8C(*a1, a1[1]);
  }

  (*(v9 + 16))(v12, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10043B314;
  *(v16 + 24) = v14;
  *a1 = sub_10043B874;
  a1[1] = v16;

  return result;
}

uint64_t sub_10043A2BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v14 = a1;
    sub_100007224(&qword_100844488, qword_1006E2B00);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v20 = a2;
      swift_errorRetain();
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      v16 = v11;
      _StringGuts.grow(_:)(38);

      v20 = 0x75662072656E6E49;
      v21 = 0xEF206E6F6974636ELL;
      v17._countAndFlagsBits = a4;
      v17._object = a5;
      String.append(_:)(v17);
      v18._object = 0x8000000100716900;
      v18._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v18);
      (*(v10 + 104))(v13, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v16);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043B470(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v19 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v20 = v19;
    }

    sub_100007224(&qword_100844488, qword_1006E2B00);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13 >> 60 == 15)
  {
    if (a3)
    {
      v21 = a3;
      swift_errorRetain();
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      v17 = v12;
      _StringGuts.grow(_:)(38);

      v21 = 0x75662072656E6E49;
      v22 = 0xEF206E6F6974636ELL;
      v18._countAndFlagsBits = a5;
      v18._object = a6;
      String.append(_:)(v18);
      v19._object = 0x8000000100716900;
      v19._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v19);
      (*(v11 + 104))(v15, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043B470(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v20 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v21 = v20;
    }

    sub_100007224(&qword_100844470, &qword_1006E2AD8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v21 = a1;
    v22 = v13;
    sub_10000B8B8(a1, v13);
    sub_100007224(&qword_100844470, &qword_1006E2AD8);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10043A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 32));
  v6 = (a3 + 16);
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *(a3 + 24);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10043B8B0;
    *(v10 + 24) = v9;
    *v6 = 0;
    *(a3 + 24) = 0;
    os_unfair_lock_unlock((a3 + 32));

    v11 = *(v10 + 16);
    v12 = a1;
    v11(&v12, a2);
    sub_10001FE8C(sub_10043B878, v10);

    sub_10001FE8C(sub_10043B878, v10);
  }

  else
  {
    *v6 = 0;
    *(a3 + 24) = 0;

    os_unfair_lock_unlock((a3 + 32));
  }
}

void sub_10043A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 32));
  v8 = (a4 + 16);
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = *(a4 + 24);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10043B8AC;
    *(v12 + 24) = v11;
    *v8 = 0;
    *(a4 + 24) = 0;
    os_unfair_lock_unlock((a4 + 32));

    v13 = *(v12 + 16);
    v14[0] = a1;
    v14[1] = a2;
    v13(v14, a3);
    sub_10001FE8C(sub_10043B874, v12);

    sub_10001FE8C(sub_10043B874, v12);
  }

  else
  {
    *v8 = 0;
    *(a4 + 24) = 0;

    os_unfair_lock_unlock((a4 + 32));
  }
}

void sub_10043AA94(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10043B5E8;
    *(v6 + 24) = v5;
    *v3 = 0;
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 32));
    type metadata accessor for CancellationError();
    sub_10043B470(&qword_100844468, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v7 = swift_allocError();

    CancellationError.init()();
    v8 = *(v6 + 16);
    v9 = 0;
    v8(&v9, v7);
    sub_10001FE8C(sub_10043B5EC, v6);

    sub_10001FE8C(sub_10043B5EC, v6);
  }

  else
  {
    *v3 = 0;
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 32));
  }
}

void sub_10043AC30(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10043B268;
    *(v6 + 24) = v5;
    *v3 = 0;
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 32));
    type metadata accessor for CancellationError();
    sub_10043B470(&qword_100844468, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v7 = swift_allocError();

    CancellationError.init()();
    v8 = *(v6 + 16);
    v9 = xmmword_1006BF650;
    v8(&v9, v7);
    sub_10001FE8C(sub_10043B26C, v6);

    sub_10001FE8C(sub_10043B26C, v6);
  }

  else
  {
    *v3 = 0;
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 32));
  }
}

uint64_t sub_10043ADD4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10043AE3C()
{
  result = qword_100844450;
  if (!qword_100844450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844450);
  }

  return result;
}

uint64_t sub_10043AE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100439B80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10043AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_10043AF88, 0, 0);
}

uint64_t sub_10043AF88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_10043B59C();
  *v6 = v0;
  v6[1] = sub_10043B080;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, v8, v9, sub_10043B5F0, v4, v7);
}

uint64_t sub_10043B080()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10043B1CC, 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10043B1CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043B230()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10043B2BC(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = *a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t sub_10043B314(uint64_t *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100844470, &qword_1006E2AD8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;
  v11 = a1[1];

  return sub_10043A55C(v10, v11, a2, v2 + v6, v8, v9);
}

uint64_t sub_10043B3D0(__int128 *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *a2;
  v6 = *a1;
  return v3(&v6, v4);
}

uint64_t sub_10043B410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t sub_10043B44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10043B470(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10043B4B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10043AF60(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_10043B59C()
{
  result = qword_100844480;
  if (!qword_100844480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100844480);
  }

  return result;
}

uint64_t sub_10043B64C(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v6 = a2;
  v7 = v4;
  return v3(&v7, &v6);
}

uint64_t sub_10043B6A0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100007224(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_10043B73C(void **a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100844488, qword_1006E2B00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;

  return sub_10043A2BC(v10, a2, v2 + v6, v8, v9);
}

uint64_t sub_10043B7F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *a2;
  v6 = *a1;
  return v3(&v6, v4);
}

uint64_t sub_10043B838(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_10043B8B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100843BE8, &qword_1006E1F88);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for ASCABLEAuthenticator();
  v17 = *(v14 + 16);
  v37 = a1;
  v17(v16, a1, v13);
  v18 = v35;
  v19 = ASCABLEAuthenticator.__allocating_init(caBLEURL:)();
  if (v18)
  {
    (*(v14 + 8))(v37, v13);
    v20 = type metadata accessor for WebPresentmentCABLEAuthenticator(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[14] = v19;
    sub_100007224(&qword_100843AE0, &qword_1006E1EC0);
    v35 = 0;
    v22 = v33;
    v21 = v34;
    (*(v33 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v34);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v22 + 8))(v6, v21);
    (*(v29 + 32))(v2 + OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionStream, v12, v30);
    (*(v31 + 32))(v2 + OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionContinuation, v9, v32);
    v23 = type metadata accessor for WebPresentmentCABLEAuthenticator(0);
    v36.receiver = v2;
    v36.super_class = v23;
    v24 = objc_msgSendSuper2(&v36, "init");
    v25 = v24[14];
    v20 = v24;
    v26 = v25;
    dispatch thunk of ASCABLEAuthenticator.delegate.setter();

    (*(v14 + 8))(v37, v13);
  }

  return v20;
}

uint64_t sub_10043BCEC(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  dispatch thunk of ASCABLEAuthenticator.startWithCompletionHandler(_:)();
}

uint64_t sub_10043BE38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v4);
  if (a1)
  {
    v11 = a1;
    v7 = a1;
    sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      (*(v6 + 104))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043CF4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v9 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v11 = v9;
    swift_errorRetain();
    sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043C05C()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_100843BA0, &qword_1006E1F28);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10043C184, v0, 0);
}

uint64_t sub_10043C184()
{
  v1 = v0[5];
  sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  AsyncStream.makeAsyncIterator()();
  v2 = sub_10043CF4C(&qword_1008444D8, type metadata accessor for WebPresentmentCABLEAuthenticator, &unk_1006E2BB8);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10043C29C;
  v4 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v1, v2, v4);
}

uint64_t sub_10043C29C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10043C3AC, v1, 0);
}

uint64_t sub_10043C3AC()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v7 + 104))(v5, enum case for DIPError.Code.webPresentmentCancelled(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043CF4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 32) = *(v0 + 16);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v4);
LABEL_5:

    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  (*(v3 + 8))(*(v0 + 88), *(v0 + 72));

  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_10043C5D0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100843BE0, &qword_1006E1F80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  if (a1)
  {
    swift_willThrow();
  }

  v7[2] = a1;
  v8 = a1 != 0;
  swift_errorRetain();
  sub_10001F6D4(a1, a1 != 0);
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  AsyncStream.Continuation.finish()();
  return sub_10001F6B4(a1, a1 != 0);
}

uint64_t sub_10043C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10043C750, a4, 0);
}

uint64_t sub_10043C750()
{
  sub_10043C5D0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043C8F8()
{
  v1 = OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionStream;
  v2 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionContinuation;
  v4 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for WebPresentmentCABLEAuthenticator(uint64_t a1)
{
  result = qword_1008444C8;
  if (!qword_1008444C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043CA24(uint64_t a1)
{
  sub_100410808(319, &qword_100843AD8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_100410808(319, &unk_100843AE8, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10043CB5C()
{
  v1 = *(v0 + 24);
  v2 = sub_10043CF4C(&qword_1008444D8, type metadata accessor for WebPresentmentCABLEAuthenticator, &unk_1006E2BB8);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = sub_10043CDE0();
  *v3 = v0;
  v3[1] = sub_10043CC78;
  v5 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v2, 0x29287472617473, 0xE700000000000000, sub_10043CDD8, v5, v4);
}

uint64_t sub_10043CC78()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10043CDC0;
  }

  else
  {
    v4 = sub_10043CDA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

unint64_t sub_10043CDE0()
{
  result = qword_1008444E0;
  if (!qword_1008444E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008444E0);
  }

  return result;
}

uint64_t sub_10043CE2C()
{
  v1 = sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10043CEC0(void *a1, uint64_t a2)
{
  sub_100007224(&qword_1008444E8, &unk_1006E2BE0);

  return sub_10043BE38(a1, a2);
}

uint64_t sub_10043CF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10043CF94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10043CFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_10043C730(a1, v4, v5, v7, v6);
}

void *sub_10043D09C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v11);
  v42 = &v35 - v12;
  v39 = type metadata accessor for ASCABLERequestType();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5[14] = 0;
  sub_100020260(a1, (v5 + 15));
  v5[20] = a2;
  v5[21] = a3;
  v37 = a2;
  v38 = a3;
  v16 = a4;
  v36 = a4;
  v5[22] = a4;
  v5[23] = a5;
  v17 = a5;
  v18 = swift_allocBox();
  v20 = v19;
  v41 = v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v40 = v22 + 56;
  v24 = v20;
  v25 = v21;
  v23(v24, 1, 1);
  v5[24] = sub_10043E8EC;
  v5[25] = v18;
  sub_10001F640(a2, a3);
  sub_10001F640(v16, v17);
  v26 = type metadata accessor for WebPresentmentCABLEClient();
  v44.receiver = v5;
  v44.super_class = v26;

  v27 = objc_msgSendSuper2(&v44, "init");
  type metadata accessor for ASCABLEClient();
  (*(v13 + 104))(v15, enum case for ASCABLERequestType.digitalCredentialPresentation(_:), v39);
  v28 = v27;
  v29 = ASCABLEClient.__allocating_init(delegate:requestType:)();
  v30 = v28[14];
  v28[14] = v29;
  v31 = v29;

  v32 = v42;
  dispatch thunk of ASCABLEClient.qrCodeURL.getter();

  sub_10001FE8C(v36, v17);
  sub_10001FE8C(v37, v38);
  sub_10000BB78(v43);
  (v23)(v32, 0, 1, v25);
  v33 = v41;
  swift_beginAccess();
  sub_10000BDA8(v32, v33);

  return v28;
}

uint64_t sub_10043D388@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_10043E8F4(v6, v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043D4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10043D4CC, a2, 0);
}

uint64_t sub_10043D4CC(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  v6 = sub_10043E8A4(&qword_100844518, a2, type metadata accessor for WebPresentmentCABLEClient, &unk_1006E2C98);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v2[7] = v8;
  v9 = sub_100007224(&unk_100844520, &unk_1006E2CD8);
  *v8 = v2;
  v8[1] = sub_1003F9AAC;
  v10 = v2[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v5, v6, 0xD000000000000025, 0x8000000100716C20, sub_10043E778, v7, v9);
}

void sub_10043D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007224(&unk_100844530, &unk_1006E2CF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(a2 + 112);
  if (v10)
  {
    (*(v7 + 16))(v9, a1, v6);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    (*(v7 + 32))(v12 + v11, v9, v6);
    v13 = v10;
    dispatch thunk of ASCABLEClient.performAuthenticationOperation(_:forRelyingPartyIdentifier:completionHandler:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043D79C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DIPError.Code();
  v4 = __chkstk_darwin(a1);
  if (v4)
  {
    v10 = v4;
    swift_unknownObjectRetain();
    sub_100007224(&unk_100844530, &unk_1006E2CF8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v8 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v10 = v8;
    swift_errorRetain();
    sub_100007224(&unk_100844530, &unk_1006E2CF8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043D9C0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1003E653C(0, 0, v4, &unk_1006E2CF0, v6);
}

void sub_10043DAEC()
{
  v1 = *(*(v0 + 16) + 112);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of ASCABLEClient.cancelIfNecessary()();

    v3 = *(v0 + 8);

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043DB84()
{
  v1 = *(*(v0 + 16) + 160);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10043DC34()
{
  v1 = *(*(v0 + 16) + 176);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10043DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_1003E653C(0, 0, v9, a5, v11);
}

uint64_t sub_10043DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_10043DE58;

  return sub_10043EAC8();
}

uint64_t sub_10043DE58(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_10043E02C;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_10043DF8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10043DF8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  sub_10000B8B8(v1, v2);
  v3(v1, v2, 0);
  sub_10000B90C(v1, v2);
  sub_10000B90C(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10043E02C()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

void sub_10043E22C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10043E2F8()
{
  sub_10000BB78((v0 + 120));
  sub_10001FE8C(*(v0 + 160), *(v0 + 168));
  sub_10001FE8C(*(v0 + 176), *(v0 + 184));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10043E374(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10043E398, v2, 0);
}

uint64_t sub_10043E398()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_10043E8A4(&qword_100844518, v5, type metadata accessor for WebPresentmentCABLEClient, &unk_1006E2C98);
  v6 = swift_task_alloc();
  v0[7] = v6;
  sub_100007224(&unk_100844520, &unk_1006E2CD8);
  *v6 = v0;
  v6[1] = sub_10043E4E0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1006E2CC8);
}

uint64_t sub_10043E4E0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1003F9BE8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10043CDA4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10043E604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10043D4AC(a1, v4, v5, v6);
}

uint64_t sub_10043E6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10043DACC(a1, v4, v5, v6);
}

uint64_t sub_10043E784()
{
  v1 = sub_100007224(&unk_100844530, &unk_1006E2CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10043E818(uint64_t a1, uint64_t a2)
{
  sub_100007224(&unk_100844530, &unk_1006E2CF8);

  return sub_10043D79C(a1, a2);
}

uint64_t sub_10043E8A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10043E8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043E964()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043E9A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10043E9F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_10043DDC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10043EAC8()
{
  v1[16] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for WebPresentmentRequest.PresentmentProtocol();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for WebPresentmentRequest();
  v1[36] = v6;
  v1[37] = *(v6 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10043ED7C, v0, 0);
}

uint64_t sub_10043ED7C()
{
  v1 = *(v0 + 128);
  v2 = v1[18];
  v3 = v1[19];
  sub_10000BA08(v1 + 15, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_10043EEA4;

  return v6(v2, v3);
}

uint64_t sub_10043EEA4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1004405BC;
  }

  else
  {
    v4 = sub_10043EFD0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10043EFD0()
{
  v1 = v0[16];
  v2 = v1[18];
  v3 = v1[19];
  sub_10000BA08(v1 + 15, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_10043F100;
  v5 = v0[42];

  return v7(v5, v2, v3);
}

uint64_t sub_10043F100()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100440900;
  }

  else
  {
    v4 = sub_10043F22C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10043F22C(uint64_t a1)
{
  v165 = v1;
  v2 = v1[41];
  v3 = v1[42];
  v5 = v1[39];
  v4 = v1[40];
  v6 = v1[36];
  v7 = v1[37];
  defaultLogger()();
  v8 = *(v7 + 16);
  v8(v2, v3, v6);
  v8(v4, v3, v6);
  v151 = v8;
  v8(v5, v3, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[41];
  v13 = v1[39];
  v15 = v1[36];
  v14 = v1[37];
  v16 = v1[35];
  v17 = v1[29];
  v156 = v1[28];
  v161 = v1[40];
  if (v11)
  {
    v132 = v1[39];
    v139 = v1[29];
    v144 = v1[35];
    v18 = v1[23];
    log = v9;
    v19 = v1[21];
    v131 = v1[20];
    v133 = v10;
    v20 = swift_slowAlloc();
    v164[0] = swift_slowAlloc();
    *v20 = 136315650;
    WebPresentmentRequest.presentmentProtocol.getter();
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = *(v14 + 8);
    v24(v12, v15);
    v25 = sub_100141FE4(v21, v23, v164);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    WebPresentmentRequest.originatingURL.getter();
    v26 = URL.absoluteString.getter();
    v28 = v27;
    (*(v19 + 8))(v18, v131);
    v24(v161, v15);
    v29 = sub_100141FE4(v26, v28, v164);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    v30 = WebPresentmentRequest.requestData.getter();
    v32 = v31;
    v33 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v30, v32);
    v162 = v24;
    v24(v132, v15);
    v34 = sub_100141FE4(v33._countAndFlagsBits, v33._object, v164);

    *(v20 + 24) = v34;
    _os_log_impl(&_mh_execute_header, log, v133, "Received released request: presentmentProtocol=%s originatingURL=%s requestData=%s", v20, 0x20u);
    swift_arrayDestroy();

    v35 = *(v139 + 8);
    v35(v144, v156);
  }

  else
  {

    v36 = *(v14 + 8);
    v36(v13, v15);
    v36(v161, v15);
    v162 = v36;
    v36(v12, v15);
    v35 = *(v17 + 8);
    v35(v16, v156);
  }

  v38 = v1[21];
  v37 = v1[22];
  v39 = v1[20];
  WebPresentmentRequest.originatingURL.getter();
  v40 = URL.serializedOrigin.getter();
  v42 = v41;
  v43 = *(v38 + 8);
  v43(v37, v39);
  v44 = v1[42];
  if (!v42)
  {
    v55 = v1[38];
    v56 = v1[36];
    defaultLogger()();
    v151(v55, v44, v56);
    v57 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v57, v145);
    v59 = v1[38];
    v147 = v1[36];
    v60 = v1[31];
    v61 = v1[28];
    if (v58)
    {
      v140 = v1[28];
      v62 = v1[23];
      v154 = v1[20];
      v158 = v35;
      v63 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v164[0] = v134;
      *v63 = 136315138;
      loga = v60;
      WebPresentmentRequest.originatingURL.getter();
      v64 = URL.absoluteString.getter();
      v66 = v65;
      v43(v62, v154);
      v67 = v162;
      v162(v59, v147);
      v68 = sub_100141FE4(v64, v66, v164);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v57, v145, "Failed to get serializedOrigin from request's originatingURL %s", v63, 0xCu);
      sub_10000BB78(v134);

      v158(loga, v140);
    }

    else
    {

      v67 = v162;
      v162(v59, v147);
      v35(v60, v61);
    }

    v74 = v1[42];
    v75 = v1[36];
    (*(v1[18] + 104))(v1[19], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v1[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v67(v74, v75);
    goto LABEL_13;
  }

  v46 = v1[25];
  v45 = v1[26];
  v47 = v1[24];
  WebPresentmentRequest.presentmentProtocol.getter();
  if ((*(v46 + 88))(v45, v47) != enum case for WebPresentmentRequest.PresentmentProtocol.iso18013RequestForwarding(_:))
  {
    v148 = v1[42];
    v69 = v1[36];
    v70 = v1[25];
    v159 = v1[26];
    v155 = v1[24];
    v72 = v1[18];
    v71 = v1[19];
    v73 = v1[17];

    (*(v72 + 104))(v71, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v73);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v162(v148, v69);
    (*(v70 + 8))(v159, v155);
    goto LABEL_13;
  }

  v152 = v40;
  v48 = v1[46];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v49 = WebPresentmentRequest.requestData.getter();
  v51 = v50;
  sub_100440C44();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v48)
  {
    v157 = v1[42];
    v153 = v1[36];
    v53 = v1[18];
    v52 = v1[19];
    v54 = v1[17];

    sub_10000B90C(v49, v51);

    (*(v53 + 104))(v52, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v54);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v162(v157, v153);
LABEL_13:
    defaultLogger()();
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v80;
      *v79 = v80;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to encode digital credential JSON command for authenticator: %@", v78, 0xCu);
      sub_1004385F4(v79);
    }

    v81 = v1[30];
    v82 = v1[28];
    v83 = v1[29];
    v84 = v1[18];
    v85 = v1[19];
    v86 = v1[17];

    (*(v83 + 8))(v81, v82);
    (*(v84 + 104))(v85, enum case for DIPError.Code.internalError(_:), v86);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v87 = v1[1];

    return v87();
  }

  v160 = v35;
  sub_10000B90C(v49, v51);

  v89 = v1[2];
  v90 = v1[3];
  v91 = v1[4];
  v92 = v1[5];
  defaultLogger()();
  sub_10000B8B8(v89, v90);
  sub_10000B8B8(v91, v92);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  sub_10000B90C(v89, v90);
  sub_10000B90C(v91, v92);
  v149 = v94;
  v95 = os_log_type_enabled(v93, v94);
  v96 = v1[34];
  v97 = v1[28];
  if (v95)
  {
    v98 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v164[0] = v141;
    *v98 = 136315138;
    v1[6] = v89;
    v1[7] = v90;
    v1[8] = v91;
    v1[9] = v92;
    sub_10000B8B8(v89, v90);
    sub_10000B8B8(v91, v92);
    v99 = String.init<A>(describing:)();
    v135 = v96;
    v101 = v89;
    v102 = sub_100141FE4(v99, v100, v164);

    *(v98 + 4) = v102;
    v89 = v101;
    _os_log_impl(&_mh_execute_header, v93, v149, "Decoded ISO18013Request from requestData: %s", v98, 0xCu);
    sub_10000BB78(v141);

    v103 = v135;
    v104 = v97;
  }

  else
  {

    v103 = v96;
    v104 = v97;
  }

  v160(v103, v104);
  sub_100007224(&qword_100842920, &qword_1006DFA78);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1006BF520;
  *(v105 + 32) = v89;
  *(v105 + 40) = v90;
  *(v105 + 48) = v91;
  *(v105 + 56) = v92;
  defaultLogger()();

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();

  v108 = os_log_type_enabled(v106, v107);
  v109 = v1[33];
  v110 = v1[28];
  if (v108)
  {
    v111 = swift_slowAlloc();
    v150 = v110;
    v112 = swift_slowAlloc();
    v164[0] = v112;
    *v111 = 136315138;
    v113 = v152;
    v1[13] = v152;
    v1[14] = v42;
    v1[15] = v105;

    v114 = String.init<A>(describing:)();
    v142 = v109;
    v116 = sub_100141FE4(v114, v115, v164);

    *(v111 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v106, v107, "Constructed caBLE command: %s", v111, 0xCu);
    sub_10000BB78(v112);

    v160(v142, v150);
    v117 = v162;
  }

  else
  {

    v160(v109, v110);
    v117 = v162;
    v113 = v152;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v1[10] = v113;
  v1[11] = v42;
  v1[12] = v105;
  sub_100440C98();
  v118 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v120 = v119;

  defaultLogger()();
  sub_10000B8B8(v118, v120);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.debug.getter();
  sub_10000B90C(v118, v120);
  v123 = os_log_type_enabled(v121, v122);
  v124 = v1[42];
  v143 = v1[32];
  v146 = v1[36];
  v125 = v1[28];
  if (v123)
  {
    v163 = v117;
    v126 = swift_slowAlloc();
    logb = v124;
    v127 = swift_slowAlloc();
    v164[0] = v127;
    *v126 = 136315138;
    v128 = Data.base64EncodedString(options:)(0);
    v129 = sub_100141FE4(v128._countAndFlagsBits, v128._object, v164);

    *(v126 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v121, v122, "Encoded caBLE command to JSON data %s", v126, 0xCu);
    sub_10000BB78(v127);

    v160(v143, v125);
    v163(logb, v146);
  }

  else
  {

    v160(v143, v125);
    v117(v124, v146);
  }

  v130 = v1[1];

  return v130(v118, v120);
}

uint64_t sub_1004405BC(uint64_t a1)
{
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to encode digital credential JSON command for authenticator: %@", v4, 0xCu);
    sub_1004385F4(v5);
  }

  v7 = v1[30];
  v8 = v1[28];
  v9 = v1[29];
  v10 = v1[18];
  v11 = v1[19];
  v12 = v1[17];

  (*(v9 + 8))(v7, v8);
  (*(v10 + 104))(v11, enum case for DIPError.Code.internalError(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_100440900(uint64_t a1)
{
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to encode digital credential JSON command for authenticator: %@", v4, 0xCu);
    sub_1004385F4(v5);
  }

  v7 = v1[30];
  v8 = v1[28];
  v9 = v1[29];
  v10 = v1[18];
  v11 = v1[19];
  v12 = v1[17];

  (*(v9 + 8))(v7, v8);
  (*(v10 + 104))(v11, enum case for DIPError.Code.internalError(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v1[1];

  return v13();
}

unint64_t sub_100440C44()
{
  result = qword_100844550;
  if (!qword_100844550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844550);
  }

  return result;
}

unint64_t sub_100440C98()
{
  result = qword_100844560;
  if (!qword_100844560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844560);
  }

  return result;
}

uint64_t sub_100440CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10043DC14(a1, v4, v5, v6);
}

uint64_t sub_100440DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10043DB64(a1, v4, v5, v6);
}

uint64_t sub_100440E84(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008447D8, &qword_1006E43B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_100446640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1004466E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100441138(uint64_t a1)
{
  v2 = sub_100446640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100441174(uint64_t a1)
{
  v2 = sub_100446640();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004411B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100443874(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_100441204(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_1000C31A0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_1000C31A0(v2, v3, v4, v5);
}

void sub_1004412E8(uint64_t a1@<X8>)
{
  strcpy(a1, "org-iso-mdoc");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1004413BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = sub_100007224(&qword_1008446B0, &qword_1006E3158);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  sub_10000BA08(a1, a1[3]);
  sub_100445890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v10 = v12[0];
    v14 = 1;
    sub_10044598C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[1] = v10;
    v13 = 2;
    sub_1004459E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

BOOL sub_100441580(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  return sub_1000C31A0(*a1, a1[1], *a2, a2[1]) && sub_1000C31A0(v2, v3, v4, v5);
}

uint64_t sub_1004415E8()
{
  v1 = 0x5474736575716572;
  if (*v0 != 1)
  {
    v1 = 0x74736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_100441648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004439E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100441670(uint64_t a1)
{
  v2 = sub_100445890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004416AC(uint64_t a1)
{
  v2 = sub_100445890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004416E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100443AFC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100441738(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10014DF40(v2, v3);
}

uint64_t sub_100441834@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FBD30, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10044188C(uint64_t a1)
{
  v2 = sub_100444328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004418C8(uint64_t a1)
{
  v2 = sub_100444328();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100441904(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008445A8, &qword_1006E30F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_100444328();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100007224(&qword_1008445B0, &qword_1006E30F8);
  sub_1004444B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100441A60@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100443D24(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100441AB0(uint64_t a1)
{
  String.hash(into:)();
}

void sub_100441B28(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (!*v1)
  {
    v2 = 0x6C6F636F746F7270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100441B60()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x6C6F636F746F7270;
  }
}

uint64_t sub_100441BA0(uint64_t a1)
{
  v2 = sub_10044476C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100441BDC(uint64_t a1)
{
  v2 = sub_10044476C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100441C18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v9 = sub_100007224(&qword_1008445E0, &qword_1006E3108);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000BA08(a1, a1[3]);
  sub_10044476C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  sub_100444814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a2;
    v17 = a3;
    v18 = v14;
    v19 = v15;
    v20 = 1;
    sub_100410DA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

void *sub_100441DB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100444590(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100441E04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974707972636E65;
  }

  else
  {
    v3 = 0x6552656369766564;
  }

  if (v2)
  {
    v4 = 0xED00007473657571;
  }

  else
  {
    v4 = 0xEE006F666E496E6FLL;
  }

  if (*a2)
  {
    v5 = 0x6974707972636E65;
  }

  else
  {
    v5 = 0x6552656369766564;
  }

  if (*a2)
  {
    v6 = 0xEE006F666E496E6FLL;
  }

  else
  {
    v6 = 0xED00007473657571;
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

Swift::Int sub_100441EC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100441F60(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100441FE8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10044208C(uint64_t *a1@<X8>)
{
  v2 = 0x6552656369766564;
  if (*v1)
  {
    v2 = 0x6974707972636E65;
  }

  v3 = 0xED00007473657571;
  if (*v1)
  {
    v3 = 0xEE006F666E496E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004420E4()
{
  if (*v0)
  {
    return 0x6974707972636E65;
  }

  else
  {
    return 0x6552656369766564;
  }
}

uint64_t sub_100442144(uint64_t a1)
{
  v2 = sub_100444BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442180(uint64_t a1)
{
  v2 = sub_100444BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004421BC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = a5;
  v19 = a4;
  v8 = type metadata accessor for Base64URLEncodedString();
  v24 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100007224(&qword_100844608, &qword_1006E3118);
  v23 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_10000BA08(a1, a1[3]);
  sub_100444BC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000B8B8(a2, a3);
  Base64URLEncodedString.init(dataValue:)();
  v26 = 0;
  sub_100444C18(&qword_100844610, &protocol conformance descriptor for Base64URLEncodedString);
  v16 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    (*(v24 + 8))(v12, v8);
  }

  else
  {
    v24 = *(v24 + 8);
    (v24)(v12, v8);
    sub_10000B8B8(v19, v21);
    v18 = v20;
    Base64URLEncodedString.init(dataValue:)();
    v25 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (v24)(v18, v8);
  }

  return (*(v23 + 8))(v15, v13);
}

uint64_t sub_1004424C8(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844828, &qword_1006E4730);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_100446A5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v15 = a3;
  v16 = a4 & 1;
  sub_100410C30(a2, a3, a4 & 1);
  sub_100446AB0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100410B88(v14, v15, v16);
  return (*(v9 + 8))(v11, v8);
}

char *sub_100442640@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_100444868(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100442690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C617469676964 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100442718(uint64_t a1)
{
  v2 = sub_100446A5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442754(uint64_t a1)
{
  v2 = sub_100446A5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100442790@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100444C5C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1004427E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if ((v8 & 1) == 0)
    {
      return sub_1000C31A0(v4, v5, v6, v7);
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1004428F8(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844788, &qword_1006E43A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_100446448();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v15 = a3;
  v16 = a4 & 1;
  sub_100410C30(a2, a3, a4 & 1);
  sub_10044649C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100410B88(v14, v15, v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100442B20(uint64_t a1)
{
  v2 = sub_100446448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442B5C(uint64_t a1)
{
  v2 = sub_100446448();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100442B98@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100444DD8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_100442BEC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v9 = v4 == v6 && v5 == v7;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return (v8 & 1) == 0 && sub_1000C31A0(v4, v5, v6, v7);
}

uint64_t sub_100442C60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_100442CFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100442D74(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100442DD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100442E58(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100442E8C()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_100442EC8(uint64_t a1)
{
  v2 = sub_100445210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442F04(uint64_t a1)
{
  v2 = sub_100445210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100442F40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844638, &qword_1006E3128);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_100445210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[2] = a2;
  v13[3] = a3;
  if (a4)
  {
    v14 = 1;
    sub_10044530C();
  }

  else
  {
    v14 = 0;
    sub_100445360();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

void *sub_1004430C4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100444F54(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100443118(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x6C6F636F746F7270;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x6C6F636F746F7270;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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

Swift::Int sub_1004431B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100443234(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004432C4(uint64_t a1)
{
  v2 = sub_100445740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443300(uint64_t a1)
{
  v2 = sub_100445740();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100443354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004433D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100443448@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FBF18, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1004434A0(uint64_t a1)
{
  v2 = sub_1004457E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004434DC(uint64_t a1)
{
  v2 = sub_1004457E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443518(void *a1, uint64_t a2, unint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v20 = type metadata accessor for Base64URLEncodedString();
  v16 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007224(&qword_100844678, &qword_1006E3140);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v16 - v7;
  v9 = sub_100007224(&qword_100844680, &qword_1006E3148);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000BA08(a1, a1[3]);
  sub_100445740();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  sub_10044583C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v13 = v16;
    v22 = 1;
    sub_1004457E8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10000B8B8(v17, v18);
    Base64URLEncodedString.init(dataValue:)();
    sub_100444C18(&qword_100844610, &protocol conformance descriptor for Base64URLEncodedString);
    v14 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v13 + 8))(v6, v14);
    (*(v19 + 8))(v8, v21);
  }

  return (*(v10 + 8))(v12, v9);
}

void *sub_10044382C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004453B4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_100443874(void *a1)
{
  v3 = sub_100007224(&qword_1008447C0, &qword_1006E43A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_100446640();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100446694();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BB78(a1);
  }

  return v7;
}

uint64_t sub_1004439E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100443AFC(void *a1)
{
  v3 = sub_100007224(&qword_100844690, &qword_1006E3150);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100445890();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[30] = 1;
    sub_1004458E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[15] = 2;
    sub_100445938();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_100443D24(void *a1)
{
  v46 = type metadata accessor for Logger();
  v58 = *(v46 - 8);
  __chkstk_darwin(v46);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100844570, &qword_1006E30C8);
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  v7 = sub_100007224(&qword_100844578, &qword_1006E30D0);
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  sub_10000BA08(a1, a1[3]);
  sub_100444328();
  v10 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_10000BB78(a1);
  }

  v51 = v6;
  v45 = v3;
  sub_100007224(&qword_100844588, &qword_1006E30D8);
  sub_10044437C();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39[1] = 0;
  v40 = v9;
  v41 = v7;
  v42 = a1;
  v13 = v55;
  v14 = *(v55 + 16);
  v15 = v52;
  if (v14)
  {
    v16 = 0;
    v47 = (v58 + 8);
    v43 = _swiftEmptyArrayStorage;
    v48 = v14;
    v39[0] = v14 - 1;
    *&v12 = 134218242;
    v44 = v12;
    v18 = v45;
    v17 = v46;
    v19 = v51;
    v49 = v55;
    v50 = v4;
    while (v16 < *(v13 + 16))
    {
      v20 = sub_100007224(&qword_1008445A0, &unk_1006E30E0);
      v21 = *(v20 - 8);
      v58 = v16 + 1;
      v22 = *(v21 + 16);
      v23 = v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16;
      v24 = *(v4 + 48);
      *v19 = v16;
      v22(v19 + v24, v23, v20);
      FailableDecodable.result.getter();
      v53 = v55;
      v54 = v56;
      if (v57 == 1)
      {
        v25 = v55;
        defaultLogger()();
        swift_errorRetain();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        v28 = *(&v53 + 1);
        v29 = v54;
        sub_100444464(v25, *(&v53 + 1), v54, *(&v54 + 1), 1);
        if (os_log_type_enabled(v26, v27))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = v44;
          *(v30 + 4) = v16;
          *(v30 + 12) = 2112;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v32;
          *v31 = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "DigitalRequest at index %ld failed to decode: %@", v30, 0x16u);
          sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);
          v17 = v46;

          v18 = v45;

          sub_100444464(v25, v28, v29, *(&v29 + 1), 1);
        }

        else
        {
          sub_100444464(v25, v28, v29, *(&v29 + 1), 1);
        }

        (*v47)(v18, v17);
        v19 = v51;
        result = sub_10000BE18(v51, &qword_100844570, &qword_1006E30C8);
        v16 = v58;
        v13 = v49;
        v4 = v50;
        v15 = v52;
        if (v48 == v58)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000BE18(v19, &qword_100844570, &qword_1006E30C8);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C6668(0, *(v43 + 2) + 1, 1, v43);
          v43 = result;
        }

        v34 = *(v43 + 2);
        v33 = *(v43 + 3);
        v35 = v54;
        if (v34 >= v33 >> 1)
        {
          result = sub_1003C6668((v33 > 1), v34 + 1, 1, v43);
          v35 = v54;
          v43 = result;
        }

        v36 = v43;
        *(v43 + 2) = v34 + 1;
        v37 = &v36[32 * v34];
        *(v37 + 3) = v35;
        *(v37 + 2) = v53;
        v38 = v39[0] == v16;
        v16 = v58;
        if (v38)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
LABEL_20:

    (*(v15 + 8))(v40, v41);
    sub_10000BB78(v42);
    return v43;
  }

  return result;
}

unint64_t sub_100444328()
{
  result = qword_100844580;
  if (!qword_100844580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844580);
  }

  return result;
}

unint64_t sub_10044437C()
{
  result = qword_100844590;
  if (!qword_100844590)
  {
    sub_10000B870(&qword_100844588, &qword_1006E30D8);
    sub_100444400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844590);
  }

  return result;
}

unint64_t sub_100444400()
{
  result = qword_100844598;
  if (!qword_100844598)
  {
    sub_10000B870(&qword_1008445A0, &unk_1006E30E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844598);
  }

  return result;
}

uint64_t sub_100444464(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_10000B90C(a1, a2);

    return sub_10000B90C(a3, a4);
  }
}

unint64_t sub_1004444B8()
{
  result = qword_1008445B8;
  if (!qword_1008445B8)
  {
    sub_10000B870(&qword_1008445B0, &qword_1006E30F8);
    sub_10044453C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445B8);
  }

  return result;
}

unint64_t sub_10044453C()
{
  result = qword_1008445C0;
  if (!qword_1008445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445C0);
  }

  return result;
}

void *sub_100444590(void *a1)
{
  v3 = sub_100007224(&qword_1008445C8, &qword_1006E3100);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000BA08(a1, a1[3]);
  sub_10044476C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v10) = 0;
    sub_1004447C0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[15] = 1;
    sub_100440C44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  sub_10000BB78(a1);
  return v7;
}

unint64_t sub_10044476C()
{
  result = qword_1008445D0;
  if (!qword_1008445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445D0);
  }

  return result;
}

unint64_t sub_1004447C0()
{
  result = qword_1008445D8;
  if (!qword_1008445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445D8);
  }

  return result;
}

unint64_t sub_100444814()
{
  result = qword_1008445E8;
  if (!qword_1008445E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445E8);
  }

  return result;
}

char *sub_100444868(void *a1)
{
  v25 = type metadata accessor for Base64URLEncodedString();
  v23 = *(v25 - 8);
  v3 = __chkstk_darwin(v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v24 = sub_100007224(&qword_1008445F0, &qword_1006E3110);
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v20 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_100444BC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v22 = v8;
    v11 = v23;
    v27 = 0;
    sub_100444C18(&qword_100844600, &protocol conformance descriptor for Base64URLEncodedString);
    v12 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = Base64URLEncodedString.dataValue.getter();
    v20 = v15;
    v21 = v14;
    v23 = v11[1];
    (v23)(v7, v25);
    v26 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = Base64URLEncodedString.dataValue.getter();
    v18 = v17;
    (v23)(v5, v25);
    (*(v22 + 8))(v10, v12);
    v19 = v20;
    v5 = v21;
    sub_10000B8B8(v21, v20);
    sub_10000B8B8(v16, v18);
    sub_10000BB78(a1);
    sub_10000B90C(v5, v19);
    sub_10000B90C(v16, v18);
  }

  return v5;
}

unint64_t sub_100444BC4()
{
  result = qword_1008445F8;
  if (!qword_1008445F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445F8);
  }

  return result;
}

uint64_t sub_100444C18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Base64URLEncodedString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100444C5C(void *a1)
{
  v3 = sub_100007224(&qword_100844840, &qword_1006E4738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_100446A5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100446B04();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BB78(a1);
  }

  return v7;
}

void *sub_100444DD8(void *a1)
{
  v3 = sub_100007224(&qword_1008447E8, &qword_1006E43B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_100446448();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10044673C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BB78(a1);
  }

  return v7;
}

void *sub_100444F54(void *a1)
{
  v3 = sub_100007224(&qword_100844618, &qword_1006E3120);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_100445210();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v8 = *(KeyedDecodingContainer.allKeys.getter() + 16);

  if (v8 != 1)
  {
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v14 = v12;
    sub_10000BA08(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    v7 = v14;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v11);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
LABEL_9:
    sub_10000BB78(a1);
    return v7;
  }

  result = KeyedDecodingContainer.allKeys.getter();
  if (result[2])
  {
    v10 = *(result + 32);

    if (v10)
    {
      v16 = 1;
      sub_100445264();
    }

    else
    {
      v16 = 0;
      sub_1004452B8();
    }

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v15;
    sub_10000BB78(a1);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_100445210()
{
  result = qword_100844620;
  if (!qword_100844620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844620);
  }

  return result;
}

unint64_t sub_100445264()
{
  result = qword_100844628;
  if (!qword_100844628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844628);
  }

  return result;
}

unint64_t sub_1004452B8()
{
  result = qword_100844630;
  if (!qword_100844630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844630);
  }

  return result;
}

unint64_t sub_10044530C()
{
  result = qword_100844640;
  if (!qword_100844640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844640);
  }

  return result;
}

unint64_t sub_100445360()
{
  result = qword_100844648;
  if (!qword_100844648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844648);
  }

  return result;
}

void *sub_1004453B4(void *a1)
{
  v19 = type metadata accessor for Base64URLEncodedString();
  v16 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100844650, &qword_1006E3130);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_100007224(&qword_100844658, &qword_1006E3138);
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = sub_10000BA08(a1, a1[3]);
  sub_100445740();
  v11 = v20;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v20 = a1;
    v12 = v18;
    v13 = v19;
    v22 = 0;
    sub_100445794();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = 1;
    sub_1004457E8();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100444C18(&qword_100844600, &protocol conformance descriptor for Base64URLEncodedString);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = Base64URLEncodedString.dataValue.getter();
    (*(v16 + 8))(v3, v13);
    (*(v17 + 8))(v6, v4);
    (*(v12 + 8))(v9, v7);
    sub_10000BB78(v20);
  }

  return v10;
}

unint64_t sub_100445740()
{
  result = qword_100844660;
  if (!qword_100844660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844660);
  }

  return result;
}

unint64_t sub_100445794()
{
  result = qword_100844668;
  if (!qword_100844668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844668);
  }

  return result;
}

unint64_t sub_1004457E8()
{
  result = qword_100844670;
  if (!qword_100844670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844670);
  }

  return result;
}

unint64_t sub_10044583C()
{
  result = qword_100844688;
  if (!qword_100844688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844688);
  }

  return result;
}

unint64_t sub_100445890()
{
  result = qword_100844698;
  if (!qword_100844698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844698);
  }

  return result;
}

unint64_t sub_1004458E4()
{
  result = qword_1008446A0;
  if (!qword_1008446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446A0);
  }

  return result;
}

unint64_t sub_100445938()
{
  result = qword_1008446A8;
  if (!qword_1008446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446A8);
  }

  return result;
}

unint64_t sub_10044598C()
{
  result = qword_1008446B8;
  if (!qword_1008446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446B8);
  }

  return result;
}

unint64_t sub_1004459E0()
{
  result = qword_1008446C0;
  if (!qword_1008446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446C0);
  }

  return result;
}

uint64_t sub_100445B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_100445BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100445C0C()
{
  result = qword_1008446C8;
  if (!qword_1008446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446C8);
  }

  return result;
}

unint64_t sub_100445C64()
{
  result = qword_1008446D0;
  if (!qword_1008446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446D0);
  }

  return result;
}

unint64_t sub_100445CBC()
{
  result = qword_1008446D8;
  if (!qword_1008446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446D8);
  }

  return result;
}

unint64_t sub_100445D14()
{
  result = qword_1008446E0;
  if (!qword_1008446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446E0);
  }

  return result;
}

unint64_t sub_100445D6C()
{
  result = qword_1008446E8;
  if (!qword_1008446E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446E8);
  }

  return result;
}

unint64_t sub_100445DC4()
{
  result = qword_1008446F0;
  if (!qword_1008446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446F0);
  }

  return result;
}

unint64_t sub_100445E1C()
{
  result = qword_1008446F8;
  if (!qword_1008446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446F8);
  }

  return result;
}

unint64_t sub_100445E74()
{
  result = qword_100844700;
  if (!qword_100844700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844700);
  }

  return result;
}

unint64_t sub_100445ECC()
{
  result = qword_100844708;
  if (!qword_100844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844708);
  }

  return result;
}

unint64_t sub_100445F24()
{
  result = qword_100844710;
  if (!qword_100844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844710);
  }

  return result;
}

unint64_t sub_100445F7C()
{
  result = qword_100844718;
  if (!qword_100844718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844718);
  }

  return result;
}

unint64_t sub_100445FD4()
{
  result = qword_100844720;
  if (!qword_100844720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844720);
  }

  return result;
}

unint64_t sub_10044602C()
{
  result = qword_100844728;
  if (!qword_100844728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844728);
  }

  return result;
}

unint64_t sub_100446084()
{
  result = qword_100844730;
  if (!qword_100844730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844730);
  }

  return result;
}

unint64_t sub_1004460DC()
{
  result = qword_100844738;
  if (!qword_100844738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844738);
  }

  return result;
}

unint64_t sub_100446134()
{
  result = qword_100844740;
  if (!qword_100844740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844740);
  }

  return result;
}

unint64_t sub_10044618C()
{
  result = qword_100844748;
  if (!qword_100844748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844748);
  }

  return result;
}

unint64_t sub_1004461E4()
{
  result = qword_100844750;
  if (!qword_100844750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844750);
  }

  return result;
}

unint64_t sub_10044623C()
{
  result = qword_100844758;
  if (!qword_100844758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844758);
  }

  return result;
}

unint64_t sub_100446294()
{
  result = qword_100844760;
  if (!qword_100844760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844760);
  }

  return result;
}

unint64_t sub_1004462EC()
{
  result = qword_100844768;
  if (!qword_100844768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844768);
  }

  return result;
}

unint64_t sub_100446344()
{
  result = qword_100844770;
  if (!qword_100844770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844770);
  }

  return result;
}

unint64_t sub_10044639C()
{
  result = qword_100844778;
  if (!qword_100844778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844778);
  }

  return result;
}

unint64_t sub_1004463F4()
{
  result = qword_100844780;
  if (!qword_100844780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844780);
  }

  return result;
}

unint64_t sub_100446448()
{
  result = qword_100844790;
  if (!qword_100844790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844790);
  }

  return result;
}

unint64_t sub_10044649C()
{
  result = qword_100844798;
  if (!qword_100844798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844798);
  }

  return result;
}

unint64_t sub_1004464F0()
{
  result = qword_1008447A0;
  if (!qword_1008447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447A0);
  }

  return result;
}

unint64_t sub_100446544()
{
  result = qword_1008447A8;
  if (!qword_1008447A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447A8);
  }

  return result;
}

unint64_t sub_100446598()
{
  result = qword_1008447B0;
  if (!qword_1008447B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447B0);
  }

  return result;
}

unint64_t sub_1004465EC()
{
  result = qword_1008447B8;
  if (!qword_1008447B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447B8);
  }

  return result;
}

unint64_t sub_100446640()
{
  result = qword_1008447C8;
  if (!qword_1008447C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447C8);
  }

  return result;
}

unint64_t sub_100446694()
{
  result = qword_1008447D0;
  if (!qword_1008447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447D0);
  }

  return result;
}

unint64_t sub_1004466E8()
{
  result = qword_1008447E0;
  if (!qword_1008447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447E0);
  }

  return result;
}

unint64_t sub_10044673C()
{
  result = qword_1008447F0;
  if (!qword_1008447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447F0);
  }

  return result;
}

uint64_t sub_1004467B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004467F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100446850()
{
  result = qword_1008447F8;
  if (!qword_1008447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447F8);
  }

  return result;
}

unint64_t sub_1004468A8()
{
  result = qword_100844800;
  if (!qword_100844800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844800);
  }

  return result;
}

unint64_t sub_100446900()
{
  result = qword_100844808;
  if (!qword_100844808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844808);
  }

  return result;
}

unint64_t sub_100446958()
{
  result = qword_100844810;
  if (!qword_100844810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844810);
  }

  return result;
}

unint64_t sub_1004469B0()
{
  result = qword_100844818;
  if (!qword_100844818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844818);
  }

  return result;
}

unint64_t sub_100446A08()
{
  result = qword_100844820;
  if (!qword_100844820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844820);
  }

  return result;
}

unint64_t sub_100446A5C()
{
  result = qword_100844830;
  if (!qword_100844830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844830);
  }

  return result;
}

unint64_t sub_100446AB0()
{
  result = qword_100844838;
  if (!qword_100844838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844838);
  }

  return result;
}

unint64_t sub_100446B04()
{
  result = qword_100844848;
  if (!qword_100844848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844848);
  }

  return result;
}

unint64_t sub_100446B6C()
{
  result = qword_100844850;
  if (!qword_100844850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844850);
  }

  return result;
}

unint64_t sub_100446BC4()
{
  result = qword_100844858;
  if (!qword_100844858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844858);
  }

  return result;
}

unint64_t sub_100446C1C()
{
  result = qword_100844860;
  if (!qword_100844860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844860);
  }

  return result;
}

uint64_t sub_100446CC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WebPresentmentAnalyticsReporter();
  swift_allocObject();
  result = WebPresentmentAnalyticsReporter.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WebPresentmentAnalyticsReporter;
  *a1 = result;
  return result;
}

uint64_t sub_100446D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v34 = a1;
  v5 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6 = *(v5 - 8);
  v38 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v32 = &v31 - v7;
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v36 = &v31 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  v35 = *(v6 + 16);
  v17 = v5;
  v35(v8, a1, v5);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = *(v6 + 80);
  v20 = (v11 + v19 + v18) & ~v19;
  v33 = v19 | 7;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v37;
  (*(v10 + 32))(&v21[v18], v12, v31);
  v22 = *(v6 + 32);
  v23 = &v21[v20];
  v24 = v32;
  v22(v23, v32, v17);

  v25 = sub_1003E653C(0, 0, v36, &unk_1006E48E8, v21);
  v26 = v24;
  v35(v24, v34, v17);
  v27 = (v19 + 16) & ~v19;
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v22((v29 + v27), v26, v17);
  *(v29 + v28) = v25;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_100447098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for WebPresentmentRequestState();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v6[15] = *(v10 + 64);
  v6[16] = swift_task_alloc();
  v11 = type metadata accessor for WebPresentmentResponse();
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100447290, 0, 0);
}

uint64_t sub_100447290()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1004473BC;
  v7 = v0[19];
  v8 = v0[5];

  return sub_1004478F0(v7, v8, &unk_1006E4908, v5);
}

uint64_t sub_1004473BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100447628;
  }

  else
  {

    v2 = sub_1004474D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004474D8()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[11];
  v10 = v0[10];
  v11 = v0[19];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  (*(v1 + 16))(v6);
  (*(v5 + 104))(v6, enum case for WebPresentmentRequestState.success(_:), v7);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v10);
  v0[3] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100447628()
{
  v1 = v0[22];

  v0[2] = v1;
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004476D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for WebPresentmentRequestState();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100447800, 0, 0);
}

uint64_t sub_100447800()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  *v4 = v7;
  (*(v6 + 104))(v4, enum case for WebPresentmentRequestState.listenerReady(_:), v5);
  v8 = v7;
  sub_100007224(&qword_100844950, &unk_1006E48D0);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004478F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for PartialWebPresentmentRequest();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100447A7C, 0, 0);
}

uint64_t sub_100447A7C(uint64_t a1)
{
  v34 = v1;
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[3];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[15];
  v11 = v1[16];
  v12 = v1[13];
  v13 = v1[14];
  if (v9)
  {
    v30 = v8;
    v15 = v1[11];
    v14 = v1[12];
    v32 = v1[14];
    v16 = v1[10];
    v31 = v1[16];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100141FE4(0xD00000000000001ELL, 0x80000001007170C0, &v33);
    *(v17 + 12) = 2080;
    v6(v14, v12, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v12, v16);
    v21 = sub_100141FE4(v18, v20, &v33);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v30, "WebPresentmentManager %s %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v31, v32);
  }

  else
  {
    v22 = v1[10];
    v23 = v1[11];

    (*(v23 + 8))(v12, v22);
    (*(v10 + 8))(v11, v13);
  }

  v24 = swift_task_alloc();
  v1[17] = v24;
  *v24 = v1;
  v24[1] = sub_100447D14;
  v25 = v1[5];
  v26 = v1[3];
  v27 = v1[4];
  v28 = v1[2];

  return sub_100448424(v28, v26, v27, v25);
}

uint64_t sub_100447D14()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100447E80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100447E80()
{
  v1 = sub_10000BA08((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  *(v0 + 152) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100447EF4, v2, 0);
}

uint64_t sub_100447EF4()
{
  sub_10042C604();

  return _swift_task_switch(sub_100447F60, 0, 0);
}

uint64_t sub_100447F60()
{
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_10044811C(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100844958, &qword_1006E48F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  (*(v7 + 16))(v12 - v8, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v10 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.cancelled(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v11 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v12[1] = v11;
    sub_100007224(&qword_100844950, &unk_1006E48D0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    Task.cancel()();
  }
}

uint64_t sub_100448424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v5[18] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v5[28] = v8;
  v9 = *(v8 - 8);
  v5[29] = v9;
  v5[30] = *(v9 + 64);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentResponse();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v5[36] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderUserSelection();
  v5[37] = v11;
  v5[38] = *(v11 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v12 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v5[41] = v12;
  v5[42] = *(v12 - 8);
  v5[43] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentProviderRequestState(0);
  v5[44] = v13;
  v5[45] = *(v13 - 8);
  v5[46] = swift_task_alloc();
  sub_100007224(&qword_100844968, &qword_1006E4E80);
  v5[47] = swift_task_alloc();
  v14 = sub_100007224(&qword_100844970, &qword_1006E4920);
  v5[48] = v14;
  v5[49] = *(v14 - 8);
  v5[50] = swift_task_alloc();
  v15 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v5[51] = v15;
  v5[52] = *(v15 - 8);
  v5[53] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v5[54] = v16;
  v5[55] = *(v16 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v17 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[62] = v17;
  v5[63] = *(v17 - 8);
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();

  return _swift_task_switch(sub_100448A80, 0, 0);
}

uint64_t sub_100448A80()
{
  v1 = v0[16];
  (*(v1 + 296))();
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  sub_10000BA08((v1 + 96), v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_100448BC8;
  v5 = v0[13];

  return v7(v5, v2, v3);
}

uint64_t sub_100448BC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_10044D18C;
  }

  else
  {
    v4 = sub_100448CE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100448CE0()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[62];
  v5 = v0[63];
  sub_10000BA08((v0[16] + 216), *(v0[16] + 240));
  sub_100473D74(v1, v2);
  sub_10000BBC4(v2, v3, &qword_1008437B0, &unk_1006E1720);
  v6 = *(v5 + 48);
  v0[74] = v6;
  v0[75] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v3, 1, v4);
  v8 = v0[69];
  if (v7 == 1)
  {
    sub_10000BE18(v8, &qword_1008437B0, &unk_1006E1720);
LABEL_10:
    v25 = swift_task_alloc();
    v0[79] = v25;
    *v25 = v0;
    v25[1] = sub_10044938C;
    v26 = v0[72];
    v27 = v0[70];
    v28 = v0[53];
    v29 = v0[13];

    return sub_10044EFC8(v28, v29, v26, v27);
  }

  v9 = v0[66];
  v10 = v0[61];
  sub_100450050(v8, v9, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = v0[61];
  if (EnumCaseMultiPayload != 1)
  {
    sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B84(v12, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    goto LABEL_10;
  }

  v13 = *(v12 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
  v0[76] = v13;
  v14 = type metadata accessor for BundleRecord();
  (*(*(v14 - 8) + 8))(v12, v14);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Bypass record is Apple Wallet, bypassing selection sheet to 1st party consent sheet", v17, 2u);
  }

  v18 = v0[57];
  v19 = v0[54];
  v20 = v0[55];

  (*(v20 + 8))(v18, v19);
  v21 = swift_task_alloc();
  v0[77] = v21;
  *v21 = v0;
  v21[1] = sub_100449034;
  v22 = v0[12];
  v23 = v0[13];

  return sub_10044E3CC(v22, v23, v13, (v0 + 2));
}

uint64_t sub_100449034()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_10044D37C;
  }

  else
  {
    v2 = sub_100449168;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100449168()
{
  v1 = v0[70];
  sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10044938C()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_10044D5A4;
  }

  else
  {
    v2 = sub_1004494C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004494C0()
{
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 992) = enum case for DIPError.Code.webPresentmentCancelled(_:);
  *(v0 + 996) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 1000) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 1004) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v1 = swift_task_alloc();
  *(v0 + 648) = v1;
  *v1 = v0;
  v1[1] = sub_1004495B4;
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 80);
}

uint64_t sub_1004495B4()
{

  if (v0)
  {
    v1 = sub_10044D7AC;
  }

  else
  {
    v1 = sub_1004496C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004496C4()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 360) + 48))(v1, 1, *(v0 + 352)) == 1)
  {
    v60 = *(v0 + 560);
    v3 = *(v0 + 416);
    v2 = *(v0 + 424);
    v4 = *(v0 + 408);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v6 + 104))(v5, enum case for DIPError.Code.unexpectedDaemonState(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
    sub_10000BE18(v60, &qword_1008437B0, &unk_1006E1720);
    sub_10000BB78((v0 + 16));

    v8 = *(v0 + 8);

    return v8();
  }

  sub_100450050(v1, *(v0 + 368), type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
LABEL_34:
      v57 = swift_task_alloc();
      *(v0 + 648) = v57;
      *v57 = v0;
      v57[1] = sub_1004495B4;
      v58 = *(v0 + 376);
      v59 = *(v0 + 384);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v58, 0, 0, v59, v0 + 80);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v46 = *(v0 + 336);
      v45 = *(v0 + 344);
      v47 = *(v0 + 328);
      (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 368), *(v0 + 176));
      v48 = *(v0 + 40);
      v49 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v48);
      (*(v46 + 104))(v45, enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.success(_:), v47);
      v50 = swift_task_alloc();
      *(v0 + 984) = v50;
      *v50 = v0;
      v50[1] = sub_10044CDBC;
      v35 = *(v0 + 344);
      v36 = v48;
      v37 = v49;
LABEL_22:

      return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v35, v36, v37);
    }

    v15 = *(v0 + 128);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 368), *(v0 + 296));
    v16 = v15[15];
    v17 = v15[16];
    sub_10000BA08(v15 + 12, v16);
    v18 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v20 = v19;
    *(v0 + 816) = v19;
    v62 = (*(v17 + 16) + **(v17 + 16));
    v21 = swift_task_alloc();
    *(v0 + 824) = v21;
    *v21 = v0;
    v21[1] = sub_10044B1F4;
    v22 = *(v0 + 536);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = *(v0 + 368);
        v12 = *(v0 + 112);
        v13 = *v11;
        *(v0 + 656) = *v11;
        v61 = (v12 + *v12);
        v14 = swift_task_alloc();
        *(v0 + 664) = v14;
        *v14 = v0;
        v14[1] = sub_10044A294;

        return v61(v13);
      }

      v38 = *(v0 + 1004);
      v39 = *(v0 + 368);
      v25 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 680) = v25;
      v40 = *(v25 - 8);
      v27 = v40;
      *(v0 + 688) = v40;
      v41 = (*(v40 + 88))(v39, v25);
      if (v41 == v38)
      {
        v42 = *(v0 + 40);
        v43 = *(v0 + 48);
        sub_10000BA08((v0 + 16), v42);
        v44 = swift_task_alloc();
        *(v0 + 696) = v44;
        *v44 = v0;
        v44[1] = sub_10044A458;

        return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v42, v43);
      }

      if (v41 == *(v0 + 996))
      {
        v54 = *(*(v0 + 128) + 312);
        *(v0 + 736) = v54;
        sub_100007224(&qword_10083C008, &qword_1006DA4E0);
        v55 = type metadata accessor for DIPSignpost.Config();
        *(v0 + 744) = v55;
        *(v0 + 1012) = *(*(v55 - 8) + 80);
        v56 = swift_allocObject();
        *(v0 + 752) = v56;
        *(v56 + 16) = xmmword_1006BF740;
        static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
        static DaemonSignposts.WebPresentment.thirdPartySelection.getter();

        return _swift_task_switch(sub_10044A7F4, v54, 0);
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v23 = *(v0 + 996);
      v24 = *(v0 + 368);
      v25 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 760) = v25;
      v26 = *(v25 - 8);
      v27 = v26;
      *(v0 + 768) = v26;
      if ((*(v26 + 88))(v24, v25) != v23)
      {
LABEL_33:
        (*(v27 + 8))(*(v0 + 368), v25);
        goto LABEL_34;
      }

      v28 = *(v0 + 1000);
      v30 = *(v0 + 336);
      v29 = *(v0 + 344);
      v31 = *(v0 + 328);
      v32 = *(v0 + 40);
      v33 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v32);
      (*(v30 + 104))(v29, v28, v31);
      v34 = swift_task_alloc();
      *(v0 + 776) = v34;
      *v34 = v0;
      v34[1] = sub_10044A8A4;
      v35 = *(v0 + 344);
      v36 = v32;
      v37 = v33;
      goto LABEL_22;
    }

    v51 = *(v0 + 128);
    (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 368), *(v0 + 296));
    v16 = v51[15];
    v17 = v51[16];
    sub_10000BA08(v51 + 12, v16);
    v18 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v20 = v52;
    *(v0 + 784) = v52;
    v62 = (*(v17 + 16) + **(v17 + 16));
    v53 = swift_task_alloc();
    *(v0 + 792) = v53;
    *v53 = v0;
    v53[1] = sub_10044AAC0;
    v22 = *(v0 + 544);
  }

  return v62(v22, v18, v20, v16, v17);
}

uint64_t sub_10044A294()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_10044D9EC;
  }

  else
  {
    v2 = sub_10044A3A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044A3A8()
{
  v1 = swift_task_alloc();
  *(v0 + 648) = v1;
  *v1 = v0;
  v1[1] = sub_1004495B4;
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 80);
}

uint64_t sub_10044A458()
{

  return _swift_task_switch(sub_10044A554, 0, 0);
}

uint64_t sub_10044A554()
{
  v1 = *(*(v0 + 128) + 312);
  *(v0 + 704) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 712) = v2;
  v3 = *(v2 - 8);
  *(v0 + 720) = v3;
  *(v0 + 1008) = *(v3 + 80);
  v4 = swift_allocObject();
  *(v0 + 728) = v4;
  *(v4 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_10044A66C, v1, 0);
}

uint64_t sub_10044A66C()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = (*(v0 + 1008) + 32) & ~*(v0 + 1008);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044A730, 0, 0);
}

uint64_t sub_10044A730()
{
  (*(v0[86] + 8))(v0[46], v0[85]);
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_1004495B4;
  v2 = v0[47];
  v3 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 10);
}

uint64_t sub_10044A7F4()
{
  sub_10051B0E0(*(v0 + 752));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100450218, 0, 0);
}

uint64_t sub_10044A8A4()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10044A9FC, 0, 0);
}

uint64_t sub_10044A9FC()
{
  (*(v0[96] + 8))(v0[46], v0[95]);
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_1004495B4;
  v2 = v0[47];
  v3 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 10);
}

uint64_t sub_10044AAC0()
{

  return _swift_task_switch(sub_10044ABD8, 0, 0);
}

uint64_t sub_10044ABD8()
{
  v1 = *(v0 + 544);
  if ((*(v0 + 592))(v1, 1, *(v0 + 496)) == 1)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    v2 = &qword_1008437B0;
    v3 = &unk_1006E1720;
LABEL_8:
    sub_10000BE18(v1, v2, v3);
LABEL_9:
    v16 = swift_task_alloc();
    *(v0 + 648) = v16;
    *v16 = v0;
    v16[1] = sub_1004495B4;
    v17 = *(v0 + 376);
    v18 = *(v0 + 384);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v18, v0 + 80);
  }

  v4 = *(v0 + 520);
  v5 = *(v0 + 480);
  sub_100450050(v1, v4, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 480);
  v8 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v9 = type metadata accessor for BundleRecord();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v8, v7, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  else
  {
    v11 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(v7 + *(v11 + 48), v8);
    v9 = type metadata accessor for BundleRecord();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v1 = *(v0 + 288);
  type metadata accessor for BundleRecord();
  v12 = *(v9 - 8);
  if ((*(v12 + 48))(v1, 1, v9) == 1)
  {
    v13 = *(v0 + 320);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    sub_100407B84(*(v0 + 520), type metadata accessor for MobileDocumentProviderRecord);
    (*(v15 + 8))(v13, v14);
    v2 = &qword_10083ACF8;
    v3 = &qword_1006D8FC0;
    goto LABEL_8;
  }

  v19 = BundleRecord.bundleIdentifier.getter();
  v21 = v20;
  *(v0 + 800) = v20;
  (*(v12 + 8))(v1, v9);
  if (!v21)
  {
    v25 = *(v0 + 320);
    v26 = *(v0 + 296);
    v27 = *(v0 + 304);
    sub_100407B84(*(v0 + 520), type metadata accessor for MobileDocumentProviderRecord);
    (*(v27 + 8))(v25, v26);
    goto LABEL_9;
  }

  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v22);
  v24 = swift_task_alloc();
  *(v0 + 808) = v24;
  *v24 = v0;
  v24[1] = sub_10044AFF0;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v19, v21, v22, v23);
}

uint64_t sub_10044AFF0()
{

  return _swift_task_switch(sub_10044B108, 0, 0);
}

uint64_t sub_10044B108()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  sub_100407B84(v0[65], type metadata accessor for MobileDocumentProviderRecord);
  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_1004495B4;
  v5 = v0[47];
  v6 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, 0, 0, v6, v0 + 10);
}

uint64_t sub_10044B1F4()
{

  return _swift_task_switch(sub_10044B30C, 0, 0);
}

uint64_t sub_10044B30C()
{
  v1 = *(v0 + 536);
  if ((*(v0 + 592))(v1, 1, *(v0 + 496)) == 1)
  {
    v2 = *(v0 + 416);
    v18 = *(v0 + 424);
    v19 = *(v0 + 560);
    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    v3 = *(v0 + 392);
    v15 = *(v0 + 384);
    v4 = *(v0 + 304);
    v13 = *(v0 + 296);
    v14 = *(v0 + 312);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
    (*(v6 + 104))(v5, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v4 + 8))(v14, v13);
    (*(v3 + 8))(v16, v15);
    (*(v2 + 8))(v18, v17);
    sub_10000BE18(v19, &qword_1008437B0, &unk_1006E1720);
    sub_10000BB78((v0 + 16));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    sub_100450050(v1, *(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v10);
    v12 = swift_task_alloc();
    *(v0 + 832) = v12;
    *v12 = v0;
    v12[1] = sub_10044B76C;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v10, v11);
  }
}

uint64_t sub_10044B76C()
{

  return _swift_task_switch(sub_10044B868, 0, 0);
}

uint64_t sub_10044B868()
{
  sub_100407B04(*(v0 + 512), *(v0 + 472));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 128);
    *(v0 + 840) = *(v1 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
    v3 = *(v2 + 312);
    *(v0 + 848) = v3;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v4 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 856) = v4;
    v5 = *(v4 - 8);
    *(v0 + 864) = v5;
    *(v0 + 1016) = *(v5 + 80);
    v6 = swift_allocObject();
    *(v0 + 872) = v6;
    *(v6 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v7 = sub_10044BAA4;
  }

  else
  {
    v8 = *(v0 + 128);
    *(v0 + 1020) = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    v3 = *(v8 + 312);
    *(v0 + 904) = v3;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v9 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 912) = v9;
    v10 = *(v9 - 8);
    *(v0 + 920) = v10;
    *(v0 + 1024) = *(v10 + 80);
    v11 = swift_allocObject();
    *(v0 + 928) = v11;
    *(v11 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v7 = sub_10044C0B0;
  }

  return _swift_task_switch(v7, v3, 0);
}

uint64_t sub_10044BAA4()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = (*(v0 + 1016) + 32) & ~*(v0 + 1016);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044BB68, 0, 0);
}

uint64_t sub_10044BB68()
{
  v1 = sub_10000BA08((*(v0 + 128) + 56), *(*(v0 + 128) + 80));
  *(v0 + 880) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10044BBDC, v2, 0);
}

uint64_t sub_10044BBDC()
{
  sub_10042C604();
  v1 = swift_task_alloc();
  v0[111] = v1;
  *v1 = v0;
  v1[1] = sub_10044BC8C;
  v2 = v0[105];
  v3 = v0[35];
  v4 = v0[13];

  return sub_10044E3CC(v3, v4, v2, (v0 + 2));
}

uint64_t sub_10044BC8C()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_10044DC3C;
  }

  else
  {
    v2 = sub_10044BDC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044BDC0()
{
  v17 = v0[70];
  v18 = v0[59];
  v1 = v0[52];
  v13 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[34];
  v15 = v0[33];
  v16 = v0[35];
  v14 = v0[12];
  sub_100407B84(v0[64], type metadata accessor for MobileDocumentProviderRecord);
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v13, v2);
  sub_10000BE18(v17, &qword_1008437B0, &unk_1006E1720);
  (*(v9 + 32))(v14, v16, v15);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v18, v10);
  sub_10000BB78(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10044C0B0()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = (*(v0 + 1024) + 32) & ~*(v0 + 1024);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044C174, 0, 0);
}

uint64_t sub_10044C174()
{
  v1 = *sub_10000BA08((v0[16] + 176), *(v0[16] + 200));
  v2 = swift_task_alloc();
  v0[117] = v2;
  *v2 = v0;
  v2[1] = sub_10044C228;
  v3 = v0[64];
  v4 = v0[32];
  v5 = v0[13];

  return sub_10032DCBC(v4, v3, v5, v1);
}

uint64_t sub_10044C228()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_10044C60C;
  }

  else
  {
    v2 = sub_10044C33C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044C33C()
{
  v1 = sub_10000BA08((*(v0 + 128) + 56), *(*(v0 + 128) + 80));
  v2 = *v1;
  *(v0 + 952) = *v1;

  return _swift_task_switch(sub_10044C3B0, v2, 0);
}

uint64_t sub_10044C3B0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[28];
  (*(v2 + 16))(v1, v0[32], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[120] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[121] = v6;
  *v6 = v0;
  v6[1] = sub_10044C4E8;

  return sub_10042B4BC("presentAuthorizationViewFromSelectionView(presentmentRequest:)", 62, 2, &unk_1006E4930, v5);
}

uint64_t sub_10044C4E8()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = *(v2 + 952);
    v4 = sub_10044CA58;
  }

  else
  {

    v4 = sub_10044C8F0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10044C60C()
{
  v15 = *(v0 + 1020);
  v13 = *(v0 + 560);
  v14 = *(v0 + 472);
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v13, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v14 + v15, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v14, v10);
  sub_10000BB78((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10044C8F0()
{
  v1 = *(v0 + 1020);
  v2 = *(v0 + 512);
  v3 = *(v0 + 472);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  sub_100407B84(v2, type metadata accessor for MobileDocumentProviderRecord);
  (*(v5 + 8))(v4, v6);
  sub_10000BE18(v3 + v1, &qword_10083ACF8, &qword_1006D8FC0);
  v7 = type metadata accessor for BundleRecord();
  (*(*(v7 - 8) + 8))(v3, v7);
  v8 = swift_task_alloc();
  *(v0 + 648) = v8;
  *v8 = v0;
  v8[1] = sub_1004495B4;
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, 0, 0, v10, v0 + 80);
}

uint64_t sub_10044CA58()
{

  return _swift_task_switch(sub_10044CAC0, 0, 0);
}

uint64_t sub_10044CAC0()
{
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  v15 = *(v0 + 1020);
  v13 = *(v0 + 560);
  v14 = *(v0 + 472);
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v13, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v14 + v15, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v14, v10);
  sub_10000BB78((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10044CDBC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10044CF14, 0, 0);
}

uint64_t sub_10044CF14(uint64_t a1)
{
  v2 = v1[52];
  v12 = v1[53];
  v13 = v1[70];
  v4 = v1[50];
  v3 = v1[51];
  v6 = v1[48];
  v5 = v1[49];
  v8 = v1[23];
  v7 = v1[24];
  v9 = v1[22];
  MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
  WebPresentmentResponse.init(responseData:)();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);
  sub_10000BE18(v13, &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78(v1 + 2);

  v10 = v1[1];

  return v10();
}

uint64_t sub_10044D18C()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044D37C()
{
  v1 = v0[70];
  sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10044D5A4()
{
  sub_10000BE18(v0[70], &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10044D7AC()
{
  v1 = v0[70];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  (*(v0[49] + 8))(v0[50], v0[48]);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10044D9EC()
{
  v1 = *(v0 + 560);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  sub_10000BB78((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10044DC3C()
{
  v50 = *(v0 + 992);
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v53 = *(v0 + 136);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v1 + 104))(v4, v50, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v6 = *(v53 + 48);
  sub_10000BBC4(v3, v5, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v4, v5 + v6, &qword_10083B020, &unk_1006D8ED0);
  v7 = *(v1 + 48);
  v8 = v7(v5, 1, v2);
  v9 = *(v0 + 200);
  if (v8 == 1)
  {
    v10 = *(v0 + 168);
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
    if (v7(v5 + v6, 1, v9) == 1)
    {
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);

LABEL_11:
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Wallet presentment cancelled by user, allowing user to make another selection", v37, 2u);
      }

      v38 = *(v0 + 512);
      v39 = *(v0 + 472);
      v41 = *(v0 + 440);
      v40 = *(v0 + 448);
      v42 = *(v0 + 432);
      v44 = *(v0 + 304);
      v43 = *(v0 + 312);
      v45 = *(v0 + 296);

      (*(v41 + 8))(v40, v42);
      sub_100407B84(v38, type metadata accessor for MobileDocumentProviderRecord);
      (*(v44 + 8))(v43, v45);
      v46 = type metadata accessor for BundleRecord();
      (*(*(v46 - 8) + 8))(v39, v46);
      v47 = swift_task_alloc();
      *(v0 + 648) = v47;
      *v47 = v0;
      v47[1] = sub_1004495B4;
      v48 = *(v0 + 376);
      v49 = *(v0 + 384);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v48, 0, 0, v49, v0 + 80);
    }

    goto LABEL_6;
  }

  sub_10000BBC4(*(v0 + 144), *(v0 + 152), &qword_10083B020, &unk_1006D8ED0);
  if (v7(v5 + v6, 1, v9) == 1)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v13, &qword_10083B020, &unk_1006D8ED0);
    (*(v12 + 8))(v14, v11);
LABEL_6:
    sub_10000BE18(*(v0 + 144), &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v27 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v0 + 200);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v32 = *(v0 + 152);
  v52 = *(v0 + 144);
  (*(v27 + 32))(v28, v5 + v6, v29);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v27 + 8);
  v34(v28, v29);
  sub_10000BE18(v31, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v30, &qword_10083B020, &unk_1006D8ED0);
  v34(v32, v29);
  sub_10000BE18(v52, &qword_10083B020, &unk_1006D8ED0);

  if (v33)
  {
    goto LABEL_11;
  }

LABEL_7:
  v51 = *(v0 + 560);
  v54 = *(v0 + 472);
  v16 = *(v0 + 416);
  v15 = *(v0 + 424);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  v23 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v21 + 8))(v22, v23);
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);
  sub_10000BE18(v51, &qword_1008437B0, &unk_1006E1720);
  v24 = type metadata accessor for BundleRecord();
  (*(*(v24 - 8) + 8))(v54, v24);
  sub_10000BB78((v0 + 16));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10044E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for PartialWebPresentmentRequest();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10044E5A8, 0, 0);
}

uint64_t sub_10044E5A8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentManager handling first party selection", v4, 2u);
  }

  v5 = v1[23];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[9];
  v9 = v1[10];

  v10 = *(v7 + 8);
  v1[24] = v10;
  v10(v5, v6);
  v1[25] = sub_10000BA08((v9 + 136), *(v9 + 160));
  v11 = v8[3];
  v12 = v8[4];
  sub_10000BA08(v8, v11);
  v13 = swift_task_alloc();
  v1[26] = v13;
  *v13 = v1;
  v13[1] = sub_10044E714;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v11, v12);
}

uint64_t sub_10044E714(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return _swift_task_switch(sub_10044E814, 0, 0);
}

uint64_t sub_10044E814(uint64_t a1)
{
  v38 = v1;
  v2 = v1[19];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[24];
  v11 = v1[22];
  v12 = v1[19];
  v13 = v1[20];
  if (v9)
  {
    v35 = v1[22];
    v36 = v1[24];
    v14 = v1[17];
    v15 = v1[18];
    v34 = v1[20];
    v16 = v1[16];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v17 = 136315138;
    v6(v15, v12, v16);
    v18 = String.init<A>(describing:)();
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_100141FE4(v18, v21, &v37);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v19, "WebPresentmentWalletPassPresenter presenting authorization sheet for request: %s", v17, 0xCu);
    sub_10000BB78(v33);

    v36(v35, v34);
  }

  else
  {
    v24 = v1[16];
    v23 = v1[17];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = v1[10];
  v26 = swift_task_alloc();
  v1[29] = v26;
  *v26 = v1;
  v26[1] = sub_10044EA94;
  v27 = v1[27];
  v28 = v1[28];
  v30 = v1[7];
  v29 = v1[8];
  v31 = v1[6];

  return sub_1004743C0(v31, v29, v30, v25 + 16, v27, v28);
}

uint64_t sub_10044EA94()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10044EC40, 0, 0);
  }

  else
  {
    sub_10000BD94(v2[27], v2[28]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_10044EC40()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    sub_10000BBC4(v0[15], v4, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v6 + 88))(v4, v5) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[11]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[12] + 8))(v0[14], v0[11]);
  }

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v7 = v0[15];
  sub_10000BD94(v0[27], v0[28]);

  sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10044EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v5[22] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v5[26] = v12;
  v5[27] = *(v12 - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10044F2F0, 0, 0);
}

uint64_t sub_10044F2F0(uint64_t a1)
{
  v41 = v1;
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  PartialWebPresentmentRequest.originatingURL.getter();
  v5 = URL.host.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  if (!v7)
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.webPresentmentMissingHost(_:), v1[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v1[1];
    goto LABEL_12;
  }

  v8 = v1[23];
  v9 = v1[24];
  v10 = v1[22];
  sub_10000BBC4(v1[5], v10, &qword_1008437B0, &unk_1006E1720);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000BE18(v1[22], &qword_1008437B0, &unk_1006E1720);
  }

  else
  {
    sub_100450050(v1[22], v1[25], type metadata accessor for MobileDocumentProviderRecord);
    v12 = sub_100330370();
    if (v13)
    {
      v14 = v12;
      v15 = v13;

      defaultLogger()();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      v18 = os_log_type_enabled(v16, v17);
      v19 = v1[20];
      v20 = v1[21];
      v21 = v1[19];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v40 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100141FE4(v14, v15, &v40);
        _os_log_impl(&_mh_execute_header, v16, v17, "WebPresentmentManager using a bypassed third party credential provider: %s.", v22, 0xCu);
        sub_10000BB78(v23);
      }

      (*(v19 + 8))(v20, v21);
      v24 = v1[17];
      v38 = v1[18];
      v39 = v1[25];
      v25 = v1[15];
      v26 = v1[13];
      v27 = v1[14];
      v28 = v1[11];
      v29 = v1[12];
      v36 = v1[16];
      v37 = v1[10];
      v30 = v1[6];
      v31 = v1[3];
      v32 = type metadata accessor for PartialWebPresentmentRequest();
      (*(*(v32 - 8) + 16))(v25, v31, v32);
      (*(v27 + 104))(v25, enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:), v26);
      sub_100330648();
      MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
      sub_10000BA08((v30 + 56), *(v30 + 80));
      (*(v24 + 16))(v29, v38, v36);
      (*(v28 + 104))(v29, enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:), v37);
      type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
      sub_1004333B0(v29);
      (*(v28 + 8))(v29, v37);
      (*(v24 + 8))(v38, v36);
      sub_100407B84(v39, type metadata accessor for MobileDocumentProviderRecord);
      goto LABEL_11;
    }

    sub_100407B84(v1[25], type metadata accessor for MobileDocumentProviderRecord);
  }

  v33 = v1[4];
  v34 = v1[2];
  sub_10000BA08((v1[6] + 56), *(v1[6] + 80));
  sub_10042972C(v33, v5, v7, v34);

LABEL_11:

  v11 = v1[1];
LABEL_12:

  return v11();
}

uint64_t sub_10044F8F4()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);
  sub_10000BB78(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10044F990(uint64_t a1)
{
  v3 = sub_100007224(&qword_100844948, &qword_1006E48C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = *v1;
  v10 = a1;
  type metadata accessor for WebPresentmentRequestState();
  (*(v4 + 104))(v6, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_10044FAB8()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10044FC1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_100447098(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10044FD88()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10044FE30(uint64_t a1)
{
  sub_100007224(&qword_100844950, &unk_1006E48D0);

  sub_10044811C(a1);
}

uint64_t sub_10044FED8()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10044FF6C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1004476D8(a1, v1 + v5);
}

uint64_t sub_100450050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004500B8()
{
  v1 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100450140(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderPresentmentRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042BF04(a1, v1 + v5);
}

void sub_10045021C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v187 = a1;
  v188 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v183 = *(v4 - 8);
  __chkstk_darwin(v4);
  v184 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateProvider();
  v189 = *(v6 - 8);
  v190 = v6;
  v7 = __chkstk_darwin(v6);
  v185 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v165 - v9;
  v191 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  __chkstk_darwin(v191);
  v261 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPresentmentMobileDocumentSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a2, a2[3]);
  dispatch thunk of WebPresentmentDeviceSupportProviding.mobileDocumentSource.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for WebPresentmentMobileDocumentSource.local(_:))
  {
    v17 = type metadata accessor for DeviceInformationProvider();
    v240 = v17;
    v241 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v239);
    DeviceInformationProvider.init()();
    v182 = type metadata accessor for UserDefaultsConfiguration();
    v242 = static UserDefaultsConfiguration.standard.getter();
    v18 = sub_100134AD0();
    if (sub_100134AD0())
    {
      v19 = 0xED0000747365742DLL;
    }

    else
    {
      v19 = 0xE800000000000000;
    }

    v20 = type metadata accessor for DigitalPresentmentSessionManager();
    swift_allocObject();
    v21 = sub_10015D65C(v18 & 1, 0x797469746E656469, v19, 2);
    v171 = type metadata accessor for PassManager();
    v178 = swift_allocObject();
    v181 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    v180 = type metadata accessor for DigitalPresentmentUIPresenter();

    v22 = v261;
    DeviceInformationProvider.init()();
    v183 = v17;
    *(&v222 + 1) = v17;
    *&v223 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v221);
    DeviceInformationProvider.init()();
    v23 = type metadata accessor for KRLTrustValidator();
    v210 = 0u;
    v211 = 0u;
    *&v212[0] = 0;
    v168 = v23;
    swift_allocObject();
    v24 = sub_10010F338();

    DateProvider.init()();
    v26 = v189;
    v25 = v190;
    v27 = v185;
    v166 = v189[2];
    v167 = (v189 + 2);
    (v166)(v185, v10, v190);
    v28 = sub_1003A0748(&v210, v24, v27);

    v29 = v26[1];
    v173 = v10;
    v189 = (v26 + 1);
    v165 = v29;
    v29(v10, v25);
    *(&v211 + 1) = v20;
    *&v212[0] = &off_100809E48;
    v184 = v21;
    *&v210 = v21;
    *(&v234 + 1) = v191;
    v235 = &off_100810218;
    v30 = sub_100032DBC(&v233);
    sub_1003EADF0(v22, v30);
    v31 = type metadata accessor for PresentmentKeyRevocationValidator();
    v218 = &off_100809510;
    *(&v217 + 1) = v31;
    *&v216 = v28;
    v32 = type metadata accessor for WalletPassPresentmentManager();
    v33 = swift_allocObject();
    v34 = sub_10001F370(&v210, v20);
    v177 = &v165;
    __chkstk_darwin(v34);
    v36 = (&v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = *(v37 + 16);
    v172 = v37 + 16;
    v169 = v38;
    v170 = v35;
    v38(v36);
    v39 = sub_10001F370(&v233, *(&v234 + 1));
    v176 = &v165;
    __chkstk_darwin(v39);
    v41 = (&v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = sub_10001F370(&v216, *(&v217 + 1));
    v175 = &v165;
    __chkstk_darwin(v43);
    v45 = (&v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = *v36;
    v48 = *v45;
    v259 = v20;
    v260 = &off_100809E48;
    v179 = v20;
    *&v258 = v47;
    *(&v256 + 1) = v191;
    v257 = &off_100810218;
    v49 = sub_100032DBC(&v255);
    sub_1003EAE54(v41, v49);
    *(&v253 + 1) = v31;
    v254 = &off_100809510;
    v174 = v31;
    *&v252 = v48;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v261);
    *(v33 + 272) = 0u;
    *(v33 + 288) = 0u;
    *(v33 + 304) = 0;
    sub_10001F358(&v258, v33 + 112);
    v50 = v181;
    *(v33 + 152) = v178;
    *(v33 + 160) = v50;
    v51 = v180;
    *(v33 + 168) = &off_100809DF0;
    *(v33 + 176) = v51;
    *(v33 + 184) = &off_100809F18;
    sub_10001F358(&v255, v33 + 192);
    sub_10001F358(&v221, v33 + 232);
    sub_10001F358(&v252, v33 + 312);
    sub_10000BB78(&v216);
    sub_10000BB78(&v233);
    sub_10000BB78(&v210);
    v238[9] = &off_100810230;
    v176 = v32;
    v238[8] = v32;
    v238[5] = v33;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v52 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v52 + 54);
    v53 = v186;
    sub_1000318FC(&v52[4], &v221);
    v186 = v53;
    v54 = v52 + 54;
    if (v53)
    {
      os_unfair_lock_unlock(v54);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v54);
      v55 = *(&v225 + 1);

      sub_100031918(&v221);
      *(&v211 + 1) = type metadata accessor for MobileDocumentRegistrationDataContainer();
      *&v212[0] = sub_100452308(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer, &unk_1006E8818);
      *&v210 = v55;
      *(&v222 + 1) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
      *&v223 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
      sub_100032DBC(&v221);
      MobileDocumentProviderRegistrationValidator.init()();
      v56 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
      v57 = swift_allocObject();
      sub_10001F358(&v210, v57 + 16);
      sub_10001F358(&v221, v57 + 56);
      v235 = &off_10080DE08;
      *(&v234 + 1) = v56;
      *&v233 = v57;
      v58 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
      v238[3] = v190;
      v238[4] = &protocol witness table for DateProvider;
      sub_100032DBC(v238);
      DateProvider.init()();
      v236 = v58;
      v237 = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
      static MobileDocumentProvider.extensionPointIdentifier.getter();
      v59 = type metadata accessor for ExtensionPointManager();
      swift_allocObject();
      v60 = ExtensionPointManager.init(extensionPointIdentifier:)();
      *&v223 = &protocol witness table for ExtensionPointManager;
      *(&v222 + 1) = v59;
      *&v221 = v60;
      *(&v211 + 1) = type metadata accessor for BundleRecordFetcher();
      *&v212[0] = &protocol witness table for BundleRecordFetcher;
      sub_100032DBC(&v210);
      BundleRecordFetcher.init()();
      v259 = v183;
      v260 = &protocol witness table for DeviceInformationProvider;
      sub_100032DBC(&v258);
      DeviceInformationProvider.init()();
      static UserDefaultsConfiguration.standard.getter();
      *(&v217 + 1) = type metadata accessor for WebPresentmentDeviceSupportProvider();
      v218 = &protocol witness table for WebPresentmentDeviceSupportProvider;
      sub_100032DBC(&v216);
      WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
      type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
      swift_allocObject();
      v61 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
      v259 = &type metadata for MobileDocumentProviderFilter;
      v260 = &off_10080DCC8;
      *&v258 = swift_allocObject();
      sub_1003EAFA4(&v233, v258 + 16);
      v178 = type metadata accessor for MobileDocumentProviderDataSource();
      v62 = swift_allocObject();
      v63 = sub_10001F370(&v258, &type metadata for MobileDocumentProviderFilter);
      __chkstk_darwin(v63);
      v65 = &v165 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v66 + 16))(v65);
      *(&v256 + 1) = &type metadata for MobileDocumentProviderFilter;
      v257 = &off_10080DCC8;
      v67 = swift_allocObject();
      *&v255 = v67;
      v68 = *(v65 + 7);
      *(v67 + 112) = *(v65 + 6);
      *(v67 + 128) = v68;
      *(v67 + 144) = *(v65 + 16);
      v69 = *(v65 + 3);
      *(v67 + 48) = *(v65 + 2);
      *(v67 + 64) = v69;
      v70 = *(v65 + 5);
      *(v67 + 80) = *(v65 + 4);
      *(v67 + 96) = v70;
      v71 = *(v65 + 1);
      *(v67 + 16) = *v65;
      *(v67 + 32) = v71;
      swift_defaultActor_initialize();
      *(v62 + 280) = 0;
      sub_10001F358(&v221, v62 + 112);
      sub_10001F358(&v210, v62 + 152);
      sub_10001F358(&v216, v62 + 192);
      sub_10001F358(&v255, v62 + 232);
      *(v62 + 272) = v61;
      sub_10000BB78(&v258);
      LOBYTE(v59) = sub_100134AD0();
      v72 = type metadata accessor for WebPresentmentBrandStore();
      v73 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v73 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
      *(&v217 + 1) = v72;
      *&v216 = v73;
      v74 = v183;
      v218 = &off_1008109F0;
      v220[3] = v183;
      v220[4] = &protocol witness table for DeviceInformationProvider;
      sub_100032DBC(v220);
      DeviceInformationProvider.init()();
      v75 = static UserDefaultsConfiguration.standard.getter();
      v219 = v59 & 1;
      v220[5] = v75;
      v76 = v179;
      v259 = v179;
      v260 = &off_100809E48;
      v257 = 0;
      *&v258 = v184;
      v255 = 0u;
      v256 = 0u;
      *(&v253 + 1) = &type metadata for WebPresentmentBrandConfigurationManager;
      v254 = &off_1008109C8;
      *&v252 = swift_allocObject();
      sub_1003EB048(&v216, v252 + 16);
      v177 = type metadata accessor for WebPresentmentResponseBuilder(0);
      v249 = 0u;
      v250 = 0u;
      v251 = 0;

      v77 = static UserDefaultsConfiguration.standard.getter();
      sub_100020260(&v258, &v210);
      sub_10000BBC4(&v255, &v246, &qword_100843230, &qword_1006E0DC0);
      if (v247)
      {
        sub_10001F358(&v246, &v221);
      }

      else
      {
        sub_100020260(&v258, &v221);
        v175 = swift_allocObject();
        v95 = v261;
        DeviceInformationProvider.init()();
        v244 = v74;
        v245 = &protocol witness table for DeviceInformationProvider;
        sub_100032DBC(&v243);
        DeviceInformationProvider.init()();
        v209 = 0;
        v207 = 0u;
        v208 = 0u;
        swift_allocObject();
        v96 = sub_10010F338();

        v97 = v173;
        DateProvider.init()();
        v98 = v185;
        v99 = v190;
        (v166)(v185, v97, v190);
        v100 = sub_1003A0748(&v207, v96, v98);

        v165(v97, v99);
        v101 = sub_10001F370(&v221, *(&v222 + 1));
        v190 = &v165;
        __chkstk_darwin(v101);
        v103 = (&v165 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v104 + 16))(v103);
        v105 = *v103;
        *(&v208 + 1) = v76;
        v209 = &off_100809E48;
        *&v207 = v105;
        v205 = v191;
        v206 = &off_100810218;
        v106 = sub_100032DBC(&v204);
        sub_1003EADF0(v95, v106);
        v202 = v174;
        v203 = &off_100809510;
        v201[0] = v100;
        v107 = swift_allocObject();
        v108 = sub_10001F370(&v207, v76);
        v189 = &v165;
        __chkstk_darwin(v108);
        v110 = (&v165 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
        v169(v110);
        v111 = sub_10001F370(&v204, v205);
        v185 = &v165;
        __chkstk_darwin(v111);
        v113 = &v165 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v114 + 16))(v113);
        v115 = sub_10001F370(v201, v202);
        v183 = &v165;
        __chkstk_darwin(v115);
        v117 = v62;
        v118 = (&v165 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v119 + 16))(v118);
        v120 = *v110;
        v121 = *v118;
        v62 = v117;
        v199 = v76;
        v200 = &off_100809E48;
        *&v198 = v120;
        v196 = v191;
        v197 = &off_100810218;
        v122 = sub_100032DBC(&v195);
        sub_1003EAE54(v113, v122);
        v193 = v174;
        v194 = &off_100809510;
        *&v192 = v121;
        swift_defaultActor_initialize();
        sub_1003EAEB8(v261);
        *(v107 + 272) = 0u;
        *(v107 + 288) = 0u;
        *(v107 + 304) = 0;
        sub_10001F358(&v198, v107 + 112);
        v123 = v181;
        *(v107 + 152) = v175;
        *(v107 + 160) = v123;
        v124 = v180;
        *(v107 + 168) = &off_100809DF0;
        *(v107 + 176) = v124;
        *(v107 + 184) = &off_100809F18;
        sub_10001F358(&v195, v107 + 192);
        sub_10001F358(&v243, v107 + 232);
        sub_10001F358(&v192, v107 + 312);
        sub_10000BB78(v201);
        sub_10000BB78(&v204);
        sub_10000BB78(&v207);
        sub_10000BB78(&v221);
        *&v223 = &off_100810230;
        *(&v222 + 1) = v176;
        *&v221 = v107;
        if (v247)
        {
          sub_10000BE18(&v246, &qword_100843230, &qword_1006E0DC0);
        }
      }

      sub_10001F358(&v221, v212 + 8);
      *&v213 = v177;
      *(&v213 + 1) = &off_100811FB0;
      sub_100020260(&v252, v214);
      sub_10000BBC4(&v249, &v246, &qword_100843238, &qword_1006E0DC8);
      if (v247)
      {
        sub_10000BE18(&v249, &qword_100843238, &qword_1006E0DC8);
        sub_10000BE18(&v255, &qword_100843230, &qword_1006E0DC0);
        sub_10000BB78(&v252);
        sub_10000BB78(&v258);
        sub_10001F358(&v246, &v221);
      }

      else
      {
        sub_100020260(&v252, &v243);
        v125 = static UserDefaultsConfiguration.standard.getter();
        *(&v222 + 1) = &type metadata for WebPresentmentResponsePermissionsFilter;
        *&v223 = &off_100812070;
        *&v221 = swift_allocObject();
        sub_10046D410(&v243, v125, v221 + 16);
        sub_10000BE18(&v249, &qword_100843238, &qword_1006E0DC8);
        sub_10000BE18(&v255, &qword_100843230, &qword_1006E0DC0);
        sub_10000BB78(&v252);
        sub_10000BB78(&v258);
        if (v247)
        {
          sub_10000BE18(&v246, &qword_100843238, &qword_1006E0DC8);
        }
      }

      sub_10001F358(&v221, v215 + 8);
      v232 = v77;
      v229 = v215[0];
      v230 = v215[1];
      v231 = v215[2];
      v225 = v212[2];
      v226 = v213;
      v227 = v214[0];
      v228 = v214[1];
      v221 = v210;
      v222 = v211;
      v223 = v212[0];
      v224 = v212[1];
      sub_100020260(v187, &v258);
      v257 = 0;
      v255 = 0u;
      v256 = 0u;
      sub_1003EB13C(&v221, &v210);
      v254 = 0;
      v252 = 0u;
      v253 = 0u;
      sub_100007224(&qword_100843240, &qword_1006E0DD0);
      v126 = swift_allocObject();
      *(v126 + 56) = 0;
      sub_10000BBC4(&v252, &v249, &qword_100841378, &qword_1006E12F0);

      sub_10000BE18(&v252, &qword_100841378, &qword_1006E12F0);
      v127 = v250;
      *(v126 + 16) = v249;
      *(v126 + 32) = v127;
      *(v126 + 48) = v251;
      v128 = type metadata accessor for WebPresentmentSelectionBypasser();
      v129 = swift_allocObject();
      *(&v253 + 1) = type metadata accessor for AlertPresenter();
      v254 = &protocol witness table for AlertPresenter;
      sub_100032DBC(&v252);
      AlertPresenter.init()();
      if (qword_100832C78 != -1)
      {
        swift_once();
      }

      v187 = qword_100882378;
      v251 = &off_10080DC28;
      *(&v250 + 1) = v178;
      *&v249 = v62;
      v185 = v62;
      v247 = &type metadata for WebPresentmentWalletPassPresenter;
      v248 = &off_100812298;
      *&v246 = swift_allocObject();
      sub_1003EB13C(&v210, v246 + 16);
      v245 = &off_10080DD00;
      v244 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
      *&v243 = v126;
      *(&v208 + 1) = v128;
      v209 = &off_100812108;
      *&v207 = v129;
      v261 = type metadata accessor for WebPresentmentManager();
      v130 = swift_allocObject();
      v131 = sub_10001F370(&v246, &type metadata for WebPresentmentWalletPassPresenter);
      v191 = &v165;
      __chkstk_darwin(v131);
      v133 = &v165 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v134 + 16))(v133);
      v135 = sub_10001F370(&v243, &type metadata for MobileDocumentProviderPresentmentSceneDecider);
      v190 = &v165;
      __chkstk_darwin(v135);
      v137 = (&v165 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v138 + 16))(v137);
      v139 = sub_10001F370(&v207, v128);
      v189 = &v165;
      __chkstk_darwin(v139);
      v141 = (&v165 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v142 + 16))(v141);
      v143 = *v137;
      v144 = *v141;
      v205 = &type metadata for WebPresentmentWalletPassPresenter;
      v206 = &off_100812298;
      v145 = swift_allocObject();
      *&v204 = v145;
      v146 = *(v133 + 9);
      *(v145 + 144) = *(v133 + 8);
      *(v145 + 160) = v146;
      *(v145 + 176) = *(v133 + 10);
      *(v145 + 192) = *(v133 + 22);
      v147 = *(v133 + 5);
      *(v145 + 80) = *(v133 + 4);
      *(v145 + 96) = v147;
      v148 = *(v133 + 7);
      *(v145 + 112) = *(v133 + 6);
      *(v145 + 128) = v148;
      v149 = *(v133 + 1);
      *(v145 + 16) = *v133;
      *(v145 + 32) = v149;
      v150 = *(v133 + 3);
      *(v145 + 48) = *(v133 + 2);
      *(v145 + 64) = v150;
      v202 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
      v203 = &off_10080DD00;
      v201[0] = v143;
      v199 = v128;
      v200 = &off_100812108;
      *&v198 = v144;
      sub_10000BBC4(&v255, &v192, &qword_100844988, &qword_1006E4998);
      if (v193)
      {
        sub_10001F358(&v192, &v195);

        v151 = v187;
      }

      else
      {
        sub_100020260(&v258, &v195);
        v152 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
        swift_allocObject();

        v151 = v187;

        v153 = sub_1004292D0(&v195);
        v196 = v152;
        v197 = &off_100810250;
        *&v195 = v153;
        if (v193)
        {
          sub_10000BE18(&v192, &qword_100844988, &qword_1006E4998);
        }
      }

      v154 = sub_10000BA08(v201, &type metadata for MobileDocumentProviderPresentmentSceneDecider);
      v41 = *v154;
      __chkstk_darwin(v154);
      os_unfair_lock_lock(v41 + 14);
      v155 = v186;
      sub_100407B68(&v41[4]);
      if (!v155)
      {
        os_unfair_lock_unlock(v41 + 14);

        sub_1003EB198(&v210);
        sub_10000BE18(&v255, &qword_100844988, &qword_1006E4998);
        sub_10001F358(&v258, (v130 + 2));
        sub_10001F358(&v195, (v130 + 7));
        sub_10001F358(&v249, (v130 + 12));
        sub_10001F358(&v204, (v130 + 17));
        sub_100020260(v201, (v130 + 22));
        sub_10001F358(&v198, (v130 + 27));
        sub_10001F358(&v252, (v130 + 32));
        v130[37] = sub_100446CC4;
        v130[38] = 0;
        v130[39] = v151;
        sub_10000BB78(v201);
        sub_10000BB78(&v207);
        sub_10000BB78(&v243);
        sub_10000BB78(&v246);
        v156 = v188;
        v188[3] = v261;
        v156[4] = &off_1008119E0;

        *v156 = v130;
        sub_1003EB198(&v221);
        sub_1003EB1EC(&v216);
        sub_1003EB240(&v233);
        sub_100108074(v239);
        return;
      }
    }

    os_unfair_lock_unlock(v41 + 14);
    __break(1u);
  }

  else if (v16 == enum case for WebPresentmentMobileDocumentSource.remote(_:))
  {
    sub_100020260(v187, &v221);
    *&v212[0] = 0;
    v210 = 0u;
    v211 = 0u;
    v235 = 0;
    v233 = 0u;
    v234 = 0u;
    v78 = type metadata accessor for AppleAccountDeviceMonitor();
    v216 = 0u;
    v217 = 0u;
    v218 = 0;
    swift_allocObject();
    sub_100501F7C();
    v80 = v79;
    v81 = type metadata accessor for BluetoothManager();
    v82 = swift_allocObject();
    v240 = v78;
    v83 = sub_100452308(&qword_100844980, type metadata accessor for AppleAccountDeviceMonitor, &unk_1006E6EDC);
    v241 = v83;
    v239[0] = v80;
    v259 = v81;
    v260 = &off_1008157E8;
    *&v258 = v82;
    v261 = type metadata accessor for WebPresentmentRemoteDispatchingManager();
    v84 = swift_allocObject();
    v85 = sub_10001F370(v239, v78);
    v191 = &v165;
    __chkstk_darwin(v85);
    v87 = (&v165 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = sub_10001F370(&v258, v259);
    v190 = &v165;
    __chkstk_darwin(v89);
    v91 = (&v165 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))(v91);
    v93 = *v87;
    v94 = *v91;
    *(&v256 + 1) = v78;
    v257 = v83;
    *&v255 = v93;
    *(&v253 + 1) = v81;
    v254 = &off_1008157E8;
    *&v252 = v94;
    sub_10000BBC4(&v210, &v246, &qword_100844988, &qword_1006E4998);
    if (v247)
    {
      sub_10001F358(&v246, &v249);
    }

    else
    {
      sub_100020260(&v221, &v249);
      v157 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
      swift_allocObject();

      v158 = sub_1004292D0(&v249);
      v251 = &off_100810250;
      *(&v250 + 1) = v157;
      *&v249 = v158;
      if (v247)
      {
        sub_10000BE18(&v246, &qword_100844988, &qword_1006E4998);
      }
    }

    sub_100020260(&v221, v84 + 16);
    sub_100020260(&v249, v84 + 56);
    sub_10000BBC4(&v233, &v243, &qword_100844990, &qword_1006E49A0);
    if (v244)
    {
      sub_10001F358(&v243, &v246);
    }

    else
    {
      sub_100020260(&v221, &v246);
      v159 = type metadata accessor for RemoteDocumentProviderRequestDispatcher();
      v160 = swift_allocObject();
      sub_10001F358(&v246, v160 + 16);
      v248 = &off_10080F2F8;
      v247 = v159;
      *&v246 = v160;
      if (v244)
      {
        sub_10000BE18(&v243, &qword_100844990, &qword_1006E49A0);
      }
    }

    sub_10001F358(&v246, v84 + 96);
    sub_100020260(&v255, v84 + 176);
    sub_10000BBC4(&v216, &v243, &qword_100844998, &qword_1006E49A8);
    if (v244)
    {

      sub_10000BE18(&v216, &qword_100844998, &qword_1006E49A8);
      sub_10000BE18(&v233, &qword_100844990, &qword_1006E49A0);
      sub_10000BE18(&v210, &qword_100844988, &qword_1006E4998);
      sub_10000BB78(&v221);
      sub_10000BB78(&v255);
      sub_10001F358(&v243, &v246);
    }

    else
    {
      sub_100020260(&v221, &v246);
      type metadata accessor for UserDefaultsConfiguration();
      v161 = static UserDefaultsConfiguration.standard.getter();
      v162 = type metadata accessor for WebPresentmentScannableCodeManager();
      v163 = swift_allocObject();
      swift_defaultActor_initialize();
      v163[21] = 0;
      v163[22] = 0;
      sub_10001F358(&v246, (v163 + 14));
      v163[19] = sub_10046EB20;
      v163[20] = 0;
      v163[23] = v161;
      v247 = v162;
      v248 = &off_100812080;

      *&v246 = v163;
      sub_10000BE18(&v216, &qword_100844998, &qword_1006E49A8);
      sub_10000BE18(&v233, &qword_100844990, &qword_1006E49A0);
      sub_10000BE18(&v210, &qword_100844988, &qword_1006E4998);
      sub_10000BB78(&v221);
      sub_10000BB78(&v255);
      if (v244)
      {
        sub_10000BE18(&v243, &qword_100844998, &qword_1006E49A8);
      }
    }

    sub_10000BB78(&v249);
    sub_10001F358(&v246, v84 + 136);
    sub_10001F358(&v252, v84 + 216);
    sub_10000BB78(&v258);
    sub_10000BB78(v239);
    v164 = v188;
    v188[3] = v261;
    v164[4] = &off_100811C38;
    *v164 = v84;
  }

  else
  {
    v261 = "s:bypassRecord:)";
    (v183[6].Description)(v184, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100452308(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100452308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100452350()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100452398()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004523E0()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100452420()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);

  return _swift_deallocObject(v0, 200, 7);
}

void *sub_100452498(uint64_t a1)
{
  v3 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = _swiftEmptyArrayStorage;
  sub_100173514(0, v6, 0);
  v7 = v34;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v33 = *(a1 + 36);
  v27 = a1 + 72;
  v28 = v6;
  v29 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v32 = v11;
    v14 = *(*(a1 + 56) + 8 * v10);
    v15 = a1;
    v16 = *(v31 + 48);

    Locale.Region.init(_:)();
    *&v5[v16] = v14;
    v34 = v7;
    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      sub_100173514((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    v7[2] = v18 + 1;
    result = sub_100453C74(v5, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18);
    v12 = 1 << *(v15 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    a1 = v15;
    v8 = v29;
    v19 = *(v29 + 8 * v13);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (v27 + 8 * v13);
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_100316220(v10, v33, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_100316220(v10, v33, 0);
    }

LABEL_4:
    v11 = v32 + 1;
    v10 = v12;
    if (v32 + 1 == v28)
    {
      return v7;
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
  return result;
}

void *sub_1004527AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100453210(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1004527D8(void *a1)
{
  v2 = *v1;
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  sub_10001F370(v4, v4[3]);
  sub_100007224(&qword_1008449A8, &qword_1006E4AD8);
  sub_10045338C(&qword_1008449C0, sub_100453410, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000BB78(v4);
}

Swift::Int sub_1004528CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10015ADA8(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10045291C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10015ADA8(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100452970()
{
  result = qword_1008449A0;
  if (!qword_1008449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449A0);
  }

  return result;
}

uint64_t sub_1004529C4(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v51 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
  v5 = __chkstk_darwin(v51);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v43 - v7;
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v56 = _swiftEmptyArrayStorage;
    sub_100173554(0, v8, 0);
    v54 = v56;
    v10 = a3 + 64;
    v11 = _HashTable.startBucket.getter();
    v12 = 0;
    v13 = *(a3 + 36);
    v45 = a3 + 72;
    v46 = v8;
    v47 = v13;
    v48 = a3 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      if (v13 != *(a3 + 36))
      {
        goto LABEL_28;
      }

      v52 = v12;
      v16 = *(a3 + 48);
      v17 = type metadata accessor for Locale.Region();
      v18 = *(v17 - 8);
      v19 = v49;
      (*(v18 + 16))(v49, v16 + *(v18 + 72) * v11, v17);
      v20 = *(*(a3 + 56) + 8 * v11);
      v21 = v50;
      (*(v18 + 32))(v50, v19, v17);
      *(v21 + *(v51 + 48)) = v20;

      v22 = Locale.Region.identifier.getter();
      v53 = v23;

      sub_100453CE4(v21);
      v24 = v54;
      v56 = v54;
      v25 = a3;
      v27 = v54[2];
      v26 = v54[3];
      if (v27 >= v26 >> 1)
      {
        sub_100173554((v26 > 1), v27 + 1, 1);
        v24 = v56;
      }

      v24[2] = v27 + 1;
      v28 = &v24[3 * v27];
      v29 = v53;
      v28[4] = v22;
      v28[5] = v29;
      v28[6] = v20;
      v14 = 1 << *(v25 + 32);
      if (v11 >= v14)
      {
        goto LABEL_29;
      }

      v10 = v48;
      v30 = *(v48 + 8 * v15);
      if ((v30 & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }

      a3 = v25;
      v54 = v24;
      LODWORD(v13) = v47;
      if (v47 != *(v25 + 36))
      {
        goto LABEL_31;
      }

      v31 = v30 & (-2 << (v11 & 0x3F));
      if (v31)
      {
        v14 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v15 << 6;
        v33 = v15 + 1;
        v34 = (v45 + 8 * v15);
        while (v33 < (v14 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_100316220(v11, v47, 0);
            v14 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_100316220(v11, v47, 0);
      }

LABEL_4:
      v12 = v52 + 1;
      v11 = v14;
      if (v52 + 1 == v46)
      {
        v9 = v54;
        goto LABEL_21;
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
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v9[2])
    {
      sub_100007224(&qword_100834970, &qword_1006DA7E0);
      v37 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v37 = &_swiftEmptyDictionarySingleton;
    }

    v56 = v37;
    v38 = v43[1];
    sub_100453D4C(v9, 1, &v56);
    if (!v38)
    {

      v39 = v56;
      v40 = v44;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v39;
      sub_10016D5CC(v40, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      sub_10001F370(v55, v55[3]);
      sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
      sub_100453FC4();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

      return sub_10000BB78(v55);
    }
  }

  __break(1u);
  return result;
}