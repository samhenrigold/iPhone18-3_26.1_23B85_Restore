int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

uint64_t sub_100001920(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001998(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001A18@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001A5C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001A98(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001AEC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100001B70(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100001C08(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001C74(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001CE0(void *a1, uint64_t a2)
{
  v4 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100001E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001E70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E8C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001ED4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001F3C(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D898, type metadata accessor for OpenExternalURLOptionsKey, &unk_100011210);
  v3 = sub_100002088(&qword_10001D8A0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100010F14);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000020D0(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D850, type metadata accessor for LAError, &unk_1000110BC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000213C(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D850, type metadata accessor for LAError, &unk_1000110BC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000021AC(uint64_t a1)
{
  v2 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002088(&qword_10001D888, type metadata accessor for LAError, &unk_100011100);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000024AC()
{
  result = qword_10001D878;
  if (!qword_10001D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D878);
  }

  return result;
}

void sub_100002614(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_10000267C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000026F0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100002740()
{
  type metadata accessor for FamilyCircle();
  swift_allocObject();
  result = FamilyCircle.init()();
  qword_10001D920 = result;
  return result;
}

uint64_t sub_100002780(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v96 = a4;
  v7 = type metadata accessor for AppleAccount();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v88 - v12;
  v14 = type metadata accessor for Logger();
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v88 - v19;
  __chkstk_darwin(v18);
  v22 = &v88 - v21;
  if (a2)
  {
    swift_errorRetain();
    v23 = _convertErrorToNSError(_:)();
    v24 = [v23 ak_isUserCancelError];

    if (v24)
    {
      sub_1000031AC();
      v25 = swift_allocError();
      *v26 = 0;

      a2 = v25;
    }

    v27 = _convertErrorToNSError(_:)();
    v28 = [v27 ak_isServiceError];

    if (v28)
    {
      v29 = type metadata accessor for FamilyControlsError();
      sub_100003BE8();
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, enum case for FamilyControlsError.networkError(_:), v29);

      a2 = v30;
    }

    static Logger.authenticationUI.getter();
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v98 = v35;
      *v34 = 136446210;
      v97[0] = a2;
      swift_errorRetain();
      sub_100003200(&qword_10001D940, &qword_100011320);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000F11C(v36, v37, &v98);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Authentication failed with error: %{public}s", v34, 0xCu);
      sub_100003B9C(v35);
    }

    (*(v94 + 8))(v22, v95);
    *&v98 = a2;
    v101 = 1;
    swift_errorRetain();
    a3(&v98);

    return sub_100003FE8(&v98, &qword_10001D930, qword_100011300);
  }

  v91 = v13;
  v92 = v8;
  v93 = a3;
  if (!a1)
  {
    goto LABEL_25;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_25:
    sub_1000031AC();
    v65 = swift_allocError();
    v67 = 4;
LABEL_26:
    *v66 = v67;
    *&v98 = v65;
    v101 = 1;
    v93(&v98);
    return sub_100003FE8(&v98, &qword_10001D930, qword_100011300);
  }

  v41 = sub_100005A88(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_25;
  }

  v97[0] = *(*(a1 + 56) + 8 * v41);
  swift_unknownObjectRetain();
  sub_100003200(&qword_10001D938, &unk_1000118C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v44 = v98;
  static Logger.authenticationUI.getter();

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v90 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v98 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_10000F11C(v44, *(&v44 + 1), &v98);
    _os_log_impl(&_mh_execute_header, v45, v46, "Authenticated account altDSIS: %{public}s", v48, 0xCu);
    sub_100003B9C(v49);
  }

  v50 = *(v94 + 8);
  v50(v20, v95);
  v51 = v92;
  if ((sub_1000094CC(0) & 1) == 0)
  {
    if (qword_10001D740 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v69 = dispatch thunk of FamilyCircle.guardians.getter();
      v70 = v69;
      v71 = *(v69 + 16);
      v72 = v90;
      if (!v71)
      {
        break;
      }

      v73 = 0;
      v74 = v69 + 32;
      while (v73 < *(v70 + 16))
      {
        sub_100003A78(v74, &v98);
        sub_100003ADC(&v98, v99);
        v75 = dispatch thunk of FamilyMemberable.altDSID.getter();
        if (v76)
        {
          if (v75 == v72 && v76 == *(&v72 + 1))
          {

            goto LABEL_50;
          }

          v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v78)
          {

LABEL_50:

            sub_100003B20(&v98, v97);
            sub_100003A78(v97, &v98);
            v101 = 0;
            v93(&v98);
            sub_100003FE8(&v98, &qword_10001D930, qword_100011300);
            return sub_100003B9C(v97);
          }
        }

        ++v73;
        sub_100003B9C(&v98);
        v74 += 40;
        if (v71 == v73)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_52:
      swift_once();
    }

LABEL_40:

    sub_1000031AC();
    v65 = swift_allocError();
    v67 = 2;
    goto LABEL_26;
  }

  v52 = v91;
  AppleAccount.init()();
  static Logger.authenticationUI.getter();
  v53 = v7;
  v89 = *(v51 + 16);
  v89(v11, v52, v7);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v98 = v88;
    *v56 = 136446210;
    v57 = AppleAccount.altDSID.getter();
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 1280070990;
    }

    v60 = v51;
    if (v58)
    {
      v61 = v58;
    }

    else
    {
      v61 = 0xE400000000000000;
    }

    v62 = v11;
    v63 = *(v60 + 8);
    v63(v62, v53);
    v64 = sub_10000F11C(v59, v61, &v98);

    *(v56 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v54, v55, "Primary account altDSIS: %{public}s", v56, 0xCu);
    sub_100003B9C(v88);
  }

  else
  {

    v79 = v11;
    v63 = *(v51 + 8);
    v63(v79, v7);
  }

  v50(v17, v95);
  v80 = v93;
  v81 = v91;
  v82 = AppleAccount.altDSID.getter();
  if (v83)
  {
    if (__PAIR128__(v83, v82) == v90)
    {

LABEL_47:
      v99 = v53;
      v100 = &protocol witness table for AppleAccount;
      v85 = sub_100003B38(&v98);
      v89(v85, v81, v53);
      v101 = 0;
      v80(&v98);
      v63(v81, v53);
      return sub_100003FE8(&v98, &qword_10001D930, qword_100011300);
    }

    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v84)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  sub_1000031AC();
  v86 = swift_allocError();
  *v87 = 2;
  *&v98 = v86;
  v101 = 1;
  v80(&v98);
  sub_100003FE8(&v98, &qword_10001D930, qword_100011300);
  return (v63)(v81, v53);
}

unint64_t sub_1000031AC()
{
  result = qword_10001D928;
  if (!qword_10001D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D928);
  }

  return result;
}

uint64_t sub_100003200(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100003248(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v15)
  {
    sub_100003FE8(v14, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v14, v15);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v14);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000112F0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100004048();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    v12 = 0x8000000100012A20;
    v11 = 0xD00000000000001ALL;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD000000000000020;
  v12 = 0x8000000100012A40;
LABEL_8:
  sub_10000A640(v11, v12, v9);

  v13 = String._bridgeToObjectiveC()();

  [a3 setReason:v13];
}

void sub_100003454(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v15)
  {
    sub_100003FE8(v14, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v14, v15);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v14);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000112F0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100004048();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    v12 = 0x8000000100012A70;
    v11 = 0xD000000000000017;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001DLL;
  v12 = 0x8000000100012A90;
LABEL_8:
  sub_10000A640(v11, v12, v9);

  v13 = String._bridgeToObjectiveC()();

  [a3 setReason:v13];
}

void sub_100003660(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v15)
  {
    sub_100003FE8(v14, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v14, v15);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v14);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000112F0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100004048();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    v12 = 0x8000000100012AB0;
    v11 = 0xD000000000000019;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001FLL;
  v12 = 0x8000000100012AD0;
LABEL_8:
  sub_10000A640(v11, v12, v9);

  v13 = String._bridgeToObjectiveC()();

  [a3 setReason:v13];
}

void sub_10000386C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10001D740 != -1)
  {
    swift_once();
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v15)
  {
    sub_100003FE8(v14, &qword_10001D950, &qword_100011328);
    goto LABEL_7;
  }

  sub_100003ADC(v14, v15);
  v6 = dispatch thunk of FamilyMemberable.firstName.getter();
  v8 = v7;
  sub_100003B9C(v14);
  if (!v8)
  {
LABEL_7:
    sub_100003200(&qword_10001D958, &unk_100011330);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000112F0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100004048();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    v12 = 0x8000000100012AF0;
    v11 = 0xD000000000000019;
    goto LABEL_8;
  }

  sub_100003200(&qword_10001D958, &unk_100011330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000112E0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100004048();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  v11 = 0xD00000000000001FLL;
  v12 = 0x8000000100012B10;
LABEL_8:
  sub_10000A640(v11, v12, v9);

  v13 = String._bridgeToObjectiveC()();

  [a3 setReason:v13];
}

uint64_t sub_100003A78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100003ADC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003B20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_100003B38(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003B9C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003BE8()
{
  result = qword_10001D948;
  if (!qword_10001D948)
  {
    type metadata accessor for FamilyControlsError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D948);
  }

  return result;
}

id sub_100003C40(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (result)
  {
    v14 = result;
    if (a1 <= 1u)
    {
      if (a1)
      {
        sub_100003454(a2, a3, v12);
      }

      else
      {
        sub_100003248(a2, a3, v12);
      }
    }

    else if (a1 == 2)
    {
      sub_100003660(a2, a3, v12);
    }

    else
    {
      if (a1 != 3)
      {

        static Logger.authorization.getter();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Unknown authorization type. Returning nil.", v17, 2u);
        }

        else
        {
        }

        (*(v9 + 8))(v11, v8);

        return 0;
      }

      sub_10000386C(a2, a3, v12);
    }

    sub_10000A91C(0xD000000000000010, 0x80000001000129D0, &_swiftEmptyArrayStorage);
    v18 = String._bridgeToObjectiveC()();

    [v12 setTitle:v18];

    if ((sub_1000094CC(0) & 1) == 0)
    {

LABEL_19:
      [v12 setIsEphemeral:1];
      [v12 setAuthenticationType:2];
      [v12 setShouldPromptForPasswordOnly:1];
      [v12 setPresentingViewController:a4];

      return v12;
    }

    result = [v12 title];
    if (result)
    {
      v19 = result;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v25 = v20;
      v26 = v22;
      v23._countAndFlagsBits = 0xD000000000000020;
      v23._object = 0x80000001000129F0;
      String.append(_:)(v23);
      if (v26)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      [v12 setTitle:v24];

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003200(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004048()
{
  result = qword_10001D960;
  if (!qword_10001D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004214()
{
  result = qword_10001D968;
  if (!qword_10001D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D968);
  }

  return result;
}

uint64_t sub_100004268(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ConfirmationViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v5 = qword_10001D9C8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100005E5C;
    *(v6 + 24) = 0;
    v8[4] = sub_100005000;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000AC10;
    v8[3] = &unk_100018D20;
    v7 = _Block_copy(v8);

    dispatch_sync(v5, v7);
    _Block_release(v7);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100004550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for ConfirmationViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_100004814(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConfirmationViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000487C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100003200(&qword_10001D958, &unk_100011330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000112F0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100004048();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_10000A91C(0xD00000000000001ALL, 0x8000000100012BB0, v7);

  sub_100003ADC(a4, a4[3]);
  v9 = dispatch thunk of FamilyMemberable.firstName.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = "CONFIRMATION_APPROVE_MESSAGE";
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000112E0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v8;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v8;
    *(v14 + 72) = v11;
    *(v14 + 80) = v12;

    v15 = 0xD000000000000023;
  }

  else
  {
    v13 = "CONFIRMATION_APPROVE_TITLE";
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000112F0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v8;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    v15 = 0xD00000000000001CLL;
  }

  sub_10000A640(v15, v13 | 0x8000000000000000, v14);

  type metadata accessor for ConfirmationViewController();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();

  v19 = [v16 initWithTitle:v17 detailText:v18 icon:a3];

  sub_100004BE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v19;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = [objc_opt_self() boldButton];
  sub_10000A91C(0x445F4E4F4D4D4F43, 0xEB00000000454E4FLL, &_swiftEmptyArrayStorage);
  v24 = String._bridgeToObjectiveC()();

  [v23 setTitle:v24 forState:0];

  [v23 addAction:v22 forControlEvents:64];
  v25 = [v21 buttonTray];
  [v25 addButton:v23];

  return v21;
}

unint64_t sub_100004BE8()
{
  result = qword_10001D9A0;
  if (!qword_10001D9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D9A0);
  }

  return result;
}

uint64_t sub_100004C34()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100004C84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100003200(&qword_10001D958, &unk_100011330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000112F0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100004048();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_10000A91C(0xD000000000000017, 0x8000000100012C20, v7);

  sub_100003ADC(a4, a4[3]);
  v9 = dispatch thunk of FamilyMemberable.firstName.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = "CONFIRMATION_DENY_MESSAGE";
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000112E0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v8;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v8;
    *(v14 + 72) = v11;
    *(v14 + 80) = v12;

    v15 = 0xD000000000000020;
  }

  else
  {
    v13 = "CONFIRMATION_DENY_TITLE";
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000112F0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v8;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    v15 = 0xD000000000000019;
  }

  sub_10000A640(v15, v13 | 0x8000000000000000, v14);

  type metadata accessor for ConfirmationViewController();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();

  v19 = [v16 initWithTitle:v17 detailText:v18 icon:a3];

  sub_100004BE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v19;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = [objc_opt_self() boldButton];
  sub_10000A91C(0x445F4E4F4D4D4F43, 0xEB00000000454E4FLL, &_swiftEmptyArrayStorage);
  v24 = String._bridgeToObjectiveC()();

  [v23 setTitle:v24 forState:0];

  [v23 addAction:v22 forControlEvents:64];
  v25 = [v21 buttonTray];
  [v25 addButton:v23];

  return v21;
}

uint64_t sub_100005008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005068()
{
  v7 = 0;
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v0 = qword_10001D9C8;
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000071E8;
  *(v2 + 24) = v1;
  aBlock[4] = sub_100007750;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100018F28;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

void sub_1000051FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v8 = qword_10001D9C8;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10000702C;
  *(v10 + 24) = v9;
  v16[4] = sub_100007750;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000AC10;
  v16[3] = &unk_100018E60;
  v11 = _Block_copy(v16);
  v12 = a1;
  v13 = a2;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = CFRunLoopGetMain();
    CFRunLoopAddSource(v15, v13, kCFRunLoopCommonModes);
  }
}

uint64_t sub_1000053D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v11[4] = sub_100005000;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000AC10;
  v11[3] = &unk_100018DE8;
  v6 = _Block_copy(v11);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (!a1 || a1 == 3)
    {
      sub_100006F20();
      v8 = swift_allocError();
      *v9 = 0;
    }

    else
    {
      if (a1 == 1)
      {
        return a2(1, 0);
      }

      sub_100006F20();
      v8 = swift_allocError();
      *v10 = 1;
    }

    a2(v8, 1);
  }

  return result;
}

uint64_t sub_1000055C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v11[4] = sub_100007750;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000AC10;
  v11[3] = &unk_100018EB0;
  v6 = _Block_copy(v11);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (a1 == 3)
    {
      sub_100006F20();
      v8 = swift_allocError();
      *v9 = 0;
    }

    else
    {
      if (!a1)
      {
        return a2(1, 0);
      }

      sub_100006F20();
      v8 = swift_allocError();
      *v10 = 1;
    }

    a2(v8, 1);
  }

  return result;
}

