void sub_1009B8170(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1009B81B4()
{
  v1 = sub_10010FC20(&qword_1011A8AB0, &qword_100EEE790);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1009B8248()
{
  result = qword_1011AB648;
  if (!qword_1011AB648)
  {
    sub_1001109D0(&qword_1011AB500, &qword_100EF4660);
    sub_1009B82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB648);
  }

  return result;
}

unint64_t sub_1009B82D4()
{
  result = qword_1011AB650;
  if (!qword_1011AB650)
  {
    sub_1001109D0(&qword_1011AB4F0, &qword_100EF4608);
    sub_100020674(&qword_1011AB658, &qword_1011AB4E8, &qword_100EF4600, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB650);
  }

  return result;
}

uint64_t sub_1009B8414(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 2096) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 2104) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_1009B85A8, 0, 0);
}

uint64_t sub_1009B85A8()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = sub_1000060E4(v76, qword_1011A7DB8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_1000089F8(v0 + 1784, v0 + 1920, &qword_1011A8668, &qword_100EF4D00);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_1000095E8(v0 + 1784, &qword_1011A8668, &qword_100EF4D00);
          v93 = sub_100010678(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          sub_10000959C(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_1000095E8(v0 + 1784, &qword_1011A8668, &qword_100EF4D00);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = sub_1000060E4(v11, qword_1011A7DB8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_1000089F8(v0 + 152, v0 + 288, &qword_1011A8668, &qword_100EF4D00);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_1000095E8(v0 + 152, &qword_1011A8668, &qword_100EF4D00);
      v29 = sub_100010678(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      sub_10000959C(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_1000095E8(v0 + 152, &qword_1011A8668, &qword_100EF4D00);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v30, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 2072) = v33;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v34 = ConnectablePublisher.autoconnect()();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_1000089F8(v0 + 424, v0 + 560, &qword_1011A8668, &qword_100EF4D00);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 2192) = Publisher<>.sink(receiveValue:)();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_1009B916C;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = sub_1000060E4(v51, qword_1011A7DB8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_1000089F8(v0 + 1512, v0 + 1648, &qword_1011A8668, &qword_100EF4D00);
  sub_1008988C0(v47, v48);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  sub_10089840C(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_1000095E8(v0 + 1512, &qword_1011A8668, &qword_100EF4D00);
    v67 = sub_100010678(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v68 = String.init<A>(describing:)();
    v70 = sub_100010678(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_1000095E8(v0 + 1512, &qword_1011A8668, &qword_100EF4D00);

    (*(v61 + 8))(v60, v62);
  }

  sub_1008A4190();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_1009B916C()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_1009B9654;
  }

  else
  {
    v2 = sub_1009B9280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009B9280()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_1000089F8(v0 + 968, v0 + 1104, &qword_1011A8668, &qword_100EF4D00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_1000095E8(v0 + 968, &qword_1011A8668, &qword_100EF4D00);
    v19 = sub_100010678(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_1000095E8(v0 + 968, &qword_1011A8668, &qword_100EF4D00);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_1000089F8(v0 + 1240, v0 + 1376, &qword_1011A8668, &qword_100EF4D00);
  sub_1008A3074(0, 0, v20, &unk_100EF4D10, v26);

  sub_1000095E8(v20, &qword_1011A7F00, &qword_100EEDE10);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1009B9654()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_1000089F8(v0 + 696, v0 + 832, &qword_1011A8668, &qword_100EF4D00);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_1000095E8(v0 + 696, &qword_1011A8668, &qword_100EF4D00);
    v17 = sub_100010678(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_1000095E8(v0 + 696, &qword_1011A8668, &qword_100EF4D00);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009B996C(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 64) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1009B9B7C, 0, 0);
}

uint64_t sub_1009B9B7C()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_1000060E4(v67, qword_1011A7DB8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000089F8(v70, v69, &qword_1011A8670, &qword_100EF4CB0);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_1000095E8(v78, &qword_1011A8670, &qword_100EF4CB0);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100010678(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_10000959C(v80);
        }

        else
        {
          sub_1000095E8(*(v0 + 144), &qword_1011A8670, &qword_100EF4CB0);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000100E5A870;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000089F8(v9, v8, &qword_1011A8670, &qword_100EF4CB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_1000095E8(v18, &qword_1011A8670, &qword_100EF4CB0);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100010678(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {
      sub_1000095E8(*(v0 + 128), &qword_1011A8670, &qword_100EF4CB0);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v27, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    sub_1000089F8(v29, v25, &qword_1011A8670, &qword_100EF4CB0);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_10003D17C(v25, v36 + v35, &qword_1011A8670, &qword_100EF4CB0);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1009BA694;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_1000060E4(v42, qword_1011A7DB8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000089F8(v45, v44, &qword_1011A8670, &qword_100EF4CB0);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  sub_10089840C(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_1000095E8(v53, &qword_1011A8670, &qword_100EF4CB0);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100010678(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010678(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A8670, &qword_100EF4CB0);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1009BA694()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1009BAB60;
  }

  else
  {
    v2 = sub_1009BA7A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BA7A8()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8670, &qword_100EF4CB0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_1000095E8(v13, &qword_1011A8670, &qword_100EF4CB0);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100010678(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A8670, &qword_100EF4CB0);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000089F8(v22, v20, &qword_1011A8670, &qword_100EF4CB0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10003D17C(v20, v24 + ((v19 + 32) & ~v19), &qword_1011A8670, &qword_100EF4CB0);
  sub_1008A3074(0, 0, v21, &unk_100EF4CC0, v24);

  sub_1000095E8(v21, &qword_1011A7F00, &qword_100EEDE10);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1009BAB60()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8670, &qword_100EF4CB0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_1000095E8(v12, &qword_1011A8670, &qword_100EF4CB0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_1000095E8(v0[13], &qword_1011A8670, &qword_100EF4CB0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009BAE8C(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 64) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1009BB09C, 0, 0);
}

uint64_t sub_1009BB09C()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_1000060E4(v67, qword_1011A7DB8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000089F8(v70, v69, &qword_1011A8678, &qword_100EEDBC0);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_1000095E8(v78, &qword_1011A8678, &qword_100EEDBC0);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100010678(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_10000959C(v80);
        }

        else
        {
          sub_1000095E8(*(v0 + 144), &qword_1011A8678, &qword_100EEDBC0);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000100E5A870;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000089F8(v9, v8, &qword_1011A8678, &qword_100EEDBC0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_1000095E8(v18, &qword_1011A8678, &qword_100EEDBC0);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100010678(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {
      sub_1000095E8(*(v0 + 128), &qword_1011A8678, &qword_100EEDBC0);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v27, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    sub_1000089F8(v29, v25, &qword_1011A8678, &qword_100EEDBC0);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_10003D17C(v25, v36 + v35, &qword_1011A8678, &qword_100EEDBC0);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1009BBBB4;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_1000060E4(v42, qword_1011A7DB8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000089F8(v45, v44, &qword_1011A8678, &qword_100EEDBC0);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  sub_10089840C(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_1000095E8(v53, &qword_1011A8678, &qword_100EEDBC0);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100010678(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010678(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A8678, &qword_100EEDBC0);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1009BBBB4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1009BC080;
  }

  else
  {
    v2 = sub_1009BBCC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BBCC8()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8678, &qword_100EEDBC0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_1000095E8(v13, &qword_1011A8678, &qword_100EEDBC0);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100010678(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A8678, &qword_100EEDBC0);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000089F8(v22, v20, &qword_1011A8678, &qword_100EEDBC0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10003D17C(v20, v24 + ((v19 + 32) & ~v19), &qword_1011A8678, &qword_100EEDBC0);
  sub_1008A3074(0, 0, v21, &unk_100EF4CE8, v24);

  sub_1000095E8(v21, &qword_1011A7F00, &qword_100EEDE10);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1009BC080()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8678, &qword_100EEDBC0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_1000095E8(v12, &qword_1011A8678, &qword_100EEDBC0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_1000095E8(v0[13], &qword_1011A8678, &qword_100EEDBC0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009BC3AC(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009BC534, 0, 0);
}

uint64_t sub_1009BC534()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86A8, &qword_100EF4C60);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86A8, &qword_100EF4C60);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86A8, &qword_100EF4C60);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86A8, &qword_100EF4C60);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86A8, &qword_100EF4C60);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86A8, &qword_100EF4C60);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86A8, &qword_100EF4C60);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009BD0BC;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86A8, &qword_100EF4C60);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86A8, &qword_100EF4C60);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86A8, &qword_100EF4C60);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009BD0BC()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009BD57C;
  }

  else
  {
    v2 = sub_1009BD1D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BD1D0()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86A8, &qword_100EF4C60);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86A8, &qword_100EF4C60);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86A8, &qword_100EF4C60);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86A8, &qword_100EF4C60);
  sub_1008A3074(0, 0, v19, &unk_100EF4C70, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009BD57C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86A8, &qword_100EF4C60);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86A8, &qword_100EF4C60);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86A8, &qword_100EF4C60);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009BD88C(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009BDA14, 0, 0);
}

uint64_t sub_1009BDA14()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86B0, &qword_100EEDC50);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86B0, &qword_100EEDC50);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86B0, &qword_100EEDC50);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86B0, &qword_100EEDC50);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86B0, &qword_100EEDC50);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86B0, &qword_100EEDC50);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86B0, &qword_100EEDC50);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009BE59C;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86B0, &qword_100EEDC50);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86B0, &qword_100EEDC50);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86B0, &qword_100EEDC50);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009BE59C()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009BEA5C;
  }

  else
  {
    v2 = sub_1009BE6B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BE6B0()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86B0, &qword_100EEDC50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86B0, &qword_100EEDC50);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86B0, &qword_100EEDC50);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86B0, &qword_100EEDC50);
  sub_1008A3074(0, 0, v19, &unk_100EF4C48, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009BEA5C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86B0, &qword_100EEDC50);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86B0, &qword_100EEDC50);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86B0, &qword_100EEDC50);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009BED6C(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009BEEF4, 0, 0);
}

