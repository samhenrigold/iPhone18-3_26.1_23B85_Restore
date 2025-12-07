uint64_t sub_10073B594()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10073B5F0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10073B64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B6B0()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();

    v1 = sub_10073BA24(sub_10073C37C, v2);

    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10073B760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Transaction.capture()();
    (*(v4 + 56))();
  }

  return result;
}

uint64_t sub_10073B7C8()
{
  v1 = v0;
  v2 = sub_10073B6B0();
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10058A7BC;
  *(v4 + 24) = v2;
  v16 = sub_1000D2FB0;
  v17 = v4;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10013FE14;
  v15 = &unk_10162FD70;
  v5 = _Block_copy(&v12);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
LABEL_5:
    swift_once();
  }

  v6 = qword_10177C3C0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v12 = 0x656863534350583CLL;
  v13 = 0xEF203A72656C7564;
  String.append(_:)(v1[1]);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v12;
  v10 = v13;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v6, "Invalidating timer: %@", 22, 2, v7);
}

uint64_t sub_10073BA24(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v40);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v36 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3C0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  *(v15 + 56) = &type metadata for Double;
  *(v15 + 64) = &protocol witness table for Double;
  v16 = *(v3 + 48);
  *(v15 + 32) = *(v3 + 40);
  *(v15 + 96) = &type metadata for Double;
  *(v15 + 104) = &protocol witness table for Double;
  *(v15 + 72) = v16;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Creating XPCActivity frequency: %f gracePeriod: %f", v30, v31);

  v17 = *(v3 + 16);
  v42[0] = 0xD00000000000002BLL;
  v42[1] = 0x800000010135DE80;
  String.append(_:)(v17);
  v18 = v42[0];
  v19 = v42[1];
  v32 = v42[1];
  v33 = v42[0];
  static DispatchQoS.background.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  *(v21 + 24) = a2;
  type metadata accessor for XPCActivity();
  v22 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v22 + 40) = v23;
  swift_unknownObjectWeakInit();
  *(v22 + 88) = 0;
  v35 = sub_1000BC488();
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  strcpy(v42, "XPCActivity-");
  BYTE5(v42[1]) = 0;
  HIWORD(v42[1]) = -5120;

  v24._countAndFlagsBits = v18;
  v24._object = v19;
  String.append(_:)(v24);
  v34 = v12;
  v31 = *v42;
  v25 = v36;
  (*(v36 + 16))(v37, v12, v41);
  (*(v7 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  v42[0] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v32;
  v28 = v33;
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = v27;
  *(v22 + 48) = sub_10073C36C;
  *(v22 + 56) = v20;
  *(v22 + 64) = sub_10073C374;
  *(v22 + 72) = v21;

  sub_100997398();

  (*(v25 + 8))(v34, v41);

  return v22;
}

uint64_t sub_10073BF00@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 2;
    goto LABEL_12;
  }

  if (v5 != 2)
  {

    goto LABEL_12;
  }

  v10 = *(result + 48);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(result + 40);

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 < 9.22337204e18)
  {
    v6 = v10;
    v7 = v11;
    v8 = 707;
    v4 = 1;
    v5 = 256;
LABEL_12:
    *a3 = v5;
    a3[1] = v4;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10073C058(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  Transaction.capture()();
  if (a3 == 3)
  {
    sub_1009971C0();
  }

  else if (a3 == 2)
  {
    a4(a1, a2);
    sub_1009971E8();
  }
}

uint64_t sub_10073C0D8()
{
  sub_10073B6B0();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v1 = static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C3C0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  _StringGuts.grow(_:)(18);

  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = 0x656863534350583CLL;
  *(v3 + 40) = 0xEF203A72656C7564;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Scheduling timer: %{public}@", 28, 2, v3);
}

uint64_t sub_10073C278()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10073C2E4()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x656863534350583CLL;
}

uint64_t sub_10073C384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000BC4D4(&qword_1016A8050, &qword_1013B7228);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_10073EB08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10073C518(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8028, &qword_1013B7218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10073E994();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for LegacyBeaconState(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_10073E9E8(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v9 + 44));
    v11[7] = 7;
    sub_1000BC4D4(&qword_1016A8038, &qword_1013B7220);
    sub_10073EA30();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10073C818(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8000, &qword_1013B7208);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_10073E88C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016A8010, &qword_1013B7210);
  sub_10073E8E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10073C974()
{
  if (*v0)
  {
    return 0x7461447472617473;
  }

  else
  {
    return 0x61446E6F63616562;
  }
}

uint64_t sub_10073C9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61446E6F63616562 && a2 == 0xEA00000000006174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
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

uint64_t sub_10073CAA4(uint64_t a1)
{
  v2 = sub_10073EB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CAE0(uint64_t a1)
{
  v2 = sub_10073EB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073CB3C()
{
  v1 = *v0;
  v2 = 0x614E6E6F63616562;
  v3 = 0x3050766461;
  if (v1 != 6)
  {
    v3 = 0x6E696E6F63616562;
  }

  v4 = 0x656E694D7369;
  if (v1 != 4)
  {
    v4 = 0x6574614472696170;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 2)
  {
    v5 = 0x6F69737265567766;
  }

  if (*v0)
  {
    v2 = 0x55556E6F63616562;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10073CC50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10073EEA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10073CC78(uint64_t a1)
{
  v2 = sub_10073E994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CCB4(uint64_t a1)
{
  v2 = sub_10073E994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F63616562 && a2 == 0xE700000000000000)
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

uint64_t sub_10073CDA8(uint64_t a1)
{
  v2 = sub_10073E88C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CDE4(uint64_t a1)
{
  v2 = sub_10073E88C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10073CE3C()
{
  v1 = objc_allocWithZone(FMStateCapture);

  v2 = [v1 init];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10073CFD8;
  *(v3 + 24) = v0;
  v6[4] = sub_10073CFE0;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10015013C;
  v6[3] = &unk_10162FDC0;
  v4 = _Block_copy(v6);

  [v2 setStateCaptureBlock:v4];
  _Block_release(v4);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_legacyStateCapture);
  *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_legacyStateCapture) = v2;
}

void sub_10073CF70(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = _swiftEmptyArrayStorage;
  v4 = objc_autoreleasePoolPush();
  sub_10073CFE8(a1, &v5);
  objc_autoreleasePoolPop(v4);
  *a2 = v5;
}

void sub_10073CFE8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDateFormat:v8];

  v9 = sub_100007F54();
  v10 = v9;
  v11 = v9[2];
  if (v11)
  {
    v12 = 0;
    v13 = (v9 + 4);
    while (v12 < v10[2])
    {
      sub_10001F280(v13, v14);
      v3 = objc_autoreleasePoolPush();
      sub_10073D130(a1, v14, a2, v7);
      if (v4)
      {
        goto LABEL_8;
      }

      v4 = 0;
      ++v12;
      sub_100007BAC(v14);
      objc_autoreleasePoolPop(v3);
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_100007BAC(v14);
    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_10073D130(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v216 = a4;
  v226 = a3;
  v217 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v217);
  v218 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for LegacyBeaconState(0);
  v227 = *(v225 - 8);
  v7 = __chkstk_darwin(v225);
  v210 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v213 = (&v208 - v10);
  v11 = __chkstk_darwin(v9);
  v209 = &v208 - v12;
  v13 = __chkstk_darwin(v11);
  v212 = (&v208 - v14);
  v15 = __chkstk_darwin(v13);
  v214 = &v208 - v16;
  v17 = __chkstk_darwin(v15);
  v215 = (&v208 - v18);
  v19 = __chkstk_darwin(v17);
  v208 = &v208 - v20;
  v21 = __chkstk_darwin(v19);
  v211 = &v208 - v22;
  v23 = __chkstk_darwin(v21);
  v222 = &v208 - v24;
  __chkstk_darwin(v23);
  v221 = (&v208 - v25);
  v26 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v26 - 8);
  v220 = &v208 - v27;
  v223 = type metadata accessor for OwnedBeaconRecord(0);
  v219 = *(v223 - 8);
  __chkstk_darwin(v223);
  v224 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v29 - 8);
  v230 = &v208 - v30;
  v31 = type metadata accessor for SharedBeaconRecord(0);
  v228 = *(v31 - 8);
  v229 = v31;
  __chkstk_darwin(v31);
  v231 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v242 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = &v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v36);
  v38 = &v208 - v37;
  v39 = type metadata accessor for BeaconNamingRecord(0);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v234 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 280);
  v43 = a2;
  v44 = a2[3];
  v45 = v43[4];
  v232 = v43;
  sub_1000035D0(v43, v44);
  (*(*(*(v45 + 8) + 8) + 32))(v44);
  v236 = v42;
  v237 = v35;
  v46 = v235;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v47 = v39;
  v48 = *(v242 + 8);
  v235 = v35;
  v233 = v33;
  v48(v35, v33);
  if ((*(v40 + 48))(v38, 1, v47) == 1)
  {
    return sub_10000B3A8(v38, &unk_1016B29E0, &unk_1013B70E0);
  }

  v50 = v38;
  v51 = v234;
  sub_100038E74(v50, v234, type metadata accessor for BeaconNamingRecord);
  v52 = v232;
  sub_10001F280(v232, v238);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v54 = v229;
  v53 = v230;
  v55 = swift_dynamicCast();
  v56 = *(v228 + 56);
  if (v55)
  {
    v56(v53, 0, 1, v54);
    v57 = v231;
    sub_100038E74(v53, v231, type metadata accessor for SharedBeaconRecord);
    v58 = (v51 + *(v47 + 32));
    v59 = *v58;
    v60 = v58[1];
    v61 = *(v54 + 20);
    v62 = v221;
    *v221 = v59;
    *(v62 + 8) = v60;
    v63 = v225;
    (*(v242 + 16))(v62 + *(v225 + 20), v57 + v61, v233);
    v64 = (v62 + v63[6]);
    *v64 = 0;
    v64[1] = 0;
    v65 = (v62 + v63[7]);
    *v65 = 0;
    v65[1] = 0;
    *(v62 + v63[8]) = 0;
    v66 = (v62 + v63[9]);
    *v66 = 0;
    v66[1] = 0;
    v67 = (v62 + v63[10]);
    *v67 = 0;
    v67[1] = 0;
    *(v62 + v63[11]) = _swiftEmptyArrayStorage;
    v68 = v222;
    sub_10003256C(v62, v222, type metadata accessor for LegacyBeaconState);
    v69 = v226;
    v70 = *v226;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v69 = v70;
    v72 = v227;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = sub_100A5DDF0(0, v70[2] + 1, 1, v70);
      *v69 = v70;
    }

    v74 = v70[2];
    v73 = v70[3];
    if (v74 >= v73 >> 1)
    {
      *v69 = sub_100A5DDF0((v73 > 1), v74 + 1, 1, v70);
    }

    sub_10002FEE8(v62, type metadata accessor for LegacyBeaconState);
    sub_10002FEE8(v231, type metadata accessor for SharedBeaconRecord);
    sub_10002FEE8(v51, type metadata accessor for BeaconNamingRecord);
    v75 = *v69;
    *(*v69 + 16) = v74 + 1;
    goto LABEL_9;
  }

  v56(v53, 1, 1, v54);
  sub_10000B3A8(v53, &unk_101698C30, &unk_101392630);
  sub_10001F280(v52, v238);
  v78 = v220;
  v79 = v223;
  v80 = swift_dynamicCast();
  v81 = *(v219 + 56);
  if (v80)
  {
    v82 = v78;
    v83 = v48;
    v81(v82, 0, 1, v79);
    v84 = v82;
    v85 = v224;
    sub_100038E74(v84, v224, type metadata accessor for OwnedBeaconRecord);
    v86 = v218;
    sub_10003256C(v85 + v79[6], v218, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v235 = *(v86 + 32);
        v184 = *(v86 + 40);
        v231 = v46;
        v232 = v184;

        v185 = (v51 + *(v47 + 32));
        v187 = *v185;
        v186 = v185[1];
        v188 = v224;
        v189 = v225;
        v190 = v211;
        (*(v242 + 16))(&v211[*(v225 + 20)], v224 + v79[5], v233);
        v191 = (v188 + v79[15]);
        v193 = *v191;
        v192 = v191[1];

        isa = Date._bridgeToObjectiveC()().super.isa;
        v195 = [v216 stringFromDate:isa];

        v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v198 = v197;

        *v190 = v187;
        v190[1] = v186;
        v199 = (v190 + v189[6]);
        v200 = v232;
        *v199 = v235;
        v199[1] = v200;
        v201 = (v190 + v189[7]);
        *v201 = v193;
        v201[1] = v192;
        *(v190 + v189[8]) = 1;
        v202 = (v190 + v189[9]);
        *v202 = v196;
        v202[1] = v198;
        v203 = (v190 + v189[10]);
        *v203 = 0;
        v203[1] = 0;
        *(v190 + v189[11]) = _swiftEmptyArrayStorage;
        v155 = v208;
        sub_10003256C(v190, v208, type metadata accessor for LegacyBeaconState);
        v156 = v226;
        v204 = *v226;
        v205 = swift_isUniquelyReferenced_nonNull_native();
        *v156 = v204;
        if ((v205 & 1) == 0)
        {
          v204 = sub_100A5DDF0(0, v204[2] + 1, 1, v204);
          *v156 = v204;
        }

        v159 = v227;
        v161 = v204[2];
        v206 = v204[3];
        v162 = v161 + 1;
        v163 = v234;
        if (v161 >= v206 >> 1)
        {
          *v156 = sub_100A5DDF0((v206 > 1), v161 + 1, 1, v204);
        }

        v164 = &v239;
        goto LABEL_44;
      }

      sub_10002FEE8(v86, type metadata accessor for StableIdentifier);
      v103 = (v51 + *(v47 + 32));
      v105 = *v103;
      v104 = v103[1];
      v106 = v79[5];

      v107 = v224;
      v108 = Date._bridgeToObjectiveC()().super.isa;
      v109 = [v216 stringFromDate:v108];

      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v112 = v111;

      v113 = v212;
      *v212 = v105;
      *(v113 + 8) = v104;
      v114 = v225;
      (*(v242 + 16))(v113 + *(v225 + 20), v107 + v106, v233);
      v115 = (v113 + v114[6]);
      *v115 = 0;
      v115[1] = 0;
      v116 = (v113 + v114[7]);
      *v116 = 0;
      v116[1] = 0;
      *(v113 + v114[8]) = 1;
      v117 = (v113 + v114[9]);
      *v117 = v110;
      v117[1] = v112;
      v118 = (v113 + v114[10]);
      *v118 = 0;
      v118[1] = 0;
      *(v113 + v114[11]) = _swiftEmptyArrayStorage;
      v68 = v209;
      sub_10003256C(v113, v209, type metadata accessor for LegacyBeaconState);
      v119 = v226;
      v120 = *v226;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      *v119 = v120;
      if ((v121 & 1) == 0)
      {
        v120 = sub_100A5DDF0(0, v120[2] + 1, 1, v120);
        *v119 = v120;
      }

      v72 = v227;
      v74 = v120[2];
      v122 = v120[3];
      v123 = v74 + 1;
      if (v74 >= v122 >> 1)
      {
        *v119 = sub_100A5DDF0((v122 > 1), v74 + 1, 1, v120);
      }

      v124 = &v240;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v88 = v47;
        v231 = v46;
        v125 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v126 = (v86 + *(v125 + 80));
        v128 = *v126;
        v127 = v126[1];
        v235 = v128;
        v232 = v127;

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v88 = v47;
        v231 = v46;
        v89 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v90 = (v86 + *(v89 + 80));
        v92 = *v90;
        v91 = v90[1];
        v235 = v92;
        v232 = v91;
LABEL_26:
        v83(v86, v233);
        v129 = static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v130 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_101385D80;
        v132 = v223;
        v133 = *(v223 + 20);
        v134 = v224;
        v135 = UUID.uuidString.getter();
        v137 = v136;
        *(v131 + 56) = &type metadata for String;
        *(v131 + 64) = sub_100008C00();
        *(v131 + 32) = v135;
        *(v131 + 40) = v137;
        os_log(_:dso:log:_:_:)(v129, &_mh_execute_header, v130, "setupLegacyStateCapture accessory: %@", 37, 2, v131);

        v138 = (v234 + *(v88 + 32));
        v140 = *v138;
        v139 = v138[1];
        v141 = (v134 + *(v132 + 60));
        v142 = v141[1];
        v230 = *v141;

        v143 = Date._bridgeToObjectiveC()().super.isa;
        v144 = [v216 stringFromDate:v143];

        v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v147 = v146;

        v148 = v215;
        *v215 = v140;
        *(v148 + 8) = v139;
        v149 = v225;
        (*(v242 + 16))(v148 + *(v225 + 20), v134 + v133, v233);
        v150 = (v148 + v149[6]);
        v151 = v232;
        *v150 = v235;
        v150[1] = v151;
        v152 = (v148 + v149[7]);
        *v152 = v230;
        v152[1] = v142;
        *(v148 + v149[8]) = 1;
        v153 = (v148 + v149[9]);
        *v153 = v145;
        v153[1] = v147;
        v154 = (v148 + v149[10]);
        *v154 = 0;
        v154[1] = 0;
        *(v148 + v149[11]) = _swiftEmptyArrayStorage;
        v155 = v214;
        sub_10003256C(v148, v214, type metadata accessor for LegacyBeaconState);
        v156 = v226;
        v157 = *v226;
        v158 = swift_isUniquelyReferenced_nonNull_native();
        *v156 = v157;
        if ((v158 & 1) == 0)
        {
          v157 = sub_100A5DDF0(0, v157[2] + 1, 1, v157);
          *v156 = v157;
        }

        v159 = v227;
        v161 = v157[2];
        v160 = v157[3];
        v162 = v161 + 1;
        v163 = v234;
        if (v161 >= v160 >> 1)
        {
          *v156 = sub_100A5DDF0((v160 > 1), v161 + 1, 1, v157);
        }

        v164 = &v242;
LABEL_44:
        sub_10002FEE8(*(v164 - 32), type metadata accessor for LegacyBeaconState);
        sub_10002FEE8(v224, type metadata accessor for OwnedBeaconRecord);
        sub_10002FEE8(v163, type metadata accessor for BeaconNamingRecord);
        v207 = *v156;
        *(v207 + 16) = v162;
        v76 = v207 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v161;
        v77 = v155;
        return sub_100038E74(v77, v76, type metadata accessor for LegacyBeaconState);
      }

      sub_10002FEE8(v86, type metadata accessor for StableIdentifier);
      v165 = (v51 + *(v47 + 32));
      v167 = *v165;
      v166 = v165[1];
      v168 = v79[5];

      v169 = v224;
      v170 = Date._bridgeToObjectiveC()().super.isa;
      v171 = [v216 stringFromDate:v170];

      v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v174 = v173;

      v175 = v213;
      *v213 = v167;
      *(v175 + 8) = v166;
      v176 = v225;
      (*(v242 + 16))(v175 + *(v225 + 20), v169 + v168, v233);
      v177 = (v175 + v176[6]);
      *v177 = 0;
      v177[1] = 0;
      v178 = (v175 + v176[7]);
      *v178 = 0;
      v178[1] = 0;
      *(v175 + v176[8]) = 1;
      v179 = (v175 + v176[9]);
      *v179 = v172;
      v179[1] = v174;
      v180 = (v175 + v176[10]);
      *v180 = 0;
      v180[1] = 0;
      *(v175 + v176[11]) = _swiftEmptyArrayStorage;
      v68 = v210;
      sub_10003256C(v175, v210, type metadata accessor for LegacyBeaconState);
      v119 = v226;
      v181 = *v226;
      v182 = swift_isUniquelyReferenced_nonNull_native();
      *v119 = v181;
      if ((v182 & 1) == 0)
      {
        v181 = sub_100A5DDF0(0, v181[2] + 1, 1, v181);
        *v119 = v181;
      }

      v72 = v227;
      v74 = v181[2];
      v183 = v181[3];
      v123 = v74 + 1;
      if (v74 >= v183 >> 1)
      {
        *v119 = sub_100A5DDF0((v183 > 1), v74 + 1, 1, v181);
      }

      v124 = &v241;
    }

    sub_10002FEE8(*(v124 - 32), type metadata accessor for LegacyBeaconState);
    sub_10002FEE8(v224, type metadata accessor for OwnedBeaconRecord);
    sub_10002FEE8(v51, type metadata accessor for BeaconNamingRecord);
    v75 = *v119;
    *(*v119 + 16) = v123;
