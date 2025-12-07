uint64_t sub_100410080()
{
  v1 = *(v0 + 24);
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100410104, v1, 0);
}

uint64_t sub_100410104()
{
  v1 = v0[3];
  sub_100410B28(v0[7], v0[4] != 0);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  swift_unknownObjectRelease();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10041017C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v42 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v40 = v5;
    v41 = v9;
    v37 = v6;
    v17 = v16;
    v45 = v16;
    *v15 = 136315138;
    v43 = xmmword_1006E1DD0;
    v44 = 1;
    v18 = String.init<A>(describing:)();
    v20 = sub_100141FE4(v18, v19, &v45);

    *(v15 + 4) = v20;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v12, v13, "Constructed command response %s", v15, 0xCu);
    sub_10000BB78(v17);
    v5 = v40;
    v9 = v41;
    v6 = v37;

    a1 = v38;
  }

  v39 = *(v6 + 8);
  v39(v11, v5);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v43 = xmmword_1006E1DD0;
  v44 = 1;
  sub_100410B34();
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v23 = v22;

  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    defaultLogger()();
    sub_10000B8B8(v21, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    sub_10000B90C(v21, v23);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = v5;
      v28 = v27;
      v38 = swift_slowAlloc();
      *&v43 = v38;
      *v28 = 136315138;
      v29 = Data.base64EncodedString(options:)(0);
      v30 = sub_100141FE4(v29._countAndFlagsBits, v29._object, &v43);
      v41 = v9;
      v31 = v30;

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encoded command response to JSON %s", v28, 0xCu);
      sub_10000BB78(v38);

      v33 = v40;
      v32 = v41;
    }

    else
    {

      v32 = v9;
      v33 = v5;
    }

    v39(v32, v33);
    v34 = objc_allocWithZone(ASCDigitalIdentityCredential);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v36 = [v34 initWithCommandResponseData:isa];

    result = sub_10000B90C(v21, v23);
    *v42 = v36;
  }

  return result;
}

uint64_t sub_100410578()
{

  swift_unknownObjectRelease();
  sub_100410AD8(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  v1 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionStream;
  v2 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionContinuation;
  v4 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RemoteWebPresentmentScannableCodeHandler(uint64_t a1)
{
  result = qword_100843AC8;
  if (!qword_100843AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004106D0(uint64_t a1)
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

void sub_100410808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10000B870(&qword_100843AE0, &qword_1006E1EC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100410874(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10040B774(a1, a2);
}

uint64_t sub_100410920(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_10040E2DC(a1);
}

uint64_t sub_1004109B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10040FE9C();
}

uint64_t sub_100410A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10040F924();
}

uint64_t sub_100410AD8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B90C(result, a2);

    return sub_10000B90C(a3, a4);
  }

  return result;
}

uint64_t sub_100410B28(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

unint64_t sub_100410B34()
{
  result = qword_100843BC0;
  if (!qword_100843BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BC0);
  }

  return result;
}

uint64_t sub_100410B88(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000B90C(a1, a2);
  }
}

uint64_t sub_100410B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100410BE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B8B8(result, a2);

    return sub_10000B8B8(a3, a4);
  }

  return result;
}

void sub_100410C30(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_10000B8B8(a1, a2);
  }
}

uint64_t sub_100410C40()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100410C88(uint64_t a1)
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

  return sub_10040DD58(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100410D50()
{
  result = qword_100843BD0;
  if (!qword_100843BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BD0);
  }

  return result;
}

unint64_t sub_100410DA4()
{
  result = qword_100843BD8;
  if (!qword_100843BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BD8);
  }

  return result;
}

uint64_t sub_100410DF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 968) = a6;
  *(v6 + 960) = a5;
  *(v6 + 1976) = a4;
  *(v6 + 952) = a3;
  *(v6 + 944) = a2;
  v7 = type metadata accessor for Logger();
  *(v6 + 976) = v7;
  *(v6 + 984) = *(v7 - 8);
  *(v6 + 992) = swift_task_alloc();
  v8 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  *(v6 + 1000) = v8;
  *(v6 + 1008) = *(v8 - 8);
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  *(v6 + 1032) = swift_task_alloc();
  v9 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
  *(v6 + 1040) = v9;
  *(v6 + 1048) = *(v9 + 64);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderUserSelection();
  *(v6 + 1080) = v10;
  v11 = *(v10 - 8);
  *(v6 + 1088) = v11;
  *(v6 + 1096) = *(v11 + 64);
  *(v6 + 1104) = swift_task_alloc();
  *(v6 + 1112) = swift_task_alloc();
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  *(v6 + 1136) = sub_100007224(&qword_100843CE0, &qword_1006E2060);
  *(v6 + 1144) = swift_task_alloc();
  v12 = type metadata accessor for ImmediateWebPresentmentRequestReleaser(0);
  *(v6 + 1152) = v12;
  v13 = *(v12 - 8);
  *(v6 + 1160) = v13;
  *(v6 + 1168) = *(v13 + 64);
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  v14 = type metadata accessor for PartialWebPresentmentRequest();
  *(v6 + 1192) = v14;
  v15 = *(v14 - 8);
  *(v6 + 1200) = v15;
  *(v6 + 1208) = *(v15 + 64);
  *(v6 + 1216) = swift_task_alloc();
  *(v6 + 1224) = swift_task_alloc();
  v16 = type metadata accessor for WebPresentmentRequest();
  *(v6 + 1232) = v16;
  *(v6 + 1240) = *(v16 - 8);
  *(v6 + 1248) = swift_task_alloc();
  v17 = type metadata accessor for URL();
  *(v6 + 1256) = v17;
  v18 = *(v17 - 8);
  *(v6 + 1264) = v18;
  *(v6 + 1272) = *(v18 + 64);
  *(v6 + 1280) = swift_task_alloc();
  v19 = type metadata accessor for WebPresentmentResponse();
  *(v6 + 1288) = v19;
  v20 = *(v19 - 8);
  *(v6 + 1296) = v20;
  *(v6 + 1304) = *(v20 + 64);
  *(v6 + 1312) = swift_task_alloc();
  *(v6 + 1320) = swift_task_alloc();
  v21 = type metadata accessor for DIPError.Code();
  *(v6 + 1328) = v21;
  *(v6 + 1336) = *(v21 - 8);
  *(v6 + 1344) = swift_task_alloc();
  *(v6 + 1352) = sub_100007224(&qword_100834B60, &qword_1006C0310);
  *(v6 + 1360) = swift_task_alloc();
  *(v6 + 1368) = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = swift_task_alloc();
  *(v6 + 1392) = swift_task_alloc();
  *(v6 + 1400) = swift_task_alloc();
  *(v6 + 1408) = swift_task_alloc();
  *(v6 + 1416) = swift_task_alloc();
  v22 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  *(v6 + 1424) = v22;
  *(v6 + 1432) = *(v22 - 8);
  *(v6 + 1440) = swift_task_alloc();
  *(v6 + 1448) = swift_task_alloc();
  sub_100007224(&qword_100843CE8, &qword_1006E2068);
  *(v6 + 1456) = swift_task_alloc();
  v23 = sub_100007224(&qword_100843CF0, &qword_1006E2070);
  *(v6 + 1464) = v23;
  *(v6 + 1472) = *(v23 - 8);
  *(v6 + 1480) = swift_task_alloc();
  v24 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  *(v6 + 1488) = v24;
  v25 = *(v24 - 8);
  *(v6 + 1496) = v25;
  *(v6 + 1504) = *(v25 + 64);
  *(v6 + 1512) = swift_task_alloc();
  *(v6 + 1520) = swift_task_alloc();
  *(v6 + 1528) = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v6 + 1536) = swift_task_alloc();
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  *(v6 + 1560) = swift_task_alloc();
  *(v6 + 1568) = swift_task_alloc();
  *(v6 + 1576) = swift_task_alloc();
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  *(v6 + 1608) = swift_task_alloc();
  *(v6 + 1616) = swift_task_alloc();
  *(v6 + 1624) = swift_task_alloc();
  *(v6 + 1632) = swift_task_alloc();
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = swift_task_alloc();
  *(v6 + 1680) = swift_task_alloc();
  *(v6 + 1688) = swift_task_alloc();
  *(v6 + 1696) = swift_task_alloc();
  v26 = sub_100007224(&qword_100843D00, &qword_1006E2088);
  *(v6 + 1704) = v26;
  *(v6 + 1712) = *(v26 - 8);
  *(v6 + 1720) = swift_task_alloc();
  v27 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  *(v6 + 1728) = v27;
  v28 = *(v27 - 8);
  *(v6 + 1736) = v28;
  *(v6 + 1744) = *(v28 + 64);
  *(v6 + 1752) = swift_task_alloc();
  *(v6 + 1760) = swift_task_alloc();
  *(v6 + 1768) = swift_task_alloc();
  *(v6 + 1776) = swift_task_alloc();
  *(v6 + 1784) = swift_task_alloc();
  *(v6 + 1792) = swift_task_alloc();
  *(v6 + 1800) = swift_task_alloc();

  return _swift_task_switch(sub_10041179C, 0, 0);
}

uint64_t sub_10041179C()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1976);
  v8 = *(*(v0 + 1728) + 48);
  *(v0 + 1960) = v8;
  (*(v3 + 104))(v2, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  v49 = v1;
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v3 + 8))(v2, v4);
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  if (v7)
  {
    v47 = v10;
    v11 = *(v0 + 1528);
    v43 = v8;
    v42 = *(v0 + 1696);
    v12 = *(v0 + 1496);
    v13 = *(v0 + 1488);
    v40 = v11;
    v41 = *(v0 + 952);
    sub_100020260(*(v0 + 968), v0 + 176);
    v44 = *(v6 + 16);
    v14 = v49 + v8;
    v15 = v13;
    v44(v11, v14, v13);
    v16 = *(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v41;
    sub_10001F358((v0 + 176), (v17 + 40));
    v19 = *(v12 + 32);
    v18 = v12 + 32;
    v19(&v17[(v16 + 80) & ~v16], v40, v15);

    sub_100455670(v42, &unk_1006E20A0, v17);
    sub_10000BE18(v42, &unk_100845860, &unk_1006BF9D0);
    v47(v42, 1, 1, v9);
    v44(v40, v49 + v43, v15);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v41;
    v19(&v20[(v16 + 40) & ~v16], v40, v15);

    sub_100455670(v42, &unk_1006E20B0, v20);
    sub_10000BE18(v42, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1496);
    v23 = *(v0 + 1488);
    v46 = *(v0 + 1696);
    v48 = *(v0 + 960);
    v24 = *(v0 + 952);
    v45 = *(v0 + 944);
    sub_100020260(*(v0 + 968), v0 + 16);
    (*(v6 + 16))(v21, v49 + v8, v23);
    v25 = (*(v6 + 80) + 80) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v24;
    sub_10001F358((v0 + 16), (v26 + 40));
    v27 = *(v22 + 32);
    v18 = v22 + 32;
    v27(&v26[v25], v21, v23);

    sub_100455670(v46, &unk_1006E21C8, v26);
    sub_10000BE18(v46, &unk_100845860, &unk_1006BF9D0);
    sub_100417700(v48, v45, v49 + v8);
  }

  *(v0 + 1808) = v18;
  v28 = swift_allocBox();
  v30 = v29;
  *(v0 + 1816) = v28;
  *(v0 + 1824) = v29;
  v31 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  *(v0 + 1832) = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  *(v0 + 1840) = v33;
  *(v0 + 1848) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33(v30, 1, 1, v31);
  v34 = swift_allocObject();
  *(v0 + 1856) = v34;
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v0 + 1864) = v35;
  *(v35 + 16) = 0;
  sub_100007224(&qword_100843D18, &qword_1006E20C0);
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 1964) = enum case for DIPError.Code.webPresentmentCancelled(_:);
  *(v0 + 1977) = 0;
  v36 = swift_task_alloc();
  *(v0 + 1872) = v36;
  *v36 = v0;
  v36[1] = sub_100411D34;
  v37 = *(v0 + 1464);
  v38 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v38, 0, 0, v37, v0 + 912);
}

uint64_t sub_100411D34()
{
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v2 = sub_100415378;
  }

  else
  {
    v2 = sub_100411E48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100411E48()
{
  v1 = *(v0 + 1456);
  if ((*(*(v0 + 1432) + 48))(v1, 1, *(v0 + 1424)) == 1)
  {
    goto LABEL_2;
  }

  sub_10041FEAC(v1, *(v0 + 1448), type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10)
        {
LABEL_2:
          (*(*(v0 + 1472) + 8))(*(v0 + 1480), *(v0 + 1464));

LABEL_3:
          v2 = *(v0 + 1800);
          DiscardingTaskGroup.cancelAll()();
          sub_10000BE18(v2, &qword_100843D08, &qword_1006E2090);

          v3 = *(v0 + 8);

          return v3();
        }

        if (*(*(v0 + 1864) + 16))
        {
          (*(*(v0 + 1336) + 104))(*(v0 + 1344), *(v0 + 1964), *(v0 + 1328));
          type metadata accessor for DIPError();
          sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v36 = swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          *(v0 + 928) = v36;
          AsyncThrowingStream.Continuation.finish(throwing:)();
        }

        goto LABEL_122;
      }

      v65 = *(v0 + 1800);
      v66 = *(v0 + 1784);
      v67 = *(v0 + 1736);
      v68 = *(v0 + 1656);
      v69 = *(v0 + 1648);
      v70 = *(v0 + 952);
      v71 = type metadata accessor for TaskPriority();
      v72 = *(v71 - 8);
      v288 = *(v72 + 56);
      v288(v68, 1, 1, v71);
      sub_10000BBC4(v65, v66, &qword_100843D08, &qword_1006E2090);
      v73 = (*(v67 + 80) + 40) & ~*(v67 + 80);
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v70;
      sub_1004201F8(v66, v74 + v73);
      sub_10000BBC4(v68, v69, &unk_100845860, &unk_1006BF9D0);
      v282 = *(v72 + 48);
      LODWORD(v69) = v282(v69, 1, v71);

      v75 = *(v0 + 1648);
      v273 = v72;
      if (v69 == 1)
      {
        sub_10000BE18(v75, &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v72 + 8))(v75, v71);
      }

      if (v74[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v108 = dispatch thunk of Actor.unownedExecutor.getter();
        v110 = v109;
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0;
        v110 = 0;
      }

      v309 = **(v0 + 944);
      v156 = swift_allocObject();
      *(v156 + 16) = &unk_1006E2150;
      *(v156 + 24) = v74;

      v300 = v71;
      if (v110 | v108)
      {
        v157 = v0 + 416;
        *(v0 + 416) = 0;
        *(v0 + 424) = 0;
        *(v0 + 432) = v108;
        *(v0 + 440) = v110;
      }

      else
      {
        v157 = 0;
      }

      v248 = *(v0 + 1656);
      v162 = *(v0 + 1640);
      v254 = *(v0 + 1800);
      v163 = *(v0 + 1520);
      v267 = *(v0 + 1960);
      v164 = *(v0 + 1496);
      v165 = *(v0 + 1488);
      v166 = *(v0 + 1280);
      v260 = *(v0 + 1632);
      v263 = *(v0 + 1272);
      v167 = *(v0 + 1264);
      v168 = *(v0 + 1256);
      v245 = v168;
      v250 = *(v0 + 960);
      v257 = *(v0 + 952);
      *(v0 + 576) = 1;
      *(v0 + 584) = v157;
      *(v0 + 592) = v309;
      swift_task_create();

      sub_10000BE18(v248, &unk_100845860, &unk_1006BF9D0);
      v288(v162, 1, 1, v300);
      (*(v167 + 16))(v166, v250, v168);
      v169 = *(v164 + 16);
      v164 += 16;
      v170 = v254 + v267;
      v268 = v169;
      v169(v163, v170, v165);
      v171 = (*(v167 + 80) + 40) & ~*(v167 + 80);
      v172 = (v263 + *(v164 + 64) + v171) & ~*(v164 + 64);
      v279 = *(v164 + 64);
      v173 = swift_allocObject();
      *(v173 + 2) = 0;
      *(v173 + 3) = 0;
      *(v173 + 4) = v257;
      (*(v167 + 32))(&v173[v171], v166, v245);
      v264 = *(v164 + 16);
      v264(&v173[v172], v163, v165);
      sub_10000BBC4(v162, v260, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v163) = v282(v260, 1, v300);

      v174 = *(v0 + 1632);
      if (v163 == 1)
      {
        sub_10000BE18(*(v0 + 1632), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v273 + 8))(v174, v300);
      }

      if (*(v173 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v175 = dispatch thunk of Actor.unownedExecutor.getter();
        v177 = v176;
        swift_unknownObjectRelease();
      }

      else
      {
        v175 = 0;
        v177 = 0;
      }

      v178 = swift_allocObject();
      *(v178 + 16) = &unk_1006E2168;
      *(v178 + 24) = v173;

      if (v177 | v175)
      {
        v179 = v0 + 544;
        *(v0 + 544) = 0;
        *(v0 + 552) = 0;
        *(v0 + 560) = v175;
        *(v0 + 568) = v177;
      }

      else
      {
        v179 = 0;
      }

      v251 = *(v0 + 1800);
      v253 = *(v0 + 1960);
      v180 = *(v0 + 1640);
      v181 = *(v0 + 1624);
      v182 = *(v0 + 1616);
      v183 = *(v0 + 1512);
      v184 = *(v0 + 1488);
      v258 = *(v0 + 952);
      *(v0 + 672) = 1;
      *(v0 + 680) = v179;
      *(v0 + 688) = v309;
      swift_task_create();

      sub_10000BE18(v180, &unk_100845860, &unk_1006BF9D0);
      v288(v181, 1, 1, v300);
      v268(v183, v251 + v253, v184);
      v185 = swift_allocObject();
      *(v185 + 2) = 0;
      *(v185 + 3) = 0;
      *(v185 + 4) = v258;
      v264(&v185[(v279 + 40) & ~v279], v183, v184);
      sub_10000BBC4(v181, v182, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v182) = v282(v182, 1, v300);

      v186 = *(v0 + 1616);
      if (v182 == 1)
      {
        sub_10000BE18(*(v0 + 1616), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v273 + 8))(v186, v300);
      }

      if (*(v185 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v187 = dispatch thunk of Actor.unownedExecutor.getter();
        v189 = v188;
        swift_unknownObjectRelease();
      }

      else
      {
        v187 = 0;
        v189 = 0;
      }

      v190 = swift_allocObject();
      *(v190 + 16) = &unk_1006E2180;
      *(v190 + 24) = v185;

      if (v189 | v187)
      {
        v191 = v0 + 512;
        *(v0 + 512) = 0;
        *(v0 + 520) = 0;
        *(v0 + 528) = v187;
        *(v0 + 536) = v189;
      }

      else
      {
        v191 = 0;
      }

      v192 = *(v0 + 1624);
      *(v0 + 720) = 1;
      *(v0 + 728) = v191;
      *(v0 + 736) = v309;
      swift_task_create();

      goto LABEL_121;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v43 = *(v0 + 1792);
      v292 = *(v0 + 1856);
      v44 = *(v0 + 1672);
      v280 = *(v0 + 1736);
      v305 = *(v0 + 1664);
      v45 = *(v0 + 1320);
      v46 = *(v0 + 1312);
      v269 = v46;
      v272 = *(v0 + 1800);
      v276 = *(v0 + 1304);
      v47 = *(v0 + 1296);
      v48 = *(v0 + 1288);
      v49 = *(v47 + 32);
      v287 = *(v0 + 952);
      v49(v45, *(v0 + 1448), v48);
      v50 = type metadata accessor for TaskPriority();
      v51 = *(v50 - 8);
      (*(v51 + 56))(v44, 1, 1, v50);
      (*(v47 + 16))(v46, v45, v48);
      sub_10000BBC4(v272, v43, &qword_100843D08, &qword_1006E2090);
      v52 = (*(v47 + 80) + 48) & ~*(v47 + 80);
      v53 = (v276 + *(v280 + 80) + v52) & ~*(v280 + 80);
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v54[4] = v292;
      v54[5] = v287;
      v49(v54 + v52, v269, v48);
      sub_1004201F8(v43, v54 + v53);
      sub_10000BBC4(v44, v305, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v53) = (*(v51 + 48))(v305, 1, v50);

      v55 = *(v0 + 1664);
      if (v53 == 1)
      {
        sub_10000BE18(*(v0 + 1664), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v51 + 8))(v55, v50);
      }

      if (v54[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v104 = dispatch thunk of Actor.unownedExecutor.getter();
        v106 = v105;
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0;
        v106 = 0;
      }

      v153 = **(v0 + 944);
      v154 = swift_allocObject();
      *(v154 + 16) = &unk_1006E2198;
      *(v154 + 24) = v54;

      if (v106 | v104)
      {
        v155 = v0 + 480;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = v104;
        *(v0 + 504) = v106;
      }

      else
      {
        v155 = 0;
      }

      v158 = *(v0 + 1672);
      v159 = *(v0 + 1320);
      v160 = *(v0 + 1296);
      v161 = *(v0 + 1288);
      *(v0 + 768) = 1;
      *(v0 + 776) = v155;
      *(v0 + 784) = v153;
      goto LABEL_102;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v18 = *(v0 + 1964);
      v19 = *(v0 + 1416);
      v20 = *(v0 + 1408);
      v21 = *(v0 + 1368);
      v22 = *(v0 + 1352);
      v23 = *(v0 + 1336);
      v24 = *(v0 + 1328);
      v25 = **(v0 + 1448);
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      (*(v23 + 104))(v20, v18, v24);
      (*(v23 + 56))(v20, 0, 1, v24);
      v26 = *(v22 + 48);
      sub_10000BBC4(v19, v21, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v20, v21 + v26, &qword_10083B020, &unk_1006D8ED0);
      v27 = *(v23 + 48);
      if (v27(v21, 1, v24) == 1)
      {
        v28 = *(v0 + 1416);
        v29 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1408), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
        if (v27(v21 + v26, 1, v29) == 1)
        {
          sub_10000BE18(*(v0 + 1368), &qword_10083B020, &unk_1006D8ED0);
LABEL_115:

          goto LABEL_122;
        }
      }

      else
      {
        v307 = v25;
        v114 = *(v0 + 1328);
        sub_10000BBC4(*(v0 + 1368), *(v0 + 1400), &qword_10083B020, &unk_1006D8ED0);
        v115 = v27(v21 + v26, 1, v114);
        v116 = *(v0 + 1416);
        v117 = *(v0 + 1408);
        v118 = *(v0 + 1400);
        if (v115 != 1)
        {
          v301 = *(v0 + 1368);
          v217 = *(v0 + 1344);
          v218 = *(v0 + 1336);
          v219 = *(v0 + 1328);
          (*(v218 + 32))(v217, v21 + v26, v219);
          sub_10041FE64(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
          v220 = dispatch thunk of static Equatable.== infix(_:_:)();
          v221 = *(v218 + 8);
          v221(v217, v219);
          sub_10000BE18(v117, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BE18(v116, &qword_10083B020, &unk_1006D8ED0);
          v221(v118, v219);
          sub_10000BE18(v301, &qword_10083B020, &unk_1006D8ED0);
          if (v220)
          {
            goto LABEL_115;
          }

          goto LABEL_57;
        }

        v119 = *(v0 + 1336);
        v120 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1408), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v116, &qword_10083B020, &unk_1006D8ED0);
        (*(v119 + 8))(v118, v120);
        v25 = v307;
      }

      sub_10000BE18(*(v0 + 1368), &qword_100834B60, &qword_1006C0310);
