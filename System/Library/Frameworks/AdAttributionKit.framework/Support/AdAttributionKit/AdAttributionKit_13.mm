uint64_t sub_100141264()
{
  v2 = *v1;
  v2[780] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100142A10, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[781] = v3;
    *v3 = v2;
    v3[1] = sub_1001413D8;
    v4 = v2[716];

    return sub_100131D80(v4);
  }
}

uint64_t sub_1001413D8()
{
  *(*v1 + 6256) = v0;

  if (v0)
  {
    v2 = sub_100142DB0;
  }

  else
  {
    v2 = sub_1001414EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001414EC()
{
  v1 = *(v0 + 6224);
  v2 = *(v0 + 5776);
  v12 = *(v0 + 6208);
  v13 = *(v0 + 6192);
  sub_10000DA7C((*(v0 + 5760) + 560), *(*(v0 + 5760) + 584));
  *(v0 + 1248) = v12;
  *(v0 + 1232) = v13;
  *(v0 + 1264) = v1;
  v3 = *(v0 + 4248);
  *(v0 + 1400) = *(v0 + 4232);
  *(v0 + 1416) = v3;
  *(v0 + 1432) = *(v0 + 4264);
  *(v0 + 1448) = *(v0 + 4280);
  v4 = *(v0 + 4184);
  *(v0 + 1336) = *(v0 + 4168);
  *(v0 + 1352) = v4;
  v5 = *(v0 + 4216);
  *(v0 + 1368) = *(v0 + 4200);
  *(v0 + 1384) = v5;
  v6 = *(v0 + 4120);
  *(v0 + 1272) = *(v0 + 4104);
  *(v0 + 1288) = v6;
  v7 = *(v0 + 4152);
  *(v0 + 1304) = *(v0 + 4136);
  *(v0 + 1320) = v7;
  v8 = type metadata accessor for SnoutManager(0);
  v9 = swift_task_alloc();
  *(v0 + 6264) = v9;
  *v9 = v0;
  v9[1] = sub_1001416B4;
  v10 = *(v0 + 5768);

  return (sub_10016E27C)(v0 + 1232, v10, v2, 1, v8, &off_100223858);
}

uint64_t sub_1001416B4()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 1232);

  return _swift_task_switch(sub_1001417B8, 0, 0);
}

uint64_t sub_1001417B8()
{
  sub_10000DA7C((v0[720] + 520), *(v0[720] + 544));
  v1 = swift_task_alloc();
  v0[784] = v1;
  *v1 = v0;
  v1[1] = sub_10014187C;
  v2 = v0[769];
  v3 = v0[768];
  v4 = v0[767];
  v5 = v0[766];
  v6 = v0[722];
  v7 = v0[721];
  v8 = v0[718];
  v9 = v0[717];

  return sub_1000D5974(v7, v6, v9, v8, v3, v2, v5, v4);
}

uint64_t sub_10014187C()
{
  *(*v1 + 6280) = v0;

  if (v0)
  {
    v2 = sub_100141A70;
  }

  else
  {

    v2 = sub_1001419C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001419C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100141A70()
{
  v1 = v0[730];
  v2 = v0[727];
  v3 = v0[726];

  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to report conversion: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[727] + 8))(v0[730], v0[726]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100141C90()
{
  v1 = *(v0 + 6288);
  v2 = *(v0 + 5864);
  v3 = *(v0 + 5856);
  v4 = *(v0 + 5848);
  v5 = *(v0 + 5776);
  v6 = *(v0 + 5768);
  v7 = *(v0 + 3200);
  *(v0 + 920) = *(v0 + 3184);
  *(v0 + 936) = v7;
  v8 = *(v0 + 3232);
  *(v0 + 952) = *(v0 + 3216);
  *(v0 + 968) = v8;
  v9 = *(v0 + 3136);
  *(v0 + 856) = *(v0 + 3120);
  *(v0 + 872) = v9;
  v10 = *(v0 + 3168);
  *(v0 + 888) = *(v0 + 3152);
  *(v0 + 904) = v10;
  v11 = *(v0 + 3072);
  *(v0 + 792) = *(v0 + 3056);
  *(v0 + 808) = v11;
  v12 = *(v0 + 3104);
  *(v0 + 824) = *(v0 + 3088);
  *(v0 + 840) = v12;
  v13 = *(v0 + 3040);
  *(v0 + 760) = *(v0 + 3024);
  *(v0 + 776) = v13;
  *(v0 + 984) = v6;
  *(v0 + 992) = v5;
  *(v0 + 1000) = 257;
  sub_1000E191C(v0 + 760);
  v14 = *(v0 + 968);
  *(v0 + 704) = *(v0 + 952);
  *(v0 + 720) = v14;
  *(v0 + 736) = *(v0 + 984);
  *(v0 + 752) = *(v0 + 1000);
  v15 = *(v0 + 904);
  *(v0 + 640) = *(v0 + 888);
  *(v0 + 656) = v15;
  v16 = *(v0 + 936);
  *(v0 + 672) = *(v0 + 920);
  *(v0 + 688) = v16;
  v17 = *(v0 + 840);
  *(v0 + 576) = *(v0 + 824);
  *(v0 + 592) = v17;
  v18 = *(v0 + 872);
  *(v0 + 608) = *(v0 + 856);
  *(v0 + 624) = v18;
  v19 = *(v0 + 776);
  *(v0 + 512) = *(v0 + 760);
  *(v0 + 528) = v19;
  v20 = *(v0 + 808);
  *(v0 + 544) = *(v0 + 792);
  *(v0 + 560) = v20;

  sub_100010568(v0 + 3024, v0 + 2800);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  *(v0 + 5704) = v1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10014C558();
  v21 = swift_dynamicCast();
  v22 = v21;
  if (v21)
  {
    v23 = *(v0 + 5712);
    v45 = *(v0 + 3072);
    v46 = *(v0 + 3064);

    v24 = [v23 domain];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v26;
    v44 = v25;

    v42 = [v23 code];
  }

  else
  {
    v45 = *(v0 + 3072);
    v46 = *(v0 + 3064);

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v23 = 0;
  }

  *(v0 + 6304) = v23;
  v27 = *(v0 + 3144);
  v28 = *(v0 + 3137);
  v29 = *(v0 + 3107);
  v30 = *(v0 + 3104);
  v31 = *(v0 + 3024);
  v40 = *(v0 + 3209);
  v41 = *(v0 + 3109);
  v32 = *(v0 + 3224);
  v38 = *(v0 + 3232);
  v39 = *(v0 + 3216);
  v33 = *(v0 + 3240);
  *(v0 + 6440) = *(v0 + 3152);
  *(v0 + 6432) = v22 ^ 1;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v34 = swift_allocObject();
  *(v0 + 6312) = v34;
  *(v34 + 16) = xmmword_1001B93B0;
  *(v34 + 32) = v31;
  *(v34 + 40) = v46;
  *(v34 + 48) = v45;
  *(v34 + 56) = v30;
  *(v34 + 57) = v29;
  *(v34 + 58) = v28;
  *(v34 + 64) = v27;
  *(v34 + 72) = *(v0 + 6440);
  *(v34 + 73) = v41;
  *(v34 + 80) = v44;
  *(v34 + 88) = v43;
  *(v34 + 96) = v42;
  *(v34 + 104) = *(v0 + 6432);
  *(v34 + 105) = v40;
  *(v34 + 112) = v39;
  *(v34 + 120) = v32;
  *(v34 + 128) = v38;
  *(v34 + 136) = v33;

  v35 = swift_task_alloc();
  *(v0 + 6320) = v35;
  *v35 = v0;
  v35[1] = sub_10014202C;
  v36 = *(v0 + 5784);

  return sub_10016D920(v34, v36);
}

uint64_t sub_10014202C()
{
  v1 = *(*v0 + 6296);

  return _swift_task_switch(sub_100142158, v1, 0);
}

uint64_t sub_100142158()
{

  sub_10003AE8C(v0 + 3024);

  return _swift_task_switch(sub_1001421D4, 0, 0);
}

uint64_t sub_1001421D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100142288(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 6032);
  *(v1 + 6288) = v2;
  v3 = *(v1 + 5832);
  v4 = *(v1 + 5816);
  v5 = *(v1 + 5808);
  v6 = *(v1 + 5728);
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  sub_100070EEC(v6, v1 + 4472);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10003BC20(v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 5832);
  v12 = *(v1 + 5816);
  v13 = *(v1 + 5808);
  if (v10)
  {
    v36 = *(v1 + 5832);
    v14 = *(v1 + 5728);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_10017AD04(*(v14 + 56), *(v14 + 64), &v37);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetch postback failed for conversion ID: %s, error: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v12 + 8))(v36, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = *(v1 + 5976);
  v20 = *(v1 + 5760);
  v21 = sub_1000C7C10(v2);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = sub_10000DA7C((v20 + 560), *(v20 + 584));
  *(v1 + 3024) = v19;
  *(v1 + 3032) = v21;
  *(v1 + 3040) = v23;
  *(v1 + 3048) = v25;
  *(v1 + 3056) = v27;
  v29 = *(v1 + 4432);
  *(v1 + 3192) = *(v1 + 4416);
  *(v1 + 3208) = v29;
  *(v1 + 3224) = *(v1 + 4448);
  *(v1 + 3240) = *(v1 + 4464);
  v30 = *(v1 + 4368);
  *(v1 + 3128) = *(v1 + 4352);
  *(v1 + 3144) = v30;
  v31 = *(v1 + 4400);
  *(v1 + 3160) = *(v1 + 4384);
  *(v1 + 3176) = v31;
  v32 = *(v1 + 4304);
  *(v1 + 3064) = *(v1 + 4288);
  *(v1 + 3080) = v32;
  v33 = *(v1 + 4336);
  *(v1 + 3096) = *(v1 + 4320);
  *(v1 + 3112) = v33;
  v34 = *v28;
  *(v1 + 6296) = *v28;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v34, 0);
}

uint64_t sub_100142564(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 6064);
  *(v1 + 6288) = v2;
  v3 = *(v1 + 5832);
  v4 = *(v1 + 5816);
  v5 = *(v1 + 5808);
  v6 = *(v1 + 5728);
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  sub_100070EEC(v6, v1 + 4472);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10003BC20(v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 5832);
  v12 = *(v1 + 5816);
  v13 = *(v1 + 5808);
  if (v10)
  {
    v36 = *(v1 + 5832);
    v14 = *(v1 + 5728);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_10017AD04(*(v14 + 56), *(v14 + 64), &v37);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetch postback failed for conversion ID: %s, error: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v12 + 8))(v36, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = *(v1 + 5976);
  v20 = *(v1 + 5760);
  v21 = sub_1000C7C10(v2);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = sub_10000DA7C((v20 + 560), *(v20 + 584));
  *(v1 + 3024) = v19;
  *(v1 + 3032) = v21;
  *(v1 + 3040) = v23;
  *(v1 + 3048) = v25;
  *(v1 + 3056) = v27;
  v29 = *(v1 + 4432);
  *(v1 + 3192) = *(v1 + 4416);
  *(v1 + 3208) = v29;
  *(v1 + 3224) = *(v1 + 4448);
  *(v1 + 3240) = *(v1 + 4464);
  v30 = *(v1 + 4368);
  *(v1 + 3128) = *(v1 + 4352);
  *(v1 + 3144) = v30;
  v31 = *(v1 + 4400);
  *(v1 + 3160) = *(v1 + 4384);
  *(v1 + 3176) = v31;
  v32 = *(v1 + 4304);
  *(v1 + 3064) = *(v1 + 4288);
  *(v1 + 3080) = v32;
  v33 = *(v1 + 4336);
  *(v1 + 3096) = *(v1 + 4320);
  *(v1 + 3112) = v33;
  v34 = *v28;
  *(v1 + 6296) = *v28;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v34, 0);
}