uint64_t sub_1009BEEF4()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86C8, &qword_100EF47D0);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86C8, &qword_100EF47D0);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86C8, &qword_100EF47D0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86C8, &qword_100EF47D0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86C8, &qword_100EF47D0);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86C8, &qword_100EF47D0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86C8, &qword_100EF47D0);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009BFA7C;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86C8, &qword_100EF47D0);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86C8, &qword_100EF47D0);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86C8, &qword_100EF47D0);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009BFA7C()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009BFF3C;
  }

  else
  {
    v2 = sub_1009BFB90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BFB90()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86C8, &qword_100EF47D0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86C8, &qword_100EF47D0);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86C8, &qword_100EF47D0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86C8, &qword_100EF47D0);
  sub_1008A3074(0, 0, v19, &unk_100EF4A80, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009BFF3C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86C8, &qword_100EF47D0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86C8, &qword_100EF47D0);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86C8, &qword_100EF47D0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C024C(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C03D4, 0, 0);
}

uint64_t sub_1009C03D4()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86C0, &qword_100EEDC80);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86C0, &qword_100EEDC80);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86C0, &qword_100EEDC80);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86C0, &qword_100EEDC80);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86C0, &qword_100EEDC80);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86C0, &qword_100EEDC80);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86C0, &qword_100EEDC80);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C0F5C;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86C0, &qword_100EEDC80);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86C0, &qword_100EEDC80);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86C0, &qword_100EEDC80);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C0F5C()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C141C;
  }

  else
  {
    v2 = sub_1009C1070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C1070()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86C0, &qword_100EEDC80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86C0, &qword_100EEDC80);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86C0, &qword_100EEDC80);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86C0, &qword_100EEDC80);
  sub_1008A3074(0, 0, v19, &unk_100EF4A98, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C141C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86C0, &qword_100EEDC80);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86C0, &qword_100EEDC80);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86C0, &qword_100EEDC80);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C172C(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C18B4, 0, 0);
}