LABEL_57:
      v121 = *(v0 + 1856);
      v122 = *(v0 + 1688);
      v123 = *(v0 + 1680);
      v124 = *(v0 + 968);
      v125 = *(v0 + 952);
      v126 = type metadata accessor for TaskPriority();
      v127 = *(v126 - 8);
      (*(v127 + 56))(v122, 1, 1, v126);
      sub_100020260(v124, v0 + 216);
      v128 = swift_allocObject();
      v128[2] = 0;
      v128[3] = 0;
      sub_10001F358((v0 + 216), (v128 + 4));
      v128[9] = v25;
      v128[10] = v125;
      v128[11] = v121;
      sub_10000BBC4(v122, v123, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v123) = (*(v127 + 48))(v123, 1, v126);

      swift_errorRetain();

      v129 = *(v0 + 1680);
      if (v123 == 1)
      {
        sub_10000BE18(*(v0 + 1680), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v127 + 8))(v129, v126);
      }

      if (v128[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v199 = dispatch thunk of Actor.unownedExecutor.getter();
        v201 = v200;
        swift_unknownObjectRelease();
      }

      else
      {
        v199 = 0;
        v201 = 0;
      }

      v222 = **(v0 + 944);
      v223 = swift_allocObject();
      *(v223 + 16) = &unk_1006E21B0;
      *(v223 + 24) = v128;

      if (v201 | v199)
      {
        v224 = v0 + 448;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = v199;
        *(v0 + 472) = v201;
      }

      else
      {
        v224 = 0;
      }

      v192 = *(v0 + 1688);
      *(v0 + 864) = 1;
      *(v0 + 872) = v224;
      *(v0 + 880) = v222;
      swift_task_create();

LABEL_121:
      sub_10000BE18(v192, &unk_100845860, &unk_1006BF9D0);
      goto LABEL_122;
    }

    if (*(v0 + 1977) == 1)
    {
      v89 = *(v0 + 1964);
      v90 = *(v0 + 1392);
      v91 = *(v0 + 1384);
      v92 = *(v0 + 1360);
      v93 = *(v0 + 1352);
      v94 = *(v0 + 1336);
      v95 = *(v0 + 1328);
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      (*(v94 + 104))(v91, v89, v95);
      (*(v94 + 56))(v91, 0, 1, v95);
      v96 = *(v93 + 48);
      sub_10000BBC4(v90, v92, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v91, v92 + v96, &qword_10083B020, &unk_1006D8ED0);
      v97 = *(v94 + 48);
      if (v97(v92, 1, v95) == 1)
      {
        v98 = *(v0 + 1392);
        v99 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1384), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v98, &qword_10083B020, &unk_1006D8ED0);
        if (v97(v92 + v96, 1, v99) == 1)
        {
          sub_10000BE18(*(v0 + 1360), &qword_10083B020, &unk_1006D8ED0);
LABEL_135:

          v225 = 1;
          goto LABEL_123;
        }

        goto LABEL_108;
      }

      v202 = *(v0 + 1328);
      sub_10000BBC4(*(v0 + 1360), *(v0 + 1376), &qword_10083B020, &unk_1006D8ED0);
      v203 = v97(v92 + v96, 1, v202);
      v204 = *(v0 + 1392);
      v205 = *(v0 + 1384);
      v206 = *(v0 + 1376);
      if (v203 == 1)
      {
        v207 = *(v0 + 1336);
        v208 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1384), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v204, &qword_10083B020, &unk_1006D8ED0);
        (*(v207 + 8))(v206, v208);
LABEL_108:
        sub_10000BE18(*(v0 + 1360), &qword_100834B60, &qword_1006C0310);
        goto LABEL_109;
      }

      v310 = *(v0 + 1360);
      v241 = *(v0 + 1344);
      v242 = *(v0 + 1336);
      v243 = *(v0 + 1328);
      (*(v242 + 32))(v241, v92 + v96, v243);
      sub_10041FE64(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v303 = dispatch thunk of static Equatable.== infix(_:_:)();
      v244 = *(v242 + 8);
      v244(v241, v243);
      sub_10000BE18(v205, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v204, &qword_10083B020, &unk_1006D8ED0);
      v244(v206, v243);
      sub_10000BE18(v310, &qword_10083B020, &unk_1006D8ED0);
      if (v303)
      {
        goto LABEL_135;
      }
    }

LABEL_109:
    v209 = *(v0 + 1480);
    v210 = *(v0 + 1472);
    v211 = *(v0 + 1464);
    swift_willThrow();
    (*(v210 + 8))(v209, v211);
    goto LABEL_110;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *(v0 + 1592);
        v7 = *(v0 + 1128);
        v8 = *(v0 + 1120);
        v284 = *(v0 + 1096);
        v9 = *(v0 + 1088);
        v10 = *(v0 + 1080);
        v11 = *(v0 + 968);
        v296 = *(v0 + 952);
        v304 = *(v0 + 1584);
        v291 = *(v9 + 32);
        v291(v7, *(v0 + 1448), v10);
        v12 = type metadata accessor for TaskPriority();
        v13 = *(v12 - 8);
        (*(v13 + 56))(v6, 1, 1, v12);
        (*(v9 + 16))(v8, v7, v10);
        sub_100020260(v11, v0 + 136);
        v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v296;
        v291(v15 + v14, v8, v10);
        sub_10001F358((v0 + 136), v15 + ((v284 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
        sub_10000BBC4(v6, v304, &unk_100845860, &unk_1006BF9D0);
        v16 = (*(v13 + 48))(v304, 1, v12);

        v17 = *(v0 + 1584);
        if (v16 == 1)
        {
          sub_10000BE18(*(v0 + 1584), &unk_100845860, &unk_1006BF9D0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v13 + 8))(v17, v12);
        }

        if (v15[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v111 = dispatch thunk of Actor.unownedExecutor.getter();
          v113 = v112;
          swift_unknownObjectRelease();
        }

        else
        {
          v111 = 0;
          v113 = 0;
        }

        v193 = **(v0 + 944);
        v194 = swift_allocObject();
        *(v194 + 16) = &unk_1006E2120;
        *(v194 + 24) = v15;

        if (v113 | v111)
        {
          v195 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v111;
          *(v0 + 376) = v113;
        }

        else
        {
          v195 = 0;
        }

        v158 = *(v0 + 1592);
        v159 = *(v0 + 1128);
        v160 = *(v0 + 1088);
        v161 = *(v0 + 1080);
        *(v0 + 888) = 1;
        *(v0 + 896) = v195;
        *(v0 + 904) = v193;
      }

      else
      {
        v76 = *(v0 + 1768);
        v261 = v76;
        v277 = *(v0 + 1736);
        v77 = *(v0 + 1576);
        v297 = *(v0 + 1568);
        v306 = *(v0 + 1864);
        v78 = *(v0 + 1112);
        v79 = *(v0 + 1104);
        v265 = v79;
        v270 = *(v0 + 1800);
        v274 = *(v0 + 1096);
        v80 = *(v0 + 1088);
        v81 = *(v0 + 1080);
        v82 = *(v0 + 968);
        v289 = *(v0 + 952);
        v293 = *(v0 + 1744);
        v285 = *(v80 + 32);
        v285(v78, *(v0 + 1448), v81);
        v83 = type metadata accessor for TaskPriority();
        v281 = *(v83 - 8);
        (*(v281 + 56))(v77, 1, 1, v83);
        (*(v80 + 16))(v79, v78, v81);
        sub_10000BBC4(v270, v76, &qword_100843D08, &qword_1006E2090);
        sub_100020260(v82, v0 + 96);
        v84 = (*(v80 + 80) + 40) & ~*(v80 + 80);
        v85 = (v274 + *(v277 + 80) + v84) & ~*(v277 + 80);
        v86 = (v293 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v289;
        v285(v87 + v84, v265, v81);
        sub_1004201F8(v261, v87 + v85);
        sub_10001F358((v0 + 96), v87 + v86);
        *(v87 + ((v86 + 47) & 0xFFFFFFFFFFFFFFF8)) = v306;
        sub_10000BBC4(v77, v297, &unk_100845860, &unk_1006BF9D0);
        LODWORD(v86) = (*(v281 + 48))(v297, 1, v83);

        v88 = *(v0 + 1568);
        if (v86 == 1)
        {
          sub_10000BE18(*(v0 + 1568), &unk_100845860, &unk_1006BF9D0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v281 + 8))(v88, v83);
        }

        if (v87[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v130 = dispatch thunk of Actor.unownedExecutor.getter();
          v132 = v131;
          swift_unknownObjectRelease();
        }

        else
        {
          v130 = 0;
          v132 = 0;
        }

        v196 = **(v0 + 944);
        v197 = swift_allocObject();
        *(v197 + 16) = &unk_1006E2108;
        *(v197 + 24) = v87;

        if (v132 | v130)
        {
          v198 = v0 + 320;
          *(v0 + 320) = 0;
          *(v0 + 328) = 0;
          *(v0 + 336) = v130;
          *(v0 + 344) = v132;
        }

        else
        {
          v198 = 0;
        }

        v158 = *(v0 + 1576);
        v159 = *(v0 + 1112);
        v160 = *(v0 + 1088);
        v161 = *(v0 + 1080);
        *(v0 + 624) = 1;
        *(v0 + 632) = v198;
        *(v0 + 640) = v196;
      }

LABEL_102:
      swift_task_create();

      sub_10000BE18(v158, &unk_100845860, &unk_1006BF9D0);
      (*(v160 + 8))(v159, v161);
LABEL_122:
      v225 = *(v0 + 1977);
LABEL_123:
      *(v0 + 1977) = v225;
      v226 = swift_task_alloc();
      *(v0 + 1872) = v226;
      *v226 = v0;
      v226[1] = sub_100411D34;
      v227 = *(v0 + 1464);
      v228 = *(v0 + 1456);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v228, 0, 0, v227, v0 + 912);
    }

    v37 = *(v0 + 1880);
    v38 = *(v0 + 952);
    (*(*(v0 + 1240) + 32))(*(v0 + 1248), *(v0 + 1448), *(v0 + 1232));
    sub_10000BA08((v38 + 176), *(v38 + 200));
    dispatch thunk of PartialWebPresentmentRequestParsing.parseRequest(_:)();
    v39 = *(v0 + 1864);
    if (!v37)
    {
      v252 = *(v0 + 1840);
      v133 = *(v0 + 1832);
      v246 = v133;
      v255 = *(v0 + 1824);
      v262 = *(v0 + 1776);
      v266 = *(v0 + 1800);
      v278 = *(v0 + 1736);
      v286 = *(v0 + 1744);
      v290 = *(v0 + 1600);
      v134 = *(v0 + 1224);
      v249 = v134;
      v294 = *(v0 + 1216);
      v135 = *(v0 + 1200);
      v259 = v135;
      v136 = *(v0 + 1192);
      v137 = *(v0 + 1184);
      v299 = *(v0 + 1176);
      v308 = *(v0 + 1608);
      v271 = *(v0 + 1208);
      v275 = *(v0 + 1160);
      v138 = *(v0 + 1152);
      v139 = *(v0 + 1144);
      v283 = *(v0 + 952);
      (*(*(v0 + 1240) + 16))(v137, *(v0 + 1248), *(v0 + 1232));
      v140 = (v139 + *(v133 + 48));
      v141 = *(v135 + 16);
      v142 = v134;
      v143 = v136;
      v247 = v136;
      v141(v139, v142, v136);
      v140[3] = v138;
      v140[4] = &off_1008101F8;
      v144 = sub_100032DBC(v140);
      sub_100420720(v137, v144, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v252(v139, 0, 1, v246);
      sub_100420D14(v139, v255);
      v145 = type metadata accessor for TaskPriority();
      v256 = *(v145 - 8);
      (*(v256 + 56))(v308, 1, 1, v145);
      v141(v294, v249, v143);
      sub_10000BBC4(v266, v262, &qword_100843D08, &qword_1006E2090);
      sub_100420720(v137, v299, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v146 = (*(v259 + 80) + 40) & ~*(v259 + 80);
      v147 = (v271 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
      v148 = (*(v278 + 80) + v147 + 8) & ~*(v278 + 80);
      v149 = (v286 + *(v275 + 80) + v148) & ~*(v275 + 80);
      v150 = swift_allocObject();
      *(v150 + 2) = 0;
      *(v150 + 3) = 0;
      *(v150 + 4) = v283;
      (*(v259 + 32))(&v150[v146], v294, v247);
      *&v150[v147] = v39;
      v151 = v145;
      sub_1004201F8(v262, &v150[v148]);
      sub_10041FEAC(v299, &v150[v149], type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      sub_10000BBC4(v308, v290, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v145) = (*(v256 + 48))(v290, 1, v145);

      v152 = *(v0 + 1600);
      if (v145 == 1)
      {
        sub_10000BE18(*(v0 + 1600), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v256 + 8))(v152, v151);
      }

      if (*(v150 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v229 = dispatch thunk of Actor.unownedExecutor.getter();
        v231 = v230;
        swift_unknownObjectRelease();
      }

      else
      {
        v229 = 0;
        v231 = 0;
      }

      v232 = **(v0 + 944);
      v233 = swift_allocObject();
      *(v233 + 16) = &unk_1006E2138;
      *(v233 + 24) = v150;

      if (v231 | v229)
      {
        v234 = v0 + 384;
        *(v0 + 384) = 0;
        *(v0 + 392) = 0;
        *(v0 + 400) = v229;
        *(v0 + 408) = v231;
      }

      else
      {
        v234 = 0;
      }

      v235 = *(v0 + 1608);
      v236 = *(v0 + 1240);
      v295 = *(v0 + 1232);
      v302 = *(v0 + 1248);
      v237 = *(v0 + 1224);
      v238 = *(v0 + 1200);
      v239 = *(v0 + 1192);
      v240 = *(v0 + 1184);
      *(v0 + 600) = 1;
      *(v0 + 608) = v234;
      *(v0 + 616) = v232;
      swift_task_create();

      sub_10000BE18(v235, &unk_100845860, &unk_1006BF9D0);
      sub_1004211E0(v240, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      (*(v238 + 8))(v237, v239);
      (*(v236 + 8))(v302, v295);
      goto LABEL_122;
    }

    v40 = *(v0 + 1480);
    v41 = *(v0 + 1472);
    v42 = *(v0 + 1464);
    (*(*(v0 + 1240) + 8))(*(v0 + 1248), *(v0 + 1232));
    (*(v41 + 8))(v40, v42);
LABEL_110:

    defaultLogger()();
    swift_errorRetain();
    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *v214 = 138412290;
      swift_errorRetain();
      v216 = _swift_stdlib_bridgeErrorToNSError();
      *(v214 + 4) = v216;
      *v215 = v216;
      _os_log_impl(&_mh_execute_header, v212, v213, "Terminal failure during CTAP flow: %@", v214, 0xCu);
      sub_10000BE18(v215, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1032);
    sub_10041FEAC(*(v0 + 1448), v56, type metadata accessor for MobileDocumentProviderRecord);
    sub_100420720(v56, v57, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    v58 = swift_getEnumCaseMultiPayload();
    v59 = *(v0 + 1440);
    v60 = *(v0 + 1072);
    v61 = *(v0 + 1032);
    v62 = *(v0 + 1016);
    v63 = *(v0 + 1000);
    v64 = (*(v0 + 1008) + 8);
    if (v58 == 1)
    {
      *v59 = *(v61 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
      swift_storeEnumTagMultiPayload();
      AsyncThrowingStream.Continuation.yield(_:)();
      (*v64)(v62, v63);
      sub_1004211E0(v60, type metadata accessor for MobileDocumentProviderRecord);
    }

    else
    {
      v298 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      sub_100420720(v60, v59, type metadata accessor for MobileDocumentProviderRecord);
      swift_storeEnumTagMultiPayload();
      AsyncThrowingStream.Continuation.yield(_:)();
      (*v64)(v62, v63);
      sub_1004211E0(v60, type metadata accessor for MobileDocumentProviderRecord);
      sub_10000BE18(v61 + v298, &qword_10083ACF8, &qword_1006D8FC0);
    }

    v107 = type metadata accessor for BundleRecord();
    (*(*(v107 - 8) + 8))(v61, v107);
    goto LABEL_122;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v30 = *(v0 + 952);
    *(v0 + 1888) = **(v0 + 1448);
    v31 = *(v30 + 376);
    *(v0 + 1896) = v31;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v32 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 1904) = v32;
    v33 = *(v32 - 8);
    *(v0 + 1912) = v33;
    *(v0 + 1968) = *(v33 + 80);
    v34 = swift_allocObject();
    *(v0 + 1920) = v34;
    *(v34 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v35 = sub_100414A58;
  }

  else
  {
    v100 = *(v0 + 952);
    sub_10041FEAC(*(v0 + 1448), *(v0 + 1064), type metadata accessor for MobileDocumentProviderRecord);
    v31 = *(v100 + 376);
    *(v0 + 1928) = v31;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v101 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 1936) = v101;
    v102 = *(v101 - 8);
    *(v0 + 1944) = v102;
    *(v0 + 1972) = *(v102 + 80);
    v103 = swift_allocObject();
    *(v0 + 1952) = v103;
    *(v103 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v35 = sub_100414EB0;
  }

  return _swift_task_switch(v35, v31, 0);
}

uint64_t sub_100414A58()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = (*(v0 + 1968) + 32) & ~*(v0 + 1968);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100414B1C, 0, 0);
}

uint64_t sub_100414B1C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1760);
  v25 = *(v0 + 1888);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1560);
  v26 = *(v0 + 1552);
  v6 = *(v0 + 968);
  v7 = *(v0 + 952);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v5, 1, 1, v8);
  sub_100020260(v6, v0 + 56);
  sub_10000BBC4(v2, v3, &qword_100843D08, &qword_1006E2090);
  v10 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v12 = v11 + 2;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v7;
  v11[6] = v25;
  sub_10001F358((v0 + 56), (v11 + 7));
  sub_1004201F8(v3, v11 + v10);
  sub_10000BBC4(v5, v26, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v5) = (*(v9 + 48))(v26, 1, v8);

  v13 = *(v0 + 1552);
  if (v5 == 1)
  {
    sub_10000BE18(*(v0 + 1552), &unk_100845860, &unk_1006BF9D0);
    if (*v12)
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v9 + 8))(v13, v8);
    if (*v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = **(v0 + 944);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1006E20E8;
  *(v18 + 24) = v11;

  if (v16 | v14)
  {
    v19 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v14;
    *(v0 + 312) = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v0 + 1560);
  *(v0 + 648) = 1;
  *(v0 + 656) = v19;
  *(v0 + 664) = v17;
  swift_task_create();

  sub_10000BE18(v20, &unk_100845860, &unk_1006BF9D0);
  *(v0 + 1977) = 1;
  v21 = swift_task_alloc();
  *(v0 + 1872) = v21;
  *v21 = v0;
  v21[1] = sub_100411D34;
  v22 = *(v0 + 1464);
  v23 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, 0, 0, v22, v0 + 912);
}