uint64_t sub_100142840()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 2576);

  return _swift_task_switch(sub_100142944, 0, 0);
}

uint64_t sub_100142944()
{

  sub_10000DA7C((v0[720] + 520), *(v0[720] + 544));
  v1 = swift_task_alloc();
  v0[784] = v1;
  *v1 = v0;
  v1[1] = sub_10014187C;
  v2 = v0[769];
  v3 = v0[768];
  v4 = v0[767];
  v5 = v0[766];
  v6 = v0[722];
  v7 = v0[721];
  v8 = v0[718];
  v9 = v0[717];

  return sub_1000D5974(v7, v6, v9, v8, v3, v2, v5, v4);
}

uint64_t sub_100142A10(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 6240);
  *(v1 + 6328) = v2;
  v3 = *(v1 + 5824);
  v4 = *(v1 + 5816);
  v5 = *(v1 + 5808);
  v6 = *(v1 + 5728);
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  sub_100070EEC(v6, v1 + 4616);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10003BC20(v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 5824);
  v12 = *(v1 + 5816);
  v13 = *(v1 + 5808);
  if (v10)
  {
    v14 = *(v1 + 5728);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v11;
    v39 = swift_slowAlloc();
    v17 = v39;
    *v15 = 136315394;
    *(v15 + 4) = sub_10017AD04(*(v14 + 56), *(v14 + 64), &v39);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Postback finalization failed for conversion ID: %s, error: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v12 + 8))(v38, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = *(v1 + 6192);
  v37 = *(v1 + 5776);
  v20 = *(v1 + 5760);
  v21 = sub_1000C7C10(v2);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10000DA7C((v20 + 560), *(v20 + 584));
  *(v1 + 2576) = v19;
  *(v1 + 2584) = v21;
  *(v1 + 2592) = v23;
  *(v1 + 2600) = v25;
  *(v1 + 2608) = v27;
  v28 = *(v1 + 4248);
  *(v1 + 2744) = *(v1 + 4232);
  *(v1 + 2760) = v28;
  *(v1 + 2776) = *(v1 + 4264);
  *(v1 + 2792) = *(v1 + 4280);
  v29 = *(v1 + 4184);
  *(v1 + 2680) = *(v1 + 4168);
  *(v1 + 2696) = v29;
  v30 = *(v1 + 4216);
  *(v1 + 2712) = *(v1 + 4200);
  *(v1 + 2728) = v30;
  v31 = *(v1 + 4120);
  *(v1 + 2616) = *(v1 + 4104);
  *(v1 + 2632) = v31;
  v32 = *(v1 + 4152);
  *(v1 + 2648) = *(v1 + 4136);
  *(v1 + 2664) = v32;
  v33 = type metadata accessor for SnoutManager(0);
  v34 = swift_task_alloc();
  *(v1 + 6336) = v34;
  *v34 = v1;
  v34[1] = sub_100142840;
  v35 = *(v1 + 5768);

  return (sub_10016E27C)(v1 + 2576, v35, v37, 1, v33, &off_100223858);
}

uint64_t sub_100142DB0(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 6256);
  *(v1 + 6328) = v2;
  v3 = *(v1 + 5824);
  v4 = *(v1 + 5816);
  v5 = *(v1 + 5808);
  v6 = *(v1 + 5728);
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  sub_100070EEC(v6, v1 + 4616);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10003BC20(v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 5824);
  v12 = *(v1 + 5816);
  v13 = *(v1 + 5808);
  if (v10)
  {
    v14 = *(v1 + 5728);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v11;
    v39 = swift_slowAlloc();
    v17 = v39;
    *v15 = 136315394;
    *(v15 + 4) = sub_10017AD04(*(v14 + 56), *(v14 + 64), &v39);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Postback finalization failed for conversion ID: %s, error: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v12 + 8))(v38, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = *(v1 + 6192);
  v37 = *(v1 + 5776);
  v20 = *(v1 + 5760);
  v21 = sub_1000C7C10(v2);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10000DA7C((v20 + 560), *(v20 + 584));
  *(v1 + 2576) = v19;
  *(v1 + 2584) = v21;
  *(v1 + 2592) = v23;
  *(v1 + 2600) = v25;
  *(v1 + 2608) = v27;
  v28 = *(v1 + 4248);
  *(v1 + 2744) = *(v1 + 4232);
  *(v1 + 2760) = v28;
  *(v1 + 2776) = *(v1 + 4264);
  *(v1 + 2792) = *(v1 + 4280);
  v29 = *(v1 + 4184);
  *(v1 + 2680) = *(v1 + 4168);
  *(v1 + 2696) = v29;
  v30 = *(v1 + 4216);
  *(v1 + 2712) = *(v1 + 4200);
  *(v1 + 2728) = v30;
  v31 = *(v1 + 4120);
  *(v1 + 2616) = *(v1 + 4104);
  *(v1 + 2632) = v31;
  v32 = *(v1 + 4152);
  *(v1 + 2648) = *(v1 + 4136);
  *(v1 + 2664) = v32;
  v33 = type metadata accessor for SnoutManager(0);
  v34 = swift_task_alloc();
  *(v1 + 6336) = v34;
  *v34 = v1;
  v34[1] = sub_100142840;
  v35 = *(v1 + 5768);

  return (sub_10016E27C)(v1 + 2576, v35, v37, 1, v33, &off_100223858);
}

uint64_t sub_100143150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[105] = v6;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  v7[101] = a3;
  v7[100] = a2;
  v7[99] = a1;
  v8 = type metadata accessor for Logger();
  v7[106] = v8;
  v7[107] = *(v8 - 8);
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  v7[111] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v7[112] = v9;
  v7[113] = *(v9 - 8);
  v7[114] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v7[115] = v10;
  v7[116] = *(v10 - 8);
  v7[117] = swift_task_alloc();
  sub_10000CDE0(&qword_10023D840, &qword_1001C19D8);
  v7[118] = swift_task_alloc();
  v7[119] = swift_task_alloc();

  return _swift_task_switch(sub_100143348, 0, 0);
}