uint64_t sub_1009C18B4()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86B8, &qword_100EF4C10);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86B8, &qword_100EF4C10);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86B8, &qword_100EF4C10);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86B8, &qword_100EF4C10);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86B8, &qword_100EF4C10);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86B8, &qword_100EF4C10);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86B8, &qword_100EF4C10);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C243C;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86B8, &qword_100EF4C10);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86B8, &qword_100EF4C10);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86B8, &qword_100EF4C10);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C243C()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C28FC;
  }

  else
  {
    v2 = sub_1009C2550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C2550()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86B8, &qword_100EF4C10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86B8, &qword_100EF4C10);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86B8, &qword_100EF4C10);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86B8, &qword_100EF4C10);
  sub_1008A3074(0, 0, v19, &unk_100EF4C20, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C28FC()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86B8, &qword_100EF4C10);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86B8, &qword_100EF4C10);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86B8, &qword_100EF4C10);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C2C0C(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C2D94, 0, 0);
}

uint64_t sub_1009C2D94()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A8688, &qword_100EEDC08);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A8688, &qword_100EEDC08);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A8688, &qword_100EEDC08);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A8688, &qword_100EEDC08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A8688, &qword_100EEDC08);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A8688, &qword_100EEDC08);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8688, &qword_100EEDC08);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C391C;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A8688, &qword_100EEDC08);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A8688, &qword_100EEDC08);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A8688, &qword_100EEDC08);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C391C()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C3DDC;
  }

  else
  {
    v2 = sub_1009C3A30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C3A30()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8688, &qword_100EEDC08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A8688, &qword_100EEDC08);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A8688, &qword_100EEDC08);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A8688, &qword_100EEDC08);
  sub_1008A3074(0, 0, v19, &unk_100EF4C98, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C3DDC()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8688, &qword_100EEDC08);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A8688, &qword_100EEDC08);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A8688, &qword_100EEDC08);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C40EC(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C4274, 0, 0);
}

uint64_t sub_1009C4274()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86E8, &qword_100EEDD08);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86E8, &qword_100EEDD08);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86E8, &qword_100EEDD08);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86E8, &qword_100EEDD08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86E8, &qword_100EEDD08);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86E8, &qword_100EEDD08);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86E8, &qword_100EEDD08);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C4DFC;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86E8, &qword_100EEDD08);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86E8, &qword_100EEDD08);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86E8, &qword_100EEDD08);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C4DFC()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C52BC;
  }

  else
  {
    v2 = sub_1009C4F10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C4F10()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86E8, &qword_100EEDD08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86E8, &qword_100EEDD08);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86E8, &qword_100EEDD08);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86E8, &qword_100EEDD08);
  sub_1008A3074(0, 0, v19, &unk_100EF4BA8, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C52BC()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86E8, &qword_100EEDD08);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86E8, &qword_100EEDD08);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86E8, &qword_100EEDD08);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C55CC(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C5754, 0, 0);
}

uint64_t sub_1009C5754()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86E0, &qword_100EEDD00);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86E0, &qword_100EEDD00);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86E0, &qword_100EEDD00);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86E0, &qword_100EEDD00);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86E0, &qword_100EEDD00);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86E0, &qword_100EEDD00);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86E0, &qword_100EEDD00);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C62DC;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86E0, &qword_100EEDD00);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86E0, &qword_100EEDD00);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86E0, &qword_100EEDD00);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C62DC()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C679C;
  }

  else
  {
    v2 = sub_1009C63F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C63F0()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86E0, &qword_100EEDD00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86E0, &qword_100EEDD00);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86E0, &qword_100EEDD00);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86E0, &qword_100EEDD00);
  sub_1008A3074(0, 0, v19, &unk_100EF4BD0, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C679C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86E0, &qword_100EEDD00);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86E0, &qword_100EEDD00);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86E0, &qword_100EEDD00);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C6AAC(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C6C34, 0, 0);
}

uint64_t sub_1009C6C34()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86D8, &qword_100EEDCC0);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86D8, &qword_100EEDCC0);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86D8, &qword_100EEDCC0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86D8, &qword_100EEDCC0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86D8, &qword_100EEDCC0);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86D8, &qword_100EEDCC0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86D8, &qword_100EEDCC0);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009C77BC;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86D8, &qword_100EEDCC0);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86D8, &qword_100EEDCC0);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86D8, &qword_100EEDCC0);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C77BC()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009C7C7C;
  }

  else
  {
    v2 = sub_1009C78D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C78D0()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86D8, &qword_100EEDCC0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86D8, &qword_100EEDCC0);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86D8, &qword_100EEDCC0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86D8, &qword_100EEDCC0);
  sub_1008A3074(0, 0, v19, &unk_100EF4BF8, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C7C7C()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86D8, &qword_100EEDCC0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86D8, &qword_100EEDCC0);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86D8, &qword_100EEDCC0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C7F8C(uint64_t a1, char a2)
{
  *(v3 + 1617) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1496) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1504) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1512) = v4;
  *(v3 + 1520) = *(v4 - 8);
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1618) = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;

  return _swift_task_switch(sub_1009C810C, 0, 0);
}