uint64_t sub_100414EB0()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1936);
  v4 = (*(v0 + 1972) + 32) & ~*(v0 + 1972);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100414F74, 0, 0);
}

uint64_t sub_100414F74()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1752);
  v27 = *(v0 + 1736);
  v3 = *(v0 + 1544);
  v29 = v3;
  v30 = *(v0 + 1816);
  v31 = *(v0 + 1536);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  v28 = *(v0 + 952);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  sub_100420720(v4, v5, type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BBC4(v1, v2, &qword_100843D08, &qword_1006E2090);
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = (v6 + *(v27 + 80) + v10) & ~*(v27 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v13 = v12 + 2;
  v12[3] = 0;
  v12[4] = v30;
  v12[5] = v28;
  sub_10041FEAC(v5, v12 + v10, type metadata accessor for MobileDocumentProviderRecord);
  sub_1004201F8(v2, v12 + v11);
  sub_10000BBC4(v29, v31, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v11) = (*(v9 + 48))(v31, 1, v8);

  v14 = *(v0 + 1536);
  if (v11 == 1)
  {
    sub_10000BE18(*(v0 + 1536), &unk_100845860, &unk_1006BF9D0);
    if (*v13)
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v9 + 8))(v14, v8);
    if (*v13)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = **(v0 + 944);
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1006E20D0;
  *(v19 + 24) = v12;

  if (v17 | v15)
  {
    v20 = v0 + 256;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = v15;
    *(v0 + 280) = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 1544);
  v22 = *(v0 + 1064);
  *(v0 + 696) = 1;
  *(v0 + 704) = v20;
  *(v0 + 712) = v18;
  swift_task_create();

  sub_10000BE18(v21, &unk_100845860, &unk_1006BF9D0);
  sub_1004211E0(v22, type metadata accessor for MobileDocumentProviderRecord);
  v23 = swift_task_alloc();
  *(v0 + 1872) = v23;
  *v23 = v0;
  v23[1] = sub_100411D34;
  v24 = *(v0 + 1464);
  v25 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v25, 0, 0, v24, v0 + 912);
}

uint64_t sub_100415378()
{
  (*(v0[184] + 8))(v0[185], v0[183]);

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Terminal failure during CTAP flow: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[123] + 8))(v0[124], v0[122]);
  v6 = v0[225];
  DiscardingTaskGroup.cancelAll()();
  sub_10000BE18(v6, &qword_100843D08, &qword_1006E2090);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100415914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[13] = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v6[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for WebPresentmentAnalyticsReporter.QRScanResult();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_100415AC0, 0, 0);
}

uint64_t sub_100415AC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = v4[3];
  v6 = v4[4];
  sub_10000BA08(v4, v5);
  (*(v2 + 104))(v1, enum case for WebPresentmentAnalyticsReporter.QRScanResult.error(_:), v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_100415BB4;
  v8 = v0[23];

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendQRScanCompleted(result:)(v8, v5, v6);
}

uint64_t sub_100415BB4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100415D0C, 0, 0);
}

uint64_t sub_100415D0C()
{
  v1 = v0[20];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    v4 = v0[12];
    swift_beginAccess();
    if (*(v4 + 16))
    {

      v5 = v0[1];

      return v5();
    }

    else
    {
      v16 = v0[14];
      v18 = v0[10];
      v17 = v0[11];
      v19 = v17[5];
      v20 = v17[6];
      sub_10000BA08(v17 + 2, v19);
      *v16 = v18;
      swift_storeEnumTagMultiPayload();
      v21 = *(v20 + 16);
      swift_errorRetain();
      v28 = (v21 + *v21);
      v22 = swift_task_alloc();
      v0[27] = v22;
      *v22 = v0;
      v22[1] = sub_1004168D8;
      v23 = v0[14];

      return v28(v23, v19, v20);
    }
  }

  v7 = v0[19];
  sub_10000BBC4(v0[20], v7, &qword_10083B020, &unk_1006D8ED0);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v8 == enum case for DIPError.Code.webPresentmentNoEligibleDocuments(_:))
  {
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = v0[11];
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BA08((v13 + 136), *(v13 + 160));
    (*(v11 + 104))(v10, enum case for MobileDocumentProviderAuxiliaryView.noEligibleDocuments(_:), v12);
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_100416540;
    v15 = v0[17];
  }

  else
  {
    if (v8 != enum case for DIPError.Code.webPresentmentServiceUnavailable(_:))
    {
      (*(v3 + 8))(v0[19], v2);
      goto LABEL_2;
    }

    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[16];
    sub_10000BA08((v0[11] + 136), *(v0[11] + 160));
    (*(v26 + 104))(v24, enum case for MobileDocumentProviderAuxiliaryView.serviceUnavailable(_:), v25);
    v27 = swift_task_alloc();
    v0[25] = v27;
    *v27 = v0;
    v27[1] = sub_100416190;
    v15 = v0[18];
  }

  return sub_1003FFB68(v15);
}

uint64_t sub_100416190()
{
  v2 = *v1;

  v3 = v2[18];
  v4 = v2[16];
  v5 = v2[15];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100422584;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100416328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100416328()
{
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
  v1 = v0[12];
  swift_beginAccess();
  if (*(v1 + 16))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[14];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v5[5];
    v8 = v5[6];
    sub_10000BA08(v5 + 2, v7);
    *v4 = v6;
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + 16);
    swift_errorRetain();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_1004168D8;
    v11 = v0[14];

    return v12(v11, v7, v8);
  }
}

uint64_t sub_100416540()
{
  v2 = *v1;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10042257C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1004166D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004166D8()
{
  v1 = v0[12];
  swift_beginAccess();
  if (*(v1 + 16))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[14];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v5[5];
    v8 = v5[6];
    sub_10000BA08(v5 + 2, v7);
    *v4 = v6;
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + 16);
    swift_errorRetain();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_1004168D8;
    v11 = v0[14];

    return v12(v11, v7, v8);
  }
}

uint64_t sub_1004168D8()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v2 + 112);
  if (v0)
  {

    sub_10000BE18(v4, &qword_100843BC8, &qword_1006E21F0);

    return _swift_task_switch(sub_100416AAC, 0, 0);
  }

  else
  {
    sub_10000BE18(v4, &qword_100843BC8, &qword_1006E21F0);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_100416AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100416B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v6[13] = swift_task_alloc();
  v8 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100416CE8, 0, 0);
}

uint64_t sub_100416CE8()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_beginAccess();
  *(v4 + 16) = 1;
  v5 = v2[5];
  v6 = v2[6];
  sub_10000BA08(v2 + 2, v5);
  v7 = type metadata accessor for WebPresentmentResponse();
  (*(*(v7 - 8) + 16))(v1, v3, v7);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v6 + 16) + **(v6 + 16));
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_100416E98;
  v9 = v0[18];

  return v11(v9, v5, v6);
}

uint64_t sub_100416E98()
{
  v2 = *(*v1 + 144);
  *(*v1 + 160) = v0;

  sub_10000BE18(v2, &qword_100843BC8, &qword_1006E21F0);
  if (v0)
  {
    v3 = sub_1004170E0;
  }

  else
  {
    v3 = sub_100416FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100416FD8()
{
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004170E0(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentScannableCodeManager unable to send response over scannable code handler: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  v7 = v1[20];
  v8 = v1[13];
  v10 = v1[10];
  v9 = v1[11];
  v11 = v1[9];

  (*(v10 + 8))(v9, v11);
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v1[15] + 8))(v1[16], v1[14]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100417304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004173C4, 0, 0);
}

uint64_t sub_1004173C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.connecting(_:), v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1004174A4;
  v5 = v0[7];

  return sub_1003FFB68(v5);
}

uint64_t sub_1004174A4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10041764C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10041764C()
{
  v1 = v0[9];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  v0[2] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100417700(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v36 = a3;
  v32 = a1;
  v3 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  v25 = v3;
  v4 = *(v3 - 8);
  v35 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v27 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v30 = type metadata accessor for TaskPriority();
  v13 = *(v30 - 8);
  v29 = *(v13 + 56);
  v31 = v13 + 56;
  v29(v12, 1, 1, v30);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v7);
  v32 = *(v4 + 16);
  v32(v6, v36, v3);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = *(v4 + 80);
  v28 = v15 | 7;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = v33;
  *(v16 + 4) = v33;
  (*(v8 + 32))(&v16[v14], &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v18 = *(v4 + 32);
  v19 = &v16[(v9 + v15 + v14) & ~v15];
  v20 = v27;
  v21 = v25;
  v18(v19, v27, v25);

  sub_100455670(v12, &unk_1006E2250, v16);
  sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
  v29(v12, 1, 1, v30);
  v32(v20, v36, v21);
  v22 = (v15 + 40) & ~v15;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v17;
  v18(&v23[v22], v20, v21);

  sub_100455670(v12, &unk_1006E2258, v23);
  return sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
}

uint64_t sub_100417AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[11] = a3;
  v8 = type metadata accessor for DIPError.Code();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[20] = swift_task_alloc();
  v9 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v7[27] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderRecord(0);
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_100417D14, 0, 0);
}

uint64_t sub_100417D14()
{
  v1 = v0[11];
  v2 = v1[15];
  v3 = v1[16];
  sub_10000BA08(v1 + 12, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_100417E44;
  v5 = v0[12];

  return v7(v5, v2, v3);
}

uint64_t sub_100417E44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_1004186A8;
  }

  else
  {
    v4 = sub_100417F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100417F58()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  sub_10000BA08((v0[11] + 256), *(v0[11] + 280));
  sub_100473D74(v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[26];
    v6 = v0[24];
    v7 = v0[25];
    sub_10000BE18(v0[27], &qword_1008437B0, &unk_1006E1720);
    PartialWebPresentmentRequest.originatingURL.getter();
    v8 = URL.host.getter();
    v10 = v9;
    v0[34] = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      v11 = v0[15];
      sub_10000BA08((v0[11] + 136), *(v0[11] + 160));
      v0[5] = type metadata accessor for ImmediateWebPresentmentRequestReleaser(0);
      v0[6] = &off_1008101F8;
      v12 = sub_100032DBC(v0 + 2);
      sub_100420720(v11, v12, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v13 = swift_task_alloc();
      v0[35] = v13;
      *v13 = v0;
      v13[1] = sub_1004183F0;
      v14 = v0[32];

      return sub_1003FF244(v14, v8, v10, (v0 + 2));
    }

    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[16];

    (*(v23 + 104))(v22, enum case for DIPError.Code.webPresentmentMissingHost(_:), v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v25 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100007224(&qword_100843D08, &qword_1006E2090);
    v0[10] = v25;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v16 = v0[30];
    v17 = v0[27];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[20];
    v27 = v0[21];
    v21 = v0[13];

    sub_10041FEAC(v17, v16, type metadata accessor for MobileDocumentProviderRecord);
    swift_beginAccess();
    *(v21 + 16) = 1;
    sub_100007224(&qword_100843D08, &qword_1006E2090);
    sub_100420720(v16, v20, type metadata accessor for MobileDocumentProviderRecord);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v19 + 8))(v18, v27);
    sub_1004211E0(v16, type metadata accessor for MobileDocumentProviderRecord);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1004183F0()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004185AC, 0, 0);
  }

  else
  {

    sub_10000BB78(v2 + 2);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1004185AC()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[36];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  v0[10] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004186A8()
{
  v1 = v0[33];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  v0[10] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10041879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100418898, 0, 0);
}

uint64_t sub_100418898()
{
  v1 = v0[2];
  v2 = v1[15];
  v3 = v1[16];
  sub_10000BA08(v1 + 12, v2);
  v4 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
  v6 = v5;
  v0[9] = v5;
  v10 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1004189EC;
  v8 = v0[5];

  return v10(v8, v4, v6, v2, v3);
}

uint64_t sub_1004189EC()
{

  return _swift_task_switch(sub_100418B04, 0, 0);
}

uint64_t sub_100418B04()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
LABEL_8:

    v10 = v0[1];

    return v10();
  }

  sub_10041FEAC(v1, v0[8], type metadata accessor for MobileDocumentProviderRecord);
  v2 = sub_100330A28();
  v0[11] = v3;
  if (!v3)
  {
    sub_1004211E0(v0[8], type metadata accessor for MobileDocumentProviderRecord);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  v6 = v0[4];
  v7 = v6[3];
  v8 = v6[4];
  sub_10000BA08(v6, v7);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_100418CB4;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v4, v5, v7, v8);
}

uint64_t sub_100418CB4()
{

  return _swift_task_switch(sub_100418DCC, 0, 0);
}

uint64_t sub_100418DCC()
{
  sub_1004211E0(*(v0 + 64), type metadata accessor for MobileDocumentProviderRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100418E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  v7[11] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[12] = swift_task_alloc();
  v8 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderRecord(0);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_100419048, 0, 0);
}

uint64_t sub_100419048()
{
  v1 = v0[6];
  v2 = v1[15];
  v3 = v1[16];
  sub_10000BA08(v1 + 12, v2);
  v4 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
  v6 = v5;
  v0[23] = v5;
  v10 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_10041919C;
  v8 = v0[19];

  return v10(v8, v4, v6, v2, v3);
}

uint64_t sub_10041919C()
{

  return _swift_task_switch(sub_1004192B4, 0, 0);
}

uint64_t sub_1004192B4()
{
  v1 = v0[19];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
    sub_100007224(&qword_100843D08, &qword_1006E2090);
    (*(v3 + 104))(v2, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[5] = v5;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[9];
    sub_10041FEAC(v1, v0[22], type metadata accessor for MobileDocumentProviderRecord);
    v9 = v8[3];
    v10 = v8[4];
    sub_10000BA08(v8, v9);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_10041959C;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v9, v10);
  }
}

uint64_t sub_10041959C()
{

  return _swift_task_switch(sub_100419698, 0, 0);
}