uint64_t sub_100143348()
{
  v1 = *(*(v0 + 792) + 16);
  *(v0 + 960) = v1;
  if (v1)
  {
    v2 = 0;
    v118 = (v0 + 688);
    v120 = (v0 + 1033);
    v121 = (v0 + 1025);
    v122 = (v0 + 1041);
    v123 = (v0 + 1076);
    v124 = (v0 + 1082);
    v126 = (v0 + 1049);
    v125 = (v0 + 1094);
    v3 = _swiftEmptyArrayStorage;
    *(v0 + 1060) = enum case for Calendar.Component.hour(_:);
    while (1)
    {
      *(v0 + 976) = v3;
      *(v0 + 968) = v2;
      v4 = *(*(v0 + 792) + 32 * v2 + 56);
      if (*(*(v0 + 824) + 16))
      {
        v5 = sub_1000C3CA8(v4);
        if (v6)
        {
          break;
        }
      }

      if (*(*(v0 + 832) + 16) && (v7 = sub_1000C3CA8(v4), (v8 & 1) != 0))
      {
        v9 = *(*(v0 + 832) + 56) + 224 * v7;
        v10 = *(v9 + 32);
        v139 = *(v9 + 24);
        v11 = *(v9 + 184);
        if (*(v9 + 8))
        {
          v12 = 1;
        }

        else
        {
          v12 = 4;
        }

        if (!*(v9 + 136))
        {
          v12 = 0;
        }

        v137 = v12;
        if (v11)
        {
          v13 = *(v9 + 176);

          v14._countAndFlagsBits = v13;
          v14._object = v11;
          v15 = _findStringSwitchCase(cases:string:)(&off_1002168B0, v14);

          if (v15 == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          if (v15)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {

          v17 = 2;
        }

        v25 = String.lowercased()();
        v26 = _findStringSwitchCase(cases:string:)(&off_100213600, v25);

        if (v26 >= 4)
        {
          LOBYTE(v26) = 0;
        }

        sub_1000183C0();
        swift_allocError();
        *v27 = v26;
        v28 = _convertErrorToNSError(_:)();

        v29 = [v28 domain];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = [v28 code];
        *(v0 + 1088) = 1;
        *(v0 + 1024) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100089644(0, *(v3 + 2) + 1, 1, v3);
        }

        v35 = *(v3 + 2);
        v34 = *(v3 + 3);
        if (v35 >= v34 >> 1)
        {
          v3 = sub_100089644((v34 > 1), v35 + 1, 1, v3);
        }

        *(v3 + 2) = v35 + 1;
        v36 = &v3[112 * v35];
        *(v36 + 16) = 256;
        v37 = *(v0 + 1054);
        *(v36 + 19) = *(v0 + 1058);
        *(v36 + 34) = v37;
        *(v36 + 5) = v139;
        *(v36 + 6) = v10;
        v36[56] = v137;
        v36[57] = v17;
        v36[58] = 3;
        v38 = *(v0 + 1065);
        v36[63] = *(v0 + 1069);
        *(v36 + 59) = v38;
        *(v36 + 8) = 0;
        v36[72] = *(v0 + 1088);
        v36[73] = 2;
        v39 = *(v0 + 1070);
        *(v36 + 39) = *(v0 + 1074);
        *(v36 + 74) = v39;
        *(v36 + 10) = v30;
        *(v36 + 11) = v32;
        *(v36 + 12) = v33;
        v36[104] = *(v0 + 1024);
        *(v36 + 105) = 514;
        v40 = *(v0 + 1089);
        v36[111] = *(v0 + 1093);
        *(v36 + 107) = v40;
        *(v36 + 7) = 0u;
        *(v36 + 8) = 0u;
      }

      else
      {
        v18 = *(v0 + 888);
        v19 = *(v0 + 856);
        v20 = *(v0 + 848);

        v21 = Logger.postback.unsafeMutableAddressor();
        (*(v19 + 16))(v18, v21, v20);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;

          *(v24 + 4) = v4;

          _os_log_impl(&_mh_execute_header, v22, v23, "Could not find impression with ordering index: %ld in AAK or SKAN maps", v24, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v0 + 856) + 8))(*(v0 + 888), *(v0 + 848));
      }

      v2 = *(v0 + 968) + 1;
      if (v2 == *(v0 + 960))
      {
        goto LABEL_33;
      }
    }

    v52 = *(v0 + 952);
    v53 = *(*(v0 + 824) + 56) + (v5 << 6);
    v54 = *(v53 + 8);
    v132 = *v53;
    v135 = *(v0 + 944);
    v138 = *(v53 + 16);
    v55 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v140 = *(v55 - 8);
    v128 = *(v140 + 56);
    v128(v52, 1, 1, v55);
    v56 = type metadata accessor for AppImpressionPayload(0);
    v130 = sub_10003AFB8();
    v57 = sub_10003B00C();
    v58 = sub_10014CA00(&qword_10023A808, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
    v59 = sub_10014CA00(&qword_10023A810, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);

    v60 = v132;
    v133 = v56;
    JWS.init(compactJWS:)(v60, v54, v56, v130, v57, v58, v59, v135);
    v68 = *(v0 + 952);
    v69 = *(v0 + 944);
    v128(v69, 0, 1, v55);
    sub_10014CA48(v69, v68);
    *(v0 + 984) = 0;
    v70 = String.lowercased()();
    v71 = _findStringSwitchCase(cases:string:)(&off_100213600, v70);

    if (v71 >= 4)
    {
      v72 = 0;
    }

    else
    {
      v72 = v71;
    }

    v73 = *(v0 + 952);
    sub_1000183C0();
    v74 = swift_allocError();
    *v75 = v72;
    v76 = *(v140 + 48);
    v77 = v76(v73, 1, v55);
    v78 = 0;
    v141 = 0;
    v79 = *(v0 + 952);
    if (!v77)
    {
      v80 = (v79 + *(v133 + 40) + *(v55 + 68));
      v78 = *v80;
      v141 = v80[1];
    }

    if (v76(v79, 1, v55))
    {
      v81 = 2;
    }

    else
    {
      v81 = *(v79 + *(v55 + 68) + *(v133 + 44));
    }

    v116 = v81;
    *(v0 + 784) = v74;
    swift_errorRetain();
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
    v136 = v78;
    if (swift_dynamicCast())
    {
      sub_10000DA64(v118, v0 + 728);
      v82 = *(v0 + 752);
      sub_10000DA7C((v0 + 728), v82);
      v83 = sub_10009DB48(v82);
      v129 = v84;
      v131 = v83;
      v117 = v86;
      v119 = v85;
      sub_10000DB58((v0 + 728));
    }

    else
    {
      *(v0 + 720) = 0;
      *v118 = 0u;
      *(v0 + 704) = 0u;
      sub_10000DAF8(v118, &qword_10023AEC0, &unk_1001BCC00);
      v87 = _convertErrorToNSError(_:)();
      v88 = [v87 domain];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = v90;
      v131 = v89;

      *(v0 + 776) = [v87 code];
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v92;
      v119 = v91;
    }

    v93 = *(v0 + 1060);
    v94 = *(v0 + 936);
    v95 = *(v0 + 928);
    v96 = *(v0 + 920);
    v97 = *(v0 + 912);
    v98 = *(v0 + 904);
    v99 = *(v0 + 896);
    v127 = *(v0 + 840);
    v134 = *(v0 + 816);
    static Date.now.getter();
    (*(v98 + 104))(v97, v93, v99);
    v100 = sub_100025808(v94, v97);
    v102 = v101;
    (*(v98 + 8))(v97, v99);
    (*(v95 + 8))(v94, v96);
    if (v102)
    {
      v103 = 0;
    }

    else
    {
      v103 = v100;
    }

    v104 = [objc_opt_self() buildVersion];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    *(v0 + 466) = *v123;
    *(v0 + 561) = *v121;
    *(v0 + 578) = *v124;
    *(v0 + 596) = *(v0 + 1036);
    *(v0 + 593) = *v120;
    *(v0 + 611) = *v125;
    *(v0 + 625) = *v122;
    *(v0 + 651) = *v126;
    *(v0 + 340) = *(v0 + 1028);
    *(v0 + 337) = *v121;
    *(v0 + 354) = *v124;
    *(v0 + 372) = *(v0 + 1036);
    *(v0 + 369) = *v120;
    *(v0 + 609) = 770;
    *(v0 + 385) = 770;
    *(v0 + 387) = *v125;
    *(v0 + 404) = *(v0 + 1044);
    *(v0 + 401) = *v122;
    *(v0 + 427) = *v126;
    *(v0 + 1064) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1040) = 1;
    *(v0 + 1032) = 1;
    *(v0 + 470) = *(v0 + 1080);
    *(v0 + 564) = *(v0 + 1028);
    *(v0 + 582) = *(v0 + 1086);
    *(v0 + 615) = *(v0 + 1098);
    *(v0 + 628) = *(v0 + 1044);
    *(v0 + 464) = 256;
    *(v0 + 632) = 0u;
    *(v0 + 240) = 256;
    *(v0 + 655) = *(v0 + 1053);
    *(v0 + 246) = *(v0 + 1080);
    *(v0 + 242) = *v123;
    *(v0 + 248) = v131;
    *(v0 + 472) = v131;
    *(v0 + 480) = v129;
    *(v0 + 256) = v129;
    *(v0 + 264) = v119;
    *(v0 + 488) = v119;
    *(v0 + 496) = v117;
    *(v0 + 272) = v117;
    *(v0 + 280) = v136;
    *(v0 + 504) = v136;
    *(v0 + 512) = v141;
    *(v0 + 288) = v141;
    *(v0 + 296) = v103;
    *(v0 + 520) = v103;
    *(v0 + 528) = v105;
    *(v0 + 304) = v105;
    *(v0 + 312) = v107;
    *(v0 + 536) = v107;
    *(v0 + 544) = 512;
    *(v0 + 320) = 512;
    *(v0 + 546) = v116;
    *(v0 + 322) = v116;
    *(v0 + 547) = v138;
    *(v0 + 323) = v138;
    v108 = *(v0 + 1064);
    *(v0 + 560) = v108;
    *(v0 + 336) = v108;
    v109 = *(v0 + 1048);
    *(v0 + 576) = v109;
    *(v0 + 352) = v109;
    *(v0 + 577) = 3;
    *(v0 + 353) = 3;
    *(v0 + 358) = *(v0 + 1086);
    v110 = *(v0 + 1104);
    *(v0 + 592) = v110;
    *(v0 + 368) = v110;
    v111 = *(v0 + 1040);
    *(v0 + 608) = v111;
    *(v0 + 384) = v111;
    *(v0 + 391) = *(v0 + 1098);
    v112 = *(v0 + 1032);
    *(v0 + 624) = v112;
    *(v0 + 400) = v112;
    *(v0 + 548) = 514;
    *(v0 + 648) = 514;
    *(v0 + 324) = 514;
    *(v0 + 424) = 514;
    *(v0 + 650) = 2;
    *(v0 + 426) = 2;
    *(v0 + 431) = *(v0 + 1053);
    *(v0 + 552) = 0;
    *(v0 + 568) = 0;
    *(v0 + 584) = 0;
    *(v0 + 600) = 0;
    *(v0 + 616) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 328) = 0;
    *(v0 + 344) = 0;
    *(v0 + 360) = 0;
    *(v0 + 376) = 0;
    *(v0 + 392) = 0;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 464, v0 + 16);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v127 + 560), *(v127 + 584));
    v113 = type metadata accessor for SnoutManager(0);
    v114 = swift_task_alloc();
    *(v0 + 992) = v114;
    *v114 = v0;
    v114[1] = sub_10014455C;
    v115 = *(v0 + 808);

    return (sub_10016E27C)(v0 + 464, v115, v134, 1, v113, &off_100223858);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_33:
    if (*(v3 + 2))
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      *(v0 + 768) = v3;
      sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
      sub_10014C928();
      v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v63 = v62;

      *(v0 + 1000) = v63;
      *(v0 + 1008) = v61;
      v64 = swift_task_alloc();
      *(v0 + 1016) = v64;
      *v64 = v0;
      v64[1] = sub_10014589C;
      v65 = *(v0 + 800);

      return sub_1001553C8(v61, v63, v65);
    }

    else
    {
      v41 = *(v0 + 880);
      v42 = *(v0 + 856);
      v43 = *(v0 + 848);

      v44 = Logger.postback.unsafeMutableAddressor();
      (*(v42 + 16))(v41, v44, v43);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 880);
      v49 = *(v0 + 856);
      v50 = *(v0 + 848);
      if (v47)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Received no skan impression errors", v51, 2u);
      }

      (*(v49 + 8))(v48, v50);

      v67 = *(v0 + 8);

      return v67();
    }
  }
}

uint64_t sub_10014455C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100144660, 0, 0);
}