uint64_t sub_1009C810C()
{
  v101 = v0;
  v1 = *(v0 + 1618);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1616) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1560);
        v70 = *(v0 + 1520);
        v71 = *(v0 + 1512);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 64);
        *(v0 + 1296) = *(v0 + 48);
        *(v0 + 1312) = v73;
        v74 = *(v0 + 96);
        *(v0 + 1328) = *(v0 + 80);
        *(v0 + 1344) = v74;
        v75 = *(v0 + 32);
        *(v0 + 1264) = *(v0 + 16);
        *(v0 + 1280) = v75;
        sub_1000089F8(v0 + 1264, v0 + 1360, &qword_1011A8730, &qword_100EEDDA0);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1560);
        v80 = *(v0 + 1520);
        v81 = *(v0 + 1512);
        if (v78)
        {
          v93 = *(v0 + 1560);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1296));
          v86 = v85;
          sub_1000095E8(v0 + 1264, &qword_1011A8730, &qword_100EEDDA0);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1264, &qword_1011A8730, &qword_100EEDDA0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1617) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v3 = *(v0 + 48), v4 = *(v0 + 56), v100 = *(v0 + 104), v5 = *(v0 + 64), v98 = *(v0 + 72), v99 = *(v0 + 88), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1544);
    v9 = *(v0 + 1520);
    v10 = *(v0 + 1512);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1568) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1576) = v12;
    *(v0 + 1584) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v13;
    v14 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v14;
    v15 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v15;
    sub_1000089F8(v0 + 112, v0 + 208, &qword_1011A8730, &qword_100EEDDA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1520);
    v21 = *(v0 + 1512);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 144));
      v26 = v25;
      sub_1000095E8(v0 + 112, &qword_1011A8730, &qword_100EEDDA0);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 112, &qword_1011A8730, &qword_100EEDDA0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1504);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1472) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1480) = v32;
    v33 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v33;
    v34 = *(v0 + 96);
    *(v0 + 368) = *(v0 + 80);
    *(v0 + 384) = v34;
    v35 = *(v0 + 32);
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = v35;
    v36 = *(v0 + 368);
    v37 = swift_allocObject();
    v38 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v38;
    v39 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v39;
    v40 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v40;
    sub_1000089F8(v0 + 304, v0 + 400, &qword_1011A8730, &qword_100EEDDA0);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1592) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1600) = v41;
    *v41 = v0;
    v41[1] = sub_1009C8C64;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1552);
  v46 = *(v0 + 1520);
  v47 = *(v0 + 1512);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 64);
  *(v0 + 1104) = *(v0 + 48);
  *(v0 + 1120) = v49;
  v50 = *(v0 + 96);
  *(v0 + 1136) = *(v0 + 80);
  *(v0 + 1152) = v50;
  v51 = *(v0 + 32);
  *(v0 + 1072) = *(v0 + 16);
  *(v0 + 1088) = v51;
  sub_1000089F8(v0 + 1072, v0 + 1168, &qword_1011A8730, &qword_100EEDDA0);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1552);
  v56 = *(v0 + 1520);
  v57 = *(v0 + 1512);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1104));
    v61 = v60;
    sub_1000095E8(v0 + 1072, &qword_1011A8730, &qword_100EEDDA0);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1456) = v43;
    *(v0 + 1464) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1072, &qword_1011A8730, &qword_100EEDDA0);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009C8C64()
{
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v2 = sub_1009C9100;
  }

  else
  {
    v2 = sub_1009C8D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009C8D78()
{
  v31 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1512);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 720) = *(v0 + 48);
  *(v0 + 736) = v5;
  v6 = *(v0 + 96);
  *(v0 + 752) = *(v0 + 80);
  *(v0 + 768) = v6;
  v7 = *(v0 + 32);
  *(v0 + 688) = *(v0 + 16);
  *(v0 + 704) = v7;
  sub_1000089F8(v0 + 688, v0 + 784, &qword_1011A8730, &qword_100EEDDA0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1520);
  v13 = *(v0 + 1512);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 720));
    v17 = v16;
    sub_1000095E8(v0 + 688, &qword_1011A8730, &qword_100EEDDA0);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 688, &qword_1011A8730, &qword_100EEDDA0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1496);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 64);
  *(v0 + 912) = *(v0 + 48);
  *(v0 + 928) = v21;
  v22 = *(v0 + 96);
  *(v0 + 944) = *(v0 + 80);
  *(v0 + 960) = v22;
  v23 = *(v0 + 32);
  *(v0 + 880) = *(v0 + 16);
  *(v0 + 896) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v25;
  v26 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v26;
  v27 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v27;
  sub_1000089F8(v0 + 880, v0 + 976, &qword_1011A8730, &qword_100EEDDA0);
  sub_1008A3074(0, 0, v19, &unk_100EF4AE0, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009C9100()
{
  v28 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1512);

  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 528) = *(v0 + 48);
  *(v0 + 544) = v5;
  v6 = *(v0 + 96);
  *(v0 + 560) = *(v0 + 80);
  *(v0 + 576) = v6;
  v7 = *(v0 + 32);
  *(v0 + 496) = *(v0 + 16);
  *(v0 + 512) = v7;
  sub_1000089F8(v0 + 496, v0 + 592, &qword_1011A8730, &qword_100EEDDA0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1608);
    v26 = *(v0 + 1528);
    v11 = *(v0 + 1520);
    v12 = *(v0 + 1512);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_1000095E8(v0 + 496, &qword_1011A8730, &qword_100EEDDA0);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1488) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1512);
    sub_1000095E8(v0 + 496, &qword_1011A8730, &qword_100EEDDA0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009C9408(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009C9590, 0, 0);
}