uint64_t sub_100419698()
{
  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  swift_beginAccess();
  *(v6 + 16) = 0;
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  sub_100420720(v1, v5, type metadata accessor for MobileDocumentProviderRecord);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_1004211E0(v1, type metadata accessor for MobileDocumentProviderRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10041980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[15] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[16] = swift_task_alloc();
  v8 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentResponse();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  sub_100007224(&qword_100843CE0, &qword_1006E2060);
  v7[26] = swift_task_alloc();
  v7[27] = sub_100007224(&qword_100843D30, &qword_1006E2228);
  v7[28] = swift_task_alloc();
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  v7[29] = v11;
  v7[30] = *(v11 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_projectBox();

  return _swift_task_switch(sub_100419AA4, 0, 0);
}

uint64_t sub_100419AA4()
{
  v1 = v0[32];
  v2 = v0[26];
  swift_beginAccess();
  sub_10000BBC4(v1, v2, &qword_100843CE0, &qword_1006E2060);
  v3 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    sub_10000BE18(v0[26], &qword_100843CE0, &qword_1006E2060);
    (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100007224(&qword_100843D08, &qword_1006E2090);
    v0[10] = v7;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[26];
    v14 = v0[27];
    v15 = *(v3 + 48);
    v16 = *(v14 + 48);
    v17 = *(v0[30] + 32);
    v17(v12, v13, v11);
    sub_10001F358((v13 + v15), v12 + v16);
    v18 = *(v14 + 48);
    v17(v10, v12, v11);
    sub_10001F358((v12 + v18), (v0 + 2));
    v19 = swift_task_alloc();
    v0[33] = v19;
    *v19 = v0;
    v19[1] = sub_100419E48;
    v20 = v0[31];
    v21 = v0[25];
    v22 = v0[12];
    v23 = v0[13];

    return sub_10041A22C(v21, v20, (v0 + 2), v22, v23);
  }
}

uint64_t sub_100419E48()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10041A104;
  }

  else
  {
    v2 = sub_100419F5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100419F5C()
{
  v1 = v0[30];
  v11 = v0[29];
  v12 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v10 = v0[17];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  (*(v2 + 16))(v7, v3, v4);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v5 + 8))(v6, v10);
  (*(v2 + 8))(v3, v4);
  sub_10000BB78(v0 + 2);
  (*(v1 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041A104()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  v0[10] = v4;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10041A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_10041A408, 0, 0);
}

uint64_t sub_10041A408(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentScannableCodeManager handling first party selection", v4, 2u);
  }

  v5 = v1[24];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[11];

  v9 = *(v7 + 8);
  v1[25] = v9;
  v9(v5, v6);
  v10 = sub_10000BA08((v8 + 136), *(v8 + 160));
  v11 = sub_10000BA08((*v10 + 16), *(*v10 + 40));
  v1[26] = v11;
  v12 = *v11;

  return _swift_task_switch(sub_10041A538, v12, 0);
}

uint64_t sub_10041A538()
{
  sub_1003F2DD8();

  return _swift_task_switch(sub_10041A5A4, 0, 0);
}

uint64_t sub_10041A5A4()
{
  v1 = v0[10];
  v0[27] = sub_10000BA08((v0[11] + 56), *(v0[11] + 80));
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_10041A66C;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v2, v3);
}

uint64_t sub_10041A66C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_10041A76C, 0, 0);
}

uint64_t sub_10041A76C(uint64_t a1)
{
  v38 = v1;
  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[25];
  v11 = v1[23];
  v12 = v1[20];
  v13 = v1[21];
  if (v9)
  {
    v35 = v1[23];
    v36 = v1[25];
    v14 = v1[18];
    v15 = v1[19];
    v34 = v1[21];
    v16 = v1[17];
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
    v24 = v1[17];
    v23 = v1[18];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = swift_task_alloc();
  v1[31] = v25;
  *v25 = v1;
  v25[1] = sub_10041A9E4;
  v26 = v1[29];
  v27 = v1[30];
  v29 = v1[8];
  v28 = v1[9];
  v30 = v1[6];
  v31 = v1[7];

  return sub_1004743C0(v30, v28, v31, v29, v26, v27);
}

uint64_t sub_10041A9E4()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10041AB90, 0, 0);
  }

  else
  {
    sub_10000BD94(v2[29], v2[30]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_10041AB90()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    sub_10000BBC4(v0[16], v4, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v6 + 88))(v4, v5) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[12]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v7 = v0[16];
  sub_10000BD94(v0[29], v0[30]);

  sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041AF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  sub_100007224(&qword_100843CE0, &qword_1006E2060);
  v6[17] = swift_task_alloc();
  v6[18] = sub_100007224(&qword_100843D30, &qword_1006E2228);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_projectBox();

  return _swift_task_switch(sub_10041B0BC, 0, 0);
}

uint64_t sub_10041B0BC()
{
  v1 = v0[23];
  v2 = v0[17];
  swift_beginAccess();
  sub_10000BBC4(v1, v2, &qword_100843CE0, &qword_1006E2060);
  v3 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[15];
    sub_10000BE18(v0[17], &qword_100843CE0, &qword_1006E2060);
    (*(v6 + 104))(v4, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100007224(&qword_100843D08, &qword_1006E2090);
    v0[10] = v7;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[22];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v14 = v0[18];
    v15 = *(v3 + 48);
    v16 = *(v14 + 48);
    v17 = *(v0[21] + 32);
    v17(v12, v13, v11);
    sub_10001F358((v13 + v15), v12 + v16);
    v18 = *(v14 + 48);
    v17(v10, v12, v11);
    sub_10001F358((v12 + v18), (v0 + 2));
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_10041B430;
    v20 = v0[22];
    v21 = v0[12];

    return sub_10041B6F0(v21, v20, (v0 + 2));
  }
}

uint64_t sub_10041B430()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10041B5F4;
  }

  else
  {
    v2 = sub_10041B544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041B544()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10041B5F4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  sub_100007224(&qword_100843D08, &qword_1006E2090);
  v0[10] = v4;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10041B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10041B810, 0, 0);
}

uint64_t sub_10041B810(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentScannableCodeManager handling third party selection", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v9 = v1[4];
  v8 = v1[5];

  (*(v6 + 8))(v5, v7);
  v10 = *sub_10000BA08((v8 + 216), *(v8 + 240));
  *(swift_task_alloc() + 16) = v9;
  os_unfair_lock_lock(v10 + 14);
  sub_100407B68(&v10[4]);
  os_unfair_lock_unlock(v10 + 14);

  v11 = *sub_10000BA08((v8 + 216), *(v8 + 240));
  v12 = swift_task_alloc();
  v1[12] = v12;
  *v12 = v1;
  v12[1] = sub_10041B9D4;
  v13 = v1[8];
  v14 = v1[2];
  v15 = v1[3];

  return sub_10032DCBC(v13, v14, v15, v11);
}

uint64_t sub_10041B9D4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10041BCA8;
  }

  else
  {
    v2 = sub_10041BAE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041BAE8()
{
  sub_10000BA08((v0[5] + 136), *(v0[5] + 160));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10041BB94;
  v2 = v0[8];
  v3 = v0[4];

  return sub_1003FE810(v2, v3);
}

uint64_t sub_10041BB94()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10041BDA4;
  }

  else
  {
    v2 = sub_10041BD18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041BCA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10041BD18()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10041BDA4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10041BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041BFB4, 0, 0);
}

uint64_t sub_10041BFB4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.connecting(_:), v3);
  sub_10000BA08((*v7 + 16), *(*v7 + 40));
  (*(v2 + 16))(v4, v1, v3);
  (*(v6 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v5);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_10041C180;
  v9 = v0[14];
  v10 = v0[4];
  v11 = v0[5];

  return sub_10041C340(v9, v10, v11);
}

uint64_t sub_10041C180()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100422580, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10041C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[17] = swift_task_alloc();
  v8 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderUserSelection();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  sub_100007224(&qword_100843798, &unk_1006E21E0);
  v4[27] = swift_task_alloc();
  v11 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v4[28] = v11;
  v4[29] = *(v11 - 8);
  v4[30] = swift_task_alloc();
  v12 = sub_100007224(&qword_1008437A0, &unk_1006E1710);
  v4[31] = v12;
  v4[32] = *(v12 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10041C714, 0, 0);
}

uint64_t sub_10041C714()
{
  (*(*(v0 + 232) + 16))(*(v0 + 240), *(v0 + 24), *(v0 + 224));
  sub_1000BA30C(&qword_100843D20, &qword_1008437A8, &qword_1006E21D0, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 400) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 404) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 408) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v1 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_10041C89C;
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_10041C89C()
{

  if (v0)
  {
    v1 = sub_10041D1E8;
  }

  else
  {
    v1 = sub_10041C9AC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10041C9AC()
{
  v1 = *(v0 + 216);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    v2 = *(v0 + 256);
LABEL_3:
    (*(v2 + 8))(*(v0 + 264), *(v0 + 248));

    v3 = *(v0 + 8);

    return v3();
  }

  sub_10041FEAC(v1, *(v0 + 208), type metadata accessor for RemoteMobileDocumentProviderUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v2 = *(v0 + 256);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      v22 = *(v0 + 120);
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      v48 = *(v0 + 144);
      (*(v23 + 32))(v22, *(v0 + 208), v24);
      MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
      WebPresentmentResponse.init(responseData:)();
      swift_storeEnumTagMultiPayload();
      sub_100007224(&qword_100843CF8, &unk_1006E2078);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v21 + 8))(v20, v48);
      (*(v23 + 8))(v22, v24);
      goto LABEL_3;
    }

    v40 = swift_task_alloc();
    *(v0 + 312) = v40;
    *v40 = v0;
    v40[1] = sub_10041D44C;

    return sub_1005056DC();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *(v0 + 400);
        v7 = *(v0 + 208);
        v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
        *(v0 + 296) = v8;
        v9 = *(v8 - 8);
        v10 = v9;
        *(v0 + 304) = v9;
        if ((*(v9 + 88))(v7, v8) == v6)
        {
          v11 = *(v0 + 404);
          v13 = *(v0 + 88);
          v12 = *(v0 + 96);
          v14 = *(v0 + 80);
          v15 = *(v0 + 32);
          v16 = v15[3];
          v17 = v15[4];
          sub_10000BA08(v15, v16);
          (*(v13 + 104))(v12, v11, v14);
          v18 = swift_task_alloc();
          *(v0 + 392) = v18;
          *v18 = v0;
          v18[1] = sub_10041DD20;
          v19 = *(v0 + 96);

          return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v19, v16, v17);
        }

        goto LABEL_28;
      }

LABEL_20:
      v34 = *(v0 + 176);
      v33 = *(v0 + 184);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 144);
      v38 = *(v0 + 152);
      v39 = *(v0 + 136);
      (*(v34 + 32))(v33, *(v0 + 208), v35);
      (*(v34 + 16))(v39, v33, v35);
      swift_storeEnumTagMultiPayload();
      sub_100007224(&qword_100843CF8, &unk_1006E2078);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v38 + 8))(v36, v37);
      (*(v34 + 8))(v33, v35);
LABEL_29:
      v44 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
      v45 = swift_task_alloc();
      *(v0 + 272) = v45;
      *v45 = v0;
      v45[1] = sub_10041C89C;
      v46 = *(v0 + 248);
      v47 = *(v0 + 216);

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v47, 0, 0, v0 + 16, v46, v44);
    }

    v25 = *(v0 + 408);
    v26 = *(v0 + 208);
    v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
    *(v0 + 280) = v8;
    v27 = *(v8 - 8);
    v10 = v27;
    *(v0 + 288) = v27;
    v28 = (*(v27 + 88))(v26, v8);
    if (v28 == v25)
    {
      v29 = *(v0 + 32);
      v30 = v29[3];
      v31 = v29[4];
      sub_10000BA08(v29, v30);
      v32 = swift_task_alloc();
      *(v0 + 328) = v32;
      *v32 = v0;
      v32[1] = sub_10041D8A8;

      return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v30, v31);
    }

    else
    {
      if (v28 != *(v0 + 400))
      {
LABEL_28:
        (*(v10 + 8))(*(v0 + 208), v8);
        goto LABEL_29;
      }

      v41 = *(*(v0 + 48) + 376);
      *(v0 + 368) = v41;
      sub_100007224(&qword_10083C008, &qword_1006DA4E0);
      v42 = type metadata accessor for DIPSignpost.Config();
      *(v0 + 376) = v42;
      *(v0 + 416) = *(*(v42 - 8) + 80);
      v43 = swift_allocObject();
      *(v0 + 384) = v43;
      *(v43 + 16) = xmmword_1006BF740;
      static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
      static DaemonSignposts.WebPresentment.thirdPartySelection.getter();

      return _swift_task_switch(sub_10041DC74, v41, 0);
    }
  }
}

uint64_t sub_10041D1E8()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[17];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v2 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *v1 = v2;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10041D44C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10041D644;
  }

  else
  {
    v2 = sub_10041D560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041D560()
{
  v1 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_10041C89C;
  v3 = v0[31];
  v4 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_10041D644()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[17];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v2 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *v1 = v2;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10041D8A8()
{

  return _swift_task_switch(sub_10041D9A4, 0, 0);
}

uint64_t sub_10041D9A4()
{
  v1 = *(*(v0 + 48) + 376);
  *(v0 + 336) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 344) = v2;
  v3 = *(v2 - 8);
  *(v0 + 352) = v3;
  *(v0 + 412) = *(v3 + 80);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  *(v4 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_10041DABC, v1, 0);
}

uint64_t sub_10041DABC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = (*(v0 + 412) + 32) & ~*(v0 + 412);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10041DB78, 0, 0);
}

uint64_t sub_10041DB78()
{
  (*(v0[36] + 8))(v0[26], v0[35]);
  v1 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_10041C89C;
  v3 = v0[31];
  v4 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_10041DC74()
{
  sub_10051B0E0(*(v0 + 384));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100422588, 0, 0);
}

uint64_t sub_10041DD20()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10041DE78, 0, 0);
}

uint64_t sub_10041DE78()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v1);
  v7 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_10041C89C;
  v9 = v0[31];
  v10 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0, v0 + 2, v9, v7);
}

uint64_t sub_10041DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041E174, 0, 0);
}

uint64_t sub_10041E174()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:), v3);
  sub_10000BA08((*v7 + 16), *(*v7 + 40));
  (*(v2 + 16))(v4, v1, v3);
  (*(v6 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v5);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_10041E340;
  v9 = v0[14];
  v10 = v0[4];
  v11 = v0[5];

  return sub_10041C340(v9, v10, v11);
}

uint64_t sub_10041E340()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10041E500, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10041E500()
{
  v0[2] = v0[16];
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10041E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[5] = swift_task_alloc();
  v5 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041E774, 0, 0);
}

uint64_t sub_10041E774()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_10000BA08((v0[2] + 336), *(v0[2] + 360));
  sub_100503AC0(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_10041E87C;
  v5 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v5);
}

uint64_t sub_10041E87C()
{

  return _swift_task_switch(sub_10041E978, 0, 0);
}

uint64_t sub_10041E978()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
LABEL_4:
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v5 = *(v0 + 8);

    return v5();
  }

  if (v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_10041E87C;
  v8 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 128, 0, 0, v8);
}

uint64_t sub_10041EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = type metadata accessor for CancellationError();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v5[11] = swift_task_alloc();
  v7 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for WebPresentmentRequest();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_10041ECCC, 0, 0);
}

uint64_t sub_10041ECCC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10041EE00;
  v5 = v0[17];
  v6 = v0[5];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_10041EE00()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10041F050;
  }

  else
  {
    v2 = sub_10041EF14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041EF14()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v2 + 16))(v0[11], v1, v3);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10041F050()
{
  *(v0 + 16) = *(v0 + 152);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 152);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    *(v0 + 24) = v1;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    **(v0 + 88) = *(v0 + 152);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10041F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = type metadata accessor for CancellationError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[10] = swift_task_alloc();
  v6 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10041F32C, 0, 0);
}

uint64_t sub_10041F32C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10041F400;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v1, &unk_1006E2200);
}

uint64_t sub_10041F400()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10041F58C;
  }

  else
  {
    v2 = sub_10041F514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10041F514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10041F58C()
{
  *(v0 + 16) = *(v0 + 120);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 120);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    *(v0 + 24) = v1;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    **(v0 + 80) = *(v0 + 120);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10041F724()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100399D0C;

  return v6(v2, v3);
}

uint64_t sub_10041F84C(uint64_t a1)
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

  sub_1003E653C(0, 0, v4, &unk_1006E2218, v6);
}

uint64_t sub_10041F978()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100399D0C;

  return v6(v2, v3);
}

void *sub_10041FAA0()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);
  sub_10000BB78(v0 + 32);
  sub_10000BB78(v0 + 37);
  sub_10000BB78(v0 + 42);

  return v0;
}

uint64_t sub_10041FB08()
{
  sub_10041FAA0();

  return swift_deallocClassInstance();
}

uint64_t sub_10041FBA4()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041DFEC(v4, v5, v6, (v0 + 5), v0 + v3);
}

uint64_t sub_10041FCA0()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041E5A8(v4, v5, v6, v0 + v3);
}

uint64_t sub_10041FDA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10041FDC8, 0, 0);
}

uint64_t sub_10041FDC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for WebPresentmentRequest();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10041FE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10041FEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041FF14()
{
  v1 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
  v2 = *(v1 + 80);
  v15 = *(v1 + 64);
  v16 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  v3 = *(*(v16 - 8) + 80);
  v17 = *(*(v16 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + ((v2 + 48) & ~v2);
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for BundleRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4, v6);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);
  }

  else
  {
    v9 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    if (!(*(v7 + 48))(v4 + v9, 1, v6))
    {
      v8(v4 + v9, v6);
    }
  }

  v10 = (((v2 + 48) & ~v2) + v15 + v3) & ~v3;

  v11 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v16 + 48);
  v13 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v13 - 8) + 8))(v0 + v10 + v12, v13);

  return _swift_deallocObject(v0, v10 + v17, v2 | v3 | 7);
}

