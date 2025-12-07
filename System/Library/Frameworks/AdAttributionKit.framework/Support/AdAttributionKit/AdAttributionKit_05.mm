uint64_t sub_100077D2C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100077E30, 0, 0);
}

uint64_t sub_100077E30(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100077EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100077F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for RegisterConversionTask(uint64_t a1)
{
  result = qword_10023B6F8;
  if (!qword_10023B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078114(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDAEC(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_100078180()
{

  return _swift_deallocObject(v0, 115, 7);
}

void sub_1000781EC(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDDC0(a2, v4);

  if (!v2)
  {
  }
}

double sub_100078258@<D0>(uint64_t a2@<X8>)
{
  v4 = static ConversionType.downloadCases.getter();
  sub_1000E217C(v4, v8);

  if (!v2)
  {
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v9;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_1000782F4()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for RegisterConversionTask(0);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000783B4, 0, 0);
}

uint64_t sub_1000783B4()
{
  v1 = *(*(v0 + 24) + 32);
  v2 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 16) = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 16];
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 bundleIdentifier];
    if (v7)
    {
      v8 = *(v0 + 24);
      v9 = v7;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 80) = 1;
      v13 = v8[29];
      v14 = v8[30];
      v15 = v8[31];
      v16 = swift_allocObject();
      *(v0 + 56) = v16;
      *(v16 + 16) = 0;
      *(v16 + 24) = *(v0 + 80);
      *(v16 + 32) = v1;
      *(v16 + 40) = v10;
      *(v16 + 48) = v12;
      v17 = swift_task_alloc();
      *(v0 + 64) = v17;
      *v17 = v0;
      v17[1] = sub_100078740;

      return sub_10010E48C(v17, sub_100079114, v16, v13, v14, v15);
    }

    sub_100079088();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v19 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100078CD4(*(v0 + 24), *(v0 + 40));
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 40);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 134218242;
    v26 = *(v23 + 32);
    sub_10005C8D8(v23);
    *(v24 + 4) = v26;
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to add metadata mapping for app %llu with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_10005C8D8(*(v0 + 40));
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100078740()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100078934;
  }

  else
  {
    v2 = sub_1000788A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000788A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078934()
{
  sub_100078CD4(*(v0 + 24), *(v0 + 40));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    v7 = *(v4 + 32);
    sub_10005C8D8(v4);
    *(v5 + 4) = v7;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to add metadata mapping for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_10005C8D8(*(v0 + 40));
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_100078B0C(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EDE00(a2, v4);

  if (!v2)
  {
  }
}

void sub_100078B78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = [a1 connection];
  v7 = a3(a2, v6);

  if (!v3)
  {
  }
}

uint64_t sub_100078BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100072714();
}

uint64_t sub_100078C78()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100078CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterConversionTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078D38()
{
  v1 = (type metadata accessor for RegisterConversionTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000DB58((v0 + v3 + 256));
  sub_10000DB58((v0 + v3 + 296));
  v5 = v1[18];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_10000DB58((v0 + v3 + v1[19]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100078EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterConversionTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078F90()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100079034()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100079088()
{
  result = qword_10023B698;
  if (!qword_10023B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B698);
  }

  return result;
}

uint64_t sub_1000790DC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100079168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100079228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000792CC(uint64_t a1)
{
  sub_100079458(319, &qword_10023A198, &type metadata for UInt64);
  if (v1 <= 0x3F)
  {
    sub_100079458(319, &qword_10023A190, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100054FCC(319, &qword_10023AE00, &protocol descriptor for PostbackAttributionManager);
      if (v3 <= 0x3F)
      {
        sub_100054FCC(319, &qword_10023AE18, &protocol descriptor for RecordFactory);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Logger();
          if (v5 <= 0x3F)
          {
            sub_100054FCC(319, &unk_10023AE20, &protocol descriptor for SnoutLogger);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100079458(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000794A4(uint64_t a1)
{
  result = sub_100079088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000794D0()
{
  result = qword_10023B778;
  if (!qword_10023B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B778);
  }

  return result;
}

uint64_t sub_100079540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1136) = v5;
  *(v6 + 1305) = a5;
  *(v6 + 1128) = a4;
  *(v6 + 1120) = a3;
  *(v6 + 1112) = a2;
  *(v6 + 1104) = a1;
  v7 = type metadata accessor for URL();
  *(v6 + 1144) = v7;
  *(v6 + 1152) = *(v7 - 8);
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  v8 = type metadata accessor for Calendar.Component();
  *(v6 + 1176) = v8;
  *(v6 + 1184) = *(v8 - 8);
  *(v6 + 1192) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v6 + 1200) = v9;
  *(v6 + 1208) = *(v9 - 8);
  *(v6 + 1216) = swift_task_alloc();

  return _swift_task_switch(sub_1000796D8, 0, 0);
}

uint64_t sub_1000796D8(uint64_t a1)
{
  v2 = *(v1 + 1216);
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  v5 = *(v1 + 1192);
  v6 = *(v1 + 1184);
  v7 = *(v1 + 1176);
  v8 = *(v1 + 1152);
  v30 = *(v1 + 1144);
  v31 = *(v1 + 1168);
  v29 = *(v1 + 1112);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v9 = sub_100025808(v2, v5);
  v11 = v10;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v11)
  {
    v9 = 0;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v1 + 1304) = 1;
  *(v1 + 1312) = 1;
  *(v1 + 1320) = 1;
  *(v1 + 1328) = 1;
  *(v1 + 1336) = 1;
  *(v1 + 464) = 2562;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = v9;
  *(v1 + 528) = v13;
  *(v1 + 536) = v15;
  *(v1 + 544) = 0;
  *(v1 + 545) = 33686018;
  *(v1 + 549) = 2;
  *(v1 + 552) = 0;
  *(v1 + 560) = 1;
  *(v1 + 568) = 0;
  *(v1 + 576) = 769;
  *(v1 + 584) = 0;
  v16 = *(v1 + 1320);
  *(v1 + 592) = v16;
  *(v1 + 600) = 0;
  v17 = *(v1 + 1328);
  *(v1 + 608) = v17;
  *(v1 + 609) = 770;
  *(v1 + 616) = 0;
  v18 = *(v1 + 1336);
  *(v1 + 624) = v18;
  *(v1 + 632) = 0u;
  *(v1 + 648) = 514;
  *(v1 + 650) = 2;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 240) = 2562;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = v9;
  *(v1 + 304) = v13;
  *(v1 + 312) = v15;
  *(v1 + 320) = 0;
  *(v1 + 325) = 2;
  *(v1 + 321) = 33686018;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 344) = 0;
  *(v1 + 352) = 769;
  *(v1 + 360) = 0;
  *(v1 + 368) = v16;
  *(v1 + 376) = 0;
  *(v1 + 384) = v17;
  *(v1 + 385) = 770;
  *(v1 + 392) = 0;
  *(v1 + 400) = v18;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 424) = 514;
  *(v1 + 426) = 2;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  sub_100010568(v1 + 464, v1 + 688);
  sub_10003AE8C(v1 + 240);
  v19 = *(v1 + 480);
  *(v1 + 1224) = *(v1 + 464);
  *(v1 + 1240) = v19;
  *(v1 + 1256) = *(v1 + 496);
  v20 = *(v1 + 648);
  *(v1 + 1040) = *(v1 + 632);
  *(v1 + 1056) = v20;
  *(v1 + 1072) = *(v1 + 664);
  *(v1 + 1088) = *(v1 + 680);
  v21 = *(v1 + 584);
  *(v1 + 976) = *(v1 + 568);
  *(v1 + 992) = v21;
  v22 = *(v1 + 616);
  *(v1 + 1008) = *(v1 + 600);
  *(v1 + 1024) = v22;
  v23 = *(v1 + 520);
  *(v1 + 912) = *(v1 + 504);
  *(v1 + 928) = v23;
  v24 = *(v1 + 552);
  *(v1 + 944) = *(v1 + 536);
  *(v1 + 960) = v24;
  (*(v8 + 16))(v31, v29, v30);
  v25 = swift_task_alloc();
  *(v1 + 1264) = v25;
  *v25 = v1;
  v25[1] = sub_100079A10;
  v26 = *(v1 + 1160);
  v27 = *(v1 + 1112);

  return sub_10007A2D4(v26, v27);
}

uint64_t sub_100079A10()
{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v2[161] = v2[62];
    v2[162] = v2[60];
    v3 = sub_10007A0DC;
  }

  else
  {
    v3 = sub_100079B34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100079B34()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = *(v0 + 1256);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1224);
  sub_10000DA7C(*(v0 + 1136), *(*(v0 + 1136) + 24));
  *(v0 + 32) = v14;
  *(v0 + 16) = v15;
  *(v0 + 48) = v5;
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  *(v0 + 232) = *(v0 + 1088);
  v6 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v6;
  v7 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v7;
  v8 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v8;
  v9 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 104) = v9;
  v10 = type metadata accessor for SnoutManager(0);
  v11 = swift_task_alloc();
  *(v0 + 1280) = v11;
  *v11 = v0;
  v11[1] = sub_100079D44;
  v12 = *(v0 + 1120);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_100079D44()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100079E48, 0, 0);
}

uint64_t sub_100079E48()
{
  if (*(v0 + 1305))
  {
    sub_10000CDE0(&qword_10023B780, &unk_1001B93D0);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1001B93B0;
    PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();

    URLQueryItem.init(name:value:)();
  }

  else
  {
    *(v0 + 1096) = *(v0 + 1128);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000CDE0(&qword_10023B780, &unk_1001B93D0);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1001B93B0;
    PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();

    URLQueryItem.init(name:value:)();
  }

  v1 = *(v0 + 1168);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);

  URL.appending(queryItems:)();

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007A0DC()
{
  v1 = sub_1000C7C10(*(v0 + 1272));
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = *(v0 + 1224);
  sub_10000DA7C(*(v0 + 1136), *(*(v0 + 1136) + 24));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v9 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v9;
  v10 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v10;
  v11 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v11;
  v12 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v8;
  *(v0 + 24) = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v12;
  v13 = type metadata accessor for SnoutManager(0);
  v14 = swift_task_alloc();
  *(v0 + 1280) = v14;
  *v14 = v0;
  v14[1] = sub_100079D44;
  v15 = *(v0 + 1120);

  return (sub_10016E27C)(v0 + 16, v15, 0, 0, v13, &off_100223858);
}

uint64_t sub_10007A2D4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URLQueryItem();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10000CDE0(&qword_10023B788, &qword_1001B93E0);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10007A484, 0, 0);
}

uint64_t sub_10007A484()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000DAF8(v0[15], &qword_10023B788, &qword_1001B93E0);
    sub_10007B120();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  v7 = v0 + 2;
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  result = URLComponents.queryItems.modify();
  v8 = result;
  v44 = v9;
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_20;
  }

  v41 = *(v10 + 16);
  v40 = result;
  v11 = 0;
  if (!v41)
  {
    v23 = 0;
LABEL_19:
    sub_10007B728(v11, v23);
    v8 = v40;
    v7 = v0 + 2;
LABEL_20:
    v8(v7, 0);
    v27 = swift_task_alloc();
    v0[19] = v27;
    *v27 = v0;
    v27[1] = sub_10007AA14;

    return sub_10007B174(16);
  }

  v12 = v0[10];
  v45 = (v12 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v42 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v46 = *(v12 + 72);
    v43 = *(v12 + 16);
    v43(v0[14], v10 + v42 + v46 * v11, v0[9]);
    v13 = URLQueryItem.name.getter();
    v15 = v14;
    v16 = PostbackConstants.reengagementOpenURLParameter.unsafeMutableAddressor();
    v17 = v13;
    v18 = v0[14];
    v19 = v0[9];
    if (v17 == *v16 && v15 == v16[1])
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = *v45;
    result = (*v45)(v18, v19);
    if (v21)
    {
      goto LABEL_18;
    }

    if (v41 == ++v11)
    {
      v11 = *(*v44 + 16);
      v23 = v11;
      goto LABEL_19;
    }
  }

  v22 = *v45;
  result = (*v45)(v18, v19);