uint64_t sub_1009C9590()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A8710, &qword_100EEDD70);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A8710, &qword_100EEDD70);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A8710, &qword_100EEDD70);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A8710, &qword_100EEDD70);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A8710, &qword_100EEDD70);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A8710, &qword_100EEDD70);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8710, &qword_100EEDD70);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009CA118;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A8710, &qword_100EEDD70);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A8710, &qword_100EEDD70);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A8710, &qword_100EEDD70);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009CA118()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009CA5D8;
  }

  else
  {
    v2 = sub_1009CA22C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009CA22C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8710, &qword_100EEDD70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A8710, &qword_100EEDD70);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A8710, &qword_100EEDD70);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A8710, &qword_100EEDD70);
  sub_1008A3074(0, 0, v19, &unk_100EF4B08, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009CA5D8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8710, &qword_100EEDD70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A8710, &qword_100EEDD70);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A8710, &qword_100EEDD70);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009CA8E8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009CAA70, 0, 0);
}

uint64_t sub_1009CAA70()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A8708, &qword_100EF4B20);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A8708, &qword_100EF4B20);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A8708, &qword_100EF4B20);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A8708, &qword_100EF4B20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A8708, &qword_100EF4B20);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A8708, &qword_100EF4B20);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8708, &qword_100EF4B20);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009CB5F8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A8708, &qword_100EF4B20);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A8708, &qword_100EF4B20);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A8708, &qword_100EF4B20);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009CB5F8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009CBAB8;
  }

  else
  {
    v2 = sub_1009CB70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009CB70C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8708, &qword_100EF4B20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A8708, &qword_100EF4B20);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A8708, &qword_100EF4B20);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A8708, &qword_100EF4B20);
  sub_1008A3074(0, 0, v19, &unk_100EF4B30, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009CBAB8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8708, &qword_100EF4B20);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A8708, &qword_100EF4B20);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A8708, &qword_100EF4B20);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009CBDC8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009CBF50, 0, 0);
}

uint64_t sub_1009CBF50()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A8700, &unk_100EEDD50);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A8700, &unk_100EEDD50);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A8700, &unk_100EEDD50);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A8700, &unk_100EEDD50);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A8700, &unk_100EEDD50);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A8700, &unk_100EEDD50);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A8700, &unk_100EEDD50);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009CCAD8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A8700, &unk_100EEDD50);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A8700, &unk_100EEDD50);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A8700, &unk_100EEDD50);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009CCAD8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009CCF98;
  }

  else
  {
    v2 = sub_1009CCBEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009CCBEC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A8700, &unk_100EEDD50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A8700, &unk_100EEDD50);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A8700, &unk_100EEDD50);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A8700, &unk_100EEDD50);
  sub_1008A3074(0, 0, v19, &unk_100EF4B58, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009CCF98()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A8700, &unk_100EEDD50);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A8700, &unk_100EEDD50);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A8700, &unk_100EEDD50);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009CD2A8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 1736) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1009CD430, 0, 0);
}