uint64_t sub_1004201F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100420268()
{
  v2 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_10041AF18(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

uint64_t sub_1004203C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100420400()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_10045DA68(v2);
}

uint64_t sub_1004204AC()
{
  v1 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_10000BB78((v0 + 56));
  v5 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100420610()
{
  v2 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_10041980C(v4, v5, v6, v7, v8, (v0 + 7), v0 + v3);
}

uint64_t sub_100420720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100420788()
{
  v1 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  sub_10000BB78((v0 + v10));

  return _swift_deallocObject(v0, ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v9 | 7);
}

uint64_t sub_100420984()
{
  v2 = *(type metadata accessor for MobileDocumentProviderUserSelection() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100041F04;

  return sub_100418E54(v8, v9, v10, v0 + v3, v0 + v6, v0 + v7, v11);
}

uint64_t sub_100420B1C()
{
  v1 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000BB78((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100420BFC()
{
  v2 = *(type metadata accessor for MobileDocumentProviderUserSelection() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100041F04;

  return sub_10041879C(v5, v6, v7, v0 + v3, v0 + v4);
}

uint64_t sub_100420D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843CE0, &qword_1006E2060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100420D84()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(type metadata accessor for ImmediateWebPresentmentRequestReleaser(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v19 = *(v10 + 64);
  v13 = v3 | v11 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v14 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v14 - 8) + 8))(v0 + v8, v14);
  v15 = v6[14];
  v16 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v16 - 8) + 8))(v0 + v8 + v15, v16);
  v17 = type metadata accessor for WebPresentmentRequest();
  (*(*(v17 - 8) + 8))(v0 + v12, v17);

  return _swift_deallocObject(v0, v12 + v19, v13 | 7);
}

uint64_t sub_100421014()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImmediateWebPresentmentRequestReleaser(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = *(v0 + v4);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100041F04;

  return sub_100417AC4(v10, v11, v12, v0 + v3, v13, v0 + v6, v0 + v9);
}

uint64_t sub_1004211E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100421240()
{
  v1 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10042138C()
{
  v2 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100417304(v4, v5, v6, v0 + v3);
}

uint64_t sub_100421484()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10041EB14(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1004215D8()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041F1D4(v4, v5, v6, v0 + v3);
}

uint64_t sub_1004216D0()
{
  v1 = type metadata accessor for WebPresentmentResponse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1004218A8()
{
  v2 = *(type metadata accessor for WebPresentmentResponse() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_100416B50(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

uint64_t sub_100421A08()
{
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100421A60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100415914(v2, v3, (v0 + 4), v4, v5, v6);
}

uint64_t sub_100421B20()
{
  v1 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_10000BB78((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100421C00()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041BE2C(v4, v5, v6, (v0 + 5), v0 + v3);
}

uint64_t sub_100421CFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_10041F704(a1, v1);
}

uint64_t sub_100421DA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100421DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10041F958(a1, v4, v5, v6);
}

uint64_t sub_100421E98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
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

uint64_t sub_100422000()
{
  v1 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004220D8()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100027B9C;

  return sub_10041F1D4(v4, v5, v6, v0 + v3);
}

uint64_t sub_1004221E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100422264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1004222D4(uint64_t a1)
{
  result = type metadata accessor for WebPresentmentRequest();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100422340(uint64_t a1)
{
  type metadata accessor for WebPresentmentRequest();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MobileDocumentProviderUserSelection();
    if (v2 <= 0x3F)
    {
      sub_100422440(319, &qword_100843E58, type metadata accessor for MobileDocumentProviderRecord);
      if (v3 <= 0x3F)
      {
        sub_100422440(319, &qword_100843E60, sub_10042248C);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WebPresentmentResponse();
          if (v5 <= 0x3F)
          {
            sub_1004224E4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100422440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10042248C(uint64_t a1)
{
  if (!qword_10083BDB0)
  {
    type metadata accessor for DigitalPresentmentEligibleProposalData(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10083BDB0);
    }
  }
}

unint64_t sub_1004224E4()
{
  result = qword_100843E68;
  if (!qword_100843E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100843E68);
  }

  return result;
}

uint64_t sub_10042258C()
{
  if ((DeviceInformationProvider.isSimulator.getter() & 1) == 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.developerTestPresentmentMode.getter();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 stringForKey:v2];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
      if (v6)
      {
        if (v4 == v7 && v6 == v8)
        {

          v0 = 1;
        }

        else
        {
          v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_13;
      }
    }

    else
    {
      static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
    }

    v0 = 0;
LABEL_13:

    return v0 & 1;
  }

  v0 = 1;
  return v0 & 1;
}

uint64_t sub_1004226B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100422738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WalletPassPresentmentInternalSettingsProvider(uint64_t a1)
{
  result = qword_100843EF0;
  if (!qword_100843EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004227F4(uint64_t a1)
{
  result = type metadata accessor for DeviceInformationProvider();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100422860(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for String.StandardComparator();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100422B2C, v1, 0);
}

uint64_t sub_100422B2C()
{
  v1 = v0[6];
  static DaemonSignposts.requestDocumentCreateProposal.getter();
  DIPSignpost.init(_:)();
  sub_10000BA08((v1 + 112), *(v1 + 136));
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_100422BF8;
  v3 = v0[5];

  return sub_10015EB18(v3);
}

uint64_t sub_100422BF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_1004237EC;
  }

  else
  {
    v6 = sub_100422D2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100422D2C()
{
  v75 = v1;
  v3 = v1[28];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v4 = *(v3 + 16);
  v5 = v1[28];
  if (!v4)
  {

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "WalletPassPresentmentManager: interpretCredentialRequest: no matching proposal was returned", v21, 2u);
    }

    v22 = v1[25];
    v65 = v1[24];
    v68 = v1[26];
    v24 = v1[11];
    v23 = v1[12];
    v25 = v1[9];
    v26 = v1[10];
    v28 = v1[7];
    v27 = v1[8];

    (*(v24 + 8))(v23, v26);
    v29._countAndFlagsBits = 0x3562656564323639;
    v30._countAndFlagsBits = 0xD000000000000049;
    v30._object = 0x8000000100716410;
    v29._object = 0xE800000000000000;
    logMilestone(tag:description:)(v29, v30);
    (*(v27 + 104))(v25, enum case for DIPError.Code.digitalPresentmentNoCredentialAvailable(_:), v28);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v22 + 8))(v68, v65);
    goto LABEL_8;
  }

  v6 = v1[21];
  v7 = v1[18];
  v74 = _swiftEmptyArrayStorage;
  sub_100172F18(0, v4, 0);
  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_25;
  }

  v64 = v3;
  v67 = v6;
  v9 = v74;
  v3 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = v1[29];
  v11 = v1[22];
  v12 = v1[19];
  v13 = v1[6];
  v14 = *(v7 + 72);
  sub_1004270F8(v5 + v3, v12, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  sub_1004239E8(v12, v13, v1 + 2, v11);
  if (v10)
  {
    v16 = v1[25];
    v15 = v1[26];
    v17 = v1[24];
    v18 = v1[19];

    sub_100427160(v18, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    (*(v16 + 8))(v15, v17);

LABEL_8:
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.internalError(_:), v1[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v31 = v1[1];

    return v31();
  }

  v63 = v5;
  v72 = v14;
  sub_100427160(v1[19], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v2 = v74[2];
  v8 = v74[3];
  v0 = v2 + 1;
  if (v2 >= v8 >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v33 = v1[22];
    v9[2] = v0;
    v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v34 = *(v67 + 72);
    sub_100427064(v33, v9 + v70 + v34 * v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
    if (v4 == 1)
    {
      break;
    }

    v3 += v63 + v72;
    v53 = 1;
    while (1)
    {
      v8 = *(v64 + 16);
      if (v53 >= v8)
      {
        break;
      }

      v54 = v1[22];
      v55 = v1[19];
      v56 = v1[6];
      sub_1004270F8(v3, v55, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      sub_1004239E8(v55, v56, v1 + 2, v54);
      sub_100427160(v1[19], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v74 = v9;
      v2 = v9[2];
      v57 = v9[3];
      v0 = v2 + 1;
      if (v2 >= v57 >> 1)
      {
        sub_100172F18((v57 > 1), v2 + 1, 1);
        v9 = v74;
      }

      ++v53;
      v58 = v1[22];
      v9[2] = v0;
      sub_100427064(v58, v9 + v70 + v34 * v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v3 += v72;
      if (v4 == v53)
      {
        goto LABEL_13;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    sub_100172F18((v8 > 1), v0, 1);
    v9 = v74;
  }

LABEL_13:
  v36 = v1[16];
  v35 = v1[17];
  v38 = v1[14];
  v37 = v1[15];

  v1[3] = v9;
  sub_100007224(&qword_100844058, &qword_1006E2418);
  sub_100007224(&qword_100844060, &qword_1006E2420);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006BF740;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v37 + 16))(v36, v35, v38);
  SortDescriptor.init(_:comparator:)();
  (*(v37 + 8))(v35, v38);
  v1[4] = v39;
  sub_100007224(&unk_1008414C0, &qword_1006DDEF8);
  sub_100007224(&qword_100844068, &unk_1006E2480);
  sub_1000BA30C(&qword_100844070, &unk_1008414C0, &qword_1006DDEF8, &protocol conformance descriptor for [A]);
  sub_1000BA30C(&qword_100844078, &qword_100844068, &unk_1006E2480, &protocol conformance descriptor for [A]);
  sub_1000BA30C(&qword_100844080, &qword_100844060, &qword_1006E2420, &protocol conformance descriptor for SortDescriptor<A>);
  v40 = Sequence.sorted<A, B>(using:)();

  defaultLogger()();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v1[25];
  v45 = v1[26];
  v46 = v1[24];
  if (v43)
  {
    v73 = v1[24];
    v47 = v1[11];
    v69 = v1[10];
    v71 = v1[13];
    v66 = v1[26];
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v74 = v49;
    *v48 = 136315138;
    v50 = Array.description.getter();
    v52 = sub_100141FE4(v50, v51, &v74);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "WalletPassPresentmentManager: interpretRequest returning eligibleProposalData %s", v48, 0xCu);
    sub_10000BB78(v49);

    (*(v47 + 8))(v71, v69);
    (*(v44 + 8))(v66, v73);
  }

  else
  {
    v59 = v1[13];
    v61 = v1[10];
    v60 = v1[11];

    (*(v60 + 8))(v59, v61);
    (*(v44 + 8))(v45, v46);
  }

  v62 = v1[1];

  return v62(v40);
}

uint64_t sub_1004237EC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
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

uint64_t sub_1004239E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v72 = a1;
  v63 = a4;
  v6 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  v7 = __chkstk_darwin(v6);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = (&v55 - v9);
  v10 = type metadata accessor for DIPError.Code();
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08((a2 + 192), *(a2 + 216));
  if ((sub_10042258C() & 1) != 0 || (v13 = objc_opt_self(), v14 = [v13 standardUserDefaults], v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter(), v61 = v4, v16 = NSUserDefaults.internalBool(forKey:)(v15), v14, , v16) || (v17 = objc_msgSend(v13, "standardUserDefaults"), v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter(), v19 = NSUserDefaults.internalBool(forKey:)(v18), v17, , v19))
  {
    v20 = 0;
    v21 = &type metadata for SimulatedDigitalPresentmentCredentialValidator;
    v22 = &off_100809AE8;
    v70 = &type metadata for SimulatedDigitalPresentmentCredentialValidator;
    v71 = &off_100809AE8;
LABEL_5:
    sub_10000BA08(v69, v21);
    (v22[3])(v21, v22);

    v23 = v63;
    sub_1004270F8(v72, v63, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    v24 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
    sub_100020260(v69, v23 + *(v24 + 24));
    *(v23 + *(v24 + 20)) = v20;
    return sub_10000BB78(v69);
  }

  v26 = v72;
  v27 = v72[5];
  if (v27 >> 60 != 15)
  {
    v29 = v72[4];
    sub_100020260(a2 + 312, v65);
    v30 = v26[9];
    v55 = v26[8];
    v31 = v26[14];
    v59 = v31;
    if (v31)
    {
      v32 = v26[13];
      v33 = v31;
    }

    else
    {
      v32 = v26[11];
      v33 = v26[12];
    }

    v34 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
    v35 = v60;
    sub_10000BBC4(v26 + *(v34 + 48), v60 + *(v6 + 28), &qword_10083B408, &qword_1006E2490);
    v36 = (v26 + *(v34 + 56));
    v57 = *v36;
    v37 = v57;
    v56 = v36[1];
    v38 = v56;
    *v35 = v29;
    v35[1] = v27;
    v35[2] = v55;
    v35[3] = v30;
    v58 = v30;
    v35[4] = v32;
    v35[5] = v33;
    v39 = (v35 + *(v6 + 32));
    *v39 = v37;
    v39[1] = v38;
    sub_100020260(v65, &v66);
    sub_1004270F8(v35, v62, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
    v40 = sub_10001F370(&v66, v67);
    v55 = &v55;
    __chkstk_darwin(v40);
    v42 = (&v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v42;
    v45 = type metadata accessor for PresentmentKeyRevocationValidator();
    v64[3] = v45;
    v64[4] = &off_100809510;
    v64[0] = v44;
    v46 = type metadata accessor for DigitalPresentmentCredentialValidator(0);
    v47 = swift_allocObject();
    v48 = sub_10001F370(v64, v45);
    __chkstk_darwin(v48);
    v50 = (&v55 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = *v50;
    sub_1000363B4(v29, v27);
    sub_1000363B4(v29, v27);

    sub_1000363B4(v57, v56);
    v53 = sub_100426E3C(v52, v62, v47);
    sub_10000BB78(v64);
    sub_10000BB78(&v66);
    v67 = v46;
    v68 = &off_100809A30;
    *&v66 = v53;
    sub_100427160(v35, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
    sub_10000BB78(v65);
    sub_10001F358(&v66, v69);
    sub_100511C48(*v26, v26[1]);
    v20 = v54;
    sub_10000BD94(v29, v27);
    v21 = v70;
    v22 = v71;

    goto LABEL_5;
  }

  (*(v58 + 104))(v12, enum case for DIPError.Code.badLogic(_:), v10);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v28 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  result = swift_willThrow();
  *v59 = v28;
  return result;
}

uint64_t sub_100424114()
{
  v0 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;

  ISO18013KnownDocTypes.init(rawValue:)();
  v6 = type metadata accessor for ISO18013KnownDocTypes();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_10000BBC4(v5, v3, &qword_10083AE00, &qword_1006D9ED0);
    v9 = (*(v7 + 88))(v3, v6);
    if (v9 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      v8 = 0;
      goto LABEL_9;
    }

    if (v9 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      v8 = 2;
      goto LABEL_9;
    }

    if (v9 == enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      v8 = 1;
      goto LABEL_9;
    }

    (*(v7 + 8))(v3, v6);
  }

  v8 = 3;
LABEL_9:
  sub_10000BE18(v5, &qword_10083AE00, &qword_1006D9ED0);
  return v8;
}

uint64_t sub_1004242EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[74] = v8;
  v9[73] = a8;
  v9[72] = a7;
  v9[71] = a6;
  v9[70] = a5;
  v9[69] = a4;
  v9[68] = a3;
  v9[67] = a2;
  v9[66] = a1;
  v9[75] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v9[76] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v9[77] = swift_task_alloc();
  v9[78] = swift_task_alloc();
  v9[79] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v9[80] = v10;
  v9[81] = *(v10 - 8);
  v9[82] = swift_task_alloc();
  v9[83] = type metadata accessor for DigitalPresentmentUIResult(0);
  v9[84] = swift_task_alloc();
  v9[85] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v9[86] = v11;
  v9[87] = *(v11 - 8);
  v9[88] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v9[89] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v9[90] = v12;
  v9[91] = *(v12 - 8);
  v9[92] = swift_task_alloc();
  type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();

  return _swift_task_switch(sub_1004245B0, v8, 0);
}

uint64_t sub_1004245B0()
{
  v1 = v0[69];
  if (*(v1 + 16))
  {
    v2 = v0[94];
    v3 = v0[93];
    v4 = *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) - 8);
    sub_1004270F8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100427064(v3, v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100426230(v2, v0 + 2);
    v7 = swift_task_alloc();
    v0[95] = v7;
    *v7 = v0;
    v7[1] = sub_100424A30;

    return sub_1004266D0((v0 + 2));
  }

  else
  {
    (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v0[80]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.internalError(_:), v0[80]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100424A30()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 592);
  if (v0)
  {
    v4 = sub_1004254B0;
  }

  else
  {
    v4 = sub_100424B5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100424B5C()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[68];
  v5 = sub_10000BA08(v0 + 2, v0[5]);
  v6 = *(*v5 + 40);
  v7 = *(*v5 + 48);
  sub_10000BA08((*v5 + 16), v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v0[97] = v8;
  v0[98] = v9;
  v30 = *(v1 + 176);
  v0[99] = v30;
  v11 = *(v1 + 184);
  v0[100] = v11;
  sub_100020260(v4, (v0 + 12));
  v0[20] = type metadata accessor for DeviceInformationProvider();
  v0[21] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v0 + 17);
  v28 = v10;
  sub_10000B8B8(v8, v10);
  DeviceInformationProvider.init()();

  sub_1000363B4(v3, v2);
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[86];
  v12 = v0[74];
  v24 = v0[73];
  v13 = v0[72];
  v14 = v0[69];
  v15 = qword_100882378;
  v16 = *(v11 + 16);
  v0[10] = v30;
  v0[11] = v11;
  v0[101] = sub_100032DBC(v0 + 7);

  v16(v0 + 12, v8, v28, v0 + 17, v14, v13, v24, v15, v30, v11);
  sub_100020260((v0 + 7), (v0 + 22));
  swift_beginAccess();
  sub_100426FF4((v0 + 22), v12 + 272);
  swift_endAccess();
  static DaemonSignposts.requestDocumentUI.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v0[102] = v17;
  (*(v26 + 8))(v25, v27);
  sub_10000BA08(v0 + 2, v0[5]);
  v18 = sub_100142684();
  v29 = (*(v11 + 24) + **(v11 + 24));
  v19 = swift_task_alloc();
  v0[103] = v19;
  *v19 = v0;
  v19[1] = sub_100424ECC;
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[67];

  return v29(v22, v18, v21, v20, v30, v11);
}

uint64_t sub_100424ECC()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 592);
  if (v0)
  {
    v4 = sub_1004256FC;
  }

  else
  {
    v4 = sub_100424FF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100424FF8()
{
  v1 = v0[100];
  v2 = v0[99];
  v3._countAndFlagsBits = 0x3434623438303861;
  v4._object = 0x80000001007163C0;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  logMilestone(tag:description:)(v3, v4);
  v0[105] = (*(v1 + 8))(v2, v1);
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_1004250F8;
  v6 = v0[84];

  return AsyncPromise.value.getter(v6);
}

uint64_t sub_1004250F8()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = *(v2 + 592);

    v4 = sub_1004259DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 592);
    v4 = sub_100425220;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100425220()
{
  v1 = *(v0 + 816);
  v17 = *(v0 + 808);
  v18 = *(v0 + 800);
  v2 = *(v0 + 792);
  v19 = *(v0 + 776);
  v20 = *(v0 + 784);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v21 = *(v0 + 720);
  v22 = *(v0 + 752);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 592);
  v9 = *(v0 + 528);

  sub_100427064(v6, v5, type metadata accessor for DigitalPresentmentUIResult);
  v10 = DigitalPresentmentResponse.encryptedData.getter();
  v12 = v11;
  v13 = *(v7 + 20);
  v14 = type metadata accessor for WalletPassPresentmentResponse(0);
  sub_1004270F8(v5 + v13, v9 + *(v14 + 24), type metadata accessor for DigitalPresentmentEligibleProposalData);
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v1;
  sub_100427160(v5, type metadata accessor for DigitalPresentmentUIResult);
  sub_100426F70(v17, v2, v18);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v19, v20);
  (*(v4 + 8))(v3, v21);
  sub_100427160(v22, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0;
  swift_beginAccess();
  sub_100426FF4(v0 + 336, v8 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1004254B0()
{
  sub_100427160(v0[94], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  sub_10000BB78(v0 + 2);
  (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.internalError(_:), v0[80]);
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

uint64_t sub_1004256FC()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 752);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 592);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v2, v1);
  (*(v5 + 8))(v4, v6);
  sub_100427160(v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 216) = 0u;
  swift_beginAccess();
  sub_100426FF4(v0 + 216, v7 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.internalError(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004259DC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 608);
  v46 = *(v0 + 600);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v45 = *(v1 + 104);
  v45(v4, enum case for DIPError.Code.cancelled(_:), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v6 = *(v46 + 48);
  sub_10000BBC4(v3, v5, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v4, v5 + v6, &qword_10083B020, &unk_1006D8ED0);
  v7 = *(v1 + 48);
  v8 = v7(v5, 1, v2);
  v9 = *(v0 + 640);
  if (v8 != 1)
  {
    sub_10000BBC4(*(v0 + 608), *(v0 + 616), &qword_10083B020, &unk_1006D8ED0);
    if (v7(v5 + v6, 1, v9) != 1)
    {
      v22 = *(v0 + 656);
      v23 = *(v0 + 648);
      v24 = *(v0 + 640);
      v25 = *(v0 + 624);
      v26 = *(v0 + 616);
      v41 = *(v0 + 632);
      v43 = *(v0 + 608);
      (*(v23 + 32))(v22, v5 + v6, v24);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v23 + 8);
      v28(v22, v24);
      sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v41, &qword_10083B020, &unk_1006D8ED0);
      v28(v26, v24);
      sub_10000BE18(v43, &qword_10083B020, &unk_1006D8ED0);

      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      v15 = *(v0 + 784);
      v16 = *(v0 + 776);
      v17 = *(v0 + 752);
      v18 = *(v0 + 736);
      v19 = *(v0 + 728);
      v20 = *(v0 + 720);
      v21 = *(v0 + 592);
      sub_100426F70(*(v0 + 808), *(v0 + 792), *(v0 + 800));
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10000B90C(v16, v15);
      (*(v19 + 8))(v18, v20);
      sub_100427160(v17, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0;
      swift_beginAccess();
      sub_100426FF4(v0 + 256, v21 + 272);
      swift_endAccess();
      sub_10000BB78((v0 + 56));
      sub_10000BB78((v0 + 16));
      goto LABEL_10;
    }

    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    v13 = *(v0 + 632);
    v14 = *(v0 + 616);
    sub_10000BE18(*(v0 + 624), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v13, &qword_10083B020, &unk_1006D8ED0);
    (*(v11 + 8))(v14, v12);
LABEL_6:
    sub_10000BE18(*(v0 + 608), &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v10 = *(v0 + 632);
  sub_10000BE18(*(v0 + 624), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
  if (v7(v5 + v6, 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 608), &qword_10083B020, &unk_1006D8ED0);

LABEL_9:
  v29 = *(v0 + 800);
  v35 = *(v0 + 792);
  v36 = *(v0 + 808);
  v38 = *(v0 + 776);
  v39 = *(v0 + 784);
  v37 = *(v0 + 736);
  v30 = *(v0 + 728);
  v40 = *(v0 + 720);
  v42 = *(v0 + 752);
  v31 = *(v0 + 656);
  v32 = *(v0 + 640);
  v44 = *(v0 + 592);
  (*(v29 + 32))();
  v45(v31, enum case for DIPError.Code.digitalPresentmentAppCancelled(_:), v32);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_100426F70(v36, v35, v29);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v38, v39);
  (*(v30 + 8))(v37, v40);
  sub_100427160(v42, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0;
  swift_beginAccess();
  sub_100426FF4(v0 + 296, v44 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));
LABEL_10:
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.internalError(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100426230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for DIPSignpost();
  v11 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 56);
  if (v15 >> 60 == 15)
  {
    v16 = *(v6 + 104);
    v16(v8, enum case for DIPError.Code.dpAccesssControlRefNil(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:
    v16(v8, enum case for DIPError.Code.internalError(_:), v5);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v26 = v12;
  v27 = v2;
  v28 = v11;
  v17 = *(a1 + 48);
  type metadata accessor for SecAccessControl(0);
  sub_10000B8B8(v17, v15);
  v18 = static SecAccessControlRef.fromData(_:)();
  if (v3)
  {
    sub_10000BD94(v17, v15);
    v16 = *(v6 + 104);
    goto LABEL_5;
  }

  v20 = v18;
  static DaemonSignposts.requestDocumentLocalAuthentication.getter();
  DIPSignpost.init(_:)();
  v21 = *(v27 + 160);
  v22 = *(v27 + 168);
  v27 = *(v22 + 8);
  v23 = v29;
  v29[3] = v21;
  v23[4] = v22;
  sub_100032DBC(v23);
  v24 = v20;
  (v27)();
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000BD94(v17, v15);

  return (*(v26 + 8))(v14, v28);
}

uint64_t sub_1004266D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100426818, v1, 0);
}

uint64_t sub_100426818()
{
  v1 = v0[7];
  static DaemonSignposts.requestDocumentCheckBiometricsStatus.getter();
  DIPSignpost.init(_:)();
  v2 = *sub_10000BA08(v1, v1[3]);
  v3 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v0[2] = v2;
  v0[5] = v3;
  v0[6] = &off_100809DF0;
  v4 = objc_opt_self();

  v5 = [v4 standardUserDefaults];
  v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentBiometricCheck.getter();
  v7 = NSUserDefaults.internalBool(forKey:)(v6);

  if (v7)
  {
    sub_10000BB78(v0 + 2);
LABEL_4:
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v10 + 8))(v9, v11);

    v12 = v0[1];

    return v12();
  }

  sub_10000BA08(v0 + 2, v3);
  v8 = sub_1001425D8();
  sub_10000BB78(v0 + 2);
  if (v8)
  {
    goto LABEL_4;
  }

  v14 = v0[8];
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_100426A30;

  return sub_1001276C0(v14 + 232);
}

uint64_t sub_100426A30()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100426D0C;
  }

  else
  {
    v4 = sub_100426B5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100426B5C()
{
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.digitalPresentmentBiometricsPermissionDenied(_:), v0[9]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100426D0C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100426DA8()
{
  sub_10000BB78(v0 + 14);

  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  sub_10000BE18((v0 + 34), &qword_100844050, &qword_1006E2410);
  sub_10000BB78(v0 + 39);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100426E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = type metadata accessor for PresentmentKeyRevocationValidator();
  v12[4] = &off_100809510;
  v12[0] = a1;
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState;
  sub_100007224(&qword_100844088, &qword_1006E2498);
  v7 = swift_allocObject();
  *(a3 + v6) = v7;
  *(v7 + 28) = 0;
  v8 = (v7 + 28);
  *(v7 + 24) = 0x80;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  v10 = a3 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_krlPerformanceData;
  *v10 = xmmword_1006E2330;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100020260(v12, a3 + 112);
  sub_1004270F8(a2, a3 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
  os_unfair_lock_lock(v8);
  sub_100134294(v9);
  os_unfair_lock_unlock(v8);
  sub_100427160(a2, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
  sub_10000BB78(v12);
  return a3;
}

uint64_t sub_100426F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v9 = a3;
  v5 = sub_100032DBC(v7);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_10000BA08(v7, v8);
  sub_100164AC4();
  return sub_10000BB78(v7);
}

uint64_t sub_100426FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844050, &qword_1006E2410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100427064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004270CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100424114();
  *a1 = result;
  return result;
}

uint64_t sub_1004270F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100427160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004271D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1004272A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WalletPassPresentmentResponse(uint64_t a1)
{
  result = qword_1008440E8;
  if (!qword_1008440E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100427398(uint64_t a1)
{
  result = type metadata accessor for DigitalPresentmentEligibleProposalData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10042741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v228 = type metadata accessor for Certificate();
  v190 = *(v228 - 8);
  __chkstk_darwin(v228);
  v227 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SessionType();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = (&v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v219 = *(v223 - 8);
  __chkstk_darwin(v223);
  v230 = (&v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v224 = *(v222 - 8);
  __chkstk_darwin(v222);
  v221 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v7 - 8);
  v205 = &v156 - v8;
  v204 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.DocumentRequest();
  v193 = *(v204 - 8);
  v9 = __chkstk_darwin(v204);
  v203 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v202 = &v156 - v11;
  v191 = type metadata accessor for DocumentRequest();
  v192 = *(v191 - 8);
  __chkstk_darwin(v191);
  v201 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.UseCase();
  v182 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for CredentialPresentmentRequest.UseCase();
  v179 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for PartialWebPresentmentRequest();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v220 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v217 = *(v16 - 8);
  v218 = v16;
  __chkstk_darwin(v16);
  v216 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for URL();
  v231 = *(v226 - 8);
  v18 = __chkstk_darwin(v226);
  v215 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v225 = &v156 - v20;
  v21 = type metadata accessor for DIPError.Code();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v229 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a1;
  PartialWebPresentmentRequest.documentRequest.getter();
  if ((*(v25 + 88))(v27, v24) != enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
  {
    (*(v25 + 8))(v27, v24);
    (*(v22 + 104))(v229, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v199 + 8))(v194, v200);
  }

  v213 = v22;
  v214 = v21;
  (*(v25 + 96))(v27, v24);
  v211 = v29;
  (*(v29 + 32))(v31, v27, v28);
  v32 = v225;
  v33 = v194;
  PartialWebPresentmentRequest.originatingURL.getter();
  v34 = URL.host.getter();
  v36 = v35;
  v38 = v231 + 8;
  v37 = *(v231 + 8);
  v37(v32, v226);
  v207 = v28;
  v172 = v31;
  if (v36)
  {
    v165 = v36;
    v166 = v34;
    v39 = PartialWebPresentmentMobileDocumentRequest.useCases.getter();
    v40 = *(v39 + 16);
    if (v40)
    {
      v234 = _swiftEmptyArrayStorage;
      v169 = v39;
      v164 = v40;
      sub_100173108(0, v40, 0);
      result = v169;
      v42 = 0;
      v43 = v234;
      v44 = v169 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
      v187 = v193 + 16;
      LODWORD(v220) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
      v219 += 13;
      LODWORD(v217) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
      v218 = v224 + 32;
      v184 = (v193 + 8);
      v183 = v192 + 32;
      v161 = (v182 + 8);
      v160 = v179 + 32;
      v45 = v211;
      v163 = v44;
      v162 = v182 + 16;
      v46 = v221;
      while (v42 < *(result + 16))
      {
        v171 = v43;
        v47 = *(v182 + 72);
        v167 = v42;
        (*(v182 + 16))(v180, v44 + v47 * v42, v181);
        v48 = PartialWebPresentmentMobileDocumentRequest.UseCase.documentSets.getter();
        v49 = *(v48 + 16);
        if (v49)
        {
          v233 = _swiftEmptyArrayStorage;
          v168 = v48;
          v170 = v49;
          sub_100172E50(0, v49, 0);
          v50 = v170;
          result = v168;
          v51 = 0;
          v52 = v233;
          v53 = v168 + 32;
          v157 = v168 + 32;
          while (v51 < *(result + 16))
          {
            v54 = *(v53 + 8 * v51);
            v55 = *(v54 + 16);
            if (v55)
            {
              v158 = v51;
              v159 = v52;
              v232 = _swiftEmptyArrayStorage;

              sub_100172E90(0, v55, 0);
              v56 = v232;
              result = sub_100007224(&qword_10083C210, &unk_1006DA7D0);
              v189 = result;
              v57 = 0;
              v188 = v54 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
              v186 = v54;
              v185 = v55;
              while (v57 < *(v54 + 16))
              {
                v198 = v56;
                v197 = v57 + 1;
                v58 = *(v193 + 16);
                v59 = v202;
                v60 = v204;
                v58(v202, v188 + *(v193 + 72) * v57, v204);
                v58(v203, v59, v60);
                v196 = PartialWebPresentmentMobileDocumentRequest.DocumentRequest.documentType.getter();
                v195 = v61;
                v62 = type metadata accessor for Locale.Region();
                (*(*(v62 - 8) + 56))(v205, 1, 1, v62);
                v63 = PartialWebPresentmentMobileDocumentRequest.DocumentRequest.namespaces.getter();
                v43 = v189;
                v64 = static _DictionaryStorage.copy(original:)();
                v65 = v64;
                v66 = 0;
                v67 = *(v63 + 64);
                v206 = v63 + 64;
                v212 = v63;
                v68 = 1 << *(v63 + 32);
                if (v68 < 64)
                {
                  v69 = ~(-1 << v68);
                }

                else
                {
                  v69 = -1;
                }

                v70 = v69 & v67;
                v71 = (v68 + 63) >> 6;
                v209 = v64 + 64;
                v210 = v64;
                v208 = v71;
                if (v70)
                {
                  while (1)
                  {
                    v72 = __clz(__rbit64(v70));
                    v213 = (v70 - 1) & v70;
LABEL_22:
                    v76 = v72 | (v66 << 6);
                    v77 = *(v212 + 56);
                    v78 = (*(v212 + 48) + 16 * v76);
                    v79 = v78[1];
                    v215 = *v78;
                    v216 = v76;
                    v80 = *(v77 + 8 * v76);
                    sub_100007224(&qword_100834968, &qword_1006C0158);
                    v81 = static _DictionaryStorage.copy(original:)();
                    v43 = v81;
                    v82 = v80 + 64;
                    v83 = 1 << v80[32];
                    v84 = v83 < 64 ? ~(-1 << v83) : -1;
                    v45 = v84 & *(v80 + 8);
                    v85 = (v83 + 63) >> 6;
                    v225 = (v81 + 64);
                    v214 = v79;

                    v229 = v80;

                    v28 = 0;
                    v226 = v43;
                    if (v45)
                    {
                      break;
                    }

LABEL_27:
                    v87 = v28;
                    while (1)
                    {
                      v28 = v87 + 1;
                      if (__OFADD__(v87, 1))
                      {
                        __break(1u);
                        goto LABEL_56;
                      }

                      if (v28 >= v85)
                      {
                        break;
                      }

                      v88 = *&v82[8 * v28];
                      ++v87;
                      if (v88)
                      {
                        v86 = __clz(__rbit64(v88));
                        v45 = (v88 - 1) & v88;
                        goto LABEL_32;
                      }
                    }

                    v97 = v216;
                    *(v209 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v216;
                    v65 = v210;
                    v98 = (*(v210 + 48) + 16 * v97);
                    v99 = v214;
                    *v98 = v215;
                    v98[1] = v99;
                    *(*(v65 + 56) + 8 * v97) = v43;
                    v100 = *(v65 + 16);
                    v95 = __OFADD__(v100, 1);
                    v101 = v100 + 1;
                    if (v95)
                    {
                      goto LABEL_77;
                    }

                    *(v65 + 16) = v101;
                    v28 = v207;
                    v45 = v211;
                    v71 = v208;
                    v70 = v213;
                    if (!v213)
                    {
                      goto LABEL_17;
                    }
                  }

                  while (1)
                  {
                    v86 = __clz(__rbit64(v45));
                    v45 &= v45 - 1;
LABEL_32:
                    v65 = v86 | (v28 << 6);
                    v89 = *(v229 + 7);
                    v90 = (*(v229 + 6) + 16 * v65);
                    v91 = v90[1];
                    v231 = *v90;
                    v92 = v220;
                    if (*(v89 + v65) == 1)
                    {
                      *v230 = 0;
                      v92 = v217;
                    }

                    (*v219)(v230, v92, v223);

                    CredentialPresentmentElementRequestInfo.init(intentToStore:)();
                    v43 = v226;
                    *&v225[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
                    v93 = (v43[6] + 16 * v65);
                    *v93 = v231;
                    v93[1] = v91;
                    (*(v224 + 32))(v43[7] + *(v224 + 72) * v65, v46, v222);
                    v94 = v43[2];
                    v95 = __OFADD__(v94, 1);
                    v96 = v94 + 1;
                    if (v95)
                    {
                      break;
                    }

                    v43[2] = v96;
                    if (!v45)
                    {
                      goto LABEL_27;
                    }
                  }

LABEL_76:
                  __break(1u);
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

LABEL_17:
                v73 = v66;
                v74 = v201;
                while (1)
                {
                  v66 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  if (v66 >= v71)
                  {
                    break;
                  }

                  v75 = *(v206 + 8 * v66);
                  ++v73;
                  if (v75)
                  {
                    v72 = __clz(__rbit64(v75));
                    v213 = (v75 - 1) & v75;
                    goto LABEL_22;
                  }
                }

                DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
                v102 = *v184;
                v103 = v204;
                (*v184)(v203, v204);
                v102(v202, v103);
                v56 = v198;
                v232 = v198;
                v105 = v198[2];
                v104 = v198[3];
                if (v105 >= v104 >> 1)
                {
                  sub_100172E90((v104 > 1), v105 + 1, 1);
                  v56 = v232;
                }

                v56[2] = v105 + 1;
                result = (*(v192 + 32))(v56 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v105, v74, v191);
                v57 = v197;
                v54 = v186;
                if (v197 == v185)
                {

                  result = v168;
                  v50 = v170;
                  v52 = v159;
                  v51 = v158;
                  v53 = v157;
                  goto LABEL_45;
                }
              }

              goto LABEL_80;
            }

            v56 = _swiftEmptyArrayStorage;
LABEL_45:
            v233 = v52;
            v107 = v52[2];
            v106 = v52[3];
            if (v107 >= v106 >> 1)
            {
              v108 = v51;
              v109 = v53;
              sub_100172E50((v106 > 1), v107 + 1, 1);
              v53 = v109;
              v51 = v108;
              v50 = v170;
              result = v168;
              v52 = v233;
            }

            ++v51;
            v52[2] = v107 + 1;
            v52[v107 + 4] = v56;
            if (v51 == v50)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_81;
        }

LABEL_48:

        v110 = v180;
        PartialWebPresentmentMobileDocumentRequest.UseCase.isMandatory.getter();
        v111 = v177;
        CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
        (*v161)(v110, v181);
        v43 = v171;
        v234 = v171;
        v113 = v171[2];
        v112 = v171[3];
        if (v113 >= v112 >> 1)
        {
          sub_100173108((v112 > 1), v113 + 1, 1);
          v43 = v234;
        }

        v114 = v167 + 1;
        v43[2] = v113 + 1;
        (*(v179 + 32))(v43 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v113, v111, v178);
        v42 = v114;
        v65 = v200;
        v66 = v199;
        result = v169;
        v44 = v163;
        if (v114 == v164)
        {
LABEL_78:
          v171 = v43;

          goto LABEL_57;
        }
      }

      goto LABEL_82;
    }

LABEL_56:

    v171 = _swiftEmptyArrayStorage;
    v65 = v200;
    v66 = v199;
    v45 = v211;
LABEL_57:
    v130 = PartialWebPresentmentMobileDocumentRequest.authenticationCertificateChains.getter();
    v131 = *(v130 + 16);
    if (v131)
    {
      v234 = _swiftEmptyArrayStorage;
      v132 = v130;
      sub_1001730C8(0, v131, 0);
      result = v132;
      v133 = 0;
      v134 = v234;
      v223 = v132 + 32;
      v229 = (v190 + 8);
      v230 = (v190 + 16);
      v135 = v194;
      v221 = v131;
      v222 = v132;
      while (v133 < *(result + 16))
      {
        v136 = *(v223 + 8 * v133);
        v137 = *(v136 + 16);
        if (v137)
        {
          v225 = v133;
          v226 = v134;
          v233 = _swiftEmptyArrayStorage;

          sub_10017314C(0, v137, 0);
          v138 = v233;
          v139 = *(v190 + 80);
          v224 = v136;
          v140 = v136 + ((v139 + 32) & ~v139);
          v231 = *(v190 + 72);
          v141 = *(v190 + 16);
          do
          {
            v143 = v227;
            v142 = v228;
            v141(v227, v140, v228);
            v144 = Certificate.data.getter();
            v146 = v145;
            (*v229)(v143, v142);
            v233 = v138;
            v148 = v138[2];
            v147 = v138[3];
            if (v148 >= v147 >> 1)
            {
              sub_10017314C((v147 > 1), v148 + 1, 1);
              v138 = v233;
            }

            v138[2] = v148 + 1;
            v149 = &v138[2 * v148];
            v149[4] = v144;
            v149[5] = v146;
            v140 += v231;
            --v137;
          }

          while (v137);

          v135 = v194;
          v28 = v207;
          v131 = v221;
          result = v222;
          v133 = v225;
          v134 = v226;
        }

        else
        {
          v138 = _swiftEmptyArrayStorage;
        }

        v234 = v134;
        v151 = v134[2];
        v150 = v134[3];
        if (v151 >= v150 >> 1)
        {
          v152 = result;
          v153 = v133;
          sub_1001730C8((v150 > 1), v151 + 1, 1);
          v133 = v153;
          result = v152;
          v135 = v194;
          v134 = v234;
        }

        ++v133;
        v134[2] = v151 + 1;
        v134[v151 + 4] = v138;
        v65 = v200;
        v66 = v199;
        v45 = v211;
        if (v133 == v131)
        {

          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v134 = _swiftEmptyArrayStorage;
    v135 = v194;
LABEL_74:
    v154 = v173;
    v155 = v165;
    *v173 = v166;
    v154[1] = v155;
    v154[2] = v134;
    (*(v174 + 104))(v154, enum case for SessionType.web(_:), v175);
    CredentialPresentmentRequest.init(useCases:sessionType:)();
    (*(v66 + 8))(v135, v65);
    return (*(v45 + 8))(v172, v28);
  }

  else
  {
    v231 = v38;
    v115 = v216;
    defaultLogger()();
    v116 = v199;
    v117 = v220;
    v118 = v200;
    (*(v199 + 16))(v220, v33, v200);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v234 = v230;
      *v121 = 136315138;
      v122 = v215;
      LODWORD(v228) = v120;
      PartialWebPresentmentRequest.originatingURL.getter();
      sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v123 = v226;
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v125;
      v37(v122, v123);
      v118 = v200;
      v231 = *(v116 + 8);
      (v231)(v220, v200);
      v127 = sub_100141FE4(v124, v126, &v234);
      v128 = v115;
      v129 = v127;
      v28 = v207;

      *(v121 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v119, v228, "Originating URL is missing host: %s", v121, 0xCu);
      sub_10000BB78(v230);

      (*(v217 + 8))(v128, v218);
    }

    else
    {

      v231 = *(v116 + 8);
      (v231)(v117, v118);
      (*(v217 + 8))(v115, v218);
    }

    (*(v213 + 104))(v229, enum case for DIPError.Code.webPresentmentMissingHost(_:), v214);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (v231)(v194, v118);
    return (*(v211 + 8))(v172, v28);
  }
}

unint64_t sub_100428E60(uint64_t a1)
{
  v1 = sub_100428E94(a1);

  return v1;
}

unint64_t sub_100428E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100844128, &unk_1006E24C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100175490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t type metadata accessor for MobileDocumentProviderRequestState(uint64_t a1)
{
  result = qword_1008441A0;
  if (!qword_1008441A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100428FE4(uint64_t a1)
{
  result = sub_100429080();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MobileDocumentProviderUserSelection();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MobileDocumentProviderPresentmentResponse();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100429080()
{
  result = qword_1008441B0;
  if (!qword_1008441B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008441B0);
  }

  return result;
}

uint64_t sub_1004290CC(uint64_t a1)
{
  v1 = *sub_10000BA08((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100429100(uint64_t a1, void *a2)
{
  v3 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1004291AC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100027B9C;

  return v7(a2);
}

void *sub_1004292D0(void *a1)
{
  v3 = sub_100007224(&qword_100843558, &qword_1006E1270);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  swift_defaultActor_initialize();
  sub_100007224(&unk_100843560, &qword_1006E1278);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v1 + 19) = v6;
  v7 = [objc_opt_self() anonymousListener];
  sub_100007224(&qword_1008442F8, &unk_1006E26A0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(v1 + 20) = v8;
  v9 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100007224(&qword_100844300, &qword_1006E1280);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000B1FC8(v5, v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16), &qword_100843558, &qword_1006E1270);
  *(v1 + 21) = v10;
  v11 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  v12 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  v14 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  sub_100020260(a1, (v1 + 112));
  v15 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  v21.receiver = v1;
  v21.super_class = v15;
  v16 = objc_msgSendSuper2(&v21, "init");
  v17 = v16[20];
  v18 = v16;

  os_unfair_lock_lock((v17 + 24));
  sub_1004338C8((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));

  sub_10000BB78(a1);

  return v18;
}

void *sub_1004295E4()
{
  v1 = v0[19];

  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));

  v2 = v0[20];

  os_unfair_lock_lock((v2 + 24));
  [*(v2 + 16) invalidate];
  os_unfair_lock_unlock((v2 + 24));

  sub_10000BB78(v0 + 14);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation, &qword_100844308, &qword_1006E26B0);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response, &unk_100844318, &qword_1006E26C0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004296D8()
{
  sub_1004295E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10042972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v58 = a2;
  v61 = a4;
  v5 = sub_100007224(&unk_100844340, &qword_1006E15B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for MobileDocumentProviderOption();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v45 - v13;
  v56 = sub_100007224(&unk_1008442E0, &unk_1006E2650);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v45 - v14;
  v57 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100007224(&qword_100843698, &qword_1006E15C0);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v45 - v16;
  v17 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v50 = *(v17 - 8);
  v51 = v17;
  __chkstk_darwin(v17);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
    v21 = (v9 + 48);
    v22 = (v9 + 32);
    v23 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v24 = *(v20 + 72);
    v67 = _swiftEmptyArrayStorage;
    v64 = v9;
    v65 = v8;
    v62 = (v9 + 48);
    v63 = v12;
    do
    {
      sub_100429E78(v23, v7);
      if ((*v21)(v7, 1, v8) == 1)
      {
        sub_10000BE18(v7, &unk_100844340, &qword_1006E15B0);
      }

      else
      {
        v25 = v24;
        v26 = *v22;
        v27 = v7;
        v28 = v12;
        v29 = v66;
        v30 = v27;
        (*v22)(v66);
        (v26)(v28, v29, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1003C6640(0, v67[2] + 1, 1, v67);
        }

        v32 = v67[2];
        v31 = v67[3];
        v7 = v30;
        if (v32 >= v31 >> 1)
        {
          v67 = sub_1003C6640((v31 > 1), v32 + 1, 1, v67);
        }

        v24 = v25;
        v33 = v67;
        v67[2] = v32 + 1;
        v12 = v63;
        v34 = v33 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v32;
        v8 = v65;
        (v26)(v34, v63, v65);
        v21 = v62;
      }

      v23 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {
    v67 = _swiftEmptyArrayStorage;
  }

  v68 = v67;
  swift_getKeyPath();
  v35 = v46;
  KeyPathComparator.init<A>(_:order:)();
  sub_100007224(&unk_100844350, &qword_1006E15F8);
  sub_1000BA30C(&qword_1008436A8, &unk_100844350, &qword_1006E15F8, &protocol conformance descriptor for [A]);
  sub_1000BA30C(&unk_100844360, &qword_100843698, &qword_1006E15C0, &protocol conformance descriptor for KeyPathComparator<A>);
  v36 = v48;
  Sequence.sorted<A>(using:)();
  (*(v47 + 8))(v35, v36);

  v37 = v49;
  MobileDocumentProviderLocalOptionUIConfiguration.init(options:formattedOriginURL:)();
  v39 = v50;
  v38 = v51;
  v40 = v52;
  (*(v50 + 16))(v52, v37, v51);
  v41 = v55;
  v42 = v57;
  v43 = (*(v55 + 104))(v40, enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:), v57);
  __chkstk_darwin(v43);
  *(&v45 - 2) = v60;
  *(&v45 - 1) = v40;
  type metadata accessor for MobileDocumentProviderRequestState(0);
  (*(v54 + 104))(v53, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v56);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v39 + 8))(v37, v38);
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_100429E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4 = __chkstk_darwin(v73);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v65 - v7;
  __chkstk_darwin(v6);
  v66 = &v65 - v8;
  v9 = type metadata accessor for Logger();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = __chkstk_darwin(v9);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v65 - v12;
  v13 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  sub_100400304(a1, v18, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v26 = type metadata accessor for BundleRecord();
    v27 = *(v26 - 8);
    (*(v27 + 32))(v24, v18, v26);
    (*(v27 + 56))(v24, 0, 1, v26);
  }

  else
  {
    v28 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_1000B1FC8(&v18[*(v28 + 48)], v24, &qword_10083ACF8, &qword_1006D8FC0);
    v26 = type metadata accessor for BundleRecord();
    (*(*(v26 - 8) + 8))(v18, v26);
  }

  type metadata accessor for BundleRecord();
  v29 = *(v26 - 8);
  v30 = *(v29 + 48);
  if (v30(v24, 1, v26) == 1)
  {
    sub_10000BE18(v24, &qword_10083ACF8, &qword_1006D8FC0);
    sub_100400304(a1, v16, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100007224(&unk_100844370, &unk_1006DDF00);

      (*(v29 + 56))(v22, 1, 1, v26);
      (*(v29 + 8))(v16, v26);
    }

    else
    {
      v31 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      (*(v29 + 32))(v22, v16, v26);
      (*(v29 + 56))(v22, 0, 1, v26);
      sub_10000BE18(&v16[v31], &qword_10083ACF8, &qword_1006D8FC0);
    }

    if (v30(v22, 1, v26) == 1)
    {
      sub_10000BE18(v22, &qword_10083ACF8, &qword_1006D8FC0);
      v32 = v74;
      goto LABEL_15;
    }

    v24 = v22;
  }

  v32 = v74;
  v33 = BundleRecord.localizedName.getter();
  v35 = v34;
  (*(v29 + 8))(v24, v26);
  v76[0] = v33;
  v76[1] = v35;
  sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (!v75)
  {
LABEL_15:
    v39 = v70;
    defaultLogger()();
    v40 = v69;
    sub_100400304(a1, v69, type metadata accessor for MobileDocumentProviderRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v39;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76[0] = v45;
      *v44 = 136315138;
      sub_100400304(v40, v68, type metadata accessor for MobileDocumentProviderRecord);
      v46 = String.init<A>(describing:)();
      v47 = v40;
      v48 = v46;
      v50 = v49;
      sub_100326E1C(v47);
      v51 = sub_100141FE4(v48, v50, v76);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "MobileDocumentProviderUIConnectionManager could not find localized display name for record %s. Not sending to selection UI", v44, 0xCu);
      sub_10000BB78(v45);

      (*(v71 + 8))(v43, v72);
    }

    else
    {

      sub_100326E1C(v40);
      (*(v71 + 8))(v39, v72);
    }

LABEL_18:
    v38 = 1;
    goto LABEL_19;
  }

  sub_100330A28();
  if (!v36)
  {
    sub_100330370();
    if (!v37)
    {

      v54 = v67;
      defaultLogger()();
      v55 = a1;
      v56 = v66;
      sub_100400304(v55, v66, type metadata accessor for MobileDocumentProviderRecord);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76[0] = v60;
        *v59 = 136315138;
        sub_100400304(v56, v68, type metadata accessor for MobileDocumentProviderRecord);
        v61 = String.init<A>(describing:)();
        v63 = v62;
        sub_100326E1C(v56);
        v64 = sub_100141FE4(v61, v63, v76);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "MobileDocumentProviderUIConnectionManager could not find bundleIdentifier for record %s. Not sending to selection UI", v59, 0xCu);
        sub_10000BB78(v60);
      }

      else
      {

        sub_100326E1C(v56);
      }

      (*(v71 + 8))(v54, v72);
      goto LABEL_18;
    }
  }

  sub_10032FA04();

  MobileDocumentProviderOption.init(recordIdentifier:bundleIdentifier:localizedDisplayName:availableDocumentTypes:)();
  v38 = 0;
LABEL_19:
  v52 = type metadata accessor for MobileDocumentProviderOption();
  return (*(*(v52 - 8) + 56))(v32, v38, 1, v52);
}

uint64_t sub_10042A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v23 = a2;
  v25 = a1;
  v3 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v22 - v5;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v24 = &v22 - v11;
  swift_allocObject();
  swift_weakInit();
  v13 = v3;
  v14 = v25;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  (*(v7 + 16))(v9, v27, v6);
  v16 = v26;
  v17 = v13;
  (*(v4 + 16))(v26, v14, v13);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = (v8 + *(v4 + 80) + v18) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v23;
  (*(v7 + 32))(&v20[v18], v9, v6);
  (*(v4 + 32))(&v20[v19], v16, v17);

  sub_1003E653C(0, 0, v24, &unk_1006E2668, v20);
}

uint64_t sub_10042AAF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_100007224(&qword_1008442F0, &qword_1006E2670);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 88))(v9, v6);
    if (v12 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v12 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
    {

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v11;
      sub_1003E653C(0, 0, v5, &unk_1006E2680, v14);
    }
  }

  return result;
}

uint64_t sub_10042AD54()
{
  sub_10042C604();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10042ADD8, a4, 0);
}

uint64_t sub_10042ADD8()
{
  sub_10042AE3C(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10042AE3C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v33 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MobileDocumentProviderRequestState(0);
  __chkstk_darwin(v40);
  v39 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v35 = &v30 - v7;
  v8 = sub_100007224(&qword_100844308, &qword_1006E26B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100007224(&qword_100843558, &qword_1006E1270);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v36 = v2;
  v14 = *(v2 + 168);
  KeyPath = swift_getKeyPath();
  v42 = sub_1003FD338;
  v43 = KeyPath;
  v16 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v17 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v17));
  sub_100433EC0();
  os_unfair_lock_unlock((v14 + v17));

  v18 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v19 = (*(*(v18 - 8) + 48))(v13, 1, v18);
  v20 = sub_10000BE18(v13, &qword_100843558, &qword_1006E1270);
  if (v19 == 1)
  {
    __chkstk_darwin(v20);
    os_unfair_lock_lock((v14 + v17));
    sub_1003FB544(v14 + v16);
    os_unfair_lock_unlock((v14 + v17));
    v21 = sub_100007224(&qword_100844230, &qword_1006E25F8);
    v22 = *(v21 - 8);
    (*(v22 + 16))(v10, v41, v21);
    (*(v22 + 56))(v10, 0, 1, v21);
    v23 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
    v24 = v36;
    swift_beginAccess();
    sub_1000B2764(v10, v24 + v23, &qword_100844308, &qword_1006E26B0);
    swift_endAccess();
    v25 = *(v24 + 160);
    v26 = swift_getKeyPath();
    __chkstk_darwin(v26);

    os_unfair_lock_lock((v25 + 24));
    sub_100433F40((v25 + 16), v44);
    os_unfair_lock_unlock((v25 + 24));

    *v39 = v44[0];
    swift_storeEnumTagMultiPayload();
    v27 = v35;
    AsyncThrowingStream.Continuation.yield(_:)();
    return (*(v37 + 8))(v27, v38);
  }

  else
  {
    (*(v31 + 104))(v34, enum case for DIPError.Code.unexpectedDaemonState(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v29 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v44[0] = v29;
    sub_100007224(&qword_100844230, &qword_1006E25F8);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_10042B470(void *a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t sub_10042B4BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 224) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  sub_100007224(&qword_1008435C8, &unk_1006E1310);
  *(v6 + 120) = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderRemoteUIError();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10042B684, v5, 0);
}

uint64_t sub_10042B684(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  v7 = v1[19];
  v6 = v1[20];
  if (v4)
  {
    v21 = v1[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = StaticString.description.getter();
    v12 = sub_100141FE4(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s", v8, 0xCu);
    sub_10000BB78(v9);

    v13 = *(v6 + 8);
    v13(v21, v7);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v5, v7);
  }

  v1[23] = v13;
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[9];
  v17 = swift_allocObject();
  v1[24] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;

  v18 = swift_task_alloc();
  v1[25] = v18;
  v18[2] = v15;
  v18[3] = &unk_1006E1320;
  v18[4] = v17;
  sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager, &unk_1006E2624);
  v19 = swift_task_alloc();
  v1[26] = v19;
  *v19 = v1;
  v19[1] = sub_10042B920;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v19, &unk_1006E2748);
}

uint64_t sub_10042B920()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_10042BA50;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003F3E10;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10042BA50()
{
  v30 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v27 = v0[21];
    v28 = v0[23];
    v26 = v0[19];
    v3 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v3 = 136446466;
    v4 = StaticString.description.getter();
    v6 = sub_100141FE4(v4, v5, v29);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, v29);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderUIConnectionManager %{public}s received error %s", v3, 0x16u);
    swift_arrayDestroy();

    v28(v27, v26);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[19];

    v10(v11, v12);
  }

  v13 = v0[17];
  v0[5] = v0[27];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v14 = swift_dynamicCast();
  v15 = *(v13 + 56);
  if (v14)
  {
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[15];
    v19 = v0[16];
    v15(v18, 0, 1, v19);
    (*(v17 + 32))(v16, v18, v19);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    MobileDocumentProviderRemoteUIError.dipErrorRepresentation.getter();
    swift_willThrow();

    (*(v17 + 8))(v16, v19);
  }

  else
  {
    v20 = v0[15];
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    v15(v20, 1, 1, v0[16]);
    sub_10000BE18(v20, &qword_1008435C8, &unk_1006E1310);
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10042BF04(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10042BFC4, 0, 0);
}

uint64_t sub_10042BFC4()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderPresentmentRequest());
  v3 = XPCMobileDocumentProviderPresentmentRequest.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2BE0;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100810300;
  v0[14] = v4;
  [v1 presentAuthorizationViewFromSelectionViewWithRequest:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10042C124(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_10042C144, 0, 0);
}

uint64_t sub_10042C144@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[18];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[20] = v3;
  v1[2] = v1;
  v1[3] = sub_10042C270;
  v5 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100429100;
  v1[13] = &unk_100810350;
  v1[14] = v5;
  [v2 presentScannableCodeViewWithPayload:v4 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10042C270()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10017B138;
  }

  else
  {
    v2 = sub_10042C380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042C380()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042C3E4(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10042C4A4, 0, 0);
}

uint64_t sub_10042C4A4()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderAuxiliaryView());
  v3 = XPCMobileDocumentProviderAuxiliaryView.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100810328;
  v0[14] = v4;
  [v1 presentAuxiliaryView:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10042C604()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "MobileDocumentProviderUIConnectionManager %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager, &unk_1006E2624);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v14;
  v15[4] = v1;
  swift_retain_n();
  sub_1003E653C(0, 0, v4, &unk_1006E26D8, v15);
}

uint64_t sub_10042C8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Logger();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10042C994, a4, 0);
}

uint64_t sub_10042C994()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = &unk_1006E26E0;
  v2[4] = 0;
  sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager, &unk_1006E2624);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10042CAD4;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v3, &unk_1006E26F0);
}

uint64_t sub_10042CAD4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_10042CD6C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_10042CBFC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10042CBFC(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %s successfully dismissed.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v7 + 8))(v5, v6);

  v10 = v1[1];

  return v10();
}

uint64_t sub_10042CD6C()
{
  v14 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderUIConnectionManager %s failed to dismiss: %@", v7, 0x16u);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10042CF94()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_100810440;
  v0[14] = v2;
  [v1 dismissWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

id sub_10042D0A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Multiple connections are not supported.", v14, 2u);
    }

    result = (*(v9 + 8))(v11, v8);
    *a4 = 0;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared50MobileDocumentProviderViewServiceDelegateInterface_];
    [a2 setRemoteObjectInterface:v17];

    v18 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42MobileDocumentProviderViewServiceInterface_];
    [a2 setExportedInterface:v18];

    [a2 setExportedObject:a3];
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100434C10;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_1008108C8;
    v20 = _Block_copy(aBlock);

    [a2 setInvalidationHandler:v20];
    _Block_release(v20);
    [a2 activate];
    *a1 = a2;
    *a4 = 1;
    return a2;
  }

  return result;
}

uint64_t sub_10042D378(uint64_t a1)
{
  v1 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1003E653C(0, 0, v3, &unk_1006E28F0, v7);
  }

  return result;
}

uint64_t sub_10042D4B8()
{
  sub_100431528();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042D5E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10042D804, v1, 0);
}

uint64_t sub_10042D804(uint64_t a1)
{
  v36 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[18];
  v7 = v1[19];
  v9 = v1[17];
  if (v6)
  {
    v11 = v1[15];
    v10 = v1[16];
    v32 = v1[14];
    v34 = v1[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    XPCMobileDocumentProviderUserSelection.value.getter();
    v14 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v33 = v9;
    v16 = v15;
    (*(v11 + 8))(v10, v32);
    v17 = sub_100141FE4(v14, v16, &v35);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager selectionViewUserDidTapSelection called with selection %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v8 + 8))(v34, v33);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v1[12];
  v19 = v1[9];
  v20 = v1[10];
  v21 = v1[6];
  v22 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100844308, &qword_1006E26B0);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v1[12], &qword_100844308, &qword_1006E26B0);
    v23 = 1;
  }

  else
  {
    v24 = v1[12];
    v26 = v1[10];
    v25 = v1[11];
    v27 = v1[9];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v28 = v1[13];
  v29 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v29 - 8) + 56))(v28, v23, 1, v29);
  sub_10000BE18(v28, &qword_100844310, &qword_1006E26B8);

  v30 = v1[1];

  return v30();
}