LABEL_18:
  v23 = v11 + 1;
  v24 = v43;
  v25 = *v44;
  v26 = *(*v44 + 16);
  if (v26 - 1 == v11)
  {
    goto LABEL_19;
  }

  v39 = (v0[10] + 40);
  v28 = v42 + v46 * v23;
  while (v23 < v26)
  {
    v24(v0[13], v25 + v28, v0[9]);
    v29 = URLQueryItem.name.getter();
    v31 = v0[13];
    v32 = v0[9];
    if (v29 == *v16 && v30 == v16[1])
    {

      result = v22(v31, v32);
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v22(v31, v32);
      if ((v34 & 1) == 0)
      {
        if (v23 != v11)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v35 = *v44;
          v36 = *(*v44 + 16);
          if (v11 >= v36)
          {
            goto LABEL_48;
          }

          result = (v43)(v0[12], v35 + v42 + v11 * v46, v0[9]);
          if (v23 >= v36)
          {
            goto LABEL_49;
          }

          v43(v0[11], v35 + v28, v0[9]);
          result = swift_isUniquelyReferenced_nonNull_native();
          *v44 = v35;
          if ((result & 1) == 0)
          {
            result = sub_10007B10C(v35);
            v35 = result;
            *v44 = result;
          }

          if (v11 >= v35[2])
          {
            goto LABEL_50;
          }

          v37 = v35 + v42;
          v38 = *v39;
          result = (*v39)(&v37[v11 * v46], v0[11], v0[9]);
          if (v23 >= *(*v44 + 16))
          {
            goto LABEL_51;
          }

          result = v38(*v44 + v28, v0[12], v0[9]);
        }

        ++v11;
      }

      v24 = v43;
    }

    ++v23;
    v25 = *v44;
    v26 = *(*v44 + 16);
    v28 += v46;
    if (v23 == v26)
    {
      if (v23 >= v11)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_45;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10007AA14(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10007AB14, 0, 0);
}

uint64_t sub_10007AB14(uint64_t a1)
{
  v2 = v1[18];
  if (!v1[20])
  {
    v11 = v1[16];
    v12 = v1[17];
    sub_10007B120();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    (*(v12 + 8))(v2, v11);
    goto LABEL_5;
  }

  v3 = v1[8];
  sub_10007ADA8(v1[20]);

  URLComponents.url.getter();
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v8 = v1[17];
  v7 = v1[18];
  v9 = v1[16];
  if (v6 == 1)
  {
    sub_10000DAF8(v1[8], &qword_10023C230, &qword_1001B4FB0);
    sub_10007B120();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
LABEL_5:

    v14 = v1[1];
    goto LABEL_7;
  }

  (*(v5 + 32))(v1[6], v1[8], v4);
  (*(v8 + 8))(v7, v9);

  v14 = v1[1];
LABEL_7:

  return v14();
}

uint64_t sub_10007ADA8(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;

    v10 = URLComponents.queryItems.modify();
    if (!*v11)
    {
      v10(v26, 0);
      goto LABEL_7;
    }

    v12 = v11;
    v25 = v10;

    v13 = v2;
    v14 = sub_10007B914(v12, v8, v9);

    v27 = v12;
    v15 = *v12;
    v16 = *(*v12 + 16);
    if (v16 < v14)
    {
      break;
    }

    if (v14 < 0)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v16, v14 - v16))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v15;
    v24 = v3;
    if (!isUniquelyReferenced_nonNull_native || v14 > v15[3] >> 1)
    {
      if (v16 <= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      v15 = sub_1000890A8(isUniquelyReferenced_nonNull_native, v18, 1, v15);
      *v27 = v15;
    }

    v19 = *(type metadata accessor for URLQueryItem() - 8);
    v20 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    v22 = v21 * v14;
    result = swift_arrayDestroy();
    if (v16 != v14)
    {
      if (v22 < v21 * v16 || &v20[v21 * v14] >= &v20[v21 * v16 + (v15[2] - v16) * v21])
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v22 != v21 * v16)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v15[2];
      v6 = __OFADD__(v5, v14 - v16);
      v7 = v5 - (v16 - v14);
      if (v6)
      {
        goto LABEL_30;
      }

      v15[2] = v7;
    }

    *v27 = v15;
    v25(v26, 0);
    v3 = v24;
    v2 = v13;
LABEL_7:

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10007B018(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

unint64_t sub_10007B120()
{
  result = qword_10023B790;
  if (!qword_10023B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B790);
  }

  return result;
}

