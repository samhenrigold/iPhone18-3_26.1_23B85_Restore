uint64_t sub_100A08390(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 728) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100A08844, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 736) = v5;
    *v5 = v4;
    v5[1] = sub_100A0853C;

    return daemon.getter();
  }
}

uint64_t sub_100A0853C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 744) = a1;

  v5 = swift_task_alloc();
  *(v3 + 752) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100A086F0;
  v8 = *(v2 + 720);
  v9 = *(v2 + 712);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100A086F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 760) = a1;
  *(v3 + 768) = v1;

  if (v1)
  {

    v4 = sub_100A09360;
  }

  else
  {

    v4 = sub_100A08BC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A08844()
{
  v18 = v0;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[80];
    v5 = v0[75];
    v6 = v0[74];
    v7 = v0[59];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v5 + 16))(v4, &v10[*(v7 + 20)], v6);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  sub_100007BAC(v0 + 2);

  v15 = v0[1];

  return v15(1);
}

uint64_t sub_100A08BC0()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 776) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 784) = v2;
  *v2 = v0;
  v2[1] = sub_100A08CC0;

  return unsafeBlocking<A>(_:)(v0 + 376, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100A08CC0()
{

  return _swift_task_switch(sub_100A08DD8, 0, 0);
}

uint64_t sub_100A08DD8()
{
  v40 = v0;
  v1 = v0[85];
  v2 = v0[59];
  v3 = v0[47];
  v0[99] = v3;
  v4 = sub_10107497C(v3);
  if (!sub_100E0EA64(*(v1 + *(v2 + 64)), *(v1 + *(v2 + 68))))
  {
    goto LABEL_13;
  }

  v5 = sub_100D60CD0();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v8 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11 & v4)
    {
      goto LABEL_7;
    }

LABEL_13:

    v38 = 0;
LABEL_14:
    sub_100007BAC(v0 + 2);

    v30 = v0[1];

    return v30(v38);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[73];
  sub_1000D2A70(v0[85] + *(v0[59] + 28), v14, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = v0[73];

    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 12));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[80];
      v20 = v0[75];
      v21 = v0[74];
      v22 = v0[59];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_1000035D0(v0 + 12, v0[15]);
      (*(v20 + 16))(v19, &v25[*(v22 + 20)], v21);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      sub_100007BAC(v0 + 12);
      v29 = sub_1000136BC(v26, v28, &v39);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100007BAC(v0 + 12);
    }

    v38 = 1;
    goto LABEL_14;
  }

  v32 = v0[95];
  v33 = v0[79];
  v34 = v0[75];
  v35 = v0[74];
  v36 = v0[73];
  v37 = *(v34 + 32);
  v0[100] = v37;
  v0[101] = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v37(v33, v36, v35);

  return _swift_task_switch(sub_100A096E4, v32, 0);
}

uint64_t sub_100A09360()
{
  v18 = v0;

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[80];
    v5 = v0[75];
    v6 = v0[74];
    v7 = v0[59];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v5 + 16))(v4, &v10[*(v7 + 20)], v6);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  sub_100007BAC(v0 + 2);

  v15 = v0[1];

  return v15(1);
}

uint64_t sub_100A096E4()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 760);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v5 + 16);
  v5 += 16;
  *(v0 + 816) = v7;
  *(v0 + 824) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v4, v6);
  v8 = *(v5 + 64);
  *(v0 + 936) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 832) = v10;
  *(v10 + 16) = v2;
  v1(v10 + v9, v3, v6);

  v11 = swift_task_alloc();
  *(v0 + 840) = v11;
  v12 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v11 = v0;
  v11[1] = sub_100A09874;

  return unsafeBlocking<A>(context:_:)(v0 + 176, 0xD000000000000010, 0x800000010134A8C0, sub_100A1B7A4, v10, v12);
}

uint64_t sub_100A09874()
{

  return _swift_task_switch(sub_100A0998C, 0, 0);
}

uint64_t sub_100A0998C()
{
  v117 = v0;
  if (!*(v0 + 200))
  {
    (*(*(v0 + 600) + 8))(*(v0 + 632), *(v0 + 592));

    sub_10000B3A8(v0 + 176, &unk_1016AA480, &unk_1013BD050);
    if (qword_101694B70 == -1)
    {
LABEL_7:
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 96);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 640);
        v15 = *(v0 + 600);
        v16 = *(v0 + 592);
        v17 = *(v0 + 472);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v116 = v19;
        *v18 = 136315138;
        v20 = sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(v15 + 16))(v14, &v20[*(v17 + 20)], v16);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v15 + 8))(v14, v16);
        sub_100007BAC((v0 + 96));
        v24 = sub_1000136BC(v21, v23, &v116);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v12, v13, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v18, 0xCu);
        sub_100007BAC(v19);

LABEL_39:
        v115 = 1;
LABEL_40:
        sub_100007BAC((v0 + 16));

        v90 = *(v0 + 8);

        return v90(v115);
      }

      v32 = (v0 + 96);
LABEL_38:
      sub_100007BAC(v32);
      goto LABEL_39;
    }

LABEL_47:
    swift_once();
    goto LABEL_7;
  }

  sub_10000A748((v0 + 176), v0 + 136);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_1000035D0((v0 + 136), v1);
  v3 = (*(v2 + 16))(v1, v2);
  *(v0 + 848) = v3;
  v4 = *(v3 + 32);
  *(v0 + 940) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = *(v0 + 768);
  *(v0 + 928) = _swiftEmptyArrayStorage;
  *(v0 + 920) = v8;
  v9 = v5 & v7;
  if (!v9)
  {
    v25 = 0;
    v26 = ((63 - v6) >> 6) - 1;
    while (v26 != v25)
    {
      v10 = v25 + 1;
      v9 = *(v3 + 8 * v25++ + 64);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v33 = _swiftEmptyArrayStorage[2];
    if (!v33)
    {
      v36 = 1;
      goto LABEL_20;
    }

    v34 = *(*(v0 + 504) + 80);
    v35 = *(v0 + 928) + ((v34 + 32) & ~v34);
    sub_100A1B358(v35, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
    if (v33 == 1)
    {
LABEL_18:
      sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
      v36 = 0;
LABEL_20:
      v37 = *(v0 + 576);
      v38 = *(v0 + 544);
      v39 = *(v0 + 496);
      v40 = *(v0 + 504);
      (*(v40 + 56))(v37, v36, 1, v39);

      sub_1000D2A70(v37, v38, &unk_10169BB50, &unk_101395760);
      v41 = (*(v40 + 48))(v38, 1, v39);
      v42 = *(v0 + 792);
      v43 = *(v0 + 544);
      if (v41 != 1)
      {
        v59 = *(v0 + 416);
        v58 = *(v0 + 424);
        v61 = *(v0 + 400);
        v60 = *(v0 + 408);
        v62 = *(v0 + 392);
        (*(v61 + 16))(v59, v43 + *(*(v0 + 496) + 44), v62);
        sub_100A1B3C0(v43, type metadata accessor for ObservedAdvertisement);
        (*(v61 + 32))(v58, v59, v62);
        static Date.trustedNow.getter(v60);
        Date.timeIntervalSince(_:)();
        v64 = v63;
        v65 = *(v61 + 8);
        v65(v60, v62);
        sub_101074970(v42);
        v67 = v66;

        v115 = v67 <= v64;
        if (v67 > v64)
        {
          v91 = *(v0 + 632);
          v92 = *(v0 + 600);
          v93 = *(v0 + 592);
          v94 = *(v0 + 576);
          v95 = *(v0 + 424);
          v96 = *(v0 + 392);

          v65(v95, v96);
          sub_10000B3A8(v94, &unk_10169BB50, &unk_101395760);
          (*(v92 + 8))(v91, v93);
        }

        else
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v113 = v65;
          v68 = type metadata accessor for Logger();
          sub_1000076D4(v68, qword_10177B780);
          sub_10001F280(v0 + 16, v0 + 296);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = *(v0 + 816);
            v104 = v70;
            v72 = *(v0 + 640);
            v112 = *(v0 + 632);
            v73 = *(v0 + 600);
            v74 = *(v0 + 592);
            v110 = *(v0 + 576);
            v75 = *(v0 + 472);
            v108 = *(v0 + 424);
            v106 = *(v0 + 392);
            v76 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v116 = v105;
            *v76 = 141558275;
            *(v76 + 4) = 1752392040;
            *(v76 + 12) = 2081;
            v77 = sub_1000035D0((v0 + 296), *(v0 + 320));
            v71(v72, &v77[*(v75 + 20)], v74);
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v78 = dispatch thunk of CustomStringConvertible.description.getter();
            v80 = v79;
            v81 = *(v73 + 8);
            v81(v72, v74);
            sub_100007BAC((v0 + 296));
            v82 = sub_1000136BC(v78, v80, &v116);

            *(v76 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v69, v104, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v76, 0x16u);
            sub_100007BAC(v105);

            v113(v108, v106);
            sub_10000B3A8(v110, &unk_10169BB50, &unk_101395760);
            v81(v112, v74);
          }

          else
          {
            v97 = *(v0 + 632);
            v98 = *(v0 + 600);
            v99 = *(v0 + 592);
            v100 = *(v0 + 576);
            v101 = *(v0 + 424);
            v102 = *(v0 + 392);

            v113(v101, v102);
            sub_10000B3A8(v100, &unk_10169BB50, &unk_101395760);
            (*(v98 + 8))(v97, v99);
            sub_100007BAC((v0 + 296));
          }
        }

        sub_100007BAC((v0 + 136));
        goto LABEL_40;
      }

      sub_10000B3A8(v43, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 816);
        v48 = *(v0 + 640);
        v114 = *(v0 + 632);
        v107 = *(v0 + 600);
        v49 = *(v0 + 592);
        v111 = *(v0 + 576);
        v50 = *(v0 + 472);
        v51 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v116 = v109;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        v52 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v47(v48, &v52[*(v50 + 20)], v49);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v56 = *(v107 + 8);
        v56(v48, v49);
        sub_100007BAC((v0 + 256));
        v57 = sub_1000136BC(v53, v55, &v116);

        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v45, v46, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v51, 0x16u);
        sub_100007BAC(v109);

        sub_10000B3A8(v111, &unk_10169BB50, &unk_101395760);
        v56(v114, v49);
      }

      else
      {
        v86 = *(v0 + 632);
        v87 = *(v0 + 600);
        v88 = *(v0 + 592);
        v89 = *(v0 + 576);

        sub_10000B3A8(v89, &unk_10169BB50, &unk_101395760);
        (*(v87 + 8))(v86, v88);
        sub_100007BAC((v0 + 256));
      }

      v32 = (v0 + 136);
      goto LABEL_38;
    }

    v83 = 1;
    while (v83 < _swiftEmptyArrayStorage[2])
    {
      sub_100A1B358(v35 + *(*(v0 + 504) + 72) * v83, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
      if (static Date.< infix(_:_:)())
      {
        v84 = *(v0 + 536);
        v85 = *(v0 + 512);
        sub_100A1B3C0(v84, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v85, v84, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
      }

      if (v33 == ++v83)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v10 = 0;
LABEL_12:
  *(v0 + 864) = v10;
  *(v0 + 856) = v9;
  v27 = *(v0 + 800);
  v28 = *(v0 + 760);
  v29 = *(v0 + 624);
  v30 = *(v0 + 616);
  v31 = *(v0 + 592);
  (*(v0 + 816))(v29, *(v3 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v31);
  v27(v30, v29, v31);

  return _swift_task_switch(sub_100A0A790, v28, 0);
}

uint64_t sub_100A0A790()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 760);
  v3 = *(v0 + 640);
  v4 = *(v0 + 592);
  v5 = (*(v0 + 936) + 24) & ~*(v0 + 936);
  (*(v0 + 816))(v3, *(v0 + 616), v4);
  v6 = swift_allocObject();
  *(v0 + 872) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 880) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_100A0A900;

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100A1B7A8, v6, v8);
}

uint64_t sub_100A0A900()
{

  return _swift_task_switch(sub_100A0AA18, 0, 0);
}

uint64_t sub_100A0AA18()
{
  v122 = v0;
  if (!*(v0 + 240))
  {
    v4 = *(v0 + 472);
    v7 = *(v0 + 480);
    v5 = *(v0 + 464);
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 592));
    sub_10000B3A8(v0 + 216, &qword_101696920, &unk_10138B200);
    v9 = *(v7 + 56);
    LODWORD(v7) = v7 + 56;
    v9(v5, 1, 1, v4);
    goto LABEL_5;
  }

  v4 = *(v0 + 472);
  v7 = *(v0 + 480);
  v5 = *(v0 + 464);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v6 = swift_dynamicCast();
  (*(v7 + 56))(v5, v6 ^ 1u, 1, v4);
  v8 = *(v7 + 48);
  LODWORD(v7) = v7 + 48;
  if (v8(v5, 1, v4) == 1)
  {
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 592));
LABEL_5:
    sub_10000B3A8(*(v0 + 464), &unk_1016A9A20, &qword_10138B280);
    goto LABEL_6;
  }

  v20 = *(v0 + 488);
  v21 = *(v0 + 472);
  v22 = *(v0 + 456);
  sub_100A18C9C(*(v0 + 464), v20, type metadata accessor for OwnedBeaconRecord);
  sub_100A1B358(v20 + *(v21 + 24), v22, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v23 = *(v0 + 600);
    v24 = *(v0 + 592);
    v25 = *(v0 + 456);
    v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    LODWORD(v7) = *(v25 + *(v7 + 96));
    v26 = *(v23 + 8);
    *(v0 + 888) = v26;
    *(v0 + 896) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v25, v24);
    if (v7)
    {
      if (v7 != 1)
      {
        v5 = _swiftEmptyArrayStorage;
LABEL_46:
        (*(v0 + 816))(*(v0 + 440) + *(*(v0 + 432) + 20), *(v0 + 488) + *(*(v0 + 472) + 20), *(v0 + 592));
        v71 = getuid();
        sub_1000294F0(v71);
        sub_100A18C28();
        *(v0 + 384) = Set.init(minimumCapacity:)();
        v72 = *(v5 + 2);
        if (v72)
        {
          v73 = (v5 + 35);
          do
          {
            v74 = *(v73 - 3);
            v75 = *(v73 - 2);
            v76 = *(v73 - 1);
            v77 = *v73;
            v73 += 4;
            if (v77)
            {
              v78 = 0x1000000;
            }

            else
            {
              v78 = 0;
            }

            if (v76)
            {
              v79 = 0x10000;
            }

            else
            {
              v79 = 0;
            }

            if (v75)
            {
              v80 = 256;
            }

            else
            {
              v80 = 0;
            }

            sub_100DEBFE8(&v121, v80 | v74 | v79 | v78);
            --v72;
          }

          while (v72);
        }

        v15 = *(v0 + 728);

        *(v0 + 904) = *(v0 + 384);
        v19 = sub_100A0B9A4;
LABEL_13:

        return _swift_task_switch(v19, v15, 0);
      }

      LOBYTE(v1) = 8;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    LOBYTE(v2) = v7 != 0;
    v5 = sub_100A5C994(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v5 + 2);
    v10 = *(v5 + 3);
    v4 = v3 + 1;
    if (v3 >= v10 >> 1)
    {
LABEL_72:
      v5 = sub_100A5C994((v10 > 1), v4, 1, v5);
    }

    *(v5 + 2) = v4;
    v67 = &v5[4 * v3];
    v67[32] = v1;
    v67[33] = v7 == 0;
    v67[34] = 0;
    v67[35] = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100A5C994(0, *(v5 + 2) + 1, 1, v5);
    }

    v69 = *(v5 + 2);
    v68 = *(v5 + 3);
    if (v69 >= v68 >> 1)
    {
      v5 = sub_100A5C994((v68 > 1), v69 + 1, 1, v5);
    }

    *(v5 + 2) = v69 + 1;
    *&v5[4 * v69 + 32] = 0;
    goto LABEL_46;
  }

  v4 = *(v0 + 616);
  v1 = *(v0 + 600);
  v5 = *(v0 + 592);
  v7 = *(v0 + 456);
  sub_100A1B3C0(*(v0 + 488), type metadata accessor for OwnedBeaconRecord);
  v29 = *(v1 + 8);
  LOBYTE(v1) = v1 + 8;
  v29(v4, v5);
  sub_100A1B3C0(v7, type metadata accessor for StableIdentifier);
LABEL_6:
  v10 = *(v0 + 864);
  v11 = (*(v0 + 856) - 1) & *(v0 + 856);
  if (v11)
  {
    v12 = *(v0 + 848);
LABEL_12:
    *(v0 + 864) = v10;
    *(v0 + 856) = v11;
    v14 = *(v0 + 800);
    v15 = *(v0 + 760);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v0 + 592);
    (*(v0 + 816))(v16, *(v12 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v11)) | (v10 << 6)), v18);
    v14(v17, v16, v18);
    v19 = sub_100A0A790;
    goto LABEL_13;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v13 >= (((1 << *(v0 + 940)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 848);
    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  v1 = *(v0 + 928);

  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(*(v0 + 504) + 80);
    v4 = *(v0 + 928) + ((v27 + 32) & ~v27);
    sub_100A1B358(v4, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
    if (v2 == 1)
    {
LABEL_22:
      sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
      v28 = 0;
      goto LABEL_25;
    }

    v3 = *(v0 + 496);
    v70 = 1;
    while (1)
    {
      v10 = *(v1 + 16);
      if (v70 >= v10)
      {
        break;
      }

      v7 = *(v0 + 536);
      v5 = *(v0 + 512);
      sub_100A1B358(v4 + *(*(v0 + 504) + 72) * v70, v5, type metadata accessor for ObservedAdvertisement);
      if (static Date.< infix(_:_:)())
      {
        v5 = *(v0 + 536);
        v7 = *(v0 + 512);
        sub_100A1B3C0(v5, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v7, v5, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
      }

      if (v2 == ++v70)
      {
        goto LABEL_22;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v28 = 1;
LABEL_25:
  v30 = *(v0 + 576);
  v31 = *(v0 + 544);
  v32 = *(v0 + 496);
  v33 = *(v0 + 504);
  (*(v33 + 56))(v30, v28, 1, v32);

  sub_1000D2A70(v30, v31, &unk_10169BB50, &unk_101395760);
  v34 = (*(v33 + 48))(v31, 1, v32);
  v35 = *(v0 + 792);
  v36 = *(v0 + 544);
  if (v34 == 1)
  {

    sub_10000B3A8(v36, &unk_10169BB50, &unk_101395760);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 256);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 816);
      v41 = *(v0 + 640);
      v118 = *(v0 + 632);
      v111 = *(v0 + 600);
      v42 = *(v0 + 592);
      v115 = *(v0 + 576);
      v43 = *(v0 + 472);
      v44 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v121 = v113;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      v45 = sub_1000035D0((v0 + 256), *(v0 + 280));
      v40(v41, &v45[*(v43 + 20)], v42);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v111 + 8);
      v49(v41, v42);
      sub_100007BAC((v0 + 256));
      v50 = sub_1000136BC(v46, v48, &v121);

      *(v44 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v44, 0x16u);
      sub_100007BAC(v113);

      sub_10000B3A8(v115, &unk_10169BB50, &unk_101395760);
      v49(v118, v42);
LABEL_66:
      v119 = 1;
      goto LABEL_67;
    }

    v81 = *(v0 + 632);
    v82 = *(v0 + 600);
    v83 = *(v0 + 592);
    v84 = *(v0 + 576);

    sub_10000B3A8(v84, &unk_10169BB50, &unk_101395760);
    (*(v82 + 8))(v81, v83);
    v85 = (v0 + 256);
    goto LABEL_65;
  }

  v52 = *(v0 + 416);
  v51 = *(v0 + 424);
  v54 = *(v0 + 400);
  v53 = *(v0 + 408);
  v55 = *(v0 + 392);
  (*(v54 + 16))(v52, v36 + *(*(v0 + 496) + 44), v55);
  sub_100A1B3C0(v36, type metadata accessor for ObservedAdvertisement);
  (*(v54 + 32))(v51, v52, v55);
  static Date.trustedNow.getter(v53);
  Date.timeIntervalSince(_:)();
  v57 = v56;
  v58 = *(v54 + 8);
  v58(v53, v55);
  sub_101074970(v35);
  v60 = v59;

  if (v60 <= v57)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v120 = v58;
    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 296);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = *(v0 + 816);
      v109 = v88;
      v90 = *(v0 + 640);
      v117 = *(v0 + 632);
      v91 = *(v0 + 600);
      v92 = *(v0 + 592);
      v116 = *(v0 + 576);
      v93 = *(v0 + 472);
      v114 = *(v0 + 424);
      v112 = *(v0 + 392);
      v94 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v121 = v110;
      *v94 = 141558275;
      *(v94 + 4) = 1752392040;
      *(v94 + 12) = 2081;
      v95 = sub_1000035D0((v0 + 296), *(v0 + 320));
      v89(v90, &v95[*(v93 + 20)], v92);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v99 = *(v91 + 8);
      v99(v90, v92);
      sub_100007BAC((v0 + 296));
      v100 = sub_1000136BC(v96, v98, &v121);

      *(v94 + 14) = v100;
      _os_log_impl(&_mh_execute_header, v87, v109, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v94, 0x16u);
      sub_100007BAC(v110);

      v120(v114, v112);
      sub_10000B3A8(v116, &unk_10169BB50, &unk_101395760);
      v99(v117, v92);
      goto LABEL_66;
    }

    v101 = *(v0 + 632);
    v102 = *(v0 + 600);
    v103 = *(v0 + 592);
    v104 = *(v0 + 576);
    v105 = *(v0 + 424);
    v106 = *(v0 + 392);

    v120(v105, v106);
    sub_10000B3A8(v104, &unk_10169BB50, &unk_101395760);
    (*(v102 + 8))(v101, v103);
    v85 = (v0 + 296);
