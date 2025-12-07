void *sub_1000573B0(void *a1)
{
  sub_10000FC6C(&qword_10009B7A0, &qword_100077818);
  sub_100011C54();
  sub_100049C0C();
  __chkstk_darwin(v3);
  sub_1000583EC();
  v4 = sub_10000FCB4(a1, a1[3]);
  v5 = sub_100058098();
  sub_100058434(&type metadata for Watchdog.DiagnosticState.Item.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_1000583FC();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000583FC();
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_1000583DC();
    v9(v8);
  }

  sub_100003458(a1);
  return v4;
}

uint64_t sub_10005751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100057144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100057544(uint64_t a1)
{
  v2 = sub_100058098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057580(uint64_t a1)
{
  v2 = sub_100058098();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000575BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000573B0(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = result;
    a2[2] = v5;
  }

  return result;
}

uint64_t sub_10005760C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656D6974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_1000576D4(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x72656D6974;
  }
}

uint64_t sub_1000576FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FC6C(&qword_10009B718, &qword_100077610);
  sub_100011C54();
  v8 = v7;
  sub_100049C0C();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_10000FCB4(a1, a1[3]);
  sub_100057B8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_10000FC6C(&qword_10009B728, &qword_100077618);
    sub_1000580EC(&qword_10009B730, sub_100057BE0, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1000578B4(void *a1)
{
  sub_10000FC6C(&qword_10009B7A8, &qword_100077820);
  sub_100011C54();
  sub_100049C0C();
  __chkstk_darwin(v2);
  sub_1000583EC();
  sub_10000FCB4(a1, a1[3]);
  v3 = sub_100057B8C();
  sub_100058434(&type metadata for Watchdog.DiagnosticState.CodingKeys, v4, v3);
  sub_1000583FC();
  v5 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000FC6C(&qword_10009B728, &qword_100077618);
  sub_1000580EC(&qword_10009B7B0, sub_100058164, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v6 = sub_1000583DC();
  v7(v6);
  sub_100003458(a1);
  return v5 & 1;
}

uint64_t sub_100057A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005760C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100057AC0(uint64_t a1)
{
  v2 = sub_100057B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057AFC(uint64_t a1)
{
  v2 = sub_100057B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100057B38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000578B4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_100057B8C()
{
  result = qword_10009B720;
  if (!qword_10009B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B720);
  }

  return result;
}

unint64_t sub_100057BE0()
{
  result = qword_10009B738;
  if (!qword_10009B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B738);
  }

  return result;
}

uint64_t sub_100057C34(uint64_t a1)
{
  v2 = sub_10000FC6C(&unk_10009B740, &qword_100077620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100057C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100057D8C@<X0>(double *a3@<X8>)
{
  Date.timeIntervalSince(_:)();
  v5 = v4;
  sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  swift_getObjectType();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = v5;
  *(a3 + 1) = result;
  *(a3 + 2) = v7;
  return result;
}

uint64_t sub_100057E34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100057E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100057EDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_100057F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100057F94()
{
  result = qword_10009B778;
  if (!qword_10009B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B778);
  }

  return result;
}

unint64_t sub_100057FEC()
{
  result = qword_10009B780;
  if (!qword_10009B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B780);
  }

  return result;
}

unint64_t sub_100058044()
{
  result = qword_10009B788;
  if (!qword_10009B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B788);
  }

  return result;
}

unint64_t sub_100058098()
{
  result = qword_10009B798;
  if (!qword_10009B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B798);
  }

  return result;
}

uint64_t sub_1000580EC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_10009B728, &qword_100077618);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058164()
{
  result = qword_10009B7B8;
  if (!qword_10009B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7B8);
  }

  return result;
}

_BYTE *sub_1000581B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100058284);
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

unint64_t sub_1000582C0()
{
  result = qword_10009B7C0;
  if (!qword_10009B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7C0);
  }

  return result;
}

unint64_t sub_100058318()
{
  result = qword_10009B7C8;
  if (!qword_10009B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7C8);
  }

  return result;
}

unint64_t sub_100058370()
{
  result = qword_10009B7D0;
  if (!qword_10009B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7D0);
  }

  return result;
}

uint64_t sub_10005840C()
{

  return Date.init()();
}

uint64_t sub_100058434(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

id sub_100058458(uint64_t a1)
{

  v3 = sub_1000587A4(v2, v1);
  if (v3 && RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setCameraCapabilities:isa];
  }

  return v3;
}

uint64_t sub_1000584F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5 - 8];
  v7 = a1[3];
  v8 = a1[4];
  sub_10000FCB4(a1, v7);
  (*(v8 + 72))(v7, v8);
  UUID.init(uuidString:)();

  v9 = type metadata accessor for UUID();
  if (sub_1000113A4(v6, 1, v9) == 1)
  {
    sub_10004B2B0(v6);
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003420(v10, qword_1000A1AE8);
    sub_100013694(a1, v24);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      sub_100013694(v24, v22);
      sub_10000FC6C(&qword_10009B7E0, &unk_100077930);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_100003458(v24);
      v18 = sub_100014C58(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "No Persistent ID for Rapport Device '%{public}s'", v13, 0xCu);
      sub_100003458(v14);
    }

    else
    {

      sub_100003458(v24);
    }

    v19 = 1;
  }

  else
  {
    (*(*(v9 - 8) + 32))(a2, v6, v9);
    v19 = 0;
  }

  return sub_10001137C(a2, v19, 1, v9);
}

id sub_1000587A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = type metadata accessor for RapportRemoteDisplayDevice();
  v26[4] = &protocol witness table for RapportRemoteDisplayDevice;
  v26[0] = a1;
  sub_1000584F4(v26, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    sub_10004B2B0(v5);
    v10 = 0;
  }

  else
  {
    v25 = v7;
    (*(v7 + 32))(v9, v5, v6);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (off_10009BDB0)();
    v11 = String._bridgeToObjectiveC()();

    (off_10009BDB8)();
    v12 = String._bridgeToObjectiveC()();

    (off_10009BDE0)();
    v13 = RPVersionToSourceVersionString();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = String._bridgeToObjectiveC()();

    v17 = v15;
    v18 = isa;
    v19 = [v17 initWithIdentifier:isa model:v11 name:v12 version:v16];

    v20 = off_10009BDD8;
    v10 = v19;
    [v10 setStatus:v20()];
    [v10 setCameraState:(off_10009BD88)()];
    (off_10009BDA8)();
    v21 = String._bridgeToObjectiveC()();

    [v10 setMediaRouteIdentifier:v21];

    (*(v25 + 8))(v9, v6);
  }

  sub_100003458(v26);
  return v10;
}

id sub_100058B30(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = type metadata accessor for CompanionLinkDevice(0);
  v32[4] = &protocol witness table for CompanionLinkDevice;
  v10 = sub_10001E710(v32);
  sub_10001B314(a1, v10);
  sub_1000584F4(v32, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    sub_10004B2B0(v5);
    v11 = 0;
  }

  else
  {
    v31 = v7;
    (*(v7 + 32))(v9, v5, v6);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = sub_100058EA0();
    v13(v12);
    v29 = String._bridgeToObjectiveC()();

    v14 = sub_100058EA0();
    v15(v14);
    v16 = String._bridgeToObjectiveC()();

    v17 = sub_100058EA0();
    v18(v17);
    v19 = RPVersionToSourceVersionString();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = String._bridgeToObjectiveC()();

    v23 = v21;
    v25 = v29;
    v24 = isa;
    v26 = [v23 initWithIdentifier:isa model:v29 name:v16 version:v22];

    v11 = v26;
    [v11 setStatus:CompanionLinkDevice.statusFlags.getter()];
    [v11 setCameraState:(off_10009B898)()];
    (off_10009B8B8)();
    v27 = String._bridgeToObjectiveC()();

    [v11 setMediaRouteIdentifier:v27];

    (*(v31 + 8))(v9, v6);
  }

  sub_100003458(v32);
  return v11;
}

uint64_t CompanionLinkDevice.id.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100011D00();
  v2 = sub_100049A98();

  return v3(v2);
}

id CompanionLinkDevice._endpoint.getter()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  v1 = sub_10005C0B0(v0);

  return v1;
}

uint64_t type metadata accessor for CompanionLinkDevice(uint64_t a1)
{
  result = qword_10009B9B8;
  if (!qword_10009B9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CompanionLinkDevice.statusFlags.getter()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  v1 = sub_10005C0B0(v0);

  return [v1 statusFlags];
}

uint64_t CompanionLinkDevice.init(id:)@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  v3 = UUID.uuidString.getter();
  sub_10005B6CC(v3, v4, v2);

  *(a1 + *(type metadata accessor for CompanionLinkDevice(0) + 20)) = v2;
  type metadata accessor for UUID();
  sub_100011D00();
  v5 = sub_100049A98();

  return v6(v5);
}

uint64_t sub_10005906C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for UUID();
  sub_100011C54();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100011CD4();
  v13 = (v12 - v11);
  v14 = type metadata accessor for CompanionLinkDevice(0);
  sub_100011D00();
  __chkstk_darwin(v15);
  sub_100011CD4();
  v18 = v17 - v16;
  v19 = a1;
  sub_10005B804(v19, &selRef_idsDeviceIdentifier);
  if (v20)
  {
    UUID.init(uuidString:)();

    if (sub_1000113A4(v6, 1, v7) != 1)
    {
      v22 = *(v9 + 32);
      v22(v13, v6, v7);
      *(v18 + *(v14 + 20)) = v19;
      v22(v18, v13, v7);
      sub_10001B314(v18, a2);
      v21 = 0;
      return sub_10001137C(a2, v21, 1, v14);
    }

    sub_100011668(v6, &qword_1000991D8, &qword_100075780);
  }

  else
  {
  }

  v21 = 1;
  return sub_10001137C(a2, v21, 1, v14);
}

