uint64_t sub_100192384()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_1006359C8, &qword_100516F88);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_1006359C8, &qword_100516F88);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_1006359C8, &qword_100516F88);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100192670(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001927A0, 0, 0);
}

uint64_t sub_1001927A0()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A28, &qword_100517088);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A28, &qword_100517088);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A28, &qword_100517088);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A28, &qword_100517088);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100192CC8;

  return v37(v0 + 128);
}

uint64_t sub_100192CC8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100193038;
  }

  else
  {
    v2 = sub_100192DDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192DDC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A28, &qword_100517088);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A28, &qword_100517088);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A28, &qword_100517088);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100193038()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A28, &qword_100517088);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A28, &qword_100517088);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A28, &qword_100517088);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100193324(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100193454, 0, 0);
}

uint64_t sub_100193454()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A20, &qword_100517080);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A20, &qword_100517080);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A20, &qword_100517080);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A20, &qword_100517080);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10019397C;

  return v37(v0 + 128);
}

uint64_t sub_10019397C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100193CEC;
  }

  else
  {
    v2 = sub_100193A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193A90()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A20, &qword_100517080);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A20, &qword_100517080);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A20, &qword_100517080);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100193CEC()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A20, &qword_100517080);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A20, &qword_100517080);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A20, &qword_100517080);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100193FD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100194108, 0, 0);
}

uint64_t sub_100194108()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A18, &qword_100517040);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A18, &qword_100517040);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A18, &qword_100517040);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A18, &qword_100517040);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100194630;

  return v37(v0 + 128);
}

uint64_t sub_100194630()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001949A0;
  }

  else
  {
    v2 = sub_100194744;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100194744()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A18, &qword_100517040);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A18, &qword_100517040);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A18, &qword_100517040);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001949A0()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A18, &qword_100517040);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A18, &qword_100517040);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A18, &qword_100517040);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100194C8C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(sub_100194DB4, 0, 0);
}

uint64_t sub_100194DB4()
{
  v38 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  sub_1000108DC(v0 + 16, v0 + 208, &qword_100635A70, &qword_100517120);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A70, &qword_100517120);
    v20 = sub_1000343A8(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A70, &qword_100517120);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 880) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  sub_1000108DC(v0 + 304, v0 + 400, &qword_100635A70, &qword_100517120);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = sub_1004D9C0C();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_1001952C4;

  return v36(v0 + 112);
}

uint64_t sub_1001952C4()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_10019562C;
  }

  else
  {
    v2 = sub_1001953D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001953D8()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  sub_1000108DC(v0 + 688, v0 + 784, &qword_100635A70, &qword_100517120);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    sub_10001074C(v0 + 688, &qword_100635A70, &qword_100517120);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 688, &qword_100635A70, &qword_100517120);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10019562C()
{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  sub_1000108DC(v0 + 496, v0 + 592, &qword_100635A70, &qword_100517120);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_10001074C(v0 + 496, &qword_100635A70, &qword_100517120);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    sub_10001074C(v0 + 496, &qword_100635A70, &qword_100517120);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100195910(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100195A40, 0, 0);
}

uint64_t sub_100195A40()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A50, &qword_1005170F0);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A50, &qword_1005170F0);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A50, &qword_1005170F0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A50, &qword_1005170F0);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100195F68;

  return v37(v0 + 128);
}

uint64_t sub_100195F68()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001962D8;
  }

  else
  {
    v2 = sub_10019607C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019607C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A50, &qword_1005170F0);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A50, &qword_1005170F0);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A50, &qword_1005170F0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001962D8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A50, &qword_1005170F0);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A50, &qword_1005170F0);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A50, &qword_1005170F0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001965C4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001966F4, 0, 0);
}

uint64_t sub_1001966F4()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A48, &qword_10051DF80);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A48, &qword_10051DF80);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A48, &qword_10051DF80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A48, &qword_10051DF80);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100196C1C;

  return v37(v0 + 128);
}

uint64_t sub_100196C1C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100196F8C;
  }

  else
  {
    v2 = sub_100196D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100196D30()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A48, &qword_10051DF80);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A48, &qword_10051DF80);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A48, &qword_10051DF80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100196F8C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A48, &qword_10051DF80);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A48, &qword_10051DF80);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A48, &qword_10051DF80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100197278(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001973A8, 0, 0);
}

uint64_t sub_1001973A8()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A40, &unk_1005170D0);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A40, &unk_1005170D0);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A40, &unk_1005170D0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A40, &unk_1005170D0);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1001978D0;

  return v37(v0 + 128);
}

uint64_t sub_1001978D0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100197C40;
  }

  else
  {
    v2 = sub_1001979E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001979E4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A40, &unk_1005170D0);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A40, &unk_1005170D0);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A40, &unk_1005170D0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100197C40()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A40, &unk_1005170D0);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A40, &unk_1005170D0);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A40, &unk_1005170D0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100197F2C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10019805C, 0, 0);
}

uint64_t sub_10019805C()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A38, &qword_10051DFD0);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A38, &qword_10051DFD0);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A38, &qword_10051DFD0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110, &qword_100515B20);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A38, &qword_10051DFD0);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100198584;

  return v37(v0 + 128);
}

uint64_t sub_100198584()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001988F4;
  }

  else
  {
    v2 = sub_100198698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100198698()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A38, &qword_10051DFD0);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A38, &qword_10051DFD0);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A38, &qword_10051DFD0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001988F4()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A38, &qword_10051DFD0);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A38, &qword_10051DFD0);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A38, &qword_10051DFD0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100198BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_1004D966C();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_100198CF8, 0, 0);
}