uint64_t sub_10007B194()
{
  v1 = *(v0 + 153);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_100157958(v1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 arrayForKey:v5];
  *(v0 + 160) = v6;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10007B374;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_10000CDE0(&qword_10023B798, qword_1001B93F0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10007B018;
  *(v0 + 104) = &unk_10021A6D0;
  *(v0 + 112) = v7;
  [v6 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10007B374()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10007B508;
  }

  else
  {
    v2 = sub_10007B484;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007B484()
{
  v1 = *(v0 + 144);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10007B508(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 160);
  swift_willThrow();

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FC70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    v10 = sub_100157958(v6);
    v12 = sub_10017AD04(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get bag value for key %s, error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v9);
  }

  else
  {
  }

  v14 = *(v1 + 8);

  return v14(0);
}

unint64_t sub_10007B728(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000890A8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000C04E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10007B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for URLQueryItem() - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (URLQueryItem.name.getter() != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v7;
    }

    ++v7;
    v9 += v10;
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_10007B914(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *a1;
  v17 = v54;
  result = sub_10007B7E8(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v53 = v15;
  v50 = a2;
  v44 = 0;
  if (v19)
  {
    return v16[2];
  }

  v45 = v13;
  v46 = result;
  v42 = a1;
  v43 = v10;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_32;
  }

  v22 = v16 + 2;
  v21 = v16[2];
  v23 = v53;
  if (v20 == v21)
  {
    return v46;
  }

  v51 = v7 + 16;
  v47 = v7;
  v48 = (v7 + 8);
  v41 = (v7 + 40);
  while (v20 < v21)
  {
    v24 = *(v7 + 80);
    v54 = v16;
    v49 = (v24 + 32) & ~v24;
    v25 = v16 + v49;
    v26 = *(v7 + 72);
    v27 = *(v7 + 16);
    v52 = v26 * v20;
    v27(v23, &v25[v26 * v20], v6);
    if (URLQueryItem.name.getter() == v50 && v28 == a3)
    {

      v23 = v53;
      result = (*v48)(v53, v6);
      v7 = v47;
LABEL_10:
      v16 = v54;
      goto LABEL_11;
    }

    v29 = a3;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v48)(v53, v6);
    if (v30)
    {
      a3 = v29;
      v7 = v47;
      v23 = v53;
      goto LABEL_10;
    }

    v31 = v46;
    if (v20 == v46)
    {
      a3 = v29;
      v7 = v47;
      v16 = v54;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v32 = *v22;
      if (v46 >= v32)
      {
        goto LABEL_29;
      }

      a3 = v29;
      v33 = v26 * v46;
      result = (v27)(v45, &v25[v33], v6);
      if (v20 >= v32)
      {
        goto LABEL_30;
      }

      v34 = &v25[v52];
      v35 = v43;
      v27(v43, v34, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_10007B10C(v54);
      }

      v36 = v45;
      v37 = v54 + v49;
      v38 = *v41;
      v39 = v54 + v49 + v33;
      v16 = v54;
      result = (*v41)(v39, v35, v6);
      if (v20 >= v16[2])
      {
        goto LABEL_31;
      }

      result = v38(&v37[v52], v36, v6);
      *v42 = v16;
      v31 = v46;
      v7 = v47;
    }

    v46 = v31 + 1;
    v23 = v53;
LABEL_11:
    ++v20;
    v22 = v16 + 2;
    v21 = v16[2];
    if (v20 == v21)
    {
      return v46;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

__n128 sub_10007BCF8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10007BD14(uint64_t a1, int a2)
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

uint64_t sub_10007BD5C(uint64_t result, int a2, int a3)
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

unint64_t sub_10007BDC0(uint64_t a1)
{
  result = sub_10007B120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007BDEC()
{
  result = qword_10023B7A0;
  if (!qword_10023B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B7A0);
  }

  return result;
}

id sub_10007BFE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllocatedTokenMetadataEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10007C03C()
{
  result = qword_10023B7D0;
  if (!qword_10023B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B7D0);
  }

  return result;
}

id sub_10007C120(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TokenHandoffServiceListenerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10007C188(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E494(1u);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v10];

    v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon27TokenHandoffServiceProtocol_];
    [a1 setExportedInterface:v11];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon35TokenHandoffServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v12 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement for TokenHandoffService", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

unint64_t sub_10007C444()
{
  result = qword_10023B890;
  if (!qword_10023B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B890);
  }

  return result;
}

unint64_t sub_10007C49C()
{
  result = qword_10023B898;
  if (!qword_10023B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B898);
  }

  return result;
}

unint64_t sub_10007C4F0(uint64_t a1)
{
  *(a1 + 8) = sub_10003BB6C();
  result = sub_10007C520();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10007C520()
{
  result = qword_10023B8E8;
  if (!qword_10023B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8E8);
  }

  return result;
}

uint64_t sub_10007C574(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023B918, &qword_1001B9758);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_10007C49C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10007C6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x695F656C646E7562;
  }

  else
  {
    v3 = 0x64695F6D657469;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x695F656C646E7562;
  }

  else
  {
    v5 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
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

Swift::Int sub_10007C7A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C828(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007C89C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C920@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216348, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10007C980(uint64_t *a1@<X8>)
{
  v2 = 0x64695F6D657469;
  if (*v1)
  {
    v2 = 0x695F656C646E7562;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10007C9C4()
{
  if (*v0)
  {
    return 0x695F656C646E7562;
  }

  else
  {
    return 0x64695F6D657469;
  }
}

uint64_t sub_10007CA04@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216348, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10007CA78(uint64_t a1)
{
  v2 = sub_10007C49C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007CAB4(uint64_t a1)
{
  v2 = sub_10007C49C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007CAF0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10007CC68(a2, v6);
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

unint64_t sub_10007CB54()
{
  result = qword_10023B8F0;
  if (!qword_10023B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8F0);
  }

  return result;
}

unint64_t sub_10007CBAC()
{
  result = qword_10023B8F8;
  if (!qword_10023B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B8F8);
  }

  return result;
}

unint64_t sub_10007CC04()
{
  result = qword_10023B900;
  if (!qword_10023B900)
  {
    sub_10000CCC0(&qword_10023B908, &qword_1001B9710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B900);
  }

  return result;
}

uint64_t sub_10007CC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023B910, &qword_1001B9750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10007C49C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_10007CE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007CE7C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_10007CED8()
{
  result = qword_10023B920;
  if (!qword_10023B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B920);
  }

  return result;
}

uint64_t sub_10007CF2C()
{
  *(v1 + 448) = v0;

  return _swift_task_switch(sub_10007CFBC, 0, 0);
}

void sub_10007CFBC()
{
  v1 = *(v0 + 448);
  Task = type metadata accessor for PostbackFetchTask(0);
  v50 = v1 + Task[5];
  v3 = (v1 + Task[8]);
  v4 = *v3 == 0xD000000000000012 && 0x80000001001CB3C0 == v3[1];
  v51 = *(v50 + 97);
  if (v4)
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    v1 = *(v0 + 448);
  }

  v5 = *(v1 + Task[7]);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  v52 = v0;
  v53 = Task;
  if (v6)
  {
    sub_10014703C(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 208 * v8 + 233;
    v10 = (v5 + 233);
    do
    {
      v54 = v9;
      v68 = v6;
      v58 = *(v10 - 185);
      v11 = *(v10 - 169);
      v60 = *(v10 - 145);
      v12 = *(v10 - 121);
      v65 = *(v10 - 113);
      v66 = *(v10 - 129);
      v55 = *(v10 - 105);
      v56 = *(v10 - 161);
      v63 = *(v10 - 89);
      v64 = *(v10 - 97);
      v13 = *(v10 - 81);
      v62 = *(v10 - 73);
      v14 = *(v10 - 49);
      v69 = *(v10 - 41);
      v70 = *(v10 - 57);
      v15 = *(v10 - 17);
      v77 = *(v10 - 9);
      v79 = *(v10 - 25);
      v75 = *v10;
      v57 = *(v10 - 153);
      v61 = *(v10 - 137);
      v88[0] = v61;
      v67 = *(v10 - 65);
      v89[0] = v67;
      v72 = *(v10 - 33);
      v90[0] = v72;
      v82 = *(v10 - 1);
      v91[0] = v82;
      v59 = *(v10 - 201);
      v87 = v7;
      v16 = v8 + 1;
      v17 = v7[3];
      v18 = v7;

      v7 = v18;
      if (v8 >= v17 >> 1)
      {
        sub_10014703C((v17 > 1), v16, 1);
        v7 = v87;
      }

      v7[2] = v16;
      v19 = v7 + v54;
      *(v19 - 185) = v58;
      *(v19 - 201) = v59;
      *(v19 - 169) = v11;
      *(v19 - 161) = v56;
      *(v19 - 153) = v57;
      *(v19 - 38) = *v88;
      *(v19 - 149) = *&v88[3];
      *(v19 - 145) = v60;
      *(v19 - 137) = v61;
      *(v19 - 133) = *&v89[3];
      *(v19 - 34) = *v89;
      *(v19 - 129) = v66;
      *(v19 - 121) = v12;
      *(v19 - 113) = v65;
      *(v19 - 105) = v55;
      *(v19 - 97) = v64;
      *(v19 - 89) = v63;
      *(v19 - 81) = v13;
      *(v19 - 73) = v62;
      *(v19 - 65) = v67;
      *(v19 - 16) = *v90;
      *(v19 - 61) = *&v90[3];
      *(v19 - 57) = v70;
      *(v19 - 49) = v14;
      *(v19 - 41) = v69;
      *(v19 - 33) = v72;
      *(v19 - 8) = *v91;
      *(v19 - 29) = *&v91[3];
      *(v19 - 25) = v79;
      *(v19 - 17) = v15;
      *(v19 - 9) = v77;
      *(v19 - 1) = v82;
      *v19 = v75;
      v9 = v54 + 208;
      v10 += 224;
      ++v8;
      v6 = v68 - 1;
    }

    while (v68 != 1);
    v0 = v52;
    Task = v53;
    v1 = *(v52 + 448);
  }

  v78 = v7;
  v20 = *(v1 + Task[6]);
  v21 = *(v20 + 16);
  if (v21)
  {
    sub_10014701C(0, v21, 0);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = 48 * v22 + 72;
    v24 = (v20 + 72);
    do
    {
      v25 = *(v24 - 4);
      v26 = *(v24 - 24);
      v83 = *(v24 - 2);
      v86 = *(v24 - 5);
      v80 = *(v24 - 1);
      v27 = *v24;
      v28 = v22 + 1;
      v29 = _swiftEmptyArrayStorage[3];

      if (v22 >= v29 >> 1)
      {
        sub_10014701C((v29 > 1), v28, 1);
      }

      v24 += 8;
      _swiftEmptyArrayStorage[2] = v28;
      v30 = (_swiftEmptyArrayStorage + v23);
      *(v30 - 5) = v86;
      *(v30 - 4) = v25;
      *(v30 - 24) = v26;
      *(v30 - 2) = v83;
      *(v30 - 1) = v80;
      v23 += 48;
      ++v22;
      *v30 = v27;
      --v21;
    }

    while (v21);
    v0 = v52;
    Task = v53;
    v1 = *(v52 + 448);
  }

  v31 = Task[11];
  v32 = *(v1 + Task[10]);
  v76 = *(v50 + 32);
  v33 = *(v50 + 48);
  v74 = *(v50 + 40);
  v35 = *(v50 + 56);
  v34 = *(v50 + 64);
  v81 = *(v50 + 96);
  v73 = *(v50 + 72);
  v36 = *(v50 + 88);
  v71 = *(v50 + 80);
  v37 = (v1 + v31);
  v38 = v37[1];
  v84 = *v37;
  if (v32 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = v51;
  }

  if (v32 >= 2)
  {
    v40 = v51;
  }

  else
  {
    v40 = 2;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  *(v0 + 16) = 1;
  *(v0 + 24) = v76;
  *(v0 + 32) = v74;
  *(v0 + 40) = v33;
  *(v0 + 48) = v35;
  *(v0 + 56) = v34;
  *(v0 + 64) = v81;
  *(v0 + 72) = v73;
  *(v0 + 80) = v71;
  *(v0 + 88) = v36;
  *(v0 + 96) = v40;
  *(v0 + 104) = v78;
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 120) = v49 & 1;
  *(v0 + 121) = v39;
  *(v0 + 128) = v84;
  *(v0 + 136) = v38;
  sub_10007FFC0();
  *(v0 + 456) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 464) = v41;
  v42 = *(v0 + 448);
  v43 = *(v0 + 96);
  *(v0 + 336) = *(v0 + 80);
  *(v0 + 352) = v43;
  v44 = *(v0 + 128);
  *(v0 + 368) = *(v0 + 112);
  *(v0 + 384) = v44;
  v45 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 16);
  *(v0 + 288) = v45;
  v46 = *(v0 + 64);
  *(v0 + 304) = *(v0 + 48);
  *(v0 + 320) = v46;
  sub_100080014(v0 + 272);

  v47 = *(v42 + v53[9] + 8);
  v85 = (*(v47 + 24) + **(v47 + 24));
  v48 = swift_task_alloc();
  *(v0 + 472) = v48;
  *v48 = v0;
  v48[1] = sub_10007D738;

  __asm { BRAA            X9, X16 }
}

uint64_t sub_10007D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[60] = a1;
  v5[61] = a2;
  v5[62] = a3;
  v5[63] = v3;

  if (v3)
  {
    v6 = sub_10007DDFC;
  }

  else
  {
    v6 = sub_10007D87C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10007D87C()
{
  v51 = v0;
  if ([*(v0 + 496) statusCode] != 200)
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000DAC0(v21, qword_10023FC88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "The call failed", v24, 2u);
    }

    v25 = *(v0 + 488);
    v26 = *(v0 + 496);
    v27 = *(v0 + 480);
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);

    sub_100080044();
    swift_allocError();
    v31 = 4;
LABEL_19:
    *v30 = v31;
    swift_willThrow();

    sub_10001BABC(v27, v25);
    v38 = v29;
    v39 = v28;
    goto LABEL_20;
  }

  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 432) = 0;
  v3 = [v1 JSONObjectWithData:isa options:0 error:v0 + 432];

  v4 = *(v0 + 432);
  if (v3)
  {
    v5 = v4;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023B938, &qword_1001C6F00);
    if (swift_dynamicCast())
    {
      if (qword_100239CC8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000DAC0(v6, qword_10023FC88);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 496);
      v11 = *(v0 + 456);
      v12 = *(v0 + 464);
      if (v9)
      {
        v49 = *(v0 + 464);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v50 = v14;
        *v13 = 136315138;
        v15 = Dictionary.description.getter();
        v17 = v16;

        v18 = sub_10017AD04(v15, v17, &v50);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v7, v8, "This is what we got %s", v13, 0xCu);
        sub_10000DB58(v14);

        v19 = v11;
        v20 = v49;
      }

      else
      {

        v19 = v11;
        v20 = v12;
      }

      sub_10001BABC(v19, v20);

      v46 = *(v0 + 8);
      v47 = *(v0 + 480);
      v48 = *(v0 + 488);

      return v46(v47, v48);
    }

    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000DAC0(v40, qword_10023FC88);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Decoding response failed", v43, 2u);
    }

    v25 = *(v0 + 488);
    v26 = *(v0 + 496);
    v27 = *(v0 + 480);
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);

    sub_10001B95C();
    swift_allocError();
    v31 = 1;
    goto LABEL_19;
  }

  v32 = *(v0 + 488);
  v33 = *(v0 + 496);
  v34 = *(v0 + 480);
  v36 = *(v0 + 456);
  v35 = *(v0 + 464);
  v37 = v4;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001BABC(v34, v32);

  v38 = v36;
  v39 = v35;
LABEL_20:
  sub_10001BABC(v38, v39);
  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10007DDFC()
{
  sub_10001BABC(v0[57], v0[58]);
  v1 = v0[1];

  return v1();
}

