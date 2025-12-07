uint64_t sub_1009D438C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D46FC;
  }

  else
  {
    v2 = sub_1009D44A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D44A0()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86A8, &qword_100EF4C60);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86A8, &qword_100EF4C60);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86A8, &qword_100EF4C60);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D46FC()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86A8, &qword_100EF4C60);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86A8, &qword_100EF4C60);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86A8, &qword_100EF4C60);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D49E8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D4B18, 0, 0);
}

uint64_t sub_1009D4B18()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86B0, &qword_100EEDC50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86B0, &qword_100EEDC50);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86B0, &qword_100EEDC50);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86B0, &qword_100EEDC50);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D5040;

  return v37(v0 + 128);
}

uint64_t sub_1009D5040()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D53B0;
  }

  else
  {
    v2 = sub_1009D5154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D5154()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86B0, &qword_100EEDC50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86B0, &qword_100EEDC50);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86B0, &qword_100EEDC50);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D53B0()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86B0, &qword_100EEDC50);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86B0, &qword_100EEDC50);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86B0, &qword_100EEDC50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D569C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D57CC, 0, 0);
}

uint64_t sub_1009D57CC()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86C8, &qword_100EF47D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86C8, &qword_100EF47D0);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86C8, &qword_100EF47D0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86C8, &qword_100EF47D0);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D5CF4;

  return v37(v0 + 128);
}

uint64_t sub_1009D5CF4()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D6064;
  }

  else
  {
    v2 = sub_1009D5E08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D5E08()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86C8, &qword_100EF47D0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86C8, &qword_100EF47D0);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86C8, &qword_100EF47D0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D6064()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86C8, &qword_100EF47D0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86C8, &qword_100EF47D0);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86C8, &qword_100EF47D0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D6350(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D6480, 0, 0);
}

uint64_t sub_1009D6480()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86C0, &qword_100EEDC80);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86C0, &qword_100EEDC80);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86C0, &qword_100EEDC80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86C0, &qword_100EEDC80);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D69A8;

  return v37(v0 + 128);
}

uint64_t sub_1009D69A8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D6D18;
  }

  else
  {
    v2 = sub_1009D6ABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D6ABC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86C0, &qword_100EEDC80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86C0, &qword_100EEDC80);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86C0, &qword_100EEDC80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D6D18()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86C0, &qword_100EEDC80);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86C0, &qword_100EEDC80);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86C0, &qword_100EEDC80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D7004(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D7134, 0, 0);
}

uint64_t sub_1009D7134()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86B8, &qword_100EF4C10);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86B8, &qword_100EF4C10);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86B8, &qword_100EF4C10);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86B8, &qword_100EF4C10);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D765C;

  return v37(v0 + 128);
}

uint64_t sub_1009D765C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D79CC;
  }

  else
  {
    v2 = sub_1009D7770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D7770()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86B8, &qword_100EF4C10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86B8, &qword_100EF4C10);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86B8, &qword_100EF4C10);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D79CC()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86B8, &qword_100EF4C10);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86B8, &qword_100EF4C10);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86B8, &qword_100EF4C10);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D7CB8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D7DE8, 0, 0);
}

uint64_t sub_1009D7DE8()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A8688, &qword_100EEDC08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8688, &qword_100EEDC08);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8688, &qword_100EEDC08);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8688, &qword_100EEDC08);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D8310;

  return v37(v0 + 128);
}

uint64_t sub_1009D8310()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D8680;
  }

  else
  {
    v2 = sub_1009D8424;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D8424()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8688, &qword_100EEDC08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A8688, &qword_100EEDC08);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A8688, &qword_100EEDC08);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D8680()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8688, &qword_100EEDC08);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A8688, &qword_100EEDC08);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A8688, &qword_100EEDC08);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D896C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D8A9C, 0, 0);
}

uint64_t sub_1009D8A9C()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86E8, &qword_100EEDD08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86E8, &qword_100EEDD08);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86E8, &qword_100EEDD08);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86E8, &qword_100EEDD08);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D8FC4;

  return v37(v0 + 128);
}

uint64_t sub_1009D8FC4()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D9334;
  }

  else
  {
    v2 = sub_1009D90D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D90D8()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86E8, &qword_100EEDD08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86E8, &qword_100EEDD08);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86E8, &qword_100EEDD08);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D9334()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86E8, &qword_100EEDD08);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86E8, &qword_100EEDD08);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86E8, &qword_100EEDD08);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D9620(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009D9750, 0, 0);
}

uint64_t sub_1009D9750()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86E0, &qword_100EEDD00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86E0, &qword_100EEDD00);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86E0, &qword_100EEDD00);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86E0, &qword_100EEDD00);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D9C78;

  return v37(v0 + 128);
}

uint64_t sub_1009D9C78()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009D9FE8;
  }

  else
  {
    v2 = sub_1009D9D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D9D8C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86E0, &qword_100EEDD00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86E0, &qword_100EEDD00);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86E0, &qword_100EEDD00);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009D9FE8()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86E0, &qword_100EEDD00);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86E0, &qword_100EEDD00);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86E0, &qword_100EEDD00);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DA2D4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DA404, 0, 0);
}

uint64_t sub_1009DA404()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86D8, &qword_100EEDCC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86D8, &qword_100EEDCC0);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86D8, &qword_100EEDCC0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86D8, &qword_100EEDCC0);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009DA92C;

  return v37(v0 + 128);
}

uint64_t sub_1009DA92C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009DAC9C;
  }

  else
  {
    v2 = sub_1009DAA40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DAA40()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86D8, &qword_100EEDCC0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86D8, &qword_100EEDCC0);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86D8, &qword_100EEDCC0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DAC9C()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86D8, &qword_100EEDCC0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86D8, &qword_100EEDCC0);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86D8, &qword_100EEDCC0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DAF88(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 904) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DB0B0, 0, 0);
}

uint64_t sub_1009DB0B0()
{
  v38 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 208, &qword_1011A8730, &qword_100EEDDA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8730, &qword_100EEDDA0);
    v20 = sub_100010678(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8730, &qword_100EEDDA0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 880) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 304, v0 + 400, &qword_1011A8730, &qword_100EEDDA0);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = Publisher<>.sink(receiveValue:)();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_1009DB5C0;

  return v36(v0 + 112);
}

uint64_t sub_1009DB5C0()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_1009DB928;
  }

  else
  {
    v2 = sub_1009DB6D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DB6D4()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 688, v0 + 784, &qword_1011A8730, &qword_100EEDDA0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 688, &qword_1011A8730, &qword_100EEDDA0);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 688, &qword_1011A8730, &qword_100EEDDA0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DB928()
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
  sub_1000089F8(v0 + 496, v0 + 592, &qword_1011A8730, &qword_100EEDDA0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 496, &qword_1011A8730, &qword_100EEDDA0);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 496, &qword_1011A8730, &qword_100EEDDA0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DBC0C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DBD3C, 0, 0);
}

uint64_t sub_1009DBD3C()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A8710, &qword_100EEDD70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8710, &qword_100EEDD70);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8710, &qword_100EEDD70);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8710, &qword_100EEDD70);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009DC264;

  return v37(v0 + 128);
}

uint64_t sub_1009DC264()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009DC5D4;
  }

  else
  {
    v2 = sub_1009DC378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DC378()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8710, &qword_100EEDD70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A8710, &qword_100EEDD70);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A8710, &qword_100EEDD70);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DC5D4()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8710, &qword_100EEDD70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A8710, &qword_100EEDD70);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A8710, &qword_100EEDD70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DC8C0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DC9F0, 0, 0);
}

uint64_t sub_1009DC9F0()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A8708, &qword_100EF4B20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8708, &qword_100EF4B20);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8708, &qword_100EF4B20);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8708, &qword_100EF4B20);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009DCF18;

  return v37(v0 + 128);
}

uint64_t sub_1009DCF18()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009DD288;
  }

  else
  {
    v2 = sub_1009DD02C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DD02C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8708, &qword_100EF4B20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A8708, &qword_100EF4B20);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A8708, &qword_100EF4B20);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DD288()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8708, &qword_100EF4B20);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A8708, &qword_100EF4B20);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A8708, &qword_100EF4B20);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DD574(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DD6A4, 0, 0);
}

uint64_t sub_1009DD6A4()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A8700, &unk_100EEDD50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8700, &unk_100EEDD50);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8700, &unk_100EEDD50);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8700, &unk_100EEDD50);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009DDBCC;

  return v37(v0 + 128);
}

uint64_t sub_1009DDBCC()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009DDF3C;
  }

  else
  {
    v2 = sub_1009DDCE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DDCE0()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8700, &unk_100EEDD50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A8700, &unk_100EEDD50);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A8700, &unk_100EEDD50);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DDF3C()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8700, &unk_100EEDD50);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A8700, &unk_100EEDD50);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A8700, &unk_100EEDD50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DE228(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
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

  return _swift_task_switch(sub_1009DE358, 0, 0);
}

uint64_t sub_1009DE358()
{
  v39 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_1000060E4(v3, qword_1011A7DB8);
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86F8, &qword_100EF4B70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A86F8, &qword_100EF4B70);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86F8, &qword_100EF4B70);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v21, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86F8, &qword_100EF4B70);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009DE880;

  return v37(v0 + 128);
}

uint64_t sub_1009DE880()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1009DEBF0;
  }

  else
  {
    v2 = sub_1009DE994;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DE994()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
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
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86F8, &qword_100EF4B70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 800, &qword_1011A86F8, &qword_100EF4B70);
    v19 = sub_100010678(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_10000959C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_1000095E8(v0 + 800, &qword_1011A86F8, &qword_100EF4B70);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1009DEBF0()
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
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86F8, &qword_100EF4B70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 576, &qword_1011A86F8, &qword_100EF4B70);
    v17 = sub_100010678(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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

    sub_1000095E8(v0 + 576, &qword_1011A86F8, &qword_100EF4B70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009DEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v5 + 1072) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_1009DEFF4, 0, 0);
}

