id sub_10002746C()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - v3;
  v5 = type metadata accessor for URL();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v60 - v17;
  v19 = (*((swift_isaMask & *v0) + 0x298))(v16);
  if (v19)
  {
    v65 = v15;
    v66 = v19;
    v63 = v7;
    v20 = sub_1000301D0();
    v21 = *(v9 + 16);
    v61 = v20;
    v60 = v21;
    (v21)(v18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v8;
    v64 = v5;
    v62 = v9;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v68);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s", v26, 0xCu);
      sub_1000114A8(v27);
      v5 = v64;
      v28 = v67;

      v29 = *(v9 + 8);
      v30 = v25;
      v31 = v29(v18, v25);
    }

    else
    {

      v29 = *(v9 + 8);
      v30 = v25;
      v31 = v29(v18, v25);
      v28 = v67;
    }

    (*((swift_isaMask & *v1) + 0x358))(v31);
    v38 = (*(v28 + 48))(v4, 1, v5);
    v39 = v65;
    if (v38 == 1)
    {
      sub_100011940(v4, &qword_100068DF0, qword_100047E90);
      v60(v39, v61, v30);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v68[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v68);
        _os_log_impl(&_mh_execute_header, v40, v41, "%s photos URL is nil", v42, 0xCu);
        sub_1000114A8(v43);
      }

      return v29(v39, v30);
    }

    else
    {
      v44 = v28;
      v45 = v63;
      (*(v28 + 32))(v63, v4, v5);
      sub_1000377A0();

      v46 = String._bridgeToObjectiveC()();

      v47 = v66;
      [v66 setState:v46];

      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v49 = result;
        URL._bridgeToObjectiveC()(v48);
        v51 = v50;
        sub_10000B62C(&qword_100069130, &qword_100048508);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100047E80;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v53;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v54;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_10002AC84(inited);
        swift_setDeallocating();
        sub_10000B62C(&qword_100069138, &qword_100048510);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v49 openSensitiveURL:v51 withOptions:isa];

        v56 = *sub_10002B924();
        v57 = *((swift_isaMask & *v1) + 0x238);
        v58 = v56;
        v59 = v57();
        (*((swift_isaMask & *v58) + 0xF8))(v59);

        return (*(v44 + 8))(v45, v64);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v32 = sub_1000301D0();
    (*(v9 + 16))(v12, v32, v8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v68);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s error loading views", v35, 0xCu);
      sub_1000114A8(v36);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_100027D3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v72 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v72 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = (*((swift_isaMask & *v0) + 0x370))(v15);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v73 = v14;
    v22 = sub_1000301D0();
    v23 = *(v3 + 16);
    v75 = v22;
    v76 = v23;
    v77 = (v3 + 16);
    (v23)(v17);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v1;
      aBlock[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_100010E34(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s start identifier=%s", v26, 0x16u);
      swift_arrayDestroy();

      v28 = v17;
      v29 = *(v3 + 8);
      v30 = v2;
      v1 = v72;
    }

    else
    {

      v28 = v17;
      v29 = *(v3 + 8);
      v30 = v2;
    }

    v29(v28, v2);
    v37 = objc_opt_self();
    sub_10000B62C(&qword_100068EA8, &qword_100047EA8);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100047E60;
    *(v38 + 32) = v20;
    *(v38 + 40) = v21;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v37 fetchAssetsWithLocalIdentifiers:isa options:0];

    v41 = [v40 firstObject];
    if (v41)
    {
      v42 = [objc_opt_self() sharedPhotoLibrary];
      v43 = swift_allocObject();
      v43[2] = v41;
      aBlock[4] = sub_10002ABB0;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005DE90;
      v44 = _Block_copy(aBlock);
      v72 = v41;

      aBlock[0] = 0;
      v45 = [v42 performChangesAndWait:v44 error:aBlock];
      _Block_release(v44);

      if (v45)
      {
        v46 = aBlock[0];
        v47 = v30;
      }

      else
      {
        v52 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v53 = v74;
        v47 = v30;
        v76(v74, v75, v30);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          aBlock[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
          _os_log_impl(&_mh_execute_header, v54, v55, "%s asset deletion failed", v56, 0xCu);
          sub_1000114A8(v57);
          v47 = v30;
        }

        v29(v53, v47);
      }

      v58 = v73;
      v76(v73, v75, v47);
      v59 = v1;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v77 = v29;
        v63 = v47;
        v64 = v62;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v64 = 136315394;
        *(v64 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
        *(v64 + 12) = 2112;
        *(v64 + 14) = v59;
        *v65 = v1;
        v67 = v59;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s self=%@ done", v64, 0x16u);
        sub_100011940(v65, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v66);

        v77(v58, v63);
      }

      else
      {

        v29(v58, v47);
      }

      v68 = sub_10002B924();
      v69 = *((swift_isaMask & *v59) + 0x238);
      v70 = *v68;
      v71 = v69();
      (*((swift_isaMask & *v70) + 0xF8))(v71);
    }

    else
    {
      v76(v11, v75, v30);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
        _os_log_impl(&_mh_execute_header, v48, v49, "%s photos asset is nil", v50, 0xCu);
        sub_1000114A8(v51);
      }

      return (v29)(v11, v30);
    }
  }

  else
  {
    v31 = sub_1000301D0();
    (*(v3 + 16))(v8, v31, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s photos identifier is nil", v34, 0xCu);
      sub_1000114A8(v35);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

void sub_1000287E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100037234();
  v9 = *v8 == a2 && v8[1] == a3;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = sub_10003724C(), *v10 == a2) ? (v11 = v10[1] == a3) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 = sub_100037264(), *v12 == a2) && v12[1] == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v13 = a1;
    v14 = UIAccessibilityAnnouncementNotification;
    type metadata accessor for RPSystemApertureElementViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    UIAccessibilityPostNotification(v14, v19);

    a1 = v13;
  }

  type metadata accessor for RPSystemApertureElementViewController(0);
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:v20];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v53 = v24;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = String._bridgeToObjectiveC()();
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView];
  if (v28)
  {
    sub_1000119A0(0, &qword_100069120, UIView_ptr);
    v29 = a1;
    v30 = v28;
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
      v32 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView];
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = [v32 accessibilityLabel];
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 == v25 && v37 == v27)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v39 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView];
  if (!v39)
  {
    goto LABEL_34;
  }

  sub_1000119A0(0, &qword_100069120, UIView_ptr);
  v40 = a1;
  v41 = v39;
  v42 = static NSObject.== infix(_:_:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v28 || (v43 = [v28 accessibilityLabel]) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v44 = v43;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (v45 != v25 || v47 != v27)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_34:

LABEL_35:
  v48 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView];
  if (!v48 || (sub_1000119A0(0, &qword_100069120, UIView_ptr), v49 = a1, v50 = v48, v51 = static NSObject.== infix(_:_:)(), v50, v49, (v51 & 1) == 0))
  {

    return;
  }

LABEL_41:
  [a1 setAccessibilityLabel:v53];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v4 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }
}

id sub_100028D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100028E40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_10002910C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002913C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100029168@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002925C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000292D4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100029354@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

void *sub_100029398@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000293C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100029978(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100029414@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10002945C@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100029488(uint64_t a1)
{
  v2 = sub_10002A9B8(&unk_100069110, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100048480);
  v3 = sub_10002A9B8(&unk_1000696D0, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100048428);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100029544(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100029580(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000295D4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100029648(void *a1, uint64_t *a2)
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

unint64_t sub_1000296D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100029748(a1, a2, v4);
}

unint64_t sub_100029748(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100029800(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005D6E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100029870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005D770, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000298BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RPSystemApertureElementViewController(uint64_t a1)
{
  result = qword_100069D10;
  if (!qword_100069D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000299B0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress) = 0x100000;
  v2 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *(v1 + v2) = *sub_1000366FC();
  v3 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionID);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors) = 666;
  v4 = SBUISystemApertureElementIdentifierScreenRecording;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier) = SBUISystemApertureElementIdentifierScreenRecording;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView;
  v6 = type metadata accessor for RPSessionAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v4;
  *(v1 + v5) = sub_100012A64(0);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_100012A64(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView;
  v12 = objc_allocWithZone(v6);
  *(v1 + v11) = sub_100012A64(1);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView;
  v14 = objc_allocWithZone(v6);
  *(v1 + v13) = sub_100012A64(1);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView;
  v16 = objc_allocWithZone(v6);
  *(v1 + v15) = sub_100012A64(2);
  v17 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview;
  type metadata accessor for VideoEffectsPreview(0);
  *(v1 + v17) = sub_10000DCFC();
  v18 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  *(v1 + v18) = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel;
  *(v1 + v19) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState) = 1;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton) = 0;
  v20 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosURL;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v22(v1 + v20, 1, 1, v21);
  v23 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosIdentifier);
  *v23 = 0;
  v23[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = 0;
  v24 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  *(v1 + v24) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreviewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_accessoryViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewElementLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewCameraPreviewLayoutConstraints) = &_swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  *(v1 + v25) = [objc_opt_self() grayColor];
  v26 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier);
  *v26 = 0;
  v26[1] = 0;
  v22(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100029DD4()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100029E74()
{
  result = qword_100068E80;
  if (!qword_100068E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E80);
  }

  return result;
}

void sub_100029EC8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = *sub_100036D58();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v9[4] = sub_10002B018;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F174;
  v9[3] = &unk_10005E020;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v4 animateWithDuration:v7 animations:v5];
  _Block_release(v7);
}

uint64_t sub_100029FEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A034(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  result = swift_beginAccess();
  if ((*(v4 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v4 + 16) = 1;
    v7 = sub_100037028();
    v8 = *v7;
    v9 = v7[1];
    v10 = *((swift_isaMask & *v3) + 0x5C8);

    v10(a1, v5, v8, v9);
  }

  return result;
}

id sub_10002A128()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  return [v1 sizeToFit];
}

uint64_t sub_10002A1A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

id sub_10002A288()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);

  return sub_1000237B4(v4, v5, v6, v0 + v2, v7, v9, v10);
}

uint64_t sub_10002A320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A368()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002A3C4()
{
  result = qword_100068EC0;
  if (!qword_100068EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC0);
  }

  return result;
}