LABEL_65:
    sub_100007BAC(v85);
    goto LABEL_66;
  }

  v61 = *(v0 + 632);
  v62 = *(v0 + 600);
  v63 = *(v0 + 592);
  v64 = *(v0 + 576);
  v65 = *(v0 + 424);
  v66 = *(v0 + 392);

  v58(v65, v66);
  sub_10000B3A8(v64, &unk_10169BB50, &unk_101395760);
  (*(v62 + 8))(v61, v63);
  v119 = 0;
LABEL_67:
  sub_100007BAC((v0 + 136));
  sub_100007BAC((v0 + 16));

  v107 = *(v0 + 8);

  return v107(v119);
}

uint64_t sub_100A0B9A4()
{
  v1 = v0[115];
  sub_1010CFE2C(v0[55], v0[113], v0[70]);
  v0[114] = v1;
  sub_100A1B3C0(v0[55], type metadata accessor for BeaconIdentifier);

  if (v1)
  {
    v2 = sub_100A0C808;
  }

  else
  {
    v2 = sub_100A0BA64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A0BA64()
{
  v119 = v0;
  sub_1000D2AD8(*(v0 + 560), *(v0 + 568), &unk_10169BB50, &unk_101395760);
  v1 = *(v0 + 912);
  v2 = *(v0 + 552);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  sub_1000D2A70(*(v0 + 568), v2, &unk_10169BB50, &unk_101395760);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 888);
    v6 = *(v0 + 616);
    v7 = *(v0 + 592);
    v8 = *(v0 + 552);
    v9 = *(v0 + 488);
    sub_10000B3A8(*(v0 + 568), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
    v5(v6, v7);
    sub_10000B3A8(v8, &unk_10169BB50, &unk_101395760);
    v10 = *(v0 + 928);
  }

  else
  {
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    sub_100A18C9C(*(v0 + 552), v11, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v11, v12, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 928);
    v114 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_46:
      v10 = sub_100A5C3FC(0, v10[2] + 1, 1, v10);
    }

    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v10 = sub_100A5C3FC((v14 > 1), v15 + 1, 1, v10);
    }

    v16 = *(v0 + 888);
    v17 = *(v0 + 616);
    v18 = *(v0 + 592);
    v19 = *(v0 + 568);
    v110 = *(v0 + 520);
    v20 = *(v0 + 504);
    v21 = *(v0 + 488);
    sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v19, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v21, type metadata accessor for OwnedBeaconRecord);
    v16(v17, v18);
    v10[2] = v15 + 1;
    sub_100A18C9C(v110, v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, type metadata accessor for ObservedAdvertisement);
    v1 = v114;
  }

  v22 = *(v0 + 864);
  v23 = *(v0 + 856);
  *(v0 + 928) = v10;
  *(v0 + 920) = v1;
  v24 = (v23 - 1) & v23;
  if (!v24)
  {
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v25 = *(v0 + 848);
      if (v26 >= (((1 << *(v0 + 940)) + 63) >> 6))
      {
        break;
      }

      v24 = *(v25 + 8 * v26 + 56);
      ++v22;
      if (v24)
      {
        v22 = v26;
        goto LABEL_13;
      }
    }

    v32 = v10[2];
    if (v32)
    {
      v33 = *(*(v0 + 504) + 80);
      v34 = *(v0 + 928) + ((v33 + 32) & ~v33);
      sub_100A1B358(v34, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
      if (v32 == 1)
      {
LABEL_18:
        sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
        v35 = 0;
        goto LABEL_20;
      }

      v73 = 1;
      while (v73 < v10[2])
      {
        sub_100A1B358(v34 + *(*(v0 + 504) + 72) * v73, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
        if (static Date.< infix(_:_:)())
        {
          v74 = *(v0 + 536);
          v75 = *(v0 + 512);
          sub_100A1B3C0(v74, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v75, v74, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
        }

        if (v32 == ++v73)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v35 = 1;
LABEL_20:
    v36 = *(v0 + 576);
    v37 = *(v0 + 544);
    v38 = *(v0 + 496);
    v39 = *(v0 + 504);
    (*(v39 + 56))(v36, v35, 1, v38);

    sub_1000D2A70(v36, v37, &unk_10169BB50, &unk_101395760);
    v40 = (*(v39 + 48))(v37, 1, v38);
    v41 = *(v0 + 792);
    v42 = *(v0 + 544);
    if (v40 == 1)
    {

      sub_10000B3A8(v42, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 816);
        v47 = *(v0 + 640);
        v115 = *(v0 + 632);
        v106 = *(v0 + 600);
        v48 = *(v0 + 592);
        v111 = *(v0 + 576);
        v49 = *(v0 + 472);
        v50 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v118 = v108;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        v51 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v46(v47, &v51[*(v49 + 20)], v48);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v55 = *(v106 + 8);
        v55(v47, v48);
        sub_100007BAC((v0 + 256));
        v56 = sub_1000136BC(v52, v54, &v118);

        *(v50 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v44, v45, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v50, 0x16u);
        sub_100007BAC(v108);

        sub_10000B3A8(v111, &unk_10169BB50, &unk_101395760);
        v55(v115, v48);
LABEL_40:
        v116 = 1;
        goto LABEL_41;
      }

      v76 = *(v0 + 632);
      v77 = *(v0 + 600);
      v78 = *(v0 + 592);
      v79 = *(v0 + 576);

      sub_10000B3A8(v79, &unk_10169BB50, &unk_101395760);
      (*(v77 + 8))(v76, v78);
      v80 = (v0 + 256);
    }

    else
    {
      v58 = *(v0 + 416);
      v57 = *(v0 + 424);
      v60 = *(v0 + 400);
      v59 = *(v0 + 408);
      v61 = *(v0 + 392);
      (*(v60 + 16))(v58, v42 + *(*(v0 + 496) + 44), v61);
      sub_100A1B3C0(v42, type metadata accessor for ObservedAdvertisement);
      (*(v60 + 32))(v57, v58, v61);
      static Date.trustedNow.getter(v59);
      Date.timeIntervalSince(_:)();
      v63 = v62;
      v64 = *(v60 + 8);
      v64(v59, v61);
      sub_101074970(v41);
      v66 = v65;

      if (v66 > v63)
      {
        v67 = *(v0 + 632);
        v68 = *(v0 + 600);
        v69 = *(v0 + 592);
        v70 = *(v0 + 576);
        v71 = *(v0 + 424);
        v72 = *(v0 + 392);

        v64(v71, v72);
        sub_10000B3A8(v70, &unk_10169BB50, &unk_101395760);
        (*(v68 + 8))(v67, v69);
        v116 = 0;
LABEL_41:
        sub_100007BAC((v0 + 136));
        sub_100007BAC((v0 + 16));

        v102 = *(v0 + 8);

        return v102(v116);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v117 = v64;
      v81 = type metadata accessor for Logger();
      sub_1000076D4(v81, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = *(v0 + 816);
        v104 = v83;
        v85 = *(v0 + 640);
        v113 = *(v0 + 632);
        v86 = *(v0 + 600);
        v87 = *(v0 + 592);
        v112 = *(v0 + 576);
        v88 = *(v0 + 472);
        v109 = *(v0 + 424);
        v107 = *(v0 + 392);
        v89 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v118 = v105;
        *v89 = 141558275;
        *(v89 + 4) = 1752392040;
        *(v89 + 12) = 2081;
        v90 = sub_1000035D0((v0 + 296), *(v0 + 320));
        v84(v85, &v90[*(v88 + 20)], v87);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v92;
        v94 = *(v86 + 8);
        v94(v85, v87);
        sub_100007BAC((v0 + 296));
        v95 = sub_1000136BC(v91, v93, &v118);

        *(v89 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v82, v104, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v89, 0x16u);
        sub_100007BAC(v105);

        v117(v109, v107);
        sub_10000B3A8(v112, &unk_10169BB50, &unk_101395760);
        v94(v113, v87);
        goto LABEL_40;
      }

      v96 = *(v0 + 632);
      v97 = *(v0 + 600);
      v98 = *(v0 + 592);
      v99 = *(v0 + 576);
      v100 = *(v0 + 424);
      v101 = *(v0 + 392);

      v117(v100, v101);
      sub_10000B3A8(v99, &unk_10169BB50, &unk_101395760);
      (*(v97 + 8))(v96, v98);
      v80 = (v0 + 296);
    }

    sub_100007BAC(v80);
    goto LABEL_40;
  }

  v25 = *(v0 + 848);
LABEL_13:
  *(v0 + 864) = v22;
  *(v0 + 856) = v24;
  v27 = *(v0 + 800);
  v28 = *(v0 + 760);
  v29 = *(v0 + 624);
  v30 = *(v0 + 616);
  v31 = *(v0 + 592);
  (*(v0 + 816))(v29, *(v25 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v24)) | (v22 << 6)), v31);
  v27(v30, v29, v31);

  return _swift_task_switch(sub_100A0A790, v28, 0);
}

uint64_t sub_100A0C808()
{
  v122 = v0;
  if (qword_101694B70 != -1)
  {
LABEL_51:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch latest beacon observation. Error: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(*(v0 + 504) + 56))(*(v0 + 568), 1, 1, *(v0 + 496));
  v7 = *(v0 + 552);
  v9 = *(v0 + 496);
  v8 = *(v0 + 504);
  sub_1000D2A70(*(v0 + 568), v7, &unk_10169BB50, &unk_101395760);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = *(v0 + 888);
    v11 = *(v0 + 616);
    v12 = *(v0 + 592);
    v13 = *(v0 + 552);
    v14 = *(v0 + 488);
    sub_10000B3A8(*(v0 + 568), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v14, type metadata accessor for OwnedBeaconRecord);
    v10(v11, v12);
    sub_10000B3A8(v13, &unk_10169BB50, &unk_101395760);
    v15 = *(v0 + 928);
  }

  else
  {
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    sub_100A18C9C(*(v0 + 552), v16, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v16, v17, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v0 + 928);
    v117 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100A5C3FC(0, v15[2] + 1, 1, v15);
    }

    v20 = v15[2];
    v19 = v15[3];
    if (v20 >= v19 >> 1)
    {
      v15 = sub_100A5C3FC((v19 > 1), v20 + 1, 1, v15);
    }

    v21 = *(v0 + 888);
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 568);
    v113 = *(v0 + 520);
    v25 = *(v0 + 504);
    v26 = *(v0 + 488);
    sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v24, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v26, type metadata accessor for OwnedBeaconRecord);
    v21(v22, v23);
    v15[2] = v20 + 1;
    sub_100A18C9C(v113, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for ObservedAdvertisement);
    v1 = v117;
  }

  v27 = *(v0 + 864);
  v28 = *(v0 + 856);
  *(v0 + 928) = v15;
  *(v0 + 920) = 0;
  v29 = (v28 - 1) & v28;
  if (!v29)
  {
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v30 = *(v0 + 848);
      if (v31 >= (((1 << *(v0 + 940)) + 63) >> 6))
      {
        break;
      }

      v29 = *(v30 + 8 * v31 + 56);
      ++v27;
      if (v29)
      {
        v27 = v31;
        goto LABEL_18;
      }
    }

    v37 = v15[2];
    if (v37)
    {
      v38 = *(*(v0 + 504) + 80);
      v39 = *(v0 + 928) + ((v38 + 32) & ~v38);
      sub_100A1B358(v39, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
      if (v37 == 1)
      {
LABEL_23:
        sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
        v40 = 0;
        goto LABEL_25;
      }

      v77 = 1;
      while (v77 < v15[2])
      {
        sub_100A1B358(v39 + *(*(v0 + 504) + 72) * v77, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
        if (static Date.< infix(_:_:)())
        {
          v78 = *(v0 + 536);
          v79 = *(v0 + 512);
          sub_100A1B3C0(v78, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v79, v78, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
        }

        if (v37 == ++v77)
        {
          goto LABEL_23;
        }
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v40 = 1;
LABEL_25:
    v41 = *(v0 + 576);
    v42 = *(v0 + 544);
    v44 = *(v0 + 496);
    v43 = *(v0 + 504);
    (*(v43 + 56))(v41, v40, 1, v44);

    sub_1000D2A70(v41, v42, &unk_10169BB50, &unk_101395760);
    v45 = (*(v43 + 48))(v42, 1, v44);
    v46 = *(v0 + 792);
    v47 = *(v0 + 544);
    if (v45 == 1)
    {

      sub_10000B3A8(v47, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v1, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 816);
        v51 = *(v0 + 640);
        v118 = *(v0 + 632);
        v109 = *(v0 + 600);
        v52 = *(v0 + 592);
        v114 = *(v0 + 576);
        v53 = *(v0 + 472);
        v54 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v121 = v111;
        *v54 = 141558275;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        v55 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v50(v51, &v55[*(v53 + 20)], v52);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = *(v109 + 8);
        v59(v51, v52);
        sub_100007BAC((v0 + 256));
        v60 = sub_1000136BC(v56, v58, &v121);

        *(v54 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v48, v49, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v54, 0x16u);
        sub_100007BAC(v111);

        sub_10000B3A8(v114, &unk_10169BB50, &unk_101395760);
        v59(v118, v52);
LABEL_45:
        v119 = 1;
        goto LABEL_46;
      }

      v80 = *(v0 + 632);
      v81 = *(v0 + 600);
      v82 = *(v0 + 592);
      v83 = *(v0 + 576);

      sub_10000B3A8(v83, &unk_10169BB50, &unk_101395760);
      (*(v81 + 8))(v80, v82);
      v84 = (v0 + 256);
    }

    else
    {
      v62 = *(v0 + 416);
      v61 = *(v0 + 424);
      v64 = *(v0 + 400);
      v63 = *(v0 + 408);
      v65 = *(v0 + 392);
      (*(v64 + 16))(v62, v47 + *(*(v0 + 496) + 44), v65);
      sub_100A1B3C0(v47, type metadata accessor for ObservedAdvertisement);
      (*(v64 + 32))(v61, v62, v65);
      static Date.trustedNow.getter(v63);
      Date.timeIntervalSince(_:)();
      v67 = v66;
      v68 = *(v64 + 8);
      v68(v63, v65);
      sub_101074970(v46);
      v70 = v69;

      if (v70 > v67)
      {
        v71 = *(v0 + 632);
        v72 = *(v0 + 600);
        v73 = *(v0 + 592);
        v74 = *(v0 + 576);
        v75 = *(v0 + 424);
        v76 = *(v0 + 392);

        v68(v75, v76);
        sub_10000B3A8(v74, &unk_10169BB50, &unk_101395760);
        (*(v72 + 8))(v71, v73);
        v119 = 0;
LABEL_46:
        sub_100007BAC((v0 + 136));
        sub_100007BAC((v0 + 16));

        v105 = *(v0 + 8);

        return v105(v119);
      }

      v116 = v68;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v1, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = *(v0 + 816);
        v107 = v86;
        v88 = *(v0 + 640);
        v120 = *(v0 + 632);
        v89 = *(v0 + 600);
        v90 = *(v0 + 592);
        v115 = *(v0 + 576);
        v91 = *(v0 + 472);
        v110 = *(v0 + 392);
        v112 = *(v0 + 424);
        v92 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v121 = v108;
        *v92 = 141558275;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2081;
        v93 = sub_1000035D0((v0 + 296), *(v0 + 320));
        v87(v88, &v93[*(v91 + 20)], v90);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v97 = *(v89 + 8);
        v97(v88, v90);
        sub_100007BAC((v0 + 296));
        v98 = sub_1000136BC(v94, v96, &v121);

        *(v92 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v85, v107, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v92, 0x16u);
        sub_100007BAC(v108);

        v116(v112, v110);
        sub_10000B3A8(v115, &unk_10169BB50, &unk_101395760);
        v97(v120, v90);
        goto LABEL_45;
      }

      v99 = *(v0 + 632);
      v100 = *(v0 + 600);
      v101 = *(v0 + 592);
      v102 = *(v0 + 576);
      v103 = *(v0 + 424);
      v104 = *(v0 + 392);

      v116(v103, v104);
      sub_10000B3A8(v102, &unk_10169BB50, &unk_101395760);
      (*(v100 + 8))(v99, v101);
      v84 = (v0 + 296);
    }

    sub_100007BAC(v84);
    goto LABEL_45;
  }

  v30 = *(v0 + 848);
LABEL_18:
  *(v0 + 864) = v27;
  *(v0 + 856) = v29;
  v32 = *(v0 + 800);
  v33 = *(v0 + 760);
  v34 = *(v0 + 624);
  v35 = *(v0 + 616);
  v36 = *(v0 + 592);
  (*(v0 + 816))(v34, *(v30 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v29)) | (v27 << 6)), v36);
  v32(v35, v34, v36);

  return _swift_task_switch(sub_100A0A790, v33, 0);
}