uint64_t sub_1009DEFF4()
{
  v32 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = sub_1000060E4(v3, qword_1011A7DB8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_1000089F8(v4, v0 + 16, &qword_1011A8A68, &qword_100EEE688);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 16, &qword_1011A8A68, &qword_100EEE688);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100010678(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    sub_10000959C(v14);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8A68, &qword_100EEE688);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v20, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1040) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1048) = v25;
  sub_1000089F8(v21, v0 + 272, &qword_1011A8A68, &qword_100EEE688);
  v26 = swift_allocObject();
  sub_10003D17C(v0 + 272, v26 + 16, &qword_1011A8A68, &qword_100EEE688);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = Publisher<>.sink(receiveValue:)();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_1009DF4DC;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_1009DF4DC()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_1009DF840;
  }

  else
  {
    v2 = sub_1009DF5F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009DF5F0()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  sub_1000089F8(v5, v0 + 784, &qword_1011A8A68, &qword_100EEE688);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v0 + 784, &qword_1011A8A68, &qword_100EEE688);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_100010678(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    sub_10000959C(v13);

    v21(v20, v11);
  }

  else
  {
    sub_1000095E8(v0 + 784, &qword_1011A8A68, &qword_100EEE688);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1009DF840()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_1000089F8(v5, v0 + 528, &qword_1011A8A68, &qword_100EEE688);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v0 + 528, &qword_1011A8A68, &qword_100EEE688);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100010678(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v15 = String.init<A>(describing:)();
    v17 = sub_100010678(v15, v16, &v25);

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
    sub_1000095E8(v0 + 528, &qword_1011A8A68, &qword_100EEE688);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1009DFB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  v4[6] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1009DFCB8, 0, 0);
}