uint64_t sub_100198CF8()
{
  v32 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_1000108DC(v4, v0 + 16, &qword_100635DA8, &qword_100517A28);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    sub_10001074C(v0 + 16, &qword_100635DA8, &qword_100517A28);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635DA8, &qword_100517A28);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v20, &qword_100635110, &qword_100515B20);
  *(v0 + 1040) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1048) = v25;
  sub_1000108DC(v21, v0 + 272, &qword_100635DA8, &qword_100517A28);
  v26 = swift_allocObject();
  sub_100047F38(v0 + 272, v26 + 16, &qword_100635DA8, &qword_100517A28);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = sub_1004D9C0C();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_1001991E0;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_1001991E0()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_100199544;
  }

  else
  {
    v2 = sub_1001992F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001992F4()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  sub_1000108DC(v5, v0 + 784, &qword_100635DA8, &qword_100517A28);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    sub_10001074C(v0 + 784, &qword_100635DA8, &qword_100517A28);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_1000343A8(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    sub_100008D24(v13);

    v21(v20, v11);
  }

  else
  {
    sub_10001074C(v0 + 784, &qword_100635DA8, &qword_100517A28);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100199544()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_1000108DC(v5, v0 + 528, &qword_100635DA8, &qword_100517A28);
  swift_errorRetain();
  v6 = sub_1004D964C();
  v7 = sub_1004DDF7C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_10001074C(v0 + 528, &qword_100635DA8, &qword_100517A28);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_1000343A8(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v15 = sub_1004DD4DC();
    v17 = sub_1000343A8(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    sub_10001074C(v0 + 528, &qword_100635DA8, &qword_100517A28);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100199818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  v4[6] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100635B30, &unk_10051DEB0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1004D966C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001999BC, 0, 0);
}

uint64_t sub_1001999BC()
{
  v37 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_100035430(v2, qword_1006350F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_1000108DC(v5, v4, &qword_100635B30, &unk_10051DEB0);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_10001074C(v14, &qword_100635B30, &unk_10051DEB0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000343A8(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100008D24(v17);
  }

  else
  {
    sub_10001074C(v0[13], &qword_100635B30, &unk_10051DEB0);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100006F10(0, &qword_100635118, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_1004DE74C();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1004DE59C();

  sub_10001074C(v23, &qword_100635110, &qword_100515B20);
  v0[2] = v28;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_1004D9B0C();

  v0[3] = v29;
  sub_1000108DC(v25, v21, &qword_100635B30, &unk_10051DEB0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100047F38(v21, v31 + v30, &qword_100635B30, &unk_10051DEB0);
  sub_100004CB8(&qword_100635128, &qword_100515B28);
  sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_1004D9C0C();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_100199EC0;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_100199EC0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10019A234;
  }

  else
  {
    v2 = sub_100199FD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199FD4()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_100635B30, &unk_10051DEB0);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_100635B30, &unk_10051DEB0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_1000343A8(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100008D24(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_10001074C(v0[11], &qword_100635B30, &unk_10051DEB0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10019A234()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_100635B30, &unk_10051DEB0);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_100635B30, &unk_10051DEB0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_10001074C(v0[10], &qword_100635B30, &unk_10051DEB0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10019A528(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v21, &qword_1006359A8, &qword_10051E160);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    sub_10001074C(a2, &qword_1006359A8, &qword_10051E160);
    v18 = sub_1000343A8(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(a2, &qword_1006359A8, &qword_10051E160);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019A784(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v22, &qword_100635A70, &qword_100517120);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    sub_10001074C(a2, &qword_100635A70, &qword_100517120);
    v18 = sub_1000343A8(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(a2, &qword_100635A70, &qword_100517120);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019A9E0(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v23, &qword_100635DA8, &qword_100517A28);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_10001074C(v23, &qword_100635DA8, &qword_100517A28);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(v23, &qword_100635DA8, &qword_100517A28);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019AC38(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1001AC0DC(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  sub_10025A524(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_100008C70(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    sub_1001AC0DC(v5, type metadata accessor for Notice);
    return sub_100008D24(v12);
  }

  else
  {
    sub_1001AC0DC(v5, type metadata accessor for Notice);
    return sub_10001074C(v12, &qword_100635A30, &qword_100517090);
  }
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  return sub_1004DF2BC();
}

Swift::Int sub_10019AE08()
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  return sub_1004DF2BC();
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = *(sub_100004CB8(&qword_1006389A0, &unk_10051DBC0) - 8);
  __chkstk_darwin();
  v7 = v18 - v6;
  if (!(a2 >> 14))
  {
    v9 = a1;
    v10 = 0xE000000000000000;
    if (v9 == 5)
    {
      v11._countAndFlagsBits = 0;
LABEL_31:
      v20 = 0x6164644120959EE2;
      v21 = 0xAB00000000656C62;
      v11._object = v10;
      sub_1004DD5FC(v11);

      return v20;
    }

    v14 = 0xD000000000000016;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1004DEAAC(29);

    v20 = 0xD00000000000001BLL;
    v21 = 0x80000001004EFFC0;
    if (v9 <= 1)
    {
      if (v9)
      {
        v15 = "Cloud Library Initial Import";
        v14 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v17 = "Cloud Library Required";
    }

    else
    {
      if (v9 == 2)
      {
        v15 = "Unadded Tracks Present";
        v14 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v9 == 3)
      {
        v15 = "hat requires an iCloud account.";
        v14 = 0xD000000000000015;
LABEL_30:
        v19._countAndFlagsBits = v14;
        v19._object = (v15 | 0x8000000000000000);
        sub_100004CB8(&unk_100639EB0, &qword_100518300);
        v23._countAndFlagsBits = sub_1004DD4DC();
        sub_1004DD5FC(v23);

        v11._countAndFlagsBits = v20;
        v10 = v21;
        goto LABEL_31;
      }

      v17 = "Unadded Tracks Present";
    }

    v15 = (v17 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v8 = 9;
      return v8 | 0x1000000000000014;
    }

    if (a2)
    {
      v8 = 10;
      return v8 | 0x1000000000000014;
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    v16 = v5;
    sub_1004DEAAC(24);

    v20 = 0x1000000000000014;
    v21 = 0x80000001004EFF40;
    v18[1] = a1;
    sub_1004D832C();
    sub_10019B2C4();
    sub_1004D7F6C();
    sub_100042B08(&qword_1006389B0, &qword_1006389A0, &unk_10051DBC0, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    sub_1004DD1EC();
    (*(v4 + 8))(v7, v16);
    sub_1004DD5FC(v19);

    v22._countAndFlagsBits = 8233;
    v22._object = 0xE200000000000000;
    sub_1004DD5FC(v22);
    return v20;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
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

unint64_t sub_10019B2C4()
{
  result = qword_1006389A8;
  if (!qword_1006389A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006389A8);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = sub_1004DCEEC();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = sub_100004CB8(&qword_100636188, &qword_1005182E8);
  *(v9 + 1544) = swift_task_alloc();
  sub_100004CB8(&qword_100636058, &unk_10051DBE0);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_1004DD05C();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_1004DC4DC();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  *(v9 + 1648) = swift_task_alloc();
  sub_100004CB8(&qword_100635248, &unk_100516140);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_1004D82AC();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_1004D83FC();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_1004DD3EC();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_1004DC6CC();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_1004DC4EC();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_1004DC6DC();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = sub_1004DDA4C();
  *(v9 + 2016) = sub_1004DDA3C();
  v21 = sub_1004DD9BC();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_10019BA78, v21, v20);
}

uint64_t sub_10019BA78()
{
  v555 = v0;
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v520 = sub_1004D966C();
  *(v0 + 2040) = sub_100035430(v520, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v526 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v516 = v0;
    v14 = swift_slowAlloc();
    v554[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = sub_1004DD4DC();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_1000343A8(v15, v17, v554);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    sub_100008D24(v14);
    v0 = v516;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = sub_1004D964C();
  v22 = sub_1004DDF9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v554[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_1000343A8(v27, v28, v554);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    sub_100008D24(v26);
  }

  v30 = sub_1004D964C();
  v31 = sub_1004DDF9C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v554[0] = v36;
    *v35 = 136446210;
    sub_1004DC74C();
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v37 = sub_1004DEFFC();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_1000343A8(v37, v39, v554);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    sub_100008D24(v36);
  }

  v41 = sub_1004D964C();
  v42 = sub_1004DDF9C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v554[0] = v47;
    *v46 = 136446210;
    sub_1004DC6FC();
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v48 = sub_1004DEFFC();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_1000343A8(v48, v50, v554);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    sub_100008D24(v47);
  }

  v52 = sub_1004D964C();
  v53 = sub_1004DDF9C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v554[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = sub_1004DC62C();
    v57 = sub_1000343A8(v55, v56, v554);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_1004DC5FC();
    v60 = sub_1000343A8(v58, v59, v554);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = sub_1004D964C();
        v63 = sub_1004DDF9C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_1001A075C;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = sub_1004D964C();
      v114 = sub_1004DDF9C();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      sub_1004DC6FC();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = sub_1004D964C();
          v134 = sub_1004DDF9C();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v533 = swift_slowAlloc();
            v540 = swift_slowAlloc();
            v554[0] = v540;
            *v533 = 136446210;
            sub_1001ABC10(&qword_1006389D0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v528 = v134;
            v139 = sub_1004DEFFC();
            v141 = v140;
            v521 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_1000343A8(v139, v141, v554);

            *(v533 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v521, v528, "|—| Showing alert for reason: %{public}s", v533, 0xCu);
            sub_100008D24(v540);
          }

          else
          {

            v450 = *(v137 + 8);
            v450(v136, v138);
            v143 = v450;
          }

          v451 = *(v0 + 1640);
          v452 = *(v0 + 1608);
          v453 = sub_1000EA900((v0 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v453, *(v0 + 1080), 1, 0, 0);

          sub_10001074C(v0 + 1120, &qword_1006368B0, &qword_10051DC20);
          v143(v451, v452);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v403 = sub_1004D964C();
          v404 = sub_1004DDF7C();
          v405 = os_log_type_enabled(v403, v404);
          v406 = *(v0 + 1640);
          v407 = *(v0 + 1624);
          v408 = *(v0 + 1616);
          v409 = *(v0 + 1608);
          if (v405)
          {
            v549 = *(v0 + 1640);
            v410 = swift_slowAlloc();
            v537 = swift_slowAlloc();
            v554[0] = v537;
            *v410 = 136446210;
            sub_1001ABC10(&qword_1006389D0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v411 = sub_1004DEFFC();
            v413 = v412;
            v414 = *(v408 + 8);
            v414(v407, v409);
            v415 = sub_1000343A8(v411, v413, v554);

            *(v410 + 4) = v415;
            _os_log_impl(&_mh_execute_header, v403, v404, "|—| Unhandled alert for reason: %{public}s", v410, 0xCu);
            sub_100008D24(v537);

            v414(v549, v409);
          }

          else
          {

            v462 = *(v408 + 8);
            v462(v407, v409);
            v462(v406, v409);
          }
        }
      }

      else
      {
        v241 = *(v121 + 8);
        v241(*(v0 + 1904), v122);

        v242 = sub_1004D964C();
        v243 = sub_1004DDF9C();

        if (os_log_type_enabled(v242, v243))
        {
          v244 = *(v0 + 1912);
          v245 = *(v0 + 1888);
          v246 = swift_slowAlloc();
          v544 = swift_slowAlloc();
          v554[0] = v544;
          *v246 = 136446210;
          sub_1004DC6FC();
          sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v247 = sub_1004DEFFC();
          v249 = v248;
          v241(v244, v245);
          v250 = sub_1000343A8(v247, v249, v554);

          *(v246 + 4) = v250;
          _os_log_impl(&_mh_execute_header, v242, v243, "|—| No reasons found, download status does not match UI state %{public}s", v246, 0xCu);
          sub_100008D24(v544);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = sub_1004D964C();
        v99 = sub_1004DDF9C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v538 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v526)(v101, v108, v102);
        sub_1000699E8(v107, v0 + 688);
        sub_1001AAFCC(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v538, v110, &v551);
        *(v0 + 2144) = *(&v551 + 1);
        *(v0 + 2152) = *(&v552 + 1);
        *(v0 + 2160) = *(&v553 + 1);
        v111 = v552;
        *(v0 + 384) = v551;
        *(v0 + 400) = v111;
        *(v0 + 416) = v553;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_10006D3E4;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_100517A98;
        v539 = sub_100178A70;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_100517AA0;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_1001A02C0;
        goto LABEL_36;
      }

      v217 = sub_1004D964C();
      v218 = sub_1004DDF9C();
      if (os_log_type_enabled(v217, v218))
      {
        v220 = swift_slowAlloc();
        *v220 = 0;
        _os_log_impl(&_mh_execute_header, v217, v218, "|—● Is Downloaded: Prompting for delete/remove alert", v220, 2u);
      }

      v221 = *(v0 + 1984);
      v222 = *(v0 + 1952);
      v223 = *(v0 + 1592);
      v224 = *(v0 + 1440);

      (v526)(v221, v224, v222);
      v225 = swift_dynamicCast();
      v226 = *(v223 + 56);
      if ((v225 & 1) == 0)
      {
        v361 = *(v0 + 1576);
        v226(v361, 1, 1, *(v0 + 1584));
        sub_10001074C(v361, &qword_100637A00, &qword_100518D00);
        v240 = v526;
LABEL_134:
        v439 = *(v0 + 1992);
        v440 = *(v0 + 1952);
        v441 = *(v0 + 1648);
        v442 = *(v0 + 1504);
        v443 = *(v0 + 1488);
        v444 = *(v0 + 1480);
        v445 = *(v0 + 1456);
        (v240)(v439, *(v0 + 1440), v440);
        sub_1000699E8(v445, v0 + 496);
        sub_1001AAFCC(v444, v441);
        v446 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v446 - 8) + 56))(v441, 0, 1, v446);
        sub_1004DC7AC();
        v447 = sub_1004DC79C();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v439, v447, v0 + 496, v441, v440, v443, *(v442 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v448 = swift_allocObject();
        *(v448 + 16) = &unk_100517740;
        *(v448 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_100083718;
        *(v0 + 240) = &unk_100517758;
        *(v0 + 248) = v448;
        *(v0 + 256) = &unk_100517748;
        *(v0 + 264) = 0;
        v449 = swift_task_alloc();
        *(v0 + 2216) = v449;
        *v449 = v0;
        v449[1] = sub_1001A1058;

        return sub_10018848C(0);
      }

      v227 = *(v0 + 1600);
      v228 = *(v0 + 1592);
      v229 = *(v0 + 1584);
      v230 = *(v0 + 1576);
      v524 = *(v0 + 1568);
      v231 = *(v0 + 1560);
      v232 = *(v0 + 1544);
      v543 = *(v0 + 1536);
      v233 = *(v0 + 1520);
      v234 = *(v0 + 1512);
      v226(v230, 0, 1, v229);
      (*(v228 + 32))(v227, v230, v229);
      v235 = v232;
      sub_1004DCF0C();
      (*(v233 + 104))(v231, enum case for Playlist.Variant.favoriteSongs(_:), v234);
      (*(v233 + 56))(v231, 0, 1, v234);
      v236 = *(v543 + 12);
      sub_1000108DC(v524, v232, &qword_100636058, &unk_10051DBE0);
      sub_1000108DC(v231, v232 + v236, &qword_100636058, &unk_10051DBE0);
      v237 = *(v233 + 48);
      if (v237(v235, 1, v234) == 1)
      {
        v238 = *(v0 + 1568);
        v239 = *(v0 + 1512);
        sub_10001074C(*(v0 + 1560), &qword_100636058, &unk_10051DBE0);
        sub_10001074C(v238, &qword_100636058, &unk_10051DBE0);
        if (v237(v235 + v236, 1, v239) == 1)
        {
          sub_10001074C(*(v0 + 1544), &qword_100636058, &unk_10051DBE0);
          v240 = v526;
LABEL_152:
          v468 = *(v0 + 1992);
          v469 = *(v0 + 1952);
          v470 = *(v0 + 1648);
          v471 = *(v0 + 1504);
          v472 = *(v0 + 1488);
          v473 = *(v0 + 1480);
          v474 = *(v0 + 1456);
          (v240)(v468, *(v0 + 1440), v469);
          sub_1000699E8(v474, v0 + 592);
          sub_1001AAFCC(v473, v470);
          v475 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v475 - 8) + 56))(v470, 0, 1, v475);
          sub_1004DC7AC();
          v476 = sub_1004DC79C();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v468, v476, 1, v0 + 592, v470, v469, v472, *(v471 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_10006D3E4;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_100517E00;
          v539 = sub_100179F50;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_100517E08;
          *(v0 + 376) = 0;
          v477 = swift_task_alloc();
          *(v0 + 2200) = v477;
          *v477 = v0;
          v477[1] = sub_1001A0BBC;
LABEL_36:

          return v539();
        }
      }

      else
      {
        v432 = *(v0 + 1512);
        sub_1000108DC(*(v0 + 1544), *(v0 + 1552), &qword_100636058, &unk_10051DBE0);
        v433 = v237(v235 + v236, 1, v432);
        v434 = *(v0 + 1568);
        v435 = *(v0 + 1560);
        v436 = *(v0 + 1552);
        if (v433 != 1)
        {
          v550 = *(v0 + 1544);
          v463 = *(v0 + 1528);
          v464 = *(v0 + 1520);
          v465 = *(v0 + 1512);
          (*(v464 + 32))(v463, v235 + v236, v465);
          sub_1001ABC10(&qword_1006372A0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v466 = sub_1004DD35C();
          v467 = *(v464 + 8);
          v467(v463, v465);
          sub_10001074C(v435, &qword_100636058, &unk_10051DBE0);
          sub_10001074C(v434, &qword_100636058, &unk_10051DBE0);
          v467(v436, v465);
          sub_10001074C(v550, &qword_100636058, &unk_10051DBE0);
          v240 = v526;
          if (v466)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v437 = *(v0 + 1520);
        v438 = *(v0 + 1512);
        sub_10001074C(*(v0 + 1560), &qword_100636058, &unk_10051DBE0);
        sub_10001074C(v434, &qword_100636058, &unk_10051DBE0);
        (*(v437 + 8))(v436, v438);
      }

      sub_10001074C(*(v0 + 1544), &qword_100636188, &qword_1005182E8);
      v240 = v526;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v180 = sub_1004D964C();
    v181 = sub_1004DDF9C();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&_mh_execute_header, v180, v181, "|—● Nothing to Perform: Actionable State is unknown", v182, 2u);
    }

    sub_1001AAF78();
    v183 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  sub_1004DC74C();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = sub_1004D964C();
    v77 = sub_1004DDF9C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = sub_1004D964C();
    v85 = sub_1004DDF9C();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v532 = v83;
      v90 = swift_slowAlloc();
      v527 = swift_slowAlloc();
      v554[0] = v527;
      *v90 = 136446210;
      sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v517 = v85;
      v91 = sub_1004DEFFC();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_1000343A8(v91, v93, v554);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v517, "|—| Reason: %{public}s", v90, 0xCu);
      sub_100008D24(v527);

      v83 = v532;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v545 = v94;
    *(v0 + 2064) = v94;
    v251 = *(v0 + 1864);
    v252 = *(v0 + 1856);
    v253 = *(v0 + 1848);
    v83(v251, *(v0 + 1880), v253);
    v254 = (*(v252 + 88))(v251, v253);
    if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v255 = sub_1004D964C();
      v256 = sub_1004DDF9C();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 0;
        _os_log_impl(&_mh_execute_header, v255, v256, "|—| Presenting Explicit Restriction alert", v257, 2u);
      }

      v258 = *(v0 + 1456);

      sub_1001362BC(0, v0 + 1192);
      v259 = sub_1000EA900((v0 + 1192), 0, 1);
      v260 = v259;
      v261 = *(v0 + 1224);
      v262 = *(v258 + 80);
      if (v262)
      {
        v263 = *(v258 + 88);
        v264 = qword_100633E08;

        if (v264 != -1)
        {
          swift_once();
        }

        sub_100035430(v520, qword_10063B820);
        v265 = sub_1004D964C();
        v266 = sub_1004DDF9C();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = swift_slowAlloc();
          *v267 = 0;
          _os_log_impl(&_mh_execute_header, v265, v266, "Deferring presentation…", v267, 2u);
        }

        v534 = *(v0 + 1880);
        v268 = *(v0 + 1848);
        v269 = *(v0 + 1456);

        v270 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_100257E18;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_100258DB8;
        *(v0 + 1336) = &unk_1005E0C68;
        v271 = _Block_copy((v0 + 1312));
        v272 = [v270 initWithTimeout:v271 interruptionHandler:10.0];
        _Block_release(v271);

        sub_1000699E8(v269, v0 + 880);
        v273 = swift_allocObject();
        *(v273 + 16) = v272;
        sub_10006A8BC(v0 + 880, v273 + 24);
        *(v273 + 120) = v260;
        *(v273 + 128) = v261;
        *(v273 + 129) = 1;
        *(v273 + 136) = 0;
        *(v273 + 144) = 0;
        v274 = v272;
        v275 = v260;
        v262(v269, v275, sub_10007DCE4, v273);
        sub_10000DE74(v262, v263);

        sub_100074384(v0 + 1192);
        v276 = v534;
        v277 = v268;
        goto LABEL_144;
      }

      v416 = *(v0 + 1880);
      v417 = *(v0 + 1848);
      sub_1002562F8(v259, *(v0 + 1224), 1, 0, 0);

      sub_100074384(v0 + 1192);
      v276 = v416;
LABEL_143:
      v277 = v417;
LABEL_144:
      (v545)(v276, v277);
LABEL_145:
      v458 = sub_1004D964C();
      v459 = sub_1004DDF9C();
      if (os_log_type_enabled(v458, v459))
      {
        v460 = swift_slowAlloc();
        *v460 = 0;
        _os_log_impl(&_mh_execute_header, v458, v459, "╰ ✅ Succeeded", v460, 2u);
      }

      v461 = *(v0 + 8);

      return v461();
    }

    if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v362 = sub_1004D964C();
        v363 = sub_1004DDF9C();
        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          *v364 = 0;
          _os_log_impl(&_mh_execute_header, v362, v363, "|—| Presenting library import in progress alert", v364, 2u);
        }

        v365 = *(v0 + 1840);
        v366 = *(v0 + 1832);
        v367 = *(v0 + 1824);
        v368 = *(v0 + 1816);

        sub_1004DD37C();
        v511 = *(v367 + 16);
        v511(v366, v365, v368);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v369 = *(v0 + 1840);
        v370 = *(v0 + 1832);
        v371 = *(v0 + 1824);
        v372 = *(v0 + 1816);
        v507 = *(v0 + 1800);
        v515 = *(v0 + 1792);
        v519 = *(v0 + 1784);
        v547 = *(v0 + 1456);
        v373 = qword_100671958;
        sub_1004D838C();
        v374 = v373;
        v375 = sub_1004DD4AC();
        v531 = v376;
        v535 = v375;
        v377 = *(v371 + 8);
        v377(v369, v372);
        sub_1004DD37C();
        v511(v370, v369, v372);
        sub_1004D838C();
        v378 = sub_1004DD4AC();
        v498 = v379;
        v503 = v378;
        v377(v369, v372);
        sub_1004DD37C();
        v511(v370, v369, v372);
        sub_1004D838C();
        v380 = sub_1004DD4AC();
        v382 = v381;
        v377(v369, v372);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v383 = sub_1004D827C();
        v385 = v384;
        (*(v515 + 8))(v507, v519);
        sub_100004CB8(&qword_100634F40, &qword_100515800);
        v386 = swift_allocObject();
        *(v386 + 16) = xmmword_100511DA0;
        *(v386 + 32) = v383;
        *(v386 + 40) = v385;
        *(v386 + 48) = v380;
        *(v386 + 56) = v382;
        *(v386 + 64) = 2;
        *(v386 + 72) = 0;
        *(v386 + 80) = 0;
        LOBYTE(v554[0]) = 1;
        *(v0 + 976) = v535;
        *(v0 + 984) = v531;
        *(v0 + 992) = v503;
        *(v0 + 1000) = v498;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v386;
        *(v0 + 1040) = 0;

        v387 = sub_1000EA900((v0 + 976), 0, 1);
        v388 = v387;
        v389 = *(v547 + 10);
        if (v389)
        {
          v390 = *(v547 + 11);
          v391 = qword_100633E08;

          if (v391 != -1)
          {
            swift_once();
          }

          sub_100035430(v520, qword_10063B820);
          v392 = sub_1004D964C();
          v393 = sub_1004DDF9C();
          if (os_log_type_enabled(v392, v393))
          {
            v394 = swift_slowAlloc();
            *v394 = 0;
            _os_log_impl(&_mh_execute_header, v392, v393, "Deferring presentation…", v394, 2u);
          }

          v395 = *(v0 + 1856);
          v536 = *(v0 + 1848);
          v548 = *(v0 + 1880);
          v396 = *(v0 + 1456);

          v397 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_100257E18;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_100258DB8;
          *(v0 + 1288) = &unk_1005E0C18;
          v398 = _Block_copy((v0 + 1264));
          v399 = [v397 initWithTimeout:v398 interruptionHandler:10.0];
          _Block_release(v398);

          sub_1000699E8(v396, v0 + 784);
          v400 = swift_allocObject();
          *(v400 + 16) = v399;
          sub_10006A8BC(v0 + 784, v400 + 24);
          *(v400 + 120) = v388;
          *(v400 + 128) = 257;
          *(v400 + 136) = 0;
          *(v400 + 144) = 0;
          v401 = v399;
          v402 = v388;
          v389(v396, v402, sub_10007DB94, v400);
          sub_10000DE74(v389, v390);

          sub_100074384(v0 + 976);

          (*(v395 + 8))(v548, v536);
        }

        else
        {
          v484 = *(v0 + 1880);
          v485 = *(v0 + 1856);
          v486 = *(v0 + 1848);
          sub_1002562F8(v387, 1, 1, 0, 0);

          sub_100074384(v0 + 976);

          (*(v485 + 8))(v484, v486);
        }

        goto LABEL_145;
      }

      if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v478 = sub_1004D964C();
        v479 = sub_1004DDF5C();
        if (os_log_type_enabled(v478, v479))
        {
          v480 = swift_slowAlloc();
          *v480 = 0;
          _os_log_impl(&_mh_execute_header, v478, v479, "|—| Unaddable reason is not supported by the UI", v480, 2u);
        }

        v481 = *(v0 + 1880);
        v482 = *(v0 + 1864);
        v483 = *(v0 + 1848);

        sub_1001AAF78();
        v183 = swift_allocError();
        swift_willThrow();
        (v545)(v481, v483);
        (v545)(v482, v483);
LABEL_54:
        *(v0 + 2232) = v183;
        *(v0 + 1408) = v183;
        swift_errorRetain();
        sub_100004CB8(&qword_100638980, &qword_100515B30);
        v184 = swift_dynamicCast();
        v185 = *(v0 + 2048);
        v186 = *(v0 + 1952);
        v187 = *(v0 + 1440);
        if (v184)
        {
          v188 = *(v0 + 1976);

          v185(v188, v187, v186);

          v189 = sub_1004D964C();
          v190 = sub_1004DDF7C();

          if (os_log_type_enabled(v189, v190))
          {
            v513 = *(v0 + 2048);
            v505 = *(v0 + 1992);
            v509 = *(v0 + 1976);
            v523 = *(v0 + 1960);
            v191 = *(v0 + 1944);
            v192 = *(v0 + 1928);
            v193 = *(v0 + 1920);
            v194 = *(v0 + 1912);
            v195 = *(v0 + 1896);
            v496 = *(v0 + 1888);
            v501 = *(v0 + 1952);
            v542 = v190;
            v196 = *(v0 + 1432);
            v197 = *(v0 + 1402);
            v529 = v189;
            v198 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v198 = 136447234;
            v199 = MusicLibrary.ActionableState.description.getter(v196, v197);
            v201 = sub_1000343A8(v199, v200, v554);

            *(v198 + 4) = v201;
            *(v198 + 12) = 2082;
            sub_1004DC74C();
            sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v202 = sub_1004DEFFC();
            v204 = v203;
            (*(v192 + 8))(v191, v193);
            v205 = sub_1000343A8(v202, v204, v554);

            *(v198 + 14) = v205;
            *(v198 + 22) = 2082;
            sub_1004DC6FC();
            sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v206 = sub_1004DEFFC();
            v208 = v207;
            (*(v195 + 8))(v194, v496);
            v209 = sub_1000343A8(v206, v208, v554);

            *(v198 + 24) = v209;
            *(v198 + 32) = 2082;
            v513(v505, v509, v501);
            v210 = sub_1004DD4DC();
            v212 = v211;
            (*(v523 + 8))(v509, v501);
            v213 = sub_1000343A8(v210, v212, v554);

            *(v198 + 34) = v213;
            *(v198 + 42) = 2082;
            v214 = sub_1004DD4DC();
            v216 = sub_1000343A8(v214, v215, v554);

            *(v198 + 44) = v216;
            _os_log_impl(&_mh_execute_header, v529, v542, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v198, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v418 = *(v0 + 1976);
            v419 = *(v0 + 1960);
            v420 = *(v0 + 1952);

            (*(v419 + 8))(v418, v420);
          }

          *(v0 + 2240) = sub_1001AAF78();
          v421 = swift_allocError();
          *(v0 + 2248) = v421;
          v422 = swift_task_alloc();
          *(v0 + 2256) = v422;
          *v422 = v0;
          v422[1] = sub_1001A118C;
          v423 = *(v0 + 1456);
          v424 = *(v0 + 1448);
          v425 = *(v0 + 1432);
          v426 = *(v0 + 1402);
          v427 = v421;
        }

        else
        {
          v334 = *(v0 + 1968);

          v185(v334, v187, v186);

          swift_errorRetain();
          v335 = sub_1004D964C();
          v336 = sub_1004DDF7C();

          if (os_log_type_enabled(v335, v336))
          {
            v514 = *(v0 + 2048);
            v506 = *(v0 + 1992);
            v510 = *(v0 + 1968);
            v525 = *(v0 + 1960);
            v337 = *(v0 + 1944);
            v338 = *(v0 + 1928);
            v339 = *(v0 + 1920);
            v497 = *(v0 + 1896);
            v502 = *(v0 + 1952);
            v492 = *(v0 + 1912);
            v494 = *(v0 + 1888);
            v546 = v336;
            v340 = *(v0 + 1432);
            v341 = *(v0 + 1402);
            v530 = v335;
            v342 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v342 = 136447234;
            v343 = MusicLibrary.ActionableState.description.getter(v340, v341);
            v345 = sub_1000343A8(v343, v344, v554);

            *(v342 + 4) = v345;
            *(v342 + 12) = 2082;
            sub_1004DC74C();
            sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v346 = sub_1004DEFFC();
            v348 = v347;
            (*(v338 + 8))(v337, v339);
            v349 = sub_1000343A8(v346, v348, v554);

            *(v342 + 14) = v349;
            *(v342 + 22) = 2082;
            sub_1004DC6FC();
            sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v350 = sub_1004DEFFC();
            v352 = v351;
            (*(v497 + 8))(v492, v494);
            v353 = sub_1000343A8(v350, v352, v554);

            *(v342 + 24) = v353;
            *(v342 + 32) = 2082;
            v514(v506, v510, v502);
            v354 = sub_1004DD4DC();
            v356 = v355;
            (*(v525 + 8))(v510, v502);
            v357 = sub_1000343A8(v354, v356, v554);

            *(v342 + 34) = v357;
            *(v342 + 42) = 2082;
            *(v0 + 1416) = v183;
            swift_errorRetain();
            v358 = sub_1004DD4DC();
            v360 = sub_1000343A8(v358, v359, v554);

            *(v342 + 44) = v360;
            _os_log_impl(&_mh_execute_header, v530, v546, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v342, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v428 = *(v0 + 1968);
            v429 = *(v0 + 1960);
            v430 = *(v0 + 1952);

            (*(v429 + 8))(v428, v430);
          }

          v431 = swift_task_alloc();
          *(v0 + 2264) = v431;
          *v431 = v0;
          v431[1] = sub_1001A161C;
          v423 = *(v0 + 1456);
          v424 = *(v0 + 1448);
          v425 = *(v0 + 1432);
          v426 = *(v0 + 1402);
          v427 = v183;
        }

        return sub_1001A4644(v427, v425, v426, v424, v423);
      }

      v454 = sub_1004D964C();
      v455 = sub_1004DDF9C();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&_mh_execute_header, v454, v455, "|—| Presenting upsell", v456, 2u);
      }

      v457 = *(v0 + 1880);
      v417 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_1000741FC(v0 + 1360);
      v276 = v457;
      goto LABEL_143;
    }

    v285 = sub_1004D964C();
    v286 = sub_1004DDF9C();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "|—| Presenting Cloud Library Requirement alert", v287, 2u);
    }

    *(v0 + 2072) = sub_1004DDA3C();
    v289 = sub_1004DD9BC();
    *(v0 + 2080) = v289;
    *(v0 + 2088) = v288;

    return _swift_task_switch(sub_10019F7DC, v289, v288);
  }

  else
  {
    v145 = sub_1004D964C();
    v146 = sub_1004DDF9C();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v495 = *(v0 + 1752);
    v499 = *(v0 + 1712);
    v504 = *(v0 + 1704);
    v156 = *(v0 + 1488);
    v157 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_10019AC38(v152, 0);
    sub_1001AC0DC(v152, type metadata accessor for Notice.Variant);
    v158 = *(v156 + 8);
    v159 = MusicItem.metricsTargetIdentifier.getter(v151, v158);
    v490 = v160;
    v491 = v159;
    v161 = sub_1004D809C();
    v488 = *(*(v161 - 8) + 56);
    v489 = v161;
    v488(v153, 1, 1);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1005126C0;
    *(v162 + 32) = MusicItem.metricsContentType.getter(v151, v158);
    *(v162 + 40) = v163;
    *(v162 + 48) = 0;
    *(v162 + 56) = 0;
    *(v162 + 64) = 0;
    *(v162 + 72) = 1;
    v512 = sub_10004B4B4(v162);
    v522 = v164;
    v541 = v165;
    v518 = v166;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000108DC(v153, v495, &qword_100634B30, &unk_100513D70);
    v167 = type metadata accessor for Actions.MetricsReportingContext(0);
    v168 = *(v157 + v167[7]);
    v170 = *v157;
    v169 = v157[1];
    sub_1000108DC(v157 + v167[5], v499, &qword_100635248, &unk_100516140);
    v508 = v167;
    v493 = *(v157 + v167[8]);
    *(v154 + v155[19]) = 0;
    v171 = (v154 + v155[20]);
    *v171 = 0;
    v171[1] = 0;
    *v154 = v491;
    *(v154 + 8) = v490;
    *(v154 + 16) = 773;
    sub_100047F38(v495, v154 + v155[7], &qword_100634B30, &unk_100513D70);
    *(v154 + v155[8]) = v168;
    v172 = (v154 + v155[9]);
    *v172 = v170;
    v172[1] = v169;
    v173 = v154 + v155[10];
    *v173 = v512;
    *(v173 + 8) = v522;
    *(v173 + 16) = v541;
    *(v173 + 24) = v518;
    sub_1000108DC(v499, v504, &qword_100635248, &unk_100516140);
    v174 = type metadata accessor for MetricsEvent.Page(0);
    v500 = *(*(v174 - 1) + 48);
    v175 = v500(v504, 1, v174);
    v176 = *(v0 + 1704);
    if (v175 == 1)
    {

      sub_100046F14(v170, v169);

      v177 = v512;
      sub_100047EC8(v512, v522, v541, v518, SBYTE1(v518));
      sub_10001074C(v176, &qword_100635248, &unk_100516140);
      v178 = 0;
      v179 = 0;
    }

    else
    {
      v178 = *v176;
      v179 = v176[1];

      sub_100046F14(v170, v169);

      v177 = v512;
      sub_100047EC8(v512, v522, v541, v518, SBYTE1(v518));

      sub_1001AC0DC(v176, type metadata accessor for MetricsEvent.Page);
    }

    v278 = *(v0 + 1712);
    v279 = *(v0 + 1696);
    v280 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v280 = v178;
    v280[1] = v179;
    sub_1000108DC(v278, v279, &qword_100635248, &unk_100516140);
    v281 = v500(v279, 1, v174);
    v282 = *(v0 + 1696);
    if (v281 == 1)
    {
      sub_10001074C(*(v0 + 1696), &qword_100635248, &unk_100516140);
      v283 = 0;
      v284 = 0;
    }

    else
    {
      v283 = *(v282 + 16);
      v284 = *(v282 + 24);

      sub_1001AC0DC(v282, type metadata accessor for MetricsEvent.Page);
    }

    v290 = *(v0 + 1712);
    v291 = *(v0 + 1688);
    v292 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v292 = v283;
    v292[1] = v284;
    sub_1000108DC(v290, v291, &qword_100635248, &unk_100516140);
    v293 = v500(v291, 1, v174);
    v294 = *(v0 + 1744);
    v295 = *(v0 + 1688);
    if (v293 == 1)
    {
      sub_10001074C(*(v0 + 1688), &qword_100635248, &unk_100516140);
      (v488)(v294, 1, 1, v489);
    }

    else
    {
      sub_1000108DC(v295 + v174[6], *(v0 + 1744), &qword_100634B30, &unk_100513D70);
      sub_1001AC0DC(v295, type metadata accessor for MetricsEvent.Page);
    }

    v296 = *(v0 + 1712);
    v297 = *(v0 + 1680);
    sub_100047F38(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_100634B30, &unk_100513D70);
    sub_1000108DC(v296, v297, &qword_100635248, &unk_100516140);
    v298 = v500(v297, 1, v174);
    v299 = *(v0 + 1680);
    if (v298 == 1)
    {
      sub_10001074C(*(v0 + 1680), &qword_100635248, &unk_100516140);
      v300 = 0;
    }

    else
    {
      v300 = *(v299 + v174[7]);

      sub_1001AC0DC(v299, type metadata accessor for MetricsEvent.Page);
    }

    v301 = *(v0 + 1712);
    v302 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v300;
    sub_1000108DC(v301, v302, &qword_100635248, &unk_100516140);
    v303 = v500(v302, 1, v174);
    v304 = *(v0 + 1672);
    if (v303 == 1)
    {
      sub_10001074C(v304, &qword_100635248, &unk_100516140);
      v305 = 1;
    }

    else
    {
      v305 = *(v304 + v174[9]);
      sub_1001AC0DC(v304, type metadata accessor for MetricsEvent.Page);
    }

    v306 = *(v0 + 1712);
    v307 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v305;
    sub_1000108DC(v306, v307, &qword_100635248, &unk_100516140);
    v308 = v500(v307, 1, v174);
    v309 = *(v0 + 1664);
    if (v308 == 1)
    {
      sub_10001074C(*(v0 + 1664), &qword_100635248, &unk_100516140);
      v310 = 0;
      v311 = 0;
    }

    else
    {
      v312 = (v309 + v174[8]);
      v310 = *v312;
      v311 = v312[1];

      sub_1001AC0DC(v309, type metadata accessor for MetricsEvent.Page);
    }

    v313 = *(v0 + 1712);
    v314 = *(v0 + 1656);
    v315 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v315 = v310;
    v315[1] = v311;
    sub_100047F38(v313, v314, &qword_100635248, &unk_100516140);
    v316 = v500(v314, 1, v174);
    v317 = *(v0 + 1656);
    if (v316 == 1)
    {
      sub_10001074C(v317, &qword_100635248, &unk_100516140);
      v318 = 2;
    }

    else
    {
      v318 = *(v317 + v174[11]);
      sub_1001AC0DC(v317, type metadata accessor for MetricsEvent.Page);
    }

    v319 = *(v0 + 1736);
    v320 = *(v0 + 1728);
    v321 = *(v0 + 1720);
    *(v320 + *(v321 + 68)) = v318;
    *(v320 + *(v321 + 44)) = v493;
    sub_100047FA0(v320, v319);
    if (qword_100633B50 != -1)
    {
      swift_once();
    }

    v322 = *(v0 + 1952);
    v323 = *(v0 + 1760);
    v324 = *(v0 + 1736);
    v325 = *(v0 + 1480);
    v326 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v324, *(v325 + v508[6]), *(v325 + v508[6] + 8), *(v325 + v508[9]), *(v325 + v508[9] + 8), *(v325 + v508[9] + 16));
    sub_1000742B8(v177, v522, v541, v518, SBYTE1(v518));
    sub_1001AC0DC(v324, type metadata accessor for MetricsEvent.Click);
    sub_10001074C(v323, &qword_100634B30, &unk_100513D70);
    sub_1001A9E7C(v322, v322);
    swift_allocObject();
    v327 = sub_1004DD89C();
    *(v0 + 2120) = v327;
    (v526)(v328, v326, v322);
    v329 = sub_1004DD98C();
    *(v0 + 1424) = v327;
    v330 = swift_task_alloc();
    *(v0 + 2128) = v330;
    WitnessTable = swift_getWitnessTable();
    *v330 = v0;
    v330[1] = sub_10019FE04;
    v332 = *(v0 + 1952);
    v333 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v329, v332, WitnessTable, v333);
  }
}

uint64_t sub_10019F7DC(uint64_t a1)
{
  v2 = v1[182];
  v3 = sub_1004DDA3C();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = sub_10019F8F0;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v4, &type metadata for Bool);
}

uint64_t sub_10019F8F0()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_10019FA50, v3, v2);
}