LABEL_9:
    v76 = v75 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v74;
    v77 = v68;
    return sub_100038E74(v77, v76, type metadata accessor for LegacyBeaconState);
  }

  v93 = v48;
  v231 = v46;
  v81(v78, 1, 1, v79);
  sub_10000B3A8(v78, &unk_1016A9A20, &qword_10138B280);
  v94 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v95 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_101385D80;
  v98 = v52[3];
  v97 = v52[4];
  sub_1000035D0(v52, v98);
  v99 = v235;
  (*(*(*(v97 + 8) + 8) + 32))(v98);
  v100 = UUID.uuidString.getter();
  v102 = v101;
  v93(v99, v233);
  *(v96 + 56) = &type metadata for String;
  *(v96 + 64) = sub_100008C00();
  *(v96 + 32) = v100;
  *(v96 + 40) = v102;
  os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v95, "name record not found for %@", 28, 2, v96);

  return sub_10002FEE8(v234, type metadata accessor for BeaconNamingRecord);
}

uint64_t type metadata accessor for LegacyBeaconState(uint64_t a1)
{
  result = qword_1016A7FA8;
  if (!qword_1016A7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073E68C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10073E794(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10073E794(319, &unk_1016A7FB8, &type metadata for LegacyBeaconingKey, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10073E794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10073E7E4(uint64_t a1, int a2)
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

uint64_t sub_10073E82C(uint64_t result, int a2, int a3)
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

unint64_t sub_10073E88C()
{
  result = qword_1016A8008;
  if (!qword_1016A8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8008);
  }

  return result;
}

unint64_t sub_10073E8E0()
{
  result = qword_1016A8018;
  if (!qword_1016A8018)
  {
    sub_1000BC580(&qword_1016A8010, &qword_1013B7210);
    sub_10073E9E8(&qword_1016A8020, type metadata accessor for LegacyBeaconState, &unk_1013B71B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8018);
  }

  return result;
}

unint64_t sub_10073E994()
{
  result = qword_1016A8030;
  if (!qword_1016A8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8030);
  }

  return result;
}

uint64_t sub_10073E9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10073EA30()
{
  result = qword_1016A8040;
  if (!qword_1016A8040)
  {
    sub_1000BC580(&qword_1016A8038, &qword_1013B7220);
    sub_10073EAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8040);
  }

  return result;
}

unint64_t sub_10073EAB4()
{
  result = qword_1016A8048;
  if (!qword_1016A8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8048);
  }

  return result;
}

unint64_t sub_10073EB08()
{
  result = qword_1016A8058;
  if (!qword_1016A8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8058);
  }

  return result;
}

unint64_t sub_10073EB90()
{
  result = qword_1016A8060;
  if (!qword_1016A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8060);
  }

  return result;
}

unint64_t sub_10073EBE8()
{
  result = qword_1016A8068;
  if (!qword_1016A8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8068);
  }

  return result;
}

unint64_t sub_10073EC40()
{
  result = qword_1016A8070;
  if (!qword_1016A8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8070);
  }

  return result;
}

unint64_t sub_10073EC98()
{
  result = qword_1016A8078;
  if (!qword_1016A8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8078);
  }

  return result;
}

unint64_t sub_10073ECF0()
{
  result = qword_1016A8080;
  if (!qword_1016A8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8080);
  }

  return result;
}

unint64_t sub_10073ED48()
{
  result = qword_1016A8088;
  if (!qword_1016A8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8088);
  }

  return result;
}

unint64_t sub_10073EDA0()
{
  result = qword_1016A8090;
  if (!qword_1016A8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8090);
  }

  return result;
}

unint64_t sub_10073EDF8()
{
  result = qword_1016A8098;
  if (!qword_1016A8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8098);
  }

  return result;
}

unint64_t sub_10073EE50()
{
  result = qword_1016A80A0;
  if (!qword_1016A80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80A0);
  }

  return result;
}

uint64_t sub_10073EEA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6E6F63616562 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55556E6F63616562 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694D7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3050766461 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E696E6F63616562 && a2 == 0xED00007379654B67)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_10073F164(uint64_t a1)
{
  *(a1 + 8) = sub_10073F194();
  result = sub_10064D61C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10073F194()
{
  result = qword_1016A80A8;
  if (!qword_1016A80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80A8);
  }

  return result;
}

unint64_t sub_10073F1E8(uint64_t a1)
{
  *(a1 + 8) = sub_10073F218();
  result = sub_10073F26C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10073F218()
{
  result = qword_1016A80B0;
  if (!qword_1016A80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80B0);
  }

  return result;
}

unint64_t sub_10073F26C()
{
  result = qword_1016A80B8;
  if (!qword_1016A80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80B8);
  }

  return result;
}

uint64_t sub_10073F2C0(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v12 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v12, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, *(&v5 + 1));
  if (!v2)
  {
    v11 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[4];
    v5 = v1[4];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
  }

  return sub_100007BAC(v6);
}