uint64_t type metadata accessor for PostbackFetchTask(uint64_t a1)
{
  result = qword_10023B998;
  if (!qword_10023B998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007DED8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BAE8, &qword_1001BA050);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100081D54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = *(v3 + 72);
    v10[8] = 6;
    sub_10004465C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007E138(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10007E1C8;

  return sub_10007CF2C();
}

uint64_t sub_10007E1C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10007E2FC(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10007E450@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000808F0(*a1);
  *a2 = result;
  return result;
}

void sub_10007E480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265696669746ELL;
  v4 = 0x6564692D6D657469;
  v5 = 0xEB00000000657461;
  v6 = 0x6369666974726563;
  if (v2 != 5)
  {
    v6 = 0x6D6E6F7269766E65;
    v5 = 0xEB00000000746E65;
  }

  v7 = 0xED000064616F6C6ELL;
  v8 = 0x776F6465722D7369;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007475706E69;
  v10 = 0x2D65746176697270;
  if (v2 != 1)
  {
    v10 = 0x65696C632D667270;
    v9 = 0xEA0000000000746ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10007E59C()
{
  v1 = *v0;
  v2 = 0x6564692D6D657469;
  v3 = 0x6369666974726563;
  if (v1 != 5)
  {
    v3 = 0x6D6E6F7269766E65;
  }

  v4 = 0x776F6465722D7369;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x2D65746176697270;
  if (v1 != 1)
  {
    v5 = 0x65696C632D667270;
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

unint64_t sub_10007E6B4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000808F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007E6E8(uint64_t a1)
{
  v2 = sub_100081D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E724(uint64_t a1)
{
  v2 = sub_100081D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10007E760@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100080A20(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10007E7C8(char a1)
{
  result = 0x642D656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x64692D6D616461;
      break;
    case 2:
      result = 0x6F7774656E2D6461;
      break;
    case 3:
      result = 0x6E676961706D6163;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = 0x727574616E676973;
      break;
    case 9:
      result = 0x612D6E696769726FLL;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    case 11:
      result = 0x7974696C65646966;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x676E69726564726FLL;
      break;
    case 14:
      result = 0x6D6E6F7269766E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007EA00(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA80, &qword_1001B9BD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1000815C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 201);
    v10[14] = 14;
    sub_10004CEFC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007ED74(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA98, &qword_1001B9BE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1000818E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_10004CE54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007EF40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10007E7C8(*a1);
  v5 = v4;
  if (v3 == sub_10007E7C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10007EFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007E7C8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007F02C(uint64_t a1)
{
  sub_10007E7C8(*v1);
  String.hash(into:)();
}

Swift::Int sub_10007F080(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10007E7C8(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007F0E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080988(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007F110@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007E7C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007F158@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100080988(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007F180(uint64_t a1)
{
  v2 = sub_1000815C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F1BC(uint64_t a1)
{
  v2 = sub_1000815C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10007F1F8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100080E3C(a2, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 186) = *(v11 + 10);
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10007F288()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007F368(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007F434(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007F510@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000809D4(*a1);
  *a2 = result;
  return result;
}

void sub_10007F540(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = 0xEE007865646E692DLL;
  v5 = 0x676E69726564726FLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x80000001001CA560;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA540;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10007F5DC()
{
  v1 = 0x697274732D73776ALL;
  v2 = 0x676E69726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t sub_10007F674@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000809D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007F69C(uint64_t a1)
{
  v2 = sub_1000818E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F6D8(uint64_t a1)
{
  v2 = sub_1000818E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007F714@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100081684(a2, v6);
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

uint64_t sub_10007F770(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023BA28, &qword_1001B9BB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000806BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 56);
    v22[2] = *(v3 + 40);
    v23[0] = v10;
    *(v23 + 9) = *(v3 + 65);
    v22[0] = *(v3 + 8);
    v22[1] = v9;
    v11 = *(v3 + 40);
    v19 = *(v3 + 24);
    v20 = v11;
    v21[0] = *(v3 + 56);
    *(v21 + 9) = *(v3 + 65);
    v18 = *(v3 + 8);
    v17 = 1;
    sub_100080710(v22, v15);
    sub_100080748();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15[2] = v20;
    *v16 = v21[0];
    *&v16[9] = *(v21 + 9);
    v15[1] = v19;
    v15[0] = v18;
    sub_10008079C(v15);
    v14 = *(v3 + 96);
    HIBYTE(v13) = 2;
    sub_10000CDE0(&qword_10023BA40, &qword_1001B9BC0);
    sub_100080820(&qword_10023BA48, &qword_10023BA40, &qword_1001B9BC0, sub_1000807CC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 88);
    HIBYTE(v13) = 3;
    sub_10000CDE0(&qword_10023BA58, &qword_1001B9BC8);
    sub_100080820(&qword_10023BA60, &qword_10023BA58, &qword_1001B9BC8, sub_10008089C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = *(v3 + 105);
    HIBYTE(v13) = 5;
    sub_10004465C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007FB8C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10007FCCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008093C(*a1);
  *a2 = result;
  return result;
}

void sub_10007FCFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F66;
  v4 = 0x6E692D6E656B6F74;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D6E6F7269766E65;
  if (v2 != 5)
  {
    v6 = 0x2D7972746E756F63;
    v5 = 0xEC00000065646F63;
  }

  v7 = 0x80000001001CAD10;
  v8 = 0xD000000000000017;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001001CAD30;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x6973736572706D69;
    v3 = 0xEB00000000736E6FLL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000025;
    v3 = 0x80000001001CACD0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10007FE04()
{
  v1 = *v0;
  v2 = 0x6E692D6E656B6F74;
  v3 = 0x6D6E6F7269766E65;
  if (v1 != 5)
  {
    v3 = 0x2D7972746E756F63;
  }

  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6973736572706D69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000025;
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

unint64_t sub_10007FF08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008093C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007FF30(uint64_t a1)
{
  v2 = sub_1000806BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007FF6C(uint64_t a1)
{
  v2 = sub_1000806BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10007FFC0()
{
  result = qword_10023B928;
  if (!qword_10023B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B928);
  }

  return result;
}

unint64_t sub_100080044()
{
  result = qword_10023B930;
  if (!qword_10023B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B930);
  }

  return result;
}

__n128 sub_100080098(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1000800DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 202))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 202) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 202) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000801B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000801DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100080224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000802B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008038C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100080448(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000805EC(319, &qword_10023B9A8, &type metadata for BlueDogImpression, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1000805EC(319, &qword_10023B9B0, &type metadata for SKAdNetworkImpression, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100080598();
        if (v4 <= 0x3F)
        {
          sub_1000805EC(319, &qword_10023A190, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100080598()
{
  result = qword_10023B9B8;
  if (!qword_10023B9B8)
  {
    sub_10000CCC0(&unk_10023B9C0, &qword_1001B9A08);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10023B9B8);
  }

  return result;
}

void sub_1000805EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10008063C(uint64_t a1)
{
  result = sub_10001B95C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080668()
{
  result = qword_10023BA20;
  if (!qword_10023BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA20);
  }

  return result;
}

unint64_t sub_1000806BC()
{
  result = qword_10023BA30;
  if (!qword_10023BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA30);
  }

  return result;
}

unint64_t sub_100080748()
{
  result = qword_10023BA38;
  if (!qword_10023BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA38);
  }

  return result;
}

unint64_t sub_1000807CC()
{
  result = qword_10023BA50;
  if (!qword_10023BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA50);
  }

  return result;
}

uint64_t sub_100080820(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008089C()
{
  result = qword_10023BA68;
  if (!qword_10023BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA68);
  }

  return result;
}

unint64_t sub_1000808F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002153B0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008093C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215D58, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100080988(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216008, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000809D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002162C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080A20@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BAF8, &qword_1001BA058);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100081D54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36[0]) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v11;
  v30 = v10;
  LOBYTE(v36[0]) = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v13;
  v28 = v12;
  LOBYTE(v36[0]) = 3;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v36[0]) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36[0]) = 5;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v14;
  v43 = 6;
  sub_100044608();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v24 = v44;
  v15 = v30;
  *&v32 = v9;
  *(&v32 + 1) = v30;
  v16 = v31;
  v17 = v28;
  *&v33 = v31;
  *(&v33 + 1) = v28;
  v18 = v29;
  *&v34 = v29;
  v19 = v42;
  BYTE8(v34) = v42;
  *v35 = v27;
  *&v35[8] = v25;
  *&v35[16] = v26;
  v35[24] = v44;
  sub_100080710(&v32, v36);
  sub_10000DB58(a1);
  v36[0] = v9;
  v36[1] = v15;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v18;
  v37 = v19;
  v38 = v27;
  v39 = v25;
  v40 = v26;
  v41 = v24;
  result = sub_10008079C(v36);
  v21 = *v35;
  a2[2] = v34;
  a2[3] = v21;
  *(a2 + 57) = *&v35[9];
  v22 = v33;
  *a2 = v32;
  a2[1] = v22;
  return result;
}

uint64_t sub_100080E3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v102 = sub_10000CDE0(&qword_10023BA70, &qword_1001B9BD0);
  v5 = *(v102 - 8);
  __chkstk_darwin(v102);
  v7 = &v33 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_1000815C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  LOBYTE(v67[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  LOBYTE(v67[0]) = 1;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v67[0]) = 2;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = v12;
  LOBYTE(v67[0]) = 3;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v13 & 1;
  LOBYTE(v67[0]) = 4;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v99 = v14 & 1;
  LOBYTE(v67[0]) = 5;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = v15;
  LOBYTE(v67[0]) = 6;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v16;
  LOBYTE(v67[0]) = 7;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v67[0]) = 8;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v17;
  LOBYTE(v67[0]) = 9;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v18 & 1;
  LOBYTE(v67[0]) = 10;
  *&v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v41 + 1) = v19;
  LOBYTE(v67[0]) = 11;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v95 = v20 & 1;
  LOBYTE(v67[0]) = 12;
  *&v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v39 + 1) = v21;
  LOBYTE(v67[0]) = 13;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v93 = v22 & 1;
  v91 = 14;
  sub_10004DBC4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v102);
  LODWORD(v102) = v92;
  *&v55 = v9;
  *(&v55 + 1) = v11;
  v23 = v11;
  v24 = v51;
  *&v56 = v51;
  *(&v56 + 1) = v50;
  v25 = v54;
  *&v57 = v54;
  *(&v57 + 1) = v49;
  HIDWORD(v33) = v101;
  LOBYTE(v58) = v101;
  *(&v58 + 1) = v48;
  v34 = v99;
  LOBYTE(v59) = v99;
  *(&v59 + 1) = v47;
  *&v60 = v53;
  *(&v60 + 1) = v46;
  *&v61 = v52;
  *(&v61 + 1) = v44;
  *&v62 = v43;
  *(&v62 + 1) = v45;
  *&v63 = v42;
  v35 = v97;
  BYTE8(v63) = v97;
  v64 = v41;
  *&v65 = v40;
  v36 = v95;
  BYTE8(v65) = v95;
  v66[0] = v39;
  *&v66[1] = v38;
  v37 = v93;
  BYTE8(v66[1]) = v93;
  BYTE9(v66[1]) = v92;
  sub_10008161C(&v55, v67);
  sub_10000DB58(a1);
  v67[0] = v9;
  v67[1] = v23;
  v67[2] = v24;
  v67[3] = v50;
  v67[4] = v25;
  v67[5] = v49;
  v68 = BYTE4(v33);
  *v69 = *v100;
  *&v69[3] = *&v100[3];
  v70 = v48;
  v71 = v34;
  *v72 = *v98;
  *&v72[3] = *&v98[3];
  v73 = v47;
  v74 = v53;
  v75 = v46;
  v76 = v52;
  v77 = v44;
  v78 = v43;
  v79 = v45;
  v80 = v42;
  v81 = v35;
  *v82 = *v96;
  *&v82[3] = *&v96[3];
  v83 = v41;
  v84 = v40;
  v85 = v36;
  *v86 = *v94;
  *&v86[3] = *&v94[3];
  v87 = v39;
  v88 = v38;
  v89 = v37;
  v90 = v102;
  result = sub_100081654(v67);
  v27 = v66[0];
  a2[10] = v65;
  a2[11] = v27;
  *(a2 + 186) = *(v66 + 10);
  v28 = v62;
  a2[6] = v61;
  a2[7] = v28;
  v29 = v64;
  a2[8] = v63;
  a2[9] = v29;
  v30 = v58;
  a2[2] = v57;
  a2[3] = v30;
  v31 = v60;
  a2[4] = v59;
  a2[5] = v31;
  v32 = v56;
  *a2 = v55;
  a2[1] = v32;
  return result;
}

unint64_t sub_1000815C8()
{
  result = qword_10023BA78;
  if (!qword_10023BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA78);
  }

  return result;
}

uint64_t sub_100081684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BA88, &qword_1001B9BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000818E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v26 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = v9;
  v24 = 1;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v25;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v12;
  v20 = v13;
  v22 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_1000818E8()
{
  result = qword_10023BA90;
  if (!qword_10023BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BA90);
  }

  return result;
}

__n128 sub_10008196C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100081990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1000819D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100081A40()
{
  result = qword_10023BAA0;
  if (!qword_10023BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAA0);
  }

  return result;
}

unint64_t sub_100081A98()
{
  result = qword_10023BAA8;
  if (!qword_10023BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAA8);
  }

  return result;
}

unint64_t sub_100081AF0()
{
  result = qword_10023BAB0;
  if (!qword_10023BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAB0);
  }

  return result;
}

unint64_t sub_100081B48()
{
  result = qword_10023BAB8;
  if (!qword_10023BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAB8);
  }

  return result;
}

unint64_t sub_100081BA0()
{
  result = qword_10023BAC0;
  if (!qword_10023BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAC0);
  }

  return result;
}

unint64_t sub_100081BF8()
{
  result = qword_10023BAC8;
  if (!qword_10023BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAC8);
  }

  return result;
}

unint64_t sub_100081C50()
{
  result = qword_10023BAD0;
  if (!qword_10023BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAD0);
  }

  return result;
}

unint64_t sub_100081CA8()
{
  result = qword_10023BAD8;
  if (!qword_10023BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAD8);
  }

  return result;
}

unint64_t sub_100081D00()
{
  result = qword_10023BAE0;
  if (!qword_10023BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAE0);
  }

  return result;
}

unint64_t sub_100081D54()
{
  result = qword_10023BAF0;
  if (!qword_10023BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BAF0);
  }

  return result;
}

unint64_t sub_100081DC4()
{
  result = qword_10023BB00;
  if (!qword_10023BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB00);
  }

  return result;
}

unint64_t sub_100081E1C()
{
  result = qword_10023BB08;
  if (!qword_10023BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB08);
  }

  return result;
}

unint64_t sub_100081E74()
{
  result = qword_10023BB10;
  if (!qword_10023BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB10);
  }

  return result;
}

unint64_t sub_100081EEC()
{
  result = qword_10023BB18;
  if (!qword_10023BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB18);
  }

  return result;
}