uint64_t sub_1009DFCB8()
{
  v37 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_1000060E4(v2, qword_1011A7DB8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_1000089F8(v5, v4, &qword_1011A87F0, &unk_100EF4A50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v14, &qword_1011A87F0, &unk_100EF4A50);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100010678(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v0[13], &qword_1011A87F0, &unk_100EF4A50);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v23, &qword_1011A7DD0, &qword_100EEC7C0);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  sub_1000089F8(v25, v21, &qword_1011A87F0, &unk_100EF4A50);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_10003D17C(v21, v31 + v30, &qword_1011A87F0, &unk_100EF4A50);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_1009E01BC;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_1009E01BC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1009E0530;
  }

  else
  {
    v2 = sub_1009E02D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009E02D0()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A87F0, &unk_100EF4A50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
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
    sub_1000095E8(v13, &qword_1011A87F0, &unk_100EF4A50);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100010678(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_10000959C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_1000095E8(v0[11], &qword_1011A87F0, &unk_100EF4A50);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1009E0530()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A87F0, &unk_100EF4A50);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

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
    sub_1000095E8(v12, &qword_1011A87F0, &unk_100EF4A50);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v27);

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
    sub_1000095E8(v0[10], &qword_1011A87F0, &unk_100EF4A50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009E0824(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v9 = sub_1000060E4(v5, qword_1011A7DB8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000089F8(a2, v21, &qword_1011A8668, &qword_100EF4D00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
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
    sub_1000095E8(a2, &qword_1011A8668, &qword_100EF4D00);
    v18 = sub_100010678(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_10000959C(v14);
  }

  else
  {
    sub_1000095E8(a2, &qword_1011A8668, &qword_100EF4D00);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009E0A80(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v9 = sub_1000060E4(v5, qword_1011A7DB8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000089F8(a2, v22, &qword_1011A8730, &qword_100EEDDA0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
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
    sub_1000095E8(a2, &qword_1011A8730, &qword_100EEDDA0);
    v18 = sub_100010678(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_10000959C(v14);
  }

  else
  {
    sub_1000095E8(a2, &qword_1011A8730, &qword_100EEDDA0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009E0CDC(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v9 = sub_1000060E4(v5, qword_1011A7DB8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000089F8(a2, v23, &qword_1011A8A68, &qword_100EEE688);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_1000095E8(v23, &qword_1011A8A68, &qword_100EEE688);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100010678(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_10000959C(v14);
  }

  else
  {
    sub_1000095E8(v23, &qword_1011A8A68, &qword_100EEE688);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009E0F34(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1009F2028(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  sub_100A918E4(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_10000954C(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    sub_1009F2028(v5, type metadata accessor for Notice);
    return sub_10000959C(v12);
  }

  else
  {
    sub_1009F2028(v5, type metadata accessor for Notice);
    return sub_1000095E8(v12, &qword_1011A86F0, &qword_100EEDD10);
  }
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = *(sub_10010FC20(&qword_1011AB660, &unk_100EF4760) - 8);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (!(a2 >> 14))
  {
    v9 = a1;
    v10 = 0xE000000000000000;
    if (v9 == 5)
    {
      v11 = 0;
LABEL_31:
      v23 = 0x6164644120959EE2;
      v24 = 0xAB00000000656C62;
      v20 = v10;
      String.append(_:)(*&v11);

      return v23;
    }

    v14 = 0xD000000000000016;
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v23 = 0xD00000000000001BLL;
    v24 = 0x8000000100E5FE70;
    if (v9 <= 1)
    {
      if (v9)
      {
        v15 = "Cloud Library Initial Import";
        v14 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v18 = "Cloud Library Required";
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
        v22._countAndFlagsBits = v14;
        v22._object = (v15 | 0x8000000000000000);
        sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
        v19._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v19);

        v11 = v23;
        v10 = v24;
        goto LABEL_31;
      }

      v18 = "Unadded Tracks Present";
    }

    v15 = (v18 - 32);
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

    v23 = 0;
    v24 = 0xE000000000000000;
    v16 = v5;
    _StringGuts.grow(_:)(24);

    v23 = 0x1000000000000014;
    v24 = 0x8000000100E5FDF0;
    v21[1] = a1;
    static Locale.autoupdatingCurrent.getter();
    sub_1009E1514();
    FloatingPointFormatStyle.Percent.init(locale:)();
    sub_100020674(&qword_1011AB670, &qword_1011AB660, &unk_100EF4760, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v4 + 8))(v7, v16);
    String.append(_:)(v22);

    v17._countAndFlagsBits = 8233;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    return v23;
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

unint64_t sub_1009E1514()
{
  result = qword_1011AB668;
  if (!qword_1011AB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB668);
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
  v11 = type metadata accessor for Playlist.Variant();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = sub_10010FC20(&qword_1011A8E48, &qword_100EEEF48);
  *(v9 + 1544) = swift_task_alloc();
  sub_10010FC20(&qword_1011A8D18, &unk_100EF4780);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  *(v9 + 1576) = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  *(v9 + 1648) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
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
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v9 + 1808) = swift_task_alloc();
  v15 = type metadata accessor for String.LocalizationValue();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = type metadata accessor for MusicLibrary.DownloadStatus();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = type metadata accessor for MusicLibrary.AddStatus();
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
  *(v9 + 2008) = type metadata accessor for MainActor();
  *(v9 + 2016) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_1009E1CC8, v21, v20);
}

uint64_t sub_1009E1CC8()
{
  v554 = v0;
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v519 = type metadata accessor for Logger();
  *(v0 + 2040) = sub_1000060E4(v519, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v525 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v515 = v0;
    v14 = swift_slowAlloc();
    v553[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_100010678(v15, v17, v553);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    sub_10000959C(v14);
    v0 = v515;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v553[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_100010678(v27, v28, v553);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    sub_10000959C(v26);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v553[0] = v36;
    *v35 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_100010678(v37, v39, v553);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    sub_10000959C(v36);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v553[0] = v47;
    *v46 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_100010678(v48, v50, v553);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    sub_10000959C(v47);
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v553[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = MusicLibrary.name.getter();
    v57 = sub_100010678(v55, v56, v553);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = MusicLibrary.id.getter();
    v60 = sub_100010678(v58, v59, v553);

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
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_1009E69AC;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
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
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v532 = swift_slowAlloc();
            v539 = swift_slowAlloc();
            v553[0] = v539;
            *v532 = 136446210;
            sub_1009F1CEC(&qword_1011AB690, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v527 = v134;
            v139 = dispatch thunk of CustomStringConvertible.description.getter();
            v141 = v140;
            v520 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_100010678(v139, v141, v553);

            *(v532 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v520, v527, "|—| Showing alert for reason: %{public}s", v532, 0xCu);
            sub_10000959C(v539);
          }

          else
          {

            v449 = *(v137 + 8);
            v449(v136, v138);
            v143 = v449;
          }

          v450 = *(v0 + 1640);
          v451 = *(v0 + 1608);
          v452 = sub_10093F41C((v0 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v452, *(v0 + 1080), 1, 0, 0);

          sub_1000095E8(v0 + 1120, &qword_1011A9570, &qword_100EF47C0);
          v143(v450, v451);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v402 = Logger.logObject.getter();
          v403 = static os_log_type_t.error.getter();
          v404 = os_log_type_enabled(v402, v403);
          v405 = *(v0 + 1640);
          v406 = *(v0 + 1624);
          v407 = *(v0 + 1616);
          v408 = *(v0 + 1608);
          if (v404)
          {
            v548 = *(v0 + 1640);
            v409 = swift_slowAlloc();
            v536 = swift_slowAlloc();
            v553[0] = v536;
            *v409 = 136446210;
            sub_1009F1CEC(&qword_1011AB690, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v410 = dispatch thunk of CustomStringConvertible.description.getter();
            v412 = v411;
            v413 = *(v407 + 8);
            v413(v406, v408);
            v414 = sub_100010678(v410, v412, v553);

            *(v409 + 4) = v414;
            _os_log_impl(&_mh_execute_header, v402, v403, "|—| Unhandled alert for reason: %{public}s", v409, 0xCu);
            sub_10000959C(v536);

            v413(v548, v408);
          }

          else
          {

            v461 = *(v407 + 8);
            v461(v406, v408);
            v461(v405, v408);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v543 = swift_slowAlloc();
          v553[0] = v543;
          *v244 = 136446210;
          dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
          sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v245 = dispatch thunk of CustomStringConvertible.description.getter();
          v247 = v246;
          v239(v242, v243);
          v248 = sub_100010678(v245, v247, v553);

          *(v244 + 4) = v248;
          _os_log_impl(&_mh_execute_header, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          sub_10000959C(v543);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
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
        v537 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v525)(v101, v108, v102);
        sub_10012B7A8(v107, v0 + 688);
        sub_1009F121C(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v537, v110, &v550);
        *(v0 + 2144) = *(&v550 + 1);
        *(v0 + 2152) = *(&v551 + 1);
        *(v0 + 2160) = *(&v552 + 1);
        v111 = v551;
        *(v0 + 384) = v550;
        *(v0 + 400) = v111;
        *(v0 + 416) = v552;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_1000D9088;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_100EEE6F8;
        v538 = sub_1009BED6C;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_100EEE700;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_1009E6510;
        goto LABEL_36;
      }

      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v525)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v360 = *(v0 + 1576);
        v224(v360, 1, 1, *(v0 + 1584));
        sub_1000095E8(v360, &qword_1011AA6C0, &qword_100EEF960);
        v238 = v525;
LABEL_134:
        v438 = *(v0 + 1992);
        v439 = *(v0 + 1952);
        v440 = *(v0 + 1648);
        v441 = *(v0 + 1504);
        v442 = *(v0 + 1488);
        v443 = *(v0 + 1480);
        v444 = *(v0 + 1456);
        (v238)(v438, *(v0 + 1440), v439);
        sub_10012B7A8(v444, v0 + 496);
        sub_1009F121C(v443, v440);
        v445 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v445 - 8) + 56))(v440, 0, 1, v445);
        type metadata accessor for MusicLibrary();
        v446 = static MusicLibrary.shared.getter();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v438, v446, v0 + 496, v440, v439, v442, *(v441 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v447 = swift_allocObject();
        *(v447 + 16) = &unk_100EEE3A0;
        *(v447 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_1008DEC24;
        *(v0 + 240) = &unk_100EEE3B8;
        *(v0 + 248) = v447;
        *(v0 + 256) = &unk_100EEE3A8;
        *(v0 + 264) = 0;
        v448 = swift_task_alloc();
        *(v0 + 2216) = v448;
        *v448 = v0;
        v448[1] = sub_1009E72A8;

        return sub_1009CE788(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v523 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v542 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      Playlist.variant.getter();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v542 + 12);
      sub_1000089F8(v523, v230, &qword_1011A8D18, &unk_100EF4780);
      sub_1000089F8(v229, v230 + v234, &qword_1011A8D18, &unk_100EF4780);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        sub_1000095E8(*(v0 + 1560), &qword_1011A8D18, &unk_100EF4780);
        sub_1000095E8(v236, &qword_1011A8D18, &unk_100EF4780);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          sub_1000095E8(*(v0 + 1544), &qword_1011A8D18, &unk_100EF4780);
          v238 = v525;
LABEL_152:
          v467 = *(v0 + 1992);
          v468 = *(v0 + 1952);
          v469 = *(v0 + 1648);
          v470 = *(v0 + 1504);
          v471 = *(v0 + 1488);
          v472 = *(v0 + 1480);
          v473 = *(v0 + 1456);
          (v238)(v467, *(v0 + 1440), v468);
          sub_10012B7A8(v473, v0 + 592);
          sub_1009F121C(v472, v469);
          v474 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v474 - 8) + 56))(v469, 0, 1, v474);
          type metadata accessor for MusicLibrary();
          v475 = static MusicLibrary.shared.getter();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v467, v475, 1, v0 + 592, v469, v468, v471, *(v470 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_1000D9088;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_100EEEA60;
          v538 = sub_1009C024C;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_100EEEA68;
          *(v0 + 376) = 0;
          v476 = swift_task_alloc();
          *(v0 + 2200) = v476;
          *v476 = v0;
          v476[1] = sub_1009E6E0C;
LABEL_36:

          return v538();
        }
      }

      else
      {
        v431 = *(v0 + 1512);
        sub_1000089F8(*(v0 + 1544), *(v0 + 1552), &qword_1011A8D18, &unk_100EF4780);
        v432 = v235(v233 + v234, 1, v431);
        v433 = *(v0 + 1568);
        v434 = *(v0 + 1560);
        v435 = *(v0 + 1552);
        if (v432 != 1)
        {
          v549 = *(v0 + 1544);
          v462 = *(v0 + 1528);
          v463 = *(v0 + 1520);
          v464 = *(v0 + 1512);
          (*(v463 + 32))(v462, v233 + v234, v464);
          sub_1009F1CEC(&qword_1011A9F60, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v465 = dispatch thunk of static Equatable.== infix(_:_:)();
          v466 = *(v463 + 8);
          v466(v462, v464);
          sub_1000095E8(v434, &qword_1011A8D18, &unk_100EF4780);
          sub_1000095E8(v433, &qword_1011A8D18, &unk_100EF4780);
          v466(v435, v464);
          sub_1000095E8(v549, &qword_1011A8D18, &unk_100EF4780);
          v238 = v525;
          if (v465)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v436 = *(v0 + 1520);
        v437 = *(v0 + 1512);
        sub_1000095E8(*(v0 + 1560), &qword_1011A8D18, &unk_100EF4780);
        sub_1000095E8(v433, &qword_1011A8D18, &unk_100EF4780);
        (*(v436 + 8))(v435, v437);
      }

      sub_1000095E8(*(v0 + 1544), &qword_1011A8E48, &qword_100EEEF48);
      v238 = v525;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    sub_1009F11C8();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
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
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v531 = v83;
      v90 = swift_slowAlloc();
      v526 = swift_slowAlloc();
      v553[0] = v526;
      *v90 = 136446210;
      sub_1009F1CEC(&qword_1011A8848, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v516 = v85;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_100010678(v91, v93, v553);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v516, "|—| Reason: %{public}s", v90, 0xCu);
      sub_10000959C(v526);

      v83 = v531;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v544 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&_mh_execute_header, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      sub_10097F360(0, v0 + 1192);
      v257 = sub_10093F41C((v0 + 1192), 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = *(v256 + 88);
        v262 = qword_1011A6AC8;

        if (v262 != -1)
        {
          swift_once();
        }

        sub_1000060E4(v519, qword_1011AE4E0);
        v263 = Logger.logObject.getter();
        v264 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *v265 = 0;
          _os_log_impl(&_mh_execute_header, v263, v264, "Deferring presentation…", v265, 2u);
        }

        v533 = *(v0 + 1880);
        v266 = *(v0 + 1848);
        v267 = *(v0 + 1456);

        v268 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_100A8F4C0;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_100A90460;
        *(v0 + 1336) = &unk_1010D5D60;
        v269 = _Block_copy((v0 + 1312));
        v270 = [v268 initWithTimeout:v269 interruptionHandler:10.0];
        _Block_release(v269);

        sub_10012B7A8(v267, v0 + 880);
        v271 = swift_allocObject();
        *(v271 + 16) = v270;
        sub_10012B828(v0 + 880, v271 + 24);
        *(v271 + 120) = v258;
        *(v271 + 128) = v259;
        *(v271 + 129) = 1;
        *(v271 + 136) = 0;
        *(v271 + 144) = 0;
        v272 = v270;
        v273 = v258;
        v260(v267, v273, sub_1008D9CA4, v271);
        sub_100020438(v260, v261);

        sub_100344A84(v0 + 1192);
        v274 = v533;
        v275 = v266;
        goto LABEL_144;
      }

      v415 = *(v0 + 1880);
      v416 = *(v0 + 1848);
      sub_100A8D9A0(v257, *(v0 + 1224), 1, 0, 0);

      sub_100344A84(v0 + 1192);
      v274 = v415;
LABEL_143:
      v275 = v416;
LABEL_144:
      (v544)(v274, v275);
LABEL_145:
      v457 = Logger.logObject.getter();
      v458 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v457, v458))
      {
        v459 = swift_slowAlloc();
        *v459 = 0;
        _os_log_impl(&_mh_execute_header, v457, v458, "╰ ✅ Succeeded", v459, 2u);
      }

      v460 = *(v0 + 8);

      return v460();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v361 = Logger.logObject.getter();
        v362 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v361, v362))
        {
          v363 = swift_slowAlloc();
          *v363 = 0;
          _os_log_impl(&_mh_execute_header, v361, v362, "|—| Presenting library import in progress alert", v363, 2u);
        }

        v364 = *(v0 + 1840);
        v365 = *(v0 + 1832);
        v366 = *(v0 + 1824);
        v367 = *(v0 + 1816);

        String.LocalizationValue.init(stringLiteral:)();
        v510 = *(v366 + 16);
        v510(v365, v364, v367);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v368 = *(v0 + 1840);
        v369 = *(v0 + 1832);
        v370 = *(v0 + 1824);
        v371 = *(v0 + 1816);
        v506 = *(v0 + 1800);
        v514 = *(v0 + 1792);
        v518 = *(v0 + 1784);
        v546 = *(v0 + 1456);
        v372 = qword_101219808;
        static Locale.current.getter();
        v373 = v372;
        v374 = String.init(localized:table:bundle:locale:comment:)();
        v530 = v375;
        v534 = v374;
        v376 = *(v370 + 8);
        v376(v368, v371);
        String.LocalizationValue.init(stringLiteral:)();
        v510(v369, v368, v371);
        static Locale.current.getter();
        v377 = String.init(localized:table:bundle:locale:comment:)();
        v497 = v378;
        v502 = v377;
        v376(v368, v371);
        String.LocalizationValue.init(stringLiteral:)();
        v510(v369, v368, v371);
        static Locale.current.getter();
        v379 = String.init(localized:table:bundle:locale:comment:)();
        v381 = v380;
        v376(v368, v371);
        UUID.init()();
        v382 = UUID.uuidString.getter();
        v384 = v383;
        (*(v514 + 8))(v506, v518);
        sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
        v385 = swift_allocObject();
        *(v385 + 16) = xmmword_100EBC6B0;
        *(v385 + 32) = v382;
        *(v385 + 40) = v384;
        *(v385 + 48) = v379;
        *(v385 + 56) = v381;
        *(v385 + 64) = 2;
        *(v385 + 72) = 0;
        *(v385 + 80) = 0;
        LOBYTE(v553[0]) = 1;
        *(v0 + 976) = v534;
        *(v0 + 984) = v530;
        *(v0 + 992) = v502;
        *(v0 + 1000) = v497;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v385;
        *(v0 + 1040) = 0;

        v386 = sub_10093F41C((v0 + 976), 0, 1);
        v387 = v386;
        v388 = *(v546 + 10);
        if (v388)
        {
          v389 = *(v546 + 11);
          v390 = qword_1011A6AC8;

          if (v390 != -1)
          {
            swift_once();
          }

          sub_1000060E4(v519, qword_1011AE4E0);
          v391 = Logger.logObject.getter();
          v392 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v391, v392))
          {
            v393 = swift_slowAlloc();
            *v393 = 0;
            _os_log_impl(&_mh_execute_header, v391, v392, "Deferring presentation…", v393, 2u);
          }

          v394 = *(v0 + 1856);
          v535 = *(v0 + 1848);
          v547 = *(v0 + 1880);
          v395 = *(v0 + 1456);

          v396 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_100A8F4C0;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_100A90460;
          *(v0 + 1288) = &unk_1010D5D10;
          v397 = _Block_copy((v0 + 1264));
          v398 = [v396 initWithTimeout:v397 interruptionHandler:10.0];
          _Block_release(v397);

          sub_10012B7A8(v395, v0 + 784);
          v399 = swift_allocObject();
          *(v399 + 16) = v398;
          sub_10012B828(v0 + 784, v399 + 24);
          *(v399 + 120) = v387;
          *(v399 + 128) = 257;
          *(v399 + 136) = 0;
          *(v399 + 144) = 0;
          v400 = v398;
          v401 = v387;
          v388(v395, v401, sub_1008D9BB8, v399);
          sub_100020438(v388, v389);

          sub_100344A84(v0 + 976);

          (*(v394 + 8))(v547, v535);
        }

        else
        {
          v483 = *(v0 + 1880);
          v484 = *(v0 + 1856);
          v485 = *(v0 + 1848);
          sub_100A8D9A0(v386, 1, 1, 0, 0);

          sub_100344A84(v0 + 976);

          (*(v484 + 8))(v483, v485);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v477 = Logger.logObject.getter();
        v478 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v477, v478))
        {
          v479 = swift_slowAlloc();
          *v479 = 0;
          _os_log_impl(&_mh_execute_header, v477, v478, "|—| Unaddable reason is not supported by the UI", v479, 2u);
        }

        v480 = *(v0 + 1880);
        v481 = *(v0 + 1864);
        v482 = *(v0 + 1848);

        sub_1009F11C8();
        v181 = swift_allocError();
        swift_willThrow();
        (v544)(v480, v482);
        (v544)(v481, v482);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        sub_10010FC20(&qword_1011AB640, L"D\v\a");
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v187, v188))
          {
            v512 = *(v0 + 2048);
            v504 = *(v0 + 1992);
            v508 = *(v0 + 1976);
            v522 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v495 = *(v0 + 1888);
            v500 = *(v0 + 1952);
            v541 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v528 = v187;
            v196 = swift_slowAlloc();
            v553[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = sub_100010678(v197, v198, v553);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v200 = dispatch thunk of CustomStringConvertible.description.getter();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = sub_100010678(v200, v202, v553);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v204 = dispatch thunk of CustomStringConvertible.description.getter();
            v206 = v205;
            (*(v193 + 8))(v192, v495);
            v207 = sub_100010678(v204, v206, v553);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v512(v504, v508, v500);
            v208 = String.init<A>(describing:)();
            v210 = v209;
            (*(v522 + 8))(v508, v500);
            v211 = sub_100010678(v208, v210, v553);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = String.init<A>(describing:)();
            v214 = sub_100010678(v212, v213, v553);

            *(v196 + 44) = v214;
            _os_log_impl(&_mh_execute_header, v528, v541, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v417 = *(v0 + 1976);
            v418 = *(v0 + 1960);
            v419 = *(v0 + 1952);

            (*(v418 + 8))(v417, v419);
          }

          *(v0 + 2240) = sub_1009F11C8();
          v420 = swift_allocError();
          *(v0 + 2248) = v420;
          v421 = swift_task_alloc();
          *(v0 + 2256) = v421;
          *v421 = v0;
          v421[1] = sub_1009E73DC;
          v422 = *(v0 + 1456);
          v423 = *(v0 + 1448);
          v424 = *(v0 + 1432);
          v425 = *(v0 + 1402);
          v426 = v420;
        }

        else
        {
          v333 = *(v0 + 1968);

          v183(v333, v185, v184);

          swift_errorRetain();
          v334 = Logger.logObject.getter();
          v335 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v334, v335))
          {
            v513 = *(v0 + 2048);
            v505 = *(v0 + 1992);
            v509 = *(v0 + 1968);
            v524 = *(v0 + 1960);
            v336 = *(v0 + 1944);
            v337 = *(v0 + 1928);
            v338 = *(v0 + 1920);
            v496 = *(v0 + 1896);
            v501 = *(v0 + 1952);
            v491 = *(v0 + 1912);
            v493 = *(v0 + 1888);
            v545 = v335;
            v339 = *(v0 + 1432);
            v340 = *(v0 + 1402);
            v529 = v334;
            v341 = swift_slowAlloc();
            v553[0] = swift_slowAlloc();
            *v341 = 136447234;
            v342 = MusicLibrary.ActionableState.description.getter(v339, v340);
            v344 = sub_100010678(v342, v343, v553);

            *(v341 + 4) = v344;
            *(v341 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v345 = dispatch thunk of CustomStringConvertible.description.getter();
            v347 = v346;
            (*(v337 + 8))(v336, v338);
            v348 = sub_100010678(v345, v347, v553);

            *(v341 + 14) = v348;
            *(v341 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v349 = dispatch thunk of CustomStringConvertible.description.getter();
            v351 = v350;
            (*(v496 + 8))(v491, v493);
            v352 = sub_100010678(v349, v351, v553);

            *(v341 + 24) = v352;
            *(v341 + 32) = 2082;
            v513(v505, v509, v501);
            v353 = String.init<A>(describing:)();
            v355 = v354;
            (*(v524 + 8))(v509, v501);
            v356 = sub_100010678(v353, v355, v553);

            *(v341 + 34) = v356;
            *(v341 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v357 = String.init<A>(describing:)();
            v359 = sub_100010678(v357, v358, v553);

            *(v341 + 44) = v359;
            _os_log_impl(&_mh_execute_header, v529, v545, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v341, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v427 = *(v0 + 1968);
            v428 = *(v0 + 1960);
            v429 = *(v0 + 1952);

            (*(v428 + 8))(v427, v429);
          }

          v430 = swift_task_alloc();
          *(v0 + 2264) = v430;
          *v430 = v0;
          v430[1] = sub_1009E786C;
          v422 = *(v0 + 1456);
          v423 = *(v0 + 1448);
          v424 = *(v0 + 1432);
          v425 = *(v0 + 1402);
          v426 = v181;
        }

        return sub_1009EA894(v426, v424, v425, v423, v422);
      }

      v453 = Logger.logObject.getter();
      v454 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v453, v454))
      {
        v455 = swift_slowAlloc();
        *v455 = 0;
        _os_log_impl(&_mh_execute_header, v453, v454, "|—| Presenting upsell", v455, 2u);
      }

      v456 = *(v0 + 1880);
      v416 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_100309980(v0 + 1360);
      v274 = v456;
      goto LABEL_143;
    }

    v283 = Logger.logObject.getter();
    v284 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v283, v284))
    {
      v285 = swift_slowAlloc();
      *v285 = 0;
      _os_log_impl(&_mh_execute_header, v283, v284, "|—| Presenting Cloud Library Requirement alert", v285, 2u);
    }

    *(v0 + 2072) = static MainActor.shared.getter();
    v287 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 2080) = v287;
    *(v0 + 2088) = v286;

    return _swift_task_switch(sub_1009E5A2C, v287, v286);
  }

  else
  {
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
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
    v494 = *(v0 + 1752);
    v498 = *(v0 + 1712);
    v503 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_1009E0F34(v152, 0);
    sub_1009F2028(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v489 = v158;
    v490 = v157;
    v159 = type metadata accessor for URL();
    v487 = *(*(v159 - 8) + 56);
    v488 = v159;
    v487(v153, 1, 1);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_100EBDC20;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v511 = sub_1008AC260(v160);
    v521 = v162;
    v540 = v163;
    v517 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000089F8(v153, v494, &qword_1011A77F0, &unk_100EEAA20);
    v165 = type metadata accessor for Actions.MetricsReportingContext(0);
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    sub_1000089F8(v156 + v165[5], v498, &qword_1011A7F08, &unk_100EECDE0);
    v507 = v165;
    v492 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v490;
    *(v154 + 8) = v489;
    *(v154 + 16) = 773;
    sub_10003D17C(v494, v154 + v155[7], &qword_1011A77F0, &unk_100EEAA20);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v511;
    *(v171 + 8) = v521;
    *(v171 + 16) = v540;
    *(v171 + 24) = v517;
    sub_1000089F8(v498, v503, &qword_1011A7F08, &unk_100EECDE0);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v499 = *(*(v172 - 1) + 48);
    v173 = v499(v503, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      sub_100633490(v168, v167);

      v175 = v511;
      sub_1005EA59C(v511, v521, v540, v517, SBYTE1(v517));
      sub_1000095E8(v174, &qword_1011A7F08, &unk_100EECDE0);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      sub_100633490(v168, v167);

      v175 = v511;
      sub_1005EA59C(v511, v521, v540, v517, SBYTE1(v517));

      sub_1009F2028(v174, type metadata accessor for MetricsEvent.Page);
    }

    v276 = *(v0 + 1712);
    v277 = *(v0 + 1696);
    v278 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v278 = v176;
    v278[1] = v177;
    sub_1000089F8(v276, v277, &qword_1011A7F08, &unk_100EECDE0);
    v279 = v499(v277, 1, v172);
    v280 = *(v0 + 1696);
    if (v279 == 1)
    {
      sub_1000095E8(*(v0 + 1696), &qword_1011A7F08, &unk_100EECDE0);
      v281 = 0;
      v282 = 0;
    }

    else
    {
      v281 = *(v280 + 16);
      v282 = *(v280 + 24);

      sub_1009F2028(v280, type metadata accessor for MetricsEvent.Page);
    }

    v288 = *(v0 + 1712);
    v289 = *(v0 + 1688);
    v290 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v290 = v281;
    v290[1] = v282;
    sub_1000089F8(v288, v289, &qword_1011A7F08, &unk_100EECDE0);
    v291 = v499(v289, 1, v172);
    v292 = *(v0 + 1744);
    v293 = *(v0 + 1688);
    if (v291 == 1)
    {
      sub_1000095E8(*(v0 + 1688), &qword_1011A7F08, &unk_100EECDE0);
      (v487)(v292, 1, 1, v488);
    }

    else
    {
      sub_1000089F8(v293 + v172[6], *(v0 + 1744), &qword_1011A77F0, &unk_100EEAA20);
      sub_1009F2028(v293, type metadata accessor for MetricsEvent.Page);
    }

    v294 = *(v0 + 1712);
    v295 = *(v0 + 1680);
    sub_10003D17C(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_1011A77F0, &unk_100EEAA20);
    sub_1000089F8(v294, v295, &qword_1011A7F08, &unk_100EECDE0);
    v296 = v499(v295, 1, v172);
    v297 = *(v0 + 1680);
    if (v296 == 1)
    {
      sub_1000095E8(*(v0 + 1680), &qword_1011A7F08, &unk_100EECDE0);
      v298 = 0;
    }

    else
    {
      v298 = *(v297 + v172[7]);

      sub_1009F2028(v297, type metadata accessor for MetricsEvent.Page);
    }

    v299 = *(v0 + 1712);
    v300 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v298;
    sub_1000089F8(v299, v300, &qword_1011A7F08, &unk_100EECDE0);
    v301 = v499(v300, 1, v172);
    v302 = *(v0 + 1672);
    if (v301 == 1)
    {
      sub_1000095E8(v302, &qword_1011A7F08, &unk_100EECDE0);
      v303 = 1;
    }

    else
    {
      v303 = *(v302 + v172[9]);
      sub_1009F2028(v302, type metadata accessor for MetricsEvent.Page);
    }

    v304 = *(v0 + 1712);
    v305 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v303;
    sub_1000089F8(v304, v305, &qword_1011A7F08, &unk_100EECDE0);
    v306 = v499(v305, 1, v172);
    v307 = *(v0 + 1664);
    if (v306 == 1)
    {
      sub_1000095E8(*(v0 + 1664), &qword_1011A7F08, &unk_100EECDE0);
      v308 = 0;
      v309 = 0;
    }

    else
    {
      v310 = (v307 + v172[8]);
      v308 = *v310;
      v309 = v310[1];

      sub_1009F2028(v307, type metadata accessor for MetricsEvent.Page);
    }

    v311 = *(v0 + 1712);
    v312 = *(v0 + 1656);
    v313 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v313 = v308;
    v313[1] = v309;
    sub_10003D17C(v311, v312, &qword_1011A7F08, &unk_100EECDE0);
    v314 = v499(v312, 1, v172);
    v315 = *(v0 + 1656);
    if (v314 == 1)
    {
      sub_1000095E8(v315, &qword_1011A7F08, &unk_100EECDE0);
      v317 = 2;
    }

    else
    {
      v317 = *(v315 + v172[11]);
      sub_1009F2028(v315, type metadata accessor for MetricsEvent.Page);
    }

    v318 = *(v0 + 1736);
    v319 = *(v0 + 1728);
    v320 = *(v0 + 1720);
    *(v319 + *(v320 + 68)) = v317;
    *(v319 + *(v320 + 44)) = v492;
    sub_1008A8DAC(v319, v318, v316);
    if (qword_1011A6810 != -1)
    {
      swift_once();
    }

    v321 = *(v0 + 1952);
    v322 = *(v0 + 1760);
    v323 = *(v0 + 1736);
    v324 = *(v0 + 1480);
    v325 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v323, *(v324 + v507[6]), *(v324 + v507[6] + 8), *(v324 + v507[9]), *(v324 + v507[9] + 8), *(v324 + v507[9] + 16));
    sub_100344B1C(v175, v521, v540, v517, SBYTE1(v517));
    sub_1009F2028(v323, type metadata accessor for MetricsEvent.Click);
    sub_1000095E8(v322, &qword_1011A77F0, &unk_100EEAA20);
    sub_1009F00CC(v321, v321);
    swift_allocObject();
    v326 = static Array._adoptStorage(_:count:)();
    *(v0 + 2120) = v326;
    (v525)(v327, v325, v321);
    v328 = type metadata accessor for Array();
    *(v0 + 1424) = v326;
    v329 = swift_task_alloc();
    *(v0 + 2128) = v329;
    WitnessTable = swift_getWitnessTable();
    *v329 = v0;
    v329[1] = sub_1009E6054;
    v331 = *(v0 + 1952);
    v332 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v328, v331, WitnessTable, v332);
  }
}