__n128 sub_10073F50C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10073F558(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10073F558@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v45, v46);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v45);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v45, v46);
  v47 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v45, v46);
  v42 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v43 = v11;
  sub_10015049C(v45, v46);
  v40 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v41 = v12;
  sub_10015049C(v45, v46);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v16 = v47;
    if (!v15)
    {
      v17 = BYTE6(v8);
LABEL_13:
      v18 = v42;
      v19 = v43;
      goto LABEL_14;
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v17 = HIDWORD(v7) - v7;
    goto LABEL_13;
  }

  v16 = v47;
  v18 = v42;
  v19 = v43;
  if (v15 != 2)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = *(v7 + 16);
  v20 = *(v7 + 24);
  v22 = __OFSUB__(v20, v21);
  v17 = v20 - v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  if (v17 != 89)
  {
    goto LABEL_60;
  }

  if ((v10 >> 62) <= 1)
  {
    if (v10 >> 62 == 1)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (!__OFSUB__(HIDWORD(v16), v16))
      {
        v23 = v23;
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v10 >> 62 != 2)
  {
    goto LABEL_59;
  }

  v25 = *(v16 + 16);
  v24 = *(v16 + 24);
  v22 = __OFSUB__(v24, v25);
  v23 = v24 - v25;
  if (v22)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_21:
  if (v23 != 1040)
  {
    goto LABEL_59;
  }

  v26 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(v19);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v27) = HIDWORD(v18) - v18;
    if (!__OFSUB__(HIDWORD(v18), v18))
    {
      v27 = v27;
      goto LABEL_31;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v26 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v29 = *(v18 + 16);
  v28 = *(v18 + 24);
  v22 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v22)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v27 != 32)
  {
    goto LABEL_61;
  }

  v30 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(v14);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v31) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v31 = v31;
      goto LABEL_41;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v30 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = *(result + 16);
  v32 = *(result + 24);
  v22 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v22)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v31 != 100)
  {
    goto LABEL_62;
  }

  v34 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v41);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v35) = HIDWORD(v40) - v40;
    if (!__OFSUB__(HIDWORD(v40), v40))
    {
      v35 = v35;
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  if (v34 != 2)
  {
    goto LABEL_63;
  }

  v37 = *(v40 + 16);
  v36 = *(v40 + 24);
  v22 = __OFSUB__(v36, v37);
  v35 = v36 - v37;
  if (v22)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_51:
  if (v35 == 60)
  {
    v38 = v16;
    v39 = v18;
    v47 = result;
    v44 = v14;
    sub_100007BAC(v45);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v38;
    a2[3] = v10;
    a2[4] = v39;
    a2[5] = v19;
    a2[6] = v40;
    a2[7] = v41;
    a2[8] = v47;
    a2[9] = v44;
    return result;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10073F8F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
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

uint64_t sub_10073F94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupResponse(uint64_t a1)
{
  result = qword_1016A8118;
  if (!qword_1016A8118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073FA34(uint64_t a1)
{
  sub_1000E3404();
  if (v1 <= 0x3F)
  {
    sub_10073FACC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10073FACC(uint64_t a1)
{
  if (!qword_1016A8128)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A8128);
    }
  }
}

uint64_t sub_10073FB24(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8180, &qword_1013B7950);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10074035C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for OfflineLostModeInfoLookupResponse(0);
    v8[10] = 5;
    type metadata accessor for URL();
    sub_100740470(&qword_1016A8188, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10073FD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v29 = sub_1000BC4D4(&qword_1016A8168, &qword_1013B7948);
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v25 - v8;
  v10 = type metadata accessor for OfflineLostModeInfoLookupResponse(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  sub_1000035D0(a1, v13);
  sub_10074035C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v30);
  }

  v14 = v28;
  v36 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 1) = v16;
  v35 = 1;
  v17 = v7;
  v12[16] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v34 = 2;
  *(v12 + 3) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 4) = v18;
  v33 = 3;
  *(v12 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 6) = v19;
  v32 = 4;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = 0;
  v26 = 0;
  *(v12 + 7) = v20;
  *(v12 + 8) = v21;
  type metadata accessor for URL();
  v31 = 5;
  sub_100740470(&qword_1016A8178, &protocol conformance descriptor for URL);
  v22 = v29;
  v23 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v9, v22);
  v27 = v23;
  if (v23)
  {
    sub_100007BAC(v30);
    v24 = v26;

    if (!v24)
    {
    }
  }

  else
  {
    sub_1000D55F0(v6, &v12[*(v10 + 36)]);
    sub_1007403B0(v12, v14);
    sub_100007BAC(v30);
    return sub_100740414(v12);
  }
}

unint64_t sub_1007401AC()
{
  v1 = *v0;
  v2 = 0x6D754E656E6F6870;
  v3 = 0xD000000000000010;
  v4 = 0x7373654D74736F6CLL;
  if (v1 != 4)
  {
    v4 = 0x48746C7561666564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F4D74736F4C6E69;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10074028C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007405CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1007402B4(uint64_t a1)
{
  v2 = sub_10074035C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007402F0(uint64_t a1)
{
  v2 = sub_10074035C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10074035C()
{
  result = qword_1016A8170;
  if (!qword_1016A8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8170);
  }

  return result;
}

uint64_t sub_1007403B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLostModeInfoLookupResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100740414(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLostModeInfoLookupResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100740470(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007404C8()
{
  result = qword_1016A8190;
  if (!qword_1016A8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8190);
  }

  return result;
}

unint64_t sub_100740520()
{
  result = qword_1016A8198;
  if (!qword_1016A8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8198);
  }

  return result;
}

unint64_t sub_100740578()
{
  result = qword_1016A81A0;
  if (!qword_1016A81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81A0);
  }

  return result;
}

uint64_t sub_1007405CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4D74736F4C6E69 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135DF40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373654D74736F6CLL && a2 == 0xEF74786554656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10074080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746143656C6F72 && a2 == 0xEE00736569726F67)
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

uint64_t sub_10074089C(uint64_t a1)
{
  v2 = sub_1007413A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007408D8(uint64_t a1)
{
  v2 = sub_1007413A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100740914@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1007411F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100740940(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A81D8, &qword_1013B7C48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100741780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100740AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a3;
  v13[2] = a4;
  v8 = sub_1000BC4D4(&qword_1016A8208, &qword_1013B7C60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100741B58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[3] = a5;
    v14 = 2;
    sub_1000BC4D4(&qword_1016A81F0, &qword_1013B7C58);
    sub_100741C7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100740CE0()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6A6F6D45656C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C6F72;
  }
}

uint64_t sub_100740D34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100741450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100740D5C(uint64_t a1)
{
  v2 = sub_100741780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100740D98(uint64_t a1)
{
  v2 = sub_100741780();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100740DD4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10074156C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100740E34(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100740EE8()
{
  v1 = 0x73656C6F72;
  if (*v0 == 1)
  {
    v1 = 0x79726F6765746163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_100740F3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007417D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100740F64(uint64_t a1)
{
  v2 = sub_100741B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100740FA0(uint64_t a1)
{
  v2 = sub_100741B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100740FDC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1007418F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10074102C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10038F8F4(v2, v3);
}

uint64_t sub_1007410C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100741108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100741160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1007411A8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *sub_1007411F8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A81A8, &qword_1013B7C38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1007413A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    sub_100741BAC(&qword_1016A81B8, &qword_101697EA0, &qword_10138EB60, sub_1007413FC);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1007413A8()
{
  result = qword_1016A81B0;
  if (!qword_1016A81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81B0);
  }

  return result;
}

unint64_t sub_1007413FC()
{
  result = qword_1016A81C0;
  if (!qword_1016A81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81C0);
  }

  return result;
}

uint64_t sub_100741450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C6F72 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6A6F6D45656C6F72 && a2 == 0xE900000000000069)
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

uint64_t sub_10074156C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A81C8, &qword_1013B7C40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100741780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v21 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100007BAC(a1);
  v18 = v20;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v16;
  return result;
}

unint64_t sub_100741780()
{
  result = qword_1016A81D0;
  if (!qword_1016A81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81D0);
  }

  return result;
}

uint64_t sub_1007417D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C6F72 && a2 == 0xE500000000000000)
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

uint64_t sub_1007418F4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A81E0, &qword_1013B7C50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100741B58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BC4D4(&qword_1016A81F0, &qword_1013B7C58);
    v9[29] = 2;
    sub_100741BAC(&qword_1016A81F8, &qword_1016A81F0, &qword_1013B7C58, sub_100741C28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100741B58()
{
  result = qword_1016A81E8;
  if (!qword_1016A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81E8);
  }

  return result;
}

uint64_t sub_100741BAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100741C28()
{
  result = qword_1016A8200;
  if (!qword_1016A8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8200);
  }

  return result;
}

unint64_t sub_100741C7C()
{
  result = qword_1016A8210;
  if (!qword_1016A8210)
  {
    sub_1000BC580(&qword_1016A81F0, &qword_1013B7C58);
    sub_100741D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8210);
  }

  return result;
}

unint64_t sub_100741D00()
{
  result = qword_1016A8218;
  if (!qword_1016A8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8218);
  }

  return result;
}

unint64_t sub_100741D88()
{
  result = qword_1016A8220;
  if (!qword_1016A8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8220);
  }

  return result;
}

unint64_t sub_100741DE0()
{
  result = qword_1016A8228;
  if (!qword_1016A8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8228);
  }

  return result;
}

unint64_t sub_100741E38()
{
  result = qword_1016A8230;
  if (!qword_1016A8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8230);
  }

  return result;
}

unint64_t sub_100741E90()
{
  result = qword_1016A8238;
  if (!qword_1016A8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8238);
  }

  return result;
}

unint64_t sub_100741EE8()
{
  result = qword_1016A8240;
  if (!qword_1016A8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8240);
  }

  return result;
}

unint64_t sub_100741F40()
{
  result = qword_1016A8248;
  if (!qword_1016A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8248);
  }

  return result;
}

unint64_t sub_100741F98()
{
  result = qword_1016A8250;
  if (!qword_1016A8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8250);
  }

  return result;
}

unint64_t sub_100741FF0()
{
  result = qword_1016A8258;
  if (!qword_1016A8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8258);
  }

  return result;
}