uint64_t sub_10019FA50()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_10019FAB8, v2, v1);
}

uint64_t sub_10019FAB8()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019FE04(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_1001A1A68;
  }

  else
  {

    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_10019FF48;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10019FF48()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001A02C0()
{
  v2 = *v1;
  v2[272] = v0;

  sub_10001074C((v2 + 48), &qword_100635A08, &qword_10051DC30);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A2324;
  }

  else
  {
    v5 = sub_1001A0414;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0414()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A075C()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_1001A2BE4;
  }

  else
  {
    v5 = sub_1001A0898;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0898()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A0BBC()
{
  v2 = *v1;
  v2[276] = v0;

  sub_10001074C((v2 + 34), &qword_100635A00, &qword_100517000);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A3484;
  }

  else
  {
    v5 = sub_1001A0D10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0D10()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001A1058()
{
  v2 = *v1;
  v2[278] = v0;

  sub_10001074C((v2 + 2), &qword_100635DA8, &qword_100517A28);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A3D40;
  }

  else
  {
    v5 = sub_1001AE17C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A118C()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1001A12D0, v3, v2);
}

uint64_t sub_1001A12D0()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A161C()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1001A173C, v3, v2);
}

uint64_t sub_1001A173C()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A1A68()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A2324()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A2BE4()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A3484()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A3D40()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.libraryActionableState);
}