Swift::Int sub_100081F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BA338[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100081FEC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BA338[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100082038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000822FC(*a1);
  *a2 = result;
  return result;
}

void sub_10008208C(_BYTE *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_1000830A0(a2);
    }

    else if (v2 == 4)
    {
      sub_1000832D4(a2);
    }
  }

  else if (*result)
  {
    if (v2 == 1)
    {
      sub_100082638(a2);
    }

    else
    {
      sub_1000829C8(a2);
    }
  }

  else
  {
    sub_100082378(a2);
  }
}

unint64_t sub_100082108(void *a1)
{
  a1[1] = sub_100082140();
  a1[2] = sub_100082194();
  result = sub_1000821E8();
  a1[3] = result;
  return result;
}

unint64_t sub_100082140()
{
  result = qword_10023BB60;
  if (!qword_10023BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB60);
  }

  return result;
}

unint64_t sub_100082194()
{
  result = qword_10023BB68;
  if (!qword_10023BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB68);
  }

  return result;
}

unint64_t sub_1000821E8()
{
  result = qword_10023BB70;
  if (!qword_10023BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB70);
  }

  return result;
}

unint64_t sub_100082240()
{
  result = qword_10023BB78;
  if (!qword_10023BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB78);
  }

  return result;
}

unint64_t sub_100082298()
{
  result = qword_10023BB80;
  if (!qword_10023BB80)
  {
    sub_10000CCC0(&qword_10023BB88, &qword_1001BA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB80);
  }

  return result;
}

uint64_t sub_1000822FC(uint64_t result)
{
  if (result > 17999)
  {
    switch(result)
    {
      case 18000:
        return 3;
      case 18001:
        return 4;
      case 18002:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 17400:
        return 1;
      case 17401:
        return 2;
    }
  }

  return 6;
}

void sub_100082378(uint64_t a1)
{
  _StringGuts.grow(_:)(128);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for FinalizedTokenEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x5F65746176697270;
  v11._object = 0xED00007475706E69;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x657A696C616E6966;
  v13._object = 0xEF6E656B6F745F64;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x776F6465725F7369;
  v15._object = 0xED000064616F6C6ELL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6D617473656D6974;
  v17._object = 0xE900000000000070;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEA00000000000A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6369666974726563;
  v19._object = 0xEB00000000657461;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x550A2C5458455420;
  v20._object = 0xEE0028455551494ELL;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA000;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x80000001001CB550;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v23);
}

void sub_100082638(uint64_t a1)
{
  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v8);

  _StringGuts.grow(_:)(137);
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x80000001001CB510;
  String.append(_:)(v9);
  v10 = [v2 databaseTable];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 665632;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x69737265766E6F63;
  v16._object = 0xED000064695F6E6FLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xA2C5458455420;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001001CA000;
  v18._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x52454745544E4920;
  v19._object = 0xEA00000000000A2CLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x5F65746176697270;
  v20._object = 0xED00007475706E69;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xA2C5458455420;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x657A696C616E6966;
  v22._object = 0xEF6E656B6F745F64;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xA2C5458455420;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x776F6465725F7369;
  v24._object = 0xED000064616F6C6ELL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x52454745544E4920;
  v25._object = 0xEA00000000000A2CLL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6D617473656D6974;
  v26._object = 0xE900000000000070;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x52454745544E4920;
  v27._object = 0xEA00000000000A2CLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6369666974726563;
  v28._object = 0xEB00000000657461;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x550A2C5458455420;
  v29._object = 0xEE0028455551494ELL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x69737265766E6F63;
  v30._object = 0xED000064695F6E6FLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000018;
  v31._object = 0x80000001001CB550;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v32);
}

void sub_1000829C8(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x69737265766E6F63;
  v9._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(37);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x4C4F432044444120;
  v17._object = 0xEC000000204E4D55;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x636F6C6C615F7369;
  v18._object = 0xEC00000064657461;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4E41454C4F4F4220;
  v19._object = 0xE90000000000003BLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v20);

  _StringGuts.grow(_:)(36);

  v21 = [v2 databaseTable];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x205445530ALL;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x69737265766E6F63;
  v27._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 656424224;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6F6C6E776F646572;
  v29._object = 0xEA00000000006461;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x2045524548570A27;
  v30._object = 0xE800000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x776F6465725F7369;
  v31._object = 0xED000064616F6C6ELL;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 824196384;
  v32._object = 0xE400000000000000;
  String.append(_:)(v32);
  v33 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v33);

  _StringGuts.grow(_:)(37);

  v34 = [v2 databaseTable];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x205445530ALL;
  v39._object = 0xE500000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x69737265766E6F63;
  v40._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 656424224;
  v41._object = 0xE400000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x64616F6C6E776F64;
  v42._object = 0xE800000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x2045524548570A27;
  v43._object = 0xE800000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x776F6465725F7369;
  v44._object = 0xED000064616F6C6ELL;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x31203D2120;
  v45._object = 0xE500000000000000;
  String.append(_:)(v45);
  v46 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v46);

  _StringGuts.grow(_:)(30);

  v47 = [v2 databaseTable];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x4F4320504F524420;
  v52._object = 0xED0000204E4D554CLL;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x776F6465725F7369;
  v53._object = 0xED000064616F6C6ELL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 59;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  v55 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v55);

  _StringGuts.grow(_:)(20);

  v56 = [v2 databaseTable];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60._countAndFlagsBits = v57;
  v60._object = v59;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x205445530ALL;
  v61._object = 0xE500000000000000;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 0x636F6C6C615F7369;
  v62._object = 0xEC00000064657461;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 824196384;
  v63._object = 0xE400000000000000;
  String.append(_:)(v63);
  v64 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v64);
}

void sub_1000830A0(uint64_t a1)
{
  _StringGuts.grow(_:)(107);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for AllocatedTokenMetadataEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x69737265766E6F63;
  v9._object = 0xED000064695F6E6FLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._object = 0xEF657079745F6E6FLL;
  v13._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA620;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x69737265766E6F63;
  v17._object = 0xED000064695F6E6FLL;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001001CB550;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v19);
}

void sub_1000832D4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for FinalizedTokenEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(24);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x205445530ALL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D6E6F7269766E65;
  v18._object = 0xEB00000000746E65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 656424224;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x69746375646F7270;
  v20._object = 0xEA00000000006E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 15143;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v22);
}

unint64_t sub_100083550(uint64_t a1, uint64_t a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return 0xD000000000000023;
      }

      if (a2 == 3)
      {
        return 0xD000000000000022;
      }

      return 0xD000000000000030;
    }

    if (!a2)
    {
      return 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v3 = 33;
      return v3 | 0xD000000000000014;
    }

    goto LABEL_23;
  }

  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        v3 = 10;
        return v3 | 0xD000000000000014;
      case 8:
        return 0xD000000000000017;
      case 9:
        return 0xD000000000000021;
    }

LABEL_23:
    _StringGuts.grow(_:)(22);

    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return 0xD000000000000014;
  }

  if (a2 == 5)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

void sub_100083774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 7:
        v3 = 8;
        goto LABEL_22;
      case 8:
        v3 = 9;
        goto LABEL_22;
      case 9:
        v3 = 10;
LABEL_22:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 3;
      }

      else if (a3 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_22;
    }

    if (!a3)
    {
      v3 = 1;
      goto LABEL_22;
    }

    if (a3 == 1)
    {
      v3 = 2;
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int sub_10008388C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100083774(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000838E0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_100083774(v5, v2, v3);
  return Hasher._finalize()();
}

void sub_10008393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100083AAC(a1, v13);
  v6 = v14;
  if (v14)
  {
    v7 = sub_10000DA7C(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    sub_10000DB58(v13);
  }

  else
  {
    v11 = 0;
  }

  sub_100083550(a2, a3);
  v12 = String._bridgeToObjectiveC()();

  [v3 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();
}

uint64_t sub_100083AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        if (a4 == 5)
        {
          return 1;
        }
      }

      else if (a4 == 6)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        return a4 == 7;
      case 8:
        return a4 == 8;
      case 9:
        return a4 == 9;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  if (a4 < 0xA)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100083C4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100083C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

void *sub_100083D0C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100083D40()
{
  result = qword_10023BB98;
  if (!qword_10023BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BB98);
  }

  return result;
}

uint64_t sub_100083D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10000BD30;

  return sub_1000F9D50(a3, a4, a5);
}

uint64_t sub_100084068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1000152E0;

  return sub_1000F8700(a1, a4, a5, a6, a7);
}

uint64_t sub_1000844F8()
{
  v1 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  sub_10001BABC(*(v0 + 24), *(v0 + 32));
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100084618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1000152E0;

  return sub_100084068(a1, a2, a3, v10, v11, v12, v3 + v9);
}

uint64_t sub_100084734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100084838;

  return v9(a2, a3);
}

uint64_t sub_100084838()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100084968, 0, 0);
  }
}

uint64_t sub_10008498C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000849CC()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100084A04(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000BD30;

  return sub_100083D94(a1, a2, v6, v7, v8);
}

uint64_t sub_100084AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v8);
}