uint64_t sub_100144660()
{
  sub_10000DAF8(*(v0 + 952), &qword_10023D840, &qword_1001C19D8);
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968) + 1;
  if (v3 == *(v0 + 960))
  {
LABEL_2:
    if (!*(v2 + 2))
    {
      v51 = *(v0 + 880);
      v52 = *(v0 + 856);
      v53 = *(v0 + 848);

      v54 = Logger.postback.unsafeMutableAddressor();
      (*(v52 + 16))(v51, v54, v53);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 880);
      v59 = *(v0 + 856);
      v60 = *(v0 + 848);
      if (v57)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Received no skan impression errors", v61, 2u);
      }

      (*(v59 + 8))(v58, v60);
      goto LABEL_48;
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 768) = v2;
    sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
    sub_10014C928();
    v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v1)
    {
      v6 = *(v0 + 864);
      v7 = *(v0 + 856);
      v8 = *(v0 + 848);

      v9 = Logger.postback.unsafeMutableAddressor();
      (*(v7 + 16))(v6, v9, v8);
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 800);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 134218242;
        *(v13 + 4) = v12;
        *(v13 + 12) = 2112;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 14) = v15;
        *v14 = v15;
        _os_log_impl(&_mh_execute_header, v10, v11, "Encountered error while storing skanner events for app %llu with error: %@", v13, 0x16u);
        sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
      }

      else
      {
      }

      (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
LABEL_48:

      v89 = *(v0 + 8);

      return v89();
    }

    v84 = v4;
    v85 = v5;

    *(v0 + 1000) = v85;
    *(v0 + 1008) = v84;
    v86 = swift_task_alloc();
    *(v0 + 1016) = v86;
    *v86 = v0;
    v86[1] = sub_10014589C;
    v87 = *(v0 + 800);

    return sub_1001553C8(v84, v85, v87);
  }

  else
  {
    v156 = (v0 + 1033);
    v157 = (v0 + 1025);
    v158 = (v0 + 1041);
    v159 = (v0 + 1076);
    v160 = (v0 + 1082);
    v162 = (v0 + 1049);
    v161 = (v0 + 1094);
    while (1)
    {
      *(v0 + 976) = v2;
      *(v0 + 968) = v3;
      v16 = *(*(v0 + 792) + 32 * v3 + 56);
      if (*(*(v0 + 824) + 16))
      {
        v17 = sub_1000C3CA8(v16);
        if (v18)
        {
          break;
        }
      }

      if (*(*(v0 + 832) + 16) && (v19 = sub_1000C3CA8(v16), (v20 & 1) != 0))
      {
        v163 = v1;
        v28 = *(*(v0 + 832) + 56) + 224 * v19;
        v29 = *(v28 + 184);
        if (*(v28 + 8))
        {
          v30 = 1;
        }

        else
        {
          v30 = 4;
        }

        if (!*(v28 + 136))
        {
          v30 = 0;
        }

        v141 = *(v28 + 32);
        v142 = *(v28 + 24);
        v140 = v30;
        if (v29)
        {
          v31 = *(v28 + 176);

          v32._countAndFlagsBits = v31;
          v32._object = v29;
          v33 = _findStringSwitchCase(cases:string:)(&off_1002168B0, v32);

          if (v33 == 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          if (!v33)
          {
            v34 = 0;
          }

          v139 = v34;
        }

        else
        {

          v139 = 2;
        }

        v35 = String.lowercased()();
        v36 = _findStringSwitchCase(cases:string:)(&off_100213600, v35);

        if (v36 >= 4)
        {
          LOBYTE(v36) = 0;
        }

        sub_1000183C0();
        swift_allocError();
        *v37 = v36;
        v38 = _convertErrorToNSError(_:)();

        v39 = [v38 domain];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = [v38 code];
        *(v0 + 1088) = 1;
        *(v0 + 1024) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100089644(0, *(v2 + 2) + 1, 1, v2);
        }

        v45 = *(v2 + 2);
        v44 = *(v2 + 3);
        if (v45 >= v44 >> 1)
        {
          v2 = sub_100089644((v44 > 1), v45 + 1, 1, v2);
        }

        *(v2 + 2) = v45 + 1;
        v46 = &v2[112 * v45];
        *(v46 + 16) = 256;
        v47 = *(v0 + 1054);
        *(v46 + 19) = *(v0 + 1058);
        *(v46 + 34) = v47;
        *(v46 + 5) = v142;
        *(v46 + 6) = v141;
        v46[56] = v140;
        v46[57] = v139;
        v46[58] = 3;
        v48 = *(v0 + 1065);
        v46[63] = *(v0 + 1069);
        *(v46 + 59) = v48;
        *(v46 + 8) = 0;
        v46[72] = *(v0 + 1088);
        v46[73] = 2;
        v49 = *(v0 + 1070);
        *(v46 + 39) = *(v0 + 1074);
        *(v46 + 74) = v49;
        *(v46 + 10) = v40;
        *(v46 + 11) = v42;
        *(v46 + 12) = v43;
        v46[104] = *(v0 + 1024);
        *(v46 + 105) = 514;
        v50 = *(v0 + 1089);
        v46[111] = *(v0 + 1093);
        *(v46 + 107) = v50;
        *(v46 + 7) = 0u;
        *(v46 + 8) = 0u;
        v3 = *(v0 + 968) + 1;
        v1 = v163;
        if (v3 == *(v0 + 960))
        {
          goto LABEL_2;
        }
      }

      else
      {
        v21 = *(v0 + 888);
        v22 = *(v0 + 856);
        v23 = *(v0 + 848);

        v24 = Logger.postback.unsafeMutableAddressor();
        (*(v22 + 16))(v21, v24, v23);

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;

          *(v27 + 4) = v16;

          _os_log_impl(&_mh_execute_header, v25, v26, "Could not find impression with ordering index: %ld in AAK or SKAN maps", v27, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v0 + 856) + 8))(*(v0 + 888), *(v0 + 848));
        v3 = *(v0 + 968) + 1;
        if (v3 == *(v0 + 960))
        {
          goto LABEL_2;
        }
      }
    }

    v62 = *(v0 + 952);
    v63 = *(*(v0 + 824) + 56) + (v17 << 6);
    v64 = *(v63 + 8);
    v147 = *v63;
    v149 = *(v0 + 944);
    v167 = *(v63 + 16);
    v65 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v152 = *(v65 - 8);
    v164 = v1;
    v143 = *(v152 + 56);
    v143(v62, 1, 1, v65);
    v66 = type metadata accessor for AppImpressionPayload(0);
    v145 = sub_10003AFB8();
    v67 = sub_10003B00C();
    v68 = sub_10014CA00(&qword_10023A808, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
    v69 = sub_10014CA00(&qword_10023A810, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);

    v70 = v149;
    v150 = v66;
    JWS.init(compactJWS:)(v147, v64, v66, v145, v67, v68, v69, v70);
    if (v164)
    {
      v165 = v65;
      v71 = *(v0 + 872);
      v72 = *(v0 + 856);
      v73 = *(v0 + 848);
      v74 = Logger.postback.unsafeMutableAddressor();
      (*(v72 + 16))(v71, v74, v73);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 872);
      v79 = *(v0 + 848);
      v80 = (*(v0 + 856) + 8);
      if (v77)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Failed to create impression JWS", v81, 2u);
      }

      (*v80)(v78, v79);
      v83 = (v0 + 784);
      v82 = v0 + 688;
      v65 = v165;
    }

    else
    {
      v90 = *(v0 + 952);
      v91 = *(v0 + 944);
      v143(v91, 0, 1, v65);
      sub_10014CA48(v91, v90);
      v83 = (v0 + 784);
      v82 = v0 + 688;
    }

    *(v0 + 984) = 0;
    v92 = String.lowercased()();
    v93 = _findStringSwitchCase(cases:string:)(&off_100213600, v92);

    if (v93 >= 4)
    {
      LOBYTE(v93) = 0;
    }

    v94 = *(v0 + 952);
    sub_1000183C0();
    v95 = swift_allocError();
    *v96 = v93;
    v97 = *(v152 + 48);
    v98 = v97(v94, 1, v65);
    v99 = 0;
    v100 = 0;
    v101 = *(v0 + 952);
    if (!v98)
    {
      v102 = (v101 + *(v150 + 40) + *(v65 + 68));
      v99 = *v102;
      v100 = v102[1];
    }

    if (v97(v101, 1, v65))
    {
      v103 = 2;
    }

    else
    {
      v103 = *(v101 + *(v65 + 68) + *(v150 + 44));
    }

    v138 = v103;
    *v83 = v95;
    swift_errorRetain();
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
    v166 = v99;
    v155 = v100;
    if (swift_dynamicCast())
    {
      sub_10000DA64(v82, v0 + 728);
      v104 = *(v0 + 752);
      sub_10000DA7C((v0 + 728), v104);
      v105 = sub_10009DB48(v104);
      v151 = v106;
      v153 = v105;
      v144 = v108;
      v146 = v107;
      sub_10000DB58((v0 + 728));
    }

    else
    {
      *(v82 + 32) = 0;
      *v82 = 0u;
      *(v82 + 16) = 0u;
      sub_10000DAF8(v82, &qword_10023AEC0, &unk_1001BCC00);
      v109 = _convertErrorToNSError(_:)();
      v110 = [v109 domain];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v112;
      v153 = v111;

      *(v0 + 776) = [v109 code];
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v114;
      v146 = v113;
    }

    v115 = *(v0 + 1060);
    v116 = *(v0 + 936);
    v117 = *(v0 + 928);
    v118 = *(v0 + 920);
    v119 = *(v0 + 912);
    v120 = *(v0 + 904);
    v121 = *(v0 + 896);
    v148 = *(v0 + 840);
    v154 = *(v0 + 816);
    static Date.now.getter();
    (*(v120 + 104))(v119, v115, v121);
    v122 = sub_100025808(v116, v119);
    v124 = v123;
    (*(v120 + 8))(v119, v121);
    (*(v117 + 8))(v116, v118);
    if (v124)
    {
      v125 = 0;
    }

    else
    {
      v125 = v122;
    }

    v126 = [objc_opt_self() buildVersion];
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    *(v0 + 466) = *v159;
    *(v0 + 561) = *v157;
    *(v0 + 578) = *v160;
    *(v0 + 596) = *(v0 + 1036);
    *(v0 + 593) = *v156;
    *(v0 + 611) = *v161;
    *(v0 + 625) = *v158;
    *(v0 + 651) = *v162;
    *(v0 + 340) = *(v0 + 1028);
    *(v0 + 337) = *v157;
    *(v0 + 354) = *v160;
    *(v0 + 372) = *(v0 + 1036);
    *(v0 + 369) = *v156;
    *(v0 + 609) = 770;
    *(v0 + 385) = 770;
    *(v0 + 387) = *v161;
    *(v0 + 404) = *(v0 + 1044);
    *(v0 + 401) = *v158;
    *(v0 + 427) = *v162;
    *(v0 + 1064) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1040) = 1;
    *(v0 + 1032) = 1;
    *(v0 + 470) = *(v0 + 1080);
    *(v0 + 564) = *(v0 + 1028);
    *(v0 + 582) = *(v0 + 1086);
    *(v0 + 615) = *(v0 + 1098);
    *(v0 + 628) = *(v0 + 1044);
    *(v0 + 632) = 0u;
    *(v0 + 655) = *(v0 + 1053);
    *(v0 + 464) = 256;
    *(v0 + 240) = 256;
    *(v0 + 246) = *(v0 + 1080);
    *(v0 + 242) = *v159;
    *(v0 + 248) = v153;
    *(v0 + 472) = v153;
    *(v0 + 480) = v151;
    *(v0 + 256) = v151;
    *(v0 + 264) = v146;
    *(v0 + 488) = v146;
    *(v0 + 496) = v144;
    *(v0 + 272) = v144;
    *(v0 + 280) = v166;
    *(v0 + 504) = v166;
    *(v0 + 512) = v155;
    *(v0 + 288) = v155;
    *(v0 + 296) = v125;
    *(v0 + 520) = v125;
    *(v0 + 528) = v127;
    *(v0 + 304) = v127;
    *(v0 + 312) = v129;
    *(v0 + 536) = v129;
    *(v0 + 544) = 512;
    *(v0 + 320) = 512;
    *(v0 + 546) = v138;
    *(v0 + 322) = v138;
    *(v0 + 547) = v167;
    *(v0 + 323) = v167;
    v130 = *(v0 + 1064);
    *(v0 + 560) = v130;
    *(v0 + 336) = v130;
    v131 = *(v0 + 1048);
    *(v0 + 576) = v131;
    *(v0 + 352) = v131;
    *(v0 + 577) = 3;
    *(v0 + 353) = 3;
    *(v0 + 358) = *(v0 + 1086);
    v132 = *(v0 + 1104);
    *(v0 + 592) = v132;
    *(v0 + 368) = v132;
    v133 = *(v0 + 1040);
    *(v0 + 608) = v133;
    *(v0 + 384) = v133;
    *(v0 + 391) = *(v0 + 1098);
    v134 = *(v0 + 1032);
    *(v0 + 624) = v134;
    *(v0 + 400) = v134;
    *(v0 + 548) = 514;
    *(v0 + 648) = 514;
    *(v0 + 324) = 514;
    *(v0 + 424) = 514;
    *(v0 + 650) = 2;
    *(v0 + 426) = 2;
    *(v0 + 431) = *(v0 + 1053);
    *(v0 + 552) = 0;
    *(v0 + 568) = 0;
    *(v0 + 584) = 0;
    *(v0 + 600) = 0;
    *(v0 + 616) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 328) = 0;
    *(v0 + 344) = 0;
    *(v0 + 360) = 0;
    *(v0 + 376) = 0;
    *(v0 + 392) = 0;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 464, v0 + 16);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v148 + 560), *(v148 + 584));
    v135 = type metadata accessor for SnoutManager(0);
    v136 = swift_task_alloc();
    *(v0 + 992) = v136;
    *v136 = v0;
    v136[1] = sub_10014455C;
    v137 = *(v0 + 808);

    return (sub_10016E27C)(v0 + 464, v137, v154, 1, v135, &off_100223858);
  }
}

uint64_t sub_10014589C()
{

  return _swift_task_switch(sub_100145998, 0, 0);
}

uint64_t sub_100145998()
{
  sub_10001BABC(v0[126], v0[125]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100145A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 1368) = v8;
  *(v9 + 1098) = a8;
  *(v9 + 1097) = a7;
  *(v9 + 1360) = a6;
  *(v9 + 1352) = a5;
  *(v9 + 1344) = a4;
  *(v9 + 1336) = a3;
  *(v9 + 1328) = a2;
  *(v9 + 1320) = a1;
  v10 = type metadata accessor for Logger();
  *(v9 + 1376) = v10;
  *(v9 + 1384) = *(v10 - 8);
  *(v9 + 1392) = swift_task_alloc();
  *(v9 + 1400) = swift_task_alloc();

  return _swift_task_switch(sub_100145B5C, 0, 0);
}