uint64_t sub_1000057B8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005F48();
  static DispatchQoS.unspecified.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_100005F94();
  sub_100003200(&qword_10001D9E0, &unk_1000114D0);
  sub_100005FEC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10001D9C8 = result;
  return result;
}

uint64_t sub_1000059C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = xmmword_10001D9A8;
  v9 = qword_10001D9B8;
  v8 = qword_10001D9C0;
  *&xmmword_10001D9A8 = a1;
  *(&xmmword_10001D9A8 + 1) = a2;
  qword_10001D9B8 = a3;
  qword_10001D9C0 = a4;
  sub_100005F00(v7, *(&v7 + 1), v9, v8);
  v10 = a1;
  v11 = a2;
}

uint64_t sub_100005A2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100005A78(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100005A88(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005BD8(a1, a2, v4);
}

unint64_t sub_100005B00(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100005C90(a1, v2);
}

unint64_t sub_100005B94(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100005D94(a1, v4);
}

unint64_t sub_100005BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100005D94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000074D0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000752C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100005E5C()
{
  if (xmmword_10001D9A8)
  {
    v0 = *(&xmmword_10001D9A8 + 1);
    v1 = xmmword_10001D9A8;
    v2 = v0;

    CFRunLoopSourceInvalidate(v2);
    CFUserNotificationCancel(v1);

    v3 = xmmword_10001D9A8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(&xmmword_10001D9A8 + 1);
  v5 = qword_10001D9B8;
  v6 = qword_10001D9C0;
  xmmword_10001D9A8 = 0u;
  *&qword_10001D9B8 = 0u;

  return sub_100005F00(v3, v4, v5, v6);
}

void *sub_100005F00(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100005F48()
{
  result = qword_10001D9D0;
  if (!qword_10001D9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D9D0);
  }

  return result;
}

unint64_t sub_100005F94()
{
  result = qword_10001D9D8;
  if (!qword_10001D9D8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9D8);
  }

  return result;
}

unint64_t sub_100005FEC()
{
  result = qword_10001D9E8;
  if (!qword_10001D9E8)
  {
    sub_100006050(&qword_10001D9E0, &unk_1000114D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9E8);
  }

  return result;
}

uint64_t sub_100006050(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA08, &qword_1000114F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, &v13, &qword_10001DA00, &qword_1000114E8);
      v5 = v13;
      v6 = v14;
      result = sub_100005A88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006FBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

Class sub_1000061C8(uint64_t a1, uint64_t a2, int a3)
{
  v51 = a3;
  v5 = type metadata accessor for AppleAccount();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(LSApplicationRecord);

  v9 = sub_100009118(a1, a2, 1);
  v10 = [v9 localizedName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100003200(&qword_10001D958, &unk_100011330);
  v14 = swift_allocObject();
  v48 = xmmword_1000112F0;
  *(v14 + 16) = xmmword_1000112F0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100004048();
  *(v14 + 64) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;

  v16 = sub_10000A91C(0xD00000000000001FLL, 0x8000000100012CD0, v14);
  v49 = v17;
  v50 = v16;

  if (v51)
  {
    AppleAccount.init()();
    v18 = AppleAccount.firstName.getter();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = "H_REQUEST_MESSAGE";
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000112E0;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = v15;
      *(v23 + 32) = v11;
      *(v23 + 40) = v13;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v15;
      *(v23 + 72) = v20;
      *(v23 + 80) = v21;

      v24 = 0xD000000000000027;
    }

    else
    {
      v22 = "COMMON_DONT_ALLOW";
      v23 = swift_allocObject();
      *(v23 + 16) = v48;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = v15;
      *(v23 + 32) = v11;
      *(v23 + 40) = v13;

      v24 = 0xD000000000000021;
    }

    v26 = sub_10000A91C(v24, v22 | 0x8000000000000000, v23);
    v28 = v29;

    (*(v46 + 8))(v7, v47);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v48;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v15;
    *(v25 + 32) = v11;
    *(v25 + 40) = v13;

    v26 = sub_10000A91C(0xD00000000000002CLL, 0x8000000100012CF0, v25);
    v28 = v27;
  }

  v30 = sub_10000A91C(0xD000000000000011, 0x8000000100012D20, &_swiftEmptyArrayStorage);
  v32 = v31;
  v33 = sub_10000A91C(0x435F4E4F4D4D4F43, 0xEF45554E49544E4FLL, &_swiftEmptyArrayStorage);
  v35 = v34;
  sub_100003200(&qword_10001D9F8, &qword_1000114E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000114B0;
  result = kCFUserNotificationAlertHeaderKey;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v38;
  *(inited + 72) = &type metadata for String;
  v39 = v49;
  *(inited + 48) = v50;
  *(inited + 56) = v39;
  result = kCFUserNotificationAlertMessageKey;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v40;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v26;
  *(inited + 104) = v28;
  result = kCFUserNotificationDefaultButtonTitleKey;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v41;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v30;
  *(inited + 152) = v32;
  result = kCFUserNotificationAlternateButtonTitleKey;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v42;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v33;
  *(inited + 200) = v35;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 224) = result;
  *(inited + 232) = v43;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  if (SBUserNotificationWakeDisplay)
  {

    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v44;
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = 0;
    sub_100006098(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA00, &qword_1000114E8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

LABEL_19:
  __break(1u);
  return result;
}

CFStringRef sub_1000066E4()
{
  v0 = sub_10000A91C(0xD000000000000021, 0x8000000100012DA0, &_swiftEmptyArrayStorage);
  v2 = v1;
  v3 = sub_10000A640(0xD000000000000023, 0x8000000100012DD0, &_swiftEmptyArrayStorage);
  v5 = v4;
  v6 = sub_10000A91C(0x4F5F4E4F4D4D4F43, 0xE90000000000004BLL, &_swiftEmptyArrayStorage);
  v8 = v7;
  sub_100003200(&qword_10001D9F8, &qword_1000114E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000114C0;
  result = kCFUserNotificationAlertHeaderKey;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v0;
  *(inited + 56) = v2;
  result = kCFUserNotificationAlertMessageKey;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v3;
  *(inited + 104) = v5;
  result = kCFUserNotificationDefaultButtonTitleKey;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 152) = v8;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  result = SBUserNotificationWakeDisplay;
  if (SBUserNotificationWakeDisplay)
  {
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v15;
    *(inited + 264) = &type metadata for Bool;
    *(inited + 240) = 0;
    sub_100006098(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA00, &qword_1000114E8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10000690C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned int a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = __chkstk_darwin(v14);
  v50 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - v18;
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  v53 = a5;
  *(v22 + 24) = a5;
  v54 = a6;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  v23 = a7;
  v24 = a4;

  if (sub_100005068())
  {
    static Logger.authorization.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Already presenting a user notification. Rejecting the new request.", v27, 2u);
    }

    (*(v51 + 8))(v21, v52);
    sub_100006F20();
    v28 = swift_allocError();
    *v29 = 0;
    sub_10000CC94(v28, 1, v24, v53, v54, v23);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v30 = sub_1000061C8(a1, a2, 0);
      }

      else
      {
        v30 = sub_1000066E4();
      }
    }

    else
    {
      v30 = sub_1000061C8(a1, a2, 1);
    }

    v31 = v30;
    error = 0;
    v32 = CFUserNotificationCreate(0, 0.0, 0, &error, v30);
    if (v32)
    {
      v33 = v32;
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v33, sub_1000051F4, 0);
      if (RunLoopSource)
      {
        v35 = RunLoopSource;
        if (a3 >= 2u)
        {
          v36 = sub_100006FAC;
        }

        else
        {
          v36 = sub_100006FB4;
        }

        v37 = swift_allocObject();
        *(v37 + 16) = sub_100006F0C;
        *(v37 + 24) = v22;
        v38 = v33;
        v39 = v35;

        sub_1000051FC(v38, v39, v36, v37);
      }

      else
      {
        static Logger.authorization.getter();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create run loop source", v47, 2u);
        }

        (*(v51 + 8))(v50, v52);
        sub_100006F20();
        v48 = swift_allocError();
        *v49 = 1;
        sub_10000CC94(v48, 1, v24, v53, v54, v23);
      }
    }

    else
    {
      static Logger.authorization.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        swift_beginAccess();
        *(v42 + 4) = error;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create user notification. ErrorCode: %d", v42, 8u);
      }

      (*(v51 + 8))(v19, v52);
      sub_100006F20();
      v43 = swift_allocError();
      *v44 = 1;
      sub_10000CC94(v43, 1, v24, v53, v54, v23);
    }
  }
}