uint64_t sub_1009E5A2C(uint64_t a1)
{
  v2 = v1[182];
  v3 = static MainActor.shared.getter();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = sub_1009E5B40;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v4, &type metadata for Bool);
}

uint64_t sub_1009E5B40()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_1009E5CA0, v3, v2);
}

uint64_t sub_1009E5CA0()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_1009E5D08, v2, v1);
}

uint64_t sub_1009E5D08()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1009E6054()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_1009E7CB8;
  }

  else
  {

    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_1009E6198;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009E6198()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1009E6510()
{
  v2 = *v1;
  v2[272] = v0;

  sub_1000095E8((v2 + 48), &qword_1011A86C8, &qword_100EF47D0);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1009E8574;
  }

  else
  {
    v5 = sub_1009E6664;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009E6664()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1009E69AC()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_1009E8E34;
  }

  else
  {
    v5 = sub_1009E6AE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009E6AE8()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1009E6E0C()
{
  v2 = *v1;
  v2[276] = v0;

  sub_1000095E8((v2 + 34), &qword_1011A86C0, &qword_100EEDC80);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1009E96D4;
  }

  else
  {
    v5 = sub_1009E6F60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009E6F60()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1009E72A8()
{
  v2 = *v1;
  v2[278] = v0;

  sub_1000095E8((v2 + 2), &qword_1011A8A68, &qword_100EEE688);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1009E9F90;
  }

  else
  {
    v5 = sub_1009F3DE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009E73DC()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1009E7520, v3, v2);
}

uint64_t sub_1009E7520()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
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

uint64_t sub_1009E786C()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1009E798C, v3, v2);
}