uint64_t sub_100145B5C()
{
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v29 = (v0 + 808);
    v30 = _swiftEmptyArrayStorage;
    for (i = v2 - 1; ; --i)
    {
      v4 = *v3;
      *(v0 + 1024) = v3[1];
      v5 = v3[2];
      v6 = v3[3];
      v7 = v3[4];
      *(v0 + 1081) = *(v3 + 73);
      *(v0 + 1056) = v6;
      *(v0 + 1072) = v7;
      *(v0 + 1040) = v5;
      *(v0 + 1008) = v4;
      v37 = *(v0 + 1032);
      v38 = *(v0 + 1024);
      v35 = *(v0 + 1048);
      v36 = *(v0 + 1040);
      v33 = *(v0 + 1064);
      v34 = *(v0 + 1056);
      v31 = *(v0 + 1088);
      v32 = *(v0 + 1080);
      v8 = *(v0 + 1016);
      v9 = *(v0 + 1008);
      sub_100019760(v0 + 1008, v0 + 1104);
      v10 = sub_1000BB714();
      v11 = sub_1000BB768();
      v12 = sub_1000BB7BC();
      v13 = sub_1000BB810();

      JWS.init(compactJWS:)(v9, v8, &type metadata for Postback.JWSPayload, v10, v11, v12, v13, v29);
      v50 = *(v0 + 968);
      v51 = *(v0 + 984);
      v52 = *(v0 + 1000);
      v46 = *(v0 + 904);
      v47 = *(v0 + 920);
      v48 = *(v0 + 936);
      v49 = *(v0 + 952);
      v42 = *(v0 + 840);
      v43 = *(v0 + 856);
      v44 = *(v0 + 872);
      v45 = *(v0 + 888);
      v40 = *v29;
      v41 = *(v0 + 824);

      sub_100019798(v0 + 1008);
      *(v0 + 504) = v50;
      *(v0 + 520) = v51;
      *(v0 + 440) = v46;
      *(v0 + 456) = v47;
      *(v0 + 472) = v48;
      *(v0 + 488) = v49;
      *(v0 + 376) = v42;
      *(v0 + 392) = v43;
      *(v0 + 408) = v44;
      *(v0 + 424) = v45;
      *(v0 + 344) = v40;
      *(v0 + 360) = v41;
      *(v0 + 240) = v50;
      *(v0 + 256) = v51;
      *(v0 + 176) = v46;
      *(v0 + 192) = v47;
      *(v0 + 208) = v48;
      *(v0 + 224) = v49;
      *(v0 + 112) = v42;
      *(v0 + 128) = v43;
      *(v0 + 144) = v44;
      *(v0 + 160) = v45;
      *(v0 + 536) = v52;
      *(v0 + 288) = v37;
      *(v0 + 296) = v36;
      *(v0 + 304) = v35;
      *(v0 + 312) = v34;
      *(v0 + 320) = v33;
      *(v0 + 328) = v32;
      *(v0 + 336) = v31;
      *(v0 + 16) = v38;
      *(v0 + 24) = v37;
      *(v0 + 32) = v36;
      *(v0 + 40) = v35;
      *(v0 + 48) = v34;
      *(v0 + 56) = v33;
      *(v0 + 64) = v32;
      *(v0 + 72) = v31;
      *(v0 + 272) = v52;
      *(v0 + 280) = v38;
      *(v0 + 80) = v40;
      *(v0 + 96) = v41;
      sub_1000BB8B8(v0 + 280, v0 + 544);
      sub_1000BB914(v0 + 16);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v30;
      }

      else
      {
        v14 = sub_100088E34(0, *(v30 + 2) + 1, 1, v30);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_100088E34((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v30 = v14;
      memcpy(&v14[264 * v16 + 32], (v0 + 280), 0x108uLL);
      if (!i)
      {
        break;
      }

      v3 += 6;
    }

    v17 = v30;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  *(v0 + 1408) = 0;
  v18 = *(v0 + 1098);
  v19 = *(v0 + 1097);
  v20 = *(v0 + 1360);
  v21 = *(v0 + 1352);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1336);
  *(v0 + 1256) = v17;
  *(v0 + 1264) = v23;
  *(v0 + 1272) = v22;
  *(v0 + 1280) = v21;
  *(v0 + 1288) = v18 & 1;
  *(v0 + 1289) = 1;
  *(v0 + 1296) = v20;
  *(v0 + 1304) = v19 & 1;
  v24 = *(v0 + 1256);
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1288);
  *(v0 + 1248) = v19 & 1;
  *(v0 + 1232) = v26;
  *(v0 + 1216) = v25;
  *(v0 + 1200) = v24;

  v27 = swift_task_alloc();
  *(v0 + 1416) = v27;
  *v27 = v0;
  v27[1] = sub_100146034;

  return sub_1001091AC(v0 + 1200);
}

uint64_t sub_100146034()
{
  v1 = *v0;

  sub_10014C8D4(v1 + 1256);

  return _swift_task_switch(sub_100146138, 0, 0);
}

uint64_t sub_100146138()
{
  v1 = v0[176];
  v2 = v0[166];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[164] = v2;
  sub_10000CDE0(&qword_10023A488, &qword_1001C19D0);
  sub_1000198F4();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  v0[178] = v3;
  v0[179] = v4;

  if (v1)
  {
    v6 = v0[174];
    v7 = v0[173];
    v8 = v0[172];
    v9 = Logger.postback.unsafeMutableAddressor();
    (*(v7 + 16))(v6, v9, v8);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Encountered error while trying to woof SKAN postbacks over %@", v12, 0xCu);
      sub_10000DAF8(v13, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(v0[173] + 8))(v0[174], v0[172]);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[180] = v15;
    *v15 = v0;
    v15[1] = sub_1001463EC;

    return sub_1001556C4(v3, v5);
  }
}

uint64_t sub_1001463EC()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_10014657C;
  }

  else
  {
    v2 = sub_100146500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100146500()
{
  sub_10001BABC(v0[178], v0[179]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10014657C()
{
  sub_10001BABC(v0[178], v0[179]);
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[172];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Encountered error while trying to woof SKAN postbacks over %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[173] + 8))(v0[174], v0[172]);

  v10 = v0[1];

  return v10();
}

void *sub_100146740@<X0>(void *a1@<X8>)
{
  result = sub_1000E4EB8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_100146770(void *a1, uint64_t a2, uint64_t (*a3)(id, id, void *, void, void))
{
  v4 = [a1 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = a3(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  if (([v8 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_100146908@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v7 = static ConversionType.allCasesSet.getter();
  v8 = a2(a1, v7);

  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

void *sub_100146984@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100088798(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100088798((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100088798(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100088798(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100088798((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100146D44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100146D74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_100146DA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001472A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100146DC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100146E28()
{
  result = qword_10023D620;
  if (!qword_10023D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D620);
  }

  return result;
}

unint64_t sub_100146EB4()
{
  result = qword_10023D628;
  if (!qword_10023D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D628);
  }

  return result;
}

unint64_t sub_100146F68()
{
  result = qword_10023D630;
  if (!qword_10023D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D630);
  }

  return result;
}

uint64_t sub_100147004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10014701C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001473B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014703C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001474D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10014705C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147BCC(a1, a2, a3, *v3, &qword_10023BC48, &unk_1001BA540, type metadata accessor for ImpressionModel);
  *v3 = result;
  return result;
}

void *sub_1001470A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023AC48, &unk_1001BA570, &qword_10023BC80, &unk_1001B7000);
  *v3 = result;
  return result;
}

char *sub_1001470E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147100(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147120(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147140(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100147180(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147BCC(a1, a2, a3, *v3, &qword_10023D740, &qword_1001C1808, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_1001471C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023D708, &qword_1001C17B8, &qword_10023D710, &qword_1001C17C0);
  *v3 = result;
  return result;
}

char *sub_100147204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147224(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100147244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023D6B0, &qword_1001C1750, &qword_10023D6B8, &qword_1001C1758);
  *v3 = result;
  return result;
}

char *sub_100147284(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100148114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001472A4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1001473B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D830, &qword_1001C19C0);
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

char *sub_1001474D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D838, &qword_1001C19C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100147640(char *result, int64_t a2, char a3, char *a4)
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

char *sub_100147764(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D948, &qword_1001C1DC8);
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

char *sub_100147870(char *result, int64_t a2, char a3, char *a4)
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

char *sub_100147994(char *result, int64_t a2, char a3, char *a4)
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

char *sub_100147ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D638, qword_1001C8340);
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

void *sub_100147BCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_100147DA8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_100147EAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D798, &qword_1001C18C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100147FCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_100148114(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D6C0, &qword_1001C1760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 472);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[472 * v8])
    {
      memmove(v12, v13, 472 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_100148240(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001487C4(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
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

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001487C4(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100148844(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100148844(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10017B144(v9, 0), v12 = sub_10014899C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_10014899C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100148BBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100148BBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100148BBC(unint64_t a1, uint64_t a2, uint64_t a3)
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

unsigned __int8 *sub_100148C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10014B654();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001487C4(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
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

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
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
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
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

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
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
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
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

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
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
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
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

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001491C8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014D078(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_100149288(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 80) & ~v5;
  v7 = *(v4 + 64);

  sub_10000DB58((v2 + 24));

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100149380(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t, uint64_t, char *))
{
  v4 = *(sub_10000CDE0(a1, a2) - 8);
  v5 = v3[2];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a3(v5, v3 + 3, v6, v7, v8);
}

uint64_t sub_100149478()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1001494B0()
{
  result = qword_10023D640;
  if (!qword_10023D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D640);
  }

  return result;
}

uint64_t sub_100149538(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27 = *a3;
  a1(v26, &v27);
  v5 = *(a4 + 112);
  v14[6] = *(a4 + 96);
  v14[7] = v5;
  v14[8] = *(a4 + 128);
  v15 = *(a4 + 144);
  v6 = *(a4 + 48);
  v14[2] = *(a4 + 32);
  v14[3] = v6;
  v7 = *(a4 + 80);
  v14[4] = *(a4 + 64);
  v14[5] = v7;
  v8 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v8;
  sub_10000DAF8(v14, &qword_10023D758, &qword_1001C1860);
  v22 = v26[6];
  v23 = v26[7];
  v24 = v26[8];
  v18 = v26[2];
  v19 = v26[3];
  v20 = v26[4];
  v21 = v26[5];
  v16 = v26[0];
  v17 = v26[1];
  sub_10014B714(&v16);
  v9 = v23;
  *(a4 + 96) = v22;
  *(a4 + 112) = v9;
  *(a4 + 128) = v24;
  *(a4 + 144) = v25;
  v10 = v19;
  *(a4 + 32) = v18;
  *(a4 + 48) = v10;
  v11 = v21;
  *(a4 + 64) = v20;
  *(a4 + 80) = v11;
  v12 = v17;
  *a4 = v16;
  *(a4 + 16) = v12;
  return 1;
}

uint64_t sub_10014969C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v16 = *a3;
  a1(v14, &v16);
  v5 = *(a4 + 80);
  v12[4] = *(a4 + 64);
  v12[5] = v5;
  v13 = *(a4 + 96);
  v6 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v6;
  v7 = *(a4 + 48);
  v12[2] = *(a4 + 32);
  v12[3] = v7;
  sub_10000DAF8(v12, &qword_10023D800, &qword_1001C1938);
  v8 = *v15;
  *(a4 + 64) = v14[4];
  *(a4 + 80) = v8;
  *(a4 + 95) = *&v15[15];
  v9 = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = v9;
  v10 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v10;
  result = 1;
  *(a4 + 99) = 0;
  return result;
}

uint64_t sub_1001497A8(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(v12, &v14);
  v5 = *(a4 + 48);
  v10[2] = *(a4 + 32);
  v10[3] = v5;
  v11[0] = *(a4 + 64);
  *(v11 + 9) = *(a4 + 73);
  v6 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v6;
  sub_10000DAF8(v10, &qword_10023D6E8, &qword_1001C1798);
  v7 = v12[3];
  *(a4 + 32) = v12[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = v12[4];
  *(a4 + 80) = v13;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = 1;
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_1001498B4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_100149948(void (*a1)(unsigned __int8 *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  a1(&v6, &v7);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = v6;
  *(a4 + 8) = 0;
  return 1;
}

double sub_1001499DC@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *a1);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v6;
    *(a3 + 40) = v7;
  }

  return result;
}

uint64_t sub_100149A34(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12 = *a3;
  a1(v9, &v12);
  sub_10014AE38(*a4, *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 41));
  v5 = v10;
  v6 = v11;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return 1;
}

uint64_t sub_100149AFC(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v17 = *a3;
  a1(v16, &v17);
  v9 = *(a4 + 48);
  v14[2] = *(a4 + 32);
  v14[3] = v9;
  v15 = *(a4 + 64);
  v10 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v10;
  sub_10000DAF8(v14, a5, a6);
  v11 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v11;
  v12 = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = v12;
  result = 1;
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_100149BF0(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = sub_10000CDE0(a5, a6);
  __chkstk_darwin(v15 - 8);
  v17 = &v19 - v16;
  v20 = *a3;
  a1(&v20);
  sub_10000DAF8(a4, a7, a8);
  sub_10014AFF8(v17, a4, a5, a6);
  sub_10000CDE0(a7, a8);
  swift_storeEnumTagMultiPayload();
  return 1;
}

uint64_t sub_100149D24(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  a1(&v6);
  sub_10014C0D4(*a4, *(a4 + 8));
  *a4 = 0;
  *(a4 + 8) = 0;
  return 1;
}

uint64_t sub_100149D98(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *a3;
  a1(&v7, &v9);
  sub_10014BA6C(*a4, *(a4 + 8), *(a4 + 9));
  v5 = v8;
  *a4 = v7;
  *(a4 + 8) = v5;
  return 1;
}

double sub_100149E3C@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *a1);
  if (!v3)
  {
    v6 = v10;
    result = *v9;
    v7 = v9[1];
    v8 = v9[2];
    *a3 = v9[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 48) = v6;
  }

  return result;
}

uint64_t sub_100149E94(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(&v10, &v14);
  v5 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v5;
  v9[0] = *(a4 + 32);
  *(v9 + 9) = *(a4 + 41);
  sub_10000DAF8(v8, &qword_10023D670, &qword_1001C16D8);
  v6 = v10;
  *(a4 + 8) = v11;
  *(a4 + 24) = v12;
  *(a4 + 40) = v13;
  result = 1;
  *a4 = v6;
  *(a4 + 56) = 0;
  return result;
}

uint64_t sub_100149F90(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = *a3;
  a1(v12, &v14);
  v5 = *(a4 + 48);
  v10[2] = *(a4 + 32);
  v11[0] = v5;
  *(v11 + 9) = *(a4 + 57);
  v6 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v6;
  sub_10000DAF8(v10, &qword_10023D868, &qword_1001C19F8);
  v7 = v12[3];
  *(a4 + 32) = v12[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = v13;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = 1;
  *(a4 + 72) = 0;
  return result;
}

uint64_t sub_10014A0F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10014A1D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014A22C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_100133AF0(a1, a2, v7, v6);
}

unint64_t sub_10014A2E0()
{
  result = qword_10023D658;
  if (!qword_10023D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D658);
  }

  return result;
}

uint64_t sub_10014A334()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 496));

  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));

  sub_10000DB58((v0 + 808));
  sub_10000DB58((v0 + 848));
  sub_10000DB58((v0 + 888));

  return _swift_deallocObject(v0, 928, 7);
}

uint64_t sub_10014A484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000152E0;

  return sub_100134064(a1, v4, v5, v1 + 32, v1 + 328);
}

uint64_t sub_10014A538()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014A570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000147B8(a1, v4);
}

uint64_t sub_10014A70C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BD30;

  return sub_1001371A4(v2, v3);
}

uint64_t sub_10014A9D4()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10014AA90()
{

  return _swift_deallocObject(v0, 305, 7);
}

unint64_t sub_10014AB1C()
{
  result = qword_10023D688;
  if (!qword_10023D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D688);
  }

  return result;
}

unint64_t sub_10014ACC4()
{
  result = qword_10023D6D8;
  if (!qword_10023D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D6D8);
  }

  return result;
}

unint64_t sub_10014AD70()
{
  result = qword_10023D6F0;
  if (!qword_10023D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D6F0);
  }

  return result;
}

uint64_t sub_10014AE38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return v7;
}