uint64_t sub_1009CD430()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_1000060E4(v71, qword_1011A7DB8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000089F8(v0 + 1472, v0 + 1584, &qword_1011A86F8, &qword_100EF4B70);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_1000095E8(v0 + 1472, &qword_1011A86F8, &qword_100EF4B70);
          v87 = sub_100010678(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_10000959C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_1000095E8(v0 + 1472, &qword_1011A86F8, &qword_100EF4B70);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_1000060E4(v10, qword_1011A7DB8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000089F8(v0 + 128, v0 + 240, &qword_1011A86F8, &qword_100EF4B70);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_1000095E8(v0 + 128, &qword_1011A86F8, &qword_100EF4B70);
      v27 = sub_100010678(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A86F8, &qword_100EF4B70);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v28, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86F8, &qword_100EF4B70);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1009CDFB8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_1000060E4(v47, qword_1011A7DB8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000089F8(v0 + 1248, v0 + 1360, &qword_1011A86F8, &qword_100EF4B70);
  sub_1008988C0(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  sub_10089840C(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_1000095E8(v0 + 1248, &qword_1011A86F8, &qword_100EF4B70);
    v62 = sub_100010678(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v63 = String.init<A>(describing:)();
    v65 = sub_100010678(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_1000095E8(v0 + 1248, &qword_1011A86F8, &qword_100EF4B70);

    (*(v56 + 8))(v55, v57);
  }

  sub_1008A4190();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1009CDFB8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1009CE478;
  }

  else
  {
    v2 = sub_1009CE0CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009CE0CC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_1000089F8(v0 + 800, v0 + 912, &qword_1011A86F8, &qword_100EF4B70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_1000095E8(v0 + 800, &qword_1011A86F8, &qword_100EF4B70);
    v18 = sub_100010678(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100010678(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(v0 + 800, &qword_1011A86F8, &qword_100EF4B70);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_1000089F8(v0 + 1024, v0 + 1136, &qword_1011A86F8, &qword_100EF4B70);
  sub_1008A3074(0, 0, v19, &unk_100EF4B80, v24);

  sub_1000095E8(v19, &qword_1011A7F00, &qword_100EEDE10);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1009CE478()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_1000089F8(v0 + 576, v0 + 688, &qword_1011A86F8, &qword_100EF4B70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_1000095E8(v0 + 576, &qword_1011A86F8, &qword_100EF4B70);
    v17 = sub_100010678(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_1000095E8(v0 + 576, &qword_1011A86F8, &qword_100EF4B70);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009CE788(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v2 + 1856) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v2 + 1864) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(sub_1009CE8EC, 0, 0);
}

uint64_t sub_1009CE8EC()
{
  v79 = v0;
  v1 = *(*(v0 + 1848) + 192);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v54 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v54) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 1986) = 2;
    v55 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 1920);
        v57 = *(v0 + 1880);
        v58 = *(v0 + 1872);
        v59 = *(v0 + 1848);
        v60 = sub_1000060E4(v58, qword_1011A7DB8);
        (*(v57 + 16))(v56, v60, v58);
        sub_1000089F8(v59, v0 + 1552, &qword_1011A8A68, &qword_100EEE688);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 1920);
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        if (v63)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v67 = 136446210;
          v69 = *(v0 + 1744);
          sub_1000095E8(v0 + 1552, &qword_1011A8A68, &qword_100EEE688);
          v70 = ActionType.rawValue.getter(v69);
          v72 = sub_100010678(v70, v71, v78);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: attempted to execute but identifier is hidden", v67, 0xCu);
          sub_10000959C(v68);
        }

        else
        {
          sub_1000095E8(v0 + 1552, &qword_1011A8A68, &qword_100EEE688);
        }

        (*(v65 + 8))(v64, v66);
      }

      v34 = 0x8000000100E5A870;
      v33 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1987) != 1 || (v2 = (*(*(v0 + 1848) + 200))(), v3 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1904);
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1848);
    v8 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 1928) = v8;
    v9 = *(v5 + 16);
    *(v0 + 1936) = v9;
    *(v0 + 1944) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v8, v6);
    sub_1000089F8(v7, v0 + 16, &qword_1011A8A68, &qword_100EEE688);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1904);
    v14 = *(v0 + 1880);
    v15 = *(v0 + 1872);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v78[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + 208);
      sub_1000095E8(v0 + 16, &qword_1011A8A68, &qword_100EEE688);
      v19 = ActionType.rawValue.getter(v18);
      v21 = sub_100010678(v19, v20, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: performing…", v16, 0xCu);
      sub_10000959C(v17);
    }

    else
    {
      sub_1000095E8(v0 + 16, &qword_1011A8A68, &qword_100EEE688);
    }

    v22 = *(v14 + 8);
    v22(v13, v15);
    *(v0 + 1952) = v22;
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1848);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v25 = [objc_opt_self() mainRunLoop];
    v26 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v23, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 1824) = v27;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v28 = ConnectablePublisher.autoconnect()();

    *(v0 + 1832) = v28;
    sub_1000089F8(v24, v0 + 272, &qword_1011A8A68, &qword_100EEE688);
    v29 = swift_allocObject();
    sub_10003D17C(v0 + 272, v29 + 16, &qword_1011A8A68, &qword_100EEE688);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1960) = Publisher<>.sink(receiveValue:)();

    v76 = (*(v24 + 224) + **(v24 + 224));
    v30 = swift_task_alloc();
    *(v0 + 1968) = v30;
    *v30 = v0;
    v30[1] = sub_1009CF38C;
    v31 = *(v0 + 1848);

    return v76(v0 + 1984, v31);
  }

  v33 = v2;
  v34 = v3;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1912);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1872);
  v38 = *(v0 + 1848);
  v39 = sub_1000060E4(v37, qword_1011A7DB8);
  (*(v36 + 16))(v35, v39, v37);
  sub_1000089F8(v38, v0 + 1296, &qword_1011A8A68, &qword_100EEE688);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  sub_10089840C(v33, v34);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1912);
  v44 = *(v0 + 1880);
  v45 = *(v0 + 1872);
  if (v42)
  {
    v77 = *(v0 + 1872);
    v46 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v46 = 136446466;
    v47 = *(v0 + 1488);
    sub_1000095E8(v0 + 1296, &qword_1011A8A68, &qword_100EEE688);
    v48 = ActionType.rawValue.getter(v47);
    v75 = v43;
    v50 = sub_100010678(v48, v49, v78);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v0 + 1808) = v33;
    *(v0 + 1816) = v34;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v51 = String.init<A>(describing:)();
    v53 = sub_100010678(v51, v52, v78);

    *(v46 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v75, v77);
  }

  else
  {
    sub_1000095E8(v0 + 1296, &qword_1011A8A68, &qword_100EEE688);

    (*(v44 + 8))(v43, v45);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v73 = v33;
  v73[1] = v34;
  swift_willThrow();

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1009CF38C()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_1009CF8C4;
  }

  else
  {
    v2 = sub_1009CF4A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009CF4A0()
{
  v30 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  sub_1000089F8(v5, v0 + 784, &qword_1011A8A68, &qword_100EEE688);
  v27 = *(v0 + 1984);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v26 = *(v0 + 1952);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 976);
    sub_1000095E8(v0 + 784, &qword_1011A8A68, &qword_100EEE688);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100010678(v12, v13, &v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v29, " with result: ");
    HIBYTE(v29[1]) = -18;
    *(v0 + 1985) = v27;
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = sub_100010678(v29[0], v29[1], &v28);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform success%{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v26(v8, v9);
  }

  else
  {
    v17 = *(v0 + 1952);
    v18 = *(v0 + 1896);
    v19 = *(v0 + 1872);
    sub_1000095E8(v0 + 784, &qword_1011A8A68, &qword_100EEE688);

    v17(v18, v19);
  }

  v20 = *(v0 + 1856);
  v21 = *(v0 + 1848);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  sub_1000089F8(v21, v0 + 1040, &qword_1011A8A68, &qword_100EEE688);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_10003D17C(v0 + 1040, v23 + 32, &qword_1011A8A68, &qword_100EEE688);
  *(v23 + 288) = v27;
  sub_1008A3074(0, 0, v20, &unk_100EF4AB0, v23);

  sub_1000095E8(v20, &qword_1011A7F00, &qword_100EEDE10);

  v24 = *(v0 + 8);

  return v24(v27);
}