id sub_100084BCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CurrencyExchangeRateEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1))
      {
        if (*(v7 - 1) == 1)
        {
          v10 = 0xD000000000000011;
          v11 = 0x80000001001CA600;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else
      {
        v10 = 0x79636E6572727563;
        v11 = 0xED000065646F635FLL;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100084E74(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for RetryCountEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v11 = 0x6F635F7972746572;
          v10 = 0xEB00000000746E75;
        }

        else
        {
          v11 = 0xD000000000000016;
          v10 = 0x80000001001CA100;
        }
      }

      else if (*(v7 - 1))
      {
        v11 = 0x616E5F70756F7267;
        v10 = 0xEA0000000000656DLL;
      }

      else
      {
        v10 = 0xEA00000000007265;
        v11 = 0x696669746E656469;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v10;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100085138(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnoutStoryEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v7 - 1);
      if (v10 <= 3)
      {
        if (*(v7 - 1) > 1u)
        {
          if (v10 == 2)
          {
            v11 = 0x69737265766E6F63;
            v12 = 0xED000064695F6E6FLL;
          }

          else
          {
            v11 = 0xD000000000000014;
            v12 = 0x80000001001CA030;
          }
        }

        else if (*(v7 - 1))
        {
          v11 = 0xD000000000000012;
          v12 = 0x80000001001CA000;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x64695F79726F7473;
        }
      }

      else if (*(v7 - 1) <= 5u)
      {
        if (v10 == 4)
        {
          v11 = 0xD000000000000010;
          v12 = 0x80000001001CA050;
        }

        else
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001001CA070;
        }
      }

      else if (v10 == 6)
      {
        v11 = 0x5F676E69646E6570;
        v12 = 0xEE0073746E657665;
      }

      else if (v10 == 7)
      {
        v11 = 0xD000000000000011;
        v12 = 0x80000001001CA0A0;
      }

      else
      {
        v11 = 0xD000000000000017;
        v12 = 0x80000001001CA0C0;
      }

      v13 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v12;
      if (v13)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v13)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100088BDC((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 2) = v20 + 1;
      v21 = &v8[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_1000854E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SoloEventEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_100088BDC((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = 0x76655F74756F6E73;
      *(v13 + 5) = 0xEB00000000746E65;
      v14 = v10 == 0;
      if (v10)
      {
        v15 = 1129530692;
      }

      else
      {
        v15 = 4412225;
      }

      if (v14)
      {
        v16 = 0xE300000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_100088BDC((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      ++v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v21);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v23, a4, a5);

  return v24;
}

id sub_100085760(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6(0);
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v11 = *(v8 - 1);
      if (v11 <= 3)
      {
        if (*(v8 - 1) > 1u)
        {
          if (v11 == 2)
          {
            v12 = 0xD000000000000012;
            v13 = 0x80000001001CA000;
          }

          else
          {
            v12 = 0x6F7774656E5F6461;
            v13 = 0xED000064695F6B72;
          }
        }

        else if (*(v8 - 1))
        {
          v12 = 0xD000000000000011;
          v13 = 0x80000001001CA650;
        }

        else
        {
          v13 = 0xED000064695F6E6FLL;
          v12 = 0x6973736572706D69;
        }
      }

      else if (*(v8 - 1) <= 5u)
      {
        if (v11 == 4)
        {
          v13 = 0xE900000000000070;
          v12 = 0x6D617473656D6974;
        }

        else
        {
          v12 = 0xD000000000000010;
          v13 = 0x80000001001CA670;
        }
      }

      else if (v11 == 6)
      {
        v12 = 0x5F746361706D6F63;
        v13 = 0xEB0000000073776ALL;
      }

      else if (v11 == 7)
      {
        v12 = 0xD000000000000012;
        v13 = 0x80000001001CA620;
      }

      else
      {
        v12 = 0x6D6E6F7269766E65;
        v13 = 0xEB00000000746E65;
      }

      v14 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100088BDC(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_100088BDC((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      v17 = &v10[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v13;
      if (v14)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v14)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_100088BDC((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v9);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100085B0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PostbackEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v8;
      v11 = sub_1000AF1D0(*(v8 - 1));
      v13 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v17 = v10 == 0;
      if (v10)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100088BDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        v7 = sub_100088BDC((v20 > 1), v21 + 1, 1, v7);
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v7);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100085D4C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversionTagEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1))
      {
        if (*(v7 - 1) == 1)
        {
          v10 = 0x69737265766E6F63;
          v11 = 0xEE006761745F6E6FLL;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100085FF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FinalizedTokenEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v7 - 1);
      if (v10 <= 3)
      {
        if (*(v7 - 1) > 1u)
        {
          if (v10 == 2)
          {
            v11 = 0x5F65746176697270;
            v13 = 0xED00007475706E69;
          }

          else
          {
            v11 = 0x657A696C616E6966;
            v13 = 0xEF6E656B6F745F64;
          }
        }

        else if (*(v7 - 1))
        {
          v11 = 0xD000000000000012;
          v13 = 0x80000001001CA000;
        }

        else
        {
          v11 = 0x69737265766E6F63;
          v13 = 0xED000064695F6E6FLL;
        }

        goto LABEL_21;
      }

      if (*(v7 - 1) <= 5u)
      {
        if (v10 != 4)
        {
          v11 = 0x6369666974726563;
          v12 = 6648929;
          goto LABEL_20;
        }

        v13 = 0xE900000000000070;
        v11 = 0x6D617473656D6974;
      }

      else if (v10 == 6)
      {
        v11 = 0x69737265766E6F63;
        v13 = 0xEF657079745F6E6FLL;
      }

      else
      {
        if (v10 == 7)
        {
          v11 = 0x6D6E6F7269766E65;
          v12 = 7630437;
LABEL_20:
          v13 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          goto LABEL_21;
        }

        v11 = 0x636F6C6C615F7369;
        v13 = 0xEC00000064657461;
      }

LABEL_21:
      v14 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100088BDC((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v13;
      if (v14)
      {
        v18 = 1129530692;
      }

      else
      {
        v18 = 4412225;
      }

      if (v14)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        v8 = sub_100088BDC((v20 > 1), v21 + 1, 1, v8);
      }

      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_38;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_38:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v26, a4, a5);

  return v27;
}

id sub_100086388(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AllocatedTokenMetadataEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0x69737265766E6F63;
          v11 = 0xEF657079745F6E6FLL;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      else
      {
        v10 = 0x69737265766E6F63;
        v11 = 0xED000064695F6E6FLL;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100086658(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AppDistributorMetadataEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0x737265765F707061;
          v11 = 0xEE0064695F6E6F69;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000015;
        v11 = 0x80000001001CAEA0;
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CA000;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_10008692C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversionHistoryEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = (a3 + 33);
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v8 - 1);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001001CA030;
        }

        else if (v10 == 4)
        {
          v11 = 0x6C7074656B72616DLL;
          v12 = 0xEE0064695F656361;
        }

        else
        {
          v11 = 0x5F7972746E756F63;
          v12 = 0xEC00000065646F63;
        }
      }

      else if (*(v8 - 1))
      {
        v11 = 0x69737265766E6F63;
        v12 = 0xED000064695F6E6FLL;
        if (v10 != 1)
        {
          v12 = 0xEF657079745F6E6FLL;
        }
      }

      else
      {
        v11 = 0xD000000000000012;
        v12 = 0x80000001001CA000;
      }

      v13 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_100088BDC((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v12;
      if (v13)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v13)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100088BDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v7 = sub_100088BDC((v19 > 1), v20 + 1, 1, v7);
      }

      *(v7 + 2) = v20 + 1;
      v21 = &v7[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v7);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_100086C40(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FrozenImpressionEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v7 - 1) > 1u)
      {
        if (*(v7 - 1) == 2)
        {
          v10 = 0xD000000000000012;
          v11 = 0x80000001001CA000;
        }

        else
        {
          v10 = 0x63616274736F6867;
          v11 = 0xEC00000064695F6BLL;
        }
      }

      else if (*(v7 - 1))
      {
        v10 = 0xD000000000000014;
        v11 = 0x80000001001CADB0;
      }

      else
      {
        v10 = 0xD000000000000012;
        v11 = 0x80000001001CAD90;
      }

      v12 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      if (v12)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v12)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

id sub_100086F10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GhostbackEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      v11 = 0xE900000000000064;
      v12 = 0x656B636F6C5F7369;
      switch(*(v7 - 1))
      {
        case 1u:
          v12 = 0xD000000000000015;
          v11 = 0x80000001001CA900;
          break;
        case 2u:
          v12 = 0xD000000000000017;
          v11 = 0x80000001001CA920;
          break;
        case 3u:
          break;
        case 4u:
          v11 = 0xEA00000000006465;
          v12 = 0x7265747369676572;
          break;
        case 5u:
          v12 = 0xD000000000000012;
          v11 = 0x80000001001CA620;
          break;
        case 6u:
          v12 = 0xD000000000000010;
          v11 = 0x80000001001CA960;
          break;
        case 7u:
          v12 = 0x6D69745F6B636F6CLL;
          v11 = 0xEE00706D61747365;
          break;
        case 8u:
          v12 = 0x69745F6863746566;
          v11 = 0xEF706D617473656DLL;
          break;
        case 9u:
          v12 = 0x63616274736F6867;
          v11 = 0xEC00000064695F6BLL;
          break;
        case 0xAu:
          v12 = 0x69737265766E6F63;
          v11 = 0xEF657079745F6E6FLL;
          break;
        case 0xBu:
          v12 = 0x6D6E6F7269766E65;
          v11 = 0xEB00000000746E65;
          break;
        case 0xCu:
          v12 = 0xD000000000000016;
          v11 = 0x80000001001CAA20;
          break;
        case 0xDu:
          v12 = 0x6C7074656B72616DLL;
          v11 = 0xEE0064695F656361;
          break;
        case 0xEu:
          v12 = 0x69737265766E6F63;
          v11 = 0xEE006761745F6E6FLL;
          break;
        default:
          v12 = 0xD000000000000012;
          v11 = 0x80000001001CA000;
          break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v16 = v10 == 0;
      if (v10)
      {
        v17 = 1129530692;
      }

      else
      {
        v17 = 4412225;
      }

      if (v16)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100088BDC((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 2) = v20 + 1;
      v21 = &v8[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v23);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v25, a4, a5);

  return v26;
}

id sub_1000873A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ItemIdentifierBundleIDMapEntity();
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 33);
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7;
      if (*(v7 - 1))
      {
        v11 = 0x695F656C646E7562;
      }

      else
      {
        v11 = 0x64695F6D657469;
      }

      if (*(v7 - 1))
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100088BDC(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100088BDC((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      if (v10)
      {
        v16 = 1129530692;
      }

      else
      {
        v16 = 4412225;
      }

      if (v10)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100088BDC(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_100088BDC((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  sub_100087938(v22);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100087938(v8);

  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = sub_100009B04(ObjCClassFromMetadata, a1, a2, isa, v24, a4, a5);

  return v25;
}

void *sub_10008760C(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1001470A0(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10004C9B4(v8, v5);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1001470A0((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100219220;
      v12 = sub_10005CA24(&v14);
      sub_10004C9B4(v5, v12);
      v7[2] = v11 + 1;
      sub_10000DA64(&v14, &v7[5 * v11 + 4]);
      sub_10004CA18(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1000877A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_1001470A0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[11];
      v34 = v4[10];
      v35 = v5;
      v36[0] = v4[12];
      *(v36 + 9) = *(v4 + 201);
      v6 = v4[7];
      v30 = v4[6];
      v31 = v6;
      v7 = v4[9];
      v32 = v4[8];
      v33 = v7;
      v8 = v4[3];
      v26 = v4[2];
      v27 = v8;
      v9 = v4[5];
      v28 = v4[4];
      v29 = v9;
      v10 = v4[1];
      v24 = *v4;
      v25 = v10;
      sub_10000E870(&v24, &v21);
      v37 = v2;
      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001470A0((v11 > 1), v12 + 1, 1);
        v2 = v37;
      }

      v22 = &type metadata for SKAdNetworkImpression;
      v23 = &off_100219200;
      v13 = swift_allocObject();
      *&v21 = v13;
      v14 = v35;
      v13[11] = v34;
      v13[12] = v14;
      v13[13] = v36[0];
      *(v13 + 217) = *(v36 + 9);
      v15 = v31;
      v13[7] = v30;
      v13[8] = v15;
      v16 = v33;
      v13[9] = v32;
      v13[10] = v16;
      v17 = v27;
      v13[3] = v26;
      v13[4] = v17;
      v18 = v29;
      v13[5] = v28;
      v13[6] = v18;
      v19 = v25;
      v13[1] = v24;
      v13[2] = v19;
      v2[2] = v12 + 1;
      sub_10000DA64(&v21, &v2[5 * v12 + 4]);
      v4 += 14;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100087938(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100147160(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100147160((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100025CA4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_100087A38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100147160(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10001523C(0, &qword_10023BC18, &off_1002114A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100147160((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100025CA4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10001523C(0, &qword_10023BC18, &off_1002114A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100147160((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100025CA4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100087C34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1001471C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001471C4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
        v16 = &off_10021E280;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000DA64(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1001471C4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
        v16 = &off_10021E280;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000DA64(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100087E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100147244(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = sub_1000898EC();
    do
    {
      memcpy(v22, v4, sizeof(v22));
      v20 = &type metadata for SnoutEventPayload;
      v21 = v5;
      v19[0] = swift_allocObject();
      memcpy((v19[0] + 16), v4, 0x1D8uLL);
      sub_100089A30(v22, &v16);
      v23 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_100147244((v6 > 1), v7 + 1, 1);
        v2 = v23;
      }

      v14 = v7 + 1;
      v8 = sub_100054C30(v19, v20);
      v15 = &v13;
      __chkstk_darwin(v8);
      v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v10);
      v17 = &type metadata for SnoutEventPayload;
      v18 = v5;
      *&v16 = swift_allocObject();
      memcpy((v16 + 16), v10, 0x1D8uLL);
      v2[2] = v14;
      sub_10000DA64(&v16, &v2[5 * v7 + 4]);
      sub_10000DB58(v19);
      v4 += 472;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100088030(uint64_t a1, uint64_t a2)
{
  v3 = [v2 connection];
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100084E74(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000881A4()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:3];
  swift_unknownObjectRelease();

  v7 = sub_100084E74(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_100088414(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10008848C(a1, a2, v4);
}

unint64_t sub_10008848C(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *sub_100088544(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC88, &qword_1001BA580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088650(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&unk_10023BC90, &unk_1001BA588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088798(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC58, &qword_1001BA550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000888A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCA0, &qword_1001BA598);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100088998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCA8, &unk_1001BA5A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088BDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC10, &qword_1001BA520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCC0, &qword_1001BA5B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC20, &qword_1001BA528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088F84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCB8, &qword_1001BA5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000890D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CDE0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000892D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000CDE0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CDE0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100089418(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC60, &qword_1001BA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100089540(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC50, &qword_1001C1850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100089644(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10008976C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023BC00, &qword_1001BA510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10008987C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100088414(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10008987C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023BC08, &qword_1001BA518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000898EC()
{
  result = qword_10023BC28;
  if (!qword_10023BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BC28);
  }

  return result;
}

uint64_t sub_100089940()
{

  return _swift_deallocObject(v0, 488, 7);
}

uint64_t sub_100089A8C()
{

  return _swift_deallocObject(v0, 233, 7);
}

BOOL sub_100089AF4(void *a1)
{
  v1 = a1;
  v2 = sub_100099828(v1);

  return v2;
}

uint64_t sub_100089B28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100089B80()
{
  v1[2] = v0;
  v2 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for ReengagementConversionTask.Operation(0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100089C6C, 0, 0);
}

uint64_t sub_100089C6C()
{
  type metadata accessor for ReengagementConversionTask(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Running reengagement conversion task", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  sub_100098D08(v7, v4, type metadata accessor for ReengagementConversionTask.Operation);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_10008A090;

    return sub_10008C77C();
  }

  else
  {
    v10 = v0[5];
    v11 = v0[3];
    sub_100099038(v0[6], v10, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
    v22 = v11[5];
    v23 = *v10;
    v12 = (v10 + v11[6]);
    v13 = v12[1];
    v21 = *v12;
    v14 = v11[8];
    v15 = v10 + v11[7];
    v16 = *v15;
    v17 = v15[8];
    v18 = *(v10 + v14);
    v19 = *(v10 + v14 + 8);
    v20 = swift_task_alloc();
    v0[7] = v20;
    *v20 = v0;
    v20[1] = sub_100089EF4;

    return sub_10008A31C(v23, v10 + v22, v21, v13, v16, v17, v18, v19);
  }
}

uint64_t sub_100089EF4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10008A1F8;
  }

  else
  {
    v2 = sub_10008A008;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008A008()
{
  sub_1000988DC(*(v0 + 40), type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A090()
{

  return _swift_task_switch(sub_10008A18C, 0, 0);
}

uint64_t sub_10008A18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A1F8()
{
  sub_1000988DC(*(v0 + 40), type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A2E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 496) = v14;
  *(v9 + 504) = v8;
  *(v9 + 680) = v15;
  *(v9 + 480) = a7;
  *(v9 + 488) = a8;
  *(v9 + 339) = a6;
  *(v9 + 464) = a4;
  *(v9 + 472) = a5;
  *(v9 + 448) = a2;
  *(v9 + 456) = a3;
  *(v9 + 440) = a1;
  *(v9 + 512) = type metadata accessor for RegisterConversionTask(0);
  *(v9 + 520) = swift_task_alloc();
  v10 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  *(v9 + 528) = v10;
  v11 = *(v10 - 8);
  *(v9 + 536) = v11;
  *(v9 + 544) = *(v11 + 64);
  *(v9 + 552) = swift_task_alloc();

  return _swift_task_switch(sub_10008A444, 0, 0);
}

uint64_t sub_10008A444()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[63];
  v4 = v0[56];
  v5 = v4 + *(v0[66] + 68);
  v0[70] = *(v5 + *(type metadata accessor for AppImpressionPayload(0) + 20));
  v6 = type metadata accessor for ReengagementConversionTask(0);
  v0[71] = v6;
  v7 = (v3 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  sub_100014B50(v4, v1, &qword_10023A7D0, &unk_1001B5840);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v0[72] = v12;
  sub_100097684(v1, v12 + v11);
  v13 = swift_task_alloc();
  v0[73] = v13;
  *v13 = v0;
  v13[1] = sub_10008A5C0;

  return sub_10011034C(sub_1000976F4, v12, v9, v8, v10);
}

uint64_t sub_10008A5C0(char a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = sub_10008BE48;
  }

  else
  {
    *(v4 + 411) = a1 & 1;
    v5 = sub_10008A708;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008A708()
{
  if (*(v0 + 411) == 1)
  {
    v1 = *(v0 + 680);
    if ((v1 & 0x100) != 0)
    {
      v21 = *(v0 + 504);
      v22 = *(*(v0 + 568) + 40);
      *(v0 + 340) = v22;
      sub_10000DA7C((v21 + v22), *(v21 + v22 + 24));
      v23 = swift_task_alloc();
      *(v0 + 616) = v23;
      *v23 = v0;
      v23[1] = sub_10008B018;
      v24 = *(v0 + 440);

      return sub_100106118(v24);
    }

    else
    {
      v2 = *(v0 + 488);
      v3 = swift_task_alloc();
      *(v0 + 600) = v3;
      *v3 = v0;
      v3[1] = sub_10008AB0C;
      v4 = *(v0 + 496);
      v5 = *(v0 + 480);
      v6 = *(v0 + 440);

      return sub_100090078(v6, v5, v2 & 1, v4, v1 & 1);
    }
  }

  else
  {
    sub_10005C97C();
    v8 = swift_allocError();
    *v9 = xmmword_1001BA5D0;
    *(v9 + 16) = 2;
    swift_willThrow();
    *(v0 + 664) = v8;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 440);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Register reengagement failed for app %llu with error: %@", v13, 0x16u);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    v16 = *(v0 + 568);
    v17 = *(v0 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v8, (v0 + 16));

    sub_10000DA7C((v17 + *(v16 + 68)), *(v17 + *(v16 + 68) + 24));
    v18 = type metadata accessor for SnoutManager(0);
    v19 = swift_task_alloc();
    *(v0 + 672) = v19;
    *v19 = v0;
    v19[1] = sub_10008BCB8;
    v20 = *(v0 + 440);

    return (sub_10016E27C)(v0 + 16, v20, 0, 0, v18, &off_100223858);
  }
}

uint64_t sub_10008AB0C(char a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_10008C0CC;
  }

  else
  {
    *(v4 + 682) = a1 & 1;
    v5 = sub_10008AC38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008AC38(uint64_t a1)
{
  v2 = *(v1 + 504);
  if (*(v1 + 682))
  {
    v3 = *(*(v1 + 568) + 40);
    *(v1 + 340) = v3;
    sub_10000DA7C((v2 + v3), *(v2 + v3 + 24));
    v4 = swift_task_alloc();
    *(v1 + 616) = v4;
    *v4 = v1;
    v4[1] = sub_10008B018;
    v5 = *(v1 + 440);

    return sub_100106118(v5);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v1 + 440);
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Re-engagement within cooldown for app %llu", v10, 0xCu);
    }

    sub_10005C97C();
    v11 = swift_allocError();
    *v12 = xmmword_1001BA5E0;
    *(v12 + 16) = 2;
    swift_willThrow();
    *(v1 + 664) = v11;
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v1 + 440);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 134218242;
      *(v16 + 4) = v15;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Register reengagement failed for app %llu with error: %@", v16, 0x16u);
      sub_10000DAF8(v17, &qword_100239F10, &qword_1001B4FD0);
    }

    v19 = *(v1 + 568);
    v20 = *(v1 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v11, (v1 + 16));

    sub_10000DA7C((v20 + *(v19 + 68)), *(v20 + *(v19 + 68) + 24));
    v21 = type metadata accessor for SnoutManager(0);
    v22 = swift_task_alloc();
    *(v1 + 672) = v22;
    *v22 = v1;
    v22[1] = sub_10008BCB8;
    v23 = *(v1 + 440);

    return (sub_10016E27C)(v1 + 16, v23, 0, 0, v21, &off_100223858);
  }
}

uint64_t sub_10008B018()
{
  v2 = *v1;
  v2[78] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008B2C0, 0, 0);
  }

  else
  {
    v3 = v2[70] != 0;
    v4 = swift_task_alloc();
    v2[79] = v4;
    *v4 = v2;
    v4[1] = sub_10008B1AC;
    v5 = v2[55];

    return sub_100090A78((v2 + 30), v5, v3);
  }
}

uint64_t sub_10008B1AC()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_10008C350;
  }

  else
  {
    v2 = sub_10008B544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008B2C0()
{
  v1 = *(v0 + 624);
  *(v0 + 664) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 440);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Register reengagement failed for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v9 + *(v8 + 68)), *(v9 + *(v8 + 68) + 24));
  v10 = type metadata accessor for SnoutManager(0);
  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_10008BCB8;
  v12 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_10008B544(uint64_t a1)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    v3 = *(v1 + 340);
    v4 = *(v1 + 568);
    v5 = *(v1 + 520);
    v6 = *(v1 + 504);
    v7 = *(v1 + 512);
    v62 = *(v1 + 339);
    v61 = *(v1 + 472);
    v60 = *(v1 + 464);
    v59 = *(v1 + 456);
    v58 = *(v1 + 560) != 0;
    *(v1 + 416) = *(v1 + 240);
    *(v1 + 432) = *(v1 + 256);
    v8 = *(v1 + 272);
    v9 = *(v1 + 288);
    v10 = *(v1 + 304);
    v11 = *(v1 + 320);
    *(v1 + 407) = *(v1 + 335);
    *(v1 + 376) = v10;
    *(v1 + 392) = v11;
    *(v1 + 344) = v8;
    *(v1 + 360) = v9;
    v12 = v4[7];
    v13 = (v6 + v4[6]);
    v14 = v13[1];
    v56 = v13[2];
    v57 = *v13;
    v53 = *(v6 + v12 + 8);
    v54 = *(v6 + v12 + 16);
    v55 = *(v6 + v12);
    v15 = (v6 + v4[8]);
    v52 = *v15;
    v50 = v15[1];
    v51 = v15[2];
    v16 = (v6 + v4[9]);
    v47 = v16[1];
    v48 = v16[2];
    v49 = *v16;
    sub_10000CE28(v6 + v3, v5 + 256);
    sub_10000CE28(v6 + v4[13], v5 + 296);
    v17 = v4[16];
    *(v1 + 412) = v17;
    v18 = *(v7 + 64);
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 16))(v5 + v18, v6 + v17, v19);
    sub_10000CE28(v6 + v4[17], v5 + *(v7 + 68));
    v20 = *(v1 + 432);
    *v5 = *(v1 + 416);
    *(v5 + 16) = v20;
    *(v5 + 24) = v2;
    *(v5 + 32) = *(v1 + 344);
    v21 = *(v1 + 360);
    v22 = *(v1 + 376);
    v23 = *(v1 + 392);
    *(v5 + 95) = *(v1 + 407);
    *(v5 + 64) = v22;
    *(v5 + 80) = v23;
    *(v5 + 48) = v21;
    *(v5 + 99) = 2;
    *(v5 + 104) = v59;
    *(v5 + 112) = v60;
    *(v5 + 120) = v58;
    *(v5 + 128) = v61;
    *(v5 + 136) = v62 & 1;
    *(v5 + 144) = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = v57;
    *(v5 + 168) = v14;
    *(v5 + 176) = v56;
    *(v5 + 184) = v55;
    *(v5 + 192) = v53;
    *(v5 + 200) = v54;
    *(v5 + 208) = v52;
    *(v5 + 216) = v50;
    *(v5 + 224) = v51;
    *(v5 + 232) = v49;
    *(v5 + 240) = v47;
    *(v5 + 248) = v48;

    v24 = v56;

    v25 = v54;

    v26 = v51;

    v27 = v48;
    v28 = swift_task_alloc();
    *(v1 + 648) = v28;
    *v28 = v1;
    v28[1] = sub_10008BB14;

    return sub_100072714();
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v1 + 440);
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v30, v31, "No non-allocated token found for app %llu", v33, 0xCu);
    }

    sub_10005C97C();
    v34 = swift_allocError();
    *v35 = xmmword_1001BA5F0;
    *(v35 + 16) = 2;
    swift_willThrow();
    *(v1 + 664) = v34;
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v1 + 440);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 134218242;
      *(v39 + 4) = v38;
      *(v39 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "Register reengagement failed for app %llu with error: %@", v39, 0x16u);
      sub_10000DAF8(v40, &qword_100239F10, &qword_1001B4FD0);
    }

    v42 = *(v1 + 568);
    v43 = *(v1 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v34, (v1 + 16));

    sub_10000DA7C((v43 + *(v42 + 68)), *(v43 + *(v42 + 68) + 24));
    v44 = type metadata accessor for SnoutManager(0);
    v45 = swift_task_alloc();
    *(v1 + 672) = v45;
    *v45 = v1;
    v45[1] = sub_10008BCB8;
    v46 = *(v1 + 440);

    return (sub_10016E27C)(v1 + 16, v46, 0, 0, v44, &off_100223858);
  }
}

uint64_t sub_10008BB14()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_10008C5D4;
  }

  else
  {
    v2 = sub_10008BC28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008BC28()
{
  sub_1000988DC(*(v0 + 520), type metadata accessor for RegisterConversionTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008BCB8()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10008BDBC, 0, 0);
}

uint64_t sub_10008BDBC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10008BE48()
{
  v1 = *(v0 + 592);
  *(v0 + 664) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 440);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Register reengagement failed for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v9 + *(v8 + 68)), *(v9 + *(v8 + 68) + 24));
  v10 = type metadata accessor for SnoutManager(0);
  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_10008BCB8;
  v12 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_10008C0CC()
{
  v1 = *(v0 + 608);
  *(v0 + 664) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 440);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Register reengagement failed for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v9 + *(v8 + 68)), *(v9 + *(v8 + 68) + 24));
  v10 = type metadata accessor for SnoutManager(0);
  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_10008BCB8;
  v12 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_10008C350()
{
  v1 = *(v0 + 640);
  *(v0 + 664) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 440);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Register reengagement failed for app %llu with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v9 + *(v8 + 68)), *(v9 + *(v8 + 68) + 24));
  v10 = type metadata accessor for SnoutManager(0);
  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_10008BCB8;
  v12 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v12, 0, 0, v10, &off_100223858);
}

uint64_t sub_10008C5D4()
{
  sub_1000988DC(v0[65], type metadata accessor for RegisterConversionTask);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[55];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to register re-engagement for app %llu with error: %@", v4, 0x16u);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008C77C()
{
  v1[152] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[153] = v2;
  v1[154] = *(v2 - 8);
  v1[155] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[156] = v3;
  v4 = *(v3 - 8);
  v1[157] = v4;
  v1[158] = *(v4 + 64);
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();

  return _swift_task_switch(sub_10008C8AC, 0, 0);
}

uint64_t sub_10008C8AC()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 1288) = v1;
  *(v0 + 1420) = *(v1 + 64);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing scheduled token fetch for re-engagement", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 1296) = v5;
  *v5 = v0;
  v5[1] = sub_10008C9E0;

  return sub_100158594(12);
}

uint64_t sub_10008C9E0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 1200) = a2;
  *(v3 + 1192) = a1;
  *(v3 + 1184) = v2;
  *(v3 + 1436) = a2;

  return _swift_task_switch(sub_10008CAEC, 0, 0);
}

uint64_t sub_10008CAEC()
{
  v90 = v0;
  if (*(v0 + 1436))
  {
    v1 = 0.0004;
  }

  else
  {
    v2 = *(v0 + 1192);
    v1 = 0.0004;
    if (v2 >= 0.0004)
    {
      v1 = fmin(v2, 0.2);
    }
  }

  v3 = sub_1000124D8(0x20000000000001uLL);
  if (v3 == 0x20000000000000)
  {
    if (v1 <= 1.0)
    {
LABEL_7:
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Skipping scheduled re-engagement token fetch", v6, 2u);
      }

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else if (vcvtd_n_f64_u64(v3, 0x35uLL) >= v1)
  {
    goto LABEL_7;
  }

  v9 = [objc_opt_self() enumeratorWithOptions:128];
  *(v0 + 848) = &type metadata for LaunchServicesRecordEnumerator;
  *(v0 + 856) = &off_100219F58;
  *(v0 + 824) = v9;
  v10 = *sub_10000DA7C((v0 + 824), &type metadata for LaunchServicesRecordEnumerator);
  *(v0 + 720) = sub_100089AF4;
  *(v0 + 728) = 0;
  *(v0 + 688) = _NSConcreteStackBlock;
  *(v0 + 696) = 1107296256;
  *(v0 + 704) = sub_100089B28;
  *(v0 + 712) = &unk_10021B2C0;
  v11 = _Block_copy((v0 + 688));

  [v10 setFilter:v11];
  _Block_release(v11);
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 736) = 0u;
  v12 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
  if (v12)
  {
    v13 = v12;
    *(v0 + 928) = sub_10006DF54();
    *(v0 + 936) = &off_10021F840;
    *(v0 + 904) = v13;
    sub_10000DA64((v0 + 904), v0 + 864);
    sub_10000CE28(v0 + 864, v0 + 1144);
    sub_10000CE28(v0 + 864, v0 + 1104);
    sub_10000CE28(v0 + 864, v0 + 1064);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v16 = 136315650;
      sub_10000DA7C((v0 + 1144), *(v0 + 1168));
      v17 = sub_1000FF2FC();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1701736302;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1144));
      v21 = sub_10017AD04(v19, v20, v89);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2048;
      sub_10000DA7C((v0 + 1104), *(v0 + 1128));
      v22 = sub_1000FF2AC();
      sub_10000DB58((v0 + 1104));
      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      sub_10000DA7C((v0 + 1064), *(v0 + 1088));
      v23 = sub_1000FF364();
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 1701736302;
      }

      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1064));
      v27 = sub_10017AD04(v25, v26, v89);

      *(v16 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10000DB58((v0 + 1104));

      sub_10000DB58((v0 + 1144));
      sub_10000DB58((v0 + 1064));
    }

    v32 = *(v0 + 888);
    v33 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v32);
    v34 = (*(v33 + 16))(v32, v33);
    v35 = swift_task_alloc();
    *(v0 + 1304) = v35;
    *v35 = v0;
    v35[1] = sub_10008D74C;

    return sub_100091A48(v34, 1);
  }

  else if (*(v0 + 760))
  {
    sub_10000CE28(v0 + 736, v0 + 984);
    sub_10000DA64((v0 + 984), v0 + 944);
    sub_10000DA64((v0 + 944), v0 + 784);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    v28 = *(v0 + 808);
    v29 = *(v0 + 816);
    sub_10000DA7C((v0 + 784), v28);
    v30 = (*(v29 + 16))(v28, v29);
    v31 = swift_task_alloc();
    *(v0 + 1360) = v31;
    *v31 = v0;
    v31[1] = sub_10008F718;

    return sub_100092994(v30, 1, 1);
  }

  else
  {
    sub_10005C97C();
    v36 = swift_allocError();
    *v37 = xmmword_1001BA600;
    *(v37 + 16) = 2;
    swift_willThrow();
    *(v0 + 1368) = v36;
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Scheduled re-engagement token fetch has failed with error: %@", v40, 0xCu);
      sub_10000DAF8(v41, &qword_100239F10, &qword_1001B4FD0);
    }

    v85 = (v0 + 1409);
    v86 = (v0 + 1425);
    v43 = *(v0 + 1272);
    v80 = (v0 + 1430);
    v81 = (v0 + 1401);
    v82 = (v0 + 1414);
    v83 = (v0 + 1393);
    v44 = *(v0 + 1256);
    v84 = (v0 + 1385);
    v45 = *(v0 + 1248);
    v46 = *(v0 + 1240);
    v47 = *(v0 + 1232);
    v48 = *(v0 + 1224);
    v87 = *(v0 + 1216);
    v88 = *(v0 + 1288);

    swift_errorRetain();
    v49 = sub_1000C7C10(v36);
    v78 = v50;
    v79 = v49;
    v76 = v52;
    v77 = v51;
    static Date.now.getter();
    (*(v47 + 104))(v46, enum case for Calendar.Component.hour(_:), v48);
    v53 = sub_100025808(v43, v46);
    v55 = v54;
    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v43, v45);
    if (v55)
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    v57 = [objc_opt_self() buildVersion];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    *(v0 + 1408) = 1;
    *(v0 + 1400) = 1;
    *(v0 + 1424) = 1;
    *(v0 + 1384) = 1;
    *(v0 + 1392) = 1;
    *(v0 + 464) = 1287;
    *(v0 + 466) = *v80;
    *(v0 + 470) = *(v0 + 1434);
    *(v0 + 472) = v79;
    *(v0 + 480) = v78;
    *(v0 + 488) = v77;
    *(v0 + 496) = v76;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v56;
    *(v0 + 528) = v58;
    *(v0 + 536) = v60;
    *(v0 + 544) = 0;
    *(v0 + 549) = 2;
    *(v0 + 545) = 33686018;
    *(v0 + 552) = 0;
    v61 = *(v0 + 1408);
    *(v0 + 560) = v61;
    *(v0 + 561) = *v81;
    *(v0 + 564) = *(v0 + 1404);
    *(v0 + 568) = 0;
    v62 = *(v0 + 1400);
    *(v0 + 576) = v62;
    *(v0 + 577) = 1;
    *(v0 + 578) = *v82;
    *(v0 + 582) = *(v0 + 1418);
    *(v0 + 584) = 0;
    v63 = *(v0 + 1424);
    *(v0 + 592) = v63;
    *(v0 + 596) = *(v0 + 1396);
    *(v0 + 593) = *v83;
    *(v0 + 600) = 0;
    v64 = *(v0 + 1384);
    *(v0 + 608) = v64;
    *(v0 + 609) = 769;
    *(v0 + 615) = *(v0 + 1413);
    *(v0 + 611) = *v85;
    *(v0 + 616) = 0;
    v65 = *(v0 + 1392);
    *(v0 + 624) = v65;
    LODWORD(v57) = *v84;
    *(v0 + 628) = *(v0 + 1388);
    *(v0 + 625) = v57;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    v66 = *v86;
    *(v0 + 655) = *(v0 + 1429);
    *(v0 + 651) = v66;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 16) = 1287;
    v67 = *v80;
    *(v0 + 22) = *(v0 + 1434);
    *(v0 + 18) = v67;
    *(v0 + 24) = v79;
    *(v0 + 32) = v78;
    *(v0 + 40) = v77;
    *(v0 + 48) = v76;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v56;
    *(v0 + 80) = v58;
    *(v0 + 88) = v60;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v61;
    v68 = *v81;
    *(v0 + 116) = *(v0 + 1404);
    *(v0 + 113) = v68;
    *(v0 + 120) = 0;
    *(v0 + 128) = v62;
    *(v0 + 129) = 1;
    v69 = *v82;
    *(v0 + 134) = *(v0 + 1418);
    *(v0 + 130) = v69;
    *(v0 + 136) = 0;
    *(v0 + 144) = v63;
    v70 = *v83;
    *(v0 + 148) = *(v0 + 1396);
    *(v0 + 145) = v70;
    *(v0 + 152) = 0;
    *(v0 + 160) = v64;
    *(v0 + 161) = 769;
    v71 = *v85;
    *(v0 + 167) = *(v0 + 1413);
    *(v0 + 163) = v71;
    *(v0 + 168) = 0;
    *(v0 + 176) = v65;
    v72 = *v84;
    *(v0 + 180) = *(v0 + 1388);
    *(v0 + 177) = v72;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v73 = *v86;
    *(v0 + 207) = *(v0 + 1429);
    *(v0 + 203) = v73;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 464, v0 + 240);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v87 + *(v88 + 68)), *(v87 + *(v88 + 68) + 24));
    v74 = type metadata accessor for SnoutManager(0);
    v75 = swift_task_alloc();
    *(v0 + 1376) = v75;
    *v75 = v0;
    v75[1] = sub_10008F894;

    return (sub_10016E27C)(v0 + 464, 0, 0, 2, v74, &off_100223858);
  }
}