unint64_t sub_100742048()
{
  result = qword_1016A8260;
  if (!qword_1016A8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8260);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateStateInfo(uint64_t a1)
{
  result = qword_1016A82C0;
  if (!qword_1016A82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074211C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &unk_1016A82D0, &type metadata for AccessoryFirmwareUpdateStateInfo.AccessoryFirmwareUpdateError);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1007421F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100742240(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100742354()
{
  result = qword_1016A8310;
  if (!qword_1016A8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8310);
  }

  return result;
}

uint64_t sub_1007423A8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(56);
  v4._object = 0x800000010135DFB0;
  v4._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x6F43726F72726520;
  v6._object = 0xEB00000000206564;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100742484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_1000BC4D4(&qword_1016A8340, &qword_1013B8298);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_1007434A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100742618()
{
  if (*v0)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x6D6F44726F727265;
  }
}

uint64_t sub_100742660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
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

uint64_t sub_100742748(uint64_t a1)
{
  v2 = sub_1007434A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100742784(uint64_t a1)
{
  v2 = sub_1007434A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007427C0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1007432C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_100742810(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int sub_10074286C()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1007428D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100742908(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100742978()
{
  result = qword_1016A8318;
  if (!qword_1016A8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8318);
  }

  return result;
}

uint64_t sub_1007429CC()
{
  _StringGuts.grow(_:)(117);
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  v0._object = 0x800000010135DF60;
  String.append(_:)(v0);
  type metadata accessor for UUID();
  sub_100743178(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x657461647075202CLL;
  v2._object = 0xEE00206574617453;
  String.append(_:)(v2);
  type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x6470557473616C20;
  v3._object = 0xEC00000020657461;
  String.append(_:)(v3);
  type metadata accessor for Date();
  sub_100743178(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x800000010135DF90;
  v5._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v5);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x4565746164707520;
  v6._object = 0xED000020726F7272;
  String.append(_:)(v6);
  sub_1000BC4D4(&qword_1016A8328, &qword_1013B8288);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_100742C68(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  Hasher._combine(_:)(*(v1 + updated[5]));
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + updated[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = v1 + updated[8];
  if (*(v3 + 8))
  {
    v4 = *(v3 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100742DEC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  Hasher._combine(_:)(*(v0 + updated[5]));
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + updated[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0 + updated[8];
  if (*(v2 + 8))
  {
    v3 = *(v2 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100742F94(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[5]));
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + a2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = v2 + a2[8];
  if (*(v4 + 8))
  {
    v5 = *(v4 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100743178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007431C0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  if (*(a1 + *(updated + 20)) != *(a2 + *(updated + 20)))
  {
    return 0;
  }

  v5 = updated;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(v5 + 32);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (v16)
    {
      v17 = v13[2];
      v18 = v15[2];
      v19 = *v13 == *v15 && v14 == v16;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v17 == v18)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1007432C8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8330, &qword_1013B8290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007434A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_1007434A0()
{
  result = qword_1016A8338;
  if (!qword_1016A8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8338);
  }

  return result;
}

unint64_t sub_1007434F4()
{
  result = qword_1016A8348;
  if (!qword_1016A8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8348);
  }

  return result;
}

unint64_t sub_10074355C()
{
  result = qword_1016A8350;
  if (!qword_1016A8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8350);
  }

  return result;
}

unint64_t sub_1007435B4()
{
  result = qword_1016A8358;
  if (!qword_1016A8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8358);
  }

  return result;
}

unint64_t sub_10074360C()
{
  result = qword_1016A8360;
  if (!qword_1016A8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8360);
  }

  return result;
}

uint64_t sub_100743714@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694858 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000076D4(v2, qword_10177B0A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10074396C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  v7 = sub_1000076D4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100743A08()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B090);
  v1 = sub_1000076D4(v0, qword_10177B090);
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B5D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100743AD0()
{
  *(v1 + 16) = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100743B6C, v0, 0);
}

uint64_t sub_100743B6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013B8548, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v4(v2, 1, 1, v3);
  v7 = sub_100748690(&qword_1016A8450, v6, type metadata accessor for ObservationPruneSchedulerService, &unk_1013B84D8);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_1013B8558, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100743D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  v4[3] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v4[4] = swift_task_alloc();
  v5 = type metadata accessor for FinderStateInfo(0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696C48, &unk_10138B590);
  v4[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[16] = v8;
  *v8 = v4;
  v8[1] = sub_100743FB4;

  return daemon.getter();
}

uint64_t sub_100743FB4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100748690(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_100744198;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100744198(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100744D0C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v4;
    v5[1] = sub_100744324;
    v6 = v3[12];

    return sub_1008488EC(v6);
  }
}

uint64_t sub_100744324()
{

  return _swift_task_switch(sub_100744420, 0, 0);
}

uint64_t sub_100744420()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1007444FC;
  v5 = v0[13];
  v6 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1007444FC()
{

  return _swift_task_switch(sub_1007445F8, 0, 0);
}

uint64_t sub_1007445F8()
{
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  v9 = v1 + *(v2 + 48);
  v10 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_1000DD6A4(v9 + *(v10 + 48), v5);
  sub_100748840(v9, v8);
  v11 = (*(v7 + 48))(v8, 1, v6);
  v12 = v0[8];
  if (v11 == 1)
  {
    v13 = v0[4];
    sub_1000DD708(v0[8]);
    sub_10000B3A8(v13, &qword_101696C40, &unk_1013B8520);
LABEL_12:
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1007444FC;
    v18 = v0[13];
    v19 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v18);
  }

  v14 = v0[7];
  sub_1000DD6A4(v0[4], v14);
  if (*v14 == *v12)
  {
    v16 = v0[8];
    sub_1000DD708(v0[7]);
    sub_1000DD708(v16);
    goto LABEL_12;
  }

  v15 = v0[2];

  return _swift_task_switch(sub_1007448C8, v15, 0);
}

uint64_t sub_1007448C8()
{
  *(v0 + 184) = *(*(v0 + 16) + 128);

  return _swift_task_switch(sub_10074493C, 0, 0);
}

uint64_t sub_10074493C()
{
  if (v0[23])
  {
    v10 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_100744AE0;
    v2 = v0[3];

    return v10(v2);
  }

  else
  {
    v4 = v0[8];
    v5 = v0[3];
    sub_1000DD708(v0[7]);
    sub_1000DD708(v4);
    v6 = type metadata accessor for XPCActivity.State();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_10000B3A8(v5, &unk_10169BA88, &qword_101395670);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1007444FC;
    v8 = v0[13];
    v9 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
  }
}

uint64_t sub_100744AE0()
{

  return _swift_task_switch(sub_100744BF8, 0, 0);
}

uint64_t sub_100744BF8()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1000DD708(v0[7]);
  sub_1000DD708(v1);
  v3 = type metadata accessor for XPCActivity.State();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_10000B3A8(v2, &unk_10169BA88, &qword_101395670);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1007444FC;
  v5 = v0[13];
  v6 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_100744D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100744DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100744E64();
}

uint64_t sub_100744E64()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for DispatchQoS();
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100744F4C;

  return daemon.getter();
}

uint64_t sub_100744F4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100748690(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100745130;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100745130(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v1)
  {

    v7 = sub_100745578;
  }

  else
  {

    *(v5 + 64) = a1;
    v7 = sub_100745298;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100745298()
{
  v1 = v0[8];
  v2 = v0[3];
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1007453E4;
  v6 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000003ALL, 0x800000010135E020, v6, &unk_1013B8508, v3, &unk_1013B8518, v4);
}

uint64_t sub_1007453E4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1007454FC, v2, 0);
}

uint64_t sub_1007454FC()
{
  v1 = v0[10];
  v2 = v0[2];

  *(v2 + 128) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100745578()
{
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100745694(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for XPCActivity.Priority();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Criteria();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[19] = v6;
  *v6 = v2;
  v6[1] = sub_1007458C8;

  return daemon.getter();
}

uint64_t sub_1007458C8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100748690(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_100745AAC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100745AAC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100746990;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_100745C00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100745C00()
{
  v1 = v0[22];
  if (v1)
  {

    return _swift_task_switch(sub_100745DF4, v1, 0);
  }

  else
  {
    if (qword_101694850 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B090);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109376;
      *(v5 + 8) = 1024;
      *(v5 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v5, 0xEu);
    }

    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[3];

    (*(v7 + 56))(v8, 1, 1, v6);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100745DF4()
{
  v1 = v0[22];
  v2 = sub_100748690(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_100745F0C;
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF74, v4, v6);
}

uint64_t sub_100745F0C()
{

  return _swift_task_switch(sub_100746024, 0, 0);
}

uint64_t sub_100746024()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
    *(v0 + 209) = 0;
    v3 = *(v0 + 176);

    return _swift_task_switch(sub_100746310, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_100746160;

    return sub_1008DC594();
  }
}

uint64_t sub_100746160(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100746B30;
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v5 = sub_100746290;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100746290()
{
  sub_1000DD708(*(v0 + 144));
  *(v0 + 209) = *(v0 + 208);
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100746310, v1, 0);
}

uint64_t sub_100746310()
{
  v1 = v0[22];
  v2 = sub_100748690(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100746424;
  v4 = v0[22];
  v6 = v0[16];
  v5 = v0[17];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v4, v6);
}

uint64_t sub_100746424()
{

  return _swift_task_switch(sub_10074653C, 0, 0);
}

uint64_t sub_10074653C()
{
  v1 = *(v0 + 136);
  v2 = type metadata accessor for FinderStateInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 209);
  if (v3 != 1)
  {
    v12 = *v1;
    sub_1000DD708(v1);
    if (((v12 | v4) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    sub_100748620(*(v0 + 32), v15);
    v16 = (*(v14 + 48))(v15, 1, v13);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    if (v16 == 1)
    {
      v20 = *(v0 + 72);
      v21 = *(v0 + 80);
      v22 = *(v0 + 64);
      v29 = *(v0 + 112);
      v30 = *(v0 + 24);
      sub_10000B3A8(v19, &qword_10169E370, &qword_1013BA3F0);
      (*(v20 + 104))(v21, enum case for XPCActivity.Priority.maintenance(_:), v22);
      sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_101385D80;
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      *(v0 + 16) = v23;
      sub_100748690(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
      sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
      sub_100359D10();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

      (*(v18 + 32))(v30, v29, v17);
      (*(v18 + 56))(v30, 0, 1, v17);
    }

    else
    {
      v24 = *(v0 + 120);
      v25 = *(v0 + 24);

      v26 = *(v18 + 32);
      v26(v24, v19, v17);
      v26(v25, v24, v17);
      (*(v18 + 56))(v25, 0, 1, v17);
    }

    goto LABEL_12;
  }

  sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B090);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 8) = 1024;
    *(v8 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v8, 0xEu);
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 24);

  (*(v10 + 56))(v11, 1, 1, v9);
LABEL_12:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100746990()
{
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 8) = 1024;
    *(v4 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v4, 0xEu);
  }

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[3];

  (*(v6 + 56))(v7, 1, 1, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100746B30()
{
  sub_1000DD708(*(v0 + 144));
  *(v0 + 209) = 0;
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100746310, v1, 0);
}

uint64_t sub_100746BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100746C7C, 0, 0);
}

uint64_t sub_100746C7C()
{
  v37 = v0;
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[10] = v5;
  v0[11] = sub_1000076D4(v5, qword_10177B090);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    buf = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *buf = 136315138;
    sub_100748690(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v33 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v36);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v33, "Publisher prune activity state: %s.", buf, 0xCu);
    sub_100007BAC(v35);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  v6(v20, v0[4], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v24 = v0[5];
      OS_dispatch_queue.sync<A>(execute:)();
      v0[12] = 0;
      v0[13] = sub_1010749D4(v0[2]);

      v25 = sub_10074716C;
      v26 = v24;
      v27 = 0;
      goto LABEL_14;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v28 = dispatch thunk of Actor.unownedExecutor.getter();
      v30 = v29;
      v25 = sub_100747104;
      v26 = v28;
      v27 = v30;
LABEL_14:

      return _swift_task_switch(v25, v26, v27);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v17(v0[8], v0[6]);
    }
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_100747104()
{
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1007488B0, 0, 0);
}

uint64_t sub_10074716C()
{
  v1 = *(v0 + 96);
  v2 = sub_1010D1AD8(*(v0 + 104));
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  *(v0 + 184) = v3;
  if (v1)
  {
    v4 = sub_100747954;
  }

  else
  {

    v4 = sub_100747204;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100747204()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 80), qword_10177B5D8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    *(v5 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Scheduled observation purge removed %ld observations.", v5, 0xCu);
  }

  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_100747370;

  return sub_1010CE4F4();
}

uint64_t sub_100747370(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_100747B1C;
  }

  else
  {
    v4 = sub_100747484;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100747484(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 136);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %lld redundant reconciled observations.", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  *v6 = v1;
  v6[1] = sub_10074759C;

  return sub_1010CCED0();
}

uint64_t sub_10074759C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100747CDC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 168) = v3;
    *v3 = v2;
    v3[1] = sub_100747708;

    return sub_1010D1C20();
  }
}

uint64_t sub_100747708()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100747E9C;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    type metadata accessor for XPCActivity();
    sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v2 = sub_100747884;
    v3 = v5;
    v4 = v7;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100747884()
{
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1007478EC, 0, 0);
}

uint64_t sub_1007478EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100747954()
{

  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to run scheduled obsevation purge: %{public}@.", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v6, v5);
}

uint64_t sub_100747B1C()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to run scheduled obsevation purge: %{public}@.", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v6, v5);
}

uint64_t sub_100747CDC()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to run scheduled obsevation purge: %{public}@.", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v6, v5);
}

uint64_t sub_100747E9C()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to run scheduled obsevation purge: %{public}@.", v2, 0xCu);
    sub_10000B3A8(v3, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v6, v5);
}

uint64_t sub_100748080(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationPruneSchedulerService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100748128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ObservationPruneSchedulerService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1007481EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationPruneSchedulerService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100748294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100743AD0();
}

uint64_t sub_100748320(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ObservationPruneSchedulerService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1007483C8()
{
  type metadata accessor for ObservationPruneSchedulerService();
  sub_100748690(&qword_1016B1010, v0, type metadata accessor for ObservationPruneSchedulerService, &unk_1013B8478);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1007484C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100745694(a1, a2);
}

uint64_t sub_100748570(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100746BAC(a1, a2, v6);
}

uint64_t sub_100748620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100748690(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1007486D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100743D40(a1, v4, v5, v6);
}

uint64_t sub_10074878C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100744DD4();
}

uint64_t sub_100748840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100748978()
{
  result = qword_1016A8458;
  if (!qword_1016A8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8458);
  }

  return result;
}

uint64_t sub_1007489CC()
{
  if ((*v0 & 4) != 0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if ((*v0 & 4) != 0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0x203A4D6F427BLL;
}

unint64_t sub_100748A58()
{
  result = qword_1016A8460;
  if (!qword_1016A8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8460);
  }

  return result;
}

uint64_t sub_100748AAC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177B0A8);
  sub_1000076D4(v0, qword_10177B0A8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100748C08()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177B0C0);
  sub_1000076D4(v0, qword_10177B0C0);
  v1 = String.utf8Data.getter();
  v3 = v2;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  return sub_100016590(v1, v3);
}