uint64_t sub_100059274()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  if ([sub_10005C0B0(v0) accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  return sub_100049A98();
}

uint64_t sub_1000592D8()
{
  if ([*(v0 + 16) accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  return sub_100049A98();
}

uint64_t sub_10005938C()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  v1 = [sub_10005C0B0(v0) activityLevelTimeStamp];
  if (v1)
  {
    v2 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for Date();
  v3 = sub_10005C19C();

  return sub_10001137C(v3, v4, v5, v6);
}

uint64_t sub_100059408()
{
  v1 = [*(v0 + 16) activityLevelTimeStamp];
  if (v1)
  {
    v2 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for Date();
  v3 = sub_10005C19C();

  return sub_10001137C(v3, v4, v5, v6);
}

void *sub_10005947C()
{
  v1 = type metadata accessor for CompanionLinkDevice(0);
  if (![sub_10005C0B0(v1) homeKitUserIdentifiers])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100049CDC();
  type metadata accessor for UUID();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_1000594E8()
{
  if (![*(v1 + 16) homeKitUserIdentifiers])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100049CDC();
  type metadata accessor for UUID();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000595AC()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  v1 = [sub_10005C0B0(v0) serviceInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100059618()
{
  v1 = [*(v0 + 16) serviceInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100059688()
{
  v1 = sub_100049CDC();
  v2 = type metadata accessor for CompanionLinkDevice(v1);
  if ([sub_10005C0B0(v2) *v0])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  return sub_100049A98();
}

uint64_t sub_1000596F0(SEL *a1)
{
  if ([*(v1 + 16) *a1])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  return sub_100049A98();
}

void *sub_100059748()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  v1 = [sub_10005C0B0(v0) serviceTypes];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1000597B0()
{
  v1 = [*(v0 + 16) serviceTypes];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CompanionLink::RapportSourceVersion sub_100059814()
{
  v0 = type metadata accessor for CompanionLinkDevice(0);
  if ([sub_10005C0B0(v0) sourceVersion])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  v1 = sub_100049A98();

  return RapportSourceVersion.init(stringValue:)(*&v1);
}

CompanionLink::RapportSourceVersion sub_100059884()
{
  if ([*(v0 + 16) sourceVersion])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  v1 = sub_100049A98();

  return RapportSourceVersion.init(stringValue:)(*&v1);
}

uint64_t static CompanionLinkDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100049CF4();
  v96 = type metadata accessor for Date();
  sub_100011C54();
  v93 = v4;
  __chkstk_darwin(v5);
  sub_100011CD4();
  v91 = v7 - v6;
  v8 = sub_10000FC6C(&qword_10009B830, &qword_100077940);
  sub_100011D00();
  __chkstk_darwin(v9);
  v95 = &v90 - v10;
  v11 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  v12 = __chkstk_darwin(v11 - 8);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = type metadata accessor for CompanionLinkDevice(0);
  v20 = *(v2 + *(v19 + 20));
  v21 = [v20 flags];
  v97 = *(a2 + *(v19 + 20));
  if (v21 != [v97 flags])
  {
    return 0;
  }

  v94 = v20;
  if ([v20 accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    v21 = 0;
    v19 = 0;
  }

  v22 = [v97 accountID];
  if (!v22)
  {
    v29 = v94;
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (!v19)
  {
    v29 = v94;
    if (!v26)
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (!v26)
  {
    goto LABEL_17;
  }

  if (v21 == v24 && v19 == v26)
  {

    v29 = v94;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v29 = v94;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v30 = [v29 activityLevel];
  if (v30 != [v97 activityLevel])
  {
    return 0;
  }

  sub_10005938C();
  sub_10005938C();
  v31 = *(v8 + 48);
  v32 = v95;
  sub_10005B730(v18, v95);
  sub_10005B730(v16, v32 + v31);
  v33 = v96;
  if (sub_1000113A4(v32, 1, v96) != 1)
  {
    v36 = v92;
    sub_10005B730(v32, v92);
    if (sub_1000113A4(v32 + v31, 1, v33) != 1)
    {
      v37 = v93;
      v38 = v32 + v31;
      v39 = v91;
      (*(v93 + 32))(v91, v38, v33);
      sub_10005C08C();
      sub_10005BFE0(v40, v41, &protocol conformance descriptor for Date);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v37 + 8);
      v43(v39, v33);
      v34 = &qword_10009B838;
      sub_100011668(v16, &qword_10009B838, &qword_100077948);
      sub_100011668(v18, &qword_10009B838, &qword_100077948);
      v43(v36, v33);
      sub_100011668(v32, &qword_10009B838, &qword_100077948);
      v35 = v94;
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    sub_10005C1B0(v16);
    sub_10005C1B0(v18);
    (*(v93 + 8))(v36, v33);
LABEL_25:
    sub_100011668(v32, &qword_10009B830, &qword_100077940);
    return 0;
  }

  v34 = &qword_100077948;
  sub_10005C1B0(v16);
  sub_10005C1B0(v18);
  if (sub_1000113A4(v32 + v31, 1, v33) != 1)
  {
    goto LABEL_25;
  }

  sub_100011668(v32, &qword_10009B838, &qword_100077948);
  v35 = v94;
LABEL_27:
  if ([v35 homeKitUserIdentifiers])
  {
    sub_100049CF4();
    type metadata accessor for UUID();
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = [v97 homeKitUserIdentifiers];
  if (v45)
  {
    v46 = v45;
    type metadata accessor for UUID();
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  v48 = sub_100049A98();
  v50 = sub_10005A3A0(v48, v49);

  if ((v50 & 1) == 0)
  {
    return 0;
  }

  v51 = [v94 identifier];
  if (v51)
  {
    v50 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v97 identifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v47 == &stru_100095FF8.name && v44 == v50)
  {

    v53 = v94;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v53 = v94;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v54 = [v53 idsDeviceIdentifier];
  if (v54)
  {
    v50 = v54;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v97 idsDeviceIdentifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v47 == &stru_100095FF8.name && v44 == v50)
  {

    v56 = v94;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v56 = v94;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v57 = [v56 model];
  if (v57)
  {
    v50 = v57;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v97 model])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v47 == &stru_100095FF8.name && v44 == v50)
  {

    v59 = v94;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v59 = v94;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v60 = [v59 name];
  if (v60)
  {
    v50 = v60;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v97 name])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v47 == &stru_100095FF8.name && v44 == v50)
  {

    v62 = v94;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v62 = v94;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1000033E0(0, &qword_10009B840, NSObject_ptr);
  v63 = [v62 serviceInfo];
  v64 = &protocol witness table for AnyHashable;
  sub_10005C190();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005C190();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = [v97 serviceInfo];
  sub_10005C190();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005C190();
  v67.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v68 = static NSObject.== infix(_:_:)();

  if (v68)
  {
    v69 = [v62 serviceType];
    if (v69)
    {
      v64 = v69;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10005C160();
    }

    else
    {
      sub_10005C124();
    }

    if ([v97 serviceType])
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10005C130();
    }

    else
    {
      sub_10005C118();
    }

    if (v68 == &stru_100095FF8.name && v67.super.isa == v64)
    {

      v71 = v94;
    }

    else
    {
      sub_10005C04C();
      sub_10005C148();

      v71 = v94;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }

    v72 = [v71 serviceTypes];
    if (v72)
    {
      v73 = v72;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v74 = [v97 serviceTypes];
    if (v74)
    {
      v75 = v74;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v76 = sub_100049A98();
    v78 = sub_10005A5B4(v76, v77);

    v79 = v94;
    if (v78)
    {
      v80 = [v94 statusFlags];
      if (v80 == [v97 statusFlags])
      {
        if ([v79 sourceVersion])
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10005C0F4();
        }

        else
        {
          sub_10005C0E8();
        }

        v81._countAndFlagsBits = sub_100049A98();
        v82.rawValue = RapportSourceVersion.init(stringValue:)(v81).rawValue;
        v83 = [v97 sourceVersion];
        if (v83)
        {
          v84 = v83;
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;
        }

        else
        {
          v85 = 0;
          v87 = 0xE000000000000000;
        }

        v88._countAndFlagsBits = v85;
        v88._object = v87;
        if (v82.rawValue == RapportSourceVersion.init(stringValue:)(v88).rawValue)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10005A3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10005BFE0(&qword_10009A940, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void CompanionLinkDevice.hash(into:)()
{
  sub_100049CDC();
  v2 = type metadata accessor for Date();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100011CD4();
  v8 = (v7 - v6);
  v9 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(v1 + *(type metadata accessor for CompanionLinkDevice(0) + 20));
  Hasher._combine(_:)([v15 flags]);
  v16 = [v15 accountID];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v2;

    Hasher._combine(_:)(1u);
    v2 = v38;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)([v15 activityLevel]);
  sub_10005938C();
  sub_10005B730(v14, v12);
  if (sub_1000113A4(v12, 1, v2) == 1)
  {
    v18 = v0;
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    Hasher._combine(_:)(1u);
    sub_10005C08C();
    sub_10005BFE0(v19, v20, &protocol conformance descriptor for Date);
    v18 = v8;
    dispatch thunk of Hashable.hash(into:)();
    v21 = sub_10005C0BC();
    v22(v21);
  }

  sub_100011668(v14, &qword_10009B838, &qword_100077948);
  if ([v15 homeKitUserIdentifiers])
  {
    sub_100049CF4();
    type metadata accessor for UUID();
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_10005B8E8(v0, v23);

  if ([v15 identifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v15 idsDeviceIdentifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v15 model])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v15 name])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  v24 = [v15 serviceInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  NSObject.hash(into:)();

  if ([v15 serviceType])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  v26 = [v15 serviceTypes];
  if (v26)
  {
    v27 = v26;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v28 = sub_100049A98();
  sub_10005B870(v28, v29);

  Hasher._combine(_:)([v15 statusFlags]);
  v30 = [v15 sourceVersion];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  v36.rawValue = RapportSourceVersion.init(stringValue:)(v35).rawValue;
  Hasher._combine(_:)(v36.rawValue);
}

Swift::Int CompanionLinkDevice.hashValue.getter()
{
  Hasher.init(_seed:)();
  CompanionLinkDevice.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10005ABEC(uint64_t a1)
{
  Hasher.init(_seed:)();
  CompanionLinkDevice.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CompanionLinkDevice.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompanionLinkDevice(0) + 20));
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v3;
  v4 = RPStatusFlagsCopyDescription([v1 statusFlags]);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3C204653202CLL;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);

  if ([v1 sourceVersion])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  v11._countAndFlagsBits = sub_100049A98();
  RapportSourceVersion.init(stringValue:)(v11);
  v12 = RPVersionToSourceVersionString();
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x27205653202CLL;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  return v21;
}

uint64_t sub_10005ADDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v3 || (sub_10005C070(6580577, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_10005C070(25705, 0xE200000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7562345 && a2 == 0xE300000000000000;
      if (v7 || (sub_10005C070(7562345, 0xE300000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
        if (v8 || (sub_10005C070(0x6C65646F6DLL, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_10005C070(1701667182, 0xE400000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 2020569712 && a2 == 0xE400000000000000;
            if (v10 || (sub_10005C070(2020569712, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1868983913 && a2 == 0xE400000000000000;
              if (v11 || (sub_10005C070(1868983913, 0xE400000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
                if (v12 || (sub_10005C070(0x65636976726573, 0xE700000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365636976726573 && a2 == 0xE800000000000000;
                  if (v13 || (sub_10005C070(0x7365636976726573, 0xE800000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                    if (v14 || (sub_10005C070(0x737574617473, 0xE600000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      sub_10005C070(0x6E6F6973726576, 0xE700000000000000);
                      sub_10005C148();
                      if (a1)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_10005B094(char a1)
{
  result = 6580577;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 7562345;
      break;
    case 3:
      result = 0x6C65646F6DLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 2020569712;
      break;
    case 6:
      result = 1868983913;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x7365636976726573;
      break;
    case 9:
      result = 0x737574617473;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005B1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005ADDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005B1EC(uint64_t a1)
{
  v2 = sub_10005B9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B228(uint64_t a1)
{
  v2 = sub_10005B9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CompanionLinkDevice.encode(to:)(void *a1)
{
  v3 = v1;
  sub_10000FC6C(&qword_10009B858, &unk_100077950);
  sub_100011C54();
  __chkstk_darwin(v5);
  sub_10000FCB4(a1, a1[3]);
  sub_10005B9E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v6 = *(v3 + *(type metadata accessor for CompanionLinkDevice(0) + 20));
  sub_10005B804(v6, &selRef_accountID);
  if (v7)
  {
    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v8 = v6;
  sub_10005B804(v8, &selRef_identifier);
  if (v9)
  {
    sub_10005C028(1);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v10 = v8;
  sub_10005B804(v10, &selRef_idsDeviceIdentifier);
  if (v11)
  {
    sub_10005C028(2);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v12 = v10;
  sub_10005B804(v12, &selRef_model);
  if (v13)
  {
    sub_10005C028(3);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v14 = v12;
  sub_10005B804(v14, &selRef_name);
  if (v15)
  {
    sub_10005C028(4);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  if ([v14 proximity])
  {
    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_18;
    }
  }

  v19 = v14;
  sub_10005B804(v19, &selRef_serviceType);
  if (v20)
  {
    sub_10005C028(7);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v21 = v19;
  if (!sub_10005B7A0(v21))
  {
    goto LABEL_25;
  }

  sub_10000FC6C(&qword_100099160, &qword_100075748);
  sub_10005BA38();
  sub_10005C0A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
LABEL_27:
    v24 = sub_10005C0BC();
    v25(v24);
  }

LABEL_25:
  v22 = [v21 statusFlags];
  if (v22)
  {
    v23 = RPStatusFlagsCopyDescription(v22);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  sub_10005B804(v21, &selRef_sourceVersion);
  if (!v26)
  {
LABEL_18:
    v16 = sub_10005C0BC();
    return v17(v16);
  }

  sub_10005C028(10);
  v27 = sub_10005C0BC();
  v28(v27);
}

uint64_t variable initialization expression of RapportRemoteDisplayServer.sessions()
{
  type metadata accessor for RapportRemoteDisplaySession();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of RapportStreamServer.activating()
{
  type metadata accessor for RapportStreamSession();

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_10005B6CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setIdentifier:v4];
}

uint64_t sub_10005B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B7A0(void *a1)
{
  v2 = [a1 serviceTypes];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005B804(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_10005B870(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void sub_10005B8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = *(type metadata accessor for UUID() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_10005BFE0(&unk_100099180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_10005B9E4()
{
  result = qword_10009B860;
  if (!qword_10009B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B860);
  }

  return result;
}

unint64_t sub_10005BA38()
{
  result = qword_10009A8F0;
  if (!qword_10009A8F0)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8F0);
  }

  return result;
}

uint64_t sub_10005BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100049CDC();
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000113A4(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10005BC14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100049CF4();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001137C(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005BCB8(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = sub_1000033E0(319, &unk_10009B9C8, RPCompanionLinkDevice_ptr);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompanionLinkDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompanionLinkDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x10005BEA0);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005BEDC()
{
  result = qword_10009B9F8;
  if (!qword_10009B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B9F8);
  }

  return result;
}

unint64_t sub_10005BF34()
{
  result = qword_10009BA00;
  if (!qword_10009BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA00);
  }

  return result;
}

unint64_t sub_10005BF8C()
{
  result = qword_10009BA08;
  if (!qword_10009BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA08);
  }

  return result;
}

uint64_t sub_10005BFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005C028@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10005C04C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10005C070(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10005C0CC()
{

  return String.hash(into:)();
}

void sub_10005C0F4()
{
}

void sub_10005C130()
{
}

uint64_t sub_10005C148()
{
}

void sub_10005C160()
{
}

void sub_10005C178()
{
}

uint64_t sub_10005C1B0(uint64_t a1)
{

  return sub_100011668(a1, v1, v2);
}

uint64_t sub_10005C28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064878(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C2BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000496A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064890(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100064870(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10005C350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100064868(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10005C39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064880(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C3E8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100064888(a2);
  *a1 = result;
  return result;
}

uint64_t RapportErrorFlags.description.getter(unint64_t a1)
{
  v1 = RPErrorFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005C470()
{
  result = qword_10009BA10;
  if (!qword_10009BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA10);
  }

  return result;
}

unint64_t sub_10005C4C8()
{
  result = qword_10009BA18;
  if (!qword_10009BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA18);
  }

  return result;
}

unint64_t sub_10005C51C()
{
  result = qword_10009BA20;
  if (!qword_10009BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA20);
  }

  return result;
}

unint64_t sub_10005C574()
{
  result = qword_10009BA28;
  if (!qword_10009BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA28);
  }

  return result;
}

id sub_10005C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Dictionary.init(dictionaryLiteral:)();
  if (a5)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v30 = &type metadata for String;
    *&v29 = a4;
    *(&v29 + 1) = a5;
    sub_100011558(&v29, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D158(v26, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_getErrorValue();
    v16 = v27;
    v17 = v28;
    v30 = v28;
    v18 = sub_10001E710(&v29);
    (*(*(v17 - 1) + 16))(v18, v16, v17);
    sub_100011558(&v29, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D158(v26, v13, v15, v19);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v20 initWithDomain:v21 code:a3 userInfo:isa];

  return v23;
}

uint64_t RapportStatusFlags.description.getter(unint64_t a1)
{
  v1 = RPStatusFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005C990()
{
  result = qword_10009BA30;
  if (!qword_10009BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA30);
  }

  return result;
}

unint64_t sub_10005C9E8()
{
  result = qword_10009BA38;
  if (!qword_10009BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA38);
  }

  return result;
}

unint64_t sub_10005CA3C()
{
  result = qword_10009BA40;
  if (!qword_10009BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA40);
  }

  return result;
}

unint64_t sub_10005CA94()
{
  result = qword_10009BA48;
  if (!qword_10009BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA48);
  }

  return result;
}

uint64_t RapportRemoteDisplaySession.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_10005DFD8();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportRemoteDisplaySession.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005CC14;
}

void sub_10005CC14(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_10005CC98(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t RapportRemoteDisplaySession.__allocating_init(session:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportRemoteDisplaySession.init(session:)(a1);
  return v2;
}

uint64_t RapportRemoteDisplaySession.init(session:)(void *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = a1;
  v3 = sub_10005DF74();
  swift_weakInit();
  v16 = sub_10005CFC8;
  v17 = v3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v14 = sub_100025214;
  v15 = &unk_100090230;
  v4 = _Block_copy(v13);
  v5 = a1;

  [v5 setErrorHandler:v4];
  _Block_release(v4);
  v6 = sub_10005DF74();
  swift_weakInit();
  v16 = sub_10005D09C;
  v17 = v6;
  v13[0] = _NSConcreteStackBlock;
  sub_10005DF60();
  v14 = v7;
  v15 = &unk_100090258;
  v8 = _Block_copy(v13);

  [v5 setInterruptionHandler:v8];
  _Block_release(v8);
  v9 = sub_10005DF74();
  swift_weakInit();

  v16 = sub_10005D1B0;
  v17 = v9;
  v13[0] = _NSConcreteStackBlock;
  sub_10005DF60();
  v14 = v10;
  v15 = &unk_100090280;
  v11 = _Block_copy(v13);

  [v5 setInvalidationHandler:v11];
  _Block_release(v11);

  return v1;
}

uint64_t sub_10005CF30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005CFD0(a1);
  }

  return result;
}

uint64_t sub_10005CFD0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      swift_errorRetain();
      v5(v1, v2, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10005D084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D0CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005D150(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10005D1E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportRemoteDisplaySession.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplaySession) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportRemoteDisplaySession.init(session:)(v0);
  return v1;
}

uint64_t RapportRemoteDisplaySession.deinit()
{
  RapportRemoteDisplaySession.cancel()();
  sub_10005D320(v0 + 16);

  return v0;
}

Swift::Void __swiftcall RapportRemoteDisplaySession.cancel()()
{
  [*(v0 + 32) invalidate];
  sub_10005DFD8();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t RapportRemoteDisplaySession.__deallocating_deinit()
{
  RapportRemoteDisplaySession.deinit();
  v0 = sub_100049BC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

id (*RapportRemoteDisplaySession.controlFlags.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  a1[1] = v3;
  *a1 = [v3 controlFlags];
  return sub_10005D3EC;
}

uint64_t RapportRemoteDisplaySession.destinationDevice.getter()
{
  v1 = [*(v0 + 32) destinationDevice];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = v2;
  return v3;
}

void RapportRemoteDisplaySession.destinationDevice.setter(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (a1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDestinationDevice:?];
}

void (*RapportRemoteDisplaySession.destinationDevice.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RapportRemoteDisplaySession.destinationDevice.getter();
  return sub_10005D530;
}

void sub_10005D530(uint64_t *a1, char a2)
{
  if (a2)
  {

    RapportRemoteDisplaySession.destinationDevice.setter(v2);
  }

  else
  {
    RapportRemoteDisplaySession.destinationDevice.setter(*a1);
  }
}

id RapportRemoteDisplaySession.dispatchQueue.getter()
{
  v1 = [*(v0 + 32) dispatchQueue];

  return v1;
}

void RapportRemoteDisplaySession.dispatchQueue.setter(void *a1)
{
  [*(v1 + 32) setDispatchQueue:a1];
}

void (*RapportRemoteDisplaySession.dispatchQueue.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 32);
  a1[1] = v3;
  *a1 = [v3 dispatchQueue];
  return sub_10005D664;
}

void sub_10005D664(id *a1)
{
  v1 = *a1;
  [a1[1] setDispatchQueue:?];
}

void RapportRemoteDisplaySession.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v6[4] = a1;
  v6[5] = a2;
  sub_100011C68();
  sub_100011D20();
  v6[2] = v4;
  v6[3] = &unk_1000902A8;
  v5 = _Block_copy(v6);

  [v3 activateWithCompletion:v5];
  _Block_release(v5);
}

void RapportRemoteDisplaySession.sendEvent(id:event:options:completion:)()
{
  v3 = sub_10005DF90();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  isa = v4.super.isa;
  if (v1)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v1 = v4.super.isa;
  }

  if (v2)
  {
    v7[4] = v2;
    v7[5] = v0;
    sub_100011C68();
    sub_100011D20();
    v7[2] = v6;
    v7[3] = &unk_1000902D0;
    v2 = _Block_copy(v7);
  }

  sub_10005DFB4(v4.super.isa, "sendEventID:event:options:completion:");
  _Block_release(v2);
}

void RapportRemoteDisplaySession.sendRequest(id:request:options:response:)()
{
  v3 = sub_10005DF90();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v7[4] = v2;
  v7[5] = v0;
  sub_100011C68();
  v7[1] = 1107296256;
  v7[2] = sub_10005D930;
  v7[3] = &unk_1000902F8;
  v5 = _Block_copy(v7);

  sub_10005DFB4(v6, "sendRequestID:request:options:responseHandler:");
  _Block_release(v5);
}

uint64_t sub_10005D930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_10005DA80()
{
  v1 = [*(v0 + 32) serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005DAE8(void *a1)
{
  v1 = [a1 serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportStreamServer.serviceType.getter()
{
  v1 = [*(v0 + 16) serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t RapportRemoteDisplaySession.description.getter()
{
  v1 = RPControlFlagsCopyDescription([*(v0 + 32) controlFlags]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3C204643202CLL;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);

  if (RapportRemoteDisplaySession.destinationDevice.getter() && (v8 = RapportRemoteDisplayDevice.persistentIdentifier.getter(), v10 = v9, , v10))
  {
    sub_10005DDF4(8, v8, v10);
  }

  else
  {
    Substring.init(_:)();
  }

  v11 = static String._fromSubstring(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 39;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x27204444202CLL;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);

  v17 = sub_10005DA80();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v17);

  v21._countAndFlagsBits = 39;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x27205453202CLL;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);

  return 0xD000000000000014;
}

uint64_t sub_10005DDF4(uint64_t result, uint64_t a2, unint64_t a3)
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

uint64_t sub_10005DF74()
{

  return swift_allocObject();
}

NSString sub_10005DF90()
{

  return String._bridgeToObjectiveC()();
}

id sub_10005DFB4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_10005DFD8()
{

  return swift_beginAccess();
}

CompanionLink::RapportSourceVersion __swiftcall RapportSourceVersion.init(stringValue:)(Swift::String stringValue)
{
  sub_10005E160();
  v1 = StringProtocol.components<A>(separatedBy:)();

  v2 = *(v1 + 16);
  v3 = sub_10005E1B4(0, 10000, v2, v1);
  result.rawValue = sub_10005E1B4(1, 100, v2, v1);
  v5 = __OFADD__(v3, result.rawValue);
  v6 = v3 + result.rawValue;
  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = sub_10005E1B4(2, 1, v2, v1);

  result.rawValue = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_10005E160()
{
  result = qword_10009BB38;
  if (!qword_10009BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB38);
  }

  return result;
}

uint64_t sub_10005E1B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >= a3)
  {
    return 0;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (*(a4 + 16) <= result)
  {
LABEL_68:
    __break(1u);
LABEL_69:

    v13 = sub_10005E614(v5, v6, 10);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_70;
    }

    return 0;
  }

  v4 = a2;
  v7 = a4 + 16 * result;
  v5 = *(v7 + 32);
  v6 = *(v7 + 40);
  v8 = HIBYTE(v6) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_72;
    }

    for (result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
    {
      v11 = *result;
      if (v11 == 43)
      {
        if (v9 < 1)
        {
          goto LABEL_75;
        }

        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (!result)
          {
            goto LABEL_63;
          }

          v20 = (result + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v12)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11 == 45)
      {
        if (v9 < 1)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (!result)
          {
            goto LABEL_63;
          }

          v14 = (result + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v9)
      {
        v13 = 0;
        if (!result)
        {
LABEL_63:
          LOBYTE(v12) = 0;
          goto LABEL_65;
        }

        while (1)
        {
          v26 = *result - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++result;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_64:
      v13 = 0;
      LOBYTE(v12) = 1;
LABEL_65:
      v34 = v12;
      if (v12)
      {
        return 0;
      }

LABEL_70:
      result = v13 * v4;
      if ((v13 * v4) >> 64 == (v13 * v4) >> 63)
      {
        return result;
      }

      __break(1u);
LABEL_72:
      ;
    }
  }

  v33[0] = *(v7 + 32);
  v33[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (!v8)
      {
        goto LABEL_64;
      }

      v13 = 0;
      v28 = v33;
      do
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          goto LABEL_64;
        }

        v30 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          goto LABEL_64;
        }

        v13 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_64;
        }

        ++v28;
        --v8;
      }

      while (v8);
      goto LABEL_63;
    }

    if (v8)
    {
      v12 = v8 - 1;
      if (v8 != 1)
      {
        v13 = 0;
        v17 = v33 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v12)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_74;
  }

  if (v8)
  {
    v12 = v8 - 1;
    if (v8 != 1)
    {
      v13 = 0;
      v23 = v33 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v12)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10005E4E8(uint64_t a1)
{
  v1 = RPVersionToSourceVersionString();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10005E55C()
{
  result = qword_10009BB40;
  if (!qword_10009BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB40);
  }

  return result;
}

unsigned __int8 *sub_10005E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045FD8(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
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

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t RapportControlFlags.description.getter(unint64_t a1)
{
  v1 = RPControlFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005ED28()
{
  result = qword_10009BB48;
  if (!qword_10009BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB48);
  }

  return result;
}

unint64_t sub_10005ED80()
{
  result = qword_10009BB50;
  if (!qword_10009BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB50);
  }

  return result;
}

unint64_t sub_10005EDD4()
{
  result = qword_10009BB58;
  if (!qword_10009BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB58);
  }

  return result;
}

unint64_t sub_10005EE2C()
{
  result = qword_10009BB60;
  if (!qword_10009BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB60);
  }

  return result;
}

unint64_t RapportStreamFlags.description.getter(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = RPStreamFlagsCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  return result;
}

unint64_t sub_10005EF28()
{
  result = qword_10009BB68;
  if (!qword_10009BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB68);
  }

  return result;
}

unint64_t sub_10005EF80()
{
  result = qword_10009BB70;
  if (!qword_10009BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB70);
  }

  return result;
}

unint64_t sub_10005EFD4()
{
  result = qword_10009BB78;
  if (!qword_10009BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB78);
  }

  return result;
}

unint64_t sub_10005F02C()
{
  result = qword_10009BB80;
  if (!qword_10009BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB80);
  }

  return result;
}

uint64_t RapportRemoteDisplayDiscovery.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportRemoteDisplayDiscovery.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

void sub_10005F1B0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t RapportRemoteDisplayDiscovery.__allocating_init(discovery:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportRemoteDisplayDiscovery.init(discovery:)(a1);
  return v2;
}

uint64_t RapportRemoteDisplayDiscovery.init(discovery:)(void *a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  v4 = sub_10005DF74();
  sub_100060238(v4);
  v59 = sub_10005F5D0;
  v60 = v2;
  v55 = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100052C90;
  v58 = &unk_100090418;
  v5 = _Block_copy(&v55);
  v6 = a1;

  sub_100060270(v7, "setInterruptionHandler:");
  _Block_release(v5);
  v8 = sub_10005DF74();
  sub_100060238(v8);
  v59 = sub_10005F69C;
  v60 = v5;
  v55 = _NSConcreteStackBlock;
  sub_10005DF60();
  v57 = v9;
  v58 = &unk_100090440;
  v10 = _Block_copy(&v55);
  v18 = sub_100060288(v10, v11, v12, v13, v14, v15, v16, v17, v55, v56, v57, v58, v59, v60);
  sub_100060270(v18, "setInvalidationHandler:");
  _Block_release(v5);
  v19 = sub_10005DF74();
  sub_100060238(v19);
  v59 = sub_10005F750;
  v60 = v5;
  v55 = _NSConcreteStackBlock;
  sub_100060224();
  v57 = v20;
  v58 = &unk_100090468;
  v21 = _Block_copy(&v55);
  v29 = sub_100060288(v21, v22, v23, v24, v25, v26, v27, v28, v55, v56, v57, v58, v59, v60);
  sub_100060270(v29, "setDeviceFoundHandler:");
  _Block_release(v5);
  v30 = sub_10005DF74();
  sub_100060238(v30);
  v59 = sub_10005F934;
  v60 = v5;
  v55 = _NSConcreteStackBlock;
  sub_100060224();
  v57 = v31;
  v58 = &unk_100090490;
  v32 = _Block_copy(&v55);
  v40 = sub_100060288(v32, v33, v34, v35, v36, v37, v38, v39, v55, v56, v57, v58, v59, v60);
  sub_100060270(v40, "setDeviceLostHandler:");
  _Block_release(v5);
  v41 = sub_10005DF74();
  sub_100060238(v41);
  v59 = sub_10005FABC;
  v60 = v5;
  v55 = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_10005FBB4;
  v58 = &unk_1000904B8;
  v42 = _Block_copy(&v55);
  v50 = sub_100060288(v42, v43, v44, v45, v46, v47, v48, v49, v55, v56, v57, v58, v59, v60);
  sub_100060270(v50, "setDeviceChangedHandler:");
  _Block_release(v5);
  v51 = sub_10005DF74();
  swift_weakInit();

  v59 = sub_10005FC7C;
  v60 = v51;
  v55 = _NSConcreteStackBlock;
  sub_10005DF60();
  v57 = v52;
  v58 = &unk_1000904E0;
  v53 = _Block_copy(&v55);

  [v6 setErrorFlagsChangedHandler:v53];
  _Block_release(v53);

  return v1;
}

uint64_t sub_10005F598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F618()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005F6CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005F780(void *a1)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    v7 = a1;
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1;
  }
}

void sub_10005F864(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10005F8CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100060254(a2 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_10005F964(void *a1)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    v7 = a1;
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1;
  }
}

uint64_t sub_10005FA48(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005FAC4(a1, v3);
  }

  return result;
}

uint64_t sub_10005FAC4(void *a1, unsigned int a2)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 32);
    v7 = a2;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 32);
    v10 = a1;
    v9(v5, v7, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = a1;
  }
}

void sub_10005FBB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10005FC28(uint64_t a1, void (*a2)(void))
{
  sub_100060254(a1 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10005FCAC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportRemoteDisplayDiscovery.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportRemoteDisplayDiscovery.init(discovery:)(v0);
  return v1;
}

void *RapportRemoteDisplayDiscovery.devices.getter()
{
  v1 = [*(v0 + 16) discoveredDevices];
  sub_10005FED8();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100037E08(v2);
  if (v3)
  {
    v4 = v3;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        type metadata accessor for RapportRemoteDisplayDevice();
        v9 = swift_allocObject();
        *(v9 + 32) = 0;
        swift_unknownObjectWeakInit();
        *(v9 + 16) = v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_10005FED8()
{
  result = qword_10009BB88;
  if (!qword_10009BB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009BB88);
  }

  return result;
}

id RapportRemoteDisplayDiscovery.dispatchQueue.getter()
{
  v1 = [*(v0 + 16) dispatchQueue];

  return v1;
}

void RapportRemoteDisplayDiscovery.dispatchQueue.setter(void *a1)
{
  [*(v1 + 16) setDispatchQueue:a1];
}

void (*RapportRemoteDisplayDiscovery.dispatchQueue.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 dispatchQueue];
  return sub_10005D664;
}

void RapportRemoteDisplayDiscovery.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090508;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t RapportRemoteDisplayDiscovery.__deallocating_deinit()
{
  sub_10005D320(v0 + 24);
  v1 = sub_100049BC8();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t RapportRemoteDisplayDiscovery.description.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100060238(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t sub_100060254(uint64_t a1)
{

  return swift_beginAccess();
}

id sub_100060270(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100060288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
}

uint64_t RapportMessageable.serviceType.getter(uint64_t a1, uint64_t a2)
{
  v2 = [(*(a2 + 24))(a1) serviceType];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100060350(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 32);
  if (a2)
  {
    v4 = v3;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setServiceType:v6];
}

void sub_1000603E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    swift_unknownObjectRetain();
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = 0;
  }

  [v3 setServiceType:v4];
  swift_unknownObjectRelease();
}

void sub_100060480(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (a2)
  {
    v4 = v3;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setServiceType:v6];
}

void RapportMessageable.serviceType.setter()
{
  sub_100062F60();
  v4 = sub_100062FA0(v1, v2, v3);
  v6 = v5(v4);
  if (v0)
  {
    sub_100049BBC();
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v6 setServiceType:v7];
  swift_unknownObjectRelease();
}

uint64_t (*sub_1000605A8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_10005DA80();
  a1[1] = v3;
  return sub_1000605F4;
}

void (*RapportMessageable.serviceType.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  sub_100062F60();
  v7 = sub_10005CC98(0x28uLL);
  *v5 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = v4;
  *v7 = RapportMessageable.serviceType.getter(v4, a3);
  v7[1] = v8;
  return sub_100060688;
}

void sub_100060688(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_100062FCC();
  }

  else
  {
    sub_100062FCC();
  }

  free(v2);
}

void sub_10006071C(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 32);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090A38;
  v12 = _Block_copy(v13);

  [v9 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void sub_100060874(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unknownObjectRetain();
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090948;
  v12 = _Block_copy(v13);

  [a6 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

void sub_1000609C8(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090808;
  v12 = _Block_copy(v13);

  [v9 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void RapportMessageable.registerEvent(id:options:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, uint64_t a2, uint64_t a3), void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v27;
  a24 = v28;
  v35 = sub_100062F38(v29, v30, v31, v32, v33, v34);
  v36(v35);
  v37 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  *(v38 + 24) = v24;
  a13 = sub_100062120;
  a14 = v38;
  sub_100011C68();
  a10 = 1107296256;
  a11 = sub_100062128;
  a12 = &unk_100090558;
  v39 = _Block_copy(&a9);

  v40 = sub_100062EEC();
  [v40 v41];
  _Block_release(v39);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_100060C60(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 32);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000909E8;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void sub_100060DB8(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unknownObjectRetain();
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000908F8;
  v12 = _Block_copy(v13);

  [a6 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

void sub_100060F0C(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000907B8;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void RapportMessageable.registerRequest(id:options:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4), void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v27;
  a24 = v28;
  v35 = sub_100062F38(v29, v30, v31, v32, v33, v34);
  v36(v35);
  v37 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  *(v38 + 24) = v24;
  a13 = sub_1000622B8;
  a14 = v38;
  sub_100011C68();
  a10 = 1107296256;
  a11 = sub_100012F64;
  a12 = &unk_1000905A8;
  v39 = _Block_copy(&a9);

  v40 = sub_100062EEC();
  [v40 v41];
  _Block_release(v39);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_1000611A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v12 = *(v8 + 32);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v16[4] = a7;
    v16[5] = a8;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100025214;
    v16[3] = &unk_100090998;
    a7 = _Block_copy(v16);
  }

  [v12 sendEventID:v13 event:v14.super.isa destinationID:v15 options:isa completion:a7];
  _Block_release(a7);
}

void sub_10006132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8, void *a9)
{
  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v15[4] = a7;
    v15[5] = a8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100025214;
    v15[3] = &unk_1000908A8;
    a7 = _Block_copy(v15);
  }

  [a9 sendEventID:v12 event:v13.super.isa destinationID:v14 options:isa completion:a7];
  _Block_release(a7);
  swift_unknownObjectRelease();
}

void sub_1000614B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v12 = *(v8 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v16[4] = a7;
    v16[5] = a8;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100025214;
    v16[3] = &unk_100090768;
    a7 = _Block_copy(v16);
  }

  [v12 sendEventID:v13 event:v14.super.isa destinationID:v15 options:isa completion:a7];
  _Block_release(a7);
}

void RapportMessageable.sendEvent(id:event:destinationID:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v11 = sub_100062F88();
  v13 = v12(v11);
  v14 = String._bridgeToObjectiveC()();
  v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v18[4] = a7;
    v18[5] = a8;
    sub_100011C68();
    sub_100011D20();
    v18[2] = v17;
    v18[3] = &unk_1000905D0;
    a7 = _Block_copy(v18);
  }

  [v13 sendEventID:v14 event:v15.super.isa destinationID:v16 options:isa completion:a7];
  _Block_release(a7);
  swift_unknownObjectRelease();
}

void sub_1000617C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v12 = *(v8 + 32);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005D930;
  v17[3] = &unk_100090970;
  v16 = _Block_copy(v17);

  [v12 sendRequestID:v13 request:v14.super.isa destinationID:v15 options:isa responseHandler:v16];
  _Block_release(v16);
}

void sub_10006194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8, void *a9)
{
  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v16[4] = a7;
  v16[5] = a8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10005D930;
  v16[3] = &unk_100090880;
  v15 = _Block_copy(v16);

  [a9 sendRequestID:v12 request:v13.super.isa destinationID:v14 options:isa responseHandler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_100061AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v12 = *(v8 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005D930;
  v17[3] = &unk_100090740;
  v16 = _Block_copy(v17);

  [v12 sendRequestID:v13 request:v14.super.isa destinationID:v15 options:isa responseHandler:v16];
  _Block_release(v16);
}

void RapportMessageable.sendRequest(id:request:destinationID:options:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v11 = sub_100062F88();
  v12(v11);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v20[4] = a7;
  v20[5] = a8;
  sub_100011C68();
  sub_100062F00();
  v20[2] = v16;
  v20[3] = &unk_1000905F8;
  v17 = _Block_copy(v20);

  v18 = sub_100062EEC();
  [v18 v19];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_100061E10()
{
  sub_100062F60();
  v1 = *(v0 + 32);
  sub_100049BBC();
  v2 = String._bridgeToObjectiveC()();
  sub_100062F18(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_100061E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100062F60();
  swift_unknownObjectRetain();
  sub_100049BBC();
  v3 = String._bridgeToObjectiveC()();
  sub_100062F18(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_unknownObjectRelease();
}

void sub_100061EDC()
{
  sub_100062F60();
  v1 = *(v0 + 16);
  sub_100049BBC();
  v2 = String._bridgeToObjectiveC()();
  sub_100062F18(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_100061F4C()
{
  sub_100062F60();
  v3 = sub_100062FA0(v0, v1, v2);
  v4(v3);
  sub_100049BBC();
  v5 = String._bridgeToObjectiveC()();
  sub_100062F18(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  swift_unknownObjectRelease();
}

id sub_100061FBC(void *a1)
{
  v1 = [a1 dispatchQueue];

  return v1;
}

id RapportMessageable.dispatchQueue.getter(uint64_t a1, uint64_t a2)
{
  v2 = [(*(a2 + 24))(a1) dispatchQueue];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100062048(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
  }

  a3(a1, v5);
}

uint64_t sub_1000620E8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100062128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v5, a3);
}

uint64_t sub_1000621E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = Dictionary.init(dictionaryLiteral:)();
  }

  a5(a1, v9, a3, a4);
}

void sub_1000622C0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, void *a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100025214;
    v13[3] = &unk_100090858;
    a5 = _Block_copy(v13);
  }

  [a7 sendEventID:v11 event:v12.super.isa options:isa completion:a5];
  _Block_release(a5);
  swift_unknownObjectRelease();
}

void sub_100062424(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, void *a5, uint64_t a6)
{
  v10 = *(v6 + 16);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100025214;
    v13[3] = &unk_100090718;
    a5 = _Block_copy(v13);
  }

  [v10 sendEventID:v11 event:v12.super.isa options:isa completion:a5];
  _Block_release(a5);
}

void RapportMessageable.sendEvent(id:event:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  isa = v30;
  v36 = sub_100062F6C(v32, v33, v34, v30, v28, v26, v35);
  v38 = v37(v36);
  v39 = String._bridgeToObjectiveC()();
  v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (v29)
  {
    a13 = v29;
    a14 = v27;
    sub_100011C68();
    sub_100011D20();
    a11 = v41;
    a12 = &unk_100090620;
    v29 = _Block_copy(&a9);
  }

  [v38 sendEventID:v39 event:v40.super.isa options:isa completion:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_1000626B0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10005D930;
  v14[3] = &unk_100090830;
  v13 = _Block_copy(v14);

  [a7 sendRequestID:v11 request:v12.super.isa options:isa responseHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_100062810(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + 16);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10005D930;
  v14[3] = &unk_1000906F0;
  v13 = _Block_copy(v14);

  [v10 sendRequestID:v11 request:v12.super.isa options:isa responseHandler:v13];
  _Block_release(v13);
}

void RapportMessageable.sendRequest(id:request:options:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  isa = v30;
  v36 = sub_100062F6C(v32, v33, v34, v30, v28, v26, v35);
  v37(v36);
  v38 = String._bridgeToObjectiveC()();
  v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  a13 = v29;
  a14 = v27;
  sub_100011C68();
  sub_100062F00();
  a11 = v40;
  a12 = &unk_100090648;
  v41 = _Block_copy(&a9);

  v42 = sub_100062EEC();
  [v42 v43];
  _Block_release(v41);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

uint64_t AnyRapportMessageable.messenger.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t (*sub_100062AD4(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_10005DAE8(*v1);
  a1[1] = v3;
  return sub_100062B20;
}

uint64_t (*sub_100062C14(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = RapportStreamServer.serviceType.getter();
  a1[1] = v3;
  return sub_100062C60;
}

uint64_t sub_100062C78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = sub_100049BBC();
    a3(v4);
  }

  else
  {
    v6 = sub_100049BBC();
    return a3(v6);
  }
}

id sub_100062F18(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

void sub_100062FCC()
{

  RapportMessageable.serviceType.setter();
}

void (*RapportRemoteDisplayServer.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportRemoteDisplayServer.__allocating_init(server:)(void *a1)
{
  sub_100063D04();
  v2 = swift_allocObject();
  RapportRemoteDisplayServer.init(server:)(a1);
  return v2;
}

void *RapportRemoteDisplayServer.init(server:)(void *a1)
{
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RapportRemoteDisplaySession();
  v1[5] = Dictionary.init(dictionaryLiteral:)();
  v1[2] = a1;
  v4 = sub_10005DF74();
  sub_100060238(v4);
  v18 = sub_100063400;
  v19 = v2;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_100090A88;
  v5 = _Block_copy(&v14);
  v6 = a1;

  [v6 setInterruptionHandler:v5];
  _Block_release(v5);
  v7 = sub_10005DF74();
  sub_100060238(v7);
  v18 = sub_10006352C;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_100090AB0;
  v8 = _Block_copy(&v14);

  [v6 setInvalidationHandler:v8];
  _Block_release(v8);
  v9 = sub_10005DF74();
  sub_100060238(v9);
  v18 = sub_10006365C;
  v19 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000637F8;
  v17 = &unk_100090AD8;
  v10 = _Block_copy(&v14);

  [v6 setSessionStartHandler:v10];
  _Block_release(v10);
  v11 = sub_10005DF74();
  swift_weakInit();

  v18 = sub_100063924;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100063A98;
  v17 = &unk_100090B00;
  v12 = _Block_copy(&v14);

  [v6 setSessionEndedHandler:v12];
  _Block_release(v12);

  return v1;
}

uint64_t sub_1000633C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100063430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063448()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000634CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10006355C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000635E0(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100063664(a1, a2, a3);
  }

  return result;
}

void sub_100063664(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  type metadata accessor for RapportRemoteDisplaySession();
  swift_allocObject();
  v8 = a1;
  v9 = RapportRemoteDisplaySession.init(session:)(v8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v4 + 32);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 40);
    sub_100068724(v9, v8, isUniquelyReferenced_nonNull_native);
    *(v4 + 40) = v14;
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, v9, a2, a3, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10004B318();
    v13 = sub_10005C80C(-6714, 0xD000000000000025, 0x800000010007C090);
    a2();
  }
}

void sub_1000637F8(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

uint64_t sub_1000638B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006392C(a1, a2);
  }

  return result;
}

uint64_t sub_10006392C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = sub_100068614(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  v9 = *(v14 + 24);
  sub_10000FC6C(&qword_10009BD28, &qword_100078B00);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(*(v14 + 56) + 8 * v7);
  type metadata accessor for RapportRemoteDisplaySession();
  _NativeDictionary._delete(at:)();
  *(v2 + 40) = v14;
  swift_endAccess();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v11 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v11 + 32))(v2, v10, a2, ObjectType, v11);

  return swift_unknownObjectRelease();
}

void sub_100063A98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t RapportRemoteDisplayServer.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplayServer) init];
  sub_100063D04();
  v1 = swift_allocObject();
  RapportRemoteDisplayServer.init(server:)(v0);
  return v1;
}

void RapportRemoteDisplayServer.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090B28;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t RapportRemoteDisplayServer.deinit()
{
  sub_10005D320(v0 + 24);

  return v0;
}

uint64_t RapportRemoteDisplayServer.__deallocating_deinit()
{
  RapportRemoteDisplayServer.deinit();
  v0 = sub_100063D04();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100063CAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t RapportEndpoint.accountID.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 accountID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportEndpoint.activityLevel.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 activityLevel];

  return v2;
}

uint64_t RapportEndpoint.activityLevelTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100064570();
  v3 = v2();
  v4 = [v3 activityLevelTimeStamp];

  if (v4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_10001137C(a1, v5, 1, v6);
}

uint64_t RapportEndpoint.cameraState.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 cameraState];

  return v2;
}

void *RapportEndpoint.homeKitUserIdentifiers.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 homeKitUserIdentifiers];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for UUID();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100063FD4()
{
  v1 = [*(v0 + *(type metadata accessor for CompanionLinkDevice(0) + 20)) mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100064048()
{
  v1 = [*(v0 + 16) mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportEndpoint.serviceInfo.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 serviceInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_10006416C(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_100064570();
  v5 = v4();
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *RapportEndpoint.serviceTypes.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 serviceTypes];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CompanionLink::RapportSourceVersion RapportEndpoint.sourceVersion.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 sourceVersion];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = v3;
  v7 = v5;

  return RapportSourceVersion.init(stringValue:)(*&v6);
}

id RapportEndpoint.statusFlags.getter()
{
  sub_100064570();
  v1 = v0();
  v2 = [v1 statusFlags];

  return v2;
}

uint64_t sub_100064628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000383A4(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t RapportDeviceChangeFlags.description.getter(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = RPDeviceChangeFlagsCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  return result;
}

unint64_t sub_1000646E8()
{
  result = qword_10009BD30;
  if (!qword_10009BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD30);
  }

  return result;
}

unint64_t sub_100064740()
{
  result = qword_10009BD38;
  if (!qword_10009BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD38);
  }

  return result;
}

unint64_t sub_100064794()
{
  result = qword_10009BD40;
  if (!qword_10009BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD40);
  }

  return result;
}

unint64_t sub_1000647EC()
{
  result = qword_10009BD48;
  if (!qword_10009BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD48);
  }

  return result;
}

uint64_t *RapportStreamQoS.default.unsafeMutableAddressor()
{
  if (qword_10009B7E8 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.default;
}

uint64_t *RapportStreamQoS.background.unsafeMutableAddressor()
{
  if (qword_10009B7F0 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.background;
}

uint64_t *RapportStreamQoS.video.unsafeMutableAddressor()
{
  if (qword_10009B7F8 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.video;
}

uint64_t *RapportStreamQoS.voice.unsafeMutableAddressor()
{
  if (qword_10009B800 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.voice;
}

uint64_t *RapportStreamQoS.airPlayAudio.unsafeMutableAddressor()
{
  if (qword_10009B808 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayAudio;
}

uint64_t *RapportStreamQoS.airPlayScreenAudio.unsafeMutableAddressor()
{
  if (qword_10009B810 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayScreenAudio;
}

uint64_t *RapportStreamQoS.airPlayScreenVideo.unsafeMutableAddressor()
{
  if (qword_10009B818 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayScreenVideo;
}

uint64_t *RapportStreamQoS.ntp.unsafeMutableAddressor()
{
  if (qword_10009B820 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.ntp;
}

uint64_t sub_100064CC8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t RapportStreamQoS.description.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v1 = RPStreamQoSCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_100064DAC()
{
  result = qword_10009BD50;
  if (!qword_10009BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD50);
  }

  return result;
}

uint64_t RapportRemoteDisplayDevice.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t RapportRemoteDisplayDevice.persistentIdentifier.getter()
{
  v1 = [*(v0 + 16) persistentIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void (*RapportRemoteDisplayDevice.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportRemoteDisplayDevice.init(device:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t RapportRemoteDisplayDevice.cameraCapabilities.getter()
{
  v1 = [*(v0 + 16) cameraCapabilities];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportRemoteDisplayDevice.__deallocating_deinit()
{
  sub_10005D320(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_1000650F0(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 localizedDescription];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_100014C58(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100014C58(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_100014C58(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100014C58(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_100014C58(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t CompanionLinkClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CompanionLinkClient.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_100065608;
}

void sub_100065608(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id (*CompanionLinkClient.controlFlags.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 controlFlags];
  return sub_10005D3EC;
}

uint64_t CompanionLinkClient.destinationDevice.setter(uint64_t a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + 16);
  sub_100065814(a1, &v10 - v4);
  v7 = type metadata accessor for CompanionLinkDevice(0);
  if (sub_1000113A4(v5, 1, v7) == 1)
  {
    sub_10001B258(v5);
    v8 = 0;
  }

  else
  {
    v8 = *&v5[*(v7 + 20)];
    sub_100015230(v5);
  }

  [v6 setDestinationDevice:v8];

  return sub_10001B258(a1);
}

uint64_t sub_100065814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*CompanionLinkClient.destinationDevice.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10000FC6C(&qword_1000994B8, &qword_100075A30) - 8) + 64);
  a1[1] = sub_10005CC98(v3);
  v4 = sub_10005CC98(v3);
  a1[2] = v4;
  CompanionLinkClient.destinationDevice.getter(v4);
  return sub_100065920;
}

void sub_100065920(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100065814(v3, v2);
    CompanionLinkClient.destinationDevice.setter(v2);
    sub_10001B258(v3);
  }

  else
  {
    CompanionLinkClient.destinationDevice.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_10006599C@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  if (v4)
  {

    return sub_10005906C(v4, a2);
  }

  else
  {
    v6 = type metadata accessor for CompanionLinkDevice(0);

    return sub_10001137C(a2, 1, 1, v6);
  }
}

uint64_t sub_100065A1C(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t CompanionLinkClient.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPCompanionLinkClient) init];
  sub_100063D04();
  v1 = swift_allocObject();
  sub_100065A1C(v0);
  v2 = v0;

  sub_100065ACC(v2);

  return v1;
}

void sub_100065ACC(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  sub_100067170(v2);
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [a1 setAppID:v4];

  v5 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067218;
  v25 = v5;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090C98;
  v6 = _Block_copy(&v20);

  [a1 setDisconnectHandler:v6];
  _Block_release(v6);
  sub_100013764();
  v7 = static OS_dispatch_queue.main.getter();
  [a1 setDispatchQueue:v7];

  v8 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067248;
  v25 = v8;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090CC0;
  v9 = _Block_copy(&v20);

  [a1 setDeviceFoundHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067278;
  v25 = v10;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090CE8;
  v11 = _Block_copy(&v20);

  [a1 setDeviceLostHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672A8;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005FBB4;
  v23 = &unk_100090D10;
  v13 = _Block_copy(&v20);

  [a1 setDeviceChangedHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672B0;
  v25 = v14;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090D38;
  v15 = _Block_copy(&v20);

  [a1 setInterruptionHandler:v15];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672E0;
  v25 = v16;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090D60;
  v17 = _Block_copy(&v20);

  [a1 setInvalidationHandler:v17];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067310;
  v25 = v18;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090D88;
  v19 = _Block_copy(&v20);

  [a1 setLocalDeviceUpdatedHandler:v19];
  _Block_release(v19);
}

uint64_t CompanionLinkClient.__allocating_init(destination:serviceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(RPCompanionLinkClient) init];
  sub_100063D04();
  v6 = swift_allocObject();
  sub_100065A1C(v5);
  v7 = v5;

  sub_100065ACC(v7);
  [*(v6 + 16) setDestinationDevice:*(a1 + *(type metadata accessor for CompanionLinkDevice(0) + 20))];
  v8 = *(v6 + 16);
  v9 = v8;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setServiceType:v10];

  sub_100015230(a1);
  return v6;
}

void sub_1000660E0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient disconnected", v6, 2u);
    }
  }
}

uint64_t sub_10006621C(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    return sub_10001B258(v5);
  }

  sub_10001B314(v5, v8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v8);
}

uint64_t sub_100066388(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    return sub_10001B258(v5);
  }

  sub_10001B314(v5, v8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v8);
}

uint64_t sub_1000664F4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100066568(a1, v3);
  }

  return result;
}

uint64_t sub_100066568(void *a1, unsigned int a2)
{
  v5 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v7);
  if (sub_1000113A4(v7, 1, v8) == 1)
  {
    return sub_10001B258(v7);
  }

  sub_10001B314(v7, v10);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v10, a2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v10);
}

void sub_1000666E0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 40))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient interrupted", v6, 2u);
    }
  }
}

uint64_t sub_10006681C(uint64_t a1, void (*a2)(void))
{
  sub_100060254(a1 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_100066870()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient invalidated", v6, 2u);
    }
  }
}

uint64_t sub_1000669AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100060254(a2 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_100066A14(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    return sub_10001B258(v5);
  }

  sub_10001B314(v5, v8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 56))(v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v8);
}

void CompanionLinkClient.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_100066CC4;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100025214;
  v8[3] = &unk_100090BF0;
  v7 = _Block_copy(v8);

  sub_1000485AC(a1, a2);

  [v5 activateWithCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_100066C7C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100066CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100066D08(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a2)
  {

    a2(a1);

    sub_100010FE8(a2, a3);
    return;
  }

  if (a1)
  {
    v24 = _convertErrorToNSError(_:)();
    if (*(v3 + 24) != 1)
    {
      goto LABEL_27;
    }

    v7 = [v24 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v24 code];
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (v11 != 4099)
    {
LABEL_27:
      if (qword_10009B828 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      v23 = sub_100003420(v22, qword_1000A1BC0);
      __chkstk_darwin(v23);
      sub_1000650F0(sub_100067094, 0, sub_10001132C);

      return;
    }

    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003420(v18, qword_1000A1BC0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "CompanionLinkClient invalidated before activation completion", v21, 2u);
    }
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003420(v15, qword_1000A1BC0);
    v24 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v24, v16, "CompanionLinkClient activated", v17, 2u);
    }
  }
}

uint64_t CompanionLinkClient.__deallocating_deinit()
{
  sub_10005D320(v0 + 32);
  v1 = sub_100063D04();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_100067170(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000671E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

void (*RapportStreamServer.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportStreamServer.__allocating_init(server:)(void *a1)
{
  sub_100063D04();
  v2 = swift_allocObject();
  RapportStreamServer.init(server:)(a1);
  return v2;
}

void *RapportStreamServer.init(server:)(void *a1)
{
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RapportStreamSession();
  v1[5] = Dictionary.init(dictionaryLiteral:)();
  v1[2] = a1;
  sub_10001203C();
  v3 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10006773C;
  v16 = v3;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100052C90;
  v14 = &unk_100090DD8;
  v4 = _Block_copy(&v11);
  v5 = a1;

  [v5 setInvalidationHandler:v4];
  _Block_release(v4);
  sub_10001203C();
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10006785C;
  v16 = v6;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000679C0;
  v14 = &unk_100090E00;
  v7 = _Block_copy(&v11);

  [v5 setStreamAcceptHandler:v7];
  _Block_release(v7);
  sub_10001203C();
  v8 = swift_allocObject();
  swift_weakInit();

  v15 = sub_100067AFC;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100067C88;
  v14 = &unk_100090E28;
  v9 = _Block_copy(&v11);

  [v5 setStreamPrepareHandlerEx:v9];
  _Block_release(v9);

  return v1;
}

uint64_t sub_1000676B0()
{
  swift_weakDestroy();
  sub_10001203C();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000676E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006775C();
  }

  return result;
}

uint64_t sub_100067744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006775C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000677E0(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067864(a1, a2, a3);
  }

  return result;
}

void sub_100067864(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  v7 = sub_100068658(a1);
  swift_endAccess();
  if (!v7)
  {
    type metadata accessor for RapportStreamSession();
    swift_allocObject();
    v7 = RapportStreamSession.init(session:)(a1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v3, v7, a2, a3, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10004B318();
    v10 = sub_10005C80C(-6714, 0xD00000000000001DLL, 0x800000010007C280);
    a2();
  }
}

void sub_1000679C0(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

uint64_t sub_100067A78(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_100067B04(a1, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100067B04(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for RapportStreamSession();
  swift_allocObject();
  v6 = a1;
  v7 = RapportStreamSession.init(session:)(v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v3, v7, ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 40);
    sub_100068738(v7, v6, isUniquelyReferenced_nonNull_native, &qword_10009C030, &qword_1000790F8);
    *(v3 + 40) = v15;
    swift_endAccess();
    if (v12)
    {
      if (a2)
      {
        *a2 = _convertErrorToNSError(_:)();
      }

      sub_100068850(v10, 1);
      LOBYTE(v10) = 0;
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(v10) = 1;
  }

  return v10 & 1;
}

uint64_t sub_100067C88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t RapportStreamServer.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPStreamServer) init];
  sub_100063D04();
  v1 = swift_allocObject();
  RapportStreamServer.init(server:)(v0);
  return v1;
}

id RapportStreamSession.messenger.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) messenger];
  if (result)
  {
    v4 = &protocol witness table for AnyRapportMessageable;
    v5 = &type metadata for AnyRapportMessageable;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  a1[4] = v4;
  return result;
}

uint64_t RapportStreamServer.messenger.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100067E64(a1, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_10000FCB4(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    sub_100003458(v8);
  }

  else
  {
    sub_100067ED4(v8);
    v6 = 0;
  }

  [v3 setMessenger:v6];
  swift_unknownObjectRelease();
  return sub_100067ED4(a1);
}

uint64_t sub_100067E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009A888, "bc");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067ED4(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_10009A888, "bc");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RapportStreamServer.messenger.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10005CC98(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  RapportStreamSession.messenger.getter(v3);
  return sub_100067FA0;
}

void sub_100067FA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100067E64(*a1, v2 + 40);
    RapportStreamServer.messenger.setter(v2 + 40);
    sub_100067ED4(v2);
  }

  else
  {
    RapportStreamServer.messenger.setter(*a1);
  }

  free(v2);
}

void RapportStreamServer.serviceType.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setServiceType:v4];
}

void (*RapportStreamServer.serviceType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = RapportStreamServer.serviceType.getter();
  a1[1] = v3;
  return sub_1000680C8;
}

void sub_1000680C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    RapportStreamServer.serviceType.setter(v3, v2);
  }

  else
  {
    RapportStreamServer.serviceType.setter(*a1, v2);
  }
}

unint64_t RapportStreamSession.streamFlags.setter(unint64_t result)
{
  if (!HIDWORD(result))
  {
    return [*(v1 + 16) setStreamFlags:result];
  }

  __break(1u);
  return result;
}

unint64_t (*RapportStreamServer.streamFlags.modify(void *a1))(unint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamFlags];
  return sub_1000681DC;
}

uint64_t RapportStreamSession.streamQoS.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return [*(v1 + 16) setStreamQoS:result];
  }

  __break(1u);
  return result;
}

uint64_t (*RapportStreamServer.streamQoS.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamQoS];
  return sub_1000682B4;
}

void RapportStreamServer.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090E50;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t RapportStreamServer.description.getter()
{
  strcpy(v29, "StreamServer");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  v1 = *(v0 + 16);
  v2 = RPStreamFlagsCopyDescription([v1 streamFlags]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x3C204C46202CLL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);

  v9 = RPStreamQoSCopyDescription([v1 streamQoS]);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x20536F51202CLL;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  v15 = RPStreamFlagsCopyDescription([v1 streamFlags]);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x3C204653202CLL;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);

  v22 = RapportStreamServer.serviceType.getter();
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

  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x27205453202CLL;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);

  return v29[0];
}

unint64_t sub_100068614(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100039860(a1, v2);
}

uint64_t sub_100068658(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100068614(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  sub_10000FC6C(&qword_10009C030, &qword_1000790F8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  type metadata accessor for RapportStreamSession();
  _NativeDictionary._delete(at:)();
  *v2 = v10;
  return v8;
}

unint64_t sub_100068738(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  sub_100068614(a2);
  sub_100049830();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  sub_10000FC6C(a4, a5);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_100068614(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v8;
  if ((v17 & 1) == 0)
  {
    return sub_10003E7B4(v16, a2, a1, v20);
  }

  *(v20[7] + 8 * v16) = a1;
}

uint64_t sub_100068850(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10006885C()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000688A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1BC0);
  sub_100003420(v0, qword_1000A1BC0);
  return Logger.init(subsystem:category:)();
}

uint64_t RapportStreamSession.__allocating_init(session:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportStreamSession.init(session:)(a1);
  return v2;
}

uint64_t RapportStreamSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_10006A9E4();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportStreamSession.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportStreamSession.init(session:)(void *a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  v4 = sub_10005DF74();
  sub_100060238(v4);
  v68 = sub_10006A92C;
  v69 = v2;
  v64 = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100052C90;
  v67 = &unk_100090EC8;
  v5 = _Block_copy(&v64);
  v6 = a1;

  sub_100060270(v7, "setFlowControlWriteChangedHandler:");
  _Block_release(v5);
  v8 = sub_10005DF74();
  sub_100060238(v8);
  v68 = sub_100068E68;
  v69 = v5;
  v64 = _NSConcreteStackBlock;
  sub_10005DF60();
  v66 = v9;
  v67 = &unk_100090EF0;
  v10 = _Block_copy(&v64);
  v18 = sub_100060288(v10, v11, v12, v13, v14, v15, v16, v17, v64, v65, v66, v67, v68, v69);
  sub_100060270(v18, "setInvalidationHandler:");
  _Block_release(v5);
  v19 = sub_10005DF74();
  sub_100060238(v19);
  v68 = sub_100068F1C;
  v69 = v5;
  v64 = _NSConcreteStackBlock;
  sub_10005DF60();
  v66 = v20;
  v67 = &unk_100090F18;
  v21 = _Block_copy(&v64);
  sub_100060288(v21, v22, v23, v24, v25, v26, v27, v28, v64, v65, v66, v67, v68, v69);
  RPStreamSessionSetDisconnectHandler(v6, v5);
  _Block_release(v5);
  v29 = sub_10005DF74();
  sub_100060238(v29);
  v68 = sub_10006905C;
  v69 = v5;
  v64 = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100069160;
  v67 = &unk_100090F40;
  v30 = _Block_copy(&v64);
  v38 = sub_100060288(v30, v31, v32, v33, v34, v35, v36, v37, v64, v65, v66, v67, v68, v69);
  sub_100060270(v38, "setReceivedEventHandler:");
  _Block_release(v5);
  v39 = sub_10005DF74();
  sub_100060238(v39);
  v68 = sub_1000692EC;
  v69 = v5;
  v64 = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100069404;
  v67 = &unk_100090F68;
  v40 = _Block_copy(&v64);
  v48 = sub_100060288(v40, v41, v42, v43, v44, v45, v46, v47, v64, v65, v66, v67, v68, v69);
  sub_100060270(v48, "setReceivedRequestHandler:");
  _Block_release(v5);
  v49 = sub_10005DF74();
  sub_100060238(v49);
  v68 = sub_100069584;
  v69 = v5;
  v64 = _NSConcreteStackBlock;
  sub_10005DF60();
  v66 = v50;
  v67 = &unk_100090F90;
  v51 = _Block_copy(&v64);
  v59 = sub_100060288(v51, v52, v53, v54, v55, v56, v57, v58, v64, v65, v66, v67, v68, v69);
  sub_100060270(v59, "setStatusChangedHandler:");
  _Block_release(v5);
  v60 = sub_10005DF74();
  swift_weakInit();

  v68 = sub_100069618;
  v69 = v60;
  v64 = _NSConcreteStackBlock;
  sub_10005DF60();
  v66 = v61;
  v67 = &unk_100090FB8;
  v62 = _Block_copy(&v64);

  [v6 setConnectionReadyHandler:v62];
  _Block_release(v62);

  return v1;
}

uint64_t sub_100068DC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100068DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068E14(uint64_t a1, void (*a2)(void))
{
  sub_100060254(a1 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_100068E98()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068F4C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100069064(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100069064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 32);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = Dictionary.init(dictionaryLiteral:)();
    }

    ObjectType = swift_getObjectType();
    v11 = *(v8 + 24);

    v11(v4, a3, v9, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v6, v8, v9, a4);
}

uint64_t sub_100069248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000692F4(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1000692F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v6 + 32);
    v16 = a3;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = Dictionary.init(dictionaryLiteral:)();
    }

    ObjectType = swift_getObjectType();
    v15 = *(v12 + 32);

    v15(v6, v16, v13, a5, a6, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = *(a1 + 32);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  v7(v8, v10, v11, a4, sub_10001375C, v13);
}

uint64_t sub_100069538(uint64_t a1)
{
  sub_100060254(a1 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000695A0();
  }

  return result;
}

uint64_t sub_1000695A0()
{
  sub_100060254(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069648()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportStreamSession.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPStreamSession) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportStreamSession.init(session:)(v0);
  return v1;
}

uint64_t RapportStreamSession.deinit()
{
  RapportStreamSession.cancel()();

  sub_10005D320(v0 + 24);
  return v0;
}

Swift::Void __swiftcall RapportStreamSession.cancel()()
{
  [*(v0 + 16) invalidate];
  sub_10006A9E4();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t RapportStreamSession.__deallocating_deinit()
{
  RapportStreamSession.deinit();
  v0 = sub_100049BC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t RapportStreamSession.serviceType.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.serviceType.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

uint64_t RapportStreamSession.delegatedProcessUPID.modify(void *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 delegatedProcessUPID];
  return sub_10006A97C();
}

uint64_t RapportStreamSession.messenger.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100067E64(a1, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_10000FCB4(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    sub_100003458(v8);
  }

  else
  {
    sub_10005235C(v8, &qword_10009A888, "bc");
    v6 = 0;
  }

  [v3 setMessenger:v6];
  swift_unknownObjectRelease();
  return sub_10005235C(a1, &qword_10009A888, "bc");
}

void (*RapportStreamSession.messenger.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10005CC98(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  RapportStreamSession.messenger.getter(v3);
  return sub_100069A00;
}

void sub_100069A00(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100067E64(*a1, v2 + 40);
    RapportStreamSession.messenger.setter(v2 + 40);
    sub_10005235C(v2, &qword_10009A888, "bc");
  }

  else
  {
    RapportStreamSession.messenger.setter(*a1);
  }

  free(v2);
}

uint64_t RapportStreamSession.nwClientID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) nwClientID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_10001137C(a1, v5, 1, v6);
}

uint64_t RapportStreamSession.streamFlags.modify(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamFlags];
  return sub_10006A97C();
}

uint64_t RapportStreamSession.streamID.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.streamID.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

uint64_t sub_100069BC0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t RapportStreamSession.streamKey.getter()
{
  v1 = [*(v0 + 16) streamKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportStreamSession.streamQoS.modify(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamQoS];
  return sub_10006A97C();
}

id (*RapportStreamSession.streamType.modify(uint64_t a1))(void **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 streamType];
  return sub_100069D84;
}

id (*RapportStreamSession.trafficFlags.modify(uint64_t a1))(void **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 trafficFlags];
  return sub_100069E10;
}

uint64_t sub_100069E30(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100069EA4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t RapportStreamSession.trafficSessionID.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.trafficSessionID.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

void sub_100069FA0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v10[4] = a1;
  v10[5] = a2;
  sub_100011C68();
  sub_100011D20();
  v10[2] = v8;
  v10[3] = v7;
  v9 = _Block_copy(v10);

  [v6 *a4];
  _Block_release(v9);
}

void RapportStreamSession.sendEvent(id:event:options:completion:)()
{
  v3 = sub_10006A9C0();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  isa = v4.super.isa;
  if (v1)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v1 = v4.super.isa;
  }

  if (v2)
  {
    v7[4] = v2;
    v7[5] = v0;
    sub_100011C68();
    sub_100011D20();
    v7[2] = v6;
    v7[3] = &unk_100091030;
    v2 = _Block_copy(v7);
  }

  sub_10005DFB4(v4.super.isa, "sendEventID:event:options:completion:");
  _Block_release(v2);
}

void RapportStreamSession.sendRequest(id:request:options:response:)()
{
  v3 = sub_10006A9C0();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v7[4] = v2;
  v7[5] = v0;
  sub_100011C68();
  v7[1] = 1107296256;
  v7[2] = sub_10005D930;
  v7[3] = &unk_100091058;
  v5 = _Block_copy(v7);

  sub_10005DFB4(v6, "sendRequestID:request:options:responseHandler:");
  _Block_release(v5);
}

uint64_t RapportStreamSession.description.getter()
{
  v3 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for UUID();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v47, "StreamSession ");
  HIBYTE(v47[1]) = -18;
  v9 = *(v0 + 16);
  v10 = RPStreamTypeCopyDescription([v9 streamType]);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006AA24();
  v11._countAndFlagsBits = v1;
  v11._object = v2;
  String.append(_:)(v11);

  v46._countAndFlagsBits = 0x3C204C46202CLL;
  v46._object = 0xE600000000000000;
  v12 = RPStreamFlagsCopyDescription([v9 streamFlags]);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006AA24();
  sub_10006A9A4();

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  sub_10006A988();

  v46._countAndFlagsBits = 0x3C204653202CLL;
  v46._object = 0xE600000000000000;
  v14 = RPStatusFlagsCopyDescription([v9 statusFlags]);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006AA24();
  sub_10006A9A4();

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  sub_10006A988();

  v16 = [v9 delegatedProcessUPID];
  if (v16)
  {
    v46._countAndFlagsBits = 0x205044202CLL;
    v46._object = 0xE500000000000000;
    v45 = v16;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    sub_10006A988();
  }

  v46._countAndFlagsBits = 0x204346202CLL;
  v46._object = 0xE500000000000000;
  v18 = RPFlowControlStateCopyDescription([v9 flowControlWriteState]);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006AA24();
  sub_10006A9A4();

  sub_10006A988();

  RapportStreamSession.nwClientID.getter(v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    sub_10005235C(v5, &qword_1000991D8, &qword_100075780);
  }

  else
  {
    v19 = v44;
    (*(v44 + 32))(v8, v5, v6);
    v46._countAndFlagsBits = 0x20574E202CLL;
    v46._object = 0xE500000000000000;
    v20._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v20);

    String.append(_:)(v46);

    (*(v19 + 8))(v8, v6);
  }

  v21 = RapportStreamSession.serviceType.getter();
  if (v22)
  {
    sub_10006AA04(*&v21, 1414733868);

    v23._countAndFlagsBits = 39;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    sub_10006A960();
  }

  v24 = RapportStreamSession.streamID.getter();
  if (v25)
  {
    sub_10006AA04(*&v24, 1145643052);

    v26._countAndFlagsBits = 39;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    sub_10006A960();
  }

  v27 = [v9 streamSocket];
  if (v27 != -1)
  {
    v46._countAndFlagsBits = 0x204446202CLL;
    v46._object = 0xE500000000000000;
    LODWORD(v45) = v27;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    sub_10006A960();
  }

  v46._countAndFlagsBits = 0x20536F51202CLL;
  v46._object = 0xE600000000000000;
  v29 = RPStreamQoSCopyDescription([v9 streamQoS]);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  sub_10006A960();

  v46._countAndFlagsBits = 0x3C204654202CLL;
  v46._object = 0xE600000000000000;
  v34 = CUTrafficFlagsCopyDescription([v9 trafficFlags]);
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 62;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  String.append(_:)(v46);

  v40 = RapportStreamSession.trafficSessionID.getter();
  if (v41)
  {
    v46._countAndFlagsBits = 0x272044495354202CLL;
    v46._object = 0xE800000000000000;
    String.append(_:)(*&v40);

    v42._countAndFlagsBits = 39;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    String.append(_:)(v46);
  }

  return v47[0];
}

uint64_t sub_10006A8CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

void sub_10006A960()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  String.append(_:)(*&v2);
}

void sub_10006A988()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  String.append(_:)(*&v2);
}

void sub_10006A9A4()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

NSString sub_10006A9C0()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10006A9E4()
{

  return swift_beginAccess();
}

void sub_10006AA04(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2 & 0xFFFF0000FFFFFFFFLL | 0x272000000000;
  *(v2 - 104) = 0xE600000000000000;

  String.append(_:)(a1);
}

void sub_10006AA24()
{
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10006AA98@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100048A38;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000485AC(v4, v5);
}

uint64_t sub_10006AB2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10006B390;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_1000485AC(v3, v4);
  return sub_100010FE8(v8, v9);
}

uint64_t DarwinNotification.handler.getter()
{
  sub_10006B3E8(v0 + 40);
  v1 = *(v0 + 40);
  sub_1000485AC(v1, *(v0 + 48));
  return v1;
}

uint64_t DarwinNotification.handler.setter(uint64_t a1, uint64_t a2)
{
  sub_10006B400(v2 + 40);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_100010FE8(v5, v6);
}

uint64_t DarwinNotification.__allocating_init(check:)(uint64_t a1, uint64_t a2)
{
  sub_10006B3D8();
  v4 = swift_allocObject();
  DarwinNotification.init(check:)(a1, a2);
  return v4;
}

uint64_t DarwinNotification.init(check:)(uint64_t a1, uint64_t a2)
{
  sub_10006B3BC(a1, a2);
  v4 = String.utf8CString.getter();
  sub_10006B41C(v2);
  notify_register_check((v4 + 32), v2);
  swift_endAccess();

  sub_10006AD74();
  return v3;
}

uint64_t sub_10006AD74()
{
  sub_10006B3E8(v0 + 32);
  v1 = *(v0 + 32);
  state64 = DarwinNotification.state.getter();
  notify_get_state(v1, &state64);
  return DarwinNotification.state.setter(state64);
}

uint64_t DarwinNotification.__allocating_init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10006B3D8();
  v6 = swift_allocObject();
  DarwinNotification.init(dispatch:queue:)(a1, a2, a3);
  return v6;
}

uint64_t DarwinNotification.init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10006B3BC(a1, a2);
  v6 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_10006AFC8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10006B05C;
  v11[3] = &unk_1000910E8;
  v7 = _Block_copy(v11);

  v8 = a3;

  v9 = String.utf8CString.getter();

  sub_10006B41C(v3);
  notify_register_dispatch((v9 + 32), v3, v8, v7);
  swift_endAccess();

  _Block_release(v7);

  sub_10006AD74();
  return v4;
}

uint64_t sub_10006AF90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006AFC8()
{
  sub_10006B3E8(v0 + 16);
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_10006B3E8(result + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = *(v2 + 48);
      sub_1000485AC(*(v2 + 40), v4);

      v3(v5);
      return sub_100010FE8(v3, v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10006B05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10006B0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DarwinNotification.state.getter()
{
  sub_10006B3E8(v0 + 32);
  v1 = *(v0 + 32);
  sub_10006B41C(v0 + 56);
  notify_get_state(v1, (v0 + 56));
  swift_endAccess();
  return *(v0 + 56);
}

uint64_t DarwinNotification.state.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    *(v1 + 56) = a1;
    sub_10006B3E8(v1 + 32);
    notify_set_state(*(v1 + 32), a1);
    v4 = String.utf8CString.getter();
    notify_post((v4 + 32));
  }

  return result;
}

Swift::Void __swiftcall DarwinNotification.cancel()()
{
  sub_10006B400(v0 + 32);
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }
}

uint64_t DarwinNotification.deinit()
{
  DarwinNotification.cancel()();

  sub_100010FE8(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  DarwinNotification.deinit();
  v0 = sub_10006B3D8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006B234@<X0>(uint64_t *a1@<X8>)
{
  result = DarwinNotification.state.getter();
  *a1 = result;
  return result;
}

uint64_t (*DarwinNotification.state.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DarwinNotification.state.getter();
  return sub_10006B2D0;
}

uint64_t sub_10006B358()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B3BC(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = -1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10006B3E8(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_10006B400(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_10006B41C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t static DispatchTimeInterval.seconds(_:)@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 < 0.0)
  {
    goto LABEL_39;
  }

  if (a3 >= 9223372040.0)
  {
    if (a3 >= 9.22337204e12)
    {
      if (a3 >= 9.22337204e15)
      {
        sub_10006D354();
        if (v6)
        {
          sub_10006D438();
          if (!v10 & v9)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v14 <= -9.22337204e18)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          sub_10006D538(v14);
          v7 = &enum case for DispatchTimeInterval.seconds(_:);
        }

        else
        {
          v7 = &enum case for DispatchTimeInterval.never(_:);
        }
      }

      else
      {
        sub_10006D438();
        if (!v10 & v9)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v12 <= -9.22337204e18)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_10006D354();
        if (!v6)
        {
          goto LABEL_36;
        }

        sub_10006D538(v13);
        v7 = &enum case for DispatchTimeInterval.milliseconds(_:);
      }
    }

    else
    {
      sub_10006D438();
      if (!v10 & v9)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v8 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_10006D354();
      if (!v6)
      {
        goto LABEL_33;
      }

      sub_10006D538(v11);
      v7 = &enum case for DispatchTimeInterval.microseconds(_:);
    }

    goto LABEL_25;
  }

  v4 = a3 * 1000000000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_10006D354();
  if (!v6)
  {
    goto LABEL_30;
  }

  sub_10006D538(v5);
  v7 = &enum case for DispatchTimeInterval.nanoseconds(_:);
LABEL_25:
  v15 = *v7;
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = *(*(v16 - 8) + 104);

  return v17(a2, v15, v16);
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:)(Swift::Double a1)
{
  sub_10006D308();
  sub_10006D478();
  v3 = type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100011D10();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v11 = sub_10006D5D0();
  sub_100011C54();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100011D10();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v13 + 8);
  v19(v17, v11);
  (*(v5 + 104))(v1, enum case for DispatchTimeInterval.never(_:), v3);
  sub_100057048(v9);
  sub_10006D484();
  v20 = *(v5 + 8);
  v20(v9, v3);
  v20(v1, v3);
  v19(v2, v11);
  sub_10006D374();
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:interval:)(Swift::Double _, Swift::Double interval)
{
  sub_10006D308();
  v5 = v4;
  v6 = type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100011D10();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v14 = sub_10006D5D0();
  sub_100011C54();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100011D10();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v16 + 8);
  v22(v20, v14);
  static DispatchTimeInterval.seconds(_:)(v2, v5);
  sub_100057048(v12);
  sub_10006D484();
  v23 = *(v8 + 8);
  v23(v12, v6);
  v23(v2, v6);
  v22(v3, v14);
  sub_10006D374();
}

uint64_t sub_10006B9E4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100011C54();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100011CD4();
  v6 = v5 - v4;
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  result = (*(v2 + 8))(v6, v0);
  qword_1000A1A38 = v7;
  return result;
}

id static OS_dispatch_queue.defaultPriority.getter()
{
  if (qword_1000A1A30 != -1)
  {
    sub_10006D334(&qword_1000A1A30);
  }

  v1 = qword_1000A1A38;

  return v1;
}

void OS_dispatch_queue.after(_:closure:)(double a1)
{
  sub_10006D308();
  v4 = v3;
  v6 = v5;
  sub_10006D478();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  v25 = v8;
  __chkstk_darwin(v9);
  sub_100011CD4();
  sub_10006D418();
  type metadata accessor for DispatchQoS();
  sub_100011C54();
  v23 = v11;
  v24 = v10;
  __chkstk_darwin(v10);
  sub_100011CD4();
  v14 = v13 - v12;
  v22 = type metadata accessor for DispatchTime();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  sub_100011D10();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v15 + 8);
  v20(v18, v22);
  v26[4] = v6;
  v26[5] = v4;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100052C90;
  v26[3] = &unk_1000911C0;
  v21 = _Block_copy(v26);

  static DispatchQoS.unspecified.getter();
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);
  (*(v25 + 8))(v1, v7);
  (*(v23 + 8))(v14, v24);
  v20(v2, v22);

  sub_10006D374();
}