uint64_t sub_1001A4644(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_1004D82AC();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_1004D809C();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_1004DDA4C();
  *(v5 + 376) = sub_1004DDA3C();
  v10 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001A481C, v10, v9);
}

uint64_t sub_1001A481C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_1004DEAAC(91);
  v70._countAndFlagsBits = 0xD000000000000032;
  v70._object = 0x80000001004F0190;
  sub_1004DD5FC(v70);
  *(v0 + 232) = v3;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  v71._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v71);

  v72._object = 0x80000001004F01D0;
  v72._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v72);
  v73._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_1004DD5FC(v73);

  v74._countAndFlagsBits = 0x53206D6574490A0ALL;
  v74._object = 0xEE00203A65746174;
  sub_1004DD5FC(v74);
  *(v0 + 240) = v1;
  sub_1004DC75C();

  v75._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v75);

  v76._countAndFlagsBits = 10;
  v76._object = 0xE100000000000000;
  sub_1004DD5FC(v76);
  v5 = sub_10005F25C(_swiftEmptyArrayStorage);
  if (qword_100634428 != -1)
  {
    v56 = v5;
    swift_once();
    v5 = v56;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_100165FA8(0xD00000000000001DLL, 0x80000001004F0170, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_1000108DC(v6, v7, &qword_100634B30, &unk_100513D70);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_10001074C(*(v0 + 368), &qword_100634B30, &unk_100513D70);
      sub_10001074C(v10, &qword_100634B30, &unk_100513D70);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_1004D7FDC(v15);
      v17 = v16;
      v18 = [v14 canOpenURL:v16];

      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      if (v18)
      {
        v64 = *(v0 + 368);
        v21 = *(v0 + 344);
        v67 = (v0 + 112);
        v23 = *(v0 + 320);
        v22 = *(v0 + 328);
        v24 = *(v0 + 304);
        v25 = *(v0 + 312);
        v63 = *(v0 + 296);
        (*(v22 + 16))(v21, v20, v23);
        v61 = v13;
        v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
        v66 = swift_allocObject();
        v61(v66 + v26, v21, v23);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v60 = sub_1004D827C();
        v28 = v27;
        v62 = *(v24 + 8);
        v62(v25, v63);
        (*(v22 + 8))(v20, v23);
        sub_10001074C(v64, &qword_100634B30, &unk_100513D70);
        if (qword_100633D10 != -1)
        {
          swift_once();
        }

        v65 = v28;
        v57 = sub_1004D966C();
        sub_100035430(v57, static Logger.libraryActionableState);
        v29 = sub_1004D964C();
        v30 = sub_1004DDF9C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "|—● Presenting Tap-To-Radar alert", v31, 2u);
        }

        v32 = *(v0 + 312);
        v33 = *(v0 + 296);
        v59 = *(v0 + 280);
        v34 = *(v0 + 256);

        *(v0 + 248) = v34;
        swift_errorRetain();
        v68 = sub_1004DD4DC();
        v58 = v35;
        sub_100004CB8(&qword_100634F40, &qword_100515800);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1005126C0;
        *(v36 + 32) = v60;
        *(v36 + 40) = v65;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_10051DF20;
        *(v36 + 80) = v66;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_1004D827C();
        v39 = v38;
        v62(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_100512850;
        *(v0 + 128) = v68;
        *(v0 + 136) = v58;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_1000EA900(v67, 0, 1);
        v41 = v40;
        v42 = *(v59 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = *(v59 + 88);
          v45 = qword_100633E08;

          if (v45 != -1)
          {
            swift_once();
          }

          sub_100035430(v57, qword_10063B820);
          v46 = sub_1004D964C();
          v47 = sub_1004DDF9C();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Deferring presentation…", v48, 2u);
          }

          v49 = *(v0 + 280);

          v50 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_100257E18;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_100258DB8;
          *(v0 + 208) = &unk_1005E1210;
          v51 = _Block_copy((v0 + 184));
          v52 = [v50 initWithTimeout:v51 interruptionHandler:10.0];
          _Block_release(v51);

          sub_1000699E8(v49, v0 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          sub_10006A8BC(v0 + 16, v53 + 24);
          *(v53 + 120) = v41;
          *(v53 + 128) = v43;
          *(v53 + 129) = 1;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          v54 = v52;
          v55 = v41;
          v42(v49, v55, sub_10007DCE4, v53);
          sub_10000DE74(v42, v44);

          sub_100074384(v67);
        }

        else
        {
          sub_1002562F8(v40, *(v0 + 144), 1, 0, 0);

          sub_100074384(v67);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_10001074C(v19, &qword_100634B30, &unk_100513D70);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1001AB084(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_1001AB084(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_1001A52A0(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v3 = &v9 - v2;
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_1004DC6DC();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_1004DC4EC();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1001A703C(v5, v3);

    sub_10001074C(v3, &qword_100638A88, &qword_10051DE88);
    return sub_10001074C(v5, &qword_100638A90, &unk_10051DE90);
  }

  return result;
}

uint64_t sub_1001A5458(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = sub_1004DCA0C();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v80 = &v66 - v4;
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v79 = &v66 - v5;
  sub_100004CB8(&qword_100635DF8, &qword_100517B58);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = sub_100004CB8(&qword_1006379F0, &qword_10051DEA0);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = sub_1004DD05C();
  __chkstk_darwin();
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v66 - v14;
  v15 = *(v2 + 80);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v18;
  __chkstk_darwin();
  v20 = &v66 - v19;
  __chkstk_darwin();
  v22 = &v66 - v21;
  v23 = v2;
  v25 = v24;
  v26 = *(v23 + 128);
  swift_beginAccess();
  v27 = *(v16 + 16);
  v27(v22, &v1[v26], v15);
  sub_1004DC72C();
  v87 = v1;
  v82 = v26;
  v28 = &v1[v26];
  v29 = v86;
  v90 = v27;
  v91 = v16 + 16;
  v27(v20, v28, v15);
  v89 = v15;
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v29, 1, 1, v12);
    v35 = &qword_100637A00;
    v36 = &qword_100518D00;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  sub_1004DD04C();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &qword_100635DF8;
    v36 = &qword_100517B58;
LABEL_5:
    v37 = v29;
LABEL_6:
    sub_10001074C(v37, v35, v36);
    v38 = v85;
    v39 = v87;
    goto LABEL_7;
  }

  v67 = v32;
  v68 = v25;
  v46 = *(v34 + 32);
  v47 = v75;
  v78 = (v34 + 32);
  v66 = v46;
  v46(v75, v29, v88);
  v90(v72, v74, v89);
  v48 = v73;
  v49 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v47, v88);
    (*(v68 + 8))(v81, v12);
    v31(v48, 1, 1, v12);
    v35 = &qword_100637A00;
    v36 = &qword_100518D00;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  sub_1004DD04C();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &qword_100635DF8;
    v36 = &qword_100517B58;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  sub_100042B08(&qword_100637A20, &qword_1006379F0, &qword_10051DEA0, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DDCFC();
  sub_1004DDD3C();
  v57 = sub_1004DDD2C();
  v39 = v87;
  if (!v57 && (sub_1004DDCFC(), sub_1004DDD3C(), sub_1004DDD2C() > 0) || (sub_1004DDCFC(), sub_1004DDD3C(), sub_1004DDD2C() >= 1) && (sub_1004DDCFC(), sub_1004DDD3C(), !sub_1004DDD2C()))
  {
    v60 = sub_1004DC6DC();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = sub_1004DC4EC();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    sub_1001A703C(v61, v63);
    sub_10001074C(v63, &qword_100638A88, &qword_10051DE88);
    sub_10001074C(v61, &qword_100638A90, &unk_10051DE90);
    v64 = *(v34 + 8);
    v64(v56, v53);
    v65 = *(v68 + 8);
    v65(v51, v55);
    v64(v75, v53);
    return (v65)(v81, v55);
  }

  v58 = *(v34 + 8);
  v58(v56, v53);
  v59 = *(v68 + 8);
  v59(v51, v55);
  v58(v75, v53);
  v59(v81, v55);
  v38 = v85;
LABEL_7:
  v90(v83, &v39[v82], v89);
  v40 = v84;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v76 + 8))(v40, v38);
    v42 = sub_1004DC6DC();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = sub_1004DC4EC();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    sub_1001A703C(v43, v45);
    sub_10001074C(v45, &qword_100638A88, &qword_10051DE88);
    return sub_10001074C(v43, &qword_100638A90, &unk_10051DE90);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1001AB650(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1001A6348;
}

void sub_1001A6348(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1001AB650(v4, v7);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    sub_1001AB650(*(v2 + 56), a2);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1001A6560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (v4 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((v4 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((v4 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((v4 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (v4 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((v4 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((v4 & 1) != 0 && (((v4 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((v4 & 1) == 0 && *v11 == *&a1 && (((v4 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v17 = sub_1004D966C();
  sub_100035430(v17, static Logger.libraryActionableState);

  v18 = sub_1004D964C();
  v19 = sub_1004DDF9C();

  v20 = os_log_type_enabled(v18, v19);
  v44 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, v4);
    v26 = sub_1000343A8(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = sub_1000343A8(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = sub_1004DD4DC();
    v34 = sub_1000343A8(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1001A6A7C(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return sub_1001A6560(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1004DDA4C();
  v3[15] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_1001A6C20, v7, v6);
}

uint64_t sub_1001A6C20()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1001A6DA8;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_1001A6DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1001A6FD0;
  }

  else
  {
    v8 = sub_1001A6F64;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001A6F64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A6FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001A703C(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v228 = a2;
  v223 = a1;
  v4 = *v2;
  v5 = sub_1004DC6CC();
  v214 = *(v5 - 8);
  __chkstk_darwin();
  v209 = &v193[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v213 = &v193[-v7];
  __chkstk_darwin();
  v212 = &v193[-v8];
  __chkstk_darwin();
  v211 = &v193[-v9];
  __chkstk_darwin();
  v217 = &v193[-v10];
  sub_100004CB8(&qword_100635DF8, &qword_100517B58);
  __chkstk_darwin();
  v205 = &v193[-v11];
  v210 = sub_1004DD05C();
  v201 = *(v210 - 1);
  __chkstk_darwin();
  v200 = &v193[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v202 = &v193[-v13];
  v207 = sub_1004DCA0C();
  v204 = *(v207 - 8);
  __chkstk_darwin();
  v203 = &v193[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v206 = &v193[-v15];
  v16 = *(v4 + 80);
  v17 = sub_1004DC6DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v208 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v222 = &v193[-v18];
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v20 = &v193[-v19];
  v21 = sub_1004DC4EC();
  v227 = *(v21 - 8);
  __chkstk_darwin();
  v198 = &v193[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v219 = &v193[-v23];
  __chkstk_darwin();
  v229 = &v193[-v24];
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v26 = &v193[-v25];
  v230 = *(v17 - 8);
  __chkstk_darwin();
  v199 = &v193[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v193[-v28];
  __chkstk_darwin();
  v232 = &v193[-v30];
  v224 = *(v16 - 8);
  __chkstk_darwin();
  v215 = &v193[-v31];
  v32 = v3 + *(v4 + 152);
  swift_beginAccess();
  v195 = *v32;
  v194 = *(v32 + 8);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v33 = sub_1004D966C();
  v34 = sub_100035430(v33, static Logger.libraryActionableState);

  v231 = v34;
  v35 = sub_1004D964C();
  v36 = sub_1004DDF9C();

  v37 = os_log_type_enabled(v35, v36);
  v225 = v21;
  v226 = v17;
  v216 = v5;
  v221 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v235 = v39;
    *v38 = 136446210;
    v40 = *(*v3 + 128);
    swift_beginAccess();
    (*(v224 + 16))(v215, v3 + v40, v16);
    v41 = sub_1004DD4DC();
    v43 = sub_1000343A8(v41, v42, &v235);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "╭ Updating state for item: %{public}s", v38, 0xCu);
    sub_100008D24(v39);
    v17 = v226;

    v21 = v225;
  }

  sub_1000108DC(v223, v26, &qword_100638A90, &unk_10051DE90);
  v44 = v230;
  v45 = *(v230 + 48);
  v46 = v45(v26, 1, v17);
  v47 = v227;
  if (v46 == 1)
  {
    sub_1004DC74C();
    if (v45(v26, 1, v17) != 1)
    {
      sub_10001074C(v26, &qword_100638A90, &unk_10051DE90);
    }
  }

  else
  {
    (*(v44 + 32))(v232, v26, v17);
  }

  sub_1000108DC(v228, v20, &qword_100638A88, &qword_10051DE88);
  v48 = *(v47 + 48);
  v49 = v48(v20, 1, v21);
  v228 = v3;
  if (v49 == 1)
  {
    sub_1004DC6FC();
    if (v48(v20, 1, v21) != 1)
    {
      sub_10001074C(v20, &qword_100638A88, &qword_10051DE88);
    }
  }

  else
  {
    (*(v47 + 32))(v229, v20, v21);
  }

  v50 = v230;
  v218 = *(v230 + 16);
  v218(v29, v232, v17);
  v51 = sub_1004D964C();
  v52 = v17;
  v53 = sub_1004DDF9C();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v235 = v55;
    *v54 = 136446210;
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v56 = sub_1004DEFFC();
    v58 = v57;
    v223 = *(v50 + 8);
    v223(v29, v52);
    v59 = sub_1000343A8(v56, v58, &v235);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v53, "| Add Status: %{public}s", v54, 0xCu);
    sub_100008D24(v55);
    v21 = v225;

    v47 = v227;
  }

  else
  {

    v223 = *(v50 + 8);
    v223(v29, v52);
  }

  v60 = *(v47 + 16);
  v61 = v219;
  v197 = v47 + 16;
  v196 = v60;
  v60(v219, v229, v21);
  v62 = sub_1004D964C();
  v63 = sub_1004DDF9C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v47;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v235 = v66;
    *v65 = 136446210;
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v67 = sub_1004DEFFC();
    v69 = v68;
    v219 = *(v64 + 8);
    (v219)(v61, v21);
    v70 = sub_1000343A8(v67, v69, &v235);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "| Download Status: %{public}s", v65, 0xCu);
    sub_100008D24(v66);
  }

  else
  {

    v219 = *(v47 + 8);
    (v219)(v61, v21);
  }

  v71 = v221;
  v72 = v224;
  v73 = v228;
  v74 = *(*v228 + 128);
  swift_beginAccess();
  v75 = *(TupleTypeMetadata2 + 48);
  v76 = *(v72 + 16);
  v77 = v222;
  v76(v222, v73 + v74, v71);
  v78 = v226;
  v218(&v77[v75], v232, v226);
  v79 = v230;
  v80 = (*(v230 + 88))(&v77[v75], v78);
  if (v80 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v223(&v77[v75], v78);
    v81 = 0;
    v82 = 5;
    goto LABEL_73;
  }

  if (v80 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v80 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v130 = sub_1004D964C();
      v131 = sub_1004DDF7C();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v234 = v224;
        *v132 = 136446466;
        v133 = v199;
        sub_1004DC74C();
        sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v134 = v226;
        v135 = sub_1004DEFFC();
        v137 = v136;
        v223(v133, v134);
        v138 = sub_1000343A8(v135, v137, &v234);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2082;
        v76(v215, v228 + v74, v221);
        v139 = sub_1004DD4DC();
        v141 = sub_1000343A8(v139, v140, &v234);

        *(v132 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v130, v131, "| Unhandled add status (%{public}s) for item: %{public}s", v132, 0x16u);
        swift_arrayDestroy();

        v77 = v222;
      }

      v82 = 0;
      v81 = 0x8000;
      v72 = v208;
      v71 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v101 = v206;
    v102 = v207;
    v103 = swift_dynamicCast();
    v104 = v227;
    v105 = v228;
    v106 = v210;
    if (v103)
    {
      v107 = v204;
      v108 = v101;
      v109 = v203;
      (*(v204 + 32))(v203, v108, v102);
      if (Album.childrenAddStatus(_:)(*(v105 + 16)) == 1)
      {
        v110 = sub_1004D964C();
        v111 = sub_1004DDF9C();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&_mh_execute_header, v110, v111, "| Album is already added but has at least 1 addable track", v112, 2u);
        }

        (*(v204 + 8))(v203, v102);
        v81 = 0;
        v82 = 4;
        goto LABEL_73;
      }

      (*(v107 + 8))(v109, v102);
    }

    v145 = v202;
    if (swift_dynamicCast())
    {
      v146 = v201;
      v147 = v200;
      (*(v201 + 32))(v200, v145, v106);
      v148 = v205;
      sub_1004DD04C();
      v149 = sub_100004CB8(&qword_1006379F0, &qword_10051DEA0);
      v150 = v148;
      v151 = v149;
      v152 = *(v149 - 8);
      if ((*(v152 + 48))(v150, 1, v149) == 1)
      {
        (*(v146 + 8))(v147, v106);
        sub_10001074C(v205, &qword_100635DF8, &qword_100517B58);
      }

      else
      {
        sub_100042B08(&qword_100637A20, &qword_1006379F0, &qword_10051DEA0, &protocol conformance descriptor for MusicItemCollection<A>);
        v153 = v205;
        sub_1004DDCFC();
        sub_1004DDD3C();
        v155 = v233;
        v154 = v234;
        (*(v152 + 8))(v153, v151);
        if (v154 == v155)
        {
          v156 = sub_1004D964C();
          v157 = sub_1004DDF9C();
          v158 = os_log_type_enabled(v156, v157);
          v159 = v201;
          v160 = v200;
          if (v158)
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&_mh_execute_header, v156, v157, "| Playlist is already added but does not have any tracks", v161, 2u);
          }

          (*(v159 + 8))(v160, v210);
          goto LABEL_72;
        }

        (*(v201 + 8))(v200, v210);
      }

      v104 = v227;
    }

    v162 = sub_1004D964C();
    v163 = sub_1004DDF9C();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "|—● Item is added", v164, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v166 = result;
    v167 = [result canShowCloudDownloadButtons];

    if (v167)
    {
      v168 = v198;
      v169 = v225;
      v196(v198, v229, v225);
      v170 = (*(v104 + 88))(v168, v169);
      if (v170 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v104 + 96))(v168, v169);
        v82 = *v168;
        v81 = 0x4000;
        goto LABEL_73;
      }

      if (v170 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v104 + 96))(v168, v169);
        if (((v194 & 0xC000) != 0x4000) | v194 & 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = v195;
        }

        v81 = ((v194 & 0xC000) != 0x4000) | v194 & 1 | 0x4100;
        v181 = sub_1004DC4DC();
        (*(*(v181 - 8) + 8))(v168, v181);
        goto LABEL_73;
      }

      if (v170 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v170 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v81 = 0x8000;
          v82 = 1;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v82 = 0;
          v81 = 16385;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v81 = 0x8000;
          v82 = 2;
        }

        else
        {
          v182 = v71;
          v183 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v184 = v170;
          v185 = sub_1004D964C();
          v186 = sub_1004DDF9C();
          v187 = os_log_type_enabled(v185, v186);
          if (v184 == v183)
          {
            if (v187)
            {
              v188 = swift_slowAlloc();
              *v188 = 0;
            }

            v189 = sub_1004D964C();
            v190 = sub_1004DDF9C();
            v71 = v182;
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              *v191 = 0;
              _os_log_impl(&_mh_execute_header, v189, v190, "|—| 🌚 though we're not sure this is the right thing to do", v191, 2u);
            }

            v81 = 0x8000;
            v82 = 1;
            v72 = v224;
          }

          else
          {
            v71 = v182;
            if (v187)
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&_mh_execute_header, v185, v186, "|—| Unhandled case", v192, 2u);
            }

            (v219)(v198, v225);
            v82 = 0;
            v81 = 0x8000;
            v72 = v224;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v171 = sub_1004D964C();
      v172 = sub_1004DDF9C();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&_mh_execute_header, v171, v172, "|—| MPCloudController -canShowCloudDownloadButton: NO", v173, 2u);
      }
    }

LABEL_72:
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_73;
  }

  v83 = v214;
  (*(v79 + 96))(&v77[v75], v78);
  v84 = v83[4];
  v85 = &v77[v75];
  v86 = v217;
  v87 = v216;
  TupleTypeMetadata2 = (v83 + 4);
  v218 = v84;
  v84(v217, v85, v216);
  v88 = v83[2];
  v89 = v211;
  v88(v211, v86, v87);
  v90 = sub_1004D964C();
  v91 = sub_1004DDF9C();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v234 = v94;
    *v93 = 136446210;
    sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v95 = sub_1004DEFFC();
    v97 = v96;
    v98 = v92;
    v99 = v83[1];
    v99(v98, v216);
    v100 = sub_1000343A8(v95, v97, &v234);

    *(v93 + 4) = v100;
    v87 = v216;
    _os_log_impl(&_mh_execute_header, v90, v91, "|—● Item is unaddable: %{public}s", v93, 0xCu);
    sub_100008D24(v94);
  }

  else
  {

    v99 = v83[1];
    v99(v89, v87);
  }

  v113 = v212;
  v88(v212, v217, v87);
  v114 = v83[11];
  v115 = v114(v113, v87);
  v116 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v117 = v213;
  if (v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v118 = sub_1004D964C();
    v119 = sub_1004DDF9C();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "|—| Reason is not actionable by the user", v120, 2u);
    }

    v121 = v216;
    v99(v217, v216);
    v99(v113, v121);
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v215) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v212) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v211) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v88(v213, v217, v87);
  v122 = v117;
  v123 = sub_1004D964C();
  v124 = sub_1004DDF9C();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v234 = v210;
    *v125 = 136315138;
    sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v126 = sub_1004DEFFC();
    v128 = v127;
    v99(v122, v216);
    v129 = sub_1000343A8(v126, v128, &v234);

    *(v125 + 4) = v129;
    v87 = v216;
    sub_100008D24(v210);
  }

  else
  {

    v99(v122, v87);
  }

  v142 = v209;
  v218(v209, v217, v87);
  v143 = v114(v142, v87);
  if (v143 == v116)
  {
    v81 = 0;
    v82 = 1;
LABEL_46:
    v77 = v222;
    v71 = v221;
    v72 = v224;
    goto LABEL_73;
  }

  v144 = v99;
  v77 = v222;
  v71 = v221;
  v72 = v224;
  if (v143 == v215)
  {
    v82 = 0;
    v81 = 0;
  }

  else if (v143 == v212)
  {
    v81 = 0;
    v82 = 2;
  }

  else if (v143 == v211)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v144(v142, v87);
    v81 = 0;
    v82 = 5;
  }

LABEL_73:
  (*(v72 + 8))(v77, v71);
  v174 = sub_1004D964C();
  v175 = sub_1004DDF9C();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v234 = v177;
    *v176 = 136446210;
    v178 = MusicLibrary.ActionableState.description.getter(v82, v81);
    v180 = sub_1000343A8(v178, v179, &v234);

    *(v176 + 4) = v180;
    _os_log_impl(&_mh_execute_header, v174, v175, "╰ Item state resolved to %{public}s", v176, 0xCu);
    sub_100008D24(v177);
  }

  sub_1001A6A7C(v82, v81);
  (v219)(v229, v225);
  return (v223)(v232, v226);
}

double sub_1001A8F70()
{
  v1 = *v0;
  v2 = sub_100004CB8(&qword_100638A68, &qword_10051DE78);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v27 = &v23 - v4;
  v5 = sub_100004CB8(&qword_100638A70, &qword_10051DE80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_1004DC6EC();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100042B08(&qword_100638A78, &qword_100638A70, &qword_10051DE80, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_1004D9C0C();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_1001BBD00(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_1004DC70C();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_100042B08(&qword_100638A80, &qword_100638A68, &qword_10051DE78, v25);
  v20 = v28;
  v21 = sub_1004D9C0C();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_1001BBD00(&v30, v21);
  swift_endAccess();

  return result;
}

uint64_t sub_1001A9380(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_1004DC6DC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v12 = sub_1004D966C();
  sub_100035430(v12, static Logger.libraryActionableState);
  v34 = *(v9 + 16);
  v34(v11, a1, v8);
  v13 = v9;
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v5;
    v31 = v18;
    v35[0] = v18;
    *v17 = 136446210;
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v19 = v13;
    v29 = v13;
    v20 = sub_1004DEFFC();
    v30 = a1;
    v21 = v7;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_1000343A8(v20, v23, v35);
    v7 = v21;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Add status has updated to %{public}s", v17, 0xCu);
    sub_100008D24(v31);
    v5 = v33;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34(v7, a1, v8);
    (*(v25 + 56))(v7, 0, 1, v8);
    v27 = sub_1004DC4EC();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_1001A703C(v7, v5);

    sub_10001074C(v5, &qword_100638A88, &qword_10051DE88);
    return sub_10001074C(v7, &qword_100638A90, &unk_10051DE90);
  }

  return result;
}

uint64_t sub_1001A97AC(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_1004DC4EC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v12 = sub_1004D966C();
  sub_100035430(v12, static Logger.libraryActionableState);
  v33 = *(v9 + 16);
  v33(v11, a1, v8);
  v13 = v9;
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v5;
    v35[0] = v31;
    *v17 = 136446210;
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v18 = v13;
    v29 = v13;
    v19 = sub_1004DEFFC();
    v30 = a2;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v18 + 8))(v11, v34);
    v24 = sub_1000343A8(v19, v23, v35);
    a1 = v21;
    v7 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Download status has updated to %{public}s", v17, 0xCu);
    sub_100008D24(v31);
    v5 = v32;

    v8 = v34;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = sub_1004DC6DC();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v33(v5, a1, v8);
    (*(v25 + 56))(v5, 0, 1, v8);
    sub_1001A703C(v7, v5);

    sub_10001074C(v5, &qword_100638A88, &qword_10051DE88);
    return sub_10001074C(v7, &qword_100638A90, &unk_10051DE90);
  }

  return result;
}