uint64_t sub_100A0D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServerInteractionController(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0D800(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1003A8B50(result, 1);

  return sub_100A0D700(v5, v3, 0);
}

uint64_t sub_100A0D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v6 = type metadata accessor for Date();
  v3[51] = v6;
  v3[52] = *(v6 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = type metadata accessor for BeaconIdentifier(0);
  v3[57] = swift_task_alloc();
  v3[58] = type metadata accessor for StableIdentifier(0);
  v3[59] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[60] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v3[61] = v7;
  v3[62] = *(v7 - 8);
  v3[63] = swift_task_alloc();
  v8 = type metadata accessor for ObservedAdvertisement(0);
  v3[64] = v8;
  v3[65] = *(v8 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[75] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[76] = v9;
  v10 = *(v9 - 8);
  v3[77] = v10;
  v3[78] = *(v10 + 64);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v11 = type metadata accessor for SystemInfo.DeviceLockState();
  v3[83] = v11;
  v3[84] = *(v11 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[5] = a2;
  v3[6] = a3;
  v3[87] = sub_1000280DC(v3 + 2);
  (*(*(a2 - 8) + 16))();

  return _swift_task_switch(sub_100A0DD08, 0, 0);
}

uint64_t sub_100A0DD08(uint64_t a1)
{
  v26 = v1;
  v2 = v1[86];
  v3 = v1[85];
  v4 = v1[84];
  v5 = v1[83];
  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v3, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B780);
    sub_10001F280((v1 + 2), (v1 + 42));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[82];
      v12 = v1[77];
      v13 = v1[76];
      v15 = v1[49];
      v14 = v1[50];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      sub_1000035D0(v1 + 42, v1[45]);
      (*(*(*(v14 + 8) + 8) + 32))(v15);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      sub_100007BAC(v1 + 42);
      v21 = sub_1000136BC(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Can't monitor beacon: %s before first unlock.", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      sub_100007BAC(v1 + 42);
    }

    sub_100007BAC(v1 + 2);

    v23 = v1[1];

    return v23(1);
  }

  else
  {
    v22 = swift_task_alloc();
    v1[88] = v22;
    *v22 = v1;
    v22[1] = sub_100A0E1C0;

    return daemon.getter();
  }
}

uint64_t sub_100A0E1C0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[89] = a1;

  v3 = swift_task_alloc();
  v2[90] = v3;
  v4 = type metadata accessor for Daemon();
  v2[91] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[92] = v6;
  v7 = sub_100003F64(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100A0E3A0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A0E3A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 744) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_100A0E854, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 752) = v5;
    *v5 = v4;
    v5[1] = sub_100A0E54C;

    return daemon.getter();
  }
}

uint64_t sub_100A0E54C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 760) = a1;

  v5 = swift_task_alloc();
  *(v3 + 768) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100A0E700;
  v8 = *(v2 + 736);
  v9 = *(v2 + 728);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100A0E700(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_100A0F398;
  }

  else
  {

    v4 = sub_100A0EBD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A0E854()
{
  v18 = v0;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[82];
    v5 = v0[77];
    v6 = v0[76];
    v8 = v0[49];
    v7 = v0[50];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_1000035D0(v0 + 7, v0[10]);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  sub_100007BAC(v0 + 2);

  v15 = v0[1];

  return v15(1);
}

uint64_t sub_100A0EBD8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 792) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_100A0ECD8;

  return unsafeBlocking<A>(_:)(v0 + 376, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100A0ECD8()
{

  return _swift_task_switch(sub_100A0EDF0, 0, 0);
}

uint64_t sub_100A0EDF0()
{
  v40 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v0[101] = v3;
  v4 = sub_10107497C(v3);
  if (((*(v1 + 120))(v2, v1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = (*(v0[50] + 184))(v0[49]);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v8 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11 & v4)
    {
      goto LABEL_7;
    }

LABEL_13:

    v38 = 0;
LABEL_14:
    sub_100007BAC(v0 + 2);

    v30 = v0[1];

    return v30(v38);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  (*(v0[50] + 200))(v0[49]);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = v0[75];

    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 12));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[82];
      v20 = v0[77];
      v21 = v0[76];
      v23 = v0[49];
      v22 = v0[50];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;
      sub_1000035D0(v0 + 12, v0[15]);
      (*(*(*(v22 + 8) + 8) + 32))(v23);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      sub_100007BAC(v0 + 12);
      v29 = sub_1000136BC(v26, v28, &v39);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_100007BAC(v0 + 12);
    }

    v38 = 1;
    goto LABEL_14;
  }

  v32 = v0[97];
  v33 = v0[81];
  v34 = v0[77];
  v35 = v0[76];
  v36 = v0[75];
  v37 = *(v34 + 32);
  v0[102] = v37;
  v0[103] = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v37(v33, v36, v35);

  return _swift_task_switch(sub_100A0F724, v32, 0);
}

uint64_t sub_100A0F398()
{
  v18 = v0;

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[82];
    v5 = v0[77];
    v6 = v0[76];
    v8 = v0[49];
    v7 = v0[50];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_1000035D0(v0 + 7, v0[10]);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  sub_100007BAC(v0 + 2);

  v15 = v0[1];

  return v15(1);
}

uint64_t sub_100A0F724()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 776);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v5 + 16);
  v5 += 16;
  *(v0 + 832) = v7;
  *(v0 + 840) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v4, v6);
  v8 = *(v5 + 64);
  *(v0 + 952) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 848) = v10;
  *(v10 + 16) = v2;
  v1(v10 + v9, v3, v6);

  v11 = swift_task_alloc();
  *(v0 + 856) = v11;
  v12 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v11 = v0;
  v11[1] = sub_100A0F8B4;

  return unsafeBlocking<A>(context:_:)(v0 + 176, 0xD000000000000010, 0x800000010134A8C0, sub_100A18BF8, v10, v12);
}

uint64_t sub_100A0F8B4()
{

  return _swift_task_switch(sub_100A0F9CC, 0, 0);
}

uint64_t sub_100A0F9CC()
{
  v115 = v0;
  if (!*(v0 + 200))
  {
    (*(*(v0 + 616) + 8))(*(v0 + 648), *(v0 + 608));

    sub_10000B3A8(v0 + 176, &unk_1016AA480, &unk_1013BD050);
    if (qword_101694B70 == -1)
    {
LABEL_7:
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 96);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 656);
        v15 = *(v0 + 616);
        v16 = *(v0 + 608);
        v18 = *(v0 + 392);
        v17 = *(v0 + 400);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v114 = v20;
        *v19 = 136315138;
        sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(*(*(v17 + 8) + 8) + 32))(v18);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v15 + 8))(v14, v16);
        sub_100007BAC((v0 + 96));
        v24 = sub_1000136BC(v21, v23, &v114);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v12, v13, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v19, 0xCu);
        sub_100007BAC(v20);

LABEL_39:
        v113 = 1;
LABEL_40:
        sub_100007BAC((v0 + 16));

        v89 = *(v0 + 8);

        return v89(v113);
      }

      v32 = (v0 + 96);
LABEL_38:
      sub_100007BAC(v32);
      goto LABEL_39;
    }

LABEL_47:
    swift_once();
    goto LABEL_7;
  }

  sub_10000A748((v0 + 176), v0 + 136);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_1000035D0((v0 + 136), v1);
  v3 = (*(v2 + 16))(v1, v2);
  *(v0 + 864) = v3;
  v4 = *(v3 + 32);
  *(v0 + 956) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = *(v0 + 784);
  *(v0 + 944) = _swiftEmptyArrayStorage;
  *(v0 + 936) = v8;
  v9 = v5 & v7;
  if (!v9)
  {
    v25 = 0;
    v26 = ((63 - v6) >> 6) - 1;
    while (v26 != v25)
    {
      v10 = v25 + 1;
      v9 = *(v3 + 8 * v25++ + 64);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v33 = _swiftEmptyArrayStorage[2];
    if (!v33)
    {
      v36 = 1;
      goto LABEL_20;
    }

    v34 = *(*(v0 + 520) + 80);
    v35 = *(v0 + 944) + ((v34 + 32) & ~v34);
    sub_100A1B358(v35, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
    if (v33 == 1)
    {
LABEL_18:
      sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
      v36 = 0;
LABEL_20:
      v37 = *(v0 + 592);
      v38 = *(v0 + 560);
      v39 = *(v0 + 520);
      v40 = *(v0 + 512);
      (*(v39 + 56))(v37, v36, 1, v40);

      sub_1000D2A70(v37, v38, &unk_10169BB50, &unk_101395760);
      v41 = (*(v39 + 48))(v38, 1, v40);
      v42 = *(v0 + 808);
      v43 = *(v0 + 560);
      if (v41 != 1)
      {
        v59 = *(v0 + 432);
        v58 = *(v0 + 440);
        v61 = *(v0 + 416);
        v60 = *(v0 + 424);
        v62 = *(v0 + 408);
        (*(v61 + 16))(v59, v43 + *(*(v0 + 512) + 44), v62);
        sub_100A1B3C0(v43, type metadata accessor for ObservedAdvertisement);
        (*(v61 + 32))(v58, v59, v62);
        static Date.trustedNow.getter(v60);
        Date.timeIntervalSince(_:)();
        v64 = v63;
        v65 = *(v61 + 8);
        v65(v60, v62);
        sub_101074970(v42);
        v67 = v66;

        v113 = v67 <= v64;
        if (v67 > v64)
        {
          v90 = *(v0 + 648);
          v91 = *(v0 + 616);
          v92 = *(v0 + 608);
          v93 = *(v0 + 592);
          v94 = *(v0 + 440);
          v95 = *(v0 + 408);

          v65(v94, v95);
          sub_10000B3A8(v93, &unk_10169BB50, &unk_101395760);
          (*(v91 + 8))(v90, v92);
        }

        else
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          sub_1000076D4(v68, qword_10177B780);
          sub_10001F280(v0 + 16, v0 + 296);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            log = v69;
            v71 = *(v0 + 656);
            v72 = *(v0 + 616);
            v73 = *(v0 + 608);
            v109 = *(v0 + 592);
            v110 = *(v0 + 648);
            v106 = *(v0 + 408);
            v107 = *(v0 + 440);
            v105 = v70;
            v74 = *(v0 + 392);
            v75 = *(v0 + 400);
            v76 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v114 = v104;
            *v76 = 141558275;
            *(v76 + 4) = 1752392040;
            *(v76 + 12) = 2081;
            sub_1000035D0((v0 + 296), *(v0 + 320));
            (*(*(*(v75 + 8) + 8) + 32))(v74);
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v77 = dispatch thunk of CustomStringConvertible.description.getter();
            v79 = v78;
            v80 = *(v72 + 8);
            v80(v71, v73);
            sub_100007BAC((v0 + 296));
            v81 = sub_1000136BC(v77, v79, &v114);

            *(v76 + 14) = v81;
            _os_log_impl(&_mh_execute_header, log, v105, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v76, 0x16u);
            sub_100007BAC(v104);

            v65(v107, v106);
            sub_10000B3A8(v109, &unk_10169BB50, &unk_101395760);
            v80(v110, v73);
          }

          else
          {
            v96 = *(v0 + 648);
            v97 = *(v0 + 616);
            v98 = *(v0 + 608);
            v99 = *(v0 + 592);
            v100 = *(v0 + 440);
            v101 = *(v0 + 408);

            v65(v100, v101);
            sub_10000B3A8(v99, &unk_10169BB50, &unk_101395760);
            (*(v97 + 8))(v96, v98);
            sub_100007BAC((v0 + 296));
          }
        }

        sub_100007BAC((v0 + 136));
        goto LABEL_40;
      }

      sub_10000B3A8(v43, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 656);
        v112 = *(v0 + 648);
        v48 = *(v0 + 616);
        v49 = *(v0 + 608);
        v111 = *(v0 + 592);
        v51 = *(v0 + 392);
        v50 = *(v0 + 400);
        v52 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v114 = v108;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v50 + 8) + 8) + 32))(v51);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v56 = *(v48 + 8);
        v56(v47, v49);
        sub_100007BAC((v0 + 256));
        v57 = sub_1000136BC(v53, v55, &v114);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v45, v46, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v52, 0x16u);
        sub_100007BAC(v108);

        sub_10000B3A8(v111, &unk_10169BB50, &unk_101395760);
        v56(v112, v49);
      }

      else
      {
        v85 = *(v0 + 648);
        v86 = *(v0 + 616);
        v87 = *(v0 + 608);
        v88 = *(v0 + 592);

        sub_10000B3A8(v88, &unk_10169BB50, &unk_101395760);
        (*(v86 + 8))(v85, v87);
        sub_100007BAC((v0 + 256));
      }

      v32 = (v0 + 136);
      goto LABEL_38;
    }

    v82 = 1;
    while (v82 < _swiftEmptyArrayStorage[2])
    {
      sub_100A1B358(v35 + *(*(v0 + 520) + 72) * v82, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
      if (static Date.< infix(_:_:)())
      {
        v83 = *(v0 + 552);
        v84 = *(v0 + 528);
        sub_100A1B3C0(v83, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v84, v83, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
      }

      if (v33 == ++v82)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v10 = 0;
LABEL_12:
  *(v0 + 880) = v10;
  *(v0 + 872) = v9;
  v27 = *(v0 + 816);
  v28 = *(v0 + 776);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 608);
  (*(v0 + 832))(v29, *(v3 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v31);
  v27(v30, v29, v31);

  return _swift_task_switch(sub_100A107E4, v28, 0);
}

uint64_t sub_100A107E4()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 776);
  v3 = *(v0 + 656);
  v4 = *(v0 + 608);
  v5 = (*(v0 + 952) + 24) & ~*(v0 + 952);
  (*(v0 + 832))(v3, *(v0 + 632), v4);
  v6 = swift_allocObject();
  *(v0 + 888) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 896) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_100A10954;

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100A18C10, v6, v8);
}

uint64_t sub_100A10954()
{

  return _swift_task_switch(sub_100A10A6C, 0, 0);
}

uint64_t sub_100A10A6C()
{
  v120 = v0;
  if (!*(v0 + 240))
  {
    v4 = *(v0 + 488);
    v7 = *(v0 + 496);
    v5 = *(v0 + 480);
    (*(*(v0 + 616) + 8))(*(v0 + 632), *(v0 + 608));
    sub_10000B3A8(v0 + 216, &qword_101696920, &unk_10138B200);
    v9 = *(v7 + 56);
    LODWORD(v7) = v7 + 56;
    v9(v5, 1, 1, v4);
    goto LABEL_5;
  }

  v4 = *(v0 + 488);
  v7 = *(v0 + 496);
  v5 = *(v0 + 480);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v6 = swift_dynamicCast();
  (*(v7 + 56))(v5, v6 ^ 1u, 1, v4);
  v8 = *(v7 + 48);
  LODWORD(v7) = v7 + 48;
  if (v8(v5, 1, v4) == 1)
  {
    (*(*(v0 + 616) + 8))(*(v0 + 632), *(v0 + 608));
LABEL_5:
    sub_10000B3A8(*(v0 + 480), &unk_1016A9A20, &qword_10138B280);
    goto LABEL_6;
  }

  v20 = *(v0 + 504);
  v21 = *(v0 + 488);
  v22 = *(v0 + 472);
  sub_100A18C9C(*(v0 + 480), v20, type metadata accessor for OwnedBeaconRecord);
  sub_100A1B358(v20 + *(v21 + 24), v22, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v23 = *(v0 + 616);
    v24 = *(v0 + 608);
    v25 = *(v0 + 472);
    v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    LODWORD(v7) = *(v25 + *(v7 + 96));
    v26 = *(v23 + 8);
    *(v0 + 904) = v26;
    *(v0 + 912) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v25, v24);
    if (v7)
    {
      if (v7 != 1)
      {
        v5 = _swiftEmptyArrayStorage;
LABEL_46:
        (*(v0 + 832))(*(v0 + 456) + *(*(v0 + 448) + 20), *(v0 + 504) + *(*(v0 + 488) + 20), *(v0 + 608));
        v71 = getuid();
        sub_1000294F0(v71);
        sub_100A18C28();
        *(v0 + 384) = Set.init(minimumCapacity:)();
        v72 = *(v5 + 2);
        if (v72)
        {
          v73 = (v5 + 35);
          do
          {
            v74 = *(v73 - 3);
            v75 = *(v73 - 2);
            v76 = *(v73 - 1);
            v77 = *v73;
            v73 += 4;
            if (v77)
            {
              v78 = 0x1000000;
            }

            else
            {
              v78 = 0;
            }

            if (v76)
            {
              v79 = 0x10000;
            }

            else
            {
              v79 = 0;
            }

            if (v75)
            {
              v80 = 256;
            }

            else
            {
              v80 = 0;
            }

            sub_100DEBFE8(&v119, v80 | v74 | v79 | v78);
            --v72;
          }

          while (v72);
        }

        v15 = *(v0 + 744);

        *(v0 + 920) = *(v0 + 384);
        v19 = sub_100A11A04;
LABEL_13:

        return _swift_task_switch(v19, v15, 0);
      }

      LOBYTE(v1) = 8;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    LOBYTE(v2) = v7 != 0;
    v5 = sub_100A5C994(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v5 + 2);
    v10 = *(v5 + 3);
    v4 = v3 + 1;
    if (v3 >= v10 >> 1)
    {
LABEL_72:
      v5 = sub_100A5C994((v10 > 1), v4, 1, v5);
    }

    *(v5 + 2) = v4;
    v67 = &v5[4 * v3];
    v67[32] = v1;
    v67[33] = v7 == 0;
    v67[34] = 0;
    v67[35] = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100A5C994(0, *(v5 + 2) + 1, 1, v5);
    }

    v69 = *(v5 + 2);
    v68 = *(v5 + 3);
    if (v69 >= v68 >> 1)
    {
      v5 = sub_100A5C994((v68 > 1), v69 + 1, 1, v5);
    }

    *(v5 + 2) = v69 + 1;
    *&v5[4 * v69 + 32] = 0;
    goto LABEL_46;
  }

  v4 = *(v0 + 632);
  v1 = *(v0 + 616);
  v5 = *(v0 + 608);
  v7 = *(v0 + 472);
  sub_100A1B3C0(*(v0 + 504), type metadata accessor for OwnedBeaconRecord);
  v29 = *(v1 + 8);
  LOBYTE(v1) = v1 + 8;
  v29(v4, v5);
  sub_100A1B3C0(v7, type metadata accessor for StableIdentifier);