uint64_t sub_1009E798C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
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

uint64_t sub_1009E7CB8()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

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
      v19 = sub_100010678(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100010678(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100010678(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100010678(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = sub_100010678(v32, v33, &v95);

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

    *(v0 + 2240) = sub_1009F11C8();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1009E73DC;
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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

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
      v46 = sub_100010678(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100010678(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100010678(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100010678(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_100010678(v59, v60, &v95);

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
    v75[1] = sub_1009E786C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1009EA894(v71, v69, v70, v68, v67);
}

uint64_t sub_1009E8574()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

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
      v19 = sub_100010678(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100010678(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100010678(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100010678(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = sub_100010678(v32, v33, &v95);

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

    *(v0 + 2240) = sub_1009F11C8();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1009E73DC;
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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

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
      v46 = sub_100010678(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100010678(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100010678(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100010678(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_100010678(v59, v60, &v95);

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
    v75[1] = sub_1009E786C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1009EA894(v71, v69, v70, v68, v67);
}

uint64_t sub_1009E8E34()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

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
      v19 = sub_100010678(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100010678(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100010678(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100010678(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = sub_100010678(v32, v33, &v95);

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

    *(v0 + 2240) = sub_1009F11C8();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1009E73DC;
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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

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
      v46 = sub_100010678(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100010678(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100010678(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100010678(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_100010678(v59, v60, &v95);

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
    v75[1] = sub_1009E786C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1009EA894(v71, v69, v70, v68, v67);
}

uint64_t sub_1009E96D4()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

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
      v19 = sub_100010678(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100010678(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100010678(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100010678(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = sub_100010678(v32, v33, &v95);

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

    *(v0 + 2240) = sub_1009F11C8();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1009E73DC;
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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

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
      v46 = sub_100010678(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100010678(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100010678(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100010678(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_100010678(v59, v60, &v95);

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
    v75[1] = sub_1009E786C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1009EA894(v71, v69, v70, v68, v67);
}

uint64_t sub_1009E9F90()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

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
      v19 = sub_100010678(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100010678(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100010678(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100010678(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = sub_100010678(v32, v33, &v95);

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

    *(v0 + 2240) = sub_1009F11C8();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1009E73DC;
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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

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
      v46 = sub_100010678(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100010678(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100010678(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100010678(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_100010678(v59, v60, &v95);

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
    v75[1] = sub_1009E786C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1009EA894(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.libraryActionableState);
}

uint64_t sub_1009EA894(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 376) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009EAA6C, v10, v9);
}

uint64_t sub_1009EAA6C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  _StringGuts.grow(_:)(91);
  v5._countAndFlagsBits = 0xD000000000000032;
  v5._object = 0x8000000100E60010;
  String.append(_:)(v5);
  *(v0 + 232) = v3;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x8000000100E60050;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x53206D6574490A0ALL;
  v9._object = 0xEE00203A65746174;
  String.append(_:)(v9);
  *(v0 + 240) = v1;
  type metadata accessor for MusicLibrary.ItemState();

  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = sub_1000294C0(_swiftEmptyArrayStorage);
  if (qword_1011A70E8 != -1)
  {
    v63 = v12;
    swift_once();
    v12 = v63;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    sub_1009AC87C(0xD00000000000001DLL, 0x8000000100E5FFF0, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v13, 1u);

    sub_1000089F8(v13, v14, &qword_1011A77F0, &unk_100EEAA20);
    if ((*(v15 + 48))(v14, 1, v16) == 1)
    {
      v17 = *(v0 + 360);
      sub_1000095E8(*(v0 + 368), &qword_1011A77F0, &unk_100EEAA20);
      sub_1000095E8(v17, &qword_1011A77F0, &unk_100EEAA20);
    }

    else
    {
      v20 = *(*(v0 + 328) + 32);
      v20(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v21 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = [v21 canOpenURL:v23];

      v26 = *(v0 + 368);
      v27 = *(v0 + 352);
      if (v25)
      {
        v71 = *(v0 + 368);
        v28 = *(v0 + 344);
        v74 = (v0 + 112);
        v30 = *(v0 + 320);
        v29 = *(v0 + 328);
        v31 = *(v0 + 304);
        v32 = *(v0 + 312);
        v70 = *(v0 + 296);
        (*(v29 + 16))(v28, v27, v30);
        v68 = v20;
        v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v73 = swift_allocObject();
        v68(v73 + v33, v28, v30);
        UUID.init()();
        v67 = UUID.uuidString.getter();
        v35 = v34;
        v69 = *(v31 + 8);
        v69(v32, v70);
        (*(v29 + 8))(v27, v30);
        sub_1000095E8(v71, &qword_1011A77F0, &unk_100EEAA20);
        if (qword_1011A69D0 != -1)
        {
          swift_once();
        }

        v72 = v35;
        v64 = type metadata accessor for Logger();
        sub_1000060E4(v64, static Logger.libraryActionableState);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "|—● Presenting Tap-To-Radar alert", v38, 2u);
        }

        v39 = *(v0 + 312);
        v40 = *(v0 + 296);
        v66 = *(v0 + 280);
        v41 = *(v0 + 256);

        *(v0 + 248) = v41;
        swift_errorRetain();
        v75 = String.init<A>(describing:)();
        v65 = v42;
        sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_100EBDC20;
        *(v43 + 32) = v67;
        *(v43 + 40) = v72;
        strcpy((v43 + 48), "File a Radar");
        *(v43 + 61) = 0;
        *(v43 + 62) = -5120;
        *(v43 + 64) = 2;
        *(v43 + 72) = &unk_100EF4AC0;
        *(v43 + 80) = v73;

        UUID.init()();
        v44 = UUID.uuidString.getter();
        v46 = v45;
        v69(v39, v40);
        *(v43 + 88) = v44;
        *(v43 + 96) = v46;
        *(v43 + 104) = 19279;
        *(v43 + 112) = 0xE200000000000000;
        *(v43 + 120) = 2;
        *(v43 + 128) = 0;
        *(v43 + 136) = 0;
        *(v0 + 112) = xmmword_100EE9530;
        *(v0 + 128) = v75;
        *(v0 + 136) = v65;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v43;
        *(v0 + 176) = 0;
        v47 = sub_10093F41C(v74, 0, 1);
        v48 = v47;
        v49 = *(v66 + 80);
        if (v49)
        {
          v50 = *(v0 + 144);
          v51 = *(v66 + 88);
          v52 = qword_1011A6AC8;

          if (v52 != -1)
          {
            swift_once();
          }

          sub_1000060E4(v64, qword_1011AE4E0);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Deferring presentation…", v55, 2u);
          }

          v56 = *(v0 + 280);

          v57 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_100A8F4C0;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_100A90460;
          *(v0 + 208) = &unk_1010D6308;
          v58 = _Block_copy((v0 + 184));
          v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
          _Block_release(v58);

          sub_10012B7A8(v56, v0 + 16);
          v60 = swift_allocObject();
          *(v60 + 16) = v59;
          sub_10012B828(v0 + 16, v60 + 24);
          *(v60 + 120) = v48;
          *(v60 + 128) = v50;
          *(v60 + 129) = 1;
          *(v60 + 136) = 0;
          *(v60 + 144) = 0;
          v61 = v59;
          v62 = v48;
          v49(v56, v62, sub_1008D9CA4, v60);
          sub_100020438(v49, v51);

          sub_100344A84(v74);
        }

        else
        {
          sub_100A8D9A0(v47, *(v0 + 144), 1, 0, 0);

          sub_100344A84(v74);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_1000095E8(v26, &qword_1011A77F0, &unk_100EEAA20);
      }
    }
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1009F1280(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_1009F1280(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_1009EB4F0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v3 = &v9 - v2;
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = type metadata accessor for MusicLibrary.DownloadStatus();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1009ED28C(v5, v3);

    sub_1000095E8(v3, &qword_1011AB748, &qword_100EF4A28);
    return sub_1000095E8(v5, &qword_1011AB750, &unk_100EF4A30);
  }

  return result;
}

uint64_t sub_1009EB6A8(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = type metadata accessor for Album();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v80 = &v66 - v4;
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v79 = &v66 - v5;
  sub_10010FC20(&qword_1011A8AB8, &qword_100EEE7B8);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = sub_10010FC20(&qword_1011AA6B0, &qword_100EF4A40);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = type metadata accessor for Playlist();
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
  dispatch thunk of MusicLibrary.ItemState.item.setter();
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
    v35 = &qword_1011AA6C0;
    v36 = &qword_100EEF960;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  Playlist.entries.getter();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &qword_1011A8AB8;
    v36 = &qword_100EEE7B8;
LABEL_5:
    v37 = v29;
LABEL_6:
    sub_1000095E8(v37, v35, v36);
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
    v35 = &qword_1011AA6C0;
    v36 = &qword_100EEF960;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  Playlist.entries.getter();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &qword_1011A8AB8;
    v36 = &qword_100EEE7B8;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  sub_100020674(&qword_1011AA6E0, &qword_1011AA6B0, &qword_100EF4A40, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v57 = dispatch thunk of Collection.distance(from:to:)();
  v39 = v87;
  if (!v57 && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() > 0) || (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() >= 1) && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), !dispatch thunk of Collection.distance(from:to:)()))
  {
    v60 = type metadata accessor for MusicLibrary.AddStatus();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = type metadata accessor for MusicLibrary.DownloadStatus();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    sub_1009ED28C(v61, v63);
    sub_1000095E8(v63, &qword_1011AB748, &qword_100EF4A28);
    sub_1000095E8(v61, &qword_1011AB750, &unk_100EF4A30);
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
    v42 = type metadata accessor for MusicLibrary.AddStatus();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = type metadata accessor for MusicLibrary.DownloadStatus();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    sub_1009ED28C(v43, v45);
    sub_1000095E8(v45, &qword_1011AB748, &qword_100EF4A28);
    return sub_1000095E8(v43, &qword_1011AB750, &unk_100EF4A30);
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

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1009F184C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
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
  return sub_1009EC598;
}

void sub_1009EC598(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1009F184C(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_1009F184C(*(v2 + 56));
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

void sub_1009EC7B0(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v11 = v2 + *(v10 + 152);
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 8);
  if (!(v13 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return;
        }
      }

      else if (a1 != 5 && v12 == a1)
      {
        return;
      }
    }

    goto LABEL_37;
  }

  if (v13 >> 14 != 1)
  {
    if (v12 | v13 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v12 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v13)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v13) >> 8) & 1) == 0)
      {
        return;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v13) >> 8) & 1) == 0)
    {
      return;
    }
  }

LABEL_37:
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000060E4(v16, static Logger.libraryActionableState);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v43 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = v7;
    v45[0] = v22;
    *v21 = 136446722;
    v23 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v25 = sub_100010678(v23, v24, v45);
    v41 = a1;
    v26 = v25;

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v29 = sub_100010678(v27, v28, v45);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2082;
    v30 = *(*v3 + 128);
    swift_beginAccess();
    (*(v42 + 16))(v9, v3 + v30, v44);
    v31 = String.init<A>(describing:)();
    v33 = sub_100010678(v31, v32, v45);

    *(v21 + 24) = v33;
    v34 = v18;
    v35 = v41;
    _os_log_impl(&_mh_execute_header, v17, v34, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v21, 0x20u);
    swift_arrayDestroy();
    v7 = v42;

    v6 = v44;
  }

  else
  {

    v35 = a1;
  }

  v36 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v37 = *v36;
  v38 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v38, v6);
  v39 = *v11;
  v40 = *(v11 + 8);

  v37(v9, v35, v43, v39, v40);

  (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

void sub_1009ECCCC(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  sub_1009EC7B0(v6, v7);
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
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_1009ECE70, v7, v6);
}

uint64_t sub_1009ECE70()
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
  v12[1] = sub_1009ECFF8;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_1009ECFF8()
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
    v8 = sub_1009ED220;
  }

  else
  {
    v8 = sub_1009ED1B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1009ED1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009ED220()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1009ED28C(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v229 = a2;
  v224 = a1;
  v4 = *v2;
  v5 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v215 = *(v5 - 8);
  __chkstk_darwin();
  v210 = &v194[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v214 = &v194[-v7];
  __chkstk_darwin();
  v213 = &v194[-v8];
  __chkstk_darwin();
  v212 = &v194[-v9];
  __chkstk_darwin();
  v218 = &v194[-v10];
  sub_10010FC20(&qword_1011A8AB8, &qword_100EEE7B8);
  __chkstk_darwin();
  v206 = &v194[-v11];
  v211 = type metadata accessor for Playlist();
  v202 = *(v211 - 1);
  __chkstk_darwin();
  v201 = &v194[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v203 = &v194[-v13];
  v208 = type metadata accessor for Album();
  v205 = *(v208 - 8);
  __chkstk_darwin();
  v204 = &v194[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v207 = &v194[-v15];
  v16 = *(v4 + 80);
  v17 = type metadata accessor for MusicLibrary.AddStatus();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v209 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v223 = &v194[-v18];
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v20 = &v194[-v19];
  v21 = type metadata accessor for MusicLibrary.DownloadStatus();
  v228 = *(v21 - 8);
  __chkstk_darwin();
  v199 = &v194[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v220 = &v194[-v23];
  __chkstk_darwin();
  v230 = &v194[-v24];
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v26 = &v194[-v25];
  v231 = *(v17 - 8);
  __chkstk_darwin();
  v200 = &v194[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v194[-v28];
  __chkstk_darwin();
  v233 = &v194[-v30];
  v225 = *(v16 - 8);
  __chkstk_darwin();
  v216 = &v194[-v31];
  v32 = v3 + *(v4 + 152);
  swift_beginAccess();
  v196 = *v32;
  v195 = *(v32 + 8);
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_1000060E4(v33, static Logger.libraryActionableState);

  v232 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v226 = v21;
  v227 = v17;
  v217 = v5;
  v222 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v236 = v39;
    *v38 = 136446210;
    v40 = *(*v3 + 128);
    swift_beginAccess();
    (*(v225 + 16))(v216, v3 + v40, v16);
    v41 = String.init<A>(describing:)();
    v43 = sub_100010678(v41, v42, &v236);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "╭ Updating state for item: %{public}s", v38, 0xCu);
    sub_10000959C(v39);
    v17 = v227;

    v21 = v226;
  }

  sub_1000089F8(v224, v26, &qword_1011AB750, &unk_100EF4A30);
  v44 = v231;
  v45 = *(v231 + 48);
  v46 = v45(v26, 1, v17);
  v47 = v228;
  if (v46 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    if (v45(v26, 1, v17) != 1)
    {
      sub_1000095E8(v26, &qword_1011AB750, &unk_100EF4A30);
    }
  }

  else
  {
    (*(v44 + 32))(v233, v26, v17);
  }

  sub_1000089F8(v229, v20, &qword_1011AB748, &qword_100EF4A28);
  v48 = *(v47 + 48);
  v49 = v48(v20, 1, v21);
  v229 = v3;
  if (v49 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    if (v48(v20, 1, v21) != 1)
    {
      sub_1000095E8(v20, &qword_1011AB748, &qword_100EF4A28);
    }
  }

  else
  {
    (*(v47 + 32))(v230, v20, v21);
  }

  v50 = v231;
  v219 = *(v231 + 16);
  v219(v29, v233, v17);
  v51 = Logger.logObject.getter();
  v52 = v17;
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v236 = v55;
    *v54 = 136446210;
    sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v224 = *(v50 + 8);
    v224(v29, v52);
    v59 = sub_100010678(v56, v58, &v236);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v53, "| Add Status: %{public}s", v54, 0xCu);
    sub_10000959C(v55);
    v21 = v226;

    v47 = v228;
  }

  else
  {

    v224 = *(v50 + 8);
    v224(v29, v52);
  }

  v60 = *(v47 + 16);
  v61 = v220;
  v198 = v47 + 16;
  v197 = v60;
  v60(v220, v230, v21);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v47;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v236 = v66;
    *v65 = 136446210;
    sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v220 = *(v64 + 8);
    (v220)(v61, v21);
    v70 = sub_100010678(v67, v69, &v236);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "| Download Status: %{public}s", v65, 0xCu);
    sub_10000959C(v66);
  }

  else
  {

    v220 = *(v47 + 8);
    (v220)(v61, v21);
  }

  v71 = v222;
  v72 = v225;
  v73 = v229;
  v74 = *(*v229 + 128);
  swift_beginAccess();
  v75 = *(TupleTypeMetadata2 + 48);
  v76 = *(v72 + 16);
  v77 = v223;
  v76(v223, v73 + v74, v71);
  v78 = v227;
  v219(&v77[v75], v233, v227);
  v79 = v231;
  v80 = (*(v231 + 88))(&v77[v75], v78);
  if (v80 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v224(&v77[v75], v78);
    v81 = 0;
    v82 = 5;
    goto LABEL_73;
  }

  if (v80 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v80 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v235 = v225;
        *v133 = 136446466;
        v134 = v200;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
        sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v135 = v227;
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v138 = v137;
        v224(v134, v135);
        v139 = sub_100010678(v136, v138, &v235);

        *(v133 + 4) = v139;
        *(v133 + 12) = 2082;
        v76(v216, v229 + v74, v222);
        v140 = String.init<A>(describing:)();
        v142 = sub_100010678(v140, v141, &v235);

        *(v133 + 14) = v142;
        _os_log_impl(&_mh_execute_header, v131, v132, "| Unhandled add status (%{public}s) for item: %{public}s", v133, 0x16u);
        swift_arrayDestroy();

        v77 = v223;
      }

      v82 = 0;
      v81 = 0x8000;
      v72 = v209;
      v71 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v101 = v207;
    v102 = v208;
    v103 = swift_dynamicCast();
    v104 = v228;
    v105 = v229;
    v106 = v211;
    if (v103)
    {
      v107 = v205;
      v108 = v101;
      v109 = v204;
      v110.n128_f64[0] = (*(v205 + 32))(v204, v108, v102);
      if (Album.childrenAddStatus(_:)(*(v105 + 16), v110) == 1)
      {
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&_mh_execute_header, v111, v112, "| Album is already added but has at least 1 addable track", v113, 2u);
        }

        (*(v205 + 8))(v204, v102);
        v81 = 0;
        v82 = 4;
        goto LABEL_73;
      }

      (*(v107 + 8))(v109, v102);
    }

    v146 = v203;
    if (swift_dynamicCast())
    {
      v147 = v202;
      v148 = v201;
      (*(v202 + 32))(v201, v146, v106);
      v149 = v206;
      Playlist.entries.getter();
      v150 = sub_10010FC20(&qword_1011AA6B0, &qword_100EF4A40);
      v151 = v149;
      v152 = v150;
      v153 = *(v150 - 8);
      if ((*(v153 + 48))(v151, 1, v150) == 1)
      {
        (*(v147 + 8))(v148, v106);
        sub_1000095E8(v206, &qword_1011A8AB8, &qword_100EEE7B8);
      }

      else
      {
        sub_100020674(&qword_1011AA6E0, &qword_1011AA6B0, &qword_100EF4A40, &protocol conformance descriptor for MusicItemCollection<A>);
        v154 = v206;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v156 = v234;
        v155 = v235;
        (*(v153 + 8))(v154, v152);
        if (v155 == v156)
        {
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();
          v159 = os_log_type_enabled(v157, v158);
          v160 = v202;
          v161 = v201;
          if (v159)
          {
            v162 = swift_slowAlloc();
            *v162 = 0;
            _os_log_impl(&_mh_execute_header, v157, v158, "| Playlist is already added but does not have any tracks", v162, 2u);
          }

          (*(v160 + 8))(v161, v211);
          goto LABEL_72;
        }

        (*(v202 + 8))(v201, v211);
      }

      v104 = v228;
    }

    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&_mh_execute_header, v163, v164, "|—● Item is added", v165, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v167 = result;
    v168 = [result canShowCloudDownloadButtons];

    if (v168)
    {
      v169 = v199;
      v170 = v226;
      v197(v199, v230, v226);
      v171 = (*(v104 + 88))(v169, v170);
      if (v171 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v104 + 96))(v169, v170);
        v82 = *v169;
        v81 = 0x4000;
        goto LABEL_73;
      }

      if (v171 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v104 + 96))(v169, v170);
        if (((v195 & 0xC000) != 0x4000) | v195 & 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = v196;
        }

        v81 = ((v195 & 0xC000) != 0x4000) | v195 & 1 | 0x4100;
        v182 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
        (*(*(v182 - 8) + 8))(v169, v182);
        goto LABEL_73;
      }

      if (v171 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v171 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v81 = 0x8000;
          v82 = 1;
        }

        else if (v171 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v82 = 0;
          v81 = 16385;
        }

        else if (v171 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v81 = 0x8000;
          v82 = 2;
        }

        else
        {
          v183 = v71;
          v184 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v185 = v171;
          v186 = Logger.logObject.getter();
          v187 = static os_log_type_t.default.getter();
          v188 = os_log_type_enabled(v186, v187);
          if (v185 == v184)
          {
            if (v188)
            {
              v189 = swift_slowAlloc();
              *v189 = 0;
            }

            v190 = Logger.logObject.getter();
            v191 = static os_log_type_t.default.getter();
            v71 = v183;
            if (os_log_type_enabled(v190, v191))
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&_mh_execute_header, v190, v191, "|—| 🌚 though we're not sure this is the right thing to do", v192, 2u);
            }

            v81 = 0x8000;
            v82 = 1;
            v72 = v225;
          }

          else
          {
            v71 = v183;
            if (v188)
            {
              v193 = swift_slowAlloc();
              *v193 = 0;
              _os_log_impl(&_mh_execute_header, v186, v187, "|—| Unhandled case", v193, 2u);
            }

            (v220)(v199, v226);
            v82 = 0;
            v81 = 0x8000;
            v72 = v225;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&_mh_execute_header, v172, v173, "|—| MPCloudController -canShowCloudDownloadButton: NO", v174, 2u);
      }
    }

LABEL_72:
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_73;
  }

  v83 = v215;
  (*(v79 + 96))(&v77[v75], v78);
  v84 = v83[4];
  v85 = &v77[v75];
  v86 = v218;
  v87 = v217;
  TupleTypeMetadata2 = (v83 + 4);
  v219 = v84;
  v84(v218, v85, v217);
  v88 = v83[2];
  v89 = v212;
  v88(v212, v86, v87);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v235 = v94;
    *v93 = 136446210;
    sub_1009F1CEC(&qword_1011A8848, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    v98 = v92;
    v99 = v83[1];
    v99(v98, v217);
    v100 = sub_100010678(v95, v97, &v235);

    *(v93 + 4) = v100;
    v87 = v217;
    _os_log_impl(&_mh_execute_header, v90, v91, "|—● Item is unaddable: %{public}s", v93, 0xCu);
    sub_10000959C(v94);
  }

  else
  {

    v99 = v83[1];
    v99(v89, v87);
  }

  v114 = v213;
  v88(v213, v218, v87);
  v115 = v83[11];
  v116 = v115(v114, v87);
  v117 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v118 = v214;
  if (v116 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v116 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v116 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v116 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "|—| Reason is not actionable by the user", v121, 2u);
    }

    v122 = v217;
    v99(v218, v217);
    v99(v114, v122);
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v216) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v213) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v212) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v88(v214, v218, v87);
  v123 = v118;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v235 = v211;
    *v126 = 136315138;
    sub_1009F1CEC(&qword_1011A8848, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v129 = v128;
    v99(v123, v217);
    v130 = sub_100010678(v127, v129, &v235);

    *(v126 + 4) = v130;
    v87 = v217;
    sub_10000959C(v211);
  }

  else
  {

    v99(v123, v87);
  }

  v143 = v210;
  v219(v210, v218, v87);
  v144 = v115(v143, v87);
  if (v144 == v117)
  {
    v81 = 0;
    v82 = 1;
LABEL_46:
    v77 = v223;
    v71 = v222;
    v72 = v225;
    goto LABEL_73;
  }

  v145 = v99;
  v77 = v223;
  v71 = v222;
  v72 = v225;
  if (v144 == v216)
  {
    v82 = 0;
    v81 = 0;
  }

  else if (v144 == v213)
  {
    v81 = 0;
    v82 = 2;
  }

  else if (v144 == v212)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v145(v143, v87);
    v81 = 0;
    v82 = 5;
  }

LABEL_73:
  (*(v72 + 8))(v77, v71);
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v235 = v178;
    *v177 = 136446210;
    v179 = MusicLibrary.ActionableState.description.getter(v82, v81);
    v181 = sub_100010678(v179, v180, &v235);

    *(v177 + 4) = v181;
    _os_log_impl(&_mh_execute_header, v175, v176, "╰ Item state resolved to %{public}s", v177, 0xCu);
    sub_10000959C(v178);
  }

  sub_1009ECCCC(v82, v81);
  (v220)(v230, v226);
  return (v224)(v233, v227);
}

double sub_1009EF1C0()
{
  v1 = *v0;
  v2 = sub_10010FC20(&qword_1011AB728, &qword_100EF4A18);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v27 = &v23 - v4;
  v5 = sub_10010FC20(&qword_1011AB730, &qword_100EF4A20);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  dispatch thunk of MusicLibrary.ItemState.$addStatus.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&qword_1011AB738, &qword_1011AB730, &qword_100EF4A20, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_100A0043C(&v30, v14);
  swift_endAccess();

  v15 = v27;
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();
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
  sub_100020674(&qword_1011AB740, &qword_1011AB728, &qword_100EF4A18, v25);
  v20 = v28;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_100A0043C(&v30, v21);
  swift_endAccess();

  return result;
}

uint64_t sub_1009EF5D0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = type metadata accessor for MusicLibrary.AddStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.libraryActionableState);
  v34 = *(v9 + 16);
  v34(v11, a1, v8);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
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
    sub_1009F1CEC(&qword_1011AB680, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v19 = v13;
    v29 = v13;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a1;
    v21 = v7;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_100010678(v20, v23, v35);
    v7 = v21;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Add status has updated to %{public}s", v17, 0xCu);
    sub_10000959C(v31);
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
    v27 = type metadata accessor for MusicLibrary.DownloadStatus();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_1009ED28C(v7, v5);

    sub_1000095E8(v5, &qword_1011AB748, &qword_100EF4A28);
    return sub_1000095E8(v7, &qword_1011AB750, &unk_100EF4A30);
  }

  return result;
}

uint64_t sub_1009EF9FC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = type metadata accessor for MusicLibrary.DownloadStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.libraryActionableState);
  v33 = *(v9 + 16);
  v33(v11, a1, v8);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v5;
    v35[0] = v31;
    *v17 = 136446210;
    sub_1009F1CEC(&qword_1011AB688, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v18 = v13;
    v29 = v13;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v18 + 8))(v11, v34);
    v24 = sub_100010678(v19, v23, v35);
    a1 = v21;
    v7 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Download status has updated to %{public}s", v17, 0xCu);
    sub_10000959C(v31);
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
    v27 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v33(v5, a1, v8);
    (*(v25 + 56))(v5, 0, 1, v8);
    sub_1009ED28C(v7, v5);

    sub_1000095E8(v5, &qword_1011AB748, &qword_100EF4A28);
    return sub_1000095E8(v7, &qword_1011AB750, &unk_100EF4A30);
  }

  return result;
}

char *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_1000D8F2C((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009EFF80()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.libraryActionableState);
  sub_1000060E4(v0, static Logger.libraryActionableState);
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009F00CC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_1009F0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12[1] = sub_1008C4A3C;

  return sub_1009D15CC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return sub_1009D2314(a1, a2, a3, a4);
}

uint64_t sub_1009F02D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return sub_1009D3024(a1, a2, a3, a4);
}