uint64_t sub_100006ECC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100006F20()
{
  result = qword_10001D9F0;
  if (!qword_10001D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D9F0);
  }

  return result;
}

uint64_t sub_100006F74()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_100006FBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007048(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_10001D9A8)
  {
    v6 = qword_10001D9B8;

    v6(a1 & 3);
  }

  else
  {
    static Logger.authorization.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No response handler provided for the presented notification, ignoring the response.", v10, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_100007204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA10, &qword_1000114F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, &v11, &qword_10001DA18, &qword_100011500);
      v5 = v11;
      result = sub_100005B00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006FBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10000732C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003200(&qword_10001DA20, &qword_100011508);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007468(v4, v13, &qword_10001DA28, qword_100011510);
      result = sub_100005B94(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006FBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100007468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003200(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for NotificationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000076E0()
{
  result = qword_10001DA30;
  if (!qword_10001DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DA30);
  }

  return result;
}

UIImage *sub_100007760(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 traitCollection];
  [v8 displayScale];
  v10 = v9;

  [v2 size];
  v12 = v11 + v11;
  [v2 size];
  v37.width = v12;
  UIGraphicsBeginImageContextWithOptions(v37, 0, v10);
  [v2 size];
  v14 = v13 + -40.0;
  [v2 size];
  v16 = v15;
  [v2 size];
  v18 = v17;
  [v2 size];
  v20 = v19;
  [v2 size];
  v22 = v21;
  [v2 drawInRect:{v14, 0.0, v16, v18}];
  [a1 drawInRect:0 blendMode:0.0 alpha:{0.0, v20, v22, 1.0}];
  v23 = UIGraphicsGetImageFromCurrentImageContext();
  if (v23)
  {
    v24 = v23;
    UIGraphicsEndImageContext();
  }

  else
  {
    [v2 size];
    v27 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v25 scale:{v26, v10}];
    v28 = [objc_opt_self() genericApplicationIcon];
    v29 = [v28 prepareImageForDescriptor:v27];

    if (v29)
    {
      v30 = [v29 CGImage];

      if (v30)
      {
        v31 = [objc_allocWithZone(UIImage) initWithCGImage:v30];

        return v31;
      }
    }

    static Logger.authenticationUI.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to resolve merged icons and generic icon", v35, 2u);
    }

    (*(v5 + 8))(v7, v4);
    v24 = [objc_allocWithZone(UIImage) init];
  }

  return v24;
}