unint64_t sub_10002A41C()
{
  result = qword_100068EC8;
  if (!qword_100068EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPSessionAccessoryView.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPSessionAccessoryView.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10002A5E4(uint64_t a1)
{
  sub_10002A72C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002A72C(uint64_t a1)
{
  if (!qword_1000690A0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000690A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPSystemApertureElementViewController.RecordingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPSystemApertureElementViewController.RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10002A924(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10002A9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002ABB0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100047E40;
  *(v3 + 32) = v1;
  sub_1000119A0(0, &qword_100069128, PHAsset_ptr);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteAssets:isa];
}

unint64_t sub_10002AC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000B62C(&unk_100069140, &qword_100048518);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002ADB4(v4, &v13, &qword_100069138, &qword_100048510);
      v5 = v13;
      v6 = v14;
      result = sub_1000296D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002AE1C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10002ADB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000B62C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10002AE1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002AE2C()
{
  if (sub_10001F664())
  {
    sub_100020AD4();
  }

  return sub_100020D10();
}

uint64_t sub_10002AE5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AEB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002AEF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1000368AC();
  v4 = [v1 setAlpha:*v3];
  v5 = (*((swift_isaMask & *v2) + 0x280))(v4);
  [v5 setAlpha:*v3];
}

uint64_t sub_10002AFD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002B018()
{
  v2 = (*((swift_isaMask & **(v0 + 16)) + 0x280))();
  v1 = String._bridgeToObjectiveC()();
  [v2 setText:v1];
}

uint64_t sub_10002B144()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10002B188()
{
  result = qword_1000694E0;
  if (!qword_1000694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694E0);
  }

  return result;
}

uint64_t sub_10002B2F8(uint64_t a1)
{
  v2 = sub_10002B3F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B334(uint64_t a1)
{
  v2 = sub_10002B3F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002B3B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002B3F8()
{
  result = qword_10006A328;
  if (!qword_10006A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A328);
  }

  return result;
}

uint64_t sub_10002B524@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10002B560(uint64_t a1)
{
  v2 = sub_10002B73C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B59C(uint64_t a1)
{
  v2 = sub_10002B73C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B61C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_10000B62C(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10002B3B4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10002B73C()
{
  result = qword_10006A330[0];
  if (!qword_10006A330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A330);
  }

  return result;
}

uint64_t sub_10002B7D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_10000B62C(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10002B3B4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

id sub_10002B8F4()
{
  result = [objc_allocWithZone(type metadata accessor for RPSessionGateway()) init];
  qword_10006B980 = result;
  return result;
}

uint64_t *sub_10002B924()
{
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  return &qword_10006B980;
}

id sub_10002B974()
{
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  v0 = qword_10006B980;

  return v0;
}

double sub_10002BA74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10002BB34()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10002BB78(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10002BC28()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10002BC80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10002BD40()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10002BD8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10002BE44()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "startReadyBanner()", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return (*((swift_isaMask & *v1) + 0xE0))(3);
}

uint64_t sub_10002C024()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "stopReadyBanner()", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*((swift_isaMask & *v1) + 0xE8))(v10);
}

uint64_t sub_10002C200(unsigned int a1)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for ActivityPresentationOptions();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v57 = &v56 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = sub_1000301D0();
  v19 = *(v7 + 16);
  v64 = v18;
  v65 = v19;
  v68 = v6;
  v66 = v7 + 16;
  (v19)(v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "startWithSessionType(_:)", v22, 2u);
  }

  v58 = v10;
  v62 = v5;

  v67 = *(v7 + 8);
  v63 = v7 + 8;
  v23 = v67(v17, v68);
  if ((*((swift_isaMask & *v2) + 0x70))(v23))
  {

    v65(v15, v64, v68);
    v24 = v2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69[0] = v28;
      *v27 = 136315138;
      v29 = (*((swift_isaMask & *v24) + 0xA0))();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v29 = 1819047246;
        v31 = 0xE400000000000000;
      }

      v32 = sub_100010E34(v29, v31, v69);
      v56 = v15;
      v33 = v32;

      *(v27 + 4) = v33;
      v34 = v68;
      _os_log_impl(&_mh_execute_header, v25, v26, "Stop existing session sessionID=%s", v27, 0xCu);
      sub_1000114A8(v28);

      v35 = v67(v56, v34);
    }

    else
    {

      v35 = v67(v15, v68);
    }

    (*((swift_isaMask & *v24) + 0xE8))(v35);
  }

  (*((swift_isaMask & *v2) + 0x90))(v59);
  sub_1000371BC();
  sub_10000B62C(&qword_1000691F0, &qword_100048540);
  v36 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100047E60;
  (*(v37 + 104))(v39 + v38, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v36);

  v40 = v62;
  ActivityPresentationOptions.init(destinations:)();
  sub_10000B62C(&qword_1000691F8, &qword_100048548);
  static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();

  v41 = *((swift_isaMask & *v2) + 0x78);

  v41(v42);
  v43 = Activity.id.getter();
  (*((swift_isaMask & *v2) + 0xA8))(v43);
  v44 = v57;
  v65(v57, v64, v68);
  v45 = v2;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v69[0] = v50;
    *v49 = 136315138;
    v51 = (*((swift_isaMask & *v45) + 0xA0))();
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v51 = 1819047246;
      v53 = 0xE400000000000000;
    }

    v54 = sub_100010E34(v51, v53, v69);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "new session sessionID=%s", v49, 0xCu);
    sub_1000114A8(v50);

    v67(v48, v68);
    return (*(v60 + 8))(v62, v61);
  }

  else
  {

    v67(v44, v68);
    return (*(v60 + 8))(v40, v61);
  }
}

unint64_t sub_10002CB0C()
{
  v1 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000301D0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[0] = v43;
    *v15 = 136315394;
    *(v15 + 4) = sub_100010E34(0x29286873696E6966, 0xE800000000000000, v44);
    *(v15 + 12) = 2080;
    v16 = (*((swift_isaMask & *v12) + 0xA0))();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 1819047246;
      v18 = 0xE400000000000000;
    }

    v19 = sub_100010E34(v16, v18, v44);
    v42 = v7;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s currentSessionID=%s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v42);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_10000B62C(&qword_1000691F8, &qword_100048548);
  result = static Activity.activities.getter();
  v22 = result;
  v43 = v12;
  if (!(result >> 62))
  {
    v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_25:

    v38 = [objc_opt_self() sharedInstance];
    [v38 setDelegate:0];

    v39 = v43;
    v40 = (*((swift_isaMask & *v43) + 0xB8))();
    [v40 invalidate];

    return (*((swift_isaMask & *v39) + 0xA8))(0, 0);
  }

  v37 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = v37;
  v23 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (v23 >= 1)
  {
    v24 = 0;
    v41 = v22 & 0xC000000000000001;
    v42 = v22;
    do
    {
      if (v41)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = type metadata accessor for TaskPriority();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v6, 1, 1, v26);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v29 = v43;
      v28[4] = v25;
      v28[5] = v29;
      sub_10002EF3C(v6, v4);
      v30 = (*(v27 + 48))(v4, 1, v26);
      v31 = v29;

      if (v30 == 1)
      {
        sub_100011940(v4, &qword_100069200, &qword_100048550);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v27 + 8))(v4, v26);
      }

      v32 = v28[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_100011940(v6, &qword_100069200, &qword_100048550);
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_100048568;
      *(v36 + 24) = v28;
      if (v35 | v33)
      {
        v44[1] = 0;
        v44[2] = 0;
        v44[3] = v33;
        v44[4] = v35;
      }

      ++v24;
      swift_task_create();

      v22 = v42;
    }

    while (v23 != v24);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_10000B62C(&qword_100069290, &qword_1000488B0);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D2AC, 0, 0);
}

uint64_t sub_10002D2AC(uint64_t a1)
{
  v33 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[3];
  v6 = sub_1000301D0();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v1[9];
  v11 = v1[10];
  v13 = v1[8];
  if (v10)
  {
    v30 = v1[10];
    v14 = v1[3];
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100010E34(0x29286873696E6966, 0xE800000000000000, &v32);
    *(v15 + 12) = 2080;
    v16 = Activity.id.getter();
    v18 = sub_100010E34(v16, v17, &v32);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2080;
    v20 = (*((swift_isaMask & *v14) + 0xA0))(v19);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 1819047246;
      v22 = 0xE400000000000000;
    }

    v23 = sub_100010E34(v20, v22, &v32);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s end activity=%s currentSessionID=%s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v12 + 8))(v30, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v1[7];
  v25 = sub_10000B62C(&qword_100069298, &qword_1000488B8);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  static ActivityUIDismissalPolicy.immediate.getter();
  v31 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
  v26 = swift_task_alloc();
  v1[11] = v26;
  *v26 = v1;
  v26[1] = sub_10002D5BC;
  v27 = v1[6];
  v28 = v1[7];

  return v31(v28, v27);
}

uint64_t sub_10002D5BC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_100011940(v1, &qword_100069290, &qword_1000488B0);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10002D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000B62C(&qword_100069200, &qword_100048550);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002EF3C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011940(v11, &qword_100069200, &qword_100048550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000B62C(&qword_100069288, &qword_1000488A0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100011940(a3, &qword_100069200, &qword_100048550);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011940(a3, &qword_100069200, &qword_100048550);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000B62C(&qword_100069288, &qword_1000488A0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002DA70()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_1000301D0();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v9;
    v16 = v10;
    v17 = v6;
    v18 = v15;
    v33 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D690, &v33);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v14, 0xCu);
    sub_1000114A8(v18);
    v6 = v17;
    v10 = v16;
    v9 = v31;

    v3 = v32;
  }

  v19 = *(v3 + 8);
  v20 = v19(v8, v2);
  if ((*((swift_isaMask & *v1) + 0x70))(v20))
  {
    Activity.id.getter();

    v21 = objc_allocWithZone(SNAProminentPresentationAssertion);
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v21 initWithExplanation:v22 sessionIdentifier:v23 invalidationHandler:0];

    return (*((swift_isaMask & *v1) + 0xC0))(v24);
  }

  else
  {
    v10(v6, v9, v2);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D690, &v33);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s SessionIdentifier nil", v28, 0xCu);
      sub_1000114A8(v29);
    }

    return v19(v6, v2);
  }
}

uint64_t sub_10002DE70(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000B62C(&qword_100069200, &qword_100048550);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - v18;
  if (a2)
  {
    v55 = v9;
    v20 = *((swift_isaMask & *v3) + 0xA0);
    v21 = v20(v17);
    if (v22)
    {
      if (v21 == a1 && v22 == a2)
      {

LABEL_19:
        v43 = type metadata accessor for TaskPriority();
        (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v3;
        v45 = v3;
        sub_10002D76C(0, 0, v8, &unk_100048580, v44);

        v47 = (*((swift_isaMask & *v45) + 0xB8))(v46);
        [v47 invalidate];

        (*((swift_isaMask & *v45) + 0xA8))(0, 0);
        v48 = sub_1000301D0();
        v49 = v55;
        (*(v10 + 16))(v13, v48, v55);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "finishSession(_:)", v52, 2u);
        }

        return (*(v10 + 8))(v13, v49);
      }

      v54 = a1;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v54 = a1;
    }

    v31 = sub_1000301D0();
    v32 = v55;
    (*(v10 + 16))(v16, v31, v55);

    v33 = v3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v36 = 136315650;
      *(v36 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D6B0, &v56);
      *(v36 + 12) = 2080;

      v37 = sub_100010E34(v54, a2, &v56);

      *(v36 + 14) = v37;
      *(v36 + 22) = 2080;
      v39 = v20(v38);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v39 = 1819047246;
        v41 = 0xE400000000000000;
      }

      v42 = sub_100010E34(v39, v41, &v56);

      *(v36 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s sessionID=%s not equal to currentSessionID=%s", v36, 0x20u);
      swift_arrayDestroy();

      return (*(v10 + 8))(v16, v55);
    }

    else
    {

      return (*(v10 + 8))(v16, v32);
    }
  }

  else
  {
    v25 = sub_1000301D0();
    (*(v10 + 16))(v19, v25, v9);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D6B0, &v56);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s sessionID is nil", v28, 0xCu);
      sub_1000114A8(v29);
    }

    return (*(v10 + 8))(v19, v9);
  }
}

uint64_t sub_10002E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_10000B62C(&qword_100069290, &qword_1000488B0);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002E5C4, 0, 0);
}

uint64_t sub_10002E5C4()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x70))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = sub_10000B62C(&qword_100069298, &qword_1000488B8);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    static ActivityUIDismissalPolicy.immediate.getter();
    v9 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_10002E760;
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    return v9(v6, v5);
  }

  else
  {
    **(v0 + 16) = 1;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10002E760()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  sub_100011940(v1, &qword_100069290, &qword_1000488B0);

  return _swift_task_switch(sub_10002E908, 0, 0);
}

uint64_t sub_10002E908()
{
  **(v0 + 16) = *(v0 + 64) == 0;

  v1 = *(v0 + 8);

  return v1();
}

id sub_10002E984()
{
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session] = 0;
  v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType] = 5;
  v1 = &v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RPSessionGateway();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10002EBA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPSessionProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002EC34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002EC6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002ED64;

  return v6(a1);
}

uint64_t sub_10002ED64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002EE5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002EEA4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100030124;

  return sub_10002D158(v4, v5, v6, v2, v3);
}

uint64_t sub_10002EF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100069200, &qword_100048550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EFAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030124;

  return sub_10002EC6C(a1, v4);
}

uint64_t sub_10002F064()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F0A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F144;

  return sub_10002E4CC(a1, v5, v6, v4);
}

uint64_t sub_10002F144()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002F25C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10002F350;

  return v5(v2 + 32);
}

uint64_t sub_10002F350()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002F464(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000301D0();
  (*(v5 + 16))(v7, v8, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004D7A0, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_1000114A8(v12);
  }

  (*(v5 + 8))(v7, v4);

  v13._countAndFlagsBits = a1;
  v13._object = a2;
  LOBYTE(v14) = SessionType.init(rawValue:)(v13);
  if (qword_10006A320 != -1)
  {
    v16 = v14;
    swift_once();
    LODWORD(v14) = v16;
  }

  if (v14 == 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = v14;
  }

  return (*((swift_isaMask & *qword_10006B980) + 0xE0))(v14);
}

uint64_t sub_10002F8DC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  v4 = (*((swift_isaMask & *qword_10006B980) + 0xA0))();
  v6 = v5;
  v7 = sub_1000301D0();
  (*(v1 + 16))(v3, v7, v0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D780, &v16);
    *(v10 + 12) = 2080;
    v15 = v0;
    v11 = v4;
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v4 = 1819047246;
      v12 = 0xE400000000000000;
    }

    v13 = sub_100010E34(v4, v12, &v16);

    *(v10 + 14) = v13;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s sessionID=%s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v1 + 8))(v3, v15);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