LABEL_6:
  v10 = *(v0 + 880);
  v11 = (*(v0 + 872) - 1) & *(v0 + 872);
  if (v11)
  {
    v12 = *(v0 + 864);
LABEL_12:
    *(v0 + 880) = v10;
    *(v0 + 872) = v11;
    v14 = *(v0 + 816);
    v15 = *(v0 + 776);
    v16 = *(v0 + 640);
    v17 = *(v0 + 632);
    v18 = *(v0 + 608);
    (*(v0 + 832))(v16, *(v12 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v11)) | (v10 << 6)), v18);
    v14(v17, v16, v18);
    v19 = sub_100A107E4;
    goto LABEL_13;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v13 >= (((1 << *(v0 + 956)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 864);
    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  v1 = *(v0 + 944);

  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(*(v0 + 520) + 80);
    v4 = *(v0 + 944) + ((v27 + 32) & ~v27);
    sub_100A1B358(v4, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
    if (v2 == 1)
    {
LABEL_22:
      sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
      v28 = 0;
      goto LABEL_25;
    }

    v3 = *(v0 + 512);
    v70 = 1;
    while (1)
    {
      v10 = *(v1 + 16);
      if (v70 >= v10)
      {
        break;
      }

      v7 = *(v0 + 552);
      v5 = *(v0 + 528);
      sub_100A1B358(v4 + *(*(v0 + 520) + 72) * v70, v5, type metadata accessor for ObservedAdvertisement);
      if (static Date.< infix(_:_:)())
      {
        v5 = *(v0 + 552);
        v7 = *(v0 + 528);
        sub_100A1B3C0(v5, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v7, v5, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
      }

      if (v2 == ++v70)
      {
        goto LABEL_22;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v28 = 1;
LABEL_25:
  v30 = *(v0 + 592);
  v31 = *(v0 + 560);
  v32 = *(v0 + 520);
  v33 = *(v0 + 512);
  (*(v32 + 56))(v30, v28, 1, v33);

  sub_1000D2A70(v30, v31, &unk_10169BB50, &unk_101395760);
  v34 = (*(v32 + 48))(v31, 1, v33);
  v35 = *(v0 + 808);
  v36 = *(v0 + 560);
  if (v34 == 1)
  {

    sub_10000B3A8(v36, &unk_10169BB50, &unk_101395760);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 256);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 656);
      v117 = *(v0 + 648);
      v41 = *(v0 + 616);
      v42 = *(v0 + 608);
      v115 = *(v0 + 592);
      v44 = *(v0 + 392);
      v43 = *(v0 + 400);
      v45 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v119 = v112;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_1000035D0((v0 + 256), *(v0 + 280));
      (*(*(*(v43 + 8) + 8) + 32))(v44);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v41 + 8);
      v49(v40, v42);
      sub_100007BAC((v0 + 256));
      v50 = sub_1000136BC(v46, v48, &v119);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v45, 0x16u);
      sub_100007BAC(v112);

      sub_10000B3A8(v115, &unk_10169BB50, &unk_101395760);
      v49(v117, v42);
LABEL_66:
      v118 = 1;
      goto LABEL_67;
    }

    v81 = *(v0 + 648);
    v82 = *(v0 + 616);
    v83 = *(v0 + 608);
    v84 = *(v0 + 592);

    sub_10000B3A8(v84, &unk_10169BB50, &unk_101395760);
    (*(v82 + 8))(v81, v83);
    v85 = (v0 + 256);
    goto LABEL_65;
  }

  v52 = *(v0 + 432);
  v51 = *(v0 + 440);
  v54 = *(v0 + 416);
  v53 = *(v0 + 424);
  v55 = *(v0 + 408);
  (*(v54 + 16))(v52, v36 + *(*(v0 + 512) + 44), v55);
  sub_100A1B3C0(v36, type metadata accessor for ObservedAdvertisement);
  (*(v54 + 32))(v51, v52, v55);
  static Date.trustedNow.getter(v53);
  Date.timeIntervalSince(_:)();
  v57 = v56;
  v58 = *(v54 + 8);
  v58(v53, v55);
  sub_101074970(v35);
  v60 = v59;

  if (v60 <= v57)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 296);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      log = v87;
      v89 = *(v0 + 656);
      v90 = *(v0 + 616);
      v91 = *(v0 + 608);
      v114 = *(v0 + 592);
      v116 = *(v0 + 648);
      v111 = *(v0 + 408);
      v113 = *(v0 + 440);
      v110 = v88;
      v93 = *(v0 + 392);
      v92 = *(v0 + 400);
      v94 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v119 = v109;
      *v94 = 141558275;
      *(v94 + 4) = 1752392040;
      *(v94 + 12) = 2081;
      sub_1000035D0((v0 + 296), *(v0 + 320));
      (*(*(*(v92 + 8) + 8) + 32))(v93);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v98 = *(v90 + 8);
      v98(v89, v91);
      sub_100007BAC((v0 + 296));
      v99 = sub_1000136BC(v95, v97, &v119);

      *(v94 + 14) = v99;
      _os_log_impl(&_mh_execute_header, log, v110, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v94, 0x16u);
      sub_100007BAC(v109);

      v58(v113, v111);
      sub_10000B3A8(v114, &unk_10169BB50, &unk_101395760);
      v98(v116, v91);
      goto LABEL_66;
    }

    v100 = *(v0 + 648);
    v101 = *(v0 + 616);
    v102 = *(v0 + 608);
    v103 = *(v0 + 592);
    v104 = *(v0 + 440);
    v105 = *(v0 + 408);

    v58(v104, v105);
    sub_10000B3A8(v103, &unk_10169BB50, &unk_101395760);
    (*(v101 + 8))(v100, v102);
    v85 = (v0 + 296);
LABEL_65:
    sub_100007BAC(v85);
    goto LABEL_66;
  }

  v61 = *(v0 + 648);
  v62 = *(v0 + 616);
  v63 = *(v0 + 608);
  v64 = *(v0 + 592);
  v65 = *(v0 + 440);
  v66 = *(v0 + 408);

  v58(v65, v66);
  sub_10000B3A8(v64, &unk_10169BB50, &unk_101395760);
  (*(v62 + 8))(v61, v63);
  v118 = 0;
LABEL_67:
  sub_100007BAC((v0 + 136));
  sub_100007BAC((v0 + 16));

  v106 = *(v0 + 8);

  return v106(v118);
}

uint64_t sub_100A11A04()
{
  v1 = v0[117];
  sub_1010CFE2C(v0[57], v0[115], v0[72]);
  v0[116] = v1;
  sub_100A1B3C0(v0[57], type metadata accessor for BeaconIdentifier);

  if (v1)
  {
    v2 = sub_100A12878;
  }

  else
  {
    v2 = sub_100A11AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A11AC4()
{
  v117 = v0;
  sub_1000D2AD8(*(v0 + 576), *(v0 + 584), &unk_10169BB50, &unk_101395760);
  v1 = *(v0 + 928);
  v2 = *(v0 + 568);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 584), v2, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 904);
    v6 = *(v0 + 632);
    v7 = *(v0 + 608);
    v8 = *(v0 + 568);
    v9 = *(v0 + 504);
    sub_10000B3A8(*(v0 + 584), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
    v5(v6, v7);
    sub_10000B3A8(v8, &unk_10169BB50, &unk_101395760);
    v10 = *(v0 + 944);
  }

  else
  {
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    sub_100A18C9C(*(v0 + 568), v11, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v11, v12, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 944);
    v113 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_46:
      v10 = sub_100A5C3FC(0, v10[2] + 1, 1, v10);
    }

    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v10 = sub_100A5C3FC((v14 > 1), v15 + 1, 1, v10);
    }

    v16 = *(v0 + 904);
    v17 = *(v0 + 632);
    v18 = *(v0 + 608);
    v19 = *(v0 + 584);
    v109 = *(v0 + 536);
    v20 = *(v0 + 520);
    v21 = *(v0 + 504);
    sub_100A1B3C0(*(v0 + 544), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v19, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v21, type metadata accessor for OwnedBeaconRecord);
    v16(v17, v18);
    v10[2] = v15 + 1;
    sub_100A18C9C(v109, v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, type metadata accessor for ObservedAdvertisement);
    v1 = v113;
  }

  v22 = *(v0 + 880);
  v23 = *(v0 + 872);
  *(v0 + 944) = v10;
  *(v0 + 936) = v1;
  v24 = (v23 - 1) & v23;
  if (!v24)
  {
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v25 = *(v0 + 864);
      if (v26 >= (((1 << *(v0 + 956)) + 63) >> 6))
      {
        break;
      }

      v24 = *(v25 + 8 * v26 + 56);
      ++v22;
      if (v24)
      {
        v22 = v26;
        goto LABEL_13;
      }
    }

    v32 = v10[2];
    if (v32)
    {
      v33 = *(*(v0 + 520) + 80);
      v34 = *(v0 + 944) + ((v33 + 32) & ~v33);
      sub_100A1B358(v34, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
      if (v32 == 1)
      {
LABEL_18:
        sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
        v35 = 0;
        goto LABEL_20;
      }

      v73 = 1;
      while (v73 < v10[2])
      {
        sub_100A1B358(v34 + *(*(v0 + 520) + 72) * v73, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
        if (static Date.< infix(_:_:)())
        {
          v74 = *(v0 + 552);
          v75 = *(v0 + 528);
          sub_100A1B3C0(v74, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v75, v74, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
        }

        if (v32 == ++v73)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v35 = 1;
LABEL_20:
    v36 = *(v0 + 592);
    v37 = *(v0 + 560);
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);
    (*(v38 + 56))(v36, v35, 1, v39);

    sub_1000D2A70(v36, v37, &unk_10169BB50, &unk_101395760);
    v40 = (*(v38 + 48))(v37, 1, v39);
    v41 = *(v0 + 808);
    v42 = *(v0 + 560);
    if (v40 == 1)
    {

      sub_10000B3A8(v42, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 656);
        v114 = *(v0 + 648);
        v47 = *(v0 + 616);
        v48 = *(v0 + 608);
        v111 = *(v0 + 592);
        v50 = *(v0 + 392);
        v49 = *(v0 + 400);
        v51 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v116 = v107;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v49 + 8) + 8) + 32))(v50);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v55 = *(v47 + 8);
        v55(v46, v48);
        sub_100007BAC((v0 + 256));
        v56 = sub_1000136BC(v52, v54, &v116);

        *(v51 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v44, v45, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v51, 0x16u);
        sub_100007BAC(v107);

        sub_10000B3A8(v111, &unk_10169BB50, &unk_101395760);
        v55(v114, v48);
LABEL_40:
        v115 = 1;
        goto LABEL_41;
      }

      v76 = *(v0 + 648);
      v77 = *(v0 + 616);
      v78 = *(v0 + 608);
      v79 = *(v0 + 592);

      sub_10000B3A8(v79, &unk_10169BB50, &unk_101395760);
      (*(v77 + 8))(v76, v78);
      v80 = (v0 + 256);
    }

    else
    {
      v58 = *(v0 + 432);
      v57 = *(v0 + 440);
      v60 = *(v0 + 416);
      v59 = *(v0 + 424);
      v61 = *(v0 + 408);
      (*(v60 + 16))(v58, v42 + *(*(v0 + 512) + 44), v61);
      sub_100A1B3C0(v42, type metadata accessor for ObservedAdvertisement);
      (*(v60 + 32))(v57, v58, v61);
      static Date.trustedNow.getter(v59);
      Date.timeIntervalSince(_:)();
      v63 = v62;
      v64 = *(v60 + 8);
      v64(v59, v61);
      sub_101074970(v41);
      v66 = v65;

      if (v66 > v63)
      {
        v67 = *(v0 + 648);
        v68 = *(v0 + 616);
        v69 = *(v0 + 608);
        v70 = *(v0 + 592);
        v71 = *(v0 + 440);
        v72 = *(v0 + 408);

        v64(v71, v72);
        sub_10000B3A8(v70, &unk_10169BB50, &unk_101395760);
        (*(v68 + 8))(v67, v69);
        v115 = 0;
LABEL_41:
        sub_100007BAC((v0 + 136));
        sub_100007BAC((v0 + 16));

        v101 = *(v0 + 8);

        return v101(v115);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_1000076D4(v81, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        log = v82;
        v84 = *(v0 + 656);
        v85 = *(v0 + 616);
        v86 = *(v0 + 608);
        v110 = *(v0 + 592);
        v112 = *(v0 + 648);
        v106 = *(v0 + 408);
        v108 = *(v0 + 440);
        v105 = v83;
        v88 = *(v0 + 392);
        v87 = *(v0 + 400);
        v89 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v116 = v104;
        *v89 = 141558275;
        *(v89 + 4) = 1752392040;
        *(v89 + 12) = 2081;
        sub_1000035D0((v0 + 296), *(v0 + 320));
        (*(*(*(v87 + 8) + 8) + 32))(v88);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v93 = *(v85 + 8);
        v93(v84, v86);
        sub_100007BAC((v0 + 296));
        v94 = sub_1000136BC(v90, v92, &v116);

        *(v89 + 14) = v94;
        _os_log_impl(&_mh_execute_header, log, v105, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v89, 0x16u);
        sub_100007BAC(v104);

        v64(v108, v106);
        sub_10000B3A8(v110, &unk_10169BB50, &unk_101395760);
        v93(v112, v86);
        goto LABEL_40;
      }

      v95 = *(v0 + 648);
      v96 = *(v0 + 616);
      v97 = *(v0 + 608);
      v98 = *(v0 + 592);
      v99 = *(v0 + 440);
      v100 = *(v0 + 408);

      v64(v99, v100);
      sub_10000B3A8(v98, &unk_10169BB50, &unk_101395760);
      (*(v96 + 8))(v95, v97);
      v80 = (v0 + 296);
    }

    sub_100007BAC(v80);
    goto LABEL_40;
  }

  v25 = *(v0 + 864);
LABEL_13:
  *(v0 + 880) = v22;
  *(v0 + 872) = v24;
  v27 = *(v0 + 816);
  v28 = *(v0 + 776);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 608);
  (*(v0 + 832))(v29, *(v25 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v24)) | (v22 << 6)), v31);
  v27(v30, v29, v31);

  return _swift_task_switch(sub_100A107E4, v28, 0);
}

uint64_t sub_100A12878()
{
  v120 = v0;
  if (qword_101694B70 != -1)
  {
LABEL_51:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch latest beacon observation. Error: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(*(v0 + 520) + 56))(*(v0 + 584), 1, 1, *(v0 + 512));
  v7 = *(v0 + 568);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 584), v7, &unk_10169BB50, &unk_101395760);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = *(v0 + 904);
    v11 = *(v0 + 632);
    v12 = *(v0 + 608);
    v13 = *(v0 + 568);
    v14 = *(v0 + 504);
    sub_10000B3A8(*(v0 + 584), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v14, type metadata accessor for OwnedBeaconRecord);
    v10(v11, v12);
    sub_10000B3A8(v13, &unk_10169BB50, &unk_101395760);
    v15 = *(v0 + 944);
  }

  else
  {
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    sub_100A18C9C(*(v0 + 568), v16, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v16, v17, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v0 + 944);
    v115 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100A5C3FC(0, v15[2] + 1, 1, v15);
    }

    v20 = v15[2];
    v19 = v15[3];
    if (v20 >= v19 >> 1)
    {
      v15 = sub_100A5C3FC((v19 > 1), v20 + 1, 1, v15);
    }

    v21 = *(v0 + 904);
    v22 = *(v0 + 632);
    v23 = *(v0 + 608);
    v24 = *(v0 + 584);
    v111 = *(v0 + 536);
    v25 = *(v0 + 520);
    v26 = *(v0 + 504);
    sub_100A1B3C0(*(v0 + 544), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v24, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v26, type metadata accessor for OwnedBeaconRecord);
    v21(v22, v23);
    v15[2] = v20 + 1;
    sub_100A18C9C(v111, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for ObservedAdvertisement);
    v1 = v115;
  }

  v27 = *(v0 + 880);
  v28 = *(v0 + 872);
  *(v0 + 944) = v15;
  *(v0 + 936) = 0;
  v29 = (v28 - 1) & v28;
  if (!v29)
  {
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v30 = *(v0 + 864);
      if (v31 >= (((1 << *(v0 + 956)) + 63) >> 6))
      {
        break;
      }

      v29 = *(v30 + 8 * v31 + 56);
      ++v27;
      if (v29)
      {
        v27 = v31;
        goto LABEL_18;
      }
    }

    v37 = v15[2];
    if (v37)
    {
      v38 = *(*(v0 + 520) + 80);
      v39 = *(v0 + 944) + ((v38 + 32) & ~v38);
      sub_100A1B358(v39, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
      if (v37 == 1)
      {
LABEL_23:
        sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
        v40 = 0;
        goto LABEL_25;
      }

      v77 = 1;
      while (v77 < v15[2])
      {
        sub_100A1B358(v39 + *(*(v0 + 520) + 72) * v77, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
        if (static Date.< infix(_:_:)())
        {
          v78 = *(v0 + 552);
          v79 = *(v0 + 528);
          sub_100A1B3C0(v78, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v79, v78, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
        }

        if (v37 == ++v77)
        {
          goto LABEL_23;
        }
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v40 = 1;
LABEL_25:
    v41 = *(v0 + 592);
    v42 = *(v0 + 560);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);
    (*(v43 + 56))(v41, v40, 1, v44);

    sub_1000D2A70(v41, v42, &unk_10169BB50, &unk_101395760);
    v45 = (*(v43 + 48))(v42, 1, v44);
    v46 = *(v0 + 808);
    v47 = *(v0 + 560);
    if (v45 == 1)
    {

      sub_10000B3A8(v47, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v1, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 656);
        v116 = *(v0 + 648);
        v51 = *(v0 + 616);
        v52 = *(v0 + 608);
        v113 = *(v0 + 592);
        v54 = *(v0 + 392);
        v53 = *(v0 + 400);
        v55 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v119 = v110;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v53 + 8) + 8) + 32))(v54);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = *(v51 + 8);
        v59(v50, v52);
        sub_100007BAC((v0 + 256));
        v60 = sub_1000136BC(v56, v58, &v119);

        *(v55 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v48, v49, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v55, 0x16u);
        sub_100007BAC(v110);

        sub_10000B3A8(v113, &unk_10169BB50, &unk_101395760);
        v59(v116, v52);
LABEL_45:
        v117 = 1;
        goto LABEL_46;
      }

      v80 = *(v0 + 648);
      v81 = *(v0 + 616);
      v82 = *(v0 + 608);
      v83 = *(v0 + 592);

      sub_10000B3A8(v83, &unk_10169BB50, &unk_101395760);
      (*(v81 + 8))(v80, v82);
      v84 = (v0 + 256);
    }

    else
    {
      v62 = *(v0 + 432);
      v61 = *(v0 + 440);
      v64 = *(v0 + 416);
      v63 = *(v0 + 424);
      v65 = *(v0 + 408);
      (*(v64 + 16))(v62, v47 + *(*(v0 + 512) + 44), v65);
      sub_100A1B3C0(v47, type metadata accessor for ObservedAdvertisement);
      (*(v64 + 32))(v61, v62, v65);
      static Date.trustedNow.getter(v63);
      Date.timeIntervalSince(_:)();
      v67 = v66;
      v68 = *(v64 + 8);
      v68(v63, v65);
      sub_101074970(v46);
      v70 = v69;

      if (v70 > v67)
      {
        v71 = *(v0 + 648);
        v72 = *(v0 + 616);
        v73 = *(v0 + 608);
        v74 = *(v0 + 592);
        v75 = *(v0 + 440);
        v76 = *(v0 + 408);

        v68(v75, v76);
        sub_10000B3A8(v74, &unk_10169BB50, &unk_101395760);
        (*(v72 + 8))(v71, v73);
        v117 = 0;
LABEL_46:
        sub_100007BAC((v0 + 136));
        sub_100007BAC((v0 + 16));

        v104 = *(v0 + 8);

        return v104(v117);
      }

      v114 = v68;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v1, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = *(v0 + 656);
        v118 = *(v0 + 648);
        v88 = *(v0 + 616);
        v89 = *(v0 + 608);
        v112 = *(v0 + 592);
        v108 = *(v0 + 408);
        v109 = *(v0 + 440);
        v106 = v86;
        v91 = *(v0 + 392);
        v90 = *(v0 + 400);
        v92 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v119 = v107;
        *v92 = 141558275;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2081;
        sub_1000035D0((v0 + 296), *(v0 + 320));
        (*(*(*(v90 + 8) + 8) + 32))(v91);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        v96 = *(v88 + 8);
        v96(v87, v89);
        sub_100007BAC((v0 + 296));
        v97 = sub_1000136BC(v93, v95, &v119);

        *(v92 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v85, v106, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v92, 0x16u);
        sub_100007BAC(v107);

        v114(v109, v108);
        sub_10000B3A8(v112, &unk_10169BB50, &unk_101395760);
        v96(v118, v89);
        goto LABEL_45;
      }

      v98 = *(v0 + 648);
      v99 = *(v0 + 616);
      v100 = *(v0 + 608);
      v101 = *(v0 + 592);
      v102 = *(v0 + 440);
      v103 = *(v0 + 408);

      v114(v102, v103);
      sub_10000B3A8(v101, &unk_10169BB50, &unk_101395760);
      (*(v99 + 8))(v98, v100);
      v84 = (v0 + 296);
    }

    sub_100007BAC(v84);
    goto LABEL_45;
  }

  v30 = *(v0 + 864);