unint64_t sub_10014AE44()
{
  result = qword_10023D718;
  if (!qword_10023D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D718);
  }

  return result;
}

double sub_10014AEE0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(v8, *a1);
  if (!v3)
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    result = *&v9;
    v7 = v10;
    a2[2] = v9;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10014AFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CDE0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for PostbackUpdateData(uint64_t a1)
{
  result = qword_10023D8C8;
  if (!qword_10023D8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014B138(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B1A8@<X0>(uint64_t (*a1)(void, void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10014B1E8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100148BBC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100148BBC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100148BBC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_10014B654()
{
  result = qword_10023D748;
  if (!qword_10023D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D748);
  }

  return result;
}

unint64_t sub_10014B71C()
{
  result = qword_10023D760;
  if (!qword_10023D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D760);
  }

  return result;
}

id sub_10014B824@<X0>(uint64_t a1@<X8>)
{
  result = sub_100156DD0(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_10014B970()
{
  result = qword_10023D780;
  if (!qword_10023D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D780);
  }

  return result;
}

void *sub_10014BA0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(&v7, *a1);
  if (!v3)
  {
    v6 = v8;
    *a2 = v7;
    *(a2 + 8) = v6;
  }

  return result;
}

uint64_t sub_10014BA6C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 sub_10014BAD8@<Q0>(void (*a1)(_OWORD *__return_ptr, void, void)@<X1>, uint64_t a2@<X8>)
{
  a1(v9, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    v6 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v6;
    *(a2 + 128) = v9[8];
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    v8 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v8;
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10014BB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result != 1)
  {

    return sub_1000D5520(a6, a7);
  }

  return result;
}

unint64_t sub_10014BC00()
{
  result = qword_10023D7B0;
  if (!qword_10023D7B0)
  {
    sub_10000CCC0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014BC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7B0);
  }

  return result;
}

unint64_t sub_10014BC84()
{
  result = qword_10023D7B8;
  if (!qword_10023D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7B8);
  }

  return result;
}

uint64_t sub_10014BCD8()
{
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_10001BABC(v0[4], v1);
  }

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_10001BABC(v0[6], v2);
  }

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10014BD5C()
{
  result = qword_10023D7C8;
  if (!qword_10023D7C8)
  {
    sub_10000CCC0(&qword_10023D7C0, &qword_1001C1908);
    sub_10014BDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7C8);
  }

  return result;
}

unint64_t sub_10014BDE0()
{
  result = qword_10023D7D0;
  if (!qword_10023D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7D0);
  }

  return result;
}

uint64_t sub_10014BE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C0F60(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10014BE88()
{
  result = qword_10023D7D8;
  if (!qword_10023D7D8)
  {
    sub_10000CCC0(&qword_10023D7C0, &qword_1001C1908);
    sub_10014BF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7D8);
  }

  return result;
}

unint64_t sub_10014BF0C()
{
  result = qword_10023D7E0;
  if (!qword_10023D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D7E0);
  }

  return result;
}

void *sub_10014C07C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_10014C0D4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

void *sub_10014C128@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_10014C1AC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10014C1E8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_10013CFE8(a1, a2, v7, v6);
}

uint64_t sub_10014C29C()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 368));

  sub_10000DB58((v0 + 432));
  sub_10000DB58((v0 + 472));
  sub_10000DB58((v0 + 512));
  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));

  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));

  return _swift_deallocObject(v0, 842, 7);
}

uint64_t sub_10014C3D4(uint64_t a1)
{
  v4 = v1[3];
  v10 = v1[2];
  v5 = v1[22];
  v6 = v1[23];
  v7 = v1[24];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_10013E494(a1, v10, v4, (v1 + 4), v5, v6, v7, (v1 + 25));
}

__n128 sub_10014C4EC@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = sub_10005E074(v6).n128_u64[0];
  if (!v1)
  {
    v4 = *v7;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v4;
    *(a1 + 95) = *&v7[15];
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_10014C558()
{
  result = qword_10023C5D0;
  if (!qword_10023C5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023C5D0);
  }

  return result;
}

unint64_t sub_10014C5A4()
{
  result = qword_10023D818;
  if (!qword_10023D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D818);
  }

  return result;
}

uint64_t sub_10014C5F8()
{

  return _swift_deallocObject(v0, 168, 7);
}

__n128 sub_10014C638@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = sub_1000C1604(v5).n128_u64[0];
  if (!v1)
  {
    v4 = v5[3];
    *(a1 + 32) = v5[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v6;
    result = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10014C744(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000438D8(result, a2);
  }

  return result;
}

unint64_t sub_10014C758()
{
  result = qword_10023D820;
  if (!qword_10023D820)
  {
    sub_10000CCC0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D820);
  }

  return result;
}

unint64_t sub_10014C7DC()
{
  result = qword_10023D828;
  if (!qword_10023D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D828);
  }

  return result;
}

uint64_t sub_10014C830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E6658(*(v1 + 72), *(v1 + 80));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10014C868()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10014C928()
{
  result = qword_10023D850;
  if (!qword_10023D850)
  {
    sub_10000CCC0(&qword_10023D848, &unk_1001C19E0);
    sub_10014C9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D850);
  }

  return result;
}

unint64_t sub_10014C9AC()
{
  result = qword_10023D858;
  if (!qword_10023D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D858);
  }

  return result;
}

uint64_t sub_10014CA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014CA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023D840, &qword_1001C19D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014CB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10014CC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10014CCA4(uint64_t a1)
{
  sub_100079458(319, &qword_10023D8D8, &type metadata for CoarseConversionValue);
  if (v1 <= 0x3F)
  {
    sub_10014CD90(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_100079458(319, &qword_10023A198, &type metadata for UInt64);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10014CD90(uint64_t a1)
{
  if (!qword_10023D8E0)
  {
    sub_10000CCC0(&unk_10023D8E8, &qword_1001C7A60);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10023D8E0);
    }
  }
}

uint64_t sub_10014CDF4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014CE0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 24))
  {
    return (*a1 + 2147483636);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014CE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

void *sub_10014CEB8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_10014CF08(uint64_t a1)
{
  result = sub_10003FB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CF34()
{
  result = qword_10023D928;
  if (!qword_10023D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D928);
  }

  return result;
}

unint64_t sub_10014CF88(uint64_t a1)
{
  result = sub_1000401C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CFB0(uint64_t a1)
{
  result = sub_10014C5A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014CFDC()
{
  result = qword_10023D930;
  if (!qword_10023D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D930);
  }

  return result;
}

uint64_t sub_10014D078(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10014D084()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10014D10C(void *a1@<X8>)
{
  type metadata accessor for Date();
  sub_1000E40C8();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_10014D70C()
{
  result = qword_10023D950;
  if (!qword_10023D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D950);
  }

  return result;
}

void sub_10014D770(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_10014D99C(a2);
  }
}

unint64_t sub_10014D7A8(void *a1)
{
  a1[1] = sub_10014D7E0();
  a1[2] = sub_10014D834();
  result = sub_10014D888();
  a1[3] = result;
  return result;
}

unint64_t sub_10014D7E0()
{
  result = qword_10023D998;
  if (!qword_10023D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D998);
  }

  return result;
}

unint64_t sub_10014D834()
{
  result = qword_10023D9A0;
  if (!qword_10023D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9A0);
  }

  return result;
}