unint64_t sub_10002FBC8()
{
  result = qword_100069208;
  if (!qword_100069208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069208);
  }

  return result;
}

unint64_t sub_10002FC20()
{
  result = qword_100069210;
  if (!qword_100069210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069210);
  }

  return result;
}

unint64_t sub_10002FC78()
{
  result = qword_100069218;
  if (!qword_100069218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069218);
  }

  return result;
}

unint64_t sub_10002FCD0()
{
  result = qword_100069220;
  if (!qword_100069220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069220);
  }

  return result;
}

unint64_t sub_10002FD28()
{
  result = qword_100069228;
  if (!qword_100069228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069228);
  }

  return result;
}

unint64_t sub_10002FD80()
{
  result = qword_100069230;
  if (!qword_100069230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069230);
  }

  return result;
}

unint64_t sub_10002FE18()
{
  result = qword_10006A8C0;
  if (!qword_10006A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A8C0);
  }

  return result;
}

unint64_t sub_10002FE70()
{
  result = qword_10006A8C8[0];
  if (!qword_10006A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A8C8);
  }

  return result;
}

unint64_t sub_10002FEC8()
{
  result = qword_10006A950;
  if (!qword_10006A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A950);
  }

  return result;
}

unint64_t sub_10002FF20()
{
  result = qword_10006A958[0];
  if (!qword_10006A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A958);
  }

  return result;
}

uint64_t sub_10002FF74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FFAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030124;

  return sub_10002F25C(a1, v4);
}

uint64_t sub_100030064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F144;

  return sub_10002F25C(a1, v4);
}

uint64_t sub_10003014C()
{
  v0 = type metadata accessor for Logger();
  sub_100011C68(v0, qword_10006B988);
  sub_10000E464(v0, qword_10006B988);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000301D0()
{
  if (qword_10006A9E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000E464(v0, qword_10006B988);
}

uint64_t sub_100030234()
{
  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_100011C68(v0, qword_10006B9A0);
  sub_10000E464(v0, qword_10006B9A0);
  sub_10000B62C(&unk_100069420, qword_100048A70);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100047E60;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100030380()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);

  return sub_10000E464(v0, qword_10006B9A0);
}

uint64_t sub_1000303F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v3 = sub_10000E464(v2, qword_10006B9A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000304BC(uint64_t a1)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v3 = sub_10000E464(v2, qword_10006B9A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1000305BC(uint64_t a1))(uint64_t a1)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v1, qword_10006B9A0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10003065C()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t sub_100030704(char a1)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v1, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*sub_1000307BC(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  *(v3 + 24) = v4;
  *(v3 + 32) = sub_10000E464(v4, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1000308B8;
}

void sub_1000308B8(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t sub_100030994(uint64_t a1, uint64_t a2)
{
  strcpy(v3, "ReactionsTip-");
  String.append(_:)(*&a1);
  return v3[0];
}

uint64_t sub_100030A04()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030AB8();
  return Text.init<A>(_:)();
}

unint64_t sub_100030AB8()
{
  result = qword_1000692A8;
  if (!qword_1000692A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692A8);
  }

  return result;
}

uint64_t sub_100030B0C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030AB8();
  return Text.init<A>(_:)();
}

uint64_t sub_100030BC0()
{
  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  v9 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v9;
}

uint64_t sub_100030DDC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000B62C(&qword_1000693E0, &qword_100048A58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-v5];
  v7 = sub_10000B62C(&qword_1000693E8, &qword_100048A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  sub_1000349B0(&qword_1000693F0, &qword_1000693E8, &qword_100048A60, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v12[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_10000B62C(&qword_1000693F8, &qword_100048A68);
  a2[4] = sub_100034810();
  sub_10003494C(a2);
  sub_1000349B0(&qword_100069418, &qword_1000693E0, &qword_100048A58, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100031040()
{
  v0 = sub_10000B62C(&qword_1000692B0, &qword_1000488C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000B62C(&qword_1000692B8, &unk_1000488D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_1000312E4()
{
  v1 = *v0;
  strcpy(v3, "ReactionsTip-");
  String.append(_:)(v1);
  return v3[0];
}

void sub_100031340(void *a1@<X8>)
{
  v3 = *v1;
  strcpy(v5, "ReactionsTip-");
  HIWORD(v5[1]) = -4864;
  String.append(_:)(v3);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
}

id sub_1000313FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = &_swiftEmptyArrayStorage;
  v14 = sub_1000301D0();
  (*(v11 + 16))(v13, v14, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a2;
    v28 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D840, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100010E34(a1, v27, &v28);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100010E34(a3, a4, &v28);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s appName=%s bundleID=%s", v18, 0x20u);
    swift_arrayDestroy();
    a2 = v27;

    (*(v11 + 8))(v13, v26);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v20 = &v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] = v22;
  v23 = type metadata accessor for RPReactionsTipViewController();
  v29.receiver = v5;
  v29.super_class = v23;
  return objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
}

id sub_10003170C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = &_swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RPReactionsTipViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100031810()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = &selRef_setElementNeedsUpdate;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v33);
    *(v10 + 12) = 2112;
    v13 = [v6 view];

    if (!v13)
    {
      goto LABEL_10;
    }

    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v35);
    *(v10 + 14) = DictionaryRepresentation;
    *v11 = DictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s self.view.frame=%@", v10, 0x16u);
    sub_100011940(v11, &qword_1000697C0, qword_100047CD0);

    sub_1000114A8(v12);

    (*(v2 + 8))(v4, v1);
    v9 = &selRef_setElementNeedsUpdate;
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v23 = type metadata accessor for RPReactionsTipViewController();
  v34.receiver = v6;
  v34.super_class = v23;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v24 = [v6 v9[228]];
  if (v24)
  {
    v25 = v24;
    v26 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
    [v24 addSubview:*(v6 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView)];

    v27 = [v6 v9[228]];
    if (v27)
    {
      v28 = v27;
      [v27 setUserInteractionEnabled:0];

      v29 = [*(v6 + v26) setUserInteractionEnabled:0];
      (*((swift_isaMask & *v6) + 0x118))(v29);
      v30 = objc_opt_self();
      sub_100034080();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints:isa];

      v32 = static Tips.configure(_:)();
      (*((swift_isaMask & *v6) + 0x120))(v32);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

double sub_100031C9C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000301D0();
  (*(v5 + 16))(v7, v8, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004D860, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_1000114A8(v12);
  }

  (*(v5 + 8))(v7, v4);
  v13 = type metadata accessor for RPReactionsTipViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  v14 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask;
  if (*&v2[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask])
  {

    Task.cancel()();
  }

  *&v2[v14] = 0;

  return result;
}

id sub_100031F24()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
  [*&v0[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100047E30;
  v5 = [*&v0[v3] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v3] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:10.0];
  *(v4 + 40) = v12;
  v13 = [*&v0[v3] widthAnchor];
  v14 = [v13 constraintEqualToConstant:150.0];

  *(v4 + 48) = v14;
  v15 = [*&v0[v3] heightAnchor];
  v16 = [v15 constraintEqualToConstant:45.0];

  *(v4 + 56) = v16;
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = v4;
}

double sub_100032188()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_100069200, &qword_100048550);
  __chkstk_darwin(v2 - 8);
  v55 = &v53 - v3;
  v61 = type metadata accessor for Tips.Status();
  v4 = *(v61 - 8);
  v5 = __chkstk_darwin(v61);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = sub_1000301D0();
  v62 = v11;
  v18 = *(v11 + 16);
  v58 = v17;
  v59 = v11 + 16;
  v57 = v18;
  (v18)(v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v63 = v1;
  v60 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v54 = v14;
    v24 = v23;
    v64[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D880, v64);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s", v22, 0xCu);
    sub_1000114A8(v24);

    v1 = v63;

    v25 = *(v62 + 8);
    v26 = v16;
    v27 = v10;
    v14 = v54;
  }

  else
  {

    v25 = *(v62 + 8);
    v26 = v16;
    v27 = v10;
  }

  v56 = v25;
  v25(v26, v27);
  v29 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID);
  v28 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID + 8);
  v30 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName);
  v31 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName + 8);
  v32 = qword_10006A9F0;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v33, qword_10006B9A0);
  v65 = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v53 = v30;
  v54 = v29;
  v64[0] = v29;
  v64[1] = v28;
  v64[2] = v30;
  v64[3] = v31;
  sub_1000340CC();
  Tip.status.getter();
  v34 = enum case for Tips.InvalidationReason.displayCountExceeded(_:);
  v35 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v35 - 8) + 104))(v7, v34, v35);
  v36 = v61;
  (*(v4 + 104))(v7, enum case for Tips.Status.invalidated(_:), v61);
  LOBYTE(v34) = static Tips.Status.== infix(_:_:)();
  v37 = *(v4 + 8);
  v37(v7, v36);
  v37(v9, v36);
  if (v34)
  {

    v38 = v60;
    v57(v14, v58, v60);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "tip invalidated removing scene", v41, 2u);
    }

    v42 = v56(v14, v38);
    (*((swift_isaMask & *v63) + 0x138))(v42);
  }

  else
  {
    v44 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask;
    v45 = v63;
    v46 = *(v63 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask);
    if (v46)
    {
    }

    else
    {
      v47 = type metadata accessor for TaskPriority();
      v48 = v55;
      (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
      type metadata accessor for MainActor();
      v49 = v45;
      v50 = static MainActor.shared.getter();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = &protocol witness table for MainActor;
      v52 = v53;
      v51[4] = v54;
      v51[5] = v28;
      v51[6] = v52;
      v51[7] = v31;
      v51[8] = v49;
      v46 = sub_1000337A0(0, 0, v48, &unk_1000488F8, v51);
    }

    *&v45[v44] = v46;
  }

  return result;
}

uint64_t sub_100032828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  sub_10000B62C(&qword_1000693A0, &qword_100048A28);
  v8[20] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = sub_10000B62C(&qword_1000693A8, &qword_100048A30);
  v8[25] = swift_task_alloc();
  v8[26] = sub_10000B62C(&qword_1000693B0, &qword_100048A38);
  v8[27] = swift_task_alloc();
  v10 = sub_10000B62C(&qword_1000693B8, &qword_100048A40);
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = sub_10000B62C(&qword_1000693C0, &unk_100048A48);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = type metadata accessor for MainActor();
  v8[35] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[36] = v13;
  v8[37] = v12;

  return _swift_task_switch(sub_100032AA8, v13, v12);
}

uint64_t sub_100032AA8(uint64_t a1)
{
  *(v1 + 56) = *(v1 + 120);
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 224);
  v5 = *(v1 + 144);
  *(v1 + 72) = *(v1 + 136);
  *(v1 + 80) = v5;
  *(v1 + 304) = sub_1000340CC();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_1000349B0(&qword_1000693C8, &qword_1000693A8, &qword_100048A30, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v3, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  *(v1 + 312) = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
  v6 = static MainActor.shared.getter();
  *(v1 + 320) = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v1 + 328) = v7;
  *(v1 + 336) = v9;

  return _swift_task_switch(sub_100032C5C, v7, v9);
}

uint64_t sub_100032C5C()
{
  v1 = v0[40];
  v0[43] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1000349B0(&unk_1000693D0, &qword_1000693B0, &qword_100048A38, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_100032D60;
  v3 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100032D60()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100033048;
  }

  else
  {
    (*(v2 + 344))();
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100032E88;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100032E88()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100011940(v3, &qword_1000693A0, &qword_100048A28);
    v4 = v0[36];
    v5 = v0[37];

    return _swift_task_switch(sub_100033290, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[23], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[45] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[46] = v8;
    *v8 = v0;
    v8[1] = sub_100033060;
    v9 = v0[23];

    return (v11)(v0 + 49, v9);
  }
}

uint64_t sub_100033060()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);

  (*(v3 + 8))(v2, v4);
  *(v1 + 393) = *(v1 + 392);
  v5 = *(v1 + 336);
  v6 = *(v1 + 328);

  return _swift_task_switch(sub_10003320C, v6, v5);
}