LABEL_18:
  *(v0 + 880) = v27;
  *(v0 + 872) = v29;
  v32 = *(v0 + 816);
  v33 = *(v0 + 776);
  v34 = *(v0 + 640);
  v35 = *(v0 + 632);
  v36 = *(v0 + 608);
  (*(v0 + 832))(v34, *(v30 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v29)) | (v27 << 6)), v36);
  v32(v35, v34, v36);

  return _swift_task_switch(sub_100A107E4, v33, 0);
}

uint64_t sub_100A13778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[19] = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for LeashRecord(0);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[5] = a2;
  v3[6] = a3;
  v3[27] = sub_1000280DC(v3 + 2);
  (*(*(a2 - 8) + 16))();
  v8 = swift_task_alloc();
  v3[28] = v8;
  *v8 = v3;
  v8[1] = sub_100A13954;

  return daemon.getter();
}

uint64_t sub_100A13954(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 232) = a1;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100A13B30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100A13B30(uint64_t a1)
{
  *(*v2 + 248) = a1;

  if (v1)
  {

    v3 = sub_100A141C4;
  }

  else
  {

    v3 = sub_100A13C80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A13C80()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  *(v0 + 273) = *(v0 + 272);
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100A13D88;
  v2 = *(v0 + 216);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  return sub_100A0D8D8(v2, v3, v4);
}

uint64_t sub_100A13D88(char a1)
{
  *(*v1 + 274) = a1;

  return _swift_task_switch(sub_100A13E88, 0, 0);
}

uint64_t sub_100A13E88()
{
  v19 = v0;
  if (*(v0 + 273) != 1 || *(v0 + 274) == 0)
  {
    v2 = *(v0 + 248);

    return _swift_task_switch(sub_100A14308, v2, 0);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 96);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 200);
      v7 = *(v0 + 208);
      v8 = *(v0 + 192);
      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136315651;
      *(v11 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v18);
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      sub_1000035D0((v0 + 96), *(v0 + 120));
      (*(*(*(v9 + 8) + 8) + 32))(v10);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v6 + 8))(v7, v8);
      sub_100007BAC((v0 + 96));
      v15 = sub_1000136BC(v12, v14, &v18);

      *(v11 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Separation monitoring is paused for %{private,mask.hash}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC((v0 + 96));
    }

    sub_100007BAC((v0 + 16));

    v16 = *(v0 + 8);

    return v16(5);
  }
}

uint64_t sub_100A141C4()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  sub_100007BAC((v0 + 16));

  v5 = *(v0 + 8);

  return v5(2);
}

uint64_t sub_100A14308()
{

  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100A143DC;
  v2 = v0[31];
  v4 = v0[19];
  v3 = v0[20];

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1002FD8A8, v2, v4);
}

uint64_t sub_100A143DC()
{

  return _swift_task_switch(sub_100A144F4, 0, 0);
}

uint64_t sub_100A144F4()
{
  v37 = v0;
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_1016B1500, &unk_1013C57F0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v36 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v36);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s No leash record!", v6, 0xCu);
      sub_100007BAC(v7);
    }

    goto LABEL_7;
  }

  v9 = v0[26];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[23];
  v13 = v0[17];
  v14 = v0[18];
  sub_100A18C9C(v2, v12, type metadata accessor for LeashRecord);
  v15 = *(v12 + *(v1 + 24));
  v16 = *(*(v14 + 8) + 8);
  v17 = *(v16 + 32);
  v17(v13, v16);
  v18 = sub_1005C8A30(v9, v15);
  v19 = *(v11 + 8);
  v19(v9, v10);
  if (v18)
  {
    sub_100A1B3C0(v0[23], type metadata accessor for LeashRecord);

    v8 = 0;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 7));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      v31 = v0[23];

      sub_100007BAC(v0 + 7);
      sub_100A1B3C0(v31, type metadata accessor for LeashRecord);
LABEL_7:
      v8 = 2;
      goto LABEL_14;
    }

    v23 = v0[26];
    v34 = v0[24];
    v35 = v0[23];
    v32 = v0[17];
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v24 = 136315651;
    *(v24 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v36);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    sub_1000035D0(v0 + 7, v0[10]);
    v33 = v22;
    v17(v32, v16);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v19(v23, v34);
    sub_100007BAC(v0 + 7);
    v28 = sub_1000136BC(v25, v27, &v36);

    *(v24 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v21, v33, "%s Leash record does NOT contain %{private,mask.hash}s", v24, 0x20u);
    v8 = 2;
    swift_arrayDestroy();

    sub_100A1B3C0(v35, type metadata accessor for LeashRecord);
  }

LABEL_14:
  sub_100007BAC(v0 + 2);

  v29 = v0[1];

  return v29(v8);
}

void sub_100A14A3C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_1000280DC(v13);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v13);
  if (My)
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1001BE468;
    v9[4] = v5;
    v9[5] = a1;

    sub_1009C99E8(v10, sub_100A1B32C, v9, &unk_101642178, sub_100A18D54, &unk_101642190);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v13[0];
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v12);
  }
}

void sub_100A14CC0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v11[3] = My;
  v11[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_1000280DC(v11);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v11);
  if (My)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1001BE468;
    *(v8 + 24) = v5;

    sub_1009C99E8(a1, sub_100A1B798, v8, &unk_101641E30, sub_100A18748, &unk_101641E48);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v11[0];
    v10 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v10);
  }
}

void sub_100A14F08(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_1000280DC(v15);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  if (My)
  {
    sub_100EE5E10(a1, _swiftEmptyArrayStorage, v7);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001BE468;
    *(v11 + 24) = v8;

    sub_1009C9D88(v7, 0, sub_100A1B798, v11);

    sub_100A1B3C0(v7, type metadata accessor for SafeLocation);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v14 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v15[0];
    v13 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v13);
  }
}

void sub_100A151A4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v11[3] = My;
  v11[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_1000280DC(v11);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v11);
  if (My)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1001BE468;
    *(v8 + 24) = v5;

    sub_1009CA164(a1, sub_100A1B798, v8);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v11[0];
    v10 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v10);
  }
}

void sub_100A153C8(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v31 = a1;
  v30 = type metadata accessor for UUID();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SafeLocation(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v33[3] = My;
  v33[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v18 = sub_1000280DC(v33);
  (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v33);
  if ((My & 1) == 0)
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v32 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v33[0];
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v22);
    goto LABEL_5;
  }

  v28 = v16;
  v19 = v31;
  v20 = [v31 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100AC09B4();
  (*(v4 + 8))(v6, v30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &unk_1016AFA10, &qword_1013CB000);
    type metadata accessor for SPSeparationMonitoringError(0);
    v32 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v33[0];
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v22);
LABEL_5:

    return;
  }

  sub_100A18C9C(v9, v15, type metadata accessor for SafeLocation);
  v23 = *&v15[*(v10 + 52)];
  v24 = v19;

  v25 = v29;
  sub_100EE5E10(v24, v23, v29);
  v26 = swift_allocObject();
  v27 = v28;
  *(v26 + 16) = sub_1001BE468;
  *(v26 + 24) = v27;

  sub_1009CA64C(v25, sub_100A1B798, v26);

  sub_100A1B3C0(v25, type metadata accessor for SafeLocation);
  sub_100A1B3C0(v15, type metadata accessor for SafeLocation);
}

void sub_100A15908(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v9 = sub_1000280DC(v13);
  (*(*(My - 8) + 104))(v9, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a4);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v13);
  if (My)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001BE468;
    *(v10 + 24) = v7;

    sub_1009CAAD0(a1, a2, sub_100A1B798, v10, &unk_101642A10, sub_100A19E04, &unk_101642A28);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v13[0];
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v12);
  }
}

void sub_100A15B60(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v9 = sub_1000280DC(v13);
  (*(*(My - 8) + 104))(v9, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a4);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v13);
  if (My)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001BE468;
    *(v10 + 24) = v7;

    sub_1009CAAD0(a1, a2, sub_100A1B798, v10, &unk_101641DE0, sub_100A18730, &unk_101641DF8);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v13[0];
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v12);
  }
}

uint64_t sub_100A15DB8(uint64_t a1, uint64_t a2)
{
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  type metadata accessor for BeaconManagerService(0);
  v3 = qword_1013D0D58[sub_1009D78A4()];
  v4 = *(a2 + 16);

  return v4(a2, v3);
}

void sub_100A15E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-1] - v5;
  My = type metadata accessor for Feature.FindMy();
  v24[3] = My;
  v24[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v8 = sub_1000280DC(v24);
  (*(*(My - 8) + 104))(v8, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v24);
  if (My)
  {
    sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = sub_1009C75D0(4, v6);
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B780);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315138;
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      v16 = Array.description.getter();
      v18 = sub_1000136BC(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Known safe locations: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    sub_10112A684(v10);

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009CC8(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v23 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v24[0];
    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009CC8(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    v21 = Set._bridgeToObjectiveC()().super.isa;
    v22 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v21, v22);
  }
}

void sub_100A162A0(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v86 = type metadata accessor for UUID();
  v8 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v80 - v11;
  if (!*(a1 + 216) || (, CurrentValueSubject.value.getter(), , v90 != 7))
  {
    if (qword_101694B70 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

  v83 = a2;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = sub_10107406C(v90);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v75 = v83;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_1000076D4(v76, qword_10177B780);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "BA service not enabled.", v79, 2u);
      }

      sub_1009CB040(_swiftEmptyArrayStorage, 0, v75, a3, a4);
      return;
    }
  }

  sub_100ABD310(v12);
  v27 = type metadata accessor for LeashRecord(0);
  v28 = (*(*(v27 - 8) + 48))(v12, 1, v27);
  v81 = a3;
  if (v28 == 1)
  {
    sub_10000B3A8(v12, &qword_1016B1500, &unk_1013C57F0);
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = *&v12[*(v27 + 24)];

    sub_100A1B3C0(v12, type metadata accessor for LeashRecord);
  }

  v82 = a4;
  v80 = v29;
  v35 = sub_100AA56A8(v29);
  a3 = v35[2];

  if (a3)
  {
    a4 = 0;
    a2 = (v35 + 4);
    v36 = _swiftEmptyArrayStorage;
    v85 = a3;
    while (a4 < v35[2])
    {
      sub_10001F280(a2, &v90);
      v37 = v91;
      v38 = v92;
      v39 = sub_1000035D0(&v90, v91);
      if (sub_100A05A00(v39, a1, v37, v38))
      {
        sub_10000A748(&v90, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v36[2] + 1, 1);
          v36 = v93[0];
        }

        v41 = a1;
        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_100025B1C((v42 > 1), v43 + 1, 1);
        }

        v44 = v88;
        v45 = v89;
        v46 = sub_10015049C(v87, v88);
        __chkstk_darwin(v46);
        v48 = &v80 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48);
        sub_1006252D4(v43, v48, v93, v44, v45);
        sub_100007BAC(v87);
        v36 = v93[0];
        a1 = v41;
        a3 = v85;
      }

      else
      {
        sub_100007BAC(&v90);
      }

      ++a4;
      a2 += 40;
      if (a3 == a4)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_9:
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B780);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = a2;
      v22 = a3;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v90 = v24;
      *v23 = 136315138;
      if (*(a1 + 216))
      {

        CurrentValueSubject.value.getter();

        v25 = v87[0];
      }

      else
      {
        v25 = 8;
      }

      LOBYTE(v87[0]) = v25;
      sub_1000BC4D4(&qword_1016B1818, &qword_1013D0B60);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000136BC(v30, v31, &v90);

      *(v23 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not a finder device for separation monitoring, reason: %s.", v23, 0xCu);
      sub_100007BAC(v24);

      a3 = v22;
      a2 = v21;
      if (!*(a1 + 216))
      {
        goto LABEL_21;
      }
    }

    else
    {

      if (!*(a1 + 216))
      {
        goto LABEL_21;
      }
    }

    CurrentValueSubject.value.getter();

    v33 = *(a1 + 216);
    if (v33)
    {

      CurrentValueSubject.value.getter();

      if (v90 == 6)
      {
LABEL_21:
        type metadata accessor for SPSeparationMonitoringError(0);
        v87[0] = 20;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v34 = v90;
        LODWORD(v33) = 1;
LABEL_24:
        sub_1009CB040(v34, v33, a2, a3, a4);
        sub_100A1B300(v34, v33);
        return;
      }

      LODWORD(v33) = 0;
    }

    v34 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_38:

  v50 = v36[2];
  if (v50)
  {
    v87[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v50, 0);
    v51 = v87[0];
    v52 = (v36 + 4);
    v53 = v84;
    do
    {
      sub_10001F280(v52, &v90);
      v55 = v91;
      v54 = v92;
      sub_1000035D0(&v90, v91);
      (*(*(*(v54 + 8) + 8) + 32))(v55);
      sub_100007BAC(&v90);
      v87[0] = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_101123D4C((v56 > 1), v57 + 1, 1);
        v51 = v87[0];
      }

      *(v51 + 16) = v57 + 1;
      (*(v8 + 32))(v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v57, v53, v86);
      v52 += 40;
      --v50;
    }

    while (v50);
  }

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000076D4(v58, qword_10177B780);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v90 = v62;
    *v61 = 136315138;
    v63 = Array.description.getter();
    v65 = v64;

    v66 = sub_1000136BC(v63, v65, &v90);

    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v59, v60, "All beacons that were configured for separation monitoring: %s", v61, 0xCu);
    sub_100007BAC(v62);
  }

  else
  {
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v90 = v70;
    *v69 = 136315138;
    v71 = Array.description.getter();
    v73 = v72;

    v74 = sub_1000136BC(v71, v73, &v90);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v67, v68, "Beacons that can be monitored for separation from this device: %s", v69, 0xCu);
    sub_100007BAC(v70);
  }

  else
  {
  }

  sub_1009CB040(v36, 0, v83, v81, v82);
}

uint64_t sub_100A16E30(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  My = type metadata accessor for Feature.FindMy();
  v10[3] = My;
  v10[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_1000280DC(v10);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a2);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v10);
  if (My)
  {
    v7 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
    v8 = a1;

    sub_100A162A0(v7, v8, sub_100A1B2F8, v4);
  }

  else
  {
    a2[2](a2, 0);
  }
}

void sub_100A16FA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v75 = a4;
  v73 = a2;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v62 - v14;
  v16 = type metadata accessor for LeashRecord(0);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = __chkstk_darwin(v16);
  v68 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v69 = &v62 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v72 = v20;
  v21 = qword_101694B70;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_1000076D4(v22, qword_10177B780);

  v24 = a3;
  v66 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v74 = v12;
  v70 = a1;
  v67 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v64 = v16;
    v29 = v28;
    v63 = swift_slowAlloc();
    v77 = v63;
    *v29 = 136315650;
    type metadata accessor for UUID();
    sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = Set.description.getter();
    v32 = v26;
    v33 = sub_1000136BC(v30, v31, &v77);

    *(v29 + 4) = v33;
    v65 = a5;
    *(v29 + 12) = 2080;
    v76 = v73;
    type metadata accessor for SPSeparationEventType(0);
    v34 = String.init<A>(describing:)();
    v36 = sub_1000136BC(v34, v35, &v77);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2080;
    v37 = v24;
    v38 = [v37 description];
    v39 = v17;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v40;
    v17 = v39;
    v44 = sub_1000136BC(v43, v42, &v77);
    a5 = v65;

    *(v29 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v25, v32, "Received separation event request: %s, eventType: %s, region: %s", v29, 0x20u);
    swift_arrayDestroy();

    v16 = v64;
    v12 = v74;
  }

  v45 = v71;
  sub_100ABD310(v15);
  if ((*(v45 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016B1500, &unk_1013C57F0);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to publish separation event alert due to missing leash record", v48, 2u);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v76 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = v77;
    sub_1009CC7A0(v77, 1, a5);
  }

  else
  {
    v50 = v69;
    sub_100A18C9C(v15, v69, type metadata accessor for LeashRecord);
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
    v52 = v68;
    sub_100A1B358(v50, v68, type metadata accessor for LeashRecord);
    v53 = (*(v45 + 80) + 48) & ~*(v45 + 80);
    v54 = (v17 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v57 = v75;
    v56[4] = v70;
    v56[5] = v57;
    sub_100A18C9C(v52, v56 + v53, type metadata accessor for LeashRecord);
    v58 = (v56 + v54);
    v59 = v72;
    *v58 = sub_100A1A990;
    v58[1] = v59;
    v60 = v67;
    *(v56 + v55) = v67;
    *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;

    v61 = v60;

    sub_10025EDD4(0, 0, v74, &unk_1013D0AC8, v56);

    sub_100A1B3C0(v50, type metadata accessor for LeashRecord);
  }
}

uint64_t sub_100A17698(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1009D762C(v15);
  v16 = *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  sub_1000D2A70(v15, v13, &unk_1016A9A20, &qword_10138B280);
  v17 = (*(v4 + 48))(v13, 1, v3);
  v18 = 0;
  if (v17 != 1)
  {
    sub_100A18C9C(v13, v9, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v9, v7, type metadata accessor for OwnedBeaconRecord);

    v18 = sub_10003EB74(v7, v16);
    sub_100A1B3C0(v7, type metadata accessor for OwnedBeaconRecord);

    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v21 + 16))(v21, v18);

  return sub_10000B3A8(v15, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_100A17920(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = type metadata accessor for BeaconObservation(0);
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v42[3] = v10;
  v42[4] = sub_100003F64(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v11 = sub_1000280DC(v42);
  sub_100A1B358(a1, v11, type metadata accessor for OwnedBeaconRecord);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B780);
  sub_10001F280(v42, v41);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v3;
    v16 = v15;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v17 = sub_1000035D0(v41, v41[3]);
    v18 = *(v10 + 20);
    v34 = *(v7 + 16);
    v35 = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v9, &v17[v18], v6);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v14;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v5;
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    sub_100007BAC(v41);
    v23 = sub_1000136BC(v19, v22, &v40);
    v5 = v20;

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v33, "Marking beacon %{private,mask.hash}s as separated.", v16, 0x16u);
    sub_100007BAC(v36);

    v3 = v37;

    v34(v20, v11 + *(v10 + 20), v6);
  }

  else
  {

    sub_100007BAC(v41);
    (*(v7 + 16))(v5, v11 + *(v10 + 20), v6);
  }

  v24 = v39;
  v25 = *(v39 + 20);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 16))(&v5[v25], v38, v26);
  v5[*(v24 + 24)] = 41;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v27 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  sub_100A1B358(v5, v29 + v28, type metadata accessor for BeaconObservation);
  v30 = type metadata accessor for Transaction();
  __chkstk_darwin(v30);
  *&v32[-32] = v27;
  *&v32[-24] = v29;
  *&v32[-16] = 0;
  *&v32[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100A1B3C0(v5, type metadata accessor for BeaconObservation);
  return sub_100007BAC(v42);
}