Swift::Int sub_100748CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100748D24(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100748D78@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609CF0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100748E08@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101609D28, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100748E60(uint64_t a1)
{
  v2 = sub_100749B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100748E9C(uint64_t a1)
{
  v2 = sub_100749B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100748ED8@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694860 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_1000076D4(v2, qword_10177B0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_100748F80@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10074988C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100749028(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A85E8, &qword_1013B87D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100749B0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 48);
  v15 = *(v2 + 32);
  v16 = v8;
  v17 = *(v2 + 64);
  v18 = *(v2 + 80);
  v9 = *(v2 + 16);
  v13 = *v2;
  v14 = v9;
  sub_100749BB4(v2, v11);
  sub_100749BEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[2] = v15;
  v11[3] = v16;
  v11[4] = v17;
  v12 = v18;
  v11[0] = v13;
  v11[1] = v14;
  sub_100749C40(v11);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1007491D4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x4B664F6F4E78616DLL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000019;
    }

    v4 = 0xD000000000000016;
    if (!a1)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v5 = 0xD000000000000028;
    if (a1 != 9)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (a1 == 8)
    {
      return 0xD000000000000026;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 6)
    {
      v1 = 0xD000000000000028;
    }

    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100749358(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8620, &qword_1013B89D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10074A67C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100749608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100749E34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100749630(uint64_t a1)
{
  v2 = sub_10074A67C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074966C(uint64_t a1)
{
  v2 = sub_10074A67C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007496A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10074A1A0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100749750()
{
  type metadata accessor for OwnedDevicePublishPolicy();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_10177B0D8 = result;
  return result;
}

unint64_t sub_1007497B4(uint64_t a1)
{
  *(a1 + 8) = sub_1007497E4();
  result = sub_100749838();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1007497E4()
{
  result = qword_1016A85C0;
  if (!qword_1016A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85C0);
  }

  return result;
}

unint64_t sub_100749838()
{
  result = qword_1016A85C8;
  if (!qword_1016A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85C8);
  }

  return result;
}

uint64_t sub_10074988C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A85D0, &qword_1013B87C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100749B0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  sub_100749B60();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v37;
  if (v37)
  {
    v27 = v40;
    v28 = v41;
    v42 = v39;
    v12 = v36;
    v14 = v33;
    v13 = v34;
    v29 = v32;
    v9.i32[0] = v31;
    v30 = vmovl_u8(v9);
    v15 = v35;
    v16 = v8;
    v17 = v38;
    (*(v6 + 8))(v16, v5);
    v18 = v15;
    v19 = v27;
    v20 = v28;
    v21.i64[1] = v30.i64[1];
    v21.i64[0] = v30.i64[0] & 0xFF01FF01FF01FF01;
    v30 = v21;
  }

  else
  {
    v22 = v8;
    v17 = 808334129;
    v23 = (*(v6 + 8))(v22, v5);
    v12 = 808334897;
    v20 = 0xE300000000000000;
    v23.i64[0] = 0x1000100010001;
    v30 = v23;
    v11 = 0xE400000000000000;
    v18 = 1;
    v19 = 3157561;
    v13 = 0x417E133800000000;
    v14 = 0x416E133800000000;
    v29 = 5;
    v42 = 0xE400000000000000;
  }

  v24 = v18 & 1;
  result = sub_100007BAC(a1);
  *a2 = vuzp1_s8(*v30.i8, *v30.i8).u32[0];
  *(a2 + 8) = v29;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v24;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  v25 = v42;
  *(a2 + 56) = v17;
  *(a2 + 64) = v25;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  return result;
}

unint64_t sub_100749B0C()
{
  result = qword_1016A85D8;
  if (!qword_1016A85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85D8);
  }

  return result;
}

unint64_t sub_100749B60()
{
  result = qword_1016A85E0;
  if (!qword_1016A85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85E0);
  }

  return result;
}

unint64_t sub_100749BEC()
{
  result = qword_1016A85F0;
  if (!qword_1016A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85F0);
  }

  return result;
}

uint64_t sub_100749C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100749CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100749D30()
{
  result = qword_1016A85F8;
  if (!qword_1016A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85F8);
  }

  return result;
}

unint64_t sub_100749D88()
{
  result = qword_1016A8600;
  if (!qword_1016A8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8600);
  }

  return result;
}

unint64_t sub_100749DE0()
{
  result = qword_1016A8608;
  if (!qword_1016A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8608);
  }

  return result;
}

uint64_t sub_100749E34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000017 && 0x800000010135E100 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B664F6F4E78616DLL && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000028 && 0x800000010135E1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010135E1F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000028 && 0x800000010135E220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000010135E250 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10074A1A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8610, &qword_1013B89C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10074A67C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v48[0] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 2;
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 3;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 4;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v48[0] = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v48[0] = 7;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v48[0] = 8;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v15;
  v48[0] = 9;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v16;
  v60 = 10;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v17;
  v32 = v9 & 1;
  v31 = v10 & 1;
  v18 = v59 & 1;
  HIDWORD(v30) = v59 & 1;
  v19 = v41 & 1;
  v59 = v41 & 1;
  v20 = v37 & 1;
  v41 = v37 & 1;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v42) = v32;
  BYTE1(v42) = v31;
  BYTE2(v42) = v18;
  BYTE3(v42) = v19;
  v21 = v40;
  *(&v42 + 1) = v40;
  *&v43 = v12;
  *(&v43 + 1) = v14;
  LOBYTE(v44) = v20;
  v22 = v38;
  v23 = v39;
  *(&v44 + 1) = v38;
  *&v45 = v39;
  v24 = v35;
  v25 = v36;
  *(&v45 + 1) = v35;
  *&v46 = v36;
  v26 = v33;
  *(&v46 + 1) = v34;
  v47 = v33;
  sub_10074A6D0(&v42, v48);
  sub_100007BAC(a1);
  v48[0] = v32;
  v48[1] = v31;
  v48[2] = BYTE4(v30);
  v48[3] = v59;
  v49 = v21;
  v50 = v12;
  v51 = v14;
  v52 = v41;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  v57 = v34;
  v58 = v26;
  result = sub_100749C40(v48);
  v28 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v28;
  *(a2 + 64) = v46;
  *(a2 + 80) = v47;
  v29 = v43;
  *a2 = v42;
  *(a2 + 16) = v29;
  return result;
}

unint64_t sub_10074A67C()
{
  result = qword_1016A8618;
  if (!qword_1016A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8618);
  }

  return result;
}

unint64_t sub_10074A71C()
{
  result = qword_1016A8628;
  if (!qword_1016A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8628);
  }

  return result;
}

unint64_t sub_10074A774()
{
  result = qword_1016A8630;
  if (!qword_1016A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8630);
  }

  return result;
}

unint64_t sub_10074A7CC()
{
  result = qword_1016A8638;
  if (!qword_1016A8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8638);
  }

  return result;
}