uint64_t sub_10042DD1C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_10042D5E0(v5);
}

uint64_t sub_10042DDE0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v2[11] = swift_task_alloc();
  v4 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v2[15] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10042DFA8, v1, 0);
}

uint64_t sub_10042DFA8()
{
  v1 = *(v0 + 48);
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_10042E0D0;

  return v6(v2, v3);
}

uint64_t sub_10042E0D0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10042E420;
  }

  else
  {
    v4 = sub_10042E1FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10042E1FC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[15], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[15];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v11 = v0[16];
  v12 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_10000BE18(v11, &qword_100844310, &qword_1006E26B8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10042E420(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager selectionViewDidSelect unexpectedly was not able to prepare for releasing the raw request", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);
  v9 = v1[15];
  v10 = v1[12];
  v11 = v1[13];
  v12 = v1[6];
  v13 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v12 + v13, v9, &qword_100844308, &qword_1006E26B0);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    sub_10000BE18(v1[15], &qword_100844308, &qword_1006E26B0);
    v14 = 1;
  }

  else
  {
    v15 = v1[15];
    v17 = v1[13];
    v16 = v1[14];
    v18 = v1[12];
    (*(v17 + 16))(v16, v15, v18);
    sub_10000BE18(v15, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v17 + 8))(v16, v18);
    v14 = 0;
  }

  v19 = v1[16];
  v20 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v20 - 8) + 56))(v19, v14, 1, v20);
  sub_10000BE18(v19, &qword_100844310, &qword_1006E26B8);

  v21 = v1[1];

  return v21();
}