void sub_100A17E74(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Requesting reverse geocoded address for location: %@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedService];
  [v7 coordinate];
  v16 = v15;
  [v7 coordinate];
  v27 = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v16, v17}];
  if (v27)
  {
    v18 = [v7 referenceFrame];
    if (v18 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_1013D0D98[v18];
    }

    [v27 setReferenceFrame:v19];
  }

  v20 = [v13 sharedService];
  if (v20)
  {
    v21 = v20;
    v22 = [v14 defaultTraits];
    v23 = [v21 ticketForReverseGeocodeLocation:v27 traits:v22];

    if (v23)
    {
      v24 = swift_allocObject();
      v24[2] = a2;
      v24[3] = a3;
      v24[4] = v7;
      aBlock[4] = sub_100A1AB38;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1009D758C;
      aBlock[3] = &unk_101642DC0;
      v25 = _Block_copy(aBlock);
      v26 = v7;
      swift_unknownObjectRetain();

      [v23 submitWithHandler:v25 networkActivity:0];
      swift_unknownObjectRelease_n();

      _Block_release(v25);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A18200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 72);
  v7 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = a2;
  v11 = v7;
  do
  {
    v8 = *(a2 + 16) + 1;
    v9 = v7;
    while (--v8)
    {
      sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 += v6;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        return v4;
      }
    }

    ++v4;
    a2 = v12;
    v7 = v11;
  }

  while (v4 != v2);
  return 0;
}

uint64_t sub_100A18384(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = *a1;
  result = sub_100A18200(*a1, a2);
  if (!v2)
  {
    if (v17)
    {
      return v15[2];
    }

    else
    {
      v35 = 0;
      v36 = a1;
      v39 = v9;
      v40 = v12;
      v43 = v6;
      v47 = result;
      v18 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v46 = v43 + 16;
        v41 = a2;
        v42 = (v43 + 8);
        v37 = (v43 + 40);
        while (1)
        {
LABEL_7:
          v20 = v15[2];
          if (v18 == v20)
          {
            return v47;
          }

          if (v18 >= v20)
          {
            break;
          }

          v21 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v49 = v15;
          v22 = v15 + v21;
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          v48 = v23 * v18;
          v44 = v22;
          v45 = v24;
          v24(v14, &v22[v23 * v18], v5);
          v25 = a2 + v21;
          v26 = *(a2 + 16) + 1;
          while (--v26)
          {
            sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v25 += v23;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              result = (*v42)(v14, v5);
              a2 = v41;
              v15 = v49;
              v19 = __OFADD__(v18++, 1);
              if (v19)
              {
                goto LABEL_29;
              }

              goto LABEL_7;
            }
          }

          result = (*v42)(v14, v5);
          v27 = v47;
          if (v47 == v18)
          {
            a2 = v41;
            v15 = v49;
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_31;
            }

            v28 = v49[2];
            if (v47 >= v28)
            {
              goto LABEL_32;
            }

            v29 = v23 * v47;
            v31 = v44;
            v30 = v45;
            v38 = v29;
            result = (v45)(v40, &v44[v29], v5);
            if (v18 >= v28)
            {
              goto LABEL_33;
            }

            v30(v39, &v31[v48], v5);
            v15 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1006073D8(v15);
            }

            a2 = v41;
            v32 = v15 + v21;
            v33 = *v37;
            result = (*v37)(&v32[v38], v39, v5);
            if (v18 >= v15[2])
            {
              goto LABEL_34;
            }

            result = v33(&v32[v48], v40, v5);
            *v36 = v15;
            v27 = v47;
          }

          v19 = __OFADD__(v27, 1);
          v34 = v27 + 1;
          if (v19)
          {
            goto LABEL_30;
          }

          v47 = v34;
          v19 = __OFADD__(v18++, 1);
          if (v19)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A18958(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v3 + v6, v8, v10, v11);
}

unint64_t sub_100A18C28()
{
  result = qword_1016B1678;
  if (!qword_1016B1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1678);
  }

  return result;
}

uint64_t sub_100A18C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A18D0C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100A18DB0()
{
  v1 = *(sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_100016590(*v4, *(v4 + 8));
    v5 = *(type metadata accessor for LeashRecord(0) + 20);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100A18F34(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);

  return a1(v1 + v3, v6, v8, v9, v7);
}

uint64_t sub_100A18FFC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SafeLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_1009E9C7C(a1, a2, v8, v6, v7);
}

void sub_100A190A4()
{
  v1 = *(type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_1009DB4DC((v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_100A19138(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1009DD3F4(a1, v8, (v1 + v4), v6, v7);
}

void sub_100A191E4()
{
  v1 = *(type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v4);
  v10 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1009DD498(v5, v0 + v2, v7, v8, v9, v10);
}

void sub_100A19290()
{
  v1 = *(type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1009DD1A8(v0 + v2, v3);
}

void sub_100A19364()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SafeLocation(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = *(v0 + v3 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1009DF154(v7, v0 + v2, v8, v9, v10, v0 + v6, v11);
}

void sub_100A19480(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100408170(a1, a2 & 1);
  }
}

uint64_t sub_100A194B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SafeLocation(0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

void sub_100A19570(const char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SafeLocation(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1009E09CC(v2 + v6, *v7, *(v7 + 8), a1, a2);
}

uint64_t sub_100A19614()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100A1979C(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1009E08D8(a1, v4);
}

uint64_t sub_100A1980C()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100A19938()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100A19A84(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SafeLocation(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return a1(v1 + v3, v7, v8, v9);
}

uint64_t sub_100A19B3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1009E9880(v5, v1 + v4, v6, a1);
}

uint64_t sub_100A19BDC(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return (*(v1 + 16))(v2, v3);
}

uint64_t sub_100A19C24(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1009E9A14(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100A19CD4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    a1 = 0;
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_100A19D10()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100A19E1C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v5, v1 + v3, v6, v8, v9);
}

uint64_t sub_100A19F88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100A1A088(const char *a1, ...)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1009E4688(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t sub_100A1A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100A1A2E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_100A1A3F8(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_100A1A3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = sub_1000BC4D4(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100A1A5C8()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_100A1A6D4(void *a1, char a2)
{
  v5 = *(type metadata accessor for SafeLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1009E890C(a1, a2 & 1, v6);
}

uint64_t sub_100A1A754()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100A1A804()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1009DE070(v0 + v2, v4, v6, v7);
}

void sub_100A1A8A8(char a1)
{
  v3 = *(type metadata accessor for LeashRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1009E7290(a1, v4);
}

uint64_t sub_100A1A99C(uint64_t a1)
{
  v3 = *(type metadata accessor for LeashRecord(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[3];
  v13 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1009CCF1C(a1, v13, v5, v6, v7, v1 + v4, v9, v10);
}

double sub_100A1AB44(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

void sub_100A1AB54(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100A1AB64(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_1009CFAC4(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100A1AC64@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009D4978(v4, v5, a1);
}

uint64_t sub_100A1ACE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1009D3D7C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100A1AE54()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1009D41B8(v5, v0 + v2, v6);
}

uint64_t sub_100A1AF38(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);

  return sub_1009D4908(a1);
}

void sub_100A1AFD4(void *a1, char a2)
{
  v5 = *(type metadata accessor for SafeLocation(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1009E6080(a1, a2 & 1, v8, v2 + v6, v7);
}

uint64_t sub_100A1B154()
{

  sub_100007BAC((v0 + 88));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_100A1B218(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_100A1B224(a1);
  }

  return a1;
}

uint64_t sub_100A1B224(uint64_t result)
{
  if (result != 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100A1B234(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_100A1B240(a1);
  }

  return a1;
}

uint64_t sub_100A1B240(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100A1B270(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100A1B300(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_100A1B320(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_100A1B358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A1B3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100A1B444()
{
  result = qword_1016B1860;
  if (!qword_1016B1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1860);
  }

  return result;
}

unint64_t sub_100A1B49C()
{
  result = qword_1016B1868;
  if (!qword_1016B1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1868);
  }

  return result;
}

unint64_t sub_100A1B4F4()
{
  result = qword_1016B1870;
  if (!qword_1016B1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1870);
  }

  return result;
}

unint64_t sub_100A1B54C()
{
  result = qword_1016B1878;
  if (!qword_1016B1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1878);
  }

  return result;
}

unint64_t sub_100A1B5A4()
{
  result = qword_1016B1880;
  if (!qword_1016B1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1880);
  }

  return result;
}

unint64_t sub_100A1B5FC()
{
  result = qword_1016B1888;
  if (!qword_1016B1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1888);
  }

  return result;
}

uint64_t sub_100A1B7B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B18A8, &qword_1013D0F78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100A1C5BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 56);
    v12 = *(v3 + 40);
    v13 = v9;
    v14 = *(v3 + 72);
    v11[15] = 3;
    sub_100A1C610();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100A1B9C0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B18E8, &qword_1013D1118);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100A1CD80();
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
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100A1BBC4()
{
  v0 = sub_100907E70(&off_10160CED0);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v1 = sub_100F4D900();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v4);

  return v4;
}

uint64_t sub_100A1BC74(uint64_t a1)
{
  v2 = sub_100132C30();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100A1BCB0()
{
  v1 = 0x656372756F73;
  v2 = 1684628597;
  if (*v0 != 2)
  {
    v2 = 0x6E756F436D657469;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_100A1BD28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100A1C664(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100A1BD50(uint64_t a1)
{
  v2 = sub_100A1C5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A1BD8C(uint64_t a1)
{
  v2 = sub_100A1C5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100A1BDC8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100A1C7D4(a2, v7);
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

uint64_t sub_100A1BE70()
{
  v1 = *v0;
  v2 = 0x3156676174726961;
  v3 = 0x3256616E6D66;
  if (v1 != 3)
  {
    v3 = 0x6E6D66656C707061;
  }

  v4 = 0x3256676174726961;
  if (v1 != 1)
  {
    v4 = 0x3156616E6D66;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_100A1BF2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100A1CDD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100A1BF54(uint64_t a1)
{
  v2 = sub_100A1CD80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A1BF90(uint64_t a1)
{
  v2 = sub_100A1CD80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100A1BFCC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100A1CFCC(a2, v6);
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

__int128 *sub_100A1C028(__int128 *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentDevice];
  if (v7 && (v8 = v7, v9 = [v7 uniqueDeviceIdentifier], v8, v9))
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v10;

    v40 = v1;
    v11 = *(a1 + 4);
    v12 = *(a1 + 5);
    v13 = [objc_allocWithZone(NSProcessInfo) init];
    v14 = [v13 processName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static Date.trustedNow.getter(v6);
    v18 = Date.epoch.getter();
    v19 = *(v4 + 8);
    v20 = a1[1];
    v27 = *a1;
    v26 = v20;
    v19(v6, v3);
    *&v36 = v15;
    *(&v36 + 1) = v17;
    *&v37 = v18;
    *(&v37 + 1) = v28;
    *&v38[24] = v26;
    *&v38[8] = v27;
    *v38 = v29;
    *&v38[40] = v11;
    v39 = v12;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v32 = *v38;
    v33 = *&v38[16];
    v34 = *&v38[32];
    v35 = v39;
    v30 = v36;
    v31 = v37;
    sub_100A1C3C0();
    v21 = v40;
    v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v21)
    {

      a1 = 0;
    }

    else
    {
      a1 = v22;
    }

    sub_100A1C414(&v36);
  }

  else
  {
    v23 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    strcpy(v24, "Missing UDID!");
    *(v24 + 7) = -4864;
    (*(*(v23 - 8) + 104))(v24, enum case for GenericError.error(_:), v23);
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_100A1C368()
{
  result = qword_1016978C0;
  if (!qword_1016978C0)
  {
    type metadata accessor for GenericError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978C0);
  }

  return result;
}

unint64_t sub_100A1C3C0()
{
  result = qword_1016B1890;
  if (!qword_1016B1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1890);
  }

  return result;
}

uint64_t sub_100A1C454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100A1C4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_100A1C510()
{
  result = qword_1016B1898;
  if (!qword_1016B1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1898);
  }

  return result;
}

unint64_t sub_100A1C568()
{
  result = qword_1016B18A0;
  if (!qword_1016B18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18A0);
  }

  return result;
}

unint64_t sub_100A1C5BC()
{
  result = qword_1016B18B0;
  if (!qword_1016B18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18B0);
  }

  return result;
}

unint64_t sub_100A1C610()
{
  result = qword_1016B18B8;
  if (!qword_1016B18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18B8);
  }

  return result;
}

uint64_t sub_100A1C664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F436D657469 && a2 == 0xEA00000000007374)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100A1C7D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B18C0, &qword_1013D0F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100A1C5BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v37[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v37[0]) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v28 = v13;
  v42 = 3;
  sub_100A1CB74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = v38;
  v26 = v39;
  v15 = v40;
  v25 = *(&v39 + 1);
  v24 = *(&v40 + 1);
  v23 = v41;
  *&v31 = v12;
  *(&v31 + 1) = v11;
  v16 = v29;
  *&v32 = v29;
  v17 = v28;
  *(&v32 + 1) = v28;
  v18 = v30;
  *&v33 = v30;
  *(&v33 + 1) = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_100A1CBC8(&v31, v37);
  sub_100007BAC(a1);
  v37[0] = v12;
  v37[1] = v11;
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v37[5] = v27;
  v37[6] = v26;
  v37[7] = v25;
  v37[8] = v15;
  v37[9] = v24;
  v37[10] = v23;
  result = sub_100A1C414(v37);
  v20 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v20;
  *(a2 + 64) = v35;
  *(a2 + 80) = v36;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_100A1CB74()
{
  result = qword_1016B18C8;
  if (!qword_1016B18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18C8);
  }

  return result;
}

uint64_t sub_100A1CC10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A1CC30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_100A1CC7C()
{
  result = qword_1016B18D0;
  if (!qword_1016B18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18D0);
  }

  return result;
}

unint64_t sub_100A1CCD4()
{
  result = qword_1016B18D8;
  if (!qword_1016B18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18D8);
  }

  return result;
}

unint64_t sub_100A1CD2C()
{
  result = qword_1016B18E0;
  if (!qword_1016B18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18E0);
  }

  return result;
}

unint64_t sub_100A1CD80()
{
  result = qword_1016B18F0;
  if (!qword_1016B18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18F0);
  }

  return result;
}

uint64_t sub_100A1CDD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3156676174726961 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3256676174726961 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3156616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3256616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000315661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000325661)
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

uint64_t sub_100A1CFCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B18F8, &qword_1013D1120);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100A1CD80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 5;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v16;
  a2[2] = v17;
  a2[3] = v12;
  v13 = v14;
  a2[4] = v15;
  a2[5] = v13;
  return result;
}

unint64_t sub_100A1D21C()
{
  result = qword_1016B1900;
  if (!qword_1016B1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1900);
  }

  return result;
}

unint64_t sub_100A1D274()
{
  result = qword_1016B1908;
  if (!qword_1016B1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1908);
  }

  return result;
}

unint64_t sub_100A1D2CC()
{
  result = qword_1016B1910;
  if (!qword_1016B1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1910);
  }

  return result;
}

void sub_100A1D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_1000D5660(a1, &v12 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v10);
}

uint64_t sub_100A1D548(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_100A1D6C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UnknownDiscoveryTrampoline();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100A1D744()
{
  result = qword_1016B1950;
  if (!qword_1016B1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1950);
  }

  return result;
}

__n128 sub_100A1D798@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, uint64_t a8@<X6>, unint64_t a9@<X7>, __int128 a10, __int128 a11)
{
  sub_100A22398(a2, a3, a4, a5, a6, a7, a8, a9, v18, a10, a11);
  v12 = v18[11];
  *(a1 + 160) = v18[10];
  *(a1 + 176) = v12;
  *(a1 + 192) = v19;
  v13 = v18[7];
  *(a1 + 96) = v18[6];
  *(a1 + 112) = v13;
  v14 = v18[9];
  *(a1 + 128) = v18[8];
  *(a1 + 144) = v14;
  v15 = v18[3];
  *(a1 + 32) = v18[2];
  *(a1 + 48) = v15;
  v16 = v18[5];
  *(a1 + 64) = v18[4];
  *(a1 + 80) = v16;
  result = v18[1];
  *a1 = v18[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_100A1D828@<Q0>(uint64_t a1@<X8>)
{
  static Data.random(bytes:)();
  sub_1001DA81C();
  BinaryDecodable.init(data:)();
  if (!v1)
  {
    sub_100A21C88(v9);
    v4 = v9[11];
    *(a1 + 160) = v9[10];
    *(a1 + 176) = v4;
    *(a1 + 192) = v10;
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    v6 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v6;
    v7 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v7;
    v8 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v8;
    result = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100A1D8F8()
{
  result = qword_1016B19A8;
  if (!qword_1016B19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19A8);
  }

  return result;
}

unint64_t sub_100A1D950()
{
  result = qword_1016B19B0;
  if (!qword_1016B19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19B0);
  }

  return result;
}

unint64_t sub_100A1D9A8()
{
  result = qword_1016B19B8;
  if (!qword_1016B19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19B8);
  }

  return result;
}

unint64_t sub_100A1DA00()
{
  result = qword_1016B19C0;
  if (!qword_1016B19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19C0);
  }

  return result;
}

unint64_t sub_100A1DA58()
{
  result = qword_1016B19C8;
  if (!qword_1016B19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19C8);
  }

  return result;
}

unint64_t sub_100A1DAB0()
{
  result = qword_1016B19D0;
  if (!qword_1016B19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19D0);
  }

  return result;
}

unint64_t sub_100A1DB08()
{
  result = qword_1016B19D8;
  if (!qword_1016B19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19D8);
  }

  return result;
}

unint64_t sub_100A1DB60()
{
  result = qword_1016B19E0;
  if (!qword_1016B19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19E0);
  }

  return result;
}

uint64_t sub_100A1DBB4()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_100A2236C(v9);
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        return 0;
      }

      else if (v7 == 10)
      {
        return 8;
      }

      else
      {
        return 11;
      }
    }

    else if (v7 == 6)
    {
      sub_1000140D8(v9);
      return 7;
    }

    else if (v7 == 7)
    {
      sub_1000140D8(v9);
      return 9;
    }

    else
    {
      sub_1000140D8(v9);
      return 10;
    }
  }

  else if (v7 > 2)
  {
    if (v7 == 3)
    {
      sub_1000140D8(v9);
      return 4;
    }

    else if (v7 == 4)
    {
      sub_1000140D8(v9);
      return 5;
    }

    else
    {
      sub_1000140D8(v9);
      return 6;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_1000140D8(v9);
      return 2;
    }

    else
    {
      sub_1000140D8(v9);
      return 3;
    }
  }

  else
  {
    sub_1000140D8(v9);
    return 1;
  }
}