uint64_t sub_100007AD4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_100003200(&qword_10001DA70, &unk_1000116C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100008F64(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    sub_100007204(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100008FCC(&qword_10001D898, type metadata accessor for OpenExternalURLOptionsKey, &unk_100011210);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 openURL:v13 options:isa completionHandler:0];

    (*(v7 + 8))(v9, v6);
  }

  v15 = type metadata accessor for FamilyControlsError();
  sub_100008FCC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
  v16 = swift_allocError();
  (*(*(v15 - 8) + 104))(v17, enum case for FamilyControlsError.authorizationCanceled(_:), v15);
  a2(v16);
}

void sub_100007DE4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100008E70(0, &qword_10001D9A0, UIAction_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = [objc_opt_self() boldButton];
  if (a1)
  {
    sub_10000A91C(0xD000000000000016, 0x8000000100013040, &_swiftEmptyArrayStorage);
    v11 = String._bridgeToObjectiveC()();

    [v10 setTitle:v11 forState:0];
  }

  else
  {
    v11 = [objc_allocWithZone(LAContext) init];
    if ([v11 canEvaluatePolicy:1 error:0])
    {
      v12 = [v11 biometryType];
      v13 = 0xE500000000000000;
      v14 = 0x574F4C4C41;
      if (v12 == 1)
      {
        v14 = 0xD000000000000010;
        v13 = 0x8000000100013020;
      }

      v15 = v12 == 2;
      if (v12 == 2)
      {
        v16 = 0x5F575F574F4C4C41;
      }

      else
      {
        v16 = v14;
      }

      if (v15)
      {
        v17 = 0xEF44495F45434146;
      }

      else
      {
        v17 = v13;
      }
    }

    else
    {
      v17 = 0x8000000100013000;
      v16 = 0xD000000000000017;
    }

    sub_10000A91C(v16, v17, &_swiftEmptyArrayStorage);

    v18 = String._bridgeToObjectiveC()();

    [v10 setTitle:v18 forState:0];
  }

  [v10 addAction:v9 forControlEvents:64];
  v19 = [v4 buttonTray];
  [v19 addButton:v10];
}

void sub_1000080B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v9[4] = sub_100008F44;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000827C;
  v9[3] = &unk_100019058;
  v8 = _Block_copy(v9);

  [a2 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_10000819C(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for FamilyControlsError();
  sub_100008FCC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, enum case for FamilyControlsError.authorizationCanceled(_:), v2);
  a1(v3);
}

uint64_t sub_10000827C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100008344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for InformationalViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_100008608(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InformationalViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100008670(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a5;
  v11 = type metadata accessor for AppleAccount();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10000A91C(0xD00000000000001ELL, 0x8000000100012E50, &_swiftEmptyArrayStorage);
  v16 = v15;
  v68 = a1;
  if (a1)
  {
    v65 = v12;
    isa = v11;
    AppleAccount.init()();
    v17 = AppleAccount.firstName.getter();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v64[0] = "INGS_DISCLOSURE_CHILD_DEFAULT";
      sub_100003200(&qword_10001D958, &unk_100011330);
      v64[1] = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100011640;
      *(v21 + 56) = &type metadata for String;
      v22 = sub_100004048();
      v64[2] = a4;
      v23 = v22;
      *(v21 + 32) = a2;
      *(v21 + 40) = a3;
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v22;
      *(v21 + 64) = v22;
      *(v21 + 72) = v19;
      *(v21 + 80) = v20;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v22;
      *(v21 + 112) = a2;
      *(v21 + 120) = a3;
      swift_bridgeObjectRetain_n();

      v24 = sub_10000A91C(0xD00000000000002ALL, v64[0] | 0x8000000000000000, v21);
      v26 = v25;

      v71 = v24;
      v72 = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000112F0;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = v23;
      *(v27 + 32) = v19;
      *(v27 + 40) = v20;
      v28 = sub_10000A91C(0xD000000000000025, 0x8000000100012FA0, v27);
      v30 = v29;

      v70._countAndFlagsBits = 2570;
      v70._object = 0xE200000000000000;
      v31 = v28;
      v32 = v30;
    }

    else
    {
      sub_100003200(&qword_10001D958, &unk_100011330);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000112E0;
      *(v38 + 56) = &type metadata for String;
      v39 = sub_100004048();
      *(v38 + 32) = a2;
      *(v38 + 40) = a3;
      *(v38 + 96) = &type metadata for String;
      *(v38 + 104) = v39;
      *(v38 + 64) = v39;
      *(v38 + 72) = a2;
      *(v38 + 80) = a3;
      swift_bridgeObjectRetain_n();
      v40 = sub_10000A91C(0xD000000000000032, 0x8000000100012F00, v38);
      v42 = v41;

      v71 = v40;
      v72 = v42;
      v31 = sub_10000A91C(0xD00000000000002DLL, 0x8000000100012F40, &_swiftEmptyArrayStorage);
      v70._countAndFlagsBits = 2570;
      v70._object = 0xE200000000000000;
    }

    String.append(_:)(*&v31);

    String.append(_:)(v70);

    (*(v65 + 8))(v14, isa);
  }

  else
  {
    sub_100003200(&qword_10001D958, &unk_100011330);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000112F0;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100004048();
    *(v33 + 32) = a2;
    *(v33 + 40) = a3;

    v34 = sub_10000A91C(0xD000000000000035, 0x8000000100012E70, v33);
    v36 = v35;

    v71 = v34;
    v72 = v36;
    v37._countAndFlagsBits = sub_10000A91C(0xD00000000000002ALL, 0x8000000100012EB0, &_swiftEmptyArrayStorage);
    v70._countAndFlagsBits = 2570;
    v70._object = 0xE200000000000000;
    String.append(_:)(v37);

    String.append(_:)(v70);
  }

  sub_100008E70(0, &qword_10001DA68, UIImage_ptr);
  v43._countAndFlagsBits = 0x73616C6772756F48;
  v43._object = 0xE900000000000073;
  isa = UIImage.init(imageLiteralResourceName:)(v43).super.isa;
  v44 = sub_100007760(isa);
  type metadata accessor for InformationalViewController();
  v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v46 = v44;
  v47 = String._bridgeToObjectiveC()();

  v48 = String._bridgeToObjectiveC()();

  v49 = [v45 initWithTitle:v47 detailText:v48 icon:v46];

  v50 = [v49 headerView];
  [v50 setAllowFullWidthIcon:1];

  sub_100008E70(0, &qword_10001D9A0, UIAction_ptr);
  v51 = swift_allocObject();
  v52 = v69;
  *(v51 + 16) = v69;
  *(v51 + 24) = a6;

  v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v54 = [objc_opt_self() accessoryButton];
  sub_10000A91C(0xD000000000000011, 0x8000000100012EE0, &_swiftEmptyArrayStorage);
  v55 = String._bridgeToObjectiveC()();

  [v54 setTitle:v55 forState:0];

  [v54 addAction:v53 forControlEvents:64];
  v56 = [v49 headerView];
  [v56 addAccessoryButton:v54];

  sub_100007DE4(v68 & 1, v52, a6);
  v57 = swift_allocObject();
  v57[2] = v49;
  v57[3] = v52;
  v57[4] = a6;

  v58 = v49;
  v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v60 = [objc_opt_self() buttonWithType:1];
  sub_10000A91C(0xD000000000000011, 0x8000000100012D20, &_swiftEmptyArrayStorage);
  v61 = String._bridgeToObjectiveC()();

  [v60 setTitle:v61 forState:0];

  [v60 addAction:v59 forControlEvents:64];
  v62 = [v58 buttonTray];
  [v62 addButton:v60];

  return v58;
}