uint64_t sub_10042E874(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_10042DDE0(v5);
}

uint64_t sub_10042EAC4(void *a1, const void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  sub_100007224(&unk_100844318, &qword_1006E26C0);
  v3[7] = swift_task_alloc();
  v3[8] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_10042EB90, a3, 0);
}

uint64_t sub_10042EB90(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[5];
  v5 = v1[6];
  XPCMobileDocumentProviderPresentmentResponse.value.getter();
  v6 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  v7 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_1000B2764(v2, v5 + v8, &unk_100844318, &qword_1006E26C0);
  swift_endAccess();
  sub_10042C604();

  v3[2](v3);
  _Block_release(v3);

  v9 = v1[1];

  return v9();
}

uint64_t sub_10042ED00()
{
  v1[8] = v0;
  sub_100007224(&unk_100844318, &qword_1006E26C0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10042EDA8, v0, 0);
}

uint64_t sub_10042EDA8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_10000BBC4(v2 + v3, v1, &unk_100844318, &qword_1006E26C0);
  v4 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  sub_10000BE18(v1, &unk_100844318, &qword_1006E26C0);
  if (v6 == 1)
  {
    v7 = v0[9];
    v8 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    swift_beginAccess();
    sub_1000B2764(v7, v2 + v3, &unk_100844318, &qword_1006E26C0);
    swift_endAccess();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10042F0F4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_10042ED00();
}