uint64_t sub_10003320C()
{
  v1 = *(v0 + 393);

  if (v1 == 1)
  {
    v2 = sub_100033368;
  }

  else
  {
    v2 = sub_10003362C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033290()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100033368(uint64_t a1)
{
  *(v1 + 376) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000333F4, v3, v2);
}

uint64_t sub_1000333F4()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];

  type metadata accessor for TipUIPopoverViewController();
  v0[5] = &type metadata for ReactionsTip;
  v0[6] = v1;
  v8 = swift_allocObject();
  v0[2] = v8;
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v4;
  v9 = *(v3 + v2);

  v10 = v9;
  v11 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  swift_unknownObjectRetain();
  TipUIPopoverViewController.presentationDelegate.setter();
  v12 = [v11 view];
  if (v12)
  {
    v15 = v12;
    v16 = v0[19];
    v17 = [objc_opt_self() darkGrayColor];
    [v15 setTintColor:v17];

    [v16 presentViewController:v11 animated:1 completion:0];
    v13 = v0[36];
    v14 = v0[37];
    v12 = sub_100033594;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100033594(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  v1[40] = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v1[41] = v3;
  v1[42] = v5;

  return _swift_task_switch(sub_100032C5C, v3, v5);
}

uint64_t sub_10003362C(uint64_t a1)
{
  *(v1 + 384) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000336B8, v3, v2);
}

uint64_t sub_1000336B8()
{
  v1 = v0[19];

  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TipUIPopoverViewController();
    v4 = swift_dynamicCastClass();

    if (v4)
    {
      (*((swift_isaMask & *v0[19]) + 0x138))();
    }
  }

  v5 = v0[36];
  v6 = v0[37];

  return _swift_task_switch(sub_1000349FC, v5, v6);
}

uint64_t sub_1000337A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000B62C(&qword_100069200, &qword_100048550);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002EF3C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011940(v11, &qword_100069200, &qword_100048550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100011940(a3, &qword_100069200, &qword_100048550);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011940(a3, &qword_100069200, &qword_100048550);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100033AFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v37 - v7;
  v9 = sub_1000301D0();
  v38 = *(v3 + 16);
  v38(v8, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v37[1] = v3;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v37[0] = v1;
    v14 = v6;
    v15 = v3;
    v16 = v13;
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004D8A0, &v39);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v16, 0xCu);
    sub_1000114A8(v17);

    v18 = v15;
    v6 = v14;
    v1 = v37[0];
    v19 = *(v18 + 8);
  }

  else
  {

    v19 = *(v3 + 8);
  }

  v19(v8, v2);
  v20 = [v1 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 window];

    if (v22)
    {
      v23 = [v22 windowScene];

      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          [v24 invalidate];

          return;
        }
      }
    }

    v38(v6, v9, v2);
    v25 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      v36 = v6;
      goto LABEL_14;
    }

    v28 = v6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    v31 = [v25 view];

    if (v31)
    {
      v32 = [v31 window];

      sub_10000B62C(&qword_100069308, &qword_100048900);
      v33 = _typeName(_:qualified:)();
      v35 = sub_100010E34(v33, v34, &v39);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Expected remote alert scene. scene type=%s", v29, 0xCu);
      sub_1000114A8(v30);

      v36 = v28;
LABEL_14:
      v19(v36, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100033FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPReactionsTipViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100034080()
{
  result = qword_100068E10;
  if (!qword_100068E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100068E10);
  }

  return result;
}

unint64_t sub_1000340CC()
{
  result = qword_100069300;
  if (!qword_100069300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069300);
  }

  return result;
}

uint64_t sub_100034120()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034170()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F144;

  return sub_100032828(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000343E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100010E34(0xD000000000000024, 0x800000010004D9D0, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000114A8(v10);
  }

  v11 = (*(v3 + 8))(v5, v2);
  return (*((swift_isaMask & *v1) + 0x138))(v11);
}

unint64_t sub_1000345DC()
{
  result = qword_100069310;
  if (!qword_100069310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069310);
  }

  return result;
}

__n128 sub_10003463C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100034648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100034690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000346E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F144;

  return sub_10002EC6C(a1, v4);
}

uint64_t sub_1000347D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100034810()
{
  result = qword_100069400;
  if (!qword_100069400)
  {
    sub_100011788(&qword_1000693F8, &qword_100048A68);
    sub_1000349B0(&qword_100069408, &qword_1000693E8, &qword_100048A60, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    sub_1000348C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069400);
  }

  return result;
}

unint64_t sub_1000348C8()
{
  result = qword_100069410;
  if (!qword_100069410)
  {
    sub_100011788(&qword_1000693E0, &qword_100048A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069410);
  }

  return result;
}

uint64_t *sub_10003494C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000349B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011788(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100034A4C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100034AF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100034BB0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion);
  }

  else
  {
    v4 = [objc_allocWithZone(RPStatusBarAssertion) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100034C24()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion] = 0;
  v6 = sub_10002B924();
  v7 = *((swift_isaMask & **v6) + 0x88);
  v8 = *v6;
  LODWORD(v9) = v7();

  if (v9 == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v9;
  }

  v10 = sub_1000301D0();
  (*(v3 + 16))(v5, v10, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v6;
    v33[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, v33);
    *(v14 + 12) = 2080;
    v16 = SessionType.rawValue.getter(v9);
    v18 = sub_100010E34(v16, v17, v33);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s SystemApertureElementProvider sessionType=%s", v14, 0x16u);
    swift_arrayDestroy();
    v6 = v28;

    v1 = v29;
  }

  (*(v3 + 8))(v5, v2);
  v35 = v9;
  v34 = 3;
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v33[0] == v31 && v33[1] == v32)
  {

LABEL_10:
    type metadata accessor for RPReadyToRecordSystemApertureElementViewController(0);
    v20 = sub_10003B1A4(v9);
    goto LABEL_15;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  v21 = *((swift_isaMask & **v6) + 0x88);
  v22 = *v6;
  v23 = v21();

  if (v23 == 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  type metadata accessor for RPSystemApertureElementViewController(0);
  v20 = sub_100016A70(v24);
LABEL_15:
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider] = v20;
  v25 = type metadata accessor for RPSessionPlatterSceneDelegate();
  v30.receiver = v1;
  v30.super_class = v25;
  return objc_msgSendSuper2(&v30, "init");
}

id sub_10003528C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPSessionPlatterSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100035340(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v47 = a1;
    if ([v12 SBUI_isHostedBySystemAperture])
    {
      v13 = sub_10002B924();
      v14 = *((swift_isaMask & **v13) + 0x88);
      v15 = *v13;
      v16 = v14();

      if (v16 == 5 || (LOBYTE(v49[0]) = v16, v48 = 3, sub_10002B188(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
      {
        v17 = sub_100034BB0();
        [v17 showStatusBarWithPid:getpid()];
      }

      v18 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider;
      [v12 setSystemApertureElementViewControllerProvider:*&v2[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider]];

      v19 = sub_1000301D0();
      (*(v5 + 16))(v10, v19, v4);
      v20 = v2;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49[0] = v46;
        *v23 = 136315650;
        *(v23 + 4) = sub_100010E34(0xD00000000000001FLL, 0x800000010004DBC0, v49);
        *(v23 + 12) = 2112;
        *(v23 + 14) = v20;
        *(v23 + 22) = 2112;
        v45 = v21;
        v25 = v2;
        v26 = v18;
        v27 = *&v25[v18];
        *(v23 + 24) = v27;
        *v24 = v20;
        v24[1] = v27;
        v28 = v20;
        v29 = v27;
        v18 = v26;
        v2 = v25;
        v30 = v22;
        v31 = v45;
        _os_log_impl(&_mh_execute_header, v45, v30, "%s %@ adding connectionManager delegate=%@", v23, 0x20u);
        sub_10000B62C(&qword_1000697C0, qword_100047CD0);
        swift_arrayDestroy();

        sub_1000114A8(v46);
      }

      else
      {
      }

      (*(v5 + 8))(v10, v4);
      v37 = *&v2[v18];
      v49[1] = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate;
      v38 = swift_dynamicCastObjCProtocolConditional();
      v39 = objc_opt_self();
      if (v38)
      {
        v40 = v39;
        v41 = v37;
        v42 = [v40 sharedInstance];
        v43 = v41;
        [v42 setDelegate:v38];
      }

      else
      {
        v44 = [v39 sharedInstance];
        [v44 setDelegate:0];
      }
    }

    else
    {

      v36 = v47;
    }
  }

  else
  {
    v32 = sub_1000301D0();
    (*(v5 + 16))(v8, v32, v4);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "not an Activity scene", v35, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100035878()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004DBA0, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

id sub_100035A80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004DB80, v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  (*(v2 + 8))(v4, v1);
  v13 = sub_100034BB0();
  [v13 invalidateStatusBar];

  v15[1] = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result didEnterBackgroud];
  }

  return result;
}

uint64_t sub_100035CD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004DB60, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100035EE0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004DB40, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1000360E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = sub_1000301D0();
  v41 = *(v2 + 16);
  v42 = v8;
  v41(v7);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v43 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v1;
    v16 = v5;
    v17 = v2;
    v18 = v15;
    v44 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v44);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %@", v13, 0x16u);
    sub_1000365AC(v14);

    sub_1000114A8(v18);

    v20 = v17;
    v5 = v16;
    v1 = v40;
    v21 = *(v20 + 8);
    v21(v7, v40);
  }

  else
  {

    v21 = *(v2 + 8);
    v21(v7, v1);
  }

  (*((swift_isaMask & *v9) + 0x70))(0);
  v22 = objc_opt_self();
  v23 = &selRef_setElementNeedsUpdate;
  v24 = [v22 sharedInstance];
  v25 = [v24 delegate];

  if (v25)
  {
    v26 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider;
    v27 = *(v9 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider);
    swift_unknownObjectRelease();
    if (v25 == v27)
    {
      (v41)(v5, v42, v1);
      v28 = v9;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42 = v5;
        v32 = v31;
        v33 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v32 = 136315650;
        *(v32 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v44);
        *(v32 + 12) = 2112;
        *(v32 + 14) = v28;
        *v33 = v9;
        *(v32 + 22) = 2112;
        v34 = *(v9 + v26);
        *(v32 + 24) = v34;
        v33[1] = v34;
        v35 = v28;
        v36 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s %@ removing connectionManager delegate=%@", v32, 0x20u);
        sub_10000B62C(&qword_1000697C0, qword_100047CD0);
        swift_arrayDestroy();
        v23 = &selRef_setElementNeedsUpdate;

        sub_1000114A8(v41);

        v37 = v42;
      }

      else
      {

        v37 = v5;
      }

      v21(v37, v1);
      v38 = [v22 v23[202]];
      [v38 setDelegate:0];
    }
  }
}

uint64_t sub_1000365AC(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000697C0, qword_100047CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100036970()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9B8 = v3;
  unk_10006B9C0 = v5;
}

uint64_t *sub_100036A08()
{
  if (qword_10006AB00 != -1)
  {
    swift_once();
  }

  return &qword_10006B9B8;
}

void sub_100036AB4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9C8 = v3;
  unk_10006B9D0 = v5;
}

uint64_t *sub_100036B4C()
{
  if (qword_10006AB08 != -1)
  {
    swift_once();
  }

  return &qword_10006B9C8;
}

void sub_100036BC4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9D8 = v3;
  unk_10006B9E0 = v5;
}

uint64_t *sub_100036C5C()
{
  if (qword_10006AB10 != -1)
  {
    swift_once();
  }

  return &qword_10006B9D8;
}

id sub_100036D64()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.2855 blue:0.1814 alpha:1.0];
  qword_10006B9E8 = result;
  return result;
}

uint64_t *sub_100036DB0()
{
  if (qword_10006AB18 != -1)
  {
    swift_once();
  }

  return &qword_10006B9E8;
}

id sub_100036E00()
{
  if (qword_10006AB18 != -1)
  {
    swift_once();
  }

  v1 = qword_10006B9E8;

  return v1;
}

void sub_100036E80()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9F0 = v3;
  *algn_10006B9F8 = v5;
}

uint64_t *sub_100036F18()
{
  if (qword_10006AB20 != -1)
  {
    swift_once();
  }

  return &qword_10006B9F0;
}

void sub_100036F90()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA00 = v3;
  *algn_10006BA08 = v5;
}

uint64_t *sub_100037028()
{
  if (qword_10006AB28 != -1)
  {
    swift_once();
  }

  return &qword_10006BA00;
}