unint64_t sub_10014D888()
{
  result = qword_10023D9A8;
  if (!qword_10023D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9A8);
  }

  return result;
}

unint64_t sub_10014D8E0()
{
  result = qword_10023D9B0;
  if (!qword_10023D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9B0);
  }

  return result;
}

unint64_t sub_10014D938()
{
  result = qword_10023D9B8;
  if (!qword_10023D9B8)
  {
    sub_10000CCC0(&qword_10023D9C0, &qword_1001C1F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D9B8);
  }

  return result;
}

void sub_10014D99C(uint64_t a1)
{
  _StringGuts.grow(_:)(110);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for AppDistributorMetadataEntity() databaseTable];
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
  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x80000001001CAEA0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x737265765F707061;
  v13._object = 0xEE0064695F6E6F69;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA00000000000A2CLL;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA620;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001001CB550;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v19);
}

uint64_t sub_10014DBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6973726556736FLL;
  v5 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v4 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v6 = 0x56646C697542736FLL;
  v7 = 0xEE006E6F69737265;
  if (a1 != 4)
  {
    v6 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7372655665736162;
  v9 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v8 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  v10 = 0x6973726556707061;
  if (a1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE90000000000006ELL;
        if (v11 != 0x6F6973726556736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x656E6F7A656D6974;
      v15 = 0x74657366664FLL;
    }

    else
    {
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656D614E736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x56646C697542736FLL;
      v15 = 0x6E6F69737265;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v14)
    {
LABEL_45:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x7372655665736162)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (v11 != 0x726556746E657665)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006E6FLL;
    if (v11 != 0x6973726556707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368801)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_10014DE9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x676E69726564726FLL;
      v6 = 0xEE007865646E692DLL;
    }

    else
    {
      v6 = 0x80000001001CA560;
      v5 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x697274732D73776ALL;
    }

    if (v4)
    {
      v6 = 0x80000001001CA540;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  v7 = 0x676E69726564726FLL;
  v8 = 0x80000001001CA560;
  if (a2 == 2)
  {
    v8 = 0xEE007865646E692DLL;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA540;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_10014E000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064695F6E6F69;
  v3 = 0xD000000000000012;
  v4 = 0x737265765F707061;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x737265765F707061;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5 == 2)
    {
      v7 = 0xEE0064695F6E6F69;
    }

    else
    {
      v7 = 0x80000001001CA620;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x80000001001CAEA0;
    }

    else
    {
      v7 = 0x80000001001CA000;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  v8 = 0x80000001001CAEA0;
  if (a2)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x80000001001CA000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
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

uint64_t sub_10014E12C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69737265766E6F63;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEF657079745F6E6FLL;
    }

    else
    {
      v6 = 0x80000001001CA620;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x69737265766E6F63;
    }

    if (v4)
    {
      v6 = 0x80000001001CA000;
    }

    else
    {
      v6 = 0xED000064695F6E6FLL;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001001CA620;
  if (a2 == 2)
  {
    v7 = 0x69737265766E6F63;
    v8 = 0xEF657079745F6E6FLL;
  }

  if (a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_10014E270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265206E656B6F74;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726F72;
    }

    else
    {
      v5 = 0x80000001001CA1A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265747369676572;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEE00726F72726520;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7265206E656B6F74;
  v8 = 0x80000001001CA1A0;
  if (a2 == 2)
  {
    v8 = 0xEB00000000726F72;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x7265747369676572;
    v6 = 0xEE00726F72726520;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10014E3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x6C7074656B72616DLL;
  v7 = 0xEE0064695F656361;
  if (a1 != 4)
  {
    v6 = 0x5F7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001001CA030;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001001CA000;
  v11 = 0xEF657079745F6E6FLL;
  if (a1 == 1)
  {
    v11 = 0xED000064695F6E6FLL;
  }

  if (a1)
  {
    v9 = 0x69737265766E6F63;
    v10 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xEE0064695F656361;
        if (v12 != 0x6C7074656B72616DLL)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xEC00000065646F63;
        if (v12 != 0x5F7972746E756F63)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v2 = 0x80000001001CA030;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001001CA000;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xEF657079745F6E6FLL;
      if (v12 != 0x69737265766E6F63)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_10014E5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "skan_impression_data";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "agementPostbackCopies";
      v4 = 0xD000000000000031;
    }

    else
    {
      v5 = "appingConversions";
      v4 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000035;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v3)
    {
      v5 = "AttributionCopyEndpoint";
    }

    else
    {
      v5 = "skan_impression_data";
    }
  }

  if (a2 > 1u)
  {
    v2 = "agementPostbackCopies";
    v6 = "appingConversions";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000031;
    }

    else
    {
      v8 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v6 = "AttributionCopyEndpoint";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000035;
    }

    else
    {
      v8 = 0xD000000000000017;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10014E6FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064695F6BLL;
  v3 = 0xD000000000000012;
  v4 = 0x63616274736F6867;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x63616274736F6867;
    }

    if (v5 == 2)
    {
      v7 = 0x80000001001CA000;
    }

    else
    {
      v7 = 0xEC00000064695F6BLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x80000001001CADB0;
    }

    else
    {
      v7 = 0x80000001001CAD90;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  v8 = 0x80000001001CADB0;
  if (a2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x80000001001CAD90;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
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

uint64_t sub_10014E824(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x697274732D73776ALL;
    }

    if (v2)
    {
      v3 = 0x80000001001CA540;
    }

    else
    {
      v3 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000001001CAD50;
    v4 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001001CAD70;
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x2D7972746E756F63;
    v3 = 0xEC00000065646F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x697274732D73776ALL;
    }

    if (a2)
    {
      v5 = 0x80000001001CA540;
    }

    else
    {
      v5 = 0xEA0000000000676ELL;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001001CAD50;
    if (v4 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001001CAD70;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000065646F63;
    if (v4 != 0x2D7972746E756F63)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10014E9D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D6465646E696C62;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEF746E656D656C65;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6564692D6D657469;
    }

    else
    {
      v3 = 0x6D6E6F7269766E65;
    }

    if (v2 == 3)
    {
      v4 = 0xEF7265696669746ELL;
    }

    else
    {
      v4 = 0xEB00000000746E65;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x2D6465646E696C62;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEF746E656D656C65;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000070;
    if (v3 != 0x6D617473656D6974)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF7265696669746ELL;
    if (v3 != 0x6564692D6D657469)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEB00000000746E65;
    if (v3 != 0x6D6E6F7269766E65)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10014EBB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F66;
  v3 = 0x6E692D6E656B6F74;
  v4 = a1;
  v5 = 0x2D7972746E756F63;
  v6 = 0xEC00000065646F63;
  if (a1 == 5)
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
  }

  v7 = 0x80000001001CAD10;
  v8 = 0xD000000000000017;
  if (a1 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001001CAD30;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x80000001001CACD0;
  v10 = 0xD000000000000025;
  v11 = 0x6973736572706D69;
  v12 = 0xEB00000000736E6FLL;
  if (a1 == 1)
  {
    v11 = 0x6E692D6E656B6F74;
    v12 = 0xEA00000000006F66;
  }

  if (a1)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x80000001001CAD10;
        if (v13 != 0xD000000000000017)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v3 = 0xD000000000000016;
      v2 = 0x80000001001CAD30;
      goto LABEL_33;
    }

    if (a2 != 5)
    {
      v2 = 0xEC00000065646F63;
      if (v13 != 0x2D7972746E756F63)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v15 = 0x6D6E6F7269766E65;
    v16 = 7630437;
LABEL_28:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v13 != v15)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    v2 = 0x80000001001CACD0;
    if (v13 != 0xD000000000000025)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    v15 = 0x6973736572706D69;
    v16 = 7564911;
    goto LABEL_28;
  }

LABEL_33:
  if (v13 != v3)
  {
LABEL_37:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != v2)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

uint64_t sub_10014EDF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x69737265766E6F63;
  v3 = a1;
  if (a1 <= 3u)
  {
    v6 = 0x5F65746176697270;
    v7 = 0xED00007475706E69;
    if (a1 != 2)
    {
      v6 = 0x657A696C616E6966;
      v7 = 0xEF6E656B6F745F64;
    }

    v8 = 0xD000000000000012;
    v9 = 0x80000001001CA000;
    if (!a1)
    {
      v8 = 0x69737265766E6F63;
      v9 = 0xED000064695F6E6FLL;
    }

    if (a1 <= 1u)
    {
      v4 = v8;
    }

    else
    {
      v4 = v6;
    }

    if (v3 <= 1)
    {
      v5 = v9;
    }

    else
    {
      v5 = v7;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v4 = 0x6D617473656D6974;
      v5 = 0xE900000000000070;
    }

    else
    {
      v4 = 0x6369666974726563;
      v5 = 0xEB00000000657461;
    }
  }

  else if (a1 == 6)
  {
    v5 = 0xEF657079745F6E6FLL;
    v4 = 0x69737265766E6F63;
  }

  else if (a1 == 7)
  {
    v4 = 0x6D6E6F7269766E65;
    v5 = 0xEB00000000746E65;
  }

  else
  {
    v4 = 0x636F6C6C615F7369;
    v5 = 0xEC00000064657461;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xED00007475706E69;
        if (v4 != 0x5F65746176697270)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v12 = 0xEF6E656B6F745F64;
        if (v4 != 0x657A696C616E6966)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2)
      {
        v2 = 0xD000000000000012;
        v12 = 0x80000001001CA000;
      }

      else
      {
        v12 = 0xED000064695F6E6FLL;
      }

      if (v4 != v2)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v12 = 0xE900000000000070;
        if (v4 != 0x6D617473656D6974)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v10 = 0x6369666974726563;
      v11 = 6648929;
    }

    else
    {
      if (a2 == 6)
      {
        v12 = 0xEF657079745F6E6FLL;
        if (v4 != 0x69737265766E6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (a2 != 7)
      {
        v12 = 0xEC00000064657461;
        if (v4 != 0x636F6C6C615F7369)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v10 = 0x6D6E6F7269766E65;
      v11 = 7630437;
    }

    v12 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v4 != v10)
    {
LABEL_48:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_49;
    }
  }

LABEL_46:
  if (v5 != v12)
  {
    goto LABEL_48;
  }

  v13 = 1;
LABEL_49:

  return v13 & 1;
}

uint64_t sub_10014F118(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x697274732D73776ALL;
    }

    if (v2)
    {
      v4 = 0x80000001001CA540;
    }

    else
    {
      v4 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x676E69726564726FLL;
    v4 = 0xEE007865646E692DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001001CA560;
    }

    else
    {
      v4 = 0x80000001001CA580;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0x697274732D73776ALL;
    }

    if (a2)
    {
      v6 = 0x80000001001CA540;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEE007865646E692DLL;
    if (v3 != 0x676E69726564726FLL)
    {
LABEL_37:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001001CA560;
    }

    else
    {
      v6 = 0x80000001001CA580;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_10014F2BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x697274732D73776ALL;
  v4 = a1;
  v5 = 0xD000000000000015;
  v6 = 0x676E69726564726FLL;
  v7 = 0xEE007865646E692DLL;
  if (a1 != 4)
  {
    v6 = 0x2D7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001001CAA80;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0x6B63616274736F70;
  v10 = 0xEC0000006C72752DLL;
  if (a1 != 1)
  {
    v9 = 0xD000000000000013;
    v10 = 0x80000001001CA540;
  }

  if (!a1)
  {
    v9 = 0x697274732D73776ALL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x6B63616274736F70;
        v14 = 1819440429;
        goto LABEL_30;
      }

      v3 = 0xD000000000000013;
      v2 = 0x80000001001CA540;
    }

    if (v11 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v2 = 0x80000001001CAA80;
    if (v11 != 0xD000000000000015)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 4)
  {
    v2 = 0xEE007865646E692DLL;
    if (v11 != 0x676E69726564726FLL)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v13 = 0x2D7972746E756F63;
  v14 = 1701080931;
LABEL_30:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v13)
  {
LABEL_33:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v2)
  {
    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:

  return v15 & 1;
}

uint64_t sub_10014F4C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x69737265766E6F63;
    v14 = 0xED000064695F6E6FLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x80000001001CA030;
    }

    if (a1)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0x64695F79726F7473;
    }

    if (a1)
    {
      v12 = 0x80000001001CA000;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0x5F676E69646E6570;
    v5 = 0xEE0073746E657665;
    v6 = 0x80000001001CA0A0;
    v7 = 0xD000000000000017;
    if (a1 == 7)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x80000001001CA0C0;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000001001CA050;
    v9 = 0xD000000000000010;
    if (a1 != 4)
    {
      v9 = 0xD000000000000011;
      v8 = 0x80000001001CA070;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x69737265766E6F63;
        v17 = 0xED000064695F6E6FLL;
      }

      else
      {
        v17 = 0x80000001001CA030;
        v2 = 0xD000000000000014;
      }
    }

    else if (a2)
    {
      v17 = 0x80000001001CA000;
      v2 = 0xD000000000000012;
    }

    else
    {
      v17 = 0xE800000000000000;
      v2 = 0x64695F79726F7473;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v16 = "is_story_complete";
      goto LABEL_45;
    }

    v17 = 0x80000001001CA050;
    v2 = 0xD000000000000010;
  }

  else if (a2 == 6)
  {
    v2 = 0x5F676E69646E6570;
    v17 = 0xEE0073746E657665;
  }

  else
  {
    if (a2 == 7)
    {
      v16 = "total_event_count";
LABEL_45:
      v17 = (v16 - 32) | 0x8000000000000000;
      goto LABEL_46;
    }

    v17 = 0x80000001001CA0C0;
    v2 = 0xD000000000000017;
  }

LABEL_46:
  if (v10 == v2 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_10014F764(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F635F7972746572;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000746E75;
    }

    else
    {
      v6 = 0x80000001001CA100;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x616E5F70756F7267;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x6F635F7972746572;
  v8 = 0x80000001001CA100;
  if (a2 == 2)
  {
    v8 = 0xEB00000000746E75;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v3 = 0x616E5F70756F7267;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_10014F8B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65636E6F6ELL;
  if (a1 != 5)
  {
    v5 = 0x65646F6363;
    v4 = 0xE500000000000000;
  }

  v6 = 7627113;
  if (a1 != 3)
  {
    v6 = 7566185;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE300000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 0x6570797464;
  if (a1 == 1)
  {
    v8 = 6580578;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6583649;
  }

  if (a1)
  {
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6583649)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6580578)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v12 = 0xE500000000000000;
    v13 = 1887007844;
  }

  else
  {
    if (a2 <= 4u)
    {
      v12 = 0xE300000000000000;
      if (a2 == 3)
      {
        if (v10 != 7627113)
        {
          goto LABEL_41;
        }
      }

      else if (v10 != 7566185)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v12 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 1668181870;
    }

    else
    {
      v13 = 1685021539;
    }
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
  {
LABEL_41:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_42;
  }

LABEL_39:
  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_10014FA70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064695F6B72;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xED000064695F6E6FLL;
    v13 = 0x80000001001CA000;
    v14 = 0x6F7774656E5F6461;
    if (a1 == 2)
    {
      v14 = 0xD000000000000012;
    }

    else
    {
      v13 = 0xED000064695F6B72;
    }

    v15 = 0xD000000000000011;
    if (a1)
    {
      v12 = 0x80000001001CA650;
    }

    else
    {
      v15 = 0x6973736572706D69;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0x5F746361706D6F63;
    v5 = 0xEB0000000073776ALL;
    v6 = 0x80000001001CA620;
    v7 = 0x6D6E6F7269766E65;
    if (a1 == 7)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x6D617473656D6974;
    if (a1 == 4)
    {
      v9 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001001CA670;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v10 != 0x6F7774656E5F6461)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v16 = "advertised_item_id";
      goto LABEL_39;
    }

    if (a2)
    {
      v2 = 0x80000001001CA650;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0xED000064695F6E6FLL;
      if (v10 != 0x6973736572706D69)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = 0x5F746361706D6F63;
        v18 = 7567210;
      }

      else
      {
        if (a2 == 7)
        {
          v16 = "creation_timestamp";
LABEL_39:
          v2 = (v16 - 32) | 0x8000000000000000;
          if (v10 != 0xD000000000000012)
          {
            goto LABEL_55;
          }

          goto LABEL_53;
        }

        v17 = 0x6D6E6F7269766E65;
        v18 = 7630437;
      }

      v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v10 != v17)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    if (a2 == 4)
    {
      v2 = 0xE900000000000070;
      if (v10 != 0x6D617473656D6974)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0x80000001001CA670;
      if (v10 != 0xD000000000000010)
      {
LABEL_55:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_56;
      }
    }
  }

LABEL_53:
  if (v11 != v2)
  {
    goto LABEL_55;
  }

  v19 = 1;
LABEL_56:

  return v19 & 1;
}

uint64_t sub_10014FD64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x6564692D6D657469;
  v4 = a1;
  v5 = 0x6369666974726563;
  v6 = 0xEB00000000657461;
  if (a1 != 5)
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
  }

  v7 = 0x776F6465722D7369;
  v8 = 0xED000064616F6C6ELL;
  if (a1 != 3)
  {
    v7 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x2D65746176697270;
  v10 = 0xED00007475706E69;
  if (a1 != 1)
  {
    v9 = 0x65696C632D667270;
    v10 = 0xEA0000000000746ELL;
  }

  if (!a1)
  {
    v9 = 0x6564692D6D657469;
    v10 = 0xEF7265696669746ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v15 = 0x6369666974726563;
        v16 = 6648929;
      }

      else
      {
        v15 = 0x6D6E6F7269766E65;
        v16 = 7630437;
      }

      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v11 != v15)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v13 = 0x776F6465722D7369;
      v14 = 0x64616F6C6ELL;
      goto LABEL_24;
    }

    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (a2 != 1)
  {
    v2 = 0xEA0000000000746ELL;
    if (v11 != 0x65696C632D667270)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v13 = 0x2D65746176697270;
  v14 = 0x7475706E69;
LABEL_24:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

uint64_t sub_10014FFD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x65696C632D667270;
  v4 = a1;
  v5 = 0x6369666974726563;
  v6 = 0xEB00000000657461;
  v7 = 0x6564692D6D657469;
  v8 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v7 = 0x776F6465722D7369;
    v8 = 0xED000064616F6C6ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x2D65746176697270;
  v10 = 0xED00007475706E69;
  if (a1 != 1)
  {
    v9 = 0x6D617473656D6974;
    v10 = 0xE900000000000070;
  }

  if (!a1)
  {
    v9 = 0x65696C632D667270;
    v10 = 0xEA0000000000746ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x2D65746176697270;
        v14 = 0x7475706E69;
        goto LABEL_29;
      }

      v3 = 0x6D617473656D6974;
      v2 = 0xE900000000000070;
    }

    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v2 = 0xEB00000000657461;
    if (v11 != 0x6369666974726563)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 4)
  {
    v2 = 0xEF7265696669746ELL;
    if (v11 != 0x6564692D6D657469)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v13 = 0x776F6465722D7369;
  v14 = 0x64616F6C6ELL;
LABEL_29:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
LABEL_32:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v15 = 1;
LABEL_33:

  return v15 & 1;
}

uint64_t sub_100150208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F72685477656976;
    }

    else
    {
      v4 = 0x7268546B63696C63;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000686775;
    }

    else
    {
      v5 = 0xEC0000006867756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 6448503;
    }

    else
    {
      v4 = 7368801;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0x6F72685477656976;
  v7 = 0xEB00000000686775;
  if (a2 != 2)
  {
    v6 = 0x7268546B63696C63;
    v7 = 0xEC0000006867756FLL;
  }

  if (a2)
  {
    v2 = 6448503;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100150354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x736572706D496461;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x746C69466B6E696CLL;
    v13 = 0xEA00000000007265;
    if (a1 != 2)
    {
      v12 = 0x68636E75616CLL;
      v13 = 0xE600000000000000;
    }

    v14 = 0x64696C6156706174;
    v15 = 0xED00006E6F697461;
    if (!a1)
    {
      v14 = 0x736572706D496461;
      v15 = 0xEC0000006E6F6973;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x80000001001CA790;
    v6 = 0xE700000000000000;
    v7 = 0x74736575716572;
    if (a1 != 7)
    {
      v7 = 0x6D6F4379726F7473;
      v6 = 0xED00006574656C70;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v5 = v6;
    }

    v8 = 0x80000001001CA760;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0x7265766E6F436461;
      v8 = 0xEC0000006E6F6973;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007265;
        if (v10 != 0x746C69466B6E696CLL)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x68636E75616CLL)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2)
    {
      v2 = 0xED00006E6F697461;
      if (v10 != 0x64696C6156706174)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001001CA760;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_50;
        }
      }

      else if (v10 != 0x7265766E6F436461)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 6)
    {
      v2 = 0x80000001001CA790;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x74736575716572)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v3 = 0x6D6F4379726F7473;
    v2 = 0xED00006574656C70;
  }

  if (v10 != v3)
  {
LABEL_50:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_51;
  }