unint64_t sub_100A1DD08@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v114[10] = v1[10];
  v114[11] = v3;
  v115 = *(v1 + 24);
  v4 = v1[7];
  v114[6] = v1[6];
  v114[7] = v4;
  v5 = v1[9];
  v114[8] = v1[8];
  v114[9] = v5;
  v6 = v1[3];
  v114[2] = v1[2];
  v114[3] = v6;
  v7 = v1[5];
  v114[4] = v1[4];
  v114[5] = v7;
  v8 = v1[1];
  v114[0] = *v1;
  v114[1] = v8;
  v9 = sub_100A2236C(v114);
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v68 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
        a1[4] = sub_100A1DAB0();
        v69 = swift_allocObject();
        *a1 = v69;
        memmove((v69 + 16), v68, 0xB8uLL);
        v70 = v1[11];
        v111 = v1[10];
        v112 = v70;
        v113 = *(v1 + 24);
        v71 = v1[7];
        v107 = v1[6];
        v108 = v71;
        v72 = v1[9];
        v109 = v1[8];
        v110 = v72;
        v73 = v1[3];
        v103 = v1[2];
        v104 = v73;
        v74 = v1[5];
        v105 = v1[4];
        v106 = v74;
        v75 = v1[1];
        v101 = *v1;
        v102 = v75;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BA0;
        v20 = &unk_1013F9C10;
      }

      else if (v9 == 4)
      {
        v32 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
        a1[4] = sub_100A1DB08();
        v33 = swift_allocObject();
        *a1 = v33;
        memmove((v33 + 16), v32, 0xC8uLL);
        v34 = v1[11];
        v111 = v1[10];
        v112 = v34;
        v113 = *(v1 + 24);
        v35 = v1[7];
        v107 = v1[6];
        v108 = v35;
        v36 = v1[9];
        v109 = v1[8];
        v110 = v36;
        v37 = v1[3];
        v103 = v1[2];
        v104 = v37;
        v38 = v1[5];
        v105 = v1[4];
        v106 = v38;
        v39 = v1[1];
        v101 = *v1;
        v102 = v39;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1B98;
        v20 = &unk_1013D1350;
      }

      else
      {
        v92 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsFinalizePairingCommandPayload;
        a1[4] = sub_100A1D8F8();
        v93 = swift_allocObject();
        *a1 = v93;
        memmove((v93 + 16), v92, 0x60uLL);
        v94 = v1[11];
        v111 = v1[10];
        v112 = v94;
        v113 = *(v1 + 24);
        v95 = v1[7];
        v107 = v1[6];
        v108 = v95;
        v96 = v1[9];
        v109 = v1[8];
        v110 = v96;
        v97 = v1[3];
        v103 = v1[2];
        v104 = v97;
        v98 = v1[5];
        v105 = v1[4];
        v106 = v98;
        v99 = v1[1];
        v101 = *v1;
        v102 = v99;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1B90;
        v20 = &unk_1013D1348;
      }
    }

    else
    {
      if (!v9)
      {
        v40 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v41 = swift_allocObject();
        *a1 = v41;
        v42 = v40[1];
        *(v41 + 16) = *v40;
        *(v41 + 32) = v42;
        v43 = v1[3];
        v103 = v1[2];
        v104 = v43;
        v44 = v1[1];
        v101 = *v1;
        v102 = v44;
        v45 = v1[7];
        v107 = v1[6];
        v108 = v45;
        v46 = v1[5];
        v105 = v1[4];
        v106 = v46;
        v113 = *(v1 + 24);
        v47 = v1[11];
        v111 = v1[10];
        v112 = v47;
        v48 = v1[9];
        v109 = v1[8];
        v110 = v48;
        v49 = sub_1000140D8(&v101);
        v50 = v49[2];
        v51 = v49[3];
        sub_100017D5C(*v49, v49[1]);
        return sub_100017D5C(v50, v51);
      }

      if (v9 == 1)
      {
        v10 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsInitiatePairingCommandPayload;
        a1[4] = sub_100A1D950();
        v11 = swift_allocObject();
        *a1 = v11;
        memmove((v11 + 16), v10, 0x50uLL);
        v12 = v1[11];
        v111 = v1[10];
        v112 = v12;
        v113 = *(v1 + 24);
        v13 = v1[7];
        v107 = v1[6];
        v108 = v13;
        v14 = v1[9];
        v109 = v1[8];
        v110 = v14;
        v15 = v1[3];
        v103 = v1[2];
        v104 = v15;
        v16 = v1[5];
        v105 = v1[4];
        v106 = v16;
        v17 = v1[1];
        v101 = *v1;
        v102 = v17;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BB0;
        v20 = &unk_1013F9C20;
      }

      else
      {
        v76 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
        a1[4] = sub_100A1DA58();
        v77 = swift_allocObject();
        *a1 = v77;
        memmove((v77 + 16), v76, 0xB8uLL);
        v78 = v1[11];
        v111 = v1[10];
        v112 = v78;
        v113 = *(v1 + 24);
        v79 = v1[7];
        v107 = v1[6];
        v108 = v79;
        v80 = v1[9];
        v109 = v1[8];
        v110 = v80;
        v81 = v1[3];
        v103 = v1[2];
        v104 = v81;
        v82 = v1[5];
        v105 = v1[4];
        v106 = v82;
        v83 = v1[1];
        v101 = *v1;
        v102 = v83;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BA8;
        v20 = &unk_1013D1360;
      }
    }

    return sub_1000D2A70(v18, v100, v19, v20);
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      v52 = sub_1000140D8(v114);
      v53 = *(v52 + 32);
      v54 = *(v52 + 40);
      a1[3] = &type metadata for AirPodsSendPairingStatusCommandPayload;
      a1[4] = sub_100A1DB60();
      v55 = swift_allocObject();
      *a1 = v55;
      v56 = *(v52 + 16);
      *(v55 + 16) = *v52;
      *(v55 + 32) = v56;
      *(v55 + 48) = v53;
      *(v55 + 56) = v54;
      v57 = v1[3];
      v103 = v1[2];
      v104 = v57;
      v58 = v1[1];
      v101 = *v1;
      v102 = v58;
      v59 = v1[7];
      v107 = v1[6];
      v108 = v59;
      v60 = v1[5];
      v105 = v1[4];
      v106 = v60;
      v113 = *(v1 + 24);
      v61 = v1[11];
      v111 = v1[10];
      v112 = v61;
      v62 = v1[9];
      v109 = v1[8];
      v110 = v62;
      v63 = sub_1000140D8(&v101);
      v64 = v63[2];
      v65 = v63[3];
      v66 = v63[4];
      v67 = v63[5];
      sub_100017D5C(*v63, v63[1]);
      sub_100017D5C(v64, v65);
      return sub_100017D5C(v66, v67);
    }

    if (v9 == 7)
    {
      v21 = sub_1000140D8(v114);
      v22 = *v21;
      v23 = v21[1];
      a1[3] = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
      a1[4] = sub_100A1D9A8();
      *a1 = v22;
      a1[1] = v23;
      v24 = v1[11];
      v111 = v1[10];
      v112 = v24;
      v113 = *(v1 + 24);
      v25 = v1[7];
      v107 = v1[6];
      v108 = v25;
      v26 = v1[9];
      v109 = v1[8];
      v110 = v26;
      v27 = v1[3];
      v103 = v1[2];
      v104 = v27;
      v28 = v1[5];
      v105 = v1[4];
      v106 = v28;
      v29 = v1[1];
      v101 = *v1;
      v102 = v29;
      v30 = sub_1000140D8(&v101);
      return sub_100017D5C(*v30, *(v30 + 8));
    }

    v84 = sub_1000140D8(v114);
    a1[3] = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
    a1[4] = sub_100A1DA00();
    v85 = swift_allocObject();
    *a1 = v85;
    memmove((v85 + 16), v84, 0x58uLL);
    v86 = v1[11];
    v111 = v1[10];
    v112 = v86;
    v113 = *(v1 + 24);
    v87 = v1[7];
    v107 = v1[6];
    v108 = v87;
    v88 = v1[9];
    v109 = v1[8];
    v110 = v88;
    v89 = v1[3];
    v103 = v1[2];
    v104 = v89;
    v90 = v1[5];
    v105 = v1[4];
    v106 = v90;
    v91 = v1[1];
    v101 = *v1;
    v102 = v91;
    v18 = sub_1000140D8(&v101);
    v19 = &unk_1016B1B88;
    v20 = &unk_1013D1340;
    return sub_1000D2A70(v18, v100, v19, v20);
  }

  if (v9 == 9)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else if (v9 == 10)
  {
    a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
    result = sub_1009A0048();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_100A1E3A0(uint64_t a1)
{
  *(a1 + 8) = sub_100A1E3D0();
  result = sub_100A1E424();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A1E3D0()
{
  result = qword_1016B1B30;
  if (!qword_1016B1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B30);
  }

  return result;
}

unint64_t sub_100A1E424()
{
  result = qword_1016B1B38;
  if (!qword_1016B1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B38);
  }

  return result;
}

uint64_t sub_100A1E4F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v39 = a4;
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v42 = a1;
  sub_1000035D0(a1, v10);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v47, v47[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v4)
  {
    v11 = v42;
  }

  else
  {
    v12 = v40;
    v13 = v41;
    v48 = v45[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v7 + 8))(v9, v6);
    v14 = v46[0];
    v15 = sub_1010A4D44(v46[0]);
    if (v15 == 12)
    {
      v16 = static os_log_type_t.error.getter();
      v11 = v42;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v17 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      LOWORD(v46[0]) = v14;
      v19 = FixedWidthInteger.data.getter();
      v21 = v20;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100016590(v19, v21);
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v22;
      *(v18 + 40) = v24;
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Invalid opcode: %@", 18, 2, v18);

      sub_1009A022C();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      v26 = v15;
      v27 = v12();
      v29 = v28;
      v11 = v42;
      sub_10001F280(v42, v45);
      v46[3] = v27;
      v46[4] = v29;
      sub_1000280DC(v46);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v46, v45);
      v13(v43, v26, v45);
      v30 = v43[11];
      v31 = v39;
      *(v39 + 160) = v43[10];
      *(v31 + 176) = v30;
      *(v31 + 192) = v44;
      v32 = v43[7];
      *(v31 + 96) = v43[6];
      *(v31 + 112) = v32;
      v33 = v43[9];
      *(v31 + 128) = v43[8];
      *(v31 + 144) = v33;
      v34 = v43[3];
      *(v31 + 32) = v43[2];
      *(v31 + 48) = v34;
      v35 = v43[5];
      *(v31 + 64) = v43[4];
      *(v31 + 80) = v35;
      v36 = v43[1];
      *v31 = v43[0];
      *(v31 + 16) = v36;
      sub_100007BAC(v46);
    }
  }

  sub_100007BAC(v47);
  return sub_100007BAC(v11);
}

uint64_t sub_100A1E920(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6 = sub_100A1DBB4();
  LOWORD(v42) = word_1013D2D4C[v6];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v5, v2);
  LOWORD(v42) = v56;
  sub_10015049C(v69, v70);
  v7 = v71;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v7)
  {
    if (v6 > 5u)
    {
      if (v6 > 8u)
      {
        if (v6 == 9)
        {
          sub_100A1DD08(&v56);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v42 = v29;
            sub_10015049C(v69, v70);
            sub_100A220CC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100016590(v42, *(&v42 + 1));
            return sub_100007BAC(v69);
          }

          v29 = xmmword_10138BBF0;
          sub_100006654(0, 0xF000000000000000);
          goto LABEL_48;
        }

        if (v6 == 10)
        {
          sub_100A1DD08(&v16);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v58 = v44;
            v59 = v45;
            v60 = v46;
            *&v61 = v47;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v69, v70);
            sub_1005C5D58();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v31 = v58;
            v32 = v59;
            v33 = v60;
            *&v34 = v61;
            v29 = v56;
            v30 = v57;
            sub_100A22078(&v29);
            return sub_100007BAC(v69);
          }

          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v42 = xmmword_10138BBF0;
          v43 = 0u;
          *&v47 = 0;
          *&v34 = 0;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v29 = xmmword_10138BBF0;
          v30 = 0u;
          v11 = &unk_1016B1B40;
          v12 = &unk_1013D1310;
          goto LABEL_47;
        }

        sub_100A1DD08(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        sub_10015049C(v69, v70);
        sub_10027FBB8();
      }

      else
      {
        if (v6 == 6)
        {
          sub_100A1DD08(&v16);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v69, v70);
            sub_10031A8EC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            v29 = v56;
            v30 = v57;
            sub_100A22120(&v29);
            return sub_100007BAC(v69);
          }

          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v42 = xmmword_10138BBF0;
          v43 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v29 = xmmword_10138BBF0;
          v30 = 0u;
          v11 = &unk_1016B1B48;
          v12 = &unk_1013D1318;
          goto LABEL_47;
        }

        if (v6 == 7)
        {
          sub_100A1DD08(&v29);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v56 = v42;
            v57 = v43;
            v58 = v44;
            sub_10015049C(v69, v70);
            sub_1005909F8();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v9 = v57;
            v10 = v58;
            sub_100016590(v56, *(&v56 + 1));
            sub_100016590(v9, *(&v9 + 1));
            sub_100016590(v10, *(&v10 + 1));
            return sub_100007BAC(v69);
          }

          v42 = xmmword_10138BBF0;
          v43 = 0u;
          v44 = 0u;
          sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
          goto LABEL_48;
        }

        sub_100A1DD08(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        sub_10015049C(v69, v70);
        sub_1009A0330();
      }
    }

    else
    {
      if (v6 > 2u)
      {
        if (v6 == 3)
        {
          sub_100A1DD08(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v64 = v50;
            v65 = v51;
            v66 = v52;
            *&v67 = v53;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v56 = v42;
            v57 = v43;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v69, v70);
            sub_100A22270();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v37 = v64;
            v38 = v65;
            v39 = v66;
            *&v40 = v67;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v29 = v56;
            v30 = v57;
            v31 = v58;
            v32 = v59;
            sub_100A222C4(&v29);
            return sub_100007BAC(v69);
          }

          sub_100083C60(&v16);
          v50 = v24;
          v51 = v25;
          v52 = v26;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v42 = v16;
          v43 = v17;
          v44 = v18;
          v45 = v19;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v29 = v16;
          v30 = v17;
          *&v53 = v27;
          *&v40 = v27;
          v31 = v18;
          v32 = v19;
          v11 = &unk_1016B1B60;
          v12 = &unk_1013D1330;
        }

        else if (v6 == 4)
        {
          sub_100A1DD08(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v64 = v50;
            v65 = v51;
            v66 = v52;
            *&v67 = v53;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v56 = v42;
            v57 = v43;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v69, v70);
            sub_1008ACD88();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v37 = v64;
            v38 = v65;
            v39 = v66;
            *&v40 = v67;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v29 = v56;
            v30 = v57;
            v31 = v58;
            v32 = v59;
            sub_100A2221C(&v29);
            return sub_100007BAC(v69);
          }

          sub_100083C60(&v16);
          v50 = v24;
          v51 = v25;
          v52 = v26;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v42 = v16;
          v43 = v17;
          v44 = v18;
          v45 = v19;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v29 = v16;
          v30 = v17;
          *&v53 = v27;
          *&v40 = v27;
          v31 = v18;
          v32 = v19;
          v11 = &unk_1016B1B58;
          v12 = &unk_1013D1328;
        }

        else
        {
          sub_100A1DD08(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v66 = v52;
            v67 = v53;
            v68 = v54;
            v62 = v48;
            v63 = v49;
            v64 = v50;
            v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v69, v70);
            sub_100A22174();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v39 = v66;
            v40 = v67;
            v41 = v68;
            v35 = v62;
            v36 = v63;
            v37 = v64;
            v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            v29 = v56;
            v30 = v57;
            sub_100A221C8(&v29);
            return sub_100007BAC(v69);
          }

          sub_100A21E1C(&v16);
          v52 = v26;
          v53 = v27;
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v51 = v25;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v42 = v16;
          v43 = v17;
          v39 = v26;
          v40 = v27;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v31 = v18;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v54 = v28;
          v41 = v28;
          v29 = v16;
          v30 = v17;
          v11 = &unk_1016B1B50;
          v12 = &unk_1013D1320;
        }

        goto LABEL_47;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          sub_100A1DD08(&v56);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v42 = v29;
            v43 = v30;
            sub_10015049C(v69, v70);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v8 = v43;
            sub_100016590(v42, *(&v42 + 1));
            sub_100016590(v8, *(&v8 + 1));
            return sub_100007BAC(v69);
          }

          v29 = xmmword_10138BBF0;
          v30 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_48:
          sub_1009A022C();
          swift_allocError();
          *v13 = 0;
          swift_willThrow();
          return sub_100007BAC(v69);
        }

        sub_100A1DD08(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v58 = v44;
          v59 = v45;
          v60 = v46;
          v56 = v42;
          v57 = v43;
          sub_10015049C(v69, v70);
          sub_10076B4F4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v31 = v58;
          v32 = v59;
          v33 = v60;
          v29 = v56;
          v30 = v57;
          sub_100A22318(&v29);
          return sub_100007BAC(v69);
        }

        v42 = xmmword_10138BBF0;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = xmmword_10138BBF0;
        v30 = 0u;
        v11 = &unk_1016B1B68;
        v12 = &unk_1013D1338;
LABEL_47:
        sub_10000B3A8(&v29, v11, v12);
        goto LABEL_48;
      }

      sub_100A1DD08(&v56);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_48;
      }

      sub_10015049C(v69, v70);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v69);
}

uint64_t sub_100A1F734(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6 = sub_10104BF58();
  LOWORD(v40) = word_1013D2D4C[v6];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v5, v2);
  LOWORD(v40) = v54;
  sub_10015049C(v67, v68);
  v7 = v69;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v7)
  {
    if (v6 <= 5u)
    {
      if (v6 > 2u)
      {
        if (v6 == 3)
        {
          sub_10104C0B4(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v62 = v48;
            v63 = v49;
            v64 = v50;
            *&v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            v54 = v40;
            v55 = v41;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v67, v68);
            sub_100A22270();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v35 = v62;
            v36 = v63;
            v37 = v64;
            *&v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            v27 = v54;
            v28 = v55;
            v29 = v56;
            v30 = v57;
            sub_100A222C4(&v27);
            return sub_100007BAC(v67);
          }

          sub_100083C60(&v14);
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v40 = v14;
          v41 = v15;
          v42 = v16;
          v43 = v17;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v31 = v18;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v27 = v14;
          v28 = v15;
          *&v51 = v25;
          *&v38 = v25;
          v29 = v16;
          v30 = v17;
          v9 = &unk_1016B1B60;
          v10 = &unk_1013D1330;
        }

        else if (v6 == 4)
        {
          sub_10104C0B4(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v62 = v48;
            v63 = v49;
            v64 = v50;
            *&v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            v54 = v40;
            v55 = v41;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v67, v68);
            sub_1008ACD88();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v35 = v62;
            v36 = v63;
            v37 = v64;
            *&v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            v27 = v54;
            v28 = v55;
            v29 = v56;
            v30 = v57;
            sub_100A2221C(&v27);
            return sub_100007BAC(v67);
          }

          sub_100083C60(&v14);
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v40 = v14;
          v41 = v15;
          v42 = v16;
          v43 = v17;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v31 = v18;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v27 = v14;
          v28 = v15;
          *&v51 = v25;
          *&v38 = v25;
          v29 = v16;
          v30 = v17;
          v9 = &unk_1016B1B58;
          v10 = &unk_1013D1328;
        }

        else
        {
          sub_10104C0B4(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v64 = v50;
            v65 = v51;
            v66 = v52;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v56 = v42;
            v57 = v43;
            v58 = v44;
            v59 = v45;
            v54 = v40;
            v55 = v41;
            sub_10015049C(v67, v68);
            sub_100A22174();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v37 = v64;
            v38 = v65;
            v39 = v66;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v29 = v56;
            v30 = v57;
            v31 = v58;
            v32 = v59;
            v27 = v54;
            v28 = v55;
            sub_100A221C8(&v27);
            return sub_100007BAC(v67);
          }

          sub_100A21E1C(&v14);
          v50 = v24;
          v51 = v25;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v42 = v16;
          v43 = v17;
          v44 = v18;
          v45 = v19;
          v40 = v14;
          v41 = v15;
          v37 = v24;
          v38 = v25;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v29 = v16;
          v30 = v17;
          v31 = v18;
          v32 = v19;
          v52 = v26;
          v39 = v26;
          v27 = v14;
          v28 = v15;
          v9 = &unk_1016B1B50;
          v10 = &unk_1013D1320;
        }

        goto LABEL_48;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          sub_10104C0B4(&v54);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v40 = v27;
            v41 = v28;
            sub_10015049C(v67, v68);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v8 = v41;
            sub_100016590(v40, *(&v40 + 1));
            sub_100016590(v8, *(&v8 + 1));
            return sub_100007BAC(v67);
          }

          v27 = xmmword_10138BBF0;
          v28 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_49:
          sub_1009A022C();
          swift_allocError();
          *v11 = 0;
          swift_willThrow();
          return sub_100007BAC(v67);
        }

        sub_10104C0B4(&v14);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v56 = v42;
          v57 = v43;
          v58 = v44;
          v54 = v40;
          v55 = v41;
          sub_10015049C(v67, v68);
          sub_10076B4F4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v29 = v56;
          v30 = v57;
          v31 = v58;
          v27 = v54;
          v28 = v55;
          sub_100A22318(&v27);
          return sub_100007BAC(v67);
        }

        v40 = xmmword_10138BBF0;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v27 = xmmword_10138BBF0;
        v28 = 0u;
        v9 = &unk_1016B1B68;
        v10 = &unk_1013D1338;