uint64_t sub_10006BE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OS_dispatch_queue.once(_:closure:)(double a1)
{
  sub_10006D308();
  v41 = v4;
  v42 = v5;
  sub_10006D478();
  type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  __chkstk_darwin(v6);
  sub_10001B850();
  v43 = v7;
  sub_10006D39C();
  __chkstk_darwin(v8);
  sub_100049C80();
  sub_10006D390();
  type metadata accessor for DispatchTime();
  sub_100011C54();
  __chkstk_darwin(v9);
  sub_10001B850();
  sub_10006D2F8();
  v11 = __chkstk_darwin(v10);
  sub_10006D2AC(v11, v12, v13, v14, v15, v16, v17, v18, v39);
  sub_100011C54();
  __chkstk_darwin(v19);
  sub_100011CD4();
  v40 = sub_10006D3A8();
  sub_100011C54();
  __chkstk_darwin(v20);
  sub_100011CD4();
  sub_10006D418();
  v21 = type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100011C54();
  __chkstk_darwin(v22);
  sub_100011CD4();
  sub_10006D544();
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  sub_10006D27C();
  sub_10006C2C0(v23, v24, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v25 = sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10006D5B0();
  v26 = sub_10006D364();
  v27(v26, v21);
  swift_getObjectType();
  v28 = swift_allocObject();
  v28[2] = v41;
  v28[3] = v42;
  v28[4] = v21;
  v44[4] = sub_10006C30C;
  v44[5] = v28;
  v44[0] = _NSConcreteStackBlock;
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v44[2] = v29;
  v44[3] = &unk_100091210;
  v30 = _Block_copy(v44);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D570();
  _Block_release(v30);
  v31 = sub_10006D52C();
  v32(v31);
  sub_10006D324();
  v33(v1, v40);

  sub_10006D520();
  static DispatchTime.now()();
  sub_10006D50C();
  + infix(_:_:)();
  v34 = sub_10006D3E0();
  (v30)(v34);
  v35 = sub_10006D3C4();
  v36(v35);
  sub_100057048(v43);
  sub_10006D3FC();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v37 = *(v1 + 8);
  v37(v25, &qword_100077628);
  v38 = sub_10006D500();
  (v37)(v38);
  (v30)(v3, v2);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t sub_10006C2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OS_dispatch_queue.wallOnce(_:closure:)(double a1)
{
  sub_10006D308();
  v41 = v4;
  v42 = v5;
  sub_10006D478();
  type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  __chkstk_darwin(v6);
  sub_10001B850();
  v43 = v7;
  sub_10006D39C();
  __chkstk_darwin(v8);
  sub_100049C80();
  sub_10006D390();
  type metadata accessor for DispatchWallTime();
  sub_100011C54();
  __chkstk_darwin(v9);
  sub_10001B850();
  sub_10006D2F8();
  v11 = __chkstk_darwin(v10);
  sub_10006D2AC(v11, v12, v13, v14, v15, v16, v17, v18, v39);
  sub_100011C54();
  __chkstk_darwin(v19);
  sub_100011CD4();
  v40 = sub_10006D3A8();
  sub_100011C54();
  __chkstk_darwin(v20);
  sub_100011CD4();
  sub_10006D418();
  v21 = type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100011C54();
  __chkstk_darwin(v22);
  sub_100011CD4();
  sub_10006D544();
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  sub_10006D27C();
  sub_10006C2C0(v23, v24, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v25 = sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10006D5B0();
  v26 = sub_10006D364();
  v27(v26, v21);
  swift_getObjectType();
  v28 = swift_allocObject();
  v28[2] = v41;
  v28[3] = v42;
  v28[4] = v21;
  v44[4] = sub_10006D250;
  v44[5] = v28;
  v44[0] = _NSConcreteStackBlock;
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v44[2] = v29;
  v44[3] = &unk_100091260;
  v30 = _Block_copy(v44);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D570();
  _Block_release(v30);
  v31 = sub_10006D52C();
  v32(v31);
  sub_10006D324();
  v33(v1, v40);

  sub_10006D520();
  static DispatchWallTime.now()();
  sub_10006D50C();
  + infix(_:_:)();
  v34 = sub_10006D3E0();
  (v30)(v34);
  v35 = sub_10006D3C4();
  v36(v35);
  sub_100057048(v43);
  sub_10006D3FC();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v37 = *(v1 + 8);
  v37(v25, &qword_100077628);
  v38 = sub_10006D500();
  (v37)(v38);
  (v30)(v3, v2);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t sub_10006C764()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

void sub_10006C7A4()
{
  (*(v0 + 16))();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

void OS_dispatch_queue.timer(_:interval:closure:)(double a1)
{
  sub_10006D308();
  sub_10006D4A8(v2, v3);
  sub_100011C54();
  __chkstk_darwin(v4);
  sub_10001B850();
  v40 = v5;
  sub_10006D39C();
  __chkstk_darwin(v6);
  sub_100049C80();
  sub_10006D390();
  type metadata accessor for DispatchTime();
  sub_100011C54();
  __chkstk_darwin(v7);
  sub_10001B850();
  sub_10006D2F8();
  v9 = __chkstk_darwin(v8);
  sub_10006D2AC(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  sub_100011C54();
  __chkstk_darwin(v17);
  sub_100011CD4();
  v39 = sub_10006D3A8();
  sub_100011C54();
  __chkstk_darwin(v18);
  sub_100011CD4();
  v21 = (v20 - v19);
  v22 = type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100011C54();
  __chkstk_darwin(v23);
  sub_100011CD4();
  sub_10006D544();
  v24 = sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  v41[0] = _swiftEmptyArrayStorage;
  sub_10006D27C();
  sub_10006C2C0(v25, v26, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v27 = sub_10006D364();
  v28(v27, v22);
  swift_getObjectType();
  sub_10006D2D0();
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v41[2] = v29;
  v41[3] = &unk_100091288;
  v30 = _Block_copy(v41);

  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D590();
  _Block_release(v30);
  v31 = sub_10006D52C();
  v32(v31);
  sub_10006D324();
  v33(v21, v39);

  sub_10006D520();
  static DispatchTime.now()();
  sub_10006D4EC();
  + infix(_:_:)();
  v34 = sub_10006D4D8();
  v35 = v21(v34);
  sub_10006D550(v35);
  sub_100057048(v40);
  sub_10006D460();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v36 = sub_10006D448();
  v40(v36);
  v37 = sub_10006D500();
  v40(v37);
  (v21)(v24, v1);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

void OS_dispatch_queue.wallTimer(_:interval:closure:)(double a1)
{
  sub_10006D308();
  sub_10006D4A8(v2, v3);
  sub_100011C54();
  __chkstk_darwin(v4);
  sub_10001B850();
  v40 = v5;
  sub_10006D39C();
  __chkstk_darwin(v6);
  sub_100049C80();
  sub_10006D390();
  type metadata accessor for DispatchWallTime();
  sub_100011C54();
  __chkstk_darwin(v7);
  sub_10001B850();
  sub_10006D2F8();
  v9 = __chkstk_darwin(v8);
  sub_10006D2AC(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  sub_100011C54();
  __chkstk_darwin(v17);
  sub_100011CD4();
  v39 = sub_10006D3A8();
  sub_100011C54();
  __chkstk_darwin(v18);
  sub_100011CD4();
  v21 = (v20 - v19);
  v22 = type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100011C54();
  __chkstk_darwin(v23);
  sub_100011CD4();
  sub_10006D544();
  v24 = sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  v41[0] = _swiftEmptyArrayStorage;
  sub_10006D27C();
  sub_10006C2C0(v25, v26, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v27 = sub_10006D364();
  v28(v27, v22);
  swift_getObjectType();
  sub_10006D2D0();
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v41[2] = v29;
  v41[3] = &unk_1000912B0;
  v30 = _Block_copy(v41);

  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D590();
  _Block_release(v30);
  v31 = sub_10006D52C();
  v32(v31);
  sub_10006D324();
  v33(v21, v39);

  sub_10006D520();
  static DispatchWallTime.now()();
  sub_10006D4EC();
  + infix(_:_:)();
  v34 = sub_10006D4D8();
  v35 = v21(v34);
  sub_10006D550(v35);
  sub_100057048(v40);
  sub_10006D460();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v36 = sub_10006D448();
  v40(v36);
  v37 = sub_10006D500();
  v40(v37);
  (v21)(v24, v1);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t OS_dispatch_semaphore.wait(_:)()
{
  sub_10006D478();
  v0 = type metadata accessor for DispatchTime();
  sub_100011C54();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100011D10();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v11 = OS_dispatch_semaphore.wait(timeout:)();
  v10(v9, v0);
  return v11 & 1;
}

uint64_t static OS_dispatch_source.makeSignalSourceIgnored(signal:queue:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = SIG_IGN.getter();
  signal(v2, v3);
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  return static OS_dispatch_source.makeSignalSource(signal:queue:)();
}

void (*OS_dispatch_source_data_replace.doubleData.modify(uint64_t *a1, uint64_t a2))(Swift::UInt *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = OS_dispatch_source.data.getter();
  return sub_10006D1FC;
}

uint64_t sub_10006D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 216) = &a9 - v9;

  return type metadata accessor for DispatchWorkItemFlags();
}