void sub_1000370A0()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA10 = v3;
  *algn_10006BA18 = v5;
}

uint64_t *sub_100037138()
{
  if (qword_10006AB30 != -1)
  {
    swift_once();
  }

  return &qword_10006BA10;
}

void sub_100037344()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA20 = v3;
  *algn_10006BA28 = v5;
}

uint64_t *sub_1000373DC()
{
  if (qword_10006AB38 != -1)
  {
    swift_once();
  }

  return &qword_10006BA20;
}

void sub_100037454()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA30 = v3;
  *algn_10006BA38 = v5;
}

uint64_t *sub_1000374EC()
{
  if (qword_10006AB40 != -1)
  {
    swift_once();
  }

  return &qword_10006BA30;
}

void sub_100037564()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA40 = v3;
  *algn_10006BA48 = v5;
}

uint64_t *sub_1000375FC()
{
  if (qword_10006AB48 != -1)
  {
    swift_once();
  }

  return &qword_10006BA40;
}

uint64_t sub_100037674(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t SessionType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 1919709544;
  v3 = 0x7964616572;
  if (a1 != 3)
  {
    v3 = 0x69647541726C7168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6D6574737973;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100037860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6574737973;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1919709544;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7964616572;
  }

  else
  {
    v4 = 0x69647541726C7168;
    v3 = 0xE90000000000006FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6574737973;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7964616572;
    if (a2 != 3)
    {
      v6 = 0x69647541726C7168;
      v5 = 0xE90000000000006FLL;
    }

    if (a2 == 2)
    {
      v7 = 1919709544;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_1000379CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100037A9C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100037B58(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100037C24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14ReplayKitAngel11SessionTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100037C54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE400000000000000;
  v6 = 1919709544;
  v7 = 0xE500000000000000;
  v8 = 0x7964616572;
  if (v2 != 3)
  {
    v8 = 0x69647541726C7168;
    v7 = 0xE90000000000006FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D6574737973;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s14ReplayKitAngel11SessionTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E418, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionType(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100037FD0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003801C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000380D4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10003812C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v6 == a1 && v7 == a2)
  {
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v11 = [v2 systemApertureElementContext];
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_1000138FC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005E918;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    [v11 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_100038298(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100038338;
}

void sub_100038338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_10003812C(v3, v4);
  }

  else
  {
    sub_10003812C(*(*a1 + 24), v4);
  }

  free(v2);
}

unint64_t sub_1000383B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004034C(*a1);
  *a2 = result;
  return result;
}

_BYTE *sub_1000383E4(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return sub_100038418(v2);
}

_BYTE *sub_100038418(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_class_meths = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate.class_meths;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package] = 0;
  v8 = &v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState];
  v9 = sub_10003720C();
  v10 = *(v9 + 1);
  *v8 = *v9;
  v8[1] = v10;
  v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role] = a1;
  v11 = type metadata accessor for RPReadyAccessoryView();
  v32.receiver = v1;
  v32.super_class = v11;

  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = sub_1000301D0();
  (*(v4 + 16))(v6, v13, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v30[1] = a1;
    v16 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100010E34(0x6C6F722874696E69, 0xEB00000000293A65, v31);
    *(v16 + 12) = 2080;
    v17 = 0xE800000000000000;
    v18 = 0x676E696C69617274;
    if (v12[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role] != 1)
    {
      v18 = 0x6C616D696E696DLL;
      v17 = 0xE700000000000000;
    }

    if (v12[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role])
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x676E696461656CLL;
    }

    if (v12[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role])
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_100010E34(v19, v20, v31);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s role=%s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v3);
    p_class_meths = (&OBJC_PROTOCOL___RPAngelConnectionManagerDelegate + 32);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24 = objc_allocWithZone(BSUICAPackageView);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithPackageName:v25 inBundle:v23];

  v27 = p_class_meths[171];
  swift_beginAccess();
  v28 = *(v27 + v12);
  *(v27 + v12) = v26;

  return v12;
}

void sub_100038800()
{
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  v2 = sub_10003720C();
  v3 = *(v2 + 1);
  *v1 = *v2;
  v1[1] = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000388E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = sub_1000301D0();
  v41 = *(v2 + 16);
  v42 = v8;
  v40 = v2 + 16;
  v41(v7);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v37 = v5;
    v38 = v2;
    v39 = v1;
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v43);
    *(v12 + 12) = 2080;
    v13 = 0xE800000000000000;
    v14 = 0x676E696C69617274;
    if (*(v9 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role) != 1)
    {
      v14 = 0x6C616D696E696DLL;
      v13 = 0xE700000000000000;
    }

    if (*(v9 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x676E696461656CLL;
    }

    if (*(v9 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role))
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_100010E34(v15, v16, &v43);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    v19 = (*((swift_isaMask & *v9) + 0x80))(v18);
    v21 = sub_100010E34(v19, v20, &v43);

    *(v12 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s role=%s viewState=%s", v12, 0x20u);
    swift_arrayDestroy();

    v1 = v39;
    v22 = *(v38 + 8);
    v22(v7, v39);
    v5 = v37;
  }

  else
  {

    v22 = *(v2 + 8);
    v22(v7, v1);
  }

  v23 = type metadata accessor for RPReadyAccessoryView();
  v44.receiver = v9;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "layoutSubviews");
  v25 = (*((swift_isaMask & *v9) + 0x68))(v24);
  if (v25)
  {
    v26 = v25;
    (*((swift_isaMask & *v9) + 0x80))();
    v27 = String._bridgeToObjectiveC()();

    [v26 setState:v27];

    v28 = v26;
    [v28 sizeToFit];
    [v9 bounds];
    MidX = CGRectGetMidX(v45);
    [v9 bounds];
    [v28 setCenter:{MidX, CGRectGetMidY(v46)}];
    [v28 setAlpha:*sub_10003674C()];
    [v9 insertSubview:v28 above:v9];
  }

  else
  {
    (v41)(v5, v42, v1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v5;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v43);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s BSUICAPackageView should not be nil", v33, 0xCu);
      sub_1000114A8(v34);

      v35 = v32;
    }

    else
    {

      v35 = v5;
    }

    v22(v35, v1);
  }
}

double sub_100038EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role);
  if (*(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role) && v1 != 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v4 = *((swift_isaMask & *v0) + 0x80);
      v5 = v4(v3);
      v7 = v6;
      v8 = sub_10003729C();
      if (v5 == *v8 && v7 == *(v8 + 1))
      {
        goto LABEL_17;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_18;
      }

      v12 = v4(v11);
      v14 = v13;
      v15 = sub_1000372C0();
      if (v12 == *v15 && v14 == *(v15 + 1))
      {
LABEL_17:
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
LABEL_20:
          if (v1)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
LABEL_22:
              v22 = v4(v21);
              v24 = v23;
              v25 = sub_10003727C();
              if (v22 == *v25 && v24 == *(v25 + 1))
              {
              }

              else
              {
                v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v27 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              if (v1 == 1)
              {
              }

              else
              {
                v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v42 & 1) == 0)
                {
LABEL_46:
                  v18 = *sub_100036614();
                  goto LABEL_47;
                }
              }

              v28 = *sub_100036614();
              v29 = sub_100036648();
              goto LABEL_30;
            }
          }

          else
          {
          }

          v30 = v4(v21);
          v32 = v31;
          v33 = sub_100037264();
          if (v30 != *v33 || v32 != v33[1])
          {
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v35)
            {
              goto LABEL_40;
            }

            v37 = v4(v36);
            v39 = v38;
            v40 = sub_10003724C();
            if (v37 != *v40 || v39 != v40[1])
            {
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v44)
              {
                goto LABEL_40;
              }

              v46 = v4(v45);
              v48 = v47;
              v49 = sub_100037234();
              if (v46 != *v49 || v48 != v49[1])
              {
                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v50)
                {
                  goto LABEL_40;
                }

                v52 = v4(v51);
                v54 = v53;
                v55 = sub_10003727C();
                if (v52 != *v55 || v54 != *(v55 + 1))
                {
                  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v56 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

LABEL_40:
                  v41 = *sub_100036614();
                  v18 = v41 + *sub_100036634();
                  goto LABEL_47;
                }
              }
            }
          }

          goto LABEL_40;
        }
      }

LABEL_18:
      if (v1)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v28 = *sub_100036614();
      v29 = sub_100036634();
LABEL_30:
      v18 = v28 - *v29;
LABEL_47:
      sub_100036628();
      return v18;
    }
  }

  v18 = *sub_100036670();
  sub_10003667C();
  return v18;
}

uint64_t sub_100039334()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003936C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100039450@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000403BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000394CC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003965C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000396F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000397EC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003997C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039B0C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039BA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100039D34()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039DCC(double a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039F3C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039FD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_10003A0D0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003A128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003A1F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  v2 = v1;
  return v1;
}

void *sub_10003A240()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
  v2 = v1;
  return v1;
}

_BYTE *sub_10003A278(uint64_t a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(type metadata accessor for RPReadyAccessoryView());
  return sub_100038418(v1);
}

void *sub_10003A2BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
  v2 = v1;
  return v1;
}

id sub_10003A2EC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10003A340(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003A408()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003A454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003A50C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003A550(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003A600()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003A644(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10003A6F4()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x280))();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant:*sub_1000366CC()];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void (*sub_10003A7E8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10003A6F4();
  return sub_10003A830;
}

void sub_10003A830(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = v2;
}

id sub_10003A848()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10003A89C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003AB80()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003ABD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003AF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  return sub_1000406CC(v1 + v3, a1);
}

uint64_t sub_10003B0E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  sub_1000298BC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10003B1D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress] = 0x100000;
  v4 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *&v2[v4] = *sub_1000366FC();
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors] = 666;
  v6 = SBUISystemApertureElementIdentifierScreenRecording;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier] = SBUISystemApertureElementIdentifierScreenRecording;
  v7 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView;
  v8 = type metadata accessor for RPReadyAccessoryView();
  v9 = objc_allocWithZone(v8);
  v10 = v6;
  *&v2[v7] = sub_100038418(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView;
  v12 = objc_allocWithZone(v8);
  *&v2[v11] = sub_100038418(1);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_100038418(2);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel;
  *&v2[v16] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState] = 4;
  v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType] = 3;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint] = 0;
  v17 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_compactViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewElementLayoutConstraints] = &_swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  *&v2[v18] = [objc_opt_self() grayColor];
  v19 = &v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  v24.receiver = v2;
  v24.super_class = type metadata accessor for RPReadyToRecordSystemApertureElementViewController(0);
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_10003EC88(v3);

  return v22;
}