uint64_t sub_1009CF8C4()
{
  v26 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);

  v1(v3, v2, v4);
  sub_1000089F8(v5, v0 + 528, &qword_1011A8A68, &qword_100EEE688);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1976);
    v23 = *(v0 + 1888);
    v24 = *(v0 + 1952);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_1000095E8(v0 + 528, &qword_1011A8A68, &qword_100EEE688);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100010678(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1840) = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v15 = String.init<A>(describing:)();
    v17 = sub_100010678(v15, v16, v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1952);
    v19 = *(v0 + 1888);
    v20 = *(v0 + 1872);
    sub_1000095E8(v0 + 528, &qword_1011A8A68, &qword_100EEE688);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1009CFBB8(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v3 + 64) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1009CFDC8, 0, 0);
}

uint64_t sub_1009CFDC8()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_1000060E4(v67, qword_1011A7DB8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000089F8(v70, v69, &qword_1011A87F0, &unk_100EF4A50);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_1000095E8(v78, &qword_1011A87F0, &unk_100EF4A50);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100010678(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_10000959C(v80);
        }

        else
        {
          sub_1000095E8(*(v0 + 144), &qword_1011A87F0, &unk_100EF4A50);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000100E5A870;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000089F8(v9, v8, &qword_1011A87F0, &unk_100EF4A50);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_1000095E8(v18, &qword_1011A87F0, &unk_100EF4A50);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100010678(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {
      sub_1000095E8(*(v0 + 128), &qword_1011A87F0, &unk_100EF4A50);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v27, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    sub_1000089F8(v29, v25, &qword_1011A87F0, &unk_100EF4A50);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_10003D17C(v25, v36 + v35, &qword_1011A87F0, &unk_100EF4A50);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1009D08E0;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_1000060E4(v42, qword_1011A7DB8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000089F8(v45, v44, &qword_1011A87F0, &unk_100EF4A50);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  sub_10089840C(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_1000095E8(v53, &qword_1011A87F0, &unk_100EF4A50);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100010678(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010678(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A87F0, &unk_100EF4A50);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1009D08E0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1009D0DAC;
  }

  else
  {
    v2 = sub_1009D09F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D09F4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A87F0, &unk_100EF4A50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_1000095E8(v13, &qword_1011A87F0, &unk_100EF4A50);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100010678(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A87F0, &unk_100EF4A50);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000089F8(v22, v20, &qword_1011A87F0, &unk_100EF4A50);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10003D17C(v20, v24 + ((v19 + 32) & ~v19), &qword_1011A87F0, &unk_100EF4A50);
  sub_1008A3074(0, 0, v21, &unk_100EF4A68, v24);

  sub_1000095E8(v21, &qword_1011A7F00, &qword_100EEDE10);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1009D0DAC()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A87F0, &unk_100EF4A50);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_1000095E8(v12, &qword_1011A87F0, &unk_100EF4A50);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_1000095E8(v0[13], &qword_1011A87F0, &unk_100EF4A50);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009D10D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = sub_10010FC20(a3, a4);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v16 = sub_1000060E4(v12, qword_1011A7DB8);
  (*(v13 + 16))(v15, v16, v12);
  sub_1000089F8(a2, v11, a3, a4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v12;
    v31 = v21;
    v22 = v21;
    *v20 = 136446210;
    v23 = v11[*(v9 + 36)];
    sub_1000095E8(v11, a3, a4);
    v24 = ActionType.rawValue.getter(v23);
    v26 = sub_100010678(v24, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, v29, v20, 0xCu);
    sub_10000959C(v22);

    return (*(v13 + 8))(v15, v30);
  }

  else
  {
    sub_1000095E8(v11, a3, a4);

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1009D137C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v13 = sub_1000060E4(v9, qword_1011A7DB8);
  (*(v10 + 16))(v12, v13, v9);
  sub_1000089F8(a2, v28, a3, a4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(a2 + 48));
    v27 = a5;
    v20 = v19;
    v21 = a4;
    v23 = v22;
    sub_1000095E8(a2, v26, v21);
    v24 = sub_100010678(v20, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v27, v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
    sub_1000095E8(a2, a3, a4);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1009D15CC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 1264) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1272) = v6;
  *(v4 + 1280) = *(v6 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = a4[4];
  *(v4 + 232) = a4[5];
  v9 = a4[7];
  *(v4 + 248) = a4[6];
  *(v4 + 264) = v9;
  v10 = *a4;
  *(v4 + 168) = a4[1];
  v11 = a4[3];
  *(v4 + 184) = a4[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 1304) = v7;
  *(v4 + 280) = *(a4 + 16);
  *(v4 + 152) = v10;

  return _swift_task_switch(sub_1009D1720, 0, 0);
}

uint64_t sub_1009D1720()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = sub_1000060E4(v4, qword_1011A7DB8);
  *(v0 + 1312) = v5;
  v6 = *(v3 + 16);
  *(v0 + 1320) = v6;
  *(v0 + 1328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 280);
  v8 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v8;
  v9 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  sub_1000089F8(v0 + 16, v0 + 288, &qword_1011A8668, &qword_100EF4D00);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  if (v13)
  {
    v40 = *(v0 + 1304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v0 + 88));
    v21 = v20;
    sub_1000095E8(v0 + 16, &qword_1011A8668, &qword_100EF4D00);
    v22 = sub_100010678(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    sub_10000959C(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A8668, &qword_100EF4D00);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  sub_100009F78(0, &qword_1011A7DD8, NSTimer_ptr);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v23, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 1240) = v26;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v27 = ConnectablePublisher.autoconnect()();

  *(v0 + 1248) = v27;
  v28 = *(v0 + 264);
  *(v0 + 520) = *(v0 + 248);
  *(v0 + 536) = v28;
  *(v0 + 552) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v0 + 456) = *(v0 + 184);
  *(v0 + 472) = v29;
  v30 = *(v0 + 232);
  *(v0 + 488) = *(v0 + 216);
  *(v0 + 504) = v30;
  v31 = *(v0 + 168);
  *(v0 + 424) = *v1;
  *(v0 + 440) = v31;
  v32 = *(v0 + 544);
  v33 = swift_allocObject();
  v34 = *(v0 + 264);
  *(v33 + 112) = *(v0 + 248);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v0 + 280);
  v35 = *(v0 + 200);
  *(v33 + 48) = *(v0 + 184);
  *(v33 + 64) = v35;
  v36 = *(v0 + 232);
  *(v33 + 80) = *(v0 + 216);
  *(v33 + 96) = v36;
  v37 = *(v0 + 168);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  sub_1000089F8(v0 + 424, v0 + 560, &qword_1011A8668, &qword_100EF4D00);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1336) = Publisher<>.sink(receiveValue:)();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = sub_1009D1C78;

  return v41(v1);
}

uint64_t sub_1009D1C78()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_1009D200C;
  }

  else
  {
    v2 = sub_1009D1D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D1D8C()
{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 1064) = *(v0 + 248);
  *(v0 + 1080) = v6;
  *(v0 + 1096) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 1000) = *(v0 + 184);
  *(v0 + 1016) = v8;
  *(v0 + 1032) = *(v0 + 216);
  *(v0 + 1048) = v5;
  *(v0 + 968) = *(v0 + 152);
  *(v0 + 984) = v7;
  sub_1000089F8(v0 + 968, v0 + 1104, &qword_1011A8668, &qword_100EF4D00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1272);
  if (v11)
  {
    v24 = *(v0 + 1272);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 1040));
    v23 = v12;
    v19 = v18;
    sub_1000095E8(v0 + 968, &qword_1011A8668, &qword_100EF4D00);
    v20 = sub_100010678(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish success", v15, 0xCu);
    sub_10000959C(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    sub_1000095E8(v0 + 968, &qword_1011A8668, &qword_100EF4D00);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1009D200C()
{
  v29 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1272);

  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v6;
  *(v0 + 824) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v8;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v5;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v7;
  sub_1000089F8(v0 + 696, v0 + 832, &qword_1011A8668, &qword_100EF4D00);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1288);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_1000095E8(v0 + 696, &qword_1011A8668, &qword_100EF4D00);
    v17 = sub_100010678(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);

    sub_1000095E8(v0 + 696, &qword_1011A8668, &qword_100EF4D00);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D2314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  v4[6] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0);
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

  return _swift_task_switch(sub_1009D24B8, 0, 0);
}