__n128 sub_10074A828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10074A844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10074A88C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10074A934(uint64_t a1)
{
  sub_1002359B8(319, &qword_1016A86A8, &type metadata for AccessoryInfoCapabilities);
  if (v1 <= 0x3F)
  {
    sub_10074AAE0(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    if (v2 <= 0x3F)
    {
      sub_10074AAE0(319, &qword_1016A86B8, type metadata accessor for AccessoryInfoResponseContent.Assets);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016A86C0, &type metadata for AccessoryInfoResponseContent.PublicKeys);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ServerStatusCode();
            if (v6 <= 0x3F)
            {
              sub_1002ECE54(319, &qword_1016A86C8, &unk_1016A86D0, "֫\n");
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10074AAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10074AB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10074AB9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *initializeBufferWithCopyOfBuffer for AccessoryInfoCapabilities(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryInfoCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[13])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryInfoCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10074ACB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10074AD00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10074AD8C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10074AE3C(uint64_t a1)
{
  sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169C548, &type metadata for UInt8);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016A8838, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_10074AAE0(319, &qword_1016A8128, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &unk_1016A0CD8, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &unk_1016A8848, &type metadata for Coordinates);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10074B008@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v1 - 8);
  v79 = &v77 - v2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = __chkstk_darwin(v3 - 8);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v82 = &v77 - v7;
  v8 = __chkstk_darwin(v6);
  v86 = &v77 - v9;
  v10 = __chkstk_darwin(v8);
  v87 = &v77 - v11;
  v12 = __chkstk_darwin(v10);
  v88 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v89 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v90 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v91 = &v77 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v77 - v21;
  v22 = __chkstk_darwin(v20);
  v93 = &v77 - v23;
  v24 = __chkstk_darwin(v22);
  v94 = &v77 - v25;
  v26 = __chkstk_darwin(v24);
  v95 = &v77 - v27;
  v28 = __chkstk_darwin(v26);
  v85 = &v77 - v29;
  v30 = __chkstk_darwin(v28);
  v84 = &v77 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v77 - v33;
  __chkstk_darwin(v32);
  v96 = &v77 - v35;
  v36 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v36 - 8);
  v38 = &v77 - v37;
  URL.init(string:)();
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = v40[6];
  result = v41(v34, 1, v39);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v43 = v40[4];
  v44 = v96;
  v81 = v40 + 4;
  v43(v96, v34, v39);
  v45 = v40[7];
  v45(v44, 0, 1, v39);
  v46 = v85;
  URL.init(string:)();
  result = v41(v46, 1, v39);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47 = v84;
  v78 = v43;
  v43(v84, v46, v39);
  v45(v47, 0, 1, v39);
  v85 = 0x800000010135E310;
  *v38 = 0xD000000000000017;
  *(v38 + 1) = 0x800000010135E2D0;
  *(v38 + 2) = 0x6E6F796E6143;
  *(v38 + 3) = 0xE600000000000000;
  strcpy(v38 + 32, "Endurace CF7");
  v38[45] = 0;
  *(v38 + 23) = -5120;
  *(v38 + 24) = 0;
  *(v38 + 56) = xmmword_1013B8AE0;
  *(v38 + 72) = xmmword_1013B8AF0;
  v38[88] = 0;
  v48 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  sub_1000D2AD8(v96, &v38[v48[11]], &unk_101696AC0, &qword_101390A60);
  sub_1000D2AD8(v47, &v38[v48[12]], &unk_101696AC0, &qword_101390A60);
  v49 = &v38[v48[13]];
  *v49 = 0;
  v49[8] = 0;
  v50 = &v38[v48[14]];
  *v50 = 0x4034000000000000;
  v50[8] = 0;
  v51 = &v38[v48[15]];
  *v51 = 0xD000000000000012;
  *(v51 + 1) = 0x800000010135E2F0;
  *&v38[v48[16]] = &off_101608A68;
  v52 = &v38[v48[17]];
  v53 = v85;
  *v52 = 0xD000000000000010;
  *(v52 + 1) = v53;
  *&v38[v48[18]] = &off_101608A98;
  v54 = &v38[v48[19]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v54[16] = 1;
  v55 = &v38[v48[20]];
  *v55 = 0;
  *(v55 + 1) = 0;
  v55[16] = 1;
  (*(*(v48 - 1) + 56))(v38, 0, 1, v48);
  v56 = v95;
  URL.init(string:)();
  result = v41(v56, 1, v39);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v57 = v94;
  URL.init(string:)();
  result = v41(v57, 1, v39);
  v59 = v82;
  v58 = v83;
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v60 = v93;
  URL.init(string:)();
  result = v41(v60, 1, v39);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v61 = v92;
  URL.init(string:)();
  result = v41(v61, 1, v39);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v62 = v91;
  URL.init(string:)();
  result = v41(v62, 1, v39);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v63 = v90;
  URL.init(string:)();
  result = v41(v63, 1, v39);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v64 = v89;
  URL.init(string:)();
  result = v41(v64, 1, v39);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = v88;
  URL.init(string:)();
  result = v41(v65, 1, v39);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v66 = v87;
  URL.init(string:)();
  result = v41(v66, 1, v39);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v67 = v86;
  URL.init(string:)();
  result = v41(v67, 1, v39);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  URL.init(string:)();
  result = v41(v59, 1, v39);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  URL.init(string:)();
  result = v41(v58, 1, v39);
  if (result != 1)
  {
    v99 = 1;
    v68 = v79;
    v69 = v78;
    v78(v79, v95, v39);
    v70 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    v69(v68 + v70[5], v94, v39);
    v69(v68 + v70[6], v93, v39);
    v69(v68 + v70[7], v92, v39);
    v69(v68 + v70[8], v91, v39);
    v69(v68 + v70[9], v90, v39);
    v69(v68 + v70[10], v89, v39);
    v69(v68 + v70[11], v88, v39);
    v69(v68 + v70[12], v87, v39);
    v69(v68 + v70[13], v86, v39);
    v69(v68 + v70[14], v59, v39);
    v69(v68 + v70[15], v58, v39);
    (*(*(v70 - 1) + 56))(v68, 0, 1, v70);
    v71 = type metadata accessor for AccessoryInfoResponseContent(0);
    v72 = v71[10];
    v73 = enum case for ServerStatusCode.success(_:);
    v74 = type metadata accessor for ServerStatusCode();
    v75 = v80;
    (*(*(v74 - 8) + 104))(v80 + v72, v73, v74);
    *v75 = 0;
    *(v75 + 8) = v99;
    *(v75 + 9) = *v98;
    *(v75 + 12) = *&v98[3];
    *(v75 + 16) = 0x64695F6B636F6DLL;
    *(v75 + 24) = 0xE700000000000000;
    *(v75 + 32) = 1;
    *(v75 + 33) = 0x202020202020202;
    *(v75 + 41) = *v97;
    *(v75 + 44) = *&v97[3];
    *(v75 + 48) = 0u;
    *(v75 + 64) = 0u;
    *(v75 + 80) = 0x101010101010101;
    *(v75 + 92) = 0;
    *(v75 + 88) = 16843009;
    sub_1000D2AD8(v38, v75 + v71[6], &qword_1016A62E8, &qword_1013B3CB0);
    result = sub_1000D2AD8(v68, v75 + v71[7], &qword_1016A62E0, &unk_1013B8C30);
    *(v75 + v71[8]) = xmmword_1013B8B00;
    v76 = (v75 + v71[9]);
    v76[1] = 0u;
    v76[2] = 0u;
    *v76 = 0u;
    *(v75 + v71[11]) = 0;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10074BC38(unint64_t a1, unint64_t a2)
{
  v2 = a1 & 0x10000;
  if (a1)
  {
    v3 = v2 == 0;
    if ((a1 & 0x100) == 0)
    {
      v4 = 5;
      if (v3)
      {
        v4 = 1;
      }

      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_16:
      v4 |= 8uLL;
      goto LABEL_17;
    }

    v4 = 7;
    v5 = 3;
  }

  else
  {
    if ((a1 & 0x100) == 0)
    {
      v4 = v2 >> 14;
      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v3 = v2 == 0;
    v4 = 6;
    v5 = 2;
  }

  if (v3)
  {
    v4 = v5;
  }

  if ((a1 & 0x1000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v6 = vdupq_n_s64(a1);
  v7 = vandq_s8(vbicq_s8(vshlq_u64(v6, xmmword_1013B8B20), vceqq_s64(vandq_s8(v6, xmmword_1013B8B10), xmmword_1013B8B30)), xmmword_1013B8B40);
  v8 = vdupq_laneq_s64(v7, 1);
  if ((a1 & 0xFF000000000000) == 0x2000000000000)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a1 >> 41) & 0x80;
  }

  v10 = vorrq_s8(v7, v8).u64[0] | v9 | v4;
  v11 = v10 | 0x100;
  if ((a1 & 0x100000000000000) == 0)
  {
    v11 = v10;
  }

  if (HIBYTE(a1) != 2)
  {
    v10 = v11;
  }

  v12 = v10 | 0x400;
  if ((a2 & 1) == 0)
  {
    v12 = v10;
  }

  if (a2 != 2)
  {
    v10 = v12;
  }

  v13 = vdupq_n_s64(a2);
  v14.i64[0] = vshlq_u64(v13, xmmword_1013B8B80).u64[0];
  v14.i64[1] = vshlq_u64(*&v13, xmmword_1013B8B90).i64[1];
  v15 = vorrq_s8(vandq_s8(vbicq_s8(v14, vceqq_s64(vandq_s8(v13, xmmword_1013B8B50), xmmword_1013B8BB0)), xmmword_1013B8BC0), vandq_s8(vbicq_s8(vshlq_u64(v13, xmmword_1013B8B70), vceqq_s64(vandq_s8(v13, xmmword_1013B8B60), xmmword_1013B8BA0)), xmmword_1013B8BD0));
  return *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v10;
}

uint64_t sub_10074BDB4(void *a1, double a2, double a3)
{
  v5 = sub_1000BC4D4(&qword_1016A8A88, &qword_1013B9478);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100758CA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10074BF3C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_10074BF8C(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  Hasher._combine(_:)(*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

uint64_t sub_10074C008()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_10074C020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10074C0E8(uint64_t a1)
{
  v2 = sub_100758CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074C124(uint64_t a1)
{
  v2 = sub_100758CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10074C160(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_100755AF4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

Swift::Int sub_10074C1B8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

unint64_t sub_10074C25C()
{
  result = qword_1016A88B8;
  if (!qword_1016A88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88B8);
  }

  return result;
}

Swift::Int sub_10074C2B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10074C314(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10074C360@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609D60, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10074C3E0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101609D98, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10074C438(uint64_t a1)
{
  v2 = sub_100759B70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074C474(uint64_t a1)
{
  v2 = sub_100759B70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074C4B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1000BC4D4(&qword_1016A8C70, &qword_1013B9E88);
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for AccessoryInfoResponseType(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v20 - v10);
  sub_1000035D0(a1, a1[3]);
  sub_100759B70();
  v12 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v21 = v9;
    v22 = v11;
    v26 = v6;
    v13 = v24;
    v14 = v3;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v5;
    sub_1000035D0(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    v16 = v13;
    if (v15 == 200)
    {
      sub_1000035D0(v25, v25[3]);
      type metadata accessor for AccessoryInfoResponseContent(0);
      sub_100751E3C(&qword_1016A8C50, type metadata accessor for AccessoryInfoResponseContent, &unk_1013B927C);
      v17 = v21;
      dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
      (*(v16 + 8))(v20, v14);
      swift_storeEnumTagMultiPayload();
      v18 = v22;
      sub_100757BEC(v17, v22, type metadata accessor for AccessoryInfoResponseType);
    }

    else
    {
      (*(v13 + 8))(v20, v14);
      v18 = v22;
      *v22 = v15;
      swift_storeEnumTagMultiPayload();
    }

    sub_100007BAC(v25);
    sub_100757BEC(v18, v23, type metadata accessor for AccessoryInfoResponseType);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10074C814(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryInfoResponseType(0);
  __chkstk_darwin(v7);
  v9 = (&v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100758AD4(v2, v9, type metadata accessor for AccessoryInfoResponseType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = type metadata accessor for GenericError();
    sub_100751E3C(&qword_1016978C0, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    v13 = v12;
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v18, "Server error: ");
    HIBYTE(v18[1]) = -18;
    v19[6] = v10;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = v18[1];
    *v13 = v18[0];
    v13[1] = v15;
    (*(*(v11 - 8) + 104))(v13, enum case for GenericError.error(_:), v11);
    swift_willThrow();
  }

  else
  {
    sub_100757BEC(v9, v6, type metadata accessor for AccessoryInfoResponseContent);
    sub_10015049C(v19, v19[3]);
    sub_100751E3C(&qword_1016A8C80, type metadata accessor for AccessoryInfoResponseContent, &unk_1013B9254);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100757B8C(v6, type metadata accessor for AccessoryInfoResponseContent);
  }

  return sub_100007BAC(v19);
}

uint64_t sub_10074CB24()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v2 - 8);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AccessoryInfoResponseType(0);
  __chkstk_darwin(v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100758AD4(v1, v7, type metadata accessor for AccessoryInfoResponseType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v15 = 0x6572756C6961662ELL;
    v16 = 0xE900000000000028;
    v14[1] = v8;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return v15;
  }

  else
  {
    sub_100757BEC(v7, v4, type metadata accessor for AccessoryInfoResponseContent);
    v15 = 0x737365636375732ELL;
    v16 = 0xE900000000000028;
    String.append(_:)(v4[1]);
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v11 = v15;
    sub_100757B8C(v4, type metadata accessor for AccessoryInfoResponseContent);
  }

  return v11;
}

uint64_t sub_10074CCF8(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8C58, &qword_1013B9E80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_1007596E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016A8C18, &qword_1013B9E68);
  sub_100759AD4(&qword_1016A8C60, &qword_1016A8C68, &unk_1013B9558, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10074CE8C(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8C88, &qword_1013B9E90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_1007599E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016A8C40, &qword_1013B9E78);
  sub_100759A38(&qword_1016A8C90, &qword_1016A8C80, &unk_1013B9254, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10074D020(char a1)
{
  result = 0x7250796D646E6966;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6341454C45487369;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x6E6564646968;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0x6761547269417369;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5565636166727573;
      break;
    case 11:
      result = 0x496B726F7774656ELL;
      break;
    case 12:
      result = 0x70756B6F6F4C6E73;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10074D1B8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A28, &qword_1013B9448);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100758A2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[3] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10074D4B4(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  String.hash(into:)();
  v3 = *(v1 + 32);
  if (v3 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v3 & 1;
  }

  Hasher._combine(_:)(v4);
  v5 = *(v1 + 33);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = v5 & 1;
  }

  Hasher._combine(_:)(v6);
  v7 = *(v1 + 34);
  if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v7 & 1;
  }

  Hasher._combine(_:)(v8);
  v9 = *(v1 + 35);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  Hasher._combine(_:)(v10);
  v11 = *(v1 + 36);
  if (v11 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v11 & 1;
  }

  Hasher._combine(_:)(v12);
  v13 = *(v1 + 37);
  if (v13 == 2)
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v14 = v13 & 1;
  }

  Hasher._combine(_:)(v14);
  v15 = *(v1 + 38);
  if (v15 == 2)
  {
    v16 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v16 = v15 & 1;
  }

  Hasher._combine(_:)(v16);
  v17 = *(v1 + 39);
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v17 & 1;
  }

  Hasher._combine(_:)(v18);
  v19 = *(v1 + 40);
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v20 = v19 & 1;
  }

  Hasher._combine(_:)(v20);
  if (!*(v1 + 56))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 72))
    {
      goto LABEL_33;
    }

LABEL_37:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 72))
  {
    goto LABEL_37;
  }

LABEL_33:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_10074D6D8(char a1)
{
  result = 0x6E756F5379616C70;
  switch(a1)
  {
    case 1:
      result = 0x6C656363417475;
      break;
    case 2:
      v3 = 1281582702;
      goto LABEL_9;
    case 3:
      v3 = 1281715298;
LABEL_9:
      result = v3 | 0x756B6F6F00000000;
      break;
    case 4:
      result = 0x65646F4D74736F6CLL;
      break;
    case 5:
      result = 0x6857796669746F6ELL;
      break;
    case 6:
      result = 0x7449656D616E6572;
      break;
    case 7:
      result = 0x65676E6172;
      break;
    case 8:
      result = 0x6E69646E69467462;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 1886544245;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x325665676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10074D844(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016A8A10, &qword_1013B9438);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1007589D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v10[30] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[26] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[25] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[12] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10074DB48(uint64_t a1, unint64_t a2, unint64_t a3)
{
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(BYTE3(a2) & 1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = HIDWORD(a2) & 1;
  }

  Hasher._combine(_:)(v5);
  if ((a2 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = (a2 >> 40) & 1;
  }

  Hasher._combine(_:)(v6);
  if ((a2 & 0xFF000000000000) == 0x2000000000000)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = HIWORD(a2) & 1;
  }

  Hasher._combine(_:)(v7);
  if (HIBYTE(a2) == 2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = HIBYTE(a2) & 1;
  }

  Hasher._combine(_:)(v8);
  if (a3 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = a3 & 1;
  }

  Hasher._combine(_:)(v9);
  if ((a3 & 0xFF00) == 0x200)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = (a3 >> 8) & 1;
  }

  Hasher._combine(_:)(v10);
  if ((a3 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = WORD1(a3) & 1;
  }

  Hasher._combine(_:)(v11);
  if ((a3 & 0xFF000000) == 0x2000000)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = BYTE3(a3) & 1;
  }

  Hasher._combine(_:)(v12);
  if ((a3 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = HIDWORD(a3) & 1;
  }

  Hasher._combine(_:)(v13);
}

uint64_t sub_10074DD3C(uint64_t a1)
{
  v2 = sub_1007596E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DD78(uint64_t a1)
{
  v2 = sub_1007596E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10074DDB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100755CA4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10074DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
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

uint64_t sub_10074DE84(uint64_t a1)
{
  v2 = sub_1007599E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DEC0(uint64_t a1)
{
  v2 = sub_1007599E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10074DEFC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100755E60(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10074DF4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10075601C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10074DF74(uint64_t a1)
{
  v2 = sub_100758A2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DFB0(uint64_t a1)
{
  v2 = sub_100758A2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10074DFEC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10075644C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10074E050()
{
  Hasher.init(_seed:)();
  sub_10074D4B4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10074E094(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10074D4B4(v2);
  return Hasher._finalize()();
}

uint64_t sub_10074E0D0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100753FD8(v8, v9) & 1;
}

uint64_t sub_10074E134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007569D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10074E15C(uint64_t a1)
{
  v2 = sub_1007589D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074E198(uint64_t a1)
{
  v2 = sub_1007589D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10074E1D4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100756E00(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 1) = BYTE1(result) & 1;
    *(a1 + 2) = BYTE2(result) & 1;
    *(a1 + 3) = BYTE3(result) & 1;
    *(a1 + 4) = BYTE4(result);
    *(a1 + 5) = BYTE5(result);
    *(a1 + 6) = BYTE6(result);
    *(a1 + 7) = HIBYTE(result);
    *(a1 + 8) = v5;
    *(a1 + 10) = BYTE2(v5);
    *(a1 + 11) = BYTE3(v5);
    *(a1 + 12) = BYTE4(v5);
  }

  return result;
}

uint64_t sub_10074E260(void *a1)
{
  v2 = 256;
  if ((*(v1 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v1 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  return sub_10074D844(a1, (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | *v1 & 1 | v2 | v3 | v4 | (*(v1 + 7) << 56), *(v1 + 8) | (*(v1 + 12) << 32));
}

Swift::Int sub_10074E2E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 2);
  v9 = v0[12];
  v10 = v0[7];
  Hasher.init(_seed:)();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  sub_10074DB48(v15, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v11 | v12 | v13 | (v10 << 56), v8 | (v9 << 32));
  return Hasher._finalize()();
}

void sub_10074E3B8(uint64_t a1)
{
  v2 = 256;
  if ((*(v1 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v1 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  sub_10074DB48(a1, (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | *v1 & 1 | v2 | v3 | v4 | (*(v1 + 7) << 56), *(v1 + 8) | (*(v1 + 12) << 32));
}

Swift::Int sub_10074E42C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 2);
  v10 = v1[12];
  v11 = v1[7];
  Hasher.init(_seed:)();
  v12 = 256;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  sub_10074DB48(v16, (v6 << 32) | (v7 << 40) | (v8 << 48) | v2 & 1 | v12 | v13 | v14 | (v11 << 56), v9 | (v10 << 32));
  return Hasher._finalize()();
}

uint64_t sub_10074E4F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = 256;
  if (*(a1 + 1))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (*(a1 + 2))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if (*(a1 + 3))
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | *a1 & 1 | v6 | v8 | v10 | (*(a1 + 7) << 56);
  if ((*(a2 + 1) & 1) == 0)
  {
    v5 = 0;
  }

  if ((*(a2 + 2) & 1) == 0)
  {
    v7 = 0;
  }

  if ((*(a2 + 3) & 1) == 0)
  {
    v9 = 0;
  }

  v12 = (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48) | *a2 & 1 | v5 | v7 | v9 | (*(a2 + 7) << 56);
  v13 = *(a2 + 8) | (*(a2 + 12) << 32);

  return sub_1007542C0(v11, v3 | (v4 << 32), v12, v13);
}

uint64_t sub_10074E5F8()
{
  v12[8] = 0;
  _StringGuts.grow(_:)(52);
  v1._countAndFlagsBits = 0x3A6449747261703CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  *v12 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x7079547472617020;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x6D614E7472617020;
  v4._object = 0xEB00000000203A65;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 0x616D697250736920;
  v5._object = 0xEC000000203A7972;
  String.append(_:)(v5);
  v6 = v0[56];
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = 0xE500000000000000;
    v8 = 0x65736C6166;
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1702195828;
  }

  v9 = v7;
  String.append(_:)(*&v8);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return *&v12[1];
}

uint64_t sub_10074E770(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8930, &qword_1013B93F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1007576AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_10074E950(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = *(v1 + 56);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10074E9F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v1 = *(v0 + 56);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10074EABC(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x5479726574746162;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x52746C7561666564;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 15:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      v3 = 5;
      goto LABEL_16;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      v3 = 10;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_10074ECC0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8A68, &qword_1013B9468);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100758B3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    LOBYTE(v15) = 7;
    type metadata accessor for URL();
    sub_100751E3C(&qword_1016A8188, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v15 = *(v3 + v9[16]);
    v17 = 12;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_100758BE4(&qword_1016B2860, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v15 = *(v3 + v9[18]);
    v17 = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[19]);
    v11 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = 15;
    sub_100758C50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v9[20]);
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10074F1C0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 49))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v1 + 48);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(*(v1 + 56));
  if (*(v1 + 72))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 88) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v1 + 80);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v12);
  }

  v13 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  sub_1000D2A70(v1 + v13[11], v10, &unk_101696AC0, &qword_101390A60);
  v14 = *(v3 + 48);
  if (v14(v10, 1, v2) == 1)
  {
    v15 = v3;
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *(v3 + 32);
    v42 = v8;
    v17 = v43;
    v16(v43, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v15 = v3;
    v18 = v17;
    v8 = v42;
    (*(v3 + 8))(v18, v2);
  }

  sub_1000D2A70(v1 + v13[12], v8, &unk_101696AC0, &qword_101390A60);
  if (v14(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = v43;
    (*(v15 + 32))(v43, v8, v2);
    Hasher._combine(_:)(1u);
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v15 + 8))(v19, v2);
  }

  v20 = v1 + v13[13];
  if (*(v20 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    Hasher._combine(_:)(v22);
  }

  v23 = v1 + v13[14];
  if (*(v23 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    Hasher._combine(_:)(v25);
  }

  String.hash(into:)();
  v26 = *(v1 + v13[16]);
  if (v26)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v26 + 16));
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 40;
      do
      {

        String.hash(into:)();

        v28 += 16;
        --v27;
      }

      while (v27);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v29 = *(v1 + v13[18]);
  if (v29)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v29 + 16));
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + 40;
      do
      {

        String.hash(into:)();

        v31 += 16;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v32 = v1 + v13[19];
  if (*(v32 + 16))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = *v32;
    v33 = *(v32 + 8);
    Hasher._combine(_:)(1u);
    if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    Hasher._combine(_:)(v35);
    if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0;
    }

    Hasher._combine(_:)(v36);
  }

  v37 = v1 + v13[20];
  if (*(v37 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v39 = *v37;
    v38 = *(v37 + 8);
    Hasher._combine(_:)(1u);
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    Hasher._combine(_:)(v40);
    if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    Hasher._combine(_:)(v41);
  }
}

uint64_t sub_10074F7E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v64 = sub_1000BC4D4(&qword_1016A8A48, &qword_1013B9460);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v58 - v10;
  v12 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  __chkstk_darwin(v12);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v65 = a1;
  sub_1000035D0(a1, v15);
  sub_100758B3C();
  v63 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v65);
  }

  v16 = v9;
  v17 = v7;
  v19 = v62;
  v18 = v63;
  v60 = v14;
  LOBYTE(v66) = 0;
  v20 = v64;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v60;
  *v60 = v21;
  v23[1] = v24;
  LOBYTE(v66) = 1;
  v23[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v23[3] = v25;
  LOBYTE(v66) = 2;
  v58 = 0;
  v23[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v23[5] = v26;
  LOBYTE(v66) = 3;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v23 + 48) = v27;
  *(v23 + 49) = HIBYTE(v27) & 1;
  LOBYTE(v66) = 4;
  v23[7] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v66) = 5;
  v23[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23[9] = v29;
  LOBYTE(v66) = 6;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = 0;
  v23[10] = v30;
  *(v23 + 88) = v31 & 1;
  type metadata accessor for URL();
  LOBYTE(v66) = 7;
  sub_100751E3C(&qword_1016A8178, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v32 = v59;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = v32;
  if (v32)
  {
    (*(v19 + 8))(v18, v20);
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    sub_1000D2AD8(v16, v60 + v12[11], &unk_101696AC0, &qword_101390A60);
    LOBYTE(v66) = 8;
    v36 = v59;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v59 = v36;
    if (v36)
    {
      (*(v19 + 8))(v18, v20);
      v34 = 0;
      v35 = 0;
      v33 = 1;
    }

    else
    {
      sub_1000D2AD8(v17, v60 + v12[12], &unk_101696AC0, &qword_101390A60);
      LOBYTE(v66) = 9;
      v37 = v59;
      v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v59 = v37;
      if (v37)
      {
        (*(v19 + 8))(v63, v64);
        v35 = 0;
        v33 = 1;
        v34 = 1;
      }

      else
      {
        v40 = v60 + v12[13];
        *v40 = v38;
        v40[8] = v39 & 1;
        LOBYTE(v66) = 10;
        v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v59 = 0;
        v42 = v60 + v12[14];
        *v42 = v41;
        v42[8] = v43 & 1;
        LOBYTE(v66) = 11;
        v44 = KeyedDecodingContainer.decode(_:forKey:)();
        v59 = 0;
        v47 = (v60 + v12[15]);
        *v47 = v44;
        v47[1] = v45;
        sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
        v68 = 12;
        sub_100758BE4(&qword_1016A8A58, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        v48 = v59;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v59 = v48;
        if (!v48)
        {
          *(v60 + v12[16]) = v66;
          LOBYTE(v66) = 13;
          v49 = KeyedDecodingContainer.decode(_:forKey:)();
          v50 = (v60 + v12[17]);
          *v50 = v49;
          v50[1] = v51;
          v68 = 14;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          *(v60 + v12[18]) = v66;
          v68 = 15;
          sub_100758B90();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v52 = v67;
          v53 = v60 + v12[19];
          *v53 = v66;
          v53[16] = v52;
          v68 = 16;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v19 + 8))(v63, v64);
          v54 = v67;
          v56 = v60;
          v55 = v61;
          v57 = v60 + v12[20];
          *v57 = v66;
          v57[16] = v54;
          sub_100758AD4(v56, v55, type metadata accessor for AccessoryInfoResponseContent.Configuration);
          sub_100007BAC(v65);
          return sub_100757B8C(v56, type metadata accessor for AccessoryInfoResponseContent.Configuration);
        }

        (*(v19 + 8))(v63, v64);
        v33 = 1;
        v34 = 1;
        v35 = 1;
      }
    }
  }

  v46 = v60;
  v28 = v58;
  sub_100007BAC(v65);

  if (!v28)
  {
  }

  if (v33)
  {
    result = sub_10000B3A8(v46 + v12[11], &unk_101696AC0, &qword_101390A60);
    if (v34)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (!v35)
    {
      return result;
    }
  }

  if (!v34)
  {
    goto LABEL_8;
  }

LABEL_13:
  result = sub_10000B3A8(v46 + v12[12], &unk_101696AC0, &qword_101390A60);
  if (v35)
  {
  }

  return result;
}

uint64_t sub_100750194(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x726F4D6E7261656CLL;
    if (a1 != 10)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 != 9)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000019;
    if (a1 != 7)
    {
      v6 = 0x726F4D6E7261656CLL;
    }

    if (a1 == 6)
    {
      v6 = 0x726F4D6E7261656CLL;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x48746C7561666564;
    v2 = 0x4C746C7561666564;
    if (a1 != 1)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v2;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

uint64_t sub_10075036C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A40, &qword_1013B9458);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100758A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[31] = 0;
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8188, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    v8[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[29] = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[28] = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[27] = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[26] = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[25] = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[24] = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[15] = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[14] = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100750744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v73 = type metadata accessor for URL();
  v68 = *(v73 - 8);
  v3 = __chkstk_darwin(v73);
  v59 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v60 = v54 - v6;
  v7 = __chkstk_darwin(v5);
  v61 = v54 - v8;
  v9 = __chkstk_darwin(v7);
  v62 = v54 - v10;
  v11 = __chkstk_darwin(v9);
  v63 = v54 - v12;
  v13 = __chkstk_darwin(v11);
  v64 = v54 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = v54 - v16;
  v17 = __chkstk_darwin(v15);
  v66 = v54 - v18;
  v19 = __chkstk_darwin(v17);
  v67 = v54 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v54 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v54 - v25;
  __chkstk_darwin(v24);
  v69 = v54 - v27;
  v28 = sub_1000BC4D4(&qword_1016A8A30, &qword_1013B9450);
  v70 = *(v28 - 8);
  v71 = v28;
  __chkstk_darwin(v28);
  v30 = v54 - v29;
  v31 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  __chkstk_darwin(v31);
  v33 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100758A80();
  v72 = v30;
  v34 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    return sub_100007BAC(a1);
  }

  v35 = v26;
  v55 = v23;
  v56 = v31;
  v57 = v33;
  v74 = a1;
  v86 = 0;
  v36 = sub_100751E3C(&qword_1016A8178, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v37 = v69;
  v38 = v73;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v68 + 32;
  v40 = v57;
  v69 = *(v68 + 32);
  (v69)(v57, v37, v38);
  v85 = 1;
  v41 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v56;
  v43 = &v40[v56[5]];
  v54[0] = v39;
  (v69)(v43, v41, v38);
  v84 = 2;
  v44 = v55;
  v54[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v40[v42[6]], v44, v38);
  v83 = 3;
  v45 = v67;
  v55 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v40[v42[7]], v45, v38);
  v82 = 4;
  v46 = v66;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v40;
  (v69)(&v40[v42[8]], v46, v38);
  v81 = 5;
  v48 = v65;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v47[v42[9]], v48, v38);
  v80 = 6;
  v49 = v64;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v47[v42[10]], v49, v38);
  v79 = 7;
  v50 = v63;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v47[v42[11]], v50, v73);
  v78[0] = 8;
  v51 = v62;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v47[v56[12]], v51, v73);
  v77 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v57[v56[13]], v61, v73);
  v76 = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v69)(&v57[v56[14]], v60, v73);
  v75 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v70 + 8))(v72, v71);
  v52 = v57;
  (v69)(&v57[v56[15]], v59, v73);
  sub_100758AD4(v52, v58, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_100007BAC(v74);
  return sub_100757B8C(v52, type metadata accessor for AccessoryInfoResponseContent.Assets);
}

uint64_t sub_100751480()
{
  v1 = *v0;
  v2 = 0x6E65644974726170;
  v3 = 0x656D614E74726170;
  v4 = 0x626D795374726170;
  if (v1 != 3)
  {
    v4 = 0x72616D6972507369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6570795474726170;
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

uint64_t sub_100751530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007571AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100751558(uint64_t a1)
{
  v2 = sub_1007576AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100751594(uint64_t a1)
{
  v2 = sub_1007576AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007515D0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100757374(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

Swift::Int sub_10075163C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10074E950(v2);
  return Hasher._finalize()();
}

uint64_t sub_10075167C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_100754528(v5, v7) & 1;
}

uint64_t sub_1007516E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100757CA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100751708(uint64_t a1)
{
  v2 = sub_100758B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100751744(uint64_t a1)
{
  v2 = sub_100758B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100751838@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007581F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100751860(uint64_t a1)
{
  v2 = sub_100758A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10075189C(uint64_t a1)
{
  v2 = sub_100758A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100751908()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100751AB4(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100751C48(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100751E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100751E88()
{
  result = qword_1016A88D0;
  if (!qword_1016A88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88D0);
  }

  return result;
}

unint64_t sub_100751EE0()
{
  result = qword_1016A88D8;
  if (!qword_1016A88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88D8);
  }

  return result;
}

uint64_t sub_100751F34()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 0x7972636E4531653CLL;
  v1._object = 0xEE003A6E6F697470;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x7972636E45326520;
  v2._object = 0xEE003A6E6F697470;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x800000010135E620;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_100752020(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A89F8, &qword_1013B9428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100758984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007521C0()
{
  v1 = 0x707972636E453265;
  if (*v0 != 1)
  {
    v1 = 0x6966697265563273;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707972636E453165;
  }
}

uint64_t sub_100752220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100758614(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100752248(uint64_t a1)
{
  v2 = sub_100758984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100752284(uint64_t a1)
{
  v2 = sub_100758984();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007522C0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100758738(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_10075231C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007523A0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10075240C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100752490(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10075258C()
{
  result = qword_1016A88E0;
  if (!qword_1016A88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88E0);
  }

  return result;
}

uint64_t sub_1007525E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8980, &qword_1013B9408);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100757768();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v31 = *(v3 + 32);
  v32 = v10;
  v11 = *(v3 + 48);
  v33 = *(v3 + 64);
  v12 = *(v3 + 16);
  v30[0] = *v3;
  v30[1] = v12;
  v27 = v31;
  v28 = v11;
  v29 = *(v3 + 64);
  v25 = v30[0];
  v26 = v9;
  v35 = 0;
  sub_10075798C(v30, &v20);
  sub_1007579C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    sub_10075780C(&v20);
  }

  else
  {
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    sub_10075780C(&v20);
    v13 = *(v3 + 88);
    v14 = *(v3 + 92);
    *&v19[0] = *(v3 + 80);
    BYTE12(v19[0]) = v14;
    DWORD2(v19[0]) = v13;
    v34 = 1;
    sub_100757A18();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = type metadata accessor for AccessoryInfoResponseContent(0);
    LOBYTE(v19[0]) = 2;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_100751E3C(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8E94);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 3;
    type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    sub_100751E3C(&qword_1016A89A0, type metadata accessor for AccessoryInfoResponseContent.Assets, &unk_1013B8F4C);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + *(v15 + 36));
    v17 = v16[1];
    v19[0] = *v16;
    v19[1] = v17;
    v19[2] = v16[2];
    v34 = 5;
    sub_100757A6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 6;
    type metadata accessor for ServerStatusCode();
    sub_100751E3C(&qword_1016A89B0, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v19[0] = *(v3 + *(v15 + 44));
    v34 = 7;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100752A78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v7 - 8);
  v24 = &v22 - v8;
  v23 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = v1[3];
  v28 = v1[2];
  v29 = v15;
  v30 = v1[4];
  v16 = v1[1];
  v26 = *v1;
  v27 = v16;
  sub_10074D4B4(a1);
  v17 = *(v1 + 10);
  if (v17 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *(v1 + 22) | (*(v1 + 92) << 32);
    Hasher._combine(_:)(1u);
    sub_10074DB48(a1, v17 & 0xFFFFFFFF01010101, v18);
  }

  v19 = type metadata accessor for AccessoryInfoResponseContent(0);
  sub_1000D2A70(v1 + v19[6], v14, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v9 + 48))(v14, 1, v23) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100757BEC(v14, v11, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0(a1);
    sub_100757B8C(v11, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  v20 = v24;
  sub_1000D2A70(v2 + v19[7], v24, &qword_1016A62E0, &unk_1013B8C30);
  if ((*(v25 + 48))(v20, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100757BEC(v20, v6, type metadata accessor for AccessoryInfoResponseContent.Assets);
    Hasher._combine(_:)(1u);
    type metadata accessor for URL();
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    sub_100757B8C(v6, type metadata accessor for AccessoryInfoResponseContent.Assets);
  }

  if (*(v2 + v19[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v19[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A89C8, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  dispatch thunk of Hashable.hash(into:)();
  v21 = *(v2 + v19[11]);
  if (v21)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v21);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_1007530B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = type metadata accessor for ServerStatusCode();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v40 = sub_1000BC4D4(&qword_1016A8938, &qword_1013B9400);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v43 = a1;
  sub_1000035D0(a1, v16);
  sub_100757768();
  v41 = v12;
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(v43);
  }

  v42 = v10;
  v35 = v7;
  v34 = v4;
  v18 = v37;
  v19 = v38;
  v20 = v15;
  v21 = v39;
  v53 = 0;
  sub_10075783C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v50;
  *(v20 + 32) = v49;
  *(v20 + 48) = v22;
  *(v20 + 64) = v51;
  v23 = v48;
  *v20 = v47;
  *(v20 + 16) = v23;
  v52 = 1;
  sub_100757890();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = DWORD2(v44);
  v25 = BYTE12(v44);
  *(v20 + 80) = v44;
  *(v20 + 92) = v25;
  *(v20 + 88) = v24;
  type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  LOBYTE(v44) = 2;
  sub_100751E3C(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8EBC);
  v26 = v42;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v26, v20 + v13[6], &qword_1016A62E8, &qword_1013B3CB0);
  type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  LOBYTE(v44) = 3;
  sub_100751E3C(&qword_1016A8960, type metadata accessor for AccessoryInfoResponseContent.Assets, &unk_1013B8F74);
  v27 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v27, v20 + v13[7], &qword_1016A62E0, &unk_1013B8C30);
  LOBYTE(v44) = 4;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = (v20 + v13[8]);
  *v29 = v28;
  v29[1] = v30;
  v52 = 5;
  sub_1007578E4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = (v20 + v13[9]);
  v32 = v45;
  *v31 = v44;
  v31[1] = v32;
  v31[2] = v46;
  LOBYTE(v44) = 6;
  sub_100751E3C(&qword_10169A810, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v20 + v13[10], v34, v21);
  sub_1000BC4D4(&unk_1016A86D0, "֫\n");
  v52 = 7;
  sub_100757AC0(&qword_1016A8970, sub_100757938, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v41, v40);
  *(v20 + v13[11]) = v44;
  sub_100758AD4(v20, v36, type metadata accessor for AccessoryInfoResponseContent);
  sub_100007BAC(v43);
  return sub_100757B8C(v20, type metadata accessor for AccessoryInfoResponseContent);
}

uint64_t sub_100753940()
{
  v1 = *v0;
  v2 = 0x6572617774666F73;
  v3 = 0x737574617473;
  if (v1 != 6)
  {
    v3 = 0x655474756F79616CLL;
  }

  v4 = 0x6E6F6973726576;
  if (v1 != 4)
  {
    v4 = 0x654B63696C627570;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72756769666E6F63;
  if (v1 != 2)
  {
    v5 = 0x737465737361;
  }

  if (*v0)
  {
    v2 = 0x696C696261706163;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100753A60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100759738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100753A88(uint64_t a1)
{
  v2 = sub_100757768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100753AC4(uint64_t a1)
{
  v2 = sub_100757768();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100753B48(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100753BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_100753C40()
{
  result = qword_1016A88F0;
  if (!qword_1016A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88F0);
  }

  return result;
}

uint64_t sub_100753C94()
{
  v1 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v23 = v18;
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = v0[3];
  v20 = v0[2];
  v21 = v5;
  v22 = v0[4];
  v6 = v0[1];
  v18 = *v0;
  v19 = v6;
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x3A73757461747320;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = type metadata accessor for AccessoryInfoResponseContent(0);
  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A88F8, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6E6F697372657620;
  v10._object = 0xE90000000000003ALL;
  String.append(_:)(v10);
  v18 = *(v0 + v8[8]);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 0x3A6769666E6F6320;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  sub_1000D2A70(v0 + v8[6], v3, &qword_1016A62E8, &qword_1013B3CB0);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x4B63696C62757020;
  v13._object = 0xEC0000003A737965;
  String.append(_:)(v13);
  v14 = (v0 + v8[9]);
  v15 = v14[1];
  v18 = *v14;
  v19 = v15;
  v20 = v14[2];
  sub_1000BC4D4(&qword_1016A8900, &unk_1013B93E0);
  _print_unlocked<A, B>(_:_:)();
  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v23;
}

unint64_t sub_100753F4C()
{
  _StringGuts.grow(_:)(34);

  type metadata accessor for AccessoryInfoResponseContent(0);
  v0._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_100753FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *(a2 + 8);
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = a2;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return v11;
    }
  }

  v12 = *(a1 + 33);
  v13 = *(a2 + 33);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return v11;
    }
  }

  v14 = *(a1 + 34);
  v15 = *(a2 + 34);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
    {
      return v11;
    }
  }

  v16 = *(a1 + 35);
  v17 = *(a2 + 35);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
    {
      return v11;
    }
  }

  v18 = *(a1 + 36);
  v19 = *(a2 + 36);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return v11;
    }
  }

  v20 = *(a1 + 37);
  v21 = *(a2 + 37);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
    {
      return v11;
    }
  }

  v22 = *(a1 + 38);
  v23 = *(a2 + 38);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
    {
      return v11;
    }
  }

  v24 = *(a1 + 39);
  v25 = *(a2 + 39);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return v11;
    }
  }

  v26 = *(a1 + 40);
  v27 = *(a2 + 40);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return v11;
    }
  }

  v28 = *(a1 + 56);
  v29 = *(a2 + 56);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v28 != v29)
    {
      v30 = a1;
      v31 = a2;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v31;
      v33 = v32;
      a1 = v30;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v34 = *(a1 + 72);
  v35 = *(a2 + 72);
  if (!v34)
  {
    return !v35;
  }

  return v35 && (*(a1 + 64) == *(a2 + 64) && v34 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

uint64_t sub_1007542C0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = 0;
  if (((a1 ^ a3) & 1) == 0 && ((a1 >> 8) & 1) == ((a3 >> 8) & 1) && ((a1 >> 16) & 1) == ((a3 >> 16) & 1) && ((a1 >> 24) & 1) == ((a3 >> 24) & 1))
  {
    if ((a1 & 0xFF00000000) == 0x200000000)
    {
      if (BYTE4(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE4(a3) == 2 || ((((a1 & &_mh_execute_header) == 0) ^ HIDWORD(a3)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a1 & 0xFF0000000000) == 0x20000000000)
    {
      if (BYTE5(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a1 & 0xFF000000000000) == 0x2000000000000)
    {
      if (BYTE6(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE6(a3) == 2 || ((((a1 & 0x1000000000000) == 0) ^ HIWORD(a3)) & 1) == 0)
      {
        return result;
      }
    }

    v6 = HIBYTE(a1);
    v7 = HIBYTE(a3);
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
      {
        return result;
      }
    }

    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF00) == 0x200)
    {
      if (BYTE1(a4) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE1(a4) == 2 || ((((a2 & 0x100) == 0) ^ (a4 >> 8)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF0000) == 0x20000)
    {
      if (BYTE2(a4) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE2(a4) == 2 || ((((a2 & 0x10000) == 0) ^ (a4 >> 16)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF000000) == 0x2000000)
    {
      if (BYTE3(a4) != 2)
      {
        return 0;
      }

LABEL_45:
      if ((a2 & 0xFF00000000) == 0x200000000)
      {
        if (BYTE4(a4) == 2)
        {
          return 1;
        }
      }

      else if (BYTE4(a4) != 2 && ((((a2 & &_mh_execute_header) == 0) ^ HIDWORD(a4)) & 1) != 0)
      {
        return 1;
      }

      return 0;
    }

    result = 0;
    if (BYTE3(a4) != 2 && ((((a2 & 0x1000000) == 0) ^ (a4 >> 24)) & 1) != 0)
    {
      goto LABEL_45;
    }
  }

  return result;
}