uint64_t sub_100008E70(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008EB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008EF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008F64(uint64_t a1)
{
  v2 = sub_100003200(&qword_10001DA70, &unk_1000116C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static LSResolutions.resolveApplicationName(_:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_100009118(a1, a2, 1);
  v6 = [v5 localizedName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

id sub_100009118(uint64_t a1, uint64_t a2, char a3)
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

id _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v9 = objc_allocWithZone(ISIcon);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithBundleIdentifier:v10];

  v12 = [v11 prepareImageForDescriptor:v8];
  if (v12 && (v13 = [v12 CGImage], v12, v13))
  {
    v14 = [objc_allocWithZone(UIImage) initWithCGImage:v13];
  }

  else
  {
    static Logger.family.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_10000F11C(a1, a2, &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to resolve icon for bundle identifier: %{private}s", v17, 0xCu);
      sub_100003B9C(v18);
    }

    (*(v5 + 8))(v7, v4);
    v14 = [objc_allocWithZone(UIImage) init];
  }

  return v14;
}

uint64_t sub_1000094CC(int a1)
{
  v30 = a1;
  v1 = 0xD000000000000010;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = os_variant_allows_internal_security_policies();
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {

      v12 = 1;
    }

    else
    {
      v13 = String._bridgeToObjectiveC()();
      v14 = [v9 BOOLForKey:v13];

      v15 = String._bridgeToObjectiveC()();
      v12 = [v9 BOOLForKey:v15];

      if (v30)
      {
        if (v30 != 1)
        {
          v12 &= v14;
        }
      }

      else
      {
        v12 = v14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  static Logger.permissions.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v29 = v2;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136315650;
    HIDWORD(v28) = v6;
    if (v6)
    {
      v19 = 0;
    }

    else
    {
      v19 = 1953459744;
    }

    if (v6)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v21 = sub_10000F11C(v19, v20, &v31);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (v30)
    {
      if (v30 == 1)
      {
        v1 = 0x6E614D4D444D6F6ELL;
      }

      else
      {
        v1 = 7105633;
      }

      if (v30 == 1)
      {
        v22 = 0xEF746E656D656761;
      }

      else
      {
        v22 = 0xE300000000000000;
      }
    }

    else
    {
      v22 = 0x8000000100013100;
    }

    v23 = sub_10000F11C(v1, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    if (v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = 1953459744;
    }

    if (v12)
    {
      v25 = 0xE000000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    v26 = sub_10000F11C(v24, v25, &v31);

    *(v18 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "This device is%s internal and the permission requirement %s is%s overridden.", v18, 0x20u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v29);
    v6 = HIDWORD(v28);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v6 & v12;
}

void sub_1000098D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *(type metadata accessor for AuthenticationBiometric(0) + 28);
    v8 = type metadata accessor for AppleAccount();
    v20[3] = v8;
    v20[4] = &protocol witness table for AppleAccount;
    v9 = sub_100003B38(v20);
    (*(*(v8 - 8) + 16))(v9, a5 + v7, v8);
    v21 = 0;
    a3(v20);
LABEL_17:
    sub_10000A078(v20);
    return;
  }

  if (!a2)
  {
    return;
  }

  v19 = _convertErrorToNSError(_:)();
  v10 = [v19 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_13:
    v20[0] = v19;
    type metadata accessor for LAError(0);
    sub_10000A33C();
    _BridgedStoredNSError.code.getter();
    sub_1000031AC();
    v17 = swift_allocError();
    *v18 = v22 == -1;
    v20[0] = v17;
    v21 = 1;
    a3(v20);

    goto LABEL_17;
  }
}

uint64_t sub_100009B00(uint64_t a1, uint64_t a2, void *a3)
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

void sub_100009BAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthenticationBiometric(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v13 = a1[2];
  v12 = a1[3];
  v14 = a2;

  if ([v13 canEvaluatePolicy:v12 error:0])
  {
    sub_100003200(&qword_10001DB10, qword_100011718);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000112E0;
    LODWORD(aBlock[0]) = 1021;
    AnyHashable.init<A>(_:)();
    v30 = v12;
    v29 = v13;
    v28 = v9;
    v16 = *a1;
    v17 = a1[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    LODWORD(aBlock[0]) = 2;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    sub_100003200(&qword_10001D958, &unk_100011330);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000112F0;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100004048();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    v19 = sub_10000A640(0xD000000000000010, 0x8000000100013120, v18);
    v21 = v20;

    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v19;
    *(inited + 152) = v21;
    sub_10000732C(inited);
    swift_setDeallocating();
    sub_100003200(&qword_10001DA28, qword_100011510);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10000A0E0(a1, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10000A06C;
    *(v24 + 24) = v11;
    sub_10000A23C(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    aBlock[4] = sub_10000A2A0;
    v32 = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009B00;
    aBlock[3] = &unk_1000190F8;
    v25 = _Block_copy(aBlock);

    [v29 evaluatePolicy:v30 options:isa reply:v25];
    _Block_release(v25);
  }

  else
  {
    sub_1000031AC();
    v26 = swift_allocError();
    *v27 = 3;
    aBlock[0] = v26;
    LOBYTE(v32) = 1;
    sub_10000D80C(aBlock, v14, a3, a4);
    sub_10000A078(aBlock);
  }
}

uint64_t type metadata accessor for AuthenticationBiometric(uint64_t a1)
{
  result = qword_10001DB70;
  if (!qword_10001DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A02C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A078(uint64_t a1)
{
  v2 = sub_100003200(&qword_10001D930, qword_100011300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationBiometric(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A144()
{
  v1 = (type metadata accessor for AuthenticationBiometric(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for AppleAccount();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationBiometric(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000A2A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AuthenticationBiometric(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1000098D4(a1, a2, v6, v7, v8);
}

uint64_t sub_10000A324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A33C()
{
  result = qword_10001D888;
  if (!qword_10001D888)
  {
    type metadata accessor for LAError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D888);
  }

  return result;
}

uint64_t sub_10000A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleAccount();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppleAccount();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000A50C(uint64_t a1)
{
  sub_10000A5B8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LAPolicy(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppleAccount();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000A5B8()
{
  result = qword_10001DB80;
  if (!qword_10001DB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001DB80);
  }

  return result;
}

id sub_10000A604()
{
  result = [objc_opt_self() mainBundle];
  qword_10001DBB8 = result;
  return result;
}

uint64_t sub_10000A640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003200(&unk_10001DBC0, "l\n");
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  result = MGCopyAnswer();
  if (result)
  {
    v22 = result;
    if (swift_dynamicCast())
    {
      v20 = a1;
      v21 = a2;

      v9._countAndFlagsBits = 95;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10 = v20;
      v11 = v21;
      v12 = String.uppercased()();

      v20 = v10;
      v21 = v11;

      String.append(_:)(v12);

      if (qword_10001D750 != -1)
      {
        swift_once();
      }

      v13 = qword_10001DBB8;
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      if (qword_10001D750 != -1)
      {
        swift_once();
      }

      v13 = qword_10001DBB8;
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static Locale.autoupdatingCurrent.getter();
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    v18 = String.init(format:locale:arguments:)();

    sub_10000AAD0(v7);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100003200(&unk_10001DBC0, "l\n");
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v6 = qword_10001DBB8;
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale.autoupdatingCurrent.getter();
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = String.init(format:locale:arguments:)();

  sub_10000AAD0(v5);
  return v11;
}

uint64_t sub_10000AAD0(uint64_t a1)
{
  v2 = sub_100003200(&unk_10001DBC0, "l\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100003200(&qword_10001D938, &unk_1000118C0);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

Swift::Int sub_10000AC40()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000ACAC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_10000ACEC()
{
  v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = 4;
  v1 = &v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection];
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  *&v0[v2] = [objc_allocWithZone(OBNavigationController) init];
  *&v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___authenicationResultsAgent] = 0;
  *&v0[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  return objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
}

uint64_t (*sub_10000ADD8(void *a1, uint64_t (*a2)(void), uint64_t a3))(void)
{
  v96 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v86 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v86 - v15;
  v17 = __chkstk_darwin(v14);
  v92 = &v86 - v18;
  __chkstk_darwin(v17);
  v88 = &v86 - v19;
  v20 = sub_100003200(&qword_10001DCD8, &qword_1000118D8);
  __chkstk_darwin(v20 - 8);
  v22 = &v86 - v21;
  v23 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  v89 = &v86 - v26;
  if (!a1)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v87 = v25;
  v93 = v7;
  v94 = v6;
  v97 = v3;
  v95 = a3;
  v27 = [a1 xpcEndpoint];
  if (!v27)
  {
LABEL_43:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v28 = v27;
  v29 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v29 _setEndpoint:v28];
  type metadata accessor for FamilyControlsAuthenticationUIService();
  v30 = static FamilyControlsAuthenticationUIService.connection(endpoint:)();
  v32 = v31;
  swift_getObjectType();
  dispatch thunk of XPCConnectable.activate()();
  swift_unknownObjectRelease();

  v33 = v97;
  v34 = (v97 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
  *v34 = v30;
  v34[1] = v32;
  swift_unknownObjectRelease();
  v35 = [a1 userInfo];
  if (!v35)
  {
    static Logger.authenticationUI.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Context missing user info", v53, 2u);
    }

    (*(v93 + 8))(v10, v94);
    return sub_10000B88C(v96, v95, v33);
  }

  v36 = v35;
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = static FamilyControlsAuthenticationUIService.ServiceBundleIdentifierKey.getter();
  v99 = v38;
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v39 = sub_100005B94(v100), (v40 & 1) == 0))
  {

    sub_10000752C(v100);
LABEL_13:
    static Logger.authenticationUI.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Context missing bundle identifier", v50, 2u);
    }

    (*(v93 + 8))(v13, v94);
    return sub_10000B88C(v96, v95, v33);
  }

  sub_10000F888(*(v37 + 56) + 32 * v39, v101);
  sub_10000752C(v100);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v42 = v98;
  v41 = v99;
  v98 = static FamilyControlsAuthenticationUIService.ServiceMemberKey.getter();
  v99 = v43;
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v44 = sub_100005B94(v100), (v45 & 1) == 0))
  {

    sub_10000752C(v100);
    goto LABEL_23;
  }

  sub_10000F888(*(v37 + 56) + 32 * v44, v101);
  sub_10000752C(v100);
  if (swift_dynamicCast())
  {
    v46 = FamilyControlsMember.init(rawValue:)();
    if ((v47 & 1) == 0)
    {
      v58 = v46;
      v98 = static FamilyControlsAuthenticationUIService.ServiceTypeKey.getter();
      v99 = v59;
      AnyHashable.init<A>(_:)();
      if (!*(v37 + 16) || (v60 = sub_100005B94(v100), (v61 & 1) == 0))
      {

        sub_10000752C(v100);
        goto LABEL_32;
      }

      sub_10000F888(*(v37 + 56) + 32 * v60, v101);
      sub_10000752C(v100);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_32;
      }

      v86 = v42;
      FamilyControlsAuthenticationUIService.ServiceType.init(rawValue:)();
      v63 = v90;
      v62 = v91;
      if ((*(v90 + 48))(v22, 1, v91) == 1)
      {

        sub_100003FE8(v22, &qword_10001DCD8, &qword_1000118D8);
LABEL_32:
        v64 = v92;
        static Logger.authenticationUI.getter();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Context missing type", v67, 2u);
        }

        (*(v93 + 8))(v64, v94);
        return sub_10000B88C(v96, v95, v33);
      }

      v68 = v89;
      (*(v63 + 32))(v89, v22, v62);
      v69 = v41;
      v70 = v88;
      static Logger.authenticationUI.getter();
      v71 = v87;
      (*(v63 + 16))(v87, v68, v62);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v100[0] = swift_slowAlloc();
        *v74 = 136446466;
        sub_10000FADC(&qword_10001DCE0, &type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType, &protocol conformance descriptor for FamilyControlsAuthenticationUIService.ServiceType);
        LODWORD(v92) = v73;
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v78 = v71;
        v79 = *(v90 + 8);
        v79(v78, v91);
        v80 = sub_10000F11C(v75, v77, v100);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2082;
        v81 = v86;
        *(v74 + 14) = sub_10000F11C(v86, v69, v100);
        _os_log_impl(&_mh_execute_header, v72, v92, "Configured for type: %{public}s, bundle identifier: %{public}s", v74, 0x16u);
        swift_arrayDestroy();

        v62 = v91;

        (*(v93 + 8))(v88, v94);
        v82 = v96;
      }

      else
      {

        v83 = v71;
        v79 = *(v63 + 8);
        v79(v83, v62);
        (*(v93 + 8))(v70, v94);
        v82 = v96;
        v81 = v86;
      }

      v84 = v89;
      sub_10000BBA8(v89, v58, v81, v69);
      if (v82)
      {

        (v82)(v85);
        return (v79)(v84, v62);
      }

      goto LABEL_42;
    }
  }

LABEL_23:
  static Logger.authenticationUI.getter();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Context missing type of family controls member", v57, 2u);
  }

  (*(v93 + 8))(v16, v94);
  return sub_10000B88C(v96, v95, v33);
}

uint64_t (*sub_10000B88C(uint64_t (*result)(void), uint64_t a2, uint64_t a3))(void)
{
  if (!result)
  {
    goto LABEL_9;
  }

  result();
  sub_10000FB24();
  swift_allocError();
  v4 = sub_10000C530();
  v5 = _convertErrorToNSError(_:)();
  [v4 didCompleteAuthenticationRequestWithStatus:0 error:v5];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v6 = qword_10001D9C8;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100005E5C;
  *(v7 + 24) = 0;
  v9[4] = sub_10000FDC0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000AC10;
  v9[3] = &unk_100019590;
  v8 = _Block_copy(v9);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of XPCConnectable.invalidate()();
    swift_unknownObjectRelease();
  }

  [sub_10000C824() deactivate];
  swift_unknownObjectRelease();
  return [*(a3 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
}

void sub_10000BBA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AuthenticationBiometric(0);
  __chkstk_darwin(v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForChildRequest(_:))
  {
    v16 = v4;

    v17 = a3;
    v18 = a4;
    v19 = 0;
    v20 = v16;
    v21 = 0;
LABEL_5:
    sub_10000690C(v17, v18, v19, v20, v21, a3, a4);

    return;
  }

  if (v15 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForIndividualRequest(_:))
  {
    v16 = v4;

    v17 = a3;
    v18 = a4;
    v19 = 1;
    v20 = v16;
    v21 = 1;
    goto LABEL_5;
  }

  if (v15 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:))
  {
    *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 2;
    v22 = FamilyControlsMember.rawValue.getter();
    if (v22 != FamilyControlsMember.rawValue.getter())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v15 == enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:))
  {
    *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 3;
    v23 = FamilyControlsMember.rawValue.getter();
    if (v23 != FamilyControlsMember.rawValue.getter())
    {
LABEL_12:
      v24 = v4;
      v25 = objc_allocWithZone(LSApplicationRecord);

      v26 = sub_100009118(a3, a4, 1);
      v27 = [v26 localizedName];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v10[2] = [objc_allocWithZone(LAContext) init];
      v10[3] = 2;
      AppleAccount.init()();
      *v10 = v28;
      v10[1] = v30;
      v31 = v24;

      sub_100009BAC(v10, v31, a3, a4);

      sub_10000F7CC(v10);
      return;
    }

LABEL_11:
    sub_10000BFA4(a3, a4);
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000BFA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(LSApplicationRecord);

  v11 = sub_100009118(a1, a2, 1);
  v12 = [v11 localizedName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = v3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType];
  v17 = v3;
  v18 = sub_100003C40(v16, v13, v15, v17);
  v20 = v19;
  if (v18)
  {
    v21 = v18;
    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = a1;
    v22[4] = a2;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10000A06C;
    *(v23 + 24) = v22;
    v41 = sub_10000F9A0;
    v42 = v23;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10000AB38;
    v40 = &unk_100019428;
    v24 = _Block_copy(&aBlock);

    v25 = v17;

    [v20 authenticateWithContext:v21 completion:v24];
    _Block_release(v24);
  }

  else
  {
    static Logger.authorization.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No authentication controller provided. Canceling the request.", v28, 2u);
    }

    (*(v7 + 8))(v9, v6);
    v29 = type metadata accessor for FamilyControlsError();
    sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for FamilyControlsError.authorizationCanceled(_:), v29);
    v31 = sub_10000C530();
    v32 = _convertErrorToNSError(_:)();
    [v31 didCompleteAuthenticationRequestWithStatus:0 error:v32];
    swift_unknownObjectRelease();

    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v33 = qword_10001D9C8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100005E5C;
    *(v34 + 24) = 0;
    v41 = sub_10000FDC0;
    v42 = v34;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10000AC10;
    v40 = &unk_1000193B0;
    v35 = _Block_copy(&aBlock);

    dispatch_sync(v33, v35);
    _Block_release(v35);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    else
    {
      if (*&v17[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*&v17[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
      sub_10000F8E8(0, v20);
    }
  }
}

uint64_t sub_10000C550(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  v3 = v2 + 16;
  *(v2 + 32) = 0u;
  if (*(a1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_100007468(v3, v6, &qword_10001DC88, &qword_100011878);
  if (v7)
  {
    sub_100003200(&qword_10001DCA0, &qword_100011890);
    if (swift_dynamicCast())
    {

      return v5;
    }
  }

  else
  {
    sub_100003FE8(v6, &qword_10001DC88, &qword_100011878);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C700(uint64_t a1, uint64_t a2)
{
  sub_100007468(a1, v6, &qword_10001DCA8, &unk_100011898);
  if (v7)
  {
    _StringGuts.grow(_:)(63);
    v4._object = 0x80000001000133D0;
    v4._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v4);
    sub_100003200(&qword_10001D940, &qword_100011320);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100006FBC(v6, v5);
    swift_beginAccess();
    return sub_10000F75C(v5, a2 + 16);
  }

  return result;
}

uint64_t sub_10000C844(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_10000C8AC(void *a1)
{
  v10 = sub_10000CA6C;
  v11 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v9 = sub_10000CB34;
  *(&v9 + 1) = &unk_100019220;
  v2 = _Block_copy(&aBlock);
  v3 = [a1 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  aBlock = v6;
  v9 = v7;
  sub_100007468(&aBlock, &v6, &qword_10001DC88, &qword_100011878);
  if (*(&v7 + 1))
  {
    sub_100003200(&qword_10001DC90, &qword_100011880);
    if (swift_dynamicCast())
    {
      sub_100003FE8(&aBlock, &qword_10001DC88, &qword_100011878);
      return v5;
    }
  }

  else
  {
    sub_100003FE8(&v6, &qword_10001DC88, &qword_100011878);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10000CA6C(uint64_t a1)
{
  _StringGuts.grow(_:)(49);

  swift_errorRetain();
  sub_100003200(&qword_10001DC98, &qword_100011888);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000CB34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10000CBD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000CC94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a4;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if ((a2 & 1) == 0)
  {
    return sub_10000D250(v8, a1 & 1, a5, a6);
  }

  v42 = a3;
  swift_errorRetain();
  static Logger.authorization.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = a1;
    aBlock[0] = v22;
    *v21 = 136446210;
    swift_errorRetain();
    sub_100003200(&qword_10001D940, &qword_100011320);
    v23 = String.init<A>(describing:)();
    v41 = v16;
    v25 = sub_10000F11C(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get user response from notification: %{public}s", v21, 0xCu);
    sub_100003B9C(v22);

    v26 = v13;
    v16 = v41;
  }

  else
  {

    v26 = v13;
  }

  v28 = *(v26 + 8);
  v28(v18, v12);
  aBlock[0] = a1;
  swift_errorRetain();
  sub_100003200(&qword_10001D940, &qword_100011320);
  if (swift_dynamicCast())
  {
    if (v43)
    {
      static Logger.authorization.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Invalid response notification error. Treating it as a cancel.", v31, 2u);
      }

      v28(v16, v12);
    }

    v32 = type metadata accessor for FamilyControlsError();
    sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, enum case for FamilyControlsError.authorizationCanceled(_:), v32);
    sub_10000F828(a1, 1);
  }

  swift_errorRetain();
  v34 = sub_10000C530();
  v35 = _convertErrorToNSError(_:)();
  [v34 didCompleteAuthenticationRequestWithStatus:0 error:v35];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v36 = qword_10001D9C8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100005E5C;
  *(v37 + 24) = 0;
  aBlock[4] = sub_10000FDC0;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100019298;
  v38 = _Block_copy(aBlock);

  dispatch_sync(v36, v38);
  _Block_release(v38);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    v39 = v42;
    if (*(v42 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*(v39 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
  }

  return result;
}

uint64_t sub_10000D250(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(a3, a4);
  v13 = objc_allocWithZone(LSApplicationRecord);

  v14 = sub_100009118(a3, a4, 1);
  v15 = [v14 localizedName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v5;
  *(v19 + 32) = a2 & 1;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;

  v20 = v5;
  if (!a1)
  {
    v21 = 1;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v21 = 0;
LABEL_5:
    v22 = v39;
    v23 = sub_100008670(v21, v16, v18, v39, sub_10000F874, v19);

    *&v23[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate + 8] = &off_1000191B0;
    swift_unknownObjectWeakAssign();
    v24 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
    [*&v20[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController] pushViewController:v23 animated:1];
    v25 = *&v20[v24];
    [v20 presentViewController:v25 animated:1 completion:0];
  }

  static Logger.authorization.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "No informational view controller provided. Dismissing authentication UI.", v29, 2u);
  }

  (*(v38 + 8))(v12, v10);
  v30 = type metadata accessor for FamilyControlsError();
  sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for FamilyControlsError.authorizationCanceled(_:), v30);
  v32 = sub_10000C530();
  v33 = _convertErrorToNSError(_:)();
  [v32 didCompleteAuthenticationRequestWithStatus:0 error:v33];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v34 = qword_10001D9C8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100005E5C;
  *(v35 + 24) = 0;
  aBlock[4] = sub_10000FDC0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AC10;
  aBlock[3] = &unk_100019310;
  v36 = _Block_copy(aBlock);

  dispatch_sync(v34, v36);
  _Block_release(v36);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    if (*&v20[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*&v20[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  return result;
}

uint64_t sub_10000D80C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v66 = a3;
  v62 = type metadata accessor for Logger();
  v61 = *(v62 - 8);
  v6 = __chkstk_darwin(v62);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v59 - v9;
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AuthorizationStatus();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007468(a1, v76, &qword_10001D930, qword_100011300);
  if ((v77 & 1) == 0)
  {
    sub_100003B20(v76, v69);
    v28 = **(&off_100019698 + a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType]);
    v29 = *(v19 + 104);
    v59 = v18;
    v29(v21, v28, v18);
    v30 = [objc_allocWithZone(NSNumber) initWithInteger:AuthorizationStatus.rawValue.getter()];
    [sub_10000C530() didCompleteAuthenticationRequestWithStatus:v30 error:0];

    swift_unknownObjectRelease();
    sub_100005F48();
    v31 = static OS_dispatch_queue.main.getter();
    sub_100003A78(v69, v68);
    v32 = swift_allocObject();
    v33 = v66;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = v67;
    sub_100003B20(v68, (v32 + 5));
    v74 = sub_10000F9F0;
    v75 = v32;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_10000827C;
    v73 = &unk_1000194C8;
    v34 = _Block_copy(&aBlock);
    v35 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FADC(&qword_10001DCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003200(&qword_10001DCC8, &qword_1000118D0);
    sub_10000FA20();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v65 + 8))(v15, v13);
    (*(v63 + 8))(v17, v64);
    (*(v19 + 8))(v21, v59);
    return sub_100003B9C(v69);
  }

  v22 = v66;
  v23 = v67;
  aBlock = *&v76[0];
  swift_errorRetain();
  sub_100003200(&qword_10001D940, &qword_100011320);
  if (swift_dynamicCast())
  {
    if (LOBYTE(v69[0]) <= 1u)
    {
      if (!LOBYTE(v69[0]))
      {
        goto LABEL_19;
      }

      static Logger.authorization.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Invalid biometric recognized. Re-prompting for authorization.", v39, 2u);
      }

      (*(v61 + 8))(v12, v62);
      v40 = a2;

      v41 = v22;
      v42 = v23;
      v43 = 1;
      v44 = v40;
      v45 = 1;
    }

    else
    {
      if (LOBYTE(v69[0]) != 2)
      {
        if (LOBYTE(v69[0]) == 3)
        {
          v24 = type metadata accessor for FamilyControlsError();
          sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
          swift_allocError();
          v26 = v25;
          v27 = &enum case for FamilyControlsError.authenticationMethodUnavailable(_:);
LABEL_20:
          (*(*(v24 - 8) + 104))(v26, *v27, v24);

          goto LABEL_21;
        }

        v49 = v60;
        static Logger.authorization.getter();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Unknown authorization error. Treating it as a cancel.", v52, 2u);
        }

        (*(v61 + 8))(v49, v62);
LABEL_19:
        v24 = type metadata accessor for FamilyControlsError();
        sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        swift_allocError();
        v26 = v53;
        v27 = &enum case for FamilyControlsError.authorizationCanceled(_:);
        goto LABEL_20;
      }

      static Logger.authorization.getter();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Invalid Parent account. Re-prompting for authorization.", v48, 2u);
      }

      (*(v61 + 8))(v10, v62);
      v40 = a2;

      v41 = v22;
      v42 = v23;
      v43 = 2;
      v44 = v40;
      v45 = 2;
    }

    sub_10000690C(v41, v42, v43, v44, v45, v22, v23);
  }

LABEL_21:
  v54 = sub_10000C530();
  v55 = _convertErrorToNSError(_:)();
  [v54 didCompleteAuthenticationRequestWithStatus:0 error:v55];
  swift_unknownObjectRelease();

  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v56 = qword_10001D9C8;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100005E5C;
  *(v57 + 24) = 0;
  v74 = sub_10000FDC0;
  v75 = v57;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10000AC10;
  v73 = &unk_100019478;
  v58 = _Block_copy(&aBlock);

  dispatch_sync(v56, v58);
  _Block_release(v58);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if ((v56 & 1) == 0)
  {
    if (*&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    [*&a2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  __break(1u);
  return result;
}

void sub_10000E2F8(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _s30FamilyControlsAuthenticationUI13LSResolutionsC31resolveApplicationIconAsUIImageySo0J0CSSFZ_0(a1, a2);
  v12 = objc_allocWithZone(LSApplicationRecord);

  v13 = sub_100009118(a1, a2, 1);
  v14 = [v13 localizedName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) - 2 >= 3)
  {
    if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType))
    {
      v24 = sub_100004C84(v15, v17, v28, a3);
    }

    else
    {
      v24 = sub_10000487C(v15, v17, v28, a3);
    }

    v25 = v24;

    *&v25[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate + 8] = &off_1000191C0;
    swift_unknownObjectWeakAssign();
    v26 = *(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController);
    [v26 pushViewController:v25 animated:1];

    v27 = v28;
  }

  else
  {

    static Logger.authorization.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No confirmation view controller provided. Dismissing authentication UI.", v20, 2u);
    }

    (*(v9 + 8))(v11, v8);
    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v21 = qword_10001D9C8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100005E5C;
    *(v22 + 24) = 0;
    aBlock[4] = sub_10000FDC0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AC10;
    aBlock[3] = &unk_100019518;
    v23 = _Block_copy(aBlock);

    dispatch_sync(v21, v23);
    _Block_release(v23);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }

    else
    {
      if (*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*(v4 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
    }
  }
}

void sub_10000E75C(uint64_t a1, char a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AuthenticationBiometric(0);
  __chkstk_darwin(v12);
  v14 = (&aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v15 = sub_10000C530();
    v16 = _convertErrorToNSError(_:)();
    [v15 didCompleteAuthenticationRequestWithStatus:0 error:v16];
    swift_unknownObjectRelease();

    if (qword_10001D748 != -1)
    {
      swift_once();
    }

    v17 = qword_10001D9C8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100005E5C;
    *(v18 + 24) = 0;
    aBlock[4] = sub_10000FDC0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AC10;
    aBlock[3] = &unk_100019360;
    v19 = _Block_copy(aBlock);

    dispatch_sync(v17, v19);
    _Block_release(v19);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {
      if (*&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of XPCConnectable.invalidate()();
        swift_unknownObjectRelease();
      }

      [sub_10000C824() deactivate];
      swift_unknownObjectRelease();
      [*&a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = (a4 & 1) == 0;
        v20 = objc_allocWithZone(LSApplicationRecord);

        v21 = sub_100009118(a5, a6, 1);
        v22 = [v21 localizedName];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v14[2] = [objc_allocWithZone(LAContext) init];
        v14[3] = 2;
        AppleAccount.init()();
        *v14 = v23;
        v14[1] = v25;

        v26 = a3;
        sub_100009BAC(v14, v26, a5, a6);

        sub_10000F7CC(v14);
        return;
      }
    }

    else
    {
      a3[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType] = (a4 & 1) == 0;
    }

    sub_10000BFA4(a5, a6);
  }
}

id sub_10000EB0C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AuthenticationUIServiceViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1);
  if (qword_10001D748 != -1)
  {
    swift_once();
  }

  v4 = qword_10001D9C8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100005E5C;
  *(v5 + 24) = 0;
  v8[4] = sub_10000F6D4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000AC10;
  v8[3] = &unk_1000191F8;
  v6 = _Block_copy(v8);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of XPCConnectable.invalidate()();
      swift_unknownObjectRelease();
    }

    [sub_10000C824() deactivate];
    swift_unknownObjectRelease();
    return [*&v2[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent] invalidate];
  }

  return result;
}

unint64_t sub_10000ED68()
{
  result = qword_10001DC80;
  if (!qword_10001DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DC80);
  }

  return result;
}

uint64_t sub_10000EDBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  result = [*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController) isMovingFromParentViewController];
  if ((result & 1) == 0)
  {
    result = [*(v1 + v2) isBeingDismissed];
    if (result)
    {
      v4 = type metadata accessor for FamilyControlsError();
      sub_10000FADC(&qword_10001D948, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, enum case for FamilyControlsError.authorizationCanceled(_:), v4);
      v6 = sub_10000C530();
      v7 = _convertErrorToNSError(_:)();
      [v6 didCompleteAuthenticationRequestWithStatus:0 error:v7];
      swift_unknownObjectRelease();

      if (qword_10001D748 != -1)
      {
        swift_once();
      }

      v8 = qword_10001D9C8;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100005E5C;
      *(v9 + 24) = 0;
      v11[4] = sub_10000FDC0;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_10000AC10;
      v11[3] = &unk_1000195E0;
      v10 = _Block_copy(v11);

      dispatch_sync(v8, v10);
      _Block_release(v10);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          dispatch thunk of XPCConnectable.invalidate()();
          swift_unknownObjectRelease();
        }

        [sub_10000C824() deactivate];
        swift_unknownObjectRelease();
        return [*(v1 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) invalidate];
      }
    }
  }

  return result;
}

uint64_t sub_10000F0C0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000F11C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000F11C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F1E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000F888(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003B9C(v11);
  return v7;
}

unint64_t sub_10000F1E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000F2F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000F2F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000F340(a1, a2);
  sub_10000F470(&off_100018B00);
  return v3;
}

char *sub_10000F340(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000F55C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F55C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000F470(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000F5D0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000F55C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003200(&unk_10001DCB0, qword_1000118A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F5D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003200(&unk_10001DCB0, qword_1000118A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_10000F6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F714()
{
  if (*(v0 + 40))
  {
    sub_100003B9C((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003200(&qword_10001DC88, &qword_100011878);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F7CC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationBiometric(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F828(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10000F834()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000F8E8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_10000F928()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F968()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F9A8()
{

  sub_100003B9C((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10000FA20()
{
  result = qword_10001DCD0;
  if (!qword_10001DCD0)
  {
    sub_100006050(&qword_10001DCC8, &qword_1000118D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCD0);
  }

  return result;
}

uint64_t sub_10000FA84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FA94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000FB24()
{
  result = qword_10001DCE8;
  if (!qword_10001DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCE8);
  }

  return result;
}

void sub_10000FB78()
{
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationType) = 4;
  v1 = (v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_agentConnnection);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController_authenticationNavigationController;
  *(v0 + v2) = [objc_allocWithZone(OBNavigationController) init];
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___authenicationResultsAgent) = 0;
  *(v0 + OBJC_IVAR____TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController____lazy_storage___hostingAgent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for AuthenticationUIError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AuthenticationUIError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000FD20()
{
  result = qword_10001DCF0;
  if (!qword_10001DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCF0);
  }

  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}