uint64_t sub_1009D24B8()
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
  sub_1000089F8(v5, v4, &qword_1011A8670, &qword_100EF4CB0);
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
    sub_1000095E8(v14, &qword_1011A8670, &qword_100EF4CB0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100010678(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v0[13], &qword_1011A8670, &qword_100EF4CB0);
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
  sub_1000089F8(v25, v21, &qword_1011A8670, &qword_100EF4CB0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_10003D17C(v21, v31 + v30, &qword_1011A8670, &qword_100EF4CB0);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_1009D29BC;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_1009D29BC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1009D2D30;
  }

  else
  {
    v2 = sub_1009D2AD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D2AD0()
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
  sub_1000089F8(v6, v5, &qword_1011A8670, &qword_100EF4CB0);
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
    sub_1000095E8(v13, &qword_1011A8670, &qword_100EF4CB0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100010678(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_10000959C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_1000095E8(v0[11], &qword_1011A8670, &qword_100EF4CB0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1009D2D30()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8670, &qword_100EF4CB0);
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
    sub_1000095E8(v12, &qword_1011A8670, &qword_100EF4CB0);
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
    sub_1000095E8(v0[10], &qword_1011A8670, &qword_100EF4CB0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009D3024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  v4[6] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0);
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

  return _swift_task_switch(sub_1009D31C8, 0, 0);
}

uint64_t sub_1009D31C8()
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
  sub_1000089F8(v5, v4, &qword_1011A8678, &qword_100EEDBC0);
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
    sub_1000095E8(v14, &qword_1011A8678, &qword_100EEDBC0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100010678(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v0[13], &qword_1011A8678, &qword_100EEDBC0);
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
  sub_1000089F8(v25, v21, &qword_1011A8678, &qword_100EEDBC0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_10003D17C(v21, v31 + v30, &qword_1011A8678, &qword_100EEDBC0);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_1009D36CC;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_1009D36CC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1009D3A40;
  }

  else
  {
    v2 = sub_1009D37E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D37E0()
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
  sub_1000089F8(v6, v5, &qword_1011A8678, &qword_100EEDBC0);
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
    sub_1000095E8(v13, &qword_1011A8678, &qword_100EEDBC0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100010678(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_10000959C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_1000095E8(v0[11], &qword_1011A8678, &qword_100EEDBC0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1009D3A40()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8678, &qword_100EEDBC0);
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
    sub_1000095E8(v12, &qword_1011A8678, &qword_100EEDBC0);
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
    sub_1000095E8(v0[10], &qword_1011A8678, &qword_100EEDBC0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009D3D34(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

  return _swift_task_switch(sub_1009D3E64, 0, 0);
}

uint64_t sub_1009D3E64()
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
  sub_1000089F8(v0 + 16, v0 + 240, &qword_1011A86A8, &qword_100EF4C60);
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
    sub_1000095E8(v0 + 16, &qword_1011A86A8, &qword_100EF4C60);
    v20 = sub_100010678(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011A86A8, &qword_100EF4C60);
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
  sub_1000089F8(v0 + 352, v0 + 464, &qword_1011A86A8, &qword_100EF4C60);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1009D438C;

  return v37(v0 + 128);
}