LABEL_47:
  if (v11 != v2)
  {
    goto LABEL_50;
  }

  v16 = 1;
LABEL_51:

  return v16 & 1;
}

uint64_t sub_100150640(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7A69726F68747541;
  v4 = a1;
  v5 = 0xEF65676175676E61;
  v6 = 0xD000000000000015;
  if (a1 == 5)
  {
    v6 = 0x4C2D747065636341;
  }

  else
  {
    v5 = 0x80000001001CA360;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6152;
  if (a1 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001001CA330;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x2D746E65746E6F43;
  v10 = 0xEC00000065707954;
  if (a1 != 1)
  {
    v9 = 0x6567412D72657355;
    v10 = 0xEA0000000000746ELL;
  }

  if (!a1)
  {
    v9 = 0x7A69726F68747541;
    v10 = 0xED00006E6F697461;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065707954;
        if (v11 != 0x2D746E65746E6F43)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEA0000000000746ELL;
        if (v11 != 0x6567412D72657355)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF65676175676E61;
        if (v11 != 0x4C2D747065636341)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x80000001001CA360;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x65676E6152)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000013;
    v2 = 0x80000001001CA330;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

Swift::Int sub_100150890(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001509BC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150AF8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150C2C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150D7C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100150EB4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151014(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151108(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151238(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100151384(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001514AC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

__n128 Postback.payload.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v18 = *(v1 + 192);
  v19 = v3;
  v20 = *(v1 + 224);
  v4 = *(v1 + 144);
  v14 = *(v1 + 128);
  v15 = v4;
  v5 = *(v1 + 176);
  v16 = *(v1 + 160);
  v17 = v5;
  v6 = *(v1 + 112);
  v12 = *(v1 + 96);
  v13 = v6;
  sub_10014A860(&v12, v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t Postback.compactJWS.getter()
{
  v1 = *(v0 + 248);

  return v1;
}