char *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_100010A38((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A9D30()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.libraryActionableState);
  sub_100035430(v0, static Logger.libraryActionableState);
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  sub_1004DE7BC();
  return sub_1004D967C();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001A9E7C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  }

  else
  {

    return sub_1004DF00C();
  }
}

uint64_t sub_1001A9EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_100066F80;

  return sub_10018B2D0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001A9FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035C88;

  return sub_10018C018(a1, a2, a3, a4);
}

uint64_t sub_1001AA084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035C88;

  return sub_10018CD28(a1, a2, a3, a4);
}

uint64_t sub_1001AA13C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018DA38(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018E6EC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA2E4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018F3A0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA3B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100190054(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA48C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100190D08(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA560(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_1001919BC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA634(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100192670(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA708(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100193324(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA7DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100193FD8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA8B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_100068C68;

  return sub_100194C8C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA97C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100195910(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AAA50(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_1000692DC;

  return sub_1001965C4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AAB24(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100197278(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AABF8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100197F2C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100035C88;

  return sub_100198BE0(a1, a2, a3, a4, v10);
}

uint64_t sub_1001AAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035B28;

  return sub_100199818(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1001AAF78()
{
  result = qword_1006389B8;
  if (!qword_1006389B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006389B8);
  }

  return result;
}

uint64_t sub_1001AAFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB030()
{

  return swift_deallocObject();
}

double sub_1001AB068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1001AB084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a5;
  v11 = *v7;
  sub_100004CB8(&qword_100638A88, &qword_10051DE88);
  __chkstk_darwin();
  v13 = &v46 - v12;
  sub_100004CB8(&qword_100638A90, &unk_10051DE90);
  __chkstk_darwin();
  v15 = (&v46 - v14);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = &v7[*(*v7 + 152)];
  *v16 = 0;
  *(v16 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_1004DED5C())
  {
    sub_10003C290(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v17;
  v18 = v11[10];
  v19 = v11[12];
  v51 = a1;
  v54 = v18;
  v55 = v19;
  v20 = sub_1004DC63C();
  *&v7[*(*v7 + 136)] = v20;
  v21 = qword_100633D10;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1004D966C();
  sub_100035430(v22, static Logger.libraryActionableState);

  v23 = sub_1004D964C();
  v24 = sub_1004DDF9C();

  v25 = os_log_type_enabled(v23, v24);
  v50 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v48 = v13;
    v27 = v26;
    v28 = swift_slowAlloc();
    v47 = v15;
    v29 = v28;
    v56 = v20;
    v57 = v28;
    *v27 = 136446210;
    v30 = sub_1004DD4DC();
    v49 = v11;
    v32 = a6;
    v33 = sub_1000343A8(v30, v31, &v57);
    v11 = v49;

    *(v27 + 4) = v33;
    a6 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Initializing item state: %{public}s", v27, 0xCu);
    sub_100008D24(v29);
    v15 = v47;

    v13 = v48;
  }

  v34 = v54;
  (*(*(v54 - 8) + 16))(&v7[*(*v7 + 128)], v51, v54);
  *(v7 + 2) = a2;
  *(v7 + 4) = v52;
  swift_unknownObjectWeakAssign();
  v35 = &v7[*(*v7 + 144)];
  *v35 = v53;
  v35[1] = a6;
  v36 = sub_1004DC6DC();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = sub_1004DC4EC();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  sub_1001A703C(v15, v13);
  sub_10001074C(v13, &qword_100638A88, &qword_10051DE88);
  sub_10001074C(v15, &qword_100638A90, &unk_10051DE90);
  v38 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 sharedCloudController];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v34;
  v44 = v55;
  v43[3] = v11[11];
  v43[4] = v44;
  v43[5] = v11[13];
  v43[6] = v42;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v40, v41, 1, 1, sub_1001AC0AC, v43);

  sub_1001A8F70();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1001AB650(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  v9 = *(v8 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  sub_1001A5458(v7);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001AB7B0()
{
  result = qword_1006389D8[0];
  if (!qword_1006389D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006389D8);
  }

  return result;
}

uint64_t sub_1001AB804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_1001AB8A8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t _s15ActionableStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1001AB998(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1001AB9C8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_1001ABA14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001ABB1C()
{
  result = qword_100638A60;
  if (!qword_100638A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638A60);
  }

  return result;
}

uint64_t sub_1001ABB70(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001ABBA8()
{

  return swift_deallocObject();
}

uint64_t sub_1001ABC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001ABC78()
{
  v1 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1001ABE04(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001AAD94(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ABF0C()
{
  v1 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AC13C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A08, &qword_10051DC30, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA2E4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC25C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A08, &qword_10051DC30, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC2B8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A00, &qword_100517000, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA3B8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC3D8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A00, &qword_100517000, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC458()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC51C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AACCC(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t sub_1001AC5E8()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC6C8()
{
  v1 = sub_1004D809C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001AC750(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004D809C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035B28;

  return sub_10012F098(a1, a2, v2 + v7);
}

uint64_t sub_1001AC834(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10019A784(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC878()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001AC8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA8B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC99C(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10019A784(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC9E4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A50, &qword_1005170F0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA97C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACB08(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A50, &qword_1005170F0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACB64(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A48, &qword_10051DF80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACBC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AAA50(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACC84(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A48, &qword_10051DF80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACCE0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A40, &unk_1005170D0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACD3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AAB24(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACE00(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A40, &unk_1005170D0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACE5C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A38, &qword_10051DFD0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACEB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AABF8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACF7C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A38, &qword_10051DFD0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACFD8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A28, &qword_100517088, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA634(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD0F8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A28, &qword_100517088, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD154(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A20, &qword_100517080, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD1B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA708(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD274(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A20, &qword_100517080, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD2D0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A18, &qword_100517040, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD32C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA7DC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD3F0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A18, &qword_100517040, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD44C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F8, &qword_10051E070, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD4A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA48C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD56C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F8, &qword_10051E070, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD5C8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F0, &qword_100516FD0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA210(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD6E8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F0, &qword_100516FD0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD744(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359E8, &qword_10051E0C0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD7A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA13C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD864(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359E8, &qword_10051E0C0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD8C0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359C8, &qword_100516F88, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD91C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA560(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD9E0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359C8, &qword_100516F88, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ADAA8(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_1006359B0, &qword_10051E110) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001A9FCC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ADC38(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_1006359B8, &qword_100516F40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001AA084(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ADD40(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100004CB8(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1004D8F4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1001ADF88(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10019A528(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ADFDC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AE05C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001A9EF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001AE120(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10019A528(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_1001AE2A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004DF08C();
  }

  return v9 & 1;
}

unint64_t sub_1001AE38C@<X0>(Swift::String *a1@<X0>, MusicCore::Library::ContentFilterOption_optional *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1001AE3BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_1001AE41C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001AE4C0(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1001AE550()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_1004DF08C();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100004CB8(&qword_100638AB0, &qword_10051E180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = a1;
  v5 = sub_10003C4FC(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context(0) + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context(0);

  return result;
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(char *a1@<X8>)
{
  sub_1004DC7AC();
  *a1 = sub_1004DC79C();
  v2 = type metadata accessor for Library.Context(0);
  v3 = v2[5];
  v4 = sub_1004DCA0C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = sub_1004DCB3C();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = sub_1004D91FC();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[8];
  v10 = sub_1004DCA3C();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[9];
  v12 = sub_1004DD05C();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = sub_1004D91EC();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v2[11];
  v16 = sub_1004D924C();
  result = (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  a1[v2[12]] = 0;
  a1[v2[13]] = 2;
  a1[v2[14]] = 3;
  v18 = &a1[v2[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v36 = sub_1004D924C();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1004D91EC();
  v34 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1004DD05C();
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004DCA3C();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1004D91FC();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004DCB3C();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DCA0C();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DE7CC();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v32 - v20;
  v50 = a3;
  sub_1001B2FF8(v52, a3);
  v52 = v17;
  v22 = *(v17 + 16);
  v22(v21, v51, v16);
  v51 = *(a2 - 8);
  if ((*(v51 + 48))(v21, 1, a2) != 1)
  {
    v32 = v16;
    v22(v19, v21, v16);
    v23 = a2;
    v24 = v19;
    if (swift_dynamicCast())
    {
      v25 = *(type metadata accessor for Library.Context(0) + 20);
      v26 = v50;
      sub_10001074C(v50 + v25, &qword_100635B98, &qword_100517440);
      (*(v13 + 32))(v26 + v25, v15, v12);
      (*(v13 + 56))(v26 + v25, 0, 1, v12);
LABEL_17:
      (*(v51 + 8))(v24, v23);
      v16 = v32;
      return (*(v52 + 8))(v21, v16);
    }

    v27 = v49;
    if (swift_dynamicCast())
    {
      v28 = *(type metadata accessor for Library.Context(0) + 24);
      v29 = v50;
      sub_10001074C(v50 + v28, &qword_100636470, &qword_100518C10);
      v30 = v46;
    }

    else
    {
      v11 = v47;
      v27 = v48;
      if (swift_dynamicCast())
      {
        v28 = *(type metadata accessor for Library.Context(0) + 28);
        v29 = v50;
        sub_10001074C(v50 + v28, &qword_100638AB8, &qword_10051E188);
        v30 = v43;
      }

      else
      {
        v11 = v44;
        v27 = v45;
        if (swift_dynamicCast())
        {
          v28 = *(type metadata accessor for Library.Context(0) + 32);
          v29 = v50;
          sub_10001074C(v50 + v28, &qword_100638AC0, &unk_10051E190);
          v30 = v40;
        }

        else
        {
          v11 = v41;
          v27 = v42;
          if (swift_dynamicCast())
          {
            v28 = *(type metadata accessor for Library.Context(0) + 36);
            v29 = v50;
            sub_10001074C(v50 + v28, &qword_100637A00, &qword_100518D00);
            v30 = v37;
          }

          else
          {
            v11 = v38;
            v27 = v39;
            if (swift_dynamicCast())
            {
              v28 = *(type metadata accessor for Library.Context(0) + 40);
              v29 = v50;
              sub_10001074C(v50 + v28, &qword_1006365C8, &unk_10051E1A0);
              v30 = v34;
            }

            else
            {
              v11 = v35;
              v27 = v36;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v28 = *(type metadata accessor for Library.Context(0) + 44);
              v29 = v50;
              sub_10001074C(v50 + v28, &qword_100636598, &qword_100518E88);
              v30 = v33;
            }
          }
        }
      }
    }

    (*(v30 + 32))(v29 + v28, v11, v27);
    (*(v30 + 56))(v29 + v28, 0, 1, v27);
    goto LABEL_17;
  }

  return (*(v52 + 8))(v21, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_1001B2FF8(v1, a1);
  result = type metadata accessor for Library.Context(0);
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001B2FF8(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001B2FF8(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001B2FF8(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context(0) + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(a1 & 1);
  return sub_1004DF2BC();
}

Swift::Int sub_1001AFDB4()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
  return sub_1004DF2BC();
}

void sub_1001AFE08()
{
  v1 = *v0;
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
}

Swift::Int sub_1001AFE48()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
  return sub_1004DF2BC();
}

void Library.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1004DCEEC();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004D924C();
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636598, &qword_100518E88);
  __chkstk_darwin();
  v92 = &v69 - v7;
  v89 = sub_1004D91EC();
  v95 = *(v89 - 8);
  __chkstk_darwin();
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_1006365C8, &unk_10051E1A0);
  __chkstk_darwin();
  v90 = &v69 - v9;
  v85 = sub_1004DD05C();
  v88 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  __chkstk_darwin();
  v87 = &v69 - v11;
  v82 = sub_1004DCA3C();
  v86 = *(v82 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638AC0, &unk_10051E190);
  __chkstk_darwin();
  v81 = &v69 - v13;
  v14 = sub_1004D91FC();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638AB8, &qword_10051E188);
  __chkstk_darwin();
  v80 = &v69 - v16;
  v17 = sub_1004DCB3C();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin();
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636470, &qword_100518C10);
  __chkstk_darwin();
  v77 = &v69 - v19;
  v20 = sub_1004DCA0C();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  __chkstk_darwin();
  v25 = &v69 - v24;
  v97 = *v1;
  sub_1004DC7AC();
  sub_1001B3D58(&qword_100638AC8, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  sub_1004DD2BC();
  v26 = type metadata accessor for Library.Context(0);
  sub_1000108DC(v1 + v26[5], v25, &qword_100635B98, &qword_100517440);
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    (*(v21 + 32))(v23, v25, v20);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AD0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    sub_1004DD2BC();
    (*(v21 + 8))(v23, v20);
  }

  v27 = v77;
  sub_1000108DC(v1 + v26[6], v77, &qword_100636470, &qword_100518C10);
  v29 = v78;
  v28 = v79;
  v30 = (*(v78 + 48))(v27, 1, v79);
  v32 = v80;
  v31 = v81;
  if (v30 == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v33 = v27;
    v34 = v70;
    (*(v29 + 32))(v70, v33, v28);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AD8, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    sub_1004DD2BC();
    (*(v29 + 8))(v34, v28);
  }

  v35 = v87;
  v36 = v84;
  sub_1000108DC(v1 + v26[7], v32, &qword_100638AB8, &qword_10051E188);
  v37 = v83;
  if ((*(v83 + 48))(v32, 1, v36) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v38 = v71;
    (*(v37 + 32))(v71, v32, v36);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AE0, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    sub_1004DD2BC();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v82;
  sub_1000108DC(v2 + v26[8], v31, &qword_100638AC0, &unk_10051E190);
  v40 = v86;
  if ((*(v86 + 48))(v31, 1, v39) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v41 = v72;
    (*(v40 + 32))(v72, v31, v39);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AE8, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
    sub_1004DD2BC();
    (*(v40 + 8))(v41, v39);
  }

  v42 = v89;
  v43 = v91;
  sub_1000108DC(v2 + v26[9], v35, &qword_100637A00, &qword_100518D00);
  v44 = v88;
  v45 = v85;
  if ((*(v88 + 48))(v35, 1, v85) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v46 = v73;
    (*(v44 + 32))(v73, v35, v45);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AF0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    sub_1004DD2BC();
    (*(v44 + 8))(v46, v45);
  }

  v47 = v90;
  sub_1000108DC(v2 + v26[10], v90, &qword_1006365C8, &unk_10051E1A0);
  if ((*(v95 + 6))(v47, 1, v42) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v48 = v95;
    v49 = v74;
    (*(v95 + 4))(v74, v47, v42);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AF8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    sub_1004DD2BC();
    (*(v48 + 1))(v49, v42);
  }

  v50 = v92;
  sub_1000108DC(v2 + v26[11], v92, &qword_100636598, &qword_100518E88);
  if ((*(v43 + 48))(v50, 1, v96) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v51 = v75;
    v52 = v96;
    (*(v43 + 32))(v75, v50, v96);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638B00, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    sub_1004DD2BC();
    (*(v43 + 8))(v51, v52);
  }

  v53 = v93;
  sub_1004DF28C(*(v2 + v26[12]));
  v54 = *(v2 + v26[13]);
  if (v54 == 2)
  {
    v55 = 0;
  }

  else
  {
    sub_1004DF28C(1u);
    sub_1004DF27C(0);
    v55 = v54 & 1;
  }

  sub_1004DF28C(v55);
  v56 = *(v2 + v26[14]);
  if (v56 == 3)
  {
    sub_1004DF28C(0);
    v57 = v76;
  }

  else
  {
    sub_1004DF28C(1u);
    v57 = v76;
    sub_1004DD55C();
  }

  if (*(v2 + v26[15] + 8))
  {
    sub_1004DF28C(1u);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }

  v95 = v26;
  v96 = v2;
  v58 = *(v2 + v26[16]);
  sub_1004DF27C(*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v57;
    v61 = v94 + 16;
    v62 = *(v94 + 16);
    v63 = v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v64 = *(v94 + 72);
    v65 = (v94 + 8);
    do
    {
      v66 = v61;
      v62(v60, v63, v53);
      sub_1001B3D58(&qword_100638B08, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      sub_1004DD2BC();
      (*v65)(v60, v53);
      v61 = v66;
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v67 = *(v96 + v95[17]);
  if (v67 == 2)
  {
    v68 = 0;
  }

  else
  {
    sub_1004DF28C(1u);
    v68 = v67 & 1;
  }

  sub_1004DF28C(v68);
}