void sub_10003B4D4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
    if (v9)
    {
      v160 = &v152 - v7;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();
      v12 = v9;
      v13 = v8;
      v158 = v11;
      v14 = [v11 bundleForClass:ObjCClassFromMetadata];
      v15 = objc_allocWithZone(BSUICAPackageView);
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 initWithPackageName:v16 inBundle:v14];

      if (v17)
      {
        v155 = v17;
        v157 = v13;
        v162 = v12;
        v18 = sub_10002B924();
        v19 = *((swift_isaMask & **v18) + 0xA0);
        v20 = *v18;
        v21 = v19();
        v23 = v22;

        (*((swift_isaMask & *v1) + 0x1C8))(v21, v23);
        v24 = sub_1000301D0();
        v25 = v160;
        (*(v3 + 16))(v160, v24, v2);
        v26 = v1;
        v27 = v1;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        v30 = os_log_type_enabled(v28, v29);
        v161 = v27;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v156 = v32;
          v159 = swift_slowAlloc();
          v164 = v159;
          *v31 = 136315650;
          *(v31 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, &v164);
          *(v31 + 12) = 2112;
          *(v31 + 14) = v26;
          *v32 = v27;
          *(v31 + 22) = 2080;
          v33 = *((swift_isaMask & *v26) + 0x1C0);
          v34 = v26;
          v35 = v33();
          if (v36)
          {
            v37 = v36;
          }

          else
          {
            v35 = 1819047246;
            v37 = 0xE400000000000000;
          }

          v38 = sub_100010E34(v35, v37, &v164);

          *(v31 + 24) = v38;
          _os_log_impl(&_mh_execute_header, v28, v29, "%s self=%@ sessionID=%s", v31, 0x20u);
          sub_100011940(v156, &qword_1000697C0, qword_100047CD0);

          swift_arrayDestroy();

          (*(v3 + 8))(v160, v2);
        }

        else
        {

          (*(v3 + 8))(v25, v2);
        }

        v44 = v162;
        v45 = v157;
        v46 = type metadata accessor for RPReadyToRecordSystemApertureElementViewController(0);
        v163.receiver = v26;
        v163.super_class = v46;
        objc_msgSendSuper2(&v163, "viewDidLoad");
        v47 = [v26 view];
        if (v47)
        {
          v48 = v47;
          [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

          v49 = (swift_isaMask & *v26) + 640;
          v50 = *((swift_isaMask & *v26) + 0x280);
          v51 = v50();
          [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

          [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
          v52 = *(v26 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
          if (v52)
          {
            [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
          }

          [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
          v53 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v26 action:"customViewTapped:"];
          v54 = v50();
          [v54 setUserInteractionEnabled:1];

          v55 = v50();
          v56 = [v55 layer];

          [v56 setHitTestsAsOpaque:1];
          v57 = v50();
          v154 = v53;
          [v57 addGestureRecognizer:v53];

          v58 = [v26 view];
          if (v58)
          {
            v59 = v58;
            v60 = v50();
            [v59 addSubview:v60];

            v61 = [v26 view];
            if (v61)
            {
              v62 = v61;
              [v61 addSubview:v45];

              v63 = [v26 view];
              if (v63)
              {
                v64 = v63;
                [v63 addSubview:v162];

                v65 = v50;
                v66 = v50();
                v67 = [v66 centerXAnchor];

                v68 = [v26 view];
                if (v68)
                {
                  v69 = v68;
                  v70 = [v68 centerXAnchor];

                  v71 = [v67 constraintEqualToAnchor:v70];
                  [v71 setActive:1];

                  v72 = v50();
                  v73 = [v72 topAnchor];

                  v74 = [v26 view];
                  v160 = v49;
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v74 topAnchor];

                    v77 = [v73 constraintEqualToAnchor:v76];
                    [v77 setActive:1];

                    v78 = v155;
                    v79 = v155;
                    [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
                    [v79 setAlpha:*sub_10003674C()];
                    [v79 setUserInteractionEnabled:0];
                    v80 = *((swift_isaMask & *v26) + 0x228);
                    v81 = v79;
                    v82 = v80(v78);
                    v83 = (v65)(v82);
                    v156 = v81;
                    [v83 addSubview:v81];

                    v84 = ((swift_isaMask & *v26) + 520);
                    v85 = *((swift_isaMask & *v26) + 0x208);
                    v86 = v85();
                    [v86 setTranslatesAutoresizingMaskIntoConstraints:0];

                    v87 = v85();
                    v88 = String._bridgeToObjectiveC()();
                    v89 = [v158 _rpLocalizedStringFromFrameworkBundleWithKey:v88];

                    v159 = v65;
                    if (!v89)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v89 = String._bridgeToObjectiveC()();
                    }

                    [v87 setText:v89];

                    v90 = v85();
                    v91 = objc_opt_self();
                    v92 = [v91 systemFontOfSize:*sub_100036E5C() weight:UIFontWeightMedium];
                    [v90 setFont:v92];

                    v93 = v85();
                    v94 = objc_opt_self();
                    v95 = [v94 systemOrangeColor];
                    [v93 setTextColor:v95];

                    v96 = v85();
                    [v96 setHidden:1];

                    v97 = v85();
                    [v97 sizeToFit];

                    v98 = v85();
                    v99 = [v98 layer];

                    [v99 setAllowsHitTesting:0];
                    v100 = v159();
                    v101 = v85();
                    [v100 addSubview:v101];

                    v102 = *(v26 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel);
                    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v103 = [v94 whiteColor];
                    [v102 setTextColor:v103];

                    v104 = String._bridgeToObjectiveC()();
                    v105 = [v158 _rpLocalizedStringFromFrameworkBundleWithKey:v104];

                    v158 = v84;
                    v155 = v85;
                    if (!v105)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v105 = String._bridgeToObjectiveC()();
                    }

                    [v102 setText:v105];

                    v106 = [v91 systemFontOfSize:*sub_100036A98() weight:UIFontWeightMedium];
                    [v102 setFont:v106];

                    [v102 sizeToFit];
                    [v102 setHidden:1];
                    v107 = [v102 layer];
                    [v107 setAllowsHitTesting:0];

                    v108 = v159;
                    v109 = v159();
                    [v109 addSubview:v102];

                    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
                    v110 = swift_allocObject();
                    *(v110 + 16) = xmmword_100049080;
                    v111 = v156;
                    v112 = [v156 topAnchor];
                    v113 = v108;
                    v114 = v108();
                    v115 = [v114 topAnchor];

                    v116 = [v112 constraintEqualToAnchor:v115 constant:*sub_100036864()];
                    *(v110 + 32) = v116;
                    v117 = [v111 widthAnchor];
                    v118 = [v117 constraintEqualToConstant:*sub_100036E68()];

                    *(v110 + 40) = v118;
                    v119 = [v111 heightAnchor];
                    v120 = [v119 constraintEqualToConstant:*sub_100036E74()];

                    *(v110 + 48) = v120;
                    v121 = [v111 leadingAnchor];
                    v122 = v113();
                    v123 = [v122 leadingAnchor];

                    v153 = sub_100036848();
                    v124 = [v121 constraintEqualToAnchor:v123 constant:*v153];

                    *(v110 + 56) = v124;
                    v125 = v155;
                    v126 = v155();
                    v127 = [v126 centerYAnchor];

                    v128 = [v111 centerYAnchor];
                    v129 = [v127 constraintEqualToAnchor:v128];

                    *(v110 + 64) = v129;
                    v130 = v125();
                    v131 = [v130 leadingAnchor];

                    v132 = [v111 trailingAnchor];
                    v133 = [v131 constraintEqualToAnchor:v132 constant:*sub_100036880()];

                    *(v110 + 72) = v133;
                    v134 = v125();
                    v135 = [v134 widthAnchor];

                    v136 = [v135 constraintEqualToConstant:*sub_100037CE0()];
                    *(v110 + 80) = v136;
                    v137 = [v102 topAnchor];
                    v138 = v125();
                    v139 = [v138 bottomAnchor];

                    v140 = [v137 constraintEqualToAnchor:v139 constant:*sub_100037CEC()];
                    *(v110 + 88) = v140;
                    v141 = [v102 leadingAnchor];
                    v142 = v159;
                    v143 = v159();
                    v144 = [v143 leadingAnchor];

                    v145 = [v141 constraintEqualToAnchor:v144 constant:*v153];
                    *(v110 + 96) = v145;
                    v146 = [v102 trailingAnchor];
                    v147 = v142();
                    v148 = [v147 trailingAnchor];

                    v149 = [v146 constraintEqualToAnchor:v148 constant:-*sub_100036D24()];
                    *(v110 + 104) = v149;
                    (*((swift_isaMask & *v26) + 0x2E8))(v110);
                    v150 = objc_opt_self();
                    (*((swift_isaMask & *v26) + 0x2E0))();
                    sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v150 activateConstraints:isa];

                    sub_10003F274();
                    return;
                  }

LABEL_32:
                  __break(1u);
                  return;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_29;
      }
    }
  }

  v39 = sub_1000301D0();
  (*(v3 + 16))(v6, v39, v2);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v164 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, &v164);
    _os_log_impl(&_mh_execute_header, v40, v41, "%s error loading sub views", v42, 0xCu);
    sub_1000114A8(v43);
  }

  (*(v3 + 8))(v6, v2);
}

void sub_10003C914(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
      if (v9)
      {
        v32 = a1;
        v10 = *((swift_isaMask & *v1) + 0x220);
        v11 = v9;
        v12 = v8;
        v13 = v7;
        v14 = v10();
        if (v14)
        {
          v15 = v14;
          v16 = swift_allocObject();
          v16[2] = v1;
          v16[3] = v12;
          v16[4] = v13;
          v16[5] = v11;
          v16[6] = v15;
          v37 = sub_100040AA4;
          v38 = v16;
          aBlock = _NSConcreteStackBlock;
          v34 = 1107296256;
          v35 = sub_10001D7A4;
          v36 = &unk_10005E968;
          v17 = _Block_copy(&aBlock);
          v18 = v11;
          v19 = v12;
          v20 = v13;
          v21 = v1;
          v22 = v15;

          v23 = swift_allocObject();
          *(v23 + 16) = v21;
          v37 = sub_100040AB4;
          v38 = v23;
          aBlock = _NSConcreteStackBlock;
          v34 = 1107296256;
          v35 = sub_10001D7A4;
          v36 = &unk_10005E9B8;
          v24 = _Block_copy(&aBlock);
          v25 = v21;

          [v32 animateAlongsideTransition:v17 completion:v24];
          _Block_release(v24);
          _Block_release(v17);

          return;
        }
      }
    }
  }

  v26 = sub_1000301D0();
  (*(v4 + 16))(v6, v26, v3);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s error loading sub views", v29, 0xCu);
    sub_1000114A8(v30);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_10003CCEC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *a1) + 0x128))(v12);
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 != 4)
      {
        return;
      }

      v23 = &swift_isaMask;
      v43 = (*((swift_isaMask & *a1) + 0x208))();
      [v43 setHidden:0];

      [a5 setHidden:0];
      [a2 setHidden:1];
      [a3 setHidden:1];
      [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:0];
      v44 = objc_opt_self();
      (*((swift_isaMask & *a1) + 0x2B0))();
      v45 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v44 deactivateConstraints:isa];

      (*((swift_isaMask & *a1) + 0x2C8))();
      v47 = Array._bridgeToObjectiveC()().super.isa;

      [v44 deactivateConstraints:v47];

      v48 = (swift_isaMask & *a1) + 664;
      v49 = *((swift_isaMask & *a1) + 0x298);
      v50 = v49();
      if (v50 >> 62)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v51)
      {
        goto LABEL_99;
      }

      v169 = v49;
      v170 = v48;
      v167 = v45;
      v168 = v44;
      sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100047E30;
      v54 = [a1 view];
      if (v54)
      {
        v55 = v54;
        v18 = &selRef_setElementNeedsUpdate;
        v56 = [v54 widthAnchor];

        v57 = *((swift_isaMask & *a1) + 0x280);
        v58 = v57();
        v59 = [v58 widthAnchor];

        v60 = [v56 constraintEqualToAnchor:v59];
        *(v53 + 32) = v60;
        v61 = [a1 view];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 heightAnchor];

          v64 = v57();
          v23 = [v64 heightAnchor];

          v65 = [v63 constraintEqualToAnchor:v23];
          *(v53 + 40) = v65;
          v66 = v57();
          v67 = [v66 widthAnchor];

          v68 = [v67 constraintEqualToConstant:*sub_1000366B0()];
          *(v53 + 48) = v68;
          *(v53 + 56) = (*((swift_isaMask & *a1) + 0x268))();
          v69 = (*((swift_isaMask & *a1) + 0x2A0))(v53);
          v70 = (v169)(v69);
          v71 = v70;
          if (!(v70 >> 62))
          {
            v19 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v19)
            {
              goto LABEL_27;
            }

            goto LABEL_98;
          }

          goto LABEL_97;
        }

LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v75 = [objc_msgSend(a1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v75)
    {
      v76 = [v75 isUserInitiated];
    }

    else
    {
      v76 = 0;
    }

    v77 = (*((swift_isaMask & *a1) + 0x238))();
    if (v77 <= 5 || v77 == 6)
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v91 & v76)
      {
LABEL_55:
        v92 = sub_10002B924();
        v93 = *((swift_isaMask & *a1) + 0x1C0);
        v94 = *v92;
        v95 = v93();
        (*((swift_isaMask & *v94) + 0xF8))(v95);

LABEL_126:

        return;
      }
    }

    else
    {

      if (v76)
      {
        goto LABEL_55;
      }
    }

    [a2 setHidden:1];
    [a4 setHidden:1];
    [a3 setHidden:0];
    [a5 setHidden:1];
    v96 = [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:1];
    v97 = (*((swift_isaMask & *a1) + 0x208))(v96);
    [v97 setHidden:1];

    v44 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x298))();
    v98 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v99 = Array._bridgeToObjectiveC()().super.isa;

    [v44 deactivateConstraints:v99];

    (*((swift_isaMask & *a1) + 0x2C8))();
    v100 = Array._bridgeToObjectiveC()().super.isa;

    [v44 deactivateConstraints:v100];

    v101 = (swift_isaMask & *a1) + 688;
    v102 = *((swift_isaMask & *a1) + 0x2B0);
    v103 = v102();
    if (v103 >> 62)
    {
      v137 = _CocoaArrayWrapper.endIndex.getter();

      if (v137)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v104)
      {
        goto LABEL_113;
      }
    }

    v169 = v44;
    v170 = v102;
    v168 = v98;
    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_100047E30;
    v107 = [a3 centerXAnchor];
    v19 = &selRef_setElementNeedsUpdate;
    v108 = [a1 view];
    if (!v108)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v109 = v108;
    v110 = [v108 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v111 = [v110 centerXAnchor];
    v112 = [v107 constraintEqualToAnchor:v111];

    *(v106 + 32) = v112;
    v113 = [a3 centerYAnchor];
    v114 = [a1 view];
    if (!v114)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v115 = v114;
    v116 = [v114 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v117 = [v116 centerYAnchor];
    v118 = [v113 constraintEqualToAnchor:v117];

    *(v106 + 40) = v118;
    v119 = [a4 centerXAnchor];
    v120 = [a1 view];
    if (!v120)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v121 = v120;
    v122 = [v120 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v123 = [v122 centerXAnchor];
    v124 = [v119 constraintEqualToAnchor:v123];

    *(v106 + 48) = v124;
    v125 = [a4 centerYAnchor];
    v126 = [a1 view];
    if (!v126)
    {
LABEL_139:
      __break(1u);
      return;
    }

    v127 = v126;
    v128 = [v126 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v129 = [v128 centerYAnchor];
    v23 = [v125 constraintEqualToAnchor:v129];

    *(v106 + 56) = v23;
    v130 = (*((swift_isaMask & *a1) + 0x2B8))(v106);
    v131 = (v170)(v130);
    v132 = v131;
    v167 = v101;
    if (v131 >> 62)
    {
      goto LABEL_111;
    }

    v133 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v133)
    {
      goto LABEL_65;
    }

LABEL_112:

    v44 = v169;
    v102 = v170;
LABEL_113:
    v159 = (v102)(v105);
    if (v159 >> 62)
    {
      v164 = v159;
      v165 = _CocoaArrayWrapper.endIndex.getter();
      v159 = v164;
      if (!v165)
      {
        goto LABEL_126;
      }
    }

    else if (!*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_126;
    }

    if ((v159 & 0xC000000000000001) != 0)
    {
      v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v160 = *(v159 + 32);
    }

    v161 = v160;

    v162 = [v161 isActive];

    if ((v162 & 1) == 0)
    {
      v102();
LABEL_121:
      v170 = Array._bridgeToObjectiveC()().super.isa;

      [v44 activateConstraints:v170];
LABEL_122:
      v163 = v170;
    }

    return;
  }

  if (v15 == 1)
  {
    v74 = (*((swift_isaMask & *a1) + 0x238))();
    if (v74 <= 3 || v74 <= 5 || v74 == 6)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v79 = sub_1000301D0();
    (*(v11 + 16))(v14, v79, v10);
    v80 = a1;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v171 = v85;
      *v83 = 136315394;
      *(v83 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &v171);
      *(v83 + 12) = 2112;
      *(v83 + 14) = v80;
      *v84 = a1;
      v86 = v80;
      _os_log_impl(&_mh_execute_header, v81, v82, "%s self=%@ inactive and recording completed, ending session", v83, 0x16u);
      sub_100011940(v84, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v85);
    }

    (*(v11 + 8))(v14, v10);
    v87 = sub_10002B924();
    v88 = *((swift_isaMask & *v80) + 0x1C0);
    v89 = *v87;
    v90 = v88();
    (*((swift_isaMask & *v89) + 0xF8))(v90);
  }

  else if (v15 == 2)
  {
    [a2 setHidden:0];
    [a3 setHidden:1];
    [a4 setHidden:1];
    [a5 setHidden:1];
    v16 = [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:1];
    v17 = (*((swift_isaMask & *a1) + 0x208))(v16);
    [v17 setHidden:1];

    v18 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x298))();
    v19 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v20 = Array._bridgeToObjectiveC()().super.isa;

    [v18 deactivateConstraints:v20];

    (*((swift_isaMask & *a1) + 0x2B0))();
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v18 deactivateConstraints:v21];

    v22 = (swift_isaMask & *a1) + 712;
    v23 = *((swift_isaMask & *a1) + 0x2C8);
    v24 = v23();
    if (v24 >> 62)
    {
      goto LABEL_79;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v25)
    {
      goto LABEL_6;
    }

    while (1)
    {
LABEL_86:
      v71 = a1;
      v138 = (v23)(v26);
      if (v138 >> 62)
      {
        v71 = v138;
        v142 = _CocoaArrayWrapper.endIndex.getter();
        v138 = v71;
        if (!v142)
        {
          goto LABEL_126;
        }
      }

      else if (!*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      if ((v138 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v139 = *(v138 + 32);
LABEL_91:
        v140 = v139;

        v141 = [v140 isActive];

        if (v141)
        {
          return;
        }

        v23();
        v170 = Array._bridgeToObjectiveC()().super.isa;

        [v18 activateConstraints:v170];
        goto LABEL_122;
      }

      __break(1u);
LABEL_97:
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (!v19)
      {
LABEL_98:

        v23 = &swift_isaMask;
        v44 = v168;
        v49 = v169;
LABEL_99:
        v143 = (*((swift_isaMask & *a1) + 0x268))(v52);
        v144 = [a1 view];
        if (!v144)
        {
          goto LABEL_131;
        }

        v19 = v144;
        v145 = [v144 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

        [v145 layoutFrame];
        v147 = v146;
        v149 = v148;
        v151 = v150;
        v153 = v152;

        v173.origin.x = v147;
        v173.origin.y = v149;
        v173.size.width = v151;
        v173.size.height = v153;
        [v143 setConstant:CGRectGetHeight(v173)];

        v132 = a1;
        v154 = v49();
        if (v154 >> 62)
        {
          v132 = v154;
          v158 = _CocoaArrayWrapper.endIndex.getter();
          v154 = v132;
          if (!v158)
          {
            goto LABEL_126;
          }
        }

        else if (!*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        if ((v154 & 0xC000000000000001) != 0)
        {
          v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_111:
            v133 = _CocoaArrayWrapper.endIndex.getter();
            if (v133)
            {
LABEL_65:
              v22 = 0;
              v18 = v132 & 0xFFFFFFFFFFFFFF8;
              a2 = 1144750080;
              while (1)
              {
                if ((v132 & 0xC000000000000001) != 0)
                {
                  v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v22 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_78;
                  }

                  v134 = *(v132 + 8 * v22 + 32);
                }

                v23 = v134;
                v19 = (v22 + 1);
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_77;
                }

                LODWORD(v135) = 1144750080;
                [v134 setPriority:v135];

                ++v22;
                if (v19 == v133)
                {
                  goto LABEL_112;
                }
              }
            }

            goto LABEL_112;
          }

          v155 = *(v154 + 32);
        }

        v156 = v155;

        v157 = [v156 isActive];

        if (v157)
        {
          return;
        }

        v49();
        goto LABEL_121;
      }

LABEL_27:
      v22 = 0;
      a2 = v71 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v72 = *(v71 + 8 * v22 + 32);
        }

        v23 = v72;
        v18 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        LODWORD(v73) = 1144750080;
        [v72 setPriority:v73];

        ++v22;
        if (v18 == v19)
        {
          goto LABEL_98;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v136 = _CocoaArrayWrapper.endIndex.getter();

        if (v136)
        {
          break;
        }

LABEL_6:
        v169 = v23;
        v170 = v22;
        v168 = v19;
        sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100047E50;
        v28 = [a2 centerXAnchor];
        v29 = [a1 view];
        if (!v29)
        {
          goto LABEL_132;
        }

        v30 = v29;
        v31 = [v29 centerXAnchor];

        v32 = [v28 constraintEqualToAnchor:v31];
        *(v27 + 32) = v32;
        v33 = [a2 centerYAnchor];
        v34 = [a1 view];
        if (!v34)
        {
          goto LABEL_134;
        }

        v35 = v34;
        v167 = v18;
        v23 = [v34 centerYAnchor];

        v36 = [v33 constraintEqualToAnchor:v23];
        *(v27 + 40) = v36;
        v37 = (*((swift_isaMask & *a1) + 0x2D0))(v27);
        v38 = (v169)(v37);
        v39 = v38;
        if (v38 >> 62)
        {
          a2 = _CocoaArrayWrapper.endIndex.getter();
          if (!a2)
          {
LABEL_85:

            v18 = v167;
            v23 = v169;
            goto LABEL_86;
          }
        }

        else
        {
          a2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a2)
          {
            goto LABEL_85;
          }
        }

        v22 = 0;
        v19 = &selRef_setElementNeedsUpdate;
        v18 = 1144750080;
        while (1)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v40 = *(v39 + 8 * v22 + 32);
          }

          v23 = v40;
          v42 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          LODWORD(v41) = 1144750080;
          [v40 setPriority:v41];

          ++v22;
          if (v42 == a2)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
      }
    }

    v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_91;
  }
}

uint64_t sub_10003E828(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v9 = *((swift_isaMask & *a2) + 0x128);
    if (v9() == 3 || (result = v9(), result == 2))
    {
      v10 = (*((swift_isaMask & *a2) + 0x238))();
      if (v10 <= 3 || v10 > 5 || v10 == 4)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }

      v19 = v9;
      v12 = sub_1000301D0();
      (*(v5 + 16))(v7, v12, v4);
      v13 = a2;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v19();

        _os_log_impl(&_mh_execute_header, v14, v15, "resume system session in layout mode=%ld", v16, 0xCu);
      }

      else
      {

        v14 = v13;
      }

      (*(v5 + 8))(v7, v4);
      v17 = [objc_opt_self() sharedInstance];
      [v17 resumeCurrentSystemSession];

      return (*((swift_isaMask & v13->isa) + 0x240))(4);
    }
  }

  return result;
}

uint64_t sub_10003EC88(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000412A0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005EB28;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100040D28(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10003EF54(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*((swift_isaMask & *a1) + 0x250))(v6);
  v20 = a2;
  sub_10002B188();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v10 = sub_1000301D0();
    (*(v5 + 16))(v8, v10, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v13 = 136315394;
      *(v13 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D650, &v19);
      *(v13 + 12) = 2080;
      v14 = SessionType.rawValue.getter(a2);
      v16 = sub_100010E34(v14, v15, &v19);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s with session type %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
    return (*((swift_isaMask & *a1) + 0x258))(a2);
  }

  return result;
}

uint64_t sub_10003F274()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v57 - v7;
  v9 = sub_1000301D0();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v59 = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v58 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v57 = v10;
    v17 = v3;
    v18 = v16;
    v60 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v60);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v15, 0xCu);
    sub_1000114A8(v18);

    v1 = v58;

    v19 = v17;
    v10 = v57;
  }

  else
  {

    v19 = v3;
  }

  v20 = *(v19 + 8);
  v20(v8, v2);
  v21 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v21)
  {
    v22 = v1;
    type metadata accessor for RPReadyAccessoryView();
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v23 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
      if (v23)
      {
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = v24;
          v26 = *((swift_isaMask & *v22) + 0x238);
          v27 = v23;
          v28 = v22;
          v29 = v27;
          v30 = v21;
          v31 = v26();
          if (v31 <= 3)
          {
            v32 = v58;
            if (v31 > 1)
            {
              if (v31 == 2)
              {
                v33 = sub_10003724C();
              }

              else
              {
                v33 = sub_100037264();
              }
            }

            else if (v31)
            {
              v33 = sub_100037234();
            }

            else
            {
              v33 = sub_10003720C();
            }

            v54 = v33;
            v55 = *v33;
            v56 = v33[1];

            sub_10003F854(v32, v55, v56);

            v52 = *v54;
            v53 = v54[1];
            goto LABEL_24;
          }

          v32 = v58;
          if ((v31 - 4) >= 2)
          {
            if (v31 == 6)
            {
              v48 = sub_1000372C0();
              v49 = *v48;
              v50 = v48[1];

              sub_10003F854(v32, v49, v50);

              v51 = sub_100037304();
              v52 = *v51;
              v53 = v51[1];
LABEL_24:

              sub_10003F854(v25, v52, v53);
            }
          }

          else
          {
            v39 = sub_10003729C();
            v40 = *v39;
            v41 = v39[1];

            sub_10003F854(v32, v40, v41);

            v42 = *v39;
            v43 = v39[1];

            sub_10003F854(v25, v42, v43);

            v44 = *sub_100037700();
            v45 = *sub_100037718();
            v46 = *sub_100037730();
            v47 = [objc_allocWithZone(UIColor) initWithRed:v44 green:v45 blue:v46 alpha:*sub_100037748()];
            (*((swift_isaMask & *v28) + 0x300))(v47);
          }

          [v32 layoutSubviews];
          [v25 layoutSubviews];
          [objc_msgSend(v28 "systemApertureElementContext")];

          return swift_unknownObjectRelease();
        }
      }
    }
  }

  v10(v6, v9, v2);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v60);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s cannot get leading, trailing, and minimal views", v36, 0xCu);
    sub_1000114A8(v37);
  }

  return (v20)(v6, v2);
}