LABEL_48:
        sub_10000B3A8(&v27, v9, v10);
        goto LABEL_49;
      }

      sub_10104C0B4(&v54);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_10015049C(v67, v68);
      sub_10030FB84();
LABEL_39:
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      return sub_100007BAC(v67);
    }

    if (v6 > 8u)
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          sub_10104C0B4(&v14);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v56 = v42;
            v57 = v43;
            v58 = v44;
            *&v59 = v45;
            v54 = v40;
            v55 = v41;
            sub_10015049C(v67, v68);
            sub_1005C5D58();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v29 = v56;
            v30 = v57;
            v31 = v58;
            *&v32 = v59;
            v27 = v54;
            v28 = v55;
            sub_100A22078(&v27);
            return sub_100007BAC(v67);
          }

          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v40 = xmmword_10138BBF0;
          v41 = 0u;
          *&v45 = 0;
          *&v32 = 0;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v27 = xmmword_10138BBF0;
          v28 = 0u;
          v9 = &unk_1016B1B40;
          v10 = &unk_1013D1310;
          goto LABEL_48;
        }

        sub_10104C0B4(&v54);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_10015049C(v67, v68);
        sub_10027FBB8();
        goto LABEL_39;
      }

      sub_10104C0B4(&v54);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v40 = v27;
        sub_10015049C(v67, v68);
        sub_100A220CC();
LABEL_33:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v40, *(&v40 + 1));
        return sub_100007BAC(v67);
      }
    }

    else
    {
      if (v6 == 6)
      {
        sub_10104C0B4(&v14);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v58 = v44;
          v59 = v45;
          v60 = v46;
          v54 = v40;
          v55 = v41;
          v56 = v42;
          v57 = v43;
          sub_10015049C(v67, v68);
          sub_1003929A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v31 = v58;
          v32 = v59;
          v33 = v60;
          v27 = v54;
          v28 = v55;
          v29 = v56;
          v30 = v57;
          sub_1003929F4(&v27);
          return sub_100007BAC(v67);
        }

        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v40 = xmmword_10138BBF0;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = xmmword_10138BBF0;
        v28 = 0u;
        v9 = &unk_1016B1BC0;
        v10 = &unk_1013D1378;
        goto LABEL_48;
      }

      if (v6 == 7)
      {
        sub_10104C0B4(&v14);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v54 = v40;
          v55 = v41;
          v56 = v42;
          v57 = v43;
          sub_10015049C(v67, v68);
          sub_10039294C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v27 = v54;
          v28 = v55;
          v29 = v56;
          v30 = v57;
          sub_1001016B0(&v27);
          return sub_100007BAC(v67);
        }

        v40 = xmmword_10138BBF0;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = xmmword_10138BBF0;
        v28 = 0u;
        v9 = &unk_1016B1BB8;
        v10 = &unk_1013D1370;
        goto LABEL_48;
      }

      sub_10104C0B4(&v54);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v40 = v27;
        sub_10015049C(v67, v68);
        sub_1003928F8();
        goto LABEL_33;
      }
    }

    v27 = xmmword_10138BBF0;
    sub_100006654(0, 0xF000000000000000);
    goto LABEL_49;
  }

  return sub_100007BAC(v67);
}

ValueMetadata *sub_100A20554(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        sub_100A1D9A8();
      }

      else if (a1 == 10)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
        sub_100A1DA00();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 6)
    {
      v1 = &type metadata for AirPodsSWFinalizePairingCommandPayload;
      sub_100391AEC();
    }

    else if (a1 == 7)
    {
      v1 = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      sub_100101224();
    }

    else
    {
      v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      sub_100391A98();
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
      sub_100A1DA58();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
      sub_100A1DAB0();
    }

    else
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
      sub_100A1DB08();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
    }

    else
    {
      v1 = &type metadata for AirPodsInitiatePairingCommandPayload;
      sub_100A1D950();
    }
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

ValueMetadata *sub_100A2068C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        sub_100A1D9A8();
      }

      else if (a1 == 10)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
        sub_100A1DA00();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 6)
    {
      v1 = &type metadata for AirPodsFinalizePairingCommandPayload;
      sub_100A1D8F8();
    }

    else if (a1 == 7)
    {
      v1 = &type metadata for AirPodsSendPairingStatusCommandPayload;
      sub_100A1DB60();
    }

    else
    {
      v1 = &type metadata for AirPodsPairingCompleteCommandPayload;
      sub_1009A0048();
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
      sub_100A1DA58();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
      sub_100A1DAB0();
    }

    else
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
      sub_100A1DB08();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
    }

    else
    {
      v1 = &type metadata for AirPodsInitiatePairingCommandPayload;
      sub_100A1D950();
    }
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

void sub_100A207C4(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100A20554(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 <= 5u)
    {
      if (a1 > 2u)
      {
        if (a1 == 3)
        {
          sub_10001F280(a2, v45);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            SharingCircleWildAdvertisementKey.init(key:)();
            v54 = v40;
            v55 = v41;
            v56 = v42;
            *&v57 = v43;
            v50 = v36;
            v51 = v37;
            v52 = v38;
            v53 = v39;
            v46 = v32;
            v47 = v33;
            v48 = v34;
            v49 = v35;
            sub_100A22974(&v46);
            goto LABEL_33;
          }

          sub_100083C60(&v19);
          v40 = v27;
          v41 = v28;
          v42 = v29;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v54 = v27;
          v55 = v28;
          v56 = v29;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v53 = v26;
          v46 = v19;
          v47 = v20;
          *&v43 = v30;
          *&v57 = v30;
          v48 = v21;
          v49 = v22;
          v15 = &unk_1016B1B60;
          v16 = &unk_1013D1330;
        }

        else
        {
          if (a1 != 4)
          {
            sub_10001F280(a2, v45);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              sub_100007BAC(a2);
              SharingCircleWildAdvertisementKey.init(key:)();
              v42 = v56;
              v43 = v57;
              v44 = v58;
              v38 = v52;
              v39 = v53;
              v40 = v54;
              v41 = v55;
              v34 = v48;
              v35 = v49;
              v36 = v50;
              v37 = v51;
              v32 = v46;
              v33 = v47;
              sub_100A22890(&v32);
              v69 = v42;
              v70 = v43;
              v71 = v44;
              v65 = v38;
              v66 = v39;
              v67 = v40;
              v68 = v41;
              v61 = v34;
              v62 = v35;
              v63 = v36;
              v64 = v37;
              v8 = v32;
              v7 = v33;
              goto LABEL_34;
            }

            sub_100A21E1C(&v19);
            v56 = v29;
            v57 = v30;
            v52 = v25;
            v53 = v26;
            v54 = v27;
            v55 = v28;
            v48 = v21;
            v49 = v22;
            v50 = v23;
            v51 = v24;
            v46 = v19;
            v47 = v20;
            v42 = v29;
            v43 = v30;
            v38 = v25;
            v39 = v26;
            v40 = v27;
            v41 = v28;
            v34 = v21;
            v35 = v22;
            v36 = v23;
            v37 = v24;
            v58 = v31;
            v44 = v31;
            v32 = v19;
            v33 = v20;
            v15 = &unk_1016B1B50;
            v16 = &unk_1013D1320;
            v17 = &v32;
            goto LABEL_49;
          }

          sub_10001F280(a2, v45);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            SharingCircleWildAdvertisementKey.init(key:)();
            v54 = v40;
            v55 = v41;
            v56 = v42;
            *&v57 = v43;
            v50 = v36;
            v51 = v37;
            v52 = v38;
            v53 = v39;
            v46 = v32;
            v47 = v33;
            v48 = v34;
            v49 = v35;
            sub_100A22904(&v46);
            goto LABEL_33;
          }

          sub_100083C60(&v19);
          v40 = v27;
          v41 = v28;
          v42 = v29;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v54 = v27;
          v55 = v28;
          v56 = v29;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v53 = v26;
          v46 = v19;
          v47 = v20;
          *&v43 = v30;
          *&v57 = v30;
          v48 = v21;
          v49 = v22;
          v15 = &unk_1016B1B58;
          v16 = &unk_1013D1328;
        }
      }

      else
      {
        if (!a1)
        {
          sub_10001F280(a2, &v46);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v32) = 0;
            sub_100A22ACC(&v59);
LABEL_35:
            v9 = v70;
            *(a3 + 160) = v69;
            *(a3 + 176) = v9;
            *(a3 + 192) = v71;
            v10 = v66;
            *(a3 + 96) = v65;
            *(a3 + 112) = v10;
            v11 = v68;
            *(a3 + 128) = v67;
            *(a3 + 144) = v11;
            v12 = v62;
            *(a3 + 32) = v61;
            *(a3 + 48) = v12;
            v13 = v64;
            *(a3 + 64) = v63;
            *(a3 + 80) = v13;
            v14 = v60;
            *a3 = v59;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_50;
        }

        if (a1 == 1)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v46 = v19;
            v47 = v20;
            sub_100A22A5C(&v46);
LABEL_33:
            v69 = v56;
            v70 = v57;
            v71 = v58;
            v65 = v52;
            v66 = v53;
            v67 = v54;
            v68 = v55;
            v61 = v48;
            v62 = v49;
            v63 = v50;
            v64 = v51;
            v8 = v46;
            v7 = v47;
LABEL_34:
            v59 = v8;
            v60 = v7;
            goto LABEL_35;
          }

          v19 = xmmword_10138BBF0;
          v20 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          v46 = v32;
          v47 = v33;
          sub_100A229E8(&v46);
          goto LABEL_33;
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B68;
        v16 = &unk_1013D1338;
      }

LABEL_48:
      v17 = &v46;
LABEL_49:
      sub_10000B3A8(v17, v15, v16);
      goto LABEL_50;
    }

    if (a1 > 8u)
    {
      if (a1 != 9)
      {
        if (a1 != 10)
        {
          sub_10001F280(a2, &v46);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v32) = 0;
            sub_100A225F0(&v59);
            goto LABEL_35;
          }

          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          *&v51 = v37;
          v46 = v32;
          v47 = v33;
          sub_100A22640(&v46);
          goto LABEL_33;
        }

        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        *&v37 = 0;
        *&v51 = 0;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B40;
        v16 = &unk_1013D1310;
        goto LABEL_48;
      }

      sub_10001F280(a2, &v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v46 = v19;
        sub_100A226B8(&v46);
        goto LABEL_33;
      }
    }

    else
    {
      if (a1 == 6)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A22818(&v46);
          goto LABEL_33;
        }

        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1BC0;
        v16 = &unk_1013D1378;
        goto LABEL_48;
      }

      if (a1 == 7)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A227A0(&v46);
          goto LABEL_33;
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1BB8;
        v16 = &unk_1013D1370;
        goto LABEL_48;
      }

      sub_10001F280(a2, &v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v46 = v19;
        sub_100A2272C(&v46);
        goto LABEL_33;
      }
    }

    v19 = xmmword_10138BBF0;
    sub_100006654(0, 0xF000000000000000);
LABEL_50:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_100007BAC(a2);
    return;
  }

  __break(1u);
}

void sub_100A211A4(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100A2068C(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 5u)
    {
      if (a1 > 8u)
      {
        if (a1 == 9)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v46 = v19;
            sub_100A21C20(&v46);
            goto LABEL_31;
          }

          v19 = xmmword_10138BBF0;
          sub_100006654(0, 0xF000000000000000);
          goto LABEL_50;
        }

        if (a1 != 10)
        {
          sub_10001F280(a2, &v46);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v32) = 0;
            sub_100A21B68(&v59);
            goto LABEL_33;
          }

          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          *&v51 = v37;
          v46 = v32;
          v47 = v33;
          sub_100A21BB8(&v46);
          goto LABEL_31;
        }

        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        *&v37 = 0;
        *&v51 = 0;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B40;
        v16 = &unk_1013D1310;
      }

      else
      {
        if (a1 != 6)
        {
          if (a1 == 7)
          {
            sub_10001F280(a2, &v19);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              sub_100007BAC(a2);
              v46 = v32;
              v47 = v33;
              v48 = v34;
              sub_100A21D44(&v46);
              goto LABEL_31;
            }

            v32 = xmmword_10138BBF0;
            v33 = 0u;
            v34 = 0u;
            sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
          }

          else
          {
            sub_10001F280(a2, &v46);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              sub_100007BAC(a2);
              LOBYTE(v32) = 0;
              sub_100A21C88(&v59);
              goto LABEL_33;
            }
          }

          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          v51 = v37;
          v46 = v32;
          v47 = v33;
          sub_100A21DB0(&v46);
          goto LABEL_31;
        }

        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B48;
        v16 = &unk_1013D1318;
      }
    }

    else if (a1 > 2u)
    {
      if (a1 == 3)
      {
        sub_10001F280(a2, v45);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)();
          v54 = v40;
          v55 = v41;
          v56 = v42;
          *&v57 = v43;
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v53 = v39;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A21F14(&v46);
          goto LABEL_31;
        }

        sub_100083C60(&v19);
        v40 = v27;
        v41 = v28;
        v42 = v29;
        v36 = v23;
        v37 = v24;
        v38 = v25;
        v39 = v26;
        v32 = v19;
        v33 = v20;
        v34 = v21;
        v35 = v22;
        v54 = v27;
        v55 = v28;
        v56 = v29;
        v50 = v23;
        v51 = v24;
        v52 = v25;
        v53 = v26;
        v46 = v19;
        v47 = v20;
        *&v43 = v30;
        *&v57 = v30;
        v48 = v21;
        v49 = v22;
        v15 = &unk_1016B1B60;
        v16 = &unk_1013D1330;
      }

      else
      {
        if (a1 != 4)
        {
          sub_10001F280(a2, v45);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            SharingCircleWildAdvertisementKey.init(key:)();
            v42 = v56;
            v43 = v57;
            v44 = v58;
            v38 = v52;
            v39 = v53;
            v40 = v54;
            v41 = v55;
            v34 = v48;
            v35 = v49;
            v36 = v50;
            v37 = v51;
            v32 = v46;
            v33 = v47;
            sub_100A21E48(&v32);
            v69 = v42;
            v70 = v43;
            v71 = v44;
            v65 = v38;
            v66 = v39;
            v67 = v40;
            v68 = v41;
            v61 = v34;
            v62 = v35;
            v63 = v36;
            v64 = v37;
            v8 = v32;
            v7 = v33;
            goto LABEL_32;
          }

          sub_100A21E1C(&v19);
          v56 = v29;
          v57 = v30;
          v52 = v25;
          v53 = v26;
          v54 = v27;
          v55 = v28;
          v48 = v21;
          v49 = v22;
          v50 = v23;
          v51 = v24;
          v46 = v19;
          v47 = v20;
          v42 = v29;
          v43 = v30;
          v38 = v25;
          v39 = v26;
          v40 = v27;
          v41 = v28;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v58 = v31;
          v44 = v31;
          v32 = v19;
          v33 = v20;
          v15 = &unk_1016B1B50;
          v16 = &unk_1013D1320;
          v17 = &v32;
          goto LABEL_49;
        }

        sub_10001F280(a2, v45);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)();
          v54 = v40;
          v55 = v41;
          v56 = v42;
          *&v57 = v43;
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v53 = v39;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A21EB0(&v46);
          goto LABEL_31;
        }

        sub_100083C60(&v19);
        v40 = v27;
        v41 = v28;
        v42 = v29;
        v36 = v23;
        v37 = v24;
        v38 = v25;
        v39 = v26;
        v32 = v19;
        v33 = v20;
        v34 = v21;
        v35 = v22;
        v54 = v27;
        v55 = v28;
        v56 = v29;
        v50 = v23;
        v51 = v24;
        v52 = v25;
        v53 = v26;
        v46 = v19;
        v47 = v20;
        *&v43 = v30;
        *&v57 = v30;
        v48 = v21;
        v49 = v22;
        v15 = &unk_1016B1B58;
        v16 = &unk_1013D1328;
      }
    }

    else
    {
      if (!a1)
      {
        sub_10001F280(a2, &v46);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          LOBYTE(v32) = 0;
          sub_100A22048(&v59);
LABEL_33:
          v9 = v70;
          *(a3 + 160) = v69;
          *(a3 + 176) = v9;
          *(a3 + 192) = v71;
          v10 = v66;
          *(a3 + 96) = v65;
          *(a3 + 112) = v10;
          v11 = v68;
          *(a3 + 128) = v67;
          *(a3 + 144) = v11;
          v12 = v62;
          *(a3 + 32) = v61;
          *(a3 + 48) = v12;
          v13 = v64;
          *(a3 + 64) = v63;
          *(a3 + 80) = v13;
          v14 = v60;
          *a3 = v59;
          *(a3 + 16) = v14;
          return;
        }

        goto LABEL_50;
      }

      if (a1 == 1)
      {
        sub_10001F280(a2, &v32);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v46 = v19;
          v47 = v20;
          sub_100A21FE4(&v46);
LABEL_31:
          v69 = v56;
          v70 = v57;
          v71 = v58;
          v65 = v52;
          v66 = v53;
          v67 = v54;
          v68 = v55;
          v61 = v48;
          v62 = v49;
          v63 = v50;
          v64 = v51;
          v8 = v46;
          v7 = v47;
LABEL_32:
          v59 = v8;
          v60 = v7;
          goto LABEL_33;
        }

        v19 = xmmword_10138BBF0;
        v20 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
        goto LABEL_50;
      }

      sub_10001F280(a2, &v19);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v48 = v34;
        v49 = v35;
        v50 = v36;
        v46 = v32;
        v47 = v33;
        sub_100A21F7C(&v46);
        goto LABEL_31;
      }

      v32 = xmmword_10138BBF0;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v46 = xmmword_10138BBF0;
      v47 = 0u;
      v15 = &unk_1016B1B68;
      v16 = &unk_1013D1338;
    }

    v17 = &v46;
LABEL_49:
    sub_10000B3A8(v17, v15, v16);
LABEL_50:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_100007BAC(a2);
    return;
  }

  __break(1u);
}