uint64_t sub_10042F19C()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v1[7] = swift_task_alloc();
  v2 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v1[11] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10042F308, v0, 0);
}

uint64_t sub_10042F308()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[11], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[11];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v11 = v0[12];
  v12 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_10000BE18(v11, &qword_100844310, &qword_1006E26B8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10042F68C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_10042F19C();
}

uint64_t sub_10042F734()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v1[7] = swift_task_alloc();
  v2 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v1[11] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10042F8A0, v0, 0);
}

uint64_t sub_10042F8A0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[11], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[11];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v11 = v0[12];
  v12 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_10000BE18(v11, &qword_100844310, &qword_1006E26B8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10042FC24(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_10042F734();
}

uint64_t sub_10042FCCC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10042FEC4, v1, 0);
}

uint64_t sub_10042FEC4(uint64_t a1)
{
  v31 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[17];
  v7 = v1[18];
  v9 = v1[16];
  if (v6)
  {
    v29 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v12 = String.init<A>(describing:)();
    v14 = sub_100141FE4(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidAppear called with viewIdentifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v29, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[12];
  v16 = v1[9];
  v17 = v1[10];
  v18 = v1[6];
  v19 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v18 + v19, v15, &qword_100844308, &qword_1006E26B0);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_10000BE18(v1[12], &qword_100844308, &qword_1006E26B0);
    v20 = 1;
  }

  else
  {
    v21 = v1[12];
    v23 = v1[10];
    v22 = v1[11];
    v24 = v1[9];
    (*(v23 + 16))(v22, v21, v24);
    sub_10000BE18(v21, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v23 + 8))(v22, v24);
    v20 = 0;
  }

  v25 = v1[13];
  v26 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v26 - 8) + 56))(v25, v20, 1, v26);
  sub_10000BE18(v25, &qword_100844310, &qword_1006E26B8);

  v27 = v1[1];

  return v27();
}

uint64_t sub_1004303B0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003F6850;

  return sub_10042FCCC(v5);
}

uint64_t sub_100430474(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100844308, &qword_1006E26B0);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_100844310, &qword_1006E26B8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10043066C, v1, 0);
}

uint64_t sub_10043066C(uint64_t a1)
{
  v31 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[17];
  v7 = v1[18];
  v9 = v1[16];
  if (v6)
  {
    v29 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v12 = String.init<A>(describing:)();
    v14 = sub_100141FE4(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidCancel called with viewIdentifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v29, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[12];
  v16 = v1[9];
  v17 = v1[10];
  v18 = v1[6];
  v19 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v18 + v19, v15, &qword_100844308, &qword_1006E26B0);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_10000BE18(v1[12], &qword_100844308, &qword_1006E26B0);
    v20 = 1;
  }

  else
  {
    v21 = v1[12];
    v23 = v1[10];
    v22 = v1[11];
    v24 = v1[9];
    (*(v23 + 16))(v22, v21, v24);
    sub_10000BE18(v21, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v23 + 8))(v22, v24);
    v20 = 0;
  }

  v25 = v1[13];
  v26 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v26 - 8) + 56))(v25, v20, 1, v26);
  sub_10000BE18(v25, &qword_100844310, &qword_1006E26B8);

  v27 = v1[1];

  return v27();
}

uint64_t sub_100430B58(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_100430474(v5);
}

uint64_t sub_100430C1C()
{
  v1[2] = v0;
  v2 = type metadata accessor for WebPresentmentRequest();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100430CE8, v0, 0);
}

uint64_t sub_100430CE8()
{
  v1 = *(v0 + 16);
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100430E10;

  return v6(v2, v3);
}

uint64_t sub_100430E10()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_100430F64, v6, 0);
  }
}

uint64_t sub_100430F64()
{
  v1 = v0[2];
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100431094;
  v5 = v0[6];

  return v7(v5, v2, v3);
}

uint64_t sub_100431094()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10043129C;
  }

  else
  {
    v4 = sub_1004311C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004311C0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v0[5], v1, v2);
  v4 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentRequest());
  v5 = XPCWebPresentmentRequest.init(value:)();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10043129C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100431480(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_100430C1C();
}

uint64_t sub_100431528()
{
  v1 = v0;
  v74 = type metadata accessor for DIPError.Code();
  v77 = *(v74 - 8);
  __chkstk_darwin(v74);
  v78 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for MobileDocumentProviderRequestState(0);
  __chkstk_darwin(v76);
  v75 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v82 = &v72 - v5;
  v6 = sub_100007224(&qword_100844308, &qword_1006E26B0);
  v7 = __chkstk_darwin(v6 - 8);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v72 - v10;
  v12 = __chkstk_darwin(v9);
  v84 = &v72 - v13;
  __chkstk_darwin(v12);
  v79 = &v72 - v14;
  v15 = sub_100007224(&qword_100844310, &qword_1006E26B8);
  __chkstk_darwin(v15 - 8);
  v80 = &v72 - v16;
  v86 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v17 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&unk_100844318, &qword_1006E26C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v83 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v72 - v26;
  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v73 = v1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v85 = v17;
    v33 = v11;
    v34 = v32;
    v91[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_100141FE4(0xD000000000000018, 0x8000000100715490, v91);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s", v31, 0xCu);
    sub_10000BB78(v34);
    v11 = v33;
    v17 = v85;

    v1 = v73;
  }

  v35 = *(v23 + 8);
  v35(v27, v22);
  v36 = v22;
  v37 = *(v1 + 152);
  os_unfair_lock_lock((v37 + 24));
  v38 = *(v37 + 16);
  if (v38)
  {
    [v38 setExportedObject:0];
    v39 = *(v37 + 16);
  }

  else
  {
    v39 = 0;
  }

  *(v37 + 16) = 0;

  os_unfair_lock_unlock((v37 + 24));
  v40 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_10000BBC4(v1 + v40, v21, &unk_100844318, &qword_1006E26C0);
  v41 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  if ((*(*(v41 - 8) + 48))(v21, 1, v41) == 1)
  {
    v42 = v83;
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "View service invalidated and will reconnect.", v45, 2u);
    }

    return (v35)(v42, v36);
  }

  else
  {
    v47 = v86;
    v48 = &off_100844000;
    if ((*(v17 + 48))(v21, 1, v86) == 1)
    {
      v49 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
      swift_beginAccess();
      sub_10000BBC4(v1 + v49, v11, &qword_100844308, &qword_1006E26B0);
      if ((*(v88 + 48))(v11, 1, v89))
      {
        sub_10000BE18(v11, &qword_100844308, &qword_1006E26B0);
      }

      else
      {
        v57 = v11;
        v59 = v88;
        v58 = v89;
        v60 = v82;
        (*(v88 + 16))(v82, v57, v89);
        sub_10000BE18(v57, &qword_100844308, &qword_1006E26B0);
        (*(v77 + 104))(v78, enum case for DIPError.Code.webPresentmentCancelled(_:), v74);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v61 = swift_allocError();
        v48 = &off_100844000;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v90 = v61;
        AsyncThrowingStream.Continuation.finish(throwing:)();
        (*(v59 + 8))(v60, v58);
      }
    }

    else
    {
      v50 = v81;
      (*(v17 + 32))(v81, v21, v47);
      v51 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
      swift_beginAccess();
      v52 = v79;
      sub_10000BBC4(v1 + v51, v79, &qword_100844308, &qword_1006E26B0);
      v53 = *(v88 + 48);
      v54 = v53(v52, 1, v89);
      v85 = v17;
      if (v54)
      {
        sub_10000BE18(v52, &qword_100844308, &qword_1006E26B0);
        v55 = 1;
        v56 = v80;
      }

      else
      {
        v62 = v89;
        v63 = v82;
        (*(v88 + 16))(v82, v52, v89);
        sub_10000BE18(v52, &qword_100844308, &qword_1006E26B0);
        (*(v17 + 16))(v75, v50, v47);
        swift_storeEnumTagMultiPayload();
        v56 = v80;
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v88 + 8))(v63, v62);
        v55 = 0;
      }

      v64 = sub_100007224(&qword_100844328, &qword_1006E26C8);
      (*(*(v64 - 8) + 56))(v56, v55, 1, v64);
      sub_10000BE18(v56, &qword_100844310, &qword_1006E26B8);
      v65 = v84;
      sub_10000BBC4(v1 + v51, v84, &qword_100844308, &qword_1006E26B0);
      if (v53(v65, 1, v89))
      {
        (*(v85 + 8))(v50, v47);
        sub_10000BE18(v84, &qword_100844308, &qword_1006E26B0);
      }

      else
      {
        v66 = v88;
        v67 = v89;
        v68 = v82;
        v69 = v84;
        (*(v88 + 16))(v82, v84, v89);
        sub_10000BE18(v69, &qword_100844308, &qword_1006E26B0);
        v90 = 0;
        AsyncThrowingStream.Continuation.finish(throwing:)();
        (*(v66 + 8))(v68, v67);
        (*(v85 + 8))(v50, v47);
      }

      v48 = &off_100844000;
    }

    v70 = v87;
    (*(v88 + 56))(v87, 1, 1, v89);
    v71 = v48[60];
    swift_beginAccess();
    sub_1000B2764(v70, v71 + v1, &qword_100844308, &qword_1006E26B0);
    return swift_endAccess();
  }
}

uint64_t sub_1004320FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10043211C, a2, 0);
}

uint64_t sub_10043211C()
{
  v1 = *(v0 + 40);
  v2 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager, &unk_1006E2624);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v7 = *(v0 + 24);
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1003F9AAC;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v7, v2, 0xD000000000000020, 0x8000000100715510, sub_100433B80, v3, &type metadata for () + 8);
}

uint64_t sub_100432268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager, &unk_1006E2624);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v16;
  *(v19 + 4) = a2;
  (*(v8 + 32))(&v19[v17], v11, v7);
  v20 = &v19[v18];
  *v20 = v23;
  v20[1] = a4;
  swift_retain_n();

  sub_1003E653C(0, 0, v14, &unk_1006E2728, v19);
}

uint64_t sub_1004324C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1004324E8, a4, 0);
}

uint64_t sub_1004324E8()
{
  v8 = v0;
  v1 = v0[4];
  v2 = *(v0[3] + 152);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_100433DC4((v2 + 16), &v7);
  v3 = v0[5];
  os_unfair_lock_unlock((v2 + 24));
  v0[7] = v7;

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1004326A8;

  return v6();
}

uint64_t sub_1004326A8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100432858;
  }

  else
  {
    v4 = sub_1004327D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004327D4()
{
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100432858()
{
  swift_unknownObjectRelease();
  v0[2] = v0[9];
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004328E8(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = *a1;
  if (v12)
  {
    (*(v9 + 16))(v11, a2, v8);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    (*(v9 + 32))(v14 + v13, v11, v8);
    aBlock[4] = sub_1003FBB20;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_100810418;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    v17 = [v16 remoteObjectProxyWithErrorHandler:v15];
    _Block_release(v15);
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100007224(&qword_1008435D8, &qword_1006E2730);
    swift_dynamicCast();
    return aBlock[7];
  }

  else
  {
    (*(v5 + 104))(v7, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_100432CA0(uint64_t a1)
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

  sub_1003E653C(0, 0, v4, &unk_1006E2708, v6);
}

uint64_t sub_100432DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100432E6C, 0, 0);
}

uint64_t sub_100432E6C(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100715510, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %s task cancelled, invalidating.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[2];

  return _swift_task_switch(sub_100432FD4, v10, 0);
}

uint64_t sub_100432FD4()
{
  sub_10042C604();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100433074(uint64_t a1)
{
  sub_100433168(319);
  if (v1 <= 0x3F)
  {
    sub_1004331CC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100433168(uint64_t a1)
{
  if (!qword_100844228)
  {
    sub_10000B870(&qword_100844230, &qword_1006E25F8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100844228);
    }
  }
}

void sub_1004331CC(uint64_t a1)
{
  if (!qword_100844238)
  {
    type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100844238);
    }
  }
}

uint64_t sub_100433258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004332D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100433358(uint64_t a1)
{
  v1 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1004333B0(uint64_t a1)
{
  v3 = sub_100007224(&unk_1008442E0, &unk_1006E2650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = *v1;
  v10 = a1;
  type metadata accessor for MobileDocumentProviderRequestState(0);
  (*(v4 + 104))(v6, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_1004334D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100433518()
{
  v1 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844230, &qword_1006E25F8);
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

uint64_t sub_10043367C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentProviderViewServiceIdentifier() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844230, &qword_1006E25F8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10042ADB4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004337E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042AD34(a1, v4, v5, v6);
}

id sub_1004338C8(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 setDelegate:v2];
  return [v3 activate];
}

uint64_t sub_100433914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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