uint64_t sub_1009F038C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D3D34(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0460(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D49E8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0534(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D569C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0608(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D6350(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F06DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D7004(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F07B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D7CB8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0884(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D896C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0958(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009D9620(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0A2C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009DA2D4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0B00(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C6724;

  return sub_1009DAF88(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0BCC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009DBC0C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0CA0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C6D98;

  return sub_1009DC8C0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0D74(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009DD574(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0E48(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  v11[1] = sub_1008C9F1C;

  return sub_1009DE228(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1009F0F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return sub_1009DEEDC(a1, a2, a3, a4, v10);
}

uint64_t sub_1009F0FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002F3F4;

  return sub_1009DFB14(a1, a2, a3, a4);
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

unint64_t sub_1009F11C8()
{
  result = qword_1011AB678;
  if (!qword_1011AB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB678);
  }

  return result;
}

uint64_t sub_1009F121C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1009F1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a5;
  v11 = *v7;
  sub_10010FC20(&qword_1011AB748, &qword_100EF4A28);
  __chkstk_darwin();
  v13 = &v46 - v12;
  sub_10010FC20(&qword_1011AB750, &unk_100EF4A30);
  __chkstk_darwin();
  v15 = (&v46 - v14);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = &v7[*(*v7 + 152)];
  *v16 = 0;
  *(v16 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10089DD70(_swiftEmptyArrayStorage);
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
  v20 = MusicLibrary.state<A>(for:)();
  *&v7[*(*v7 + 136)] = v20;
  v21 = qword_1011A69D0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, static Logger.libraryActionableState);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

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
    v30 = String.init<A>(describing:)();
    v49 = v11;
    v32 = a6;
    v33 = sub_100010678(v30, v31, &v57);
    v11 = v49;

    *(v27 + 4) = v33;
    a6 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Initializing item state: %{public}s", v27, 0xCu);
    sub_10000959C(v29);
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
  v36 = type metadata accessor for MusicLibrary.AddStatus();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  sub_1009ED28C(v15, v13);
  sub_1000095E8(v13, &qword_1011AB748, &qword_100EF4A28);
  sub_1000095E8(v15, &qword_1011AB750, &unk_100EF4A30);
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
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v40, v41, 1, 1, sub_1009F1FF8, v43);

  sub_1009EF1C0();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1009F184C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1009EB6A8(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1009F19AC()
{
  result = qword_1011AB698[0];
  if (!qword_1011AB698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011AB698);
  }

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

uint64_t sub_1009F1AE4(uint64_t a1)
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

uint64_t sub_1009F1B14(uint64_t result, unsigned int a2)
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

uint64_t sub_1009F1B60(uint64_t a1)
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

unint64_t sub_1009F1C68()
{
  result = qword_1011AB720;
  if (!qword_1011AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB720);
  }

  return result;
}

uint64_t sub_1009F1CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1009F1D50(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1009F0FE4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1009F1E58()
{
  v1 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1009F2028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009F2088(uint64_t a1)
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
  return sub_1009D137C(a1, v6, &qword_1011A86C8, &qword_100EF47D0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F20E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0534(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F21A8(uint64_t a1)
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
  return sub_1009D137C(a1, v6, &qword_1011A86C8, &qword_100EF47D0, "%{public}s: waiting for finish to return…");
}