void sub_10003F854(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000301D0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v29 = v4;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136315650;
    *(v15 + 4) = sub_100010E34(0xD00000000000001ELL, 0x800000010004D4A0, &v31);
    *(v15 + 12) = 2080;
    v16 = *(v12 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role);
    v28 = v7;
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = 0x676E696C69617274;
      }

      else
      {
        v17 = 0x6C616D696E696DLL;
      }

      if (v16 == 1)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      v17 = 0x676E696461656CLL;
    }

    v20 = sub_100010E34(v17, v18, &v31);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v19 = v30;
    *(v15 + 24) = sub_100010E34(v30, a3, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s role=%s viewState=%s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v19 = v30;
  }

  v21 = *((swift_isaMask & *v12) + 0x88);

  v22 = v21(v19, a3);
  v23 = (*((swift_isaMask & *v12) + 0x68))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    [v24 setState:v25];
  }

  sub_10003FBD8(v12, v19, a3);
}

void sub_10003FBD8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100037234();
  v9 = *v8 == a2 && v8[1] == a3;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = sub_10003724C(), *v10 == a2) ? (v11 = v10[1] == a3) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 = sub_100037264(), *v12 == a2) && v12[1] == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v13 = a1;
    v14 = UIAccessibilityAnnouncementNotification;
    type metadata accessor for RPReadyToRecordSystemApertureElementViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    UIAccessibilityPostNotification(v14, v19);

    a1 = v13;
    v4 = v3;
  }

  type metadata accessor for RPReadyToRecordSystemApertureElementViewController(0);
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:v20];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v43 = v24;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = String._bridgeToObjectiveC()();
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView];
  if (v28)
  {
    v29 = v25;
    sub_1000119A0(0, &qword_100069120, UIView_ptr);
    v30 = a1;
    v31 = v28;
    v32 = static NSObject.== infix(_:_:)();

    if (v32)
    {
      v33 = [v31 accessibilityLabel];
      if (!v33)
      {

        goto LABEL_33;
      }

      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 != v29 || v37 != v27)
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_26:
  v38 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView];
  if (!v38 || (sub_1000119A0(0, &qword_100069120, UIView_ptr), v39 = a1, v40 = v38, v41 = static NSObject.== infix(_:_:)(), v40, v39, (v41 & 1) == 0))
  {

    return;
  }

LABEL_33:
  [a1 setAccessibilityLabel:v43];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v4 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }
}

id sub_1000400F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100040290(uint64_t a1)
{
  v2 = sub_100040D28(&unk_1000696E0, type metadata accessor for STBackgroundActivityIdentifier, &unk_1000494D4);
  v3 = sub_100040D28(&qword_100069728, type metadata accessor for STBackgroundActivityIdentifier, &unk_100049434);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10004034C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E780, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000403BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E810, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void *sub_100040408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000B62C(&unk_1000696F8, &qword_1000493A8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000405FC()
{
  sub_10000B62C(&qword_1000696F0, &qword_1000493A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100047E80;
  *(inited + 32) = String._bridgeToObjectiveC()();
  *(inited + 40) = String._bridgeToObjectiveC()();
  v1 = sub_100040408(inited);
  swift_setDeallocating();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1000406CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RPReadyToRecordSystemApertureElementViewController(uint64_t a1)
{
  result = qword_10006AFD0;
  if (!qword_10006AFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040788()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress) = 0x100000;
  v2 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *(v1 + v2) = *sub_1000366FC();
  v3 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionID);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors) = 666;
  v4 = SBUISystemApertureElementIdentifierScreenRecording;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier) = SBUISystemApertureElementIdentifierScreenRecording;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView;
  v6 = type metadata accessor for RPReadyAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v4;
  *(v1 + v5) = sub_100038418(0);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_100038418(1);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView;
  v12 = objc_allocWithZone(v6);
  *(v1 + v11) = sub_100038418(2);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  *(v1 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel;
  *(v1 + v14) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState) = 4;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType) = 3;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = 0;
  v15 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  *(v1 + v15) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_compactViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewElementLayoutConstraints) = &_swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  *(v1 + v16) = [objc_opt_self() grayColor];
  v17 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100040A4C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100040AC0()
{
  result = qword_100069630;
  if (!qword_100069630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069630);
  }

  return result;
}

unint64_t sub_100040B18()
{
  result = qword_100069638;
  if (!qword_100069638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069638);
  }

  return result;
}

void sub_100040B84(uint64_t a1)
{
  sub_10002A72C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100040D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100040ED8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000301D0();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v10;
    v17 = v6;
    v18 = v15;
    v29 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004E160, &v29);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v14, 0xCu);
    sub_1000114A8(v18);
    v6 = v17;
    v10 = v16;
    v9 = v27;

    v3 = v28;
  }

  v19 = *(v3 + 8);
  v20 = v19(v8, v2);
  if ((*((swift_isaMask & *v1) + 0x128))(v20) == 4)
  {
    v10(v6, v9, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004E160, &v29);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s cancel ready to record", v23, 0xCu);
      sub_1000114A8(v24);
    }

    v19(v6, v2);
    v25 = [objc_opt_self() sharedInstance];
    [v25 requestToCancelReadyToRecord];
  }
}

uint64_t sub_100041268()
{

  return _swift_deallocObject(v0, 25, 7);
}

void *sub_100041414()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000414C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100041800()
{
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPRemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10004188C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPRemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000418D0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100041914(a1, v4);
}

unint64_t sub_100041914(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100042ED8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100042E84(v8);
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

void sub_1000419DC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v72 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v71 = &v70 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = sub_1000301D0();
  v18 = *(v4 + 16);
  v74 = v17;
  v75 = v18;
  v76 = v4 + 16;
  (v18)(v16);
  v19 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v77 = v4;
  v70 = v14;
  v73 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = v7;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v80[0] = v26;
    *v23 = 136315394;
    *(v23 + 4) = sub_100010E34(0xD00000000000001FLL, 0x800000010004DBC0, v80);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    *v25 = v19;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s %@ Remote Alert for reactions tip", v23, 0x16u);
    sub_1000365AC(v25);
    v7 = v24;

    sub_1000114A8(v26);
    v4 = v77;
  }

  v28 = *(v4 + 8);
  v28(v16, v3);
  v29 = v3;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UIWindow);
    v33 = a1;
    v34 = [v32 initWithWindowScene:v31];
    v35 = v73;
    (*((swift_isaMask & *v73) + 0x60))(v34);
    v36 = [v31 configurationContext];
    if (!v36 || (v37 = v36, v38 = [v36 userInfo], v37, !v38))
    {
      v51 = v72;
      v75(v72, v74, v29);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "user info dictionary missing from remote alert";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

LABEL_25:
        v65 = v51;
        goto LABEL_26;
      }

LABEL_24:

      goto LABEL_25;
    }

    v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = 0x746163696C707061;
    v79 = 0xEF656D614E6E6F69;
    AnyHashable.init<A>(_:)();
    if (*(v39 + 16))
    {
      v40 = sub_1000418D0(v80);
      if (v41)
      {
        sub_100011C08(*(v39 + 56) + 32 * v40, v81);
        sub_100042E84(v80);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:

LABEL_21:
          v51 = v71;
          v75(v71, v74, v29);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            v55 = "missing dictionary info";
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        v42 = v78;
        v43 = v79;
        v78 = 0xD000000000000010;
        v79 = 0x800000010004E260;
        AnyHashable.init<A>(_:)();
        if (*(v39 + 16))
        {
          v44 = sub_1000418D0(v80);
          if (v45)
          {
            sub_100011C08(*(v39 + 56) + 32 * v44, v81);
            sub_100042E84(v80);

            if (swift_dynamicCast())
            {
              v46 = v78;
              v47 = v79;
              type metadata accessor for RPReactionsTipViewController();
              v48 = sub_1000313A0(v42, v43, v46, v47);
              v49 = (*((swift_isaMask & *v35) + 0x58))();
              if (v49)
              {
                v50 = v49;
                [v49 setRootViewController:v48];
                [v50 makeKeyAndVisible];
                [v31 setAllowsMenuButtonDismissal:1];

                return;
              }

              v7 = v70;
              v75(v70, v74, v29);
              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&_mh_execute_header, v67, v68, "window is nil", v69, 2u);
              }

              else
              {
              }

              goto LABEL_19;
            }

            goto LABEL_28;
          }
        }
      }
    }

    sub_100042E84(v80);
    goto LABEL_21;
  }

  v75(v7, v74, v3);
  v56 = a1;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v57, v58))
  {

LABEL_19:
    v65 = v7;
LABEL_26:
    v66 = v29;
    goto LABEL_27;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v80[0] = v60;
  *v59 = 136315138;
  swift_getObjectType();
  v61 = _typeName(_:qualified:)();
  v63 = v7;
  v64 = sub_100010E34(v61, v62, v80);

  *(v59 + 4) = v64;
  _os_log_impl(&_mh_execute_header, v57, v58, "Expected remote alert scene. scene type=%s", v59, 0xCu);
  sub_1000114A8(v60);

  v65 = v63;
  v66 = v3;
LABEL_27:
  v28(v65, v66);
}

void sub_10004228C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_1000301D0();
  v28 = *(v2 + 16);
  v29 = v8;
  v28(v7);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004DBA0, &v30);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %@", v13, 0x16u);
    sub_1000365AC(v14);

    sub_1000114A8(v15);

    v2 = v27;
  }

  v17 = *(v2 + 8);
  v18 = v17(v7, v1);
  v19 = (*((swift_isaMask & *v9) + 0x58))(v18);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 rootViewController];

    if (v21)
    {
      type metadata accessor for RPReactionsTipViewController();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = [v22 presentedViewController];

        v21 = v23;
        if (!v23)
        {
          return;
        }
      }
    }
  }

  (v28)(v5, v29, v1);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "rootViewController is not valid", v26, 2u);
  }

  v17(v5, v1);
}

uint64_t sub_100042604()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004DB80, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10004280C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004DB60, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100042A14()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004DB40, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100042C1C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %@", v9, 0x16u);
    sub_1000365AC(v10);

    sub_1000114A8(v11);
  }

  (*(v2 + 8))(v4, v1);
  return (*((swift_isaMask & *v6) + 0x60))(0);
}

id sub_100042F44()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10006B8E8 = result;
  return result;
}

uint64_t sub_100042F98()
{
  v0 = type metadata accessor for ImageResource();
  sub_100011C68(v0, qword_10006BA58);
  sub_10000E464(v0, qword_10006BA58);
  if (qword_10006B8E0 != -1)
  {
    swift_once();
  }

  v1 = qword_10006B8E8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100043044()
{
  if (qword_10006B8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();

  return sub_10000E464(v0, qword_10006BA58);
}

uint64_t sub_1000430A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006B8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  v3 = sub_10000E464(v2, qword_10006BA58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10004351C()
{
  sub_100003A9C();
  v1 = 92;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Permission Denied", v0, 0x12u);
}

void sub_1000435BC()
{
  sub_100003A9C();
  v1 = 148;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Unidentifiable application", v0, 0x12u);
}

void sub_1000436C8(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003A9C();
    sub_100003AB0(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d _pegasusProxy removeObserver failed", v3, v4, v5, v6);
  }

  objc_end_catch();
}

void sub_100043798(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003A9C();
    sub_100003AB0(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d removeObserver failed", v3, v4, v5, v6);
  }

  objc_end_catch();
}

void sub_100043868(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPStatusBarAssertion invalidateStatusBar]_block_invoke";
  v3 = 1024;
  v4 = 104;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d setRegisteredStyleOverrides replied with error: %@", &v1, 0x1Cu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}