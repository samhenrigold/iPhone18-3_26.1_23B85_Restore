uint64_t sub_100253968(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {
    v3 = v4[12];

    v5 = sub_100254EC0;
  }

  else
  {

    v5 = sub_100253AC0;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100253AC0()
{

  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_100253BAC;
  v3 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v3, v2);
}

uint64_t sub_100253BAC()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_100253CC4, v1, 0);
}

uint64_t sub_100253CC4()
{
  v1 = v0[12];
  v0[38] = v0[8];
  return _swift_task_switch(sub_100253CE8, v1, 0);
}

uint64_t sub_100253CE8()
{
  v1 = v0[38];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    sub_101123D4C(0, v2, 0);
    v4 = v1 + 32;
    do
    {
      sub_10001F280(v4, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      sub_1000035D0(v0 + 2, v5);
      (*(*(*(v6 + 8) + 8) + 32))(v5);
      sub_100007BAC(v0 + 2);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101123D4C((v7 > 1), v8 + 1, 1);
      }

      v9 = v0[30];
      v10 = v0[22];
      _swiftEmptyArrayStorage[2] = v8 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v9, v10);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v11 = v0[35];
  v0[39] = sub_10000954C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100253EA0, v11, 0);
}

uint64_t sub_100253EA0()
{

  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100253F8C;
  v3 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100253F8C()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_1002540A4, v1, 0);
}

uint64_t sub_1002540A4()
{
  v1 = v0[12];
  v0[41] = v0[9];
  return _swift_task_switch(sub_1002540C8, v1, 0);
}

uint64_t sub_1002540C8()
{
  v1 = v0[41];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[20];
    v16 = v0[19];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      v6 = v0[29];
      v8 = v0[21];
      v7 = v0[22];
      sub_10025B334(v5, v8, type metadata accessor for OwnedBeaconRecord);
      (*(v3 + 16))(v6, v8 + *(v16 + 20), v7);
      sub_1000326A4(v8, type metadata accessor for OwnedBeaconRecord);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[29];
      v12 = v0[22];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v15;
      --v2;
    }

    while (v2);
  }

  v13 = v0[35];
  v0[42] = sub_10000954C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1002542BC, v13, 0);
}

uint64_t sub_1002542BC()
{

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  v2 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  *v1 = v0;
  v1[1] = sub_1002543A8;
  v3 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v3, v2);
}

uint64_t sub_1002543A8()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_1002544C0, v1, 0);
}

uint64_t sub_1002544C0()
{
  v1 = v0[12];
  v0[44] = v0[10];
  return _swift_task_switch(sub_1002544E4, v1, 0);
}

void sub_1002544E4()
{
  v1 = v0[44];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[17];
    v88 = v0[16];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v85 = *(v4 + 72);
    do
    {
      v6 = v0[28];
      v7 = v0[22];
      v8 = v0[18];
      sub_10025B334(v5, v8, type metadata accessor for OwnedBeaconGroup);
      (*(v3 + 16))(v6, v8 + *(v88 + 24), v7);
      sub_1000326A4(v8, type metadata accessor for OwnedBeaconGroup);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[28];
      v12 = v0[22];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v85;
      --v2;
    }

    while (v2);
  }

  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[23];
  v16 = v0[14];
  v17 = v0[11];
  v71 = v0[12];
  v18 = sub_10000954C(_swiftEmptyArrayStorage);

  v19 = v17 + 56;
  v20 = -1 << *(v17 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = (63 - v20) >> 6;
  v80 = v18;
  v81 = v13 + 56;
  v77 = v15;
  v23 = (v15 + 8);
  v79 = v18 + 56;
  v83 = v14 + 56;
  v84 = v14;
  v70 = (v16 + 8);
  v76 = v17;
  v24 = v21 & *(v17 + 56);

  v25 = 0;
  v82 = v13;
  v74 = v22;
  v75 = v19;
  while (v24)
  {
    v26 = v25;
LABEL_15:
    v28 = v0[26];
    v27 = v0[27];
    v29 = v0[22];
    v78 = (v24 - 1) & v24;
    v30 = *(v77 + 72);
    v86 = *(v77 + 16);
    v86(v27, *(v76 + 48) + v30 * (__clz(__rbit64(v24)) | (v26 << 6)), v29);
    (*(v77 + 32))(v28, v27, v29);
    if (*(v13 + 16) && (sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v31 = dispatch thunk of Hashable._rawHashValue(seed:)(), v32 = -1 << *(v13 + 32), v33 = v31 & ~v32, ((*(v81 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = v0[25];
        v36 = v0[22];
        v86(v35, *(v13 + 48) + v33 * v30, v36);
        sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *v23;
        (*v23)(v35, v36);
        if (v37)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        v13 = v82;
        if (((*(v81 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v66 = v0[25];
      v65 = v0[26];
      v67 = v0[24];
      v68 = v0[22];
      v86(v67, v65, v68);
      sub_100DE8BCC(v66, v67);
      v38(v66, v68);
      v63 = v65;
      v64 = v68;
LABEL_35:
      v38(v63, v64);
      v25 = v26;
      v13 = v82;
      v22 = v74;
      v19 = v75;
      v24 = v78;
    }

    else
    {
LABEL_20:
      v39 = v80;
      if (*(v80 + 16))
      {
        sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v41 = -1 << *(v80 + 32);
        v42 = v40 & ~v41;
        if ((*(v79 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          do
          {
            v44 = v0[25];
            v45 = v0[22];
            v86(v44, *(v39 + 48) + v42 * v30, v45);
            sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v46 = dispatch thunk of static Equatable.== infix(_:_:)();
            v38 = *v23;
            (*v23)(v44, v45);
            if (v46)
            {
              goto LABEL_33;
            }

            v42 = (v42 + 1) & v43;
            v39 = v80;
          }

          while (((*(v79 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0);
        }
      }

      if (*(v84 + 16))
      {
        sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v47 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v48 = -1 << *(v84 + 32);
        v49 = v47 & ~v48;
        if ((*(v83 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = v0[25];
            v52 = v0[22];
            v86(v51, *(v84 + 48) + v49 * v30, v52);
            sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v53 = dispatch thunk of static Equatable.== infix(_:_:)();
            v38 = *v23;
            (*v23)(v51, v52);
            if (v53)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v83 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_33:
          v63 = v0[26];
          v64 = v0[22];
          goto LABEL_35;
        }
      }

LABEL_30:
      v54 = static os_log_type_t.error.getter();
      v24 = v78;
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v72 = v0[26];
      v87 = v0[22];
      v55 = v0[15];
      v73 = v0[13];
      v56 = qword_10177C400;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_101385D80;
      v58 = UUID.uuidString.getter();
      v60 = v59;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_100008C00();
      *(v57 + 32) = v58;
      *(v57 + 40) = v60;
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v56, "No beacon record found in the store. Removing all the observations corresponds to UUID: %@", 90, 2, v57);

      v61 = *(v71 + 120);
      static DispatchWorkItemFlags.barrier.getter();
      v62 = swift_task_alloc();
      v62[2] = v61;
      v62[3] = v72;
      v62[4] = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
      v62[5] = 0;
      OS_dispatch_queue.sync<A>(flags:execute:)();

      (*v70)(v55, v73);
      (*v23)(v72, v87);
      v25 = v26;
      v13 = v82;
      v22 = v74;
      v19 = v75;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v22)
    {
      break;
    }

    v24 = *(v19 + 8 * v26);
    ++v25;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  v89 = v0[7];

  v69 = v0[1];

  v69(v89);
}

uint64_t sub_100254EC0(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C400, "No BeaconStoreActor available.", 30, 2, _swiftEmptyArrayStorage);
  v6 = *(v1 + 248);

  v3 = *(v1 + 8);

  return v3(v6);
}

uint64_t sub_100255014(uint64_t a1, char a2)
{
  *(v3 + 417) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v3 + 248) = swift_task_alloc();
  v4 = type metadata accessor for BeaconObservation(0);
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 280) = v5;
  *(v3 + 288) = *(v5 - 8);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v3 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_1002551F8, v2, 0);
}

uint64_t sub_1002551F8()
{
  v0[40] = *(v0[27] + 120);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v0[41] = 0;
  v1 = sub_1010746B4(v0[24]);

  sub_1010C294C(v1 * 60.0);
  if (v2)
  {
    v3 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v10 = v3;
      swift_once();
      v3 = v10;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C400, "Beacons pending firmware update. Not posting notification.", 58, 2, _swiftEmptyArrayStorage);
LABEL_14:

    v9 = v0[1];

    return v9();
  }

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v0[42] = v4;
  if (!v4)
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      v11 = v8;
      swift_once();
      v8 = v11;
    }

    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C400, "CFNotificationCenterGetDarwinNotifyCenter returned nil! Not posting notification.", 81, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_1002554B8;
  v6 = v0[26];

  return sub_10025314C(v6);
}

uint64_t sub_1002554B8(uint64_t a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_1002555D0, v2, 0);
}

uint64_t sub_1002555D0()
{
  if (*(v0[44] + 16))
  {
    type metadata accessor for AnalyticsEvent(0);
    v1 = swift_allocObject();
    v0[45] = v1;
    swift_defaultActor_initialize();
    *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v3 = type metadata accessor for DispatchTime();
    v0[46] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[47] = v5;
    v0[48] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(&v1[v2], 1, 1, v3);
    v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
    *(v1 + 15) = 0xD000000000000032;
    *(v1 + 16) = 0x800000010134E3D0;

    return _swift_task_switch(sub_10025582C, v1, 0);
  }

  else
  {

    v6 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = v0[42];
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C400, "No enabled beacon found. Not posting notification.", 50, 2, _swiftEmptyArrayStorage);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10025582C(uint64_t a1)
{
  v2 = v1[47];
  v4 = v1[45];
  v3 = v1[46];
  v5 = v1[39];
  v6 = v1[27];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_1002558FC, v6, 0);
}

uint64_t sub_1002558FC()
{

  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_1002559C0;
  v2 = *(v0 + 216);

  return unsafeBlocking<A>(_:)(v0 + 200, sub_100259BB8, v2, &type metadata for Int);
}

uint64_t sub_1002559C0()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100255AD8, v1, 0);
}

uint64_t sub_100255AD8()
{
  v1 = v0[45];
  v0[50] = v0[25];

  return _swift_task_switch(sub_100255B4C, v1, 0);
}

uint64_t sub_100255B4C()
{
  v1 = *(v0 + 328);
  sub_10116CEAC(*(v0 + 360), *(v0 + 400), *(v0 + 208), *(v0 + 417));
  *(v0 + 408) = v1;
  v2 = *(v0 + 216);

  if (v1)
  {

    v3 = sub_1002566DC;
  }

  else
  {
    v3 = sub_100255BF4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100255BF4(unint64_t a1)
{
  v3 = 0;
  v4 = *(v2 + 352);
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v8 = -1;
  v75 = *(v2 + 352);
  v9 = -1 << *(v75 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v73 = *(v2 + 264);
  v80 = *(v2 + 256);
  v11 = (63 - v9) >> 6;
  v74 = *(v2 + 288);
  v69 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v70 = v11;
  v71 = v6;
  v72 = *(v2 + 216);
  while (v10)
  {
LABEL_11:
    v17 = *(v2 + 296);
    v16 = *(v2 + 304);
    v18 = *(v2 + 272);
    v19 = *(v2 + 280);
    v78 = v10;
    v76 = *(v74 + 72);
    v20 = *(v74 + 16);
    v20(v16, *(v75 + 48) + v76 * (__clz(__rbit64(v10)) | (v3 << 6)), v19);
    (*(v74 + 32))(v17, v16, v19);
    v79 = v18;
    v77 = v20;
    v20(v18, v17, v19);
    v21 = *(v80 + 20);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v2 + 160) = 0x7365547265646E75;
    *(v2 + 168) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v2 + 416) == 1)
    {
      v22 = [objc_opt_self() sharedInstance];
      v23 = [v22 isInternalBuild];

      if (v23)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v24 = *(v2 + 248);
        v25 = sub_1000076D4(*(v2 + 240), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v25, v24, &unk_101696900, &unk_10138B1E0);
        v26 = type metadata accessor for Date();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v24, 1, v26) != 1)
        {
          (*(v27 + 32))(v79 + v21, *(v2 + 248), v26);
          goto LABEL_35;
        }

        sub_10000B3A8(*(v2 + 248), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v2 + 40) = My;
    *(v2 + 48) = sub_10025B5E8(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v29 = sub_1000280DC((v2 + 16));
    (*(*(My - 8) + 104))(v29, v69, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v2 + 16));
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v2 + 176) - *(v2 + 184) > 86400.0)
      {
        v31 = *(v2 + 224);
        v32 = *(v2 + 232);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v33 = type metadata accessor for TaskPriority();
        v34 = *(v33 - 8);
        (*(v34 + 56))(v32, 1, 1, v33);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        sub_1000D2A70(v32, v31, &qword_101698C00, &qword_10138B570);
        LODWORD(v32) = (*(v34 + 48))(v31, 1, v33);

        v36 = *(v2 + 224);
        if (v32 == 1)
        {
          sub_10000B3A8(*(v2 + 224), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v34 + 8))(v36, v33);
        }

        v37 = *(v35 + 16);
        swift_unknownObjectRetain();

        if (v37)
        {
          swift_getObjectType();
          v38 = dispatch thunk of Actor.unownedExecutor.getter();
          v40 = v39;
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        sub_10000B3A8(*(v2 + 232), &qword_101698C00, &qword_10138B570);
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_10138B610;
        *(v41 + 24) = v35;
        if (v40 | v38)
        {
          *(v2 + 56) = 0;
          *(v2 + 64) = 0;
          *(v2 + 72) = v38;
          *(v2 + 80) = v40;
        }

        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_35:
    v42 = *(v2 + 320);
    v43 = *(v2 + 296);
    v44 = *(v2 + 272);
    *(v44 + *(v80 + 24)) = 9;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v45 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_101385D80;
    sub_10025B334(v44, v46 + v45, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v47 = swift_task_alloc();
    v47[2] = v42;
    v47[3] = v46;
    v47[4] = 0;
    v47[5] = 0;
    static Transaction.named<A>(_:with:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v72 + 144);
    *(v72 + 144) = 0x8000000000000000;
    a1 = sub_1000210EC(v43);
    data = v1->data;
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(data, v51);
    v53 = &data[v51];
    if (v52)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v68 = a1;
      swift_once();
      a1 = v68;
      goto LABEL_46;
    }

    v54 = v49;
    if (v1->length < v53)
    {
      v55 = *(v2 + 296);
      sub_100FE88F0(v53, isUniquelyReferenced_nonNull_native);
      a1 = sub_1000210EC(v55);
      v57 = v78;
      if ((v54 & 1) != (v56 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_40:
      v58 = *(v2 + 360);
      if (v54)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    v57 = v78;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v64 = a1;
    sub_1010062CC();
    a1 = v64;
    v58 = *(v2 + 360);
    if (v54)
    {
LABEL_4:
      *(v1[1].length + 8 * a1) = v58;

      goto LABEL_5;
    }

LABEL_41:
    v59 = *(v2 + 296);
    v60 = *(v2 + 280);
    *(&v1[2].isa + (a1 >> 6)) |= 1 << a1;
    v61 = a1;
    a1 = v77(&v1[1].data[a1 * v76], v59, v60);
    *(v1[1].length + 8 * v61) = v58;
    v62 = v1->data;
    v52 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v52)
    {
      goto LABEL_54;
    }

    v1->data = v63;
LABEL_5:
    v10 = (v57 - 1) & v57;
    v12 = *(v2 + 296);
    v14 = *(v2 + 272);
    v13 = *(v2 + 280);
    *(v72 + 144) = v1;
    swift_endAccess();
    sub_1000326A4(v14, type metadata accessor for BeaconObservation);
    a1 = (*(v74 + 8))(v12, v13);
    v11 = v70;
    v6 = v71;
  }

  while (1)
  {
    v15 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v15);
    ++v3;
    if (v10)
    {
      v3 = v15;
      goto LABEL_11;
    }
  }

  v1 = SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification;
  a1 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_55;
  }

LABEL_46:
  v65 = *(v2 + 336);
  os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, qword_10177C400, "Posting SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification Darwin notification", 84, 2, _swiftEmptyArrayStorage);
  CFNotificationCenterPostNotification(v65, v1, 0, 0, 1u);

  v66 = *(v2 + 8);

  return v66();
}

uint64_t sub_1002566DC(unint64_t a1)
{
  v3 = 0;
  v4 = *(v2 + 352);
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v75 = *(v2 + 352);
  v8 = -1;
  v9 = -1 << *(v75 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v73 = *(v2 + 264);
  v80 = *(v2 + 256);
  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v69 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v74 = *(v2 + 288);
  v70 = v11;
  v71 = v6;
  v72 = *(v2 + 216);
  while (v10)
  {
LABEL_11:
    v17 = *(v2 + 296);
    v16 = *(v2 + 304);
    v19 = *(v2 + 272);
    v18 = *(v2 + 280);
    v78 = v10;
    v76 = *(v74 + 72);
    v20 = *(v74 + 16);
    v20(v16, *(v75 + 48) + v76 * (__clz(__rbit64(v10)) | (v3 << 6)), v18);
    (*(v74 + 32))(v17, v16, v18);
    v79 = v19;
    v77 = v20;
    v20(v19, v17, v18);
    v21 = *(v80 + 20);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v2 + 160) = 0x7365547265646E75;
    *(v2 + 168) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v2 + 416) == 1)
    {
      v22 = [objc_opt_self() sharedInstance];
      v23 = [v22 isInternalBuild];

      if (v23)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v24 = *(v2 + 248);
        v25 = sub_1000076D4(*(v2 + 240), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v25, v24, &unk_101696900, &unk_10138B1E0);
        v26 = type metadata accessor for Date();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v24, 1, v26) != 1)
        {
          (*(v27 + 32))(v79 + v21, *(v2 + 248), v26);
          goto LABEL_35;
        }

        sub_10000B3A8(*(v2 + 248), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v2 + 40) = My;
    *(v2 + 48) = sub_10025B5E8(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v29 = sub_1000280DC((v2 + 16));
    (*(*(My - 8) + 104))(v29, v69, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v2 + 16));
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v2 + 176) - *(v2 + 184) > 86400.0)
      {
        v31 = *(v2 + 224);
        v32 = *(v2 + 232);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v33 = type metadata accessor for TaskPriority();
        v34 = *(v33 - 8);
        (*(v34 + 56))(v32, 1, 1, v33);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        sub_1000D2A70(v32, v31, &qword_101698C00, &qword_10138B570);
        LODWORD(v32) = (*(v34 + 48))(v31, 1, v33);

        v36 = *(v2 + 224);
        if (v32 == 1)
        {
          sub_10000B3A8(*(v2 + 224), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v34 + 8))(v36, v33);
        }

        v37 = *(v35 + 16);
        swift_unknownObjectRetain();

        if (v37)
        {
          swift_getObjectType();
          v38 = dispatch thunk of Actor.unownedExecutor.getter();
          v40 = v39;
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        sub_10000B3A8(*(v2 + 232), &qword_101698C00, &qword_10138B570);
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_10138B610;
        *(v41 + 24) = v35;
        if (v40 | v38)
        {
          *(v2 + 56) = 0;
          *(v2 + 64) = 0;
          *(v2 + 72) = v38;
          *(v2 + 80) = v40;
        }

        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_35:
    v42 = *(v2 + 320);
    v43 = *(v2 + 296);
    v44 = *(v2 + 272);
    *(v44 + *(v80 + 24)) = 9;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v45 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_101385D80;
    sub_10025B334(v44, v46 + v45, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v47 = swift_task_alloc();
    v47[2] = v42;
    v47[3] = v46;
    v47[4] = 0;
    v47[5] = 0;
    static Transaction.named<A>(_:with:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v72 + 144);
    *(v72 + 144) = 0x8000000000000000;
    a1 = sub_1000210EC(v43);
    data = v1->data;
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(data, v51);
    v53 = &data[v51];
    if (v52)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v68 = a1;
      swift_once();
      a1 = v68;
      goto LABEL_46;
    }

    v54 = v49;
    if (v1->length < v53)
    {
      v55 = *(v2 + 296);
      sub_100FE88F0(v53, isUniquelyReferenced_nonNull_native);
      a1 = sub_1000210EC(v55);
      v57 = v78;
      if ((v54 & 1) != (v56 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_40:
      v58 = *(v2 + 360);
      if (v54)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    v57 = v78;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v64 = a1;
    sub_1010062CC();
    a1 = v64;
    v58 = *(v2 + 360);
    if (v54)
    {
LABEL_4:
      *(v1[1].length + 8 * a1) = v58;

      goto LABEL_5;
    }

LABEL_41:
    v59 = *(v2 + 296);
    v60 = *(v2 + 280);
    *(&v1[2].isa + (a1 >> 6)) |= 1 << a1;
    v61 = a1;
    a1 = v77(&v1[1].data[a1 * v76], v59, v60);
    *(v1[1].length + 8 * v61) = v58;
    v62 = v1->data;
    v52 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v52)
    {
      goto LABEL_54;
    }

    v1->data = v63;
LABEL_5:
    v10 = (v57 - 1) & v57;
    v12 = *(v2 + 296);
    v14 = *(v2 + 272);
    v13 = *(v2 + 280);
    *(v72 + 144) = v1;
    swift_endAccess();
    sub_1000326A4(v14, type metadata accessor for BeaconObservation);
    a1 = (*(v74 + 8))(v12, v13);
    v11 = v70;
    v6 = v71;
  }

  while (1)
  {
    v15 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v15);
    ++v3;
    if (v10)
    {
      v3 = v15;
      goto LABEL_11;
    }
  }

  v1 = SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification;
  a1 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_55;
  }

LABEL_46:
  v65 = *(v2 + 336);
  os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, qword_10177C400, "Posting SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification Darwin notification", 84, 2, _swiftEmptyArrayStorage);
  CFNotificationCenterPostNotification(v65, v1, 0, 0, 1u);

  v66 = *(v2 + 8);

  return v66();
}

unint64_t sub_1002571C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v6);
  v11 = String._bridgeToObjectiveC()();

  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = 0xD000000000000014;
  *(inited + 72) = 0x800000010134E530;
  *(inited + 80) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x800000010134E550;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithInteger:*(a2 + 16)];
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000010134E570;
  sub_10024EE84(a3);
  v12 = String._bridgeToObjectiveC()();

  *(inited + 144) = v12;
  *(inited + 152) = 0;
  v13 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_100257418()
{
  v1[24] = v0;
  v1[25] = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v1[26] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v1[29] = *(v3 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[34] = v4;
  *v4 = v1;
  v4[1] = sub_100257570;

  return daemon.getter();
}

uint64_t sub_100257570(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 280) = a1;

  v3 = swift_task_alloc();
  *(v2 + 288) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10025B5E8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100257754;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100257754(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  if (v1)
  {

    v5 = sub_100258D30;
    v6 = 0;
  }

  else
  {

    v5 = sub_1002578AC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1002578AC()
{

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_100257998;
  v3 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_100257998()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_100257AB0, v1, 0);
}

uint64_t sub_100257AD4()
{
  *(v0 + 144) = &_swiftEmptySetSingleton;
  v1 = *(v0 + 320);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    *(v0 + 336) = 0;
    v3 = *(v0 + 296);
    sub_10001F280(v1 + 32, v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v4);
    (*(*(*(v5 + 8) + 8) + 32))(v4);
    v6 = sub_100257F80;
LABEL_17:
    v9 = v6;
    v10 = v3;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C70(*(v0 + 152));

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_1010746B4(*(v0 + 160));

  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_101074698(*(v0 + 168));

  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = sub_100034838(*(v0 + 176));

  v13 = sub_1010C6214(v12, 9, v7 * 60.0);
  v14 = sub_1010C6C3C(v12, v7 * 60.0, (60 * v8));
  v15 = sub_10039DA70(v13, v14);
  v16 = sub_1010C86EC(v12);

  v17 = sub_10039DA70(&_swiftEmptySetSingleton, v16);
  if (*(v15 + 16) <= v17[2] >> 3)
  {
    v36 = v17;
    sub_10087D5B4(v15);

    v18 = v36;
  }

  else
  {
    v18 = sub_100610BC8(v15, v17);
  }

  *(v0 + 376) = v18;
  v19 = *(v0 + 224);
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v20 = *(v18 + 32);
  *(v0 + 449) = v20;
  v21 = -1;
  v22 = -1 << v20;
  if (-(-1 << v20) < 64)
  {
    v21 = ~(-1 << -(-1 << v20));
  }

  v23 = v21 & v18[7];
  if (v23)
  {
    v24 = 0;
LABEL_16:
    *(v0 + 384) = v23;
    *(v0 + 392) = v24;
    v3 = *(v0 + 296);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v29 = *(v0 + 216);
    v30 = v18[6] + v19[9] * (__clz(__rbit64(v23)) | (v24 << 6));
    v31 = v19[2];
    *(v0 + 400) = v31;
    *(v0 + 408) = (v19 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v27, v30, v29);
    v32 = v19[4];
    *(v0 + 416) = v32;
    *(v0 + 424) = (v19 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v32(v28, v27, v29);
    v6 = sub_1002587F0;
    goto LABEL_17;
  }

  v25 = 0;
  v26 = ((63 - v22) >> 6) - 1;
  while (v26 != v25)
  {
    v24 = v25 + 1;
    v23 = v18[v25++ + 8];
    if (v23)
    {
      goto LABEL_16;
    }
  }

  v33 = *(v0 + 184);

  v34 = *(v0 + 8);

  return v34(v33);
}

uint64_t sub_100257F80()
{
  v1 = v0[37];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  (*(v4 + 16))(v2, v0[33], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v3;
  v8 = swift_allocObject();
  v0[43] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v6, v2, v5);
  *(v8 + v7) = 1;

  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_1002580EC;
  v11 = v0[25];
  v10 = v0[26];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v8, v11);
}

uint64_t sub_1002580EC()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_100258218, v1, 0);
}

uint64_t sub_100258218()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v3 + 8);
  *(v0 + 360) = v6;
  *(v0 + 368) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  *(v0 + 448) = *v5;
  sub_10000B3A8(&v5[*(v4 + 48)], &unk_101696900, &unk_10138B1E0);

  return _swift_task_switch(sub_1002582C4, 0, 0);
}

uint64_t sub_1002582C4()
{
  if (*(v0 + 448) == 1)
  {
    v1 = *(v0 + 360);
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 216);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v6);
    (*(*(*(v5 + 8) + 8) + 32))(v6);
    sub_100DE8BCC(v2, v3);
    v1(v2, v4);
  }

  v7 = *(v0 + 328);
  v8 = *(v0 + 336) + 1;
  sub_100007BAC((v0 + 16));
  if (v8 != v7)
  {
    v22 = *(v0 + 336);
    *(v0 + 336) = v22 + 1;
    v23 = *(v0 + 296);
    sub_10001F280(*(v0 + 320) + 40 * v22 + 72, v0 + 16);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v24);
    (*(*(*(v25 + 8) + 8) + 32))(v24);
    v26 = sub_100257F80;
LABEL_19:
    v12 = v26;
    v13 = v23;
    v14 = 0;

    return _swift_task_switch(v12, v13, v14);
  }

  v9 = *(v0 + 144);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C70(*(v0 + 152));

  OS_dispatch_queue.sync<A>(execute:)();
  v10 = sub_1010746B4(*(v0 + 160));

  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_101074698(*(v0 + 168));

  if ((v11 * 60) >> 64 != (60 * v11) >> 63)
  {
    __break(1u);
    return _swift_task_switch(v12, v13, v14);
  }

  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = sub_100034838(*(v0 + 176));

  v16 = sub_1010C6214(v15, 9, v10 * 60.0);
  v17 = sub_1010C6C3C(v15, v10 * 60.0, (60 * v11));
  v18 = sub_10039DA70(v16, v17);
  v19 = sub_1010C86EC(v15);

  v20 = sub_10039DA70(v9, v19);
  if (*(v18 + 16) <= v20[2] >> 3)
  {
    v44 = v20;
    sub_10087D5B4(v18);

    v21 = v44;
  }

  else
  {
    v21 = sub_100610BC8(v18, v20);
  }

  *(v0 + 376) = v21;
  v27 = *(v0 + 224);
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v28 = *(v21 + 32);
  *(v0 + 449) = v28;
  v29 = -1;
  v30 = -1 << v28;
  if (-(-1 << v28) < 64)
  {
    v29 = ~(-1 << -(-1 << v28));
  }

  v31 = v29 & v21[7];
  if (v31)
  {
    v32 = 0;
LABEL_18:
    *(v0 + 384) = v31;
    *(v0 + 392) = v32;
    v23 = *(v0 + 296);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 216);
    v38 = v21[6] + v27[9] * (__clz(__rbit64(v31)) | (v32 << 6));
    v39 = v27[2];
    *(v0 + 400) = v39;
    *(v0 + 408) = (v27 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v35, v38, v37);
    v40 = v27[4];
    *(v0 + 416) = v40;
    *(v0 + 424) = (v27 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v36, v35, v37);
    v26 = sub_1002587F0;
    goto LABEL_19;
  }

  v33 = 0;
  v34 = ((63 - v30) >> 6) - 1;
  while (v34 != v33)
  {
    v32 = v33 + 1;
    v31 = v21[v33++ + 8];
    if (v31)
    {
      goto LABEL_18;
    }
  }

  v41 = *(v0 + 184);

  v42 = *(v0 + 8);

  return v42(v41);
}

uint64_t sub_1002587F0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  (*(v0 + 400))(v3, *(v0 + 240), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 432) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v4);

  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  v9 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v8 = v0;
  v8[1] = sub_100258954;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v7, v9);
}

uint64_t sub_100258954()
{

  return _swift_task_switch(sub_100258A6C, 0, 0);
}

uint64_t sub_100258A6C()
{
  if (*(v0 + 120))
  {
    sub_100031694((v0 + 96), v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_1000035D0((v0 + 56), v1);
    if ((*(v2 + 56))(v1, v2) == 21760)
    {
      v4 = *(v0 + 256);
      v3 = *(v0 + 264);
      v5 = *(v0 + 240);
      v6 = *(v0 + 216);
      v7 = *(v0 + 224);
      (*(v0 + 400))(v4, v5, v6);
      sub_100DE8BCC(v3, v4);
      v8 = *(v7 + 8);
      v8(v3, v6);
      v8(v5, v6);
    }

    else
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    }

    v9 = sub_100007BAC((v0 + 56));
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    v9 = sub_10000B3A8(v0 + 96, &qword_101696920, &unk_10138B200);
  }

  v12 = *(v0 + 392);
  v13 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (v13)
  {
    v14 = *(v0 + 376);
LABEL_13:
    *(v0 + 384) = v13;
    *(v0 + 392) = v12;
    v16 = *(v0 + 296);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    v21 = *(v14 + 48) + v20[9] * (__clz(__rbit64(v13)) | (v12 << 6));
    v22 = v20[2];
    *(v0 + 400) = v22;
    *(v0 + 408) = (v20 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v17, v21, v19);
    v23 = v20[4];
    *(v0 + 416) = v23;
    *(v0 + 424) = (v20 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v18, v17, v19);
    v9 = sub_1002587F0;
    v10 = v16;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return _swift_task_switch(v9, v10, v11);
      }

      if (v15 >= (((1 << *(v0 + 449)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v0 + 376);
      v13 = *(v14 + 8 * v15 + 56);
      ++v12;
      if (v13)
      {
        v12 = v15;
        goto LABEL_13;
      }
    }

    v24 = *(v0 + 184);

    v25 = *(v0 + 8);

    return v25(v24);
  }
}

uint64_t sub_100258D30(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C400, "Missing BeaconStoreActor service.", 33, 2, _swiftEmptyArrayStorage);

  v3 = *(v1 + 8);

  return v3(&_swiftEmptySetSingleton);
}

uint64_t sub_100258E34()
{
  v0 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v0);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = *(v22 - 8);
  v4 = __chkstk_darwin(v22);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  result = sub_100025044();
  v9 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v19[1] = v0;
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = *(v3 + 72);
      sub_10025B334(v9 + v12 + v13 * v10, v7, type metadata accessor for OwnedBeaconRecord);
      sub_10025B334(&v7[*(v22 + 24)], v2, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1000326A4(v2, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        sub_10002A9D4(v7, v21, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v11[2] + 1, 1);
          v11 = v23;
        }

        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          sub_10112434C((v16 > 1), v17 + 1, 1);
          v11 = v23;
        }

        v11[2] = v17 + 1;
        result = sub_10002A9D4(v21, v11 + v12 + v17 * v13, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        result = sub_1000326A4(v7, type metadata accessor for OwnedBeaconRecord);
      }

      if (v20 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_13:

    v18 = v11[2];

    return v18;
  }

  return result;
}

uint64_t sub_100259124()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100259184()
{
  sub_100259124();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002591D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = &v39[-v11];
  sub_100AA33AC(a1, &v39[-v11]);
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
  }

  else
  {
    *(&v47 + 1) = v13;
    v48 = sub_10025B5E8(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v14 = sub_1000280DC(&v46);
    sub_10002A9D4(v12, v14, type metadata accessor for OwnedBeaconRecord);
  }

  v49[0] = v46;
  v49[1] = v47;
  v50 = v48;
  sub_1000D2A70(v49, &v44, &qword_101696920, &unk_10138B200);
  if (!v45)
  {
    sub_10000B3A8(v49, &qword_101696920, &unk_10138B200);
    return sub_10000B3A8(&v44, &qword_101696920, &unk_10138B200);
  }

  sub_100031694(&v44, &v46);
  v15 = *(&v47 + 1);
  v16 = v48;
  sub_1000035D0(&v46, *(&v47 + 1));
  if (((*(v16 + 96))(v15, v16) & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(a1 + *(type metadata accessor for BeaconObservation(0) + 24));
  if (v17 <= 0xA)
  {
    if ((v17 - 7) >= 2)
    {
      if (v17 == 1)
      {
        v25 = type metadata accessor for UUID();
        v26 = *(*(v25 - 8) + 56);
        v40 = 1;
        v26(v9, 1, 1, v25);
        goto LABEL_22;
      }

      if (v17 == 10)
      {
        v18 = type metadata accessor for UUID();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v9, a1, v18);
        (*(v19 + 56))(v9, 0, 1, v18);
        v40 = 0;
LABEL_22:
        v41 = v5;
        v42 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v43 = v2;
        v27 = static os_log_type_t.default.getter();
        if (qword_1016950B8 != -1)
        {
          swift_once();
        }

        v28 = qword_10177C400;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10138BBE0;
        v30 = UUID.uuidString.getter();
        v32 = v31;
        *(v29 + 56) = &type metadata for String;
        v33 = sub_100008C00();
        *(v29 + 64) = v33;
        *(v29 + 32) = v30;
        *(v29 + 40) = v32;
        v34 = sub_10091E6AC(v17);
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = v33;
        *(v29 + 72) = v34;
        *(v29 + 80) = v35;
        os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Beacon (UUID: %@, type: %@) observed", 36, 2, v29);

        type metadata accessor for Transaction();
        v36 = v42;
        sub_1000D2A70(v9, v42, &qword_1016980D0, &unk_10138F3B0);
        v37 = (*(v41 + 80) + 25) & ~*(v41 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v43;
        *(v38 + 24) = v40;
        sub_10012C154(v36, v38 + v37);

        static Transaction.asyncTask(name:block:)();

        sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_16:
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v40 = 3;
    goto LABEL_22;
  }

  if (v17 > 33)
  {
    if (v17 == 34)
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
      v40 = 5;
      goto LABEL_22;
    }

    if (v17 == 35)
    {
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      v40 = 7;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v17 == 11)
  {
    goto LABEL_16;
  }

  if (v17 == 16)
  {
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    v40 = 6;
    goto LABEL_22;
  }

LABEL_25:
  sub_10000B3A8(v49, &qword_101696920, &unk_10138B200);
  return sub_100007BAC(&v46);
}

uint64_t sub_1002598C8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1002598F0, a1, 0);
}

uint64_t sub_1002598F0()
{
  sub_100251FF8(*(v0 + 32), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100259978()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1002598C8(v4, v5, v0 + v3);
}

uint64_t sub_100259A6C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_100E73CFC(v4, v5, a1);
}

unint64_t *sub_100259B1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100259BE0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100259BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100258E34();
  *a1 = result;
  return result;
}

uint64_t sub_100259BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v74[0] = a2;
  v75 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v79 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v74 - v9;
  v10 = type metadata accessor for BeaconObservation(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v74 - v15;
  v17 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v18 = __chkstk_darwin(v17 - 8);
  v82 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = v74 - v20;
  v21 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v22 = __chkstk_darwin(v21 - 8);
  v84 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v91 = v74 - v25;
  __chkstk_darwin(v24);
  v101 = v74 - v26;
  v27 = type metadata accessor for UUID();
  result = __chkstk_darwin(v27);
  v104 = v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = 0;
  v31 = 0;
  v32 = *(a3 + 56);
  v78 = a3 + 56;
  v33 = 1 << *(a3 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v77 = (v33 + 63) >> 6;
  v94 = v29 + 16;
  v88 = (v11 + 56);
  v105 = v11;
  v85 = (v6 + 16);
  v99 = (v6 + 56);
  v100 = (v11 + 48);
  v97 = (v6 + 48);
  v81 = (v6 + 32);
  v80 = (v6 + 8);
  v95 = v29;
  v87 = (v29 + 8);
  v106 = v10;
  v83 = v5;
  v89 = result;
  v90 = a3;
  while (1)
  {
    while (1)
    {
      if (!v35)
      {
        v37 = v31;
        while (1)
        {
          v31 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_36;
          }

          if (v31 >= v77)
          {
            goto LABEL_34;
          }

          v38 = *(v78 + 8 * v31);
          ++v37;
          if (v38)
          {
            v36 = __clz(__rbit64(v38));
            v103 = (v38 - 1) & v38;
            goto LABEL_12;
          }
        }
      }

      v36 = __clz(__rbit64(v35));
      v103 = (v35 - 1) & v35;
LABEL_12:
      v39 = v36 | (v31 << 6);
      v40 = *(a3 + 48);
      v41 = *(v95 + 72);
      v86 = v39;
      v42 = v104;
      (*(v95 + 16))(v104, v40 + v41 * v39, v27);
      v43 = sub_100035730(v42, sub_100023854, 0);
      v44 = v43[2];
      if (v44)
      {
        v45 = v43 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        result = sub_10025B334(v45, v16, type metadata accessor for BeaconObservation);
        if (v44 == 1)
        {
LABEL_14:
          v46 = v92;
          sub_10002A9D4(v16, v92, type metadata accessor for BeaconObservation);
          v10 = v106;
          (*v88)(v46, 0, 1, v106);

          v5 = v83;
          goto LABEL_16;
        }

        v64 = 1;
        while (1)
        {
          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          sub_10025B334(v45 + *(v105 + 72) * v64, v14, type metadata accessor for BeaconObservation);
          if (static Date.< infix(_:_:)())
          {
            sub_1000326A4(v16, type metadata accessor for BeaconObservation);
            result = sub_10002A9D4(v14, v16, type metadata accessor for BeaconObservation);
          }

          else
          {
            result = sub_1000326A4(v14, type metadata accessor for BeaconObservation);
          }

          ++v64;
          if (v65 == v44)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v46 = v92;
      (*v88)(v92, 1, 1, v10);

LABEL_16:
      v98 = *v100;
      if ((v98)(v46, 1, v10) == 1)
      {
        sub_10000B3A8(v46, &qword_1016A42E0, &qword_1013B0010);
        v47 = 1;
        v48 = v101;
      }

      else
      {
        v49 = v46 + *(v10 + 20);
        v48 = v101;
        (*v85)(v101, v49, v5);
        sub_1000326A4(v46, type metadata accessor for BeaconObservation);
        v47 = 0;
      }

      v50 = *v99;
      (*v99)(v48, v47, 1, v5);
      v51 = v91;
      sub_1000D2A70(v48, v91, &unk_101696900, &unk_10138B1E0);
      v96 = *v97;
      if (v96(v51, 1, v5) != 1)
      {
        break;
      }

      sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v51, &unk_101696900, &unk_10138B1E0);
      v27 = v89;
      result = (*v87)(v104, v89);
      v10 = v106;
      a3 = v90;
      v35 = v103;
    }

    v52 = *v81;
    (*v81)(v93, v51, v5);
    v53 = swift_allocObject();
    *(v53 + 16) = &off_101608510;
    v54 = v5;
    v55 = sub_100035730(v104, sub_10025B818, v53);

    v56 = v82;
    sub_1012BB138(v55, v82);
    v57 = v56;

    v58 = v56;
    v59 = v106;
    if ((v98)(v58, 1, v106) == 1)
    {
      sub_10000B3A8(v57, &qword_1016A42E0, &qword_1013B0010);
      v60 = v84;
      v50(v84, 1, 1, v54);
      v61 = v79;
      static Date.distantPast.getter();
      v62 = v96(v60, 1, v54);
      v5 = v54;
      v63 = v90;
      if (v62 != 1)
      {
        sub_10000B3A8(v84, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v66 = *v85;
      v67 = v57 + *(v59 + 20);
      v98 = v52;
      v68 = v84;
      v66(v84, v67, v54);
      sub_1000326A4(v57, type metadata accessor for BeaconObservation);
      v50(v68, 0, 1, v54);
      v61 = v79;
      v98(v79, v68, v54);
      v5 = v54;
      v63 = v90;
    }

    v69 = v93;
    v70 = static Date.> infix(_:_:)();
    v71 = v61;
    v72 = *v80;
    (*v80)(v71, v5);
    v72(v69, v5);
    sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
    v27 = v89;
    result = (*v87)(v104, v89);
    v35 = v103;
    a3 = v63;
    v10 = v106;
    if (v70)
    {
      *(v75 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
      if (__OFADD__(v76++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_34:

  return sub_10060AF64(v75, v74[0], v76, a3);
}

uint64_t sub_10025A67C(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for Date();
  v4 = *(v86 - 8);
  v5 = __chkstk_darwin(v86);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v65 - v7;
  v8 = type metadata accessor for BeaconObservation(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v16 = __chkstk_darwin(v15 - 8);
  v73 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v65 - v18;
  v19 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = __chkstk_darwin(v19 - 8);
  v76 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v84 = &v65 - v23;
  __chkstk_darwin(v22);
  v91 = &v65 - v24;
  v97 = type metadata accessor for UUID();
  v25 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *(a1 + 32);
  v27 = v26 & 0x3F;
  v66 = ((1 << v26) + 63) >> 6;
  v28 = 8 * v66;
  v94 = a2;

  v99 = v9;
  if (v27 > 0xD)
  {
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v63 = swift_slowAlloc();
      v64 = v94;

      v61 = sub_100259B1C(v63, v66, a1, v64);

      return v61;
    }

    v9 = v99;
  }

  v65 = &v65;
  __chkstk_darwin(v29);
  v67 = &v65 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v67, v28);
  v68 = 0;
  v30 = 0;
  v31 = *(a1 + 56);
  v70 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v69 = (v32 + 63) >> 6;
  v87 = v25 + 16;
  v81 = (v9 + 56);
  v92 = (v9 + 48);
  v77 = (v4 + 16);
  v93 = (v4 + 56);
  v88 = (v4 + 48);
  v72 = (v4 + 32);
  v71 = (v4 + 8);
  v80 = (v25 + 8);
  v35 = a1;
  v28 = v9;
  a1 = v96;
  v36 = v91;
  v79 = v8;
  v82 = v25;
  v83 = v35;
  while (1)
  {
    while (1)
    {
      if (!v34)
      {
        v38 = v30;
        while (1)
        {
          v30 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_38;
          }

          if (v30 >= v69)
          {
            goto LABEL_35;
          }

          v39 = *(v70 + 8 * v30);
          ++v38;
          if (v39)
          {
            v37 = __clz(__rbit64(v39));
            v95 = (v39 - 1) & v39;
            goto LABEL_13;
          }
        }
      }

      v37 = __clz(__rbit64(v34));
      v95 = (v34 - 1) & v34;
LABEL_13:
      v40 = v37 | (v30 << 6);
      v41 = *(v35 + 48);
      v42 = *(v25 + 72);
      v78 = v40;
      v43 = v98;
      (*(v25 + 16))(v98, v41 + v42 * v40, v97);
      v44 = sub_100035730(v43, sub_100023854, 0);
      v4 = v44;
      v25 = v44[2];
      if (v25)
      {
        v28 = v44 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        sub_10025B334(v28, v14, type metadata accessor for BeaconObservation);
        if (v25 == 1)
        {
LABEL_15:
          a1 = v96;
          sub_10002A9D4(v14, v96, type metadata accessor for BeaconObservation);
          (*v81)(a1, 0, 1, v8);

          v36 = v91;
          goto LABEL_17;
        }

        a1 = 1;
        while (1)
        {
          v54 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          sub_10025B334(v28 + *(v99 + 72) * a1, v12, type metadata accessor for BeaconObservation);
          if (static Date.< infix(_:_:)())
          {
            sub_1000326A4(v14, type metadata accessor for BeaconObservation);
            sub_10002A9D4(v12, v14, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_1000326A4(v12, type metadata accessor for BeaconObservation);
          }

          ++a1;
          if (v54 == v25)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      (*v81)(a1, 1, 1, v8);

LABEL_17:
      v89 = *v92;
      v45 = v89(a1, 1, v8);
      v46 = v86;
      v4 = v84;
      if (v45 == 1)
      {
        sub_10000B3A8(a1, &qword_1016A42E0, &qword_1013B0010);
        v47 = 1;
      }

      else
      {
        (*v77)(v36, a1 + *(v8 + 20), v86);
        sub_1000326A4(a1, type metadata accessor for BeaconObservation);
        v47 = 0;
      }

      v90 = *v93;
      v90(v36, v47, 1, v46);
      sub_1000D2A70(v36, v4, &unk_101696900, &unk_10138B1E0);
      v48 = *v88;
      if ((*v88)(v4, 1, v46) != 1)
      {
        break;
      }

      sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
      (*v80)(v98, v97);
      v25 = v82;
      v35 = v83;
      v34 = v95;
      a1 = v96;
      v8 = v79;
      v28 = v99;
    }

    v75 = *v72;
    v75(v85, v4, v46);
    v49 = swift_allocObject();
    *(v49 + 16) = &off_101608510;
    v50 = sub_100035730(v98, sub_10025B3BC, v49);

    v51 = v73;
    sub_1012BB138(v50, v73);

    v8 = v79;
    if (v89(v51, 1, v79) == 1)
    {
      sub_10000B3A8(v51, &qword_1016A42E0, &qword_1013B0010);
      v52 = v76;
      v90(v76, 1, 1, v46);
      v53 = v74;
      static Date.distantPast.getter();
      if (v48(v52, 1, v46) != 1)
      {
        sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v55 = v76;
      (*v77)(v76, v51 + *(v8 + 20), v46);
      sub_1000326A4(v51, type metadata accessor for BeaconObservation);
      v90(v55, 0, 1, v46);
      v53 = v74;
      v75(v74, v55, v46);
    }

    v56 = v85;
    v57 = static Date.> infix(_:_:)();
    v58 = v53;
    v4 = v57;
    v59 = *v71;
    (*v71)(v58, v46);
    v59(v56, v46);
    v36 = v91;
    sub_10000B3A8(v91, &unk_101696900, &unk_10138B1E0);
    (*v80)(v98, v97);
    v25 = v82;
    v35 = v83;
    v28 = v99;
    v34 = v95;
    a1 = v96;
    if (v4)
    {
      *&v67[(v78 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v78;
      if (__OFADD__(v68++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  v61 = sub_10060AF64(v67, v66, v68, v35);

  return v61;
}

uint64_t sub_10025B274(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100010F48(a1, v4);
}

uint64_t sub_10025B334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025B3C4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);

  return sub_100252948(v4, v0 + v2, v3);
}

uint64_t sub_10025B460()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_100252D98(v4, v5, v0 + v3);
}

uint64_t sub_10025B558()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10024F8AC(v0);
}

uint64_t sub_10025B5E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10025B654()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1002511EC(v0);
}

uint64_t type metadata accessor for UpdateDeviceState(uint64_t a1)
{
  result = qword_10169B808;
  if (!qword_10169B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025B758(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100157BAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10025B81C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  sub_10025C8CC(a1, a3, a4, a5, a6);
}

uint64_t sub_10025B880(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_1016950C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C408;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Failed to submit nfc tap info due to. Error - %@", 48, 2, v6);

  return a2(a1);
}

uint64_t sub_10025B9C0(char *a1, void (*a2)(void), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = type metadata accessor for ServerStatusCode();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NFCTapResponse(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v38 = a1;
  v13 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v15 = v14;
  sub_10025DB6C(&qword_10169B850, type metadata accessor for NFCTapResponse, &unk_101393F3C);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v38 = v6;
  v16 = v37;
  sub_100016590(v13, v15);
  v17 = static os_log_type_t.default.getter();
  if (qword_1016950C0 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C408;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  sub_10025DBB4(v12, v10, type metadata accessor for NFCTapResponse);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "subscribeNFCTapInfo: NFCTapResponse %@.", 39, 2, v19);

  v23 = v16;
  v24 = *(v16 + 16);
  v25 = v38;
  v24(v38, &v12[*(v7 + 20)], v4);
  v26 = (*(v23 + 88))(v25, v4);
  if (v26 == enum case for ServerStatusCode.success(_:))
  {
    v27 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v18, "Successfully submitted nfc tap info.", 36, 2, _swiftEmptyArrayStorage);
    (v40)(0);

    return sub_100018C40(v12, type metadata accessor for NFCTapResponse);
  }

  if (v26 == enum case for ServerStatusCode.badRequest(_:))
  {
    v28 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v18, "Failed to submit nfc tap info: badRequest.", 42, 2, _swiftEmptyArrayStorage);
    sub_10025DC1C();
    v29 = swift_allocError();
    *v30 = 0;
LABEL_9:
    (v40)(v29);

    return sub_100018C40(v12, type metadata accessor for NFCTapResponse);
  }

  v31 = enum case for ServerStatusCode.unauthorized(_:);
  v32 = v26;
  v33 = static os_log_type_t.error.getter();
  if (v32 == v31)
  {
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v18, "Failed to submit nfc tap info: unauthorized.", 44, 2, _swiftEmptyArrayStorage);
    sub_10025DC1C();
    v29 = swift_allocError();
    *v34 = 1;
    goto LABEL_9;
  }

  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v18, "Failed to submit nfc tap info: serverError.", 43, 2, _swiftEmptyArrayStorage);
  sub_10025DC1C();
  swift_allocError();
  *v36 = 2;
  v40();

  sub_100018C40(v12, type metadata accessor for NFCTapResponse);
  return (*(v23 + 8))(v25, v4);
}

void *sub_10025C054(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedKey(0);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = __chkstk_darwin(v2);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v35 - v5);
  v43 = type metadata accessor for DateInterval();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = v10[13];
  v12 = (a1 + v10[12]);
  v13 = *v12;
  v41 = v12[1];
  v42 = v13;
  v14 = a1 + v11;
  v15 = *(a1 + v11);
  v39 = *(v14 + 8);
  v40 = v15;
  v35 = v10;
  v16 = v10[9];
  v38 = a1;
  v17 = (a1 + v16);
  v18 = *v17;
  v19 = v17[1];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *&v47[0] = 0x7365547265646E75;
  *(&v47[0] + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  v45 = sub_100A7563C(v18, v19, 1);
  v46 = v20;
  v21 = (v7 + 16);
  v22 = (v7 + 8);
  v23 = 1;
  v24 = _swiftEmptyArrayStorage;
  do
  {
    v25 = objc_autoreleasePoolPush();
    v27 = v45;
    v26 = v46;
    sub_100017D5C(v45, v46);
    sub_100A76468(v42, v41, v40, v39, v27, v26, 1, &v45, v47);
    sub_100016590(v27, v26);
    sub_1008849E8(v38 + v35[8], v23, 0xFuLL, v9);
    v28 = v37;
    (*v21)(v6 + *(v37 + 20), v9, v43);
    *v6 = v23;
    v29 = (v6 + *(v28 + 24));
    v30 = v47[2];
    v31 = v47[0];
    v29[1] = v47[1];
    v29[2] = v30;
    *v29 = v31;
    sub_10025DBB4(v6, v44, type metadata accessor for TimeBasedKey);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100A5BDF0(0, v24[2] + 1, 1, v24);
    }

    v33 = v24[2];
    v32 = v24[3];
    if (v33 >= v32 >> 1)
    {
      v24 = sub_100A5BDF0((v32 > 1), v33 + 1, 1, v24);
    }

    sub_100018C40(v6, type metadata accessor for TimeBasedKey);
    (*v22)(v9, v43);
    v24[2] = v33 + 1;
    sub_10025DC70(v44, v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33);
    objc_autoreleasePoolPop(v25);
    ++v23;
  }

  while (v23 != 21);
  sub_100016590(v45, v46);
  return v24;
}

uint64_t sub_10025C550(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  v6 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for FMNAccountType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NFCTapEndPoint(0);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = enum case for FMNAccountType.searchParty(_:);
  v21 = *(v10 + 104);
  v21(v12, enum case for FMNAccountType.searchParty(_:), v9);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v19 = sub_1010B32C8(v12);
  v21(&v19[*(v14 + 28)], v20, v9);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v24 = swift_allocObject();
  sub_10025DBB4(v19, v17, type metadata accessor for NFCTapEndPoint);
  v25 = sub_1006200F4(v17, v23, v24);
  sub_100018C40(v19, type metadata accessor for NFCTapEndPoint);
  sub_1004FC3CC(v30, v31, v32, 0, v25);

  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v33;
  *(v26 + 24) = a5;

  Future.addFailure(block:)();

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a5;

  Future.addSuccess(block:)();
}

uint64_t sub_10025C8CC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v139 = type metadata accessor for NFCTapRequestContent(0);
  v10 = __chkstk_darwin(v139);
  v137 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v133 - v12;
  v13 = type metadata accessor for UUID();
  v143 = *(v13 - 8);
  __chkstk_darwin(v13);
  v142 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v144);
  v145 = (&v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for Date();
  v16 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for HashAlgorithm();
  v18 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TimeBasedKey(0);
  v20 = *(v161 - 8);
  __chkstk_darwin(v161);
  v166 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;

  v23 = a3;

  v146 = a1;
  v24 = sub_10025C054(a1);
  v25 = v24[2];
  if (v25)
  {
    v149 = v16;
    v141 = v13;
    v134 = v23;
    v138 = v22;
    v135 = a2;
    v136 = a4;
    v170 = _swiftEmptyArrayStorage;
    v23 = &v170;
    v26 = v24;
    v155 = v25;
    sub_1011244D8(0, v25, 0);
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = v170;
    v158 = v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v154 = enum case for HashAlgorithm.sha256(_:);
    v153 = (v18 + 104);
    v152 = (v18 + 8);
    v151 = xmmword_10138BBE0;
    v156 = v26;
    v157 = v20;
    do
    {
      if (v28 >= v27[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v31 = v166;
      sub_10025DBB4(&v158[*(v20 + 72) * v28], v166, type metadata accessor for TimeBasedKey);
      v32 = sub_100A7A194(*(v31 + *(v161 + 24) + 16), *(v31 + *(v161 + 24) + 24), 0, 0);
      if (v29)
      {
        goto LABEL_48;
      }

      v13 = sub_100A7829C(v32, 0, 2);
      v23 = v33;
      CCECCryptorRelease();
      v34 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_52;
        }

        v37 = *(v13 + 16);
        v36 = *(v13 + 24);
        v38 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v38)
        {
          goto LABEL_35;
        }
      }

      else if (v34)
      {
        LODWORD(v35) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_36;
        }

        v35 = v35;
      }

      else
      {
        v35 = BYTE6(v23);
      }

      v164 = 0;
      if (v35 != 28)
      {
        if (v34 == 1)
        {
          LODWORD(v34) = HIDWORD(v13) - v13;
          if (!__OFSUB__(HIDWORD(v13), v13))
          {
            v29 = v34;
            goto LABEL_53;
          }

          __break(1u);
        }

        if (v34 != 2)
        {
          v29 = BYTE6(v23);
          goto LABEL_53;
        }

        v121 = *(v13 + 16);
        v120 = *(v13 + 24);
        v29 = v120 - v121;
        if (!__OFSUB__(v120, v121))
        {
          goto LABEL_53;
        }

        __break(1u);
LABEL_46:

        __break(1u);
LABEL_47:

        __break(1u);
LABEL_48:
        v122 = v29;
        v123 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v124 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_101385D80;
        v167 = v122;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v126 = String.init<A>(describing:)();
        v128 = v127;
        *(v125 + 56) = &type metadata for String;
        *(v125 + 64) = sub_100008C00();
        *(v125 + 32) = v126;
        *(v125 + 40) = v128;
        os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v124, "Error deriving advertisementKey: %@", 35, 2, v125);

        sub_1001BAF88();
        v129 = swift_allocError();
        *v130 = 0;
        swift_willThrow();

        while (1)
        {
          v167 = 0;
          v168 = 0xE000000000000000;
          v23 = &v167;
          _StringGuts.grow(_:)(35);
          v131._countAndFlagsBits = 0xD000000000000021;
          v131._object = 0x800000010134CB30;
          String.append(_:)(v131);
          v169[0] = v129;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_52:
          v29 = 0;
LABEL_53:
          sub_100018350();
          v129 = swift_allocError();
          *v132 = 28;
          *(v132 + 8) = v29;
          *(v132 + 16) = 0;
          swift_willThrow();
          sub_100016590(v13, v23);
        }
      }

      v163 = v28;
      v165 = v30;
      v40 = v159;
      v39 = v160;
      (*v153)(v159, v154, v160);
      v41 = Data.hash(algorithm:)();
      v43 = v42;
      sub_100016590(v13, v23);
      (*v152)(v40, v39);
      LODWORD(v162) = static os_log_type_t.info.getter();
      if (qword_1016950C0 != -1)
      {
        swift_once();
      }

      v44 = qword_10177C408;
      v150 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v45 = swift_allocObject();
      *(v45 + 16) = v151;
      v167 = v41;
      v168 = v43;
      sub_10025DB08();
      v46 = RawRepresentable<>.hexString.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      v49 = sub_100008C00();
      *(v45 + 64) = v49;
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      v169[0] = v41;
      v169[1] = v43;
      v23 = v169;
      v50 = RawRepresentable<>.base64EncodedString(options:)();
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v49;
      v51 = v49;
      *(v45 + 72) = v50;
      *(v45 + 80) = v52;
      v53 = v44;
      os_log(_:dso:log:_:_:)(v162, &_mh_execute_header, v44, "hashed: %@ - base64: %@.", 24, 2, v45);

      sub_100018C40(v166, type metadata accessor for TimeBasedKey);
      v30 = v165;
      v170 = v165;
      a4 = v165[2];
      v54 = v165[3];
      v13 = a4 + 1;
      if (a4 >= v54 >> 1)
      {
        v23 = &v170;
        sub_1011244D8((v54 > 1), a4 + 1, 1);
        v30 = v170;
      }

      v28 = v163 + 1;
      v30[2] = v13;
      v55 = &v30[2 * a4];
      v55[4] = v41;
      v55[5] = v43;
      v27 = v156;
      v29 = v164;
      v20 = v157;
    }

    while (v155 != v28);

    v56 = v147;
    static Date.trustedNow.getter(v147);
    Date.timeIntervalSince1970.getter();
    v58 = v57;
    v13 = *(v149 + 8);
    v149 += 8;
    (v13)(v56, v148);
    v59 = type metadata accessor for OwnedBeaconRecord(0);
    v60 = v146;
    v61 = v145;
    sub_10025DBB4(v146 + *(v59 + 24), v145, type metadata accessor for StableIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v61;
      v166 = v61[1];
      v63 = v61[2];
      v160 = v61[3];
      v161 = v63;
      v64 = v61[4];
      v162 = v61[5];
      v163 = v64;
      v65 = v143 + 16;
      v66 = v60 + *(v59 + 20);
      v159 = *(v143 + 16);
      (v159)(v142, v66, v141);
      v67 = sub_100907E70(_swiftEmptyArrayStorage);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = v67;
      sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
      v69 = v167;
      v70 = [objc_opt_self() currentDevice];
      if (!v70)
      {
        goto LABEL_46;
      }

      v71 = v70;
      v157 = v65;
      v158 = v62;
      v165 = v30;
      v72 = [v70 serverFriendlyDescription];

      if (!v72)
      {
        goto LABEL_47;
      }

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v69;
      sub_100FFACA0(v73, v75, 0xD000000000000011, 0x800000010134EA40, v76);
      v77 = v167;
      v78 = v147;
      Date.init()();
      v79 = Date.epoch.getter();
      (v13)(v78, v148);
      v167 = v79;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v77;
      sub_100FFACA0(v80, v82, 0xD000000000000015, 0x800000010134EA60, v83);
      v84 = v167;
      v167 = 1;
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v84;
      sub_100FFACA0(v85, v87, 0xD000000000000013, 0x800000010134EA80, v88);
      v89 = v167;
      v91 = sub_1008D9A78(v90);
      v93 = v92;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v89;
      sub_100FFACA0(v91, v93, 0x6567412D72657355, 0xEA0000000000746ELL, v94);
      v95 = v167;
      v96 = v140;
      v97 = v142;
      v98 = v141;
      (v159)(v140, v142, v141);
      v99 = v139;
      v100 = (v96 + *(v139 + 20));
      v101 = v160;
      *v100 = v161;
      v100[1] = v101;
      v102 = (v96 + v99[6]);
      v104 = v165;
      v103 = v166;
      *v102 = v158;
      v102[1] = v103;
      v105 = (v96 + v99[7]);
      v106 = v162;
      *v105 = v163;
      v105[1] = v106;
      v107 = (v96 + v99[8]);
      *v107 = v58;
      v107[1] = v104;
      type metadata accessor for JSONEncoder();
      swift_allocObject();

      JSONEncoder.init()();
      sub_10025DB6C(&qword_10169B848, type metadata accessor for NFCTapRequestContent, &unk_1013C4474);
      v108 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v29)
      {

        v110 = static os_log_type_t.error.getter();
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_101385D80;
        v166 = v95;
        sub_10025DBB4(v96, v137, type metadata accessor for NFCTapRequestContent);
        v112 = String.init<A>(describing:)();
        *(v111 + 56) = &type metadata for String;
        *(v111 + 64) = v51;
        *(v111 + 32) = v112;
        *(v111 + 40) = v113;
        os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, v53, "Failed to encode nfc tap request content %@", 43, 2, v111);

        sub_100018C40(v96, type metadata accessor for NFCTapRequestContent);
        (*(v143 + 8))(v97, v141);

        v114 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, v53, "Unable to init NFCTapRequest.", 29, 2, _swiftEmptyArrayStorage);
        static os_signpost_type_t.end.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        os_signpost(_:dso:log:name:signpostID:)();
        v115 = v136;
        swift_beginAccess();
        *(v115 + 16) = 0;
        dispatch_group_leave(v134);
      }

      else
      {
        v117 = v108;
        v118 = v109;

        sub_100018C40(v96, type metadata accessor for NFCTapRequestContent);
        (*(v143 + 8))(v97, v98);

        sub_100017D5C(v117, v118);

        sub_100016590(v117, v118);
        sub_10025C550(v95, v117, v118, sub_10025DAFC, v138);

        sub_100016590(v117, v118);
      }
    }

    else
    {

      static os_signpost_type_t.end.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:)();
      v116 = v136;
      swift_beginAccess();
      *(v116 + 16) = 0;
      dispatch_group_leave(v134);
      sub_100018C40(v61, type metadata accessor for StableIdentifier);
    }
  }

  else
  {

    static os_signpost_type_t.end.getter();
    if (qword_101695068 != -1)
    {
LABEL_37:
      swift_once();
    }

    os_signpost(_:dso:log:name:signpostID:)();
    swift_beginAccess();
    *(a4 + 16) = 0;
    dispatch_group_leave(v23);
  }
}

unint64_t sub_10025DB08()
{
  result = qword_10169BA70;
  if (!qword_10169BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BA70);
  }

  return result;
}

uint64_t sub_10025DB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025DBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10025DC1C()
{
  result = qword_10169B858;
  if (!qword_10169B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B858);
  }

  return result;
}

uint64_t sub_10025DC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025DCD4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v147 = a2;
  v139 = type metadata accessor for NFCTapRequestContent(0);
  v5 = __chkstk_darwin(v139);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v133 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for HashAlgorithm();
  v13 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for TimeBasedKey(0);
  v15 = *(v157 - 8);
  __chkstk_darwin(v157);
  v164 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v143);
  v144 = (&v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v146 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a1;
  v21 = sub_10025C054(a1);
  v22 = v21[2];
  if (v22)
  {
    v138 = v19;
    v142 = v18;
    v134 = v7;
    v141 = v12;
    v135 = v10;
    v136 = v9;
    v137 = a3;
    v168 = _swiftEmptyArrayStorage;
    v23 = &v168;
    v158 = v22;
    sub_1011244D8(0, v22, 0);
    v24 = 0;
    v25 = 0;
    v26 = v168;
    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v159 = v21;
    v154 = v21 + v27;
    v152 = enum case for HashAlgorithm.sha256(_:);
    v151 = (v13 + 104);
    v150 = (v13 + 8);
    v149 = xmmword_10138BBE0;
    v153 = v15;
    while (1)
    {
      v28 = v159[2];
      if (v24 >= v28)
      {
        break;
      }

      v29 = *(v15 + 72);
      v162 = v24;
      v30 = v164;
      sub_10025DBB4(&v154[v29 * v24], v164, type metadata accessor for TimeBasedKey);
      v31 = sub_100A7A194(*(v30 + *(v157 + 24) + 16), *(v30 + *(v157 + 24) + 24), 0, 0);
      if (v25)
      {
        goto LABEL_43;
      }

      v12 = sub_100A7829C(v31, 0, 2);
      v23 = v32;
      CCECCryptorRelease();
      v28 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_47;
        }

        v35 = *(v12 + 2);
        v34 = *(v12 + 3);
        v36 = __OFSUB__(v34, v35);
        v33 = v34 - v35;
        if (v36)
        {
          goto LABEL_31;
        }
      }

      else if (v28)
      {
        LODWORD(v33) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_32;
        }

        v33 = v33;
      }

      else
      {
        v33 = BYTE6(v23);
      }

      v161 = 0;
      if (v33 != 28)
      {
        goto LABEL_33;
      }

      v163 = v26;
      v38 = v155;
      v37 = v156;
      (*v151)(v155, v152, v156);
      v39 = Data.hash(algorithm:)();
      v41 = v40;
      sub_100016590(v12, v23);
      (*v150)(v38, v37);
      LODWORD(v160) = static os_log_type_t.info.getter();
      if (qword_1016950C0 != -1)
      {
        swift_once();
      }

      v42 = qword_10177C408;
      v148 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v43 = swift_allocObject();
      *(v43 + 16) = v149;
      v166 = v39;
      v167 = v41;
      sub_10025DB08();
      v44 = v39;
      v45 = RawRepresentable<>.hexString.getter();
      v47 = v46;
      *(v43 + 56) = &type metadata for String;
      v48 = sub_100008C00();
      *(v43 + 64) = v48;
      *(v43 + 32) = v45;
      *(v43 + 40) = v47;
      v165[0] = v39;
      v165[1] = v41;
      v23 = v165;
      v49 = RawRepresentable<>.base64EncodedString(options:)();
      *(v43 + 96) = &type metadata for String;
      *(v43 + 104) = v48;
      v50 = v48;
      *(v43 + 72) = v49;
      *(v43 + 80) = v51;
      v52 = v42;
      os_log(_:dso:log:_:_:)(v160, &_mh_execute_header, v42, "hashed: %@ - base64: %@.", 24, 2, v43);

      sub_100018C40(v164, type metadata accessor for TimeBasedKey);
      v26 = v163;
      v168 = v163;
      v54 = v163[2];
      v53 = v163[3];
      v12 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        v23 = &v168;
        sub_1011244D8((v53 > 1), v54 + 1, 1);
        v26 = v168;
      }

      v25 = v161;
      v24 = v162 + 1;
      v26[2] = v12;
      v55 = &v26[2 * v54];
      v55[4] = v44;
      v55[5] = v41;
      v15 = v153;
      if (v158 == v24)
      {

        v56 = v146;
        static Date.trustedNow.getter(v146);
        Date.timeIntervalSince1970.getter();
        v58 = v57;
        v12 = *(v138 + 8);
        (v12)(v56, v142);
        v59 = type metadata accessor for OwnedBeaconRecord(0);
        v60 = v145;
        v61 = v144;
        sub_10025DBB4(v145 + *(v59 + 24), v144, type metadata accessor for StableIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          sub_10025DC1C();
          swift_allocError();
          *v117 = 4;
          v147();

          return sub_100018C40(v61, type metadata accessor for StableIdentifier);
        }

        v163 = v26;
        v62 = *v61;
        v63 = v61[1];
        v64 = v61[2];
        v159 = v61[3];
        v160 = v64;
        v65 = v61[5];
        v164 = v61[4];
        v162 = v65;
        v66 = v60 + *(v59 + 20);
        v157 = *(v135 + 16);
        v158 = v135 + 16;
        (v157)(v141, v66, v136);
        v67 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = v67;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v69 = v166;
        v70 = [objc_opt_self() currentDevice];
        if (v70)
        {
          v71 = v70;
          v155 = v63;
          v156 = v62;
          v72 = [v70 serverFriendlyDescription];

          if (v72)
          {
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v69;
            sub_100FFACA0(v73, v75, 0xD000000000000011, 0x800000010134EA40, v76);
            v77 = v166;
            v78 = v146;
            Date.init()();
            v79 = Date.epoch.getter();
            (v12)(v78, v142);
            v166 = v79;
            v80 = dispatch thunk of CustomStringConvertible.description.getter();
            v82 = v81;
            v83 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v77;
            sub_100FFACA0(v80, v82, 0xD000000000000015, 0x800000010134EA60, v83);
            v84 = v166;
            v166 = 1;
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            v87 = v86;
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v84;
            sub_100FFACA0(v85, v87, 0xD000000000000013, 0x800000010134EA80, v88);
            v89 = v166;
            v91 = sub_1008D9A78(v90);
            v93 = v92;
            v94 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v89;
            sub_100FFACA0(v91, v93, 0x6567412D72657355, 0xEA0000000000746ELL, v94);
            v95 = v166;
            v96 = v140;
            v97 = v136;
            (v157)(v140, v141, v136);
            v98 = v139;
            v99 = (v96 + *(v139 + 20));
            v100 = v159;
            *v99 = v160;
            v99[1] = v100;
            v101 = (v96 + v98[6]);
            v102 = v155;
            *v101 = v156;
            v101[1] = v102;
            v103 = (v96 + v98[7]);
            v104 = v163;
            v105 = v162;
            *v103 = v164;
            v103[1] = v105;
            v106 = (v96 + v98[8]);
            *v106 = v58;
            v106[1] = v104;
            type metadata accessor for JSONEncoder();
            swift_allocObject();

            JSONEncoder.init()();
            sub_10025DB6C(&qword_10169B848, type metadata accessor for NFCTapRequestContent, &unk_1013C4474);
            v107 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            if (v25)
            {

              v109 = static os_log_type_t.error.getter();
              v110 = swift_allocObject();
              *(v110 + 16) = xmmword_101385D80;
              v164 = v95;
              sub_10025DBB4(v96, v134, type metadata accessor for NFCTapRequestContent);
              v111 = String.init<A>(describing:)();
              *(v110 + 56) = &type metadata for String;
              *(v110 + 64) = v50;
              *(v110 + 32) = v111;
              *(v110 + 40) = v112;
              os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, v52, "Failed to encode nfc tap request content %@", 43, 2, v110);

              sub_100018C40(v96, type metadata accessor for NFCTapRequestContent);
              (*(v135 + 8))(v141, v97);

              v113 = static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)(v113, &_mh_execute_header, v52, "Unable to init NFCTapRequest.", 29, 2, _swiftEmptyArrayStorage);
              sub_10025ED18();
              swift_allocError();
              *v114 = 0;
              v147();
            }

            else
            {
              v118 = v107;
              v119 = v108;

              sub_100018C40(v96, type metadata accessor for NFCTapRequestContent);
              (*(v135 + 8))(v141, v97);

              sub_100017D5C(v118, v119);

              sub_100016590(v118, v119);
              sub_10025C550(v95, v118, v119, v147, v137);

              return sub_100016590(v118, v119);
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          v122 = v25;
          v123 = static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          v124 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v125 = swift_allocObject();
          *(v125 + 16) = xmmword_101385D80;
          v166 = v122;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v126 = String.init<A>(describing:)();
          v128 = v127;
          *(v125 + 56) = &type metadata for String;
          *(v125 + 64) = sub_100008C00();
          *(v125 + 32) = v126;
          *(v125 + 40) = v128;
          os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v124, "Error deriving advertisementKey: %@", 35, 2, v125);

          sub_1001BAF88();
          v129 = swift_allocError();
          *v130 = 0;
          swift_willThrow();

          while (1)
          {
            v166 = 0;
            v167 = 0xE000000000000000;
            v23 = &v166;
            _StringGuts.grow(_:)(35);
            v131._countAndFlagsBits = 0xD000000000000021;
            v131._object = 0x800000010134CB30;
            String.append(_:)(v131);
            v165[0] = v129;
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_47:
            v25 = 0;
LABEL_48:
            sub_100018350();
            v129 = swift_allocError();
            *v132 = 28;
            *(v132 + 8) = v25;
            *(v132 + 16) = 0;
            swift_willThrow();
            sub_100016590(v12, v23);
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (v28 == 1)
    {
      LODWORD(v28) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        v25 = v28;
        goto LABEL_48;
      }

      __break(1u);
    }

    if (v28 != 2)
    {
      v25 = BYTE6(v23);
      goto LABEL_48;
    }

    v120 = *(v12 + 2);
    v121 = *(v12 + 3);
    v25 = v121 - v120;
    if (!__OFSUB__(v121, v120))
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_41;
  }

  sub_10025DC1C();
  swift_allocError();
  *v116 = 3;
  v147();
}

unint64_t sub_10025ED18()
{
  result = qword_10169B860;
  if (!qword_10169B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B860);
  }

  return result;
}

unint64_t sub_10025ED80()
{
  result = qword_10169B868;
  if (!qword_10169B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B868);
  }

  return result;
}

uint64_t sub_10025EDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D2A70(a3, v25 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
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

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
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

uint64_t sub_10025F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D2A70(a3, v25 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
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

      sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
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

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10025F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D2A70(a3, v25 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
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

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
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

uint64_t sub_10025F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D2A70(a3, v25 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
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

      sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
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

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10025F9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D2A70(a3, v25 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
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
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for WorkItemQueue.WorkItem();

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

      sub_10000B3A8(v25[0], &qword_101698C00, &qword_10138B570);

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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for WorkItemQueue.WorkItem();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10025FD00(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  v3 = __chkstk_darwin(v2 - 8);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v37 - v5;
  v7 = sub_1000BC4D4(&qword_10169BAB0, &qword_1013956D0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_1000BC4D4(&qword_10169BAB8, &qword_1013956D8);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v40 = a1;
  *&v41 = a1;

  sub_1000BC4D4(&qword_10169BAC0, &qword_1013956E0);
  sub_1000BC4D4(&qword_10169BA98, &qword_1013956A0);
  if (swift_dynamicCast())
  {
    sub_10000A748(v42, v44);
    sub_1000035D0(v44, v44[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v42[0] = v41;
    sub_100007BAC(v44);
    goto LABEL_42;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v13 = sub_10000B3A8(v42, &qword_10169BAA0, &qword_1013956A8);
  v42[0] = xmmword_10138C660;
  __chkstk_darwin(v13);
  v37[-2] = &v40;
  sub_10026792C(sub_10026968C, &v37[-4]);
  v14 = *&v9[*(v7 + 48)];
  sub_1000D2AD8(v9, v12, &qword_10169BAB8, &qword_1013956D8);
  v15 = *(&v42[0] + 1) >> 62;
  if ((*(&v42[0] + 1) >> 62) <= 1)
  {
    if (!v15)
    {
      if (v14 == BYTE14(v42[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v42[0]), v42[0]))
    {
      goto LABEL_46;
    }

    if (v14 != DWORD1(v42[0]) - LODWORD(v42[0]))
    {
LABEL_13:
      if (v15 == 2)
      {
        v20 = *(*&v42[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&v42[0] >> 32;
      }

      else
      {
        v20 = BYTE14(v42[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v37[0] = 0;
    v37[1] = a1;
    v21 = 0;
    memset(v44, 0, 15);
    v22 = *(v10 + 44);
LABEL_19:
    v38 = v21;
    while (1)
    {
      sub_1000D2A70(&v12[v22], v6, &qword_10169BAA8, &unk_10139FDB0);
      v24 = type metadata accessor for Data.Iterator();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      v27 = v26(v6, 1, v24);
      sub_10000B3A8(v6, &qword_10169BAA8, &unk_10139FDB0);
      if (v27 != 1)
      {
        if (v26(&v12[v22], 1, v24) == 1)
        {
          goto LABEL_48;
        }

        sub_100267678(&qword_10169BAC8, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
        dispatch thunk of IteratorProtocol.next()();
        if (BYTE1(v41) != 1)
        {
          v34 = v38;
          *(v44 + v38) = v41;
          v21 = (v34 + 1);
          if ((v21 >> 8))
          {
            goto LABEL_47;
          }

          if ((v34 + 1) == 14)
          {
            *&v41 = v44[0];
            *(&v41 + 6) = *(v44 + 6);
            Data._Representation.append(contentsOf:)();
            v21 = 0;
          }

          goto LABEL_19;
        }
      }

      v28 = *(v12 + 1);
      v29 = *(*v12 + 16);
      if (v28 == v29)
      {
        if (v38)
        {
          *&v41 = v44[0];
          *(&v41 + 6) = *(v44 + 6);
          Data._Representation.append(contentsOf:)();
        }

        sub_10000B3A8(v12, &qword_10169BAB8, &qword_1013956D8);
        goto LABEL_42;
      }

      if (v28 >= v29)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v30 = *v12 + 16 * v28;
      v31 = *(v30 + 32);
      v32 = *(v30 + 40);
      *(v12 + 1) = v28 + 1;
      v33 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v33 == 2)
        {
LABEL_20:
          sub_100017D5C(v31, v32);
        }
      }

      else if (v33)
      {
        goto LABEL_20;
      }

      v23 = v39;
      Data.Iterator.init(_:at:)();
      (*(v25 + 56))(v23, 0, 1, v24);
      sub_1002696E4(v23, &v12[v22]);
    }
  }

  if (v15 == 2)
  {
    v17 = *(*&v42[0] + 16);
    v16 = *(*&v42[0] + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (v18)
    {
      goto LABEL_45;
    }

    if (v14 != v19)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v20 = 0;
LABEL_40:
  if (v20 < v14)
  {
    goto LABEL_44;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000B3A8(v12, &qword_10169BAB8, &qword_1013956D8);
LABEL_42:
  v35 = v42[0];
  sub_100017D5C(*&v42[0], *(&v42[0] + 1));

  sub_100016590(v35, *(&v35 + 1));
  return v35;
}

uint64_t sub_100260364(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_1000BC4D4(&qword_10169BA98, &qword_1013956A0);
  if (swift_dynamicCast())
  {
    sub_10000A748(__src, &v43);
    sub_1000035D0(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_100007BAC(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000B3A8(__src, &qword_10169BAA0, &qword_1013956A8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_100267864(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100268D94(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_100267BDC(sub_10026954C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1010DF3C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1010DF3C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100006654(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100006654(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100017D5C(*&__src[0], *(&__src[0] + 1));

  sub_100016590(v32, *(&v32 + 1));
  return v32;
}

void *sub_100260884(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for UnsafeMutableRawBufferPointer;
  v7[4] = &protocol witness table for UnsafeMutableRawBufferPointer;
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_1000035D0(v7, &type metadata for UnsafeMutableRawBufferPointer);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_100268BDC(*v2, v4);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  sub_100007BAC(v7);
  return v3;
}

uint64_t sub_100260984(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000035D0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_100268BDC(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100268C94(v3, v4);
    }

    else
    {
      v6 = sub_100268D10(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100007BAC(v8);
  return v6;
}

uint64_t sub_100260A40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A7D8);
  sub_1000076D4(v0, qword_10177A7D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100260AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000035;
  v3 = *a1;
  v4 = "vertisementcache.access";
  if (v3 == 1)
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (v3 == 1)
  {
    v6 = "vertisementcache.access";
  }

  else
  {
    v6 = "vertisementcache.write";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000037;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ss";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000036;
  }

  else
  {
    v4 = "vertisementcache.write";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000037;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ss";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100260B98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100260C30(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100260CB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100260D48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100268F10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100260D78()
{
  v35 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error inserting observedAdvertisement: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    v1 = *(v0 + 96);
  }

  else
  {
  }

  v6 = *(v0 + 80);

  sub_100018CA0(v6, type metadata accessor for ObservedAdvertisement);
  v7 = *(v0 + 104);
  if (v7 == *(v0 + 88))
  {
LABEL_5:
    (*(v0 + 24))(0);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    while (1)
    {
      v10 = *(v0 + 16);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v11 = *(v10 + 8 * v7 + 32);
      }

      *(v0 + 96) = v11;
      *(v0 + 104) = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v12 = *(v0 + 56);
      v13 = *(v0 + 64);
      v14 = *(v0 + 48);
      v6 = v11;
      sub_1000166F0(v6, 1, v14);
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        break;
      }

      sub_10000B3A8(*(v0 + 48), &unk_10169BB50, &unk_101395760);
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177A7D8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Error inserting observedAdvertisement: could not convert to ObservedAdvertisement.", v18, 2u);
      }

      v7 = *(v0 + 104);
      if (v7 == *(v0 + 88))
      {
        goto LABEL_5;
      }
    }

    sub_10001854C(*(v0 + 48), *(v0 + 80), type metadata accessor for ObservedAdvertisement);
    if (qword_1016944F0 == -1)
    {
      goto LABEL_21;
    }

LABEL_29:
    swift_once();
LABEL_21:
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = type metadata accessor for Logger();
    *(v0 + 112) = sub_1000076D4(v21, qword_10177A7D8);
    sub_10001861C(v19, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 72);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = sub_100018680();
      v30 = v29;
      sub_100018CA0(v25, type metadata accessor for ObservedAdvertisement);
      v31 = sub_1000136BC(v28, v30, &v34);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "observedAdvertisement: %s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100018CA0(v25, type metadata accessor for ObservedAdvertisement);
    }

    [v6 refreshGeotag];
    [v6 observationValue];
    v32 = swift_task_alloc();
    *(v0 + 120) = v32;
    *v32 = v0;
    v32[1] = sub_10001DDBC;
    v33 = *(v0 + 80);

    return sub_100019FF0(v33);
  }
}

void sub_100261434(uint64_t a1, char a2, void (*a3)(void))
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    v24 = v6;
    swift_once();
    v6 = v24;
  }

  v7 = qword_10177C360;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C360, "Received beaconPayloads search response.", 40, 2, _swiftEmptyArrayStorage);
  v8 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_101385D80;
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v10[7] = &type metadata for String;
    v10[8] = sub_100008C00();
    v10[4] = v11;
    v10[5] = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v7, "Error reading cached beacon: %@", 31, 2, v10);

    v14 = [objc_allocWithZone(SPSearchResultMarker) init];
    v15 = objc_allocWithZone(SPBeaconPayloadCacheSearchResult);
    swift_errorRetain();
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = _convertErrorToNSError(_:)();
    sub_1001DB7B8(a1, 1);
    v18 = [v15 initWithFileURLs:isa searchResultMarker:v14 error:v17];
  }

  else
  {
    v19 = *(a1 + 16);
    *(v9 + 56) = &type metadata for Int;
    *(v9 + 64) = &protocol witness table for Int;
    *(v9 + 32) = v19;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v7, "Received cached beaconPayloads: %i", v25);

    v20 = [objc_allocWithZone(SPSearchResultMarker) init];
    v21 = objc_allocWithZone(SPBeaconPayloadCacheSearchResult);
    type metadata accessor for URL();
    v22 = Array._bridgeToObjectiveC()().super.isa;
    v18 = [v21 initWithFileURLs:v22 searchResultMarker:v20 error:0];
  }

  v23 = v18;
  a3();
}

uint64_t sub_100261DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_100261E40;

  return daemon.getter();
}

uint64_t sub_100261E40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100267678(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10026201C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026201C(uint64_t a1)
{
  *(*v2 + 56) = a1;

  if (v1)
  {

    v3 = sub_100262620;
  }

  else
  {

    v3 = sub_10026216C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026216C()
{

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100262208;

  return sub_1010CCD2C();
}

uint64_t sub_100262208()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10026245C;
  }

  else
  {

    v2 = sub_100262324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100262324()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due command.", v4, 2u);
  }

  v5 = *(v0 + 16);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10026245C()
{

  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to clear observations due to command, error: %@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[9];
  v8 = v0[2];

  swift_errorRetain();
  v8(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100262620()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due command.", v4, 2u);
  }

  v5 = *(v0 + 16);

  v5(0);
  v6 = *(v0 + 8);

  return v6();
}

id sub_1002628AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisementCacheTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100262918()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = type metadata accessor for AdvertisementCacheTrampoline();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation];
    *v5 = v0;
    *(v5 + 1) = &off_101614CB0;
    *(v5 + 2) = &off_101614C78;
    *(v5 + 3) = &off_101614C38;
    *(v5 + 4) = &off_10163ACE8;
    *(v5 + 5) = &off_101614CC0;
    v10.receiver = v4;
    v10.super_class = v3;

    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + 144);
    *(v0 + 144) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1002629E4()
{
  v1[2] = v0;
  type metadata accessor for MachServiceName();
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for XPCServiceDescription();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100262AD0, v0, 0);
}

uint64_t sub_100262AD0()
{
  MachServiceName.init(_:)();
  sub_100262918();
  if (qword_1016944F8 != -1)
  {
    swift_once();
  }

  v1 = qword_10169B870;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100262C30;

  return sub_100263258();
}

uint64_t sub_100262C30()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100262D40, v1, 0);
}

uint64_t sub_100262D40()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100262E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 128);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100269A0C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101614F78;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100267678(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v9, v14);
}

void sub_10026311C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_1008DC37C();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1008CE048(0, 0, v4, &unk_101395720, v6);

  sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
  Transaction.capture()();
}

uint64_t sub_100263258()
{
  *(v1 + 88) = v0;
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_1002632EC;

  return daemon.getter();
}

uint64_t sub_1002632EC(uint64_t a1)
{
  *(*v1 + 104) = a1;

  type metadata accessor for Daemon();
  sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100263444, v3, v2);
}

uint64_t sub_100263444()
{
  v1 = *(v0 + 88);
  *(v0 + 112) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1002634BC, v1, 0);
}

uint64_t sub_1002634BC()
{
  v1 = swift_allocObject();
  v0[15] = v1;
  swift_weakInit();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v0[16] = v3;
  v5 = swift_allocObject();
  v0[17] = v5;
  *(v5 + 16) = sub_100269894;
  *(v5 + 24) = v1;
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_100263618;

  return v8(v2, v4, &unk_101395708, v5);
}

uint64_t sub_100263618(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100263770, v2, 0);
}

uint64_t sub_100263770()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = sub_100269894;
  *(v2 + 24) = v1;
  v5 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_100263890;

  return v5(0xD000000000000019, 0x800000010134EE90, &unk_101395718, v2);
}

uint64_t sub_100263890(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002639C4, v2, 0);
}

uint64_t sub_1002639C4()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013953A0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  swift_beginAccess();

  sub_100398418(inited);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100263AD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    type metadata accessor for Transaction();
    return static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100263B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100263B7C, 0, 0);
}

uint64_t sub_100263B7C()
{
  (*(v0 + 24))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100263BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10026AE2C, 0, 0);
}

uint64_t sub_100263C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100263CB4, a3, 0);
}

uint64_t sub_100263CB4()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_darwinListeners;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    v23 = *(v1 + v2);
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = v23;
    v5 = result;
    if (!result)
    {
LABEL_18:

      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= 1)
  {
    v25 = **(v0 + 96);
    v24 = v4 & 0xC000000000000001;
    v6 = v4;

    v7 = v6;
    v8 = 0;
    v26 = v5;
    v27 = v6;
    while (1)
    {
      if (v24)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v8 + 32);
      }

      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v13, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v11;
      sub_1000D2A70(v13, v12, &qword_101698C00, &qword_10138B570);
      LODWORD(v12) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 112);
      if (v12 == 1)
      {
        sub_10000B3A8(*(v0 + 112), &qword_101698C00, &qword_10138B570);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_14:
          v19 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_15:

      if (v21 | v19)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v9;
      *(v0 + 88) = v25;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v7 = v27;
      if (v26 == v8)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100264040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return DarwinNotification.Listener.run()();
}

id sub_1002640D4()
{
  result = sub_1002640F4();
  qword_10169B870 = result;
  return result;
}

id sub_1002640F4()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPAdvertisementCacheXPCProtocol];
  sub_100A47234();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  v2 = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v1 + 32) = v2;
  *(v1 + 40) = sub_100008BB8(0, &qword_10169BAF8, SPAdvertisement_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = sub_100008BB8(0, &unk_10169BB00, SPAdvertisementCacheSearchCriteria_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  *(v4 + 32) = v2;
  *(v4 + 40) = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  *(v5 + 32) = v2;
  *(v5 + 40) = sub_100008BB8(0, &qword_10169BB10, SPBeaconPayload_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 32) = sub_100008BB8(0, &qword_10169BB18, SPBeaconPayloadCacheSearchCriteria_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  *(v7 + 32) = v2;
  *(v7 + 40) = sub_100008BB8(0, &unk_10169BB20, NSURL_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t sub_100264400(void *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C360;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  *(v5 + 96) = sub_100008BB8(0, &qword_10169BAD0, NSXPCConnection_ptr);
  *(v5 + 104) = sub_10026982C();
  *(v5 + 72) = a1;

  v8 = a1;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "in custom shouldAccept (%@) for %@", 34, 2, v5);

  sub_100017B24();
  return NSXPCConnection.hasEntitlement<A>(_:)() & 1;
}

uint64_t sub_10026454C()
{

  v1 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_transactionManager;
  v2 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002645F4()
{
  sub_10026454C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AdvertisementCacheService(uint64_t a1)
{
  result = qword_10169B8D8;
  if (!qword_10169B8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100264674(uint64_t a1)
{
  result = type metadata accessor for PressuredExitTransactionManager();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_100264750()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000019;
  v0[15] = 0x80000001013953F0;
  v7 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v9[1] = "SaveObservedAdvertisment";
  v9[2] = v7;
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v9[3] = _swiftEmptyArrayStorage;
  sub_100267678(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v0[17] = XPCSessionManager.init(name:)();
  v0[18] = 0;
  PressuredExitTransactionManager.init()();
  *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_lastAdvertisementCache) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_darwinListeners) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100264A58(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AdvertisementCacheService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100264B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AdvertisementCacheService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100264BCC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AdvertisementCacheService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100264C78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002629E4();
}

uint64_t sub_100264D24()
{
  sub_100267678(&unk_10169BA10, type metadata accessor for AdvertisementCacheService, &unk_1013955A0);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100264E2C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100264E2C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 16);

    return _swift_task_switch(Database.await(state:), v4, 0);
  }
}

uint64_t sub_100264F60()
{
  type metadata accessor for AdvertisementCacheService(0);
  sub_100267678(&qword_10169BA20, type metadata accessor for AdvertisementCacheService, &unk_101395540);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100264FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for UUID();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  v8[23] = swift_task_alloc();
  v11 = type metadata accessor for CachedHistoricalLocation(0);
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v8[27] = swift_task_alloc();
  v12 = type metadata accessor for TimeBasedKey(0);
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v8[31] = v13;
  v8[32] = *(v13 - 8);
  v8[33] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[34] = v14;
  *v14 = v8;
  v14[1] = sub_1002652A4;

  return daemon.getter();
}

uint64_t sub_1002652A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[35] = a1;

  v3 = swift_task_alloc();
  v2[36] = v3;
  v4 = type metadata accessor for Daemon();
  v2[37] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100267678(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100265484;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100265484(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  if (v1)
  {

    v5 = sub_100266154;
    v6 = 0;
  }

  else
  {
    v5 = sub_1002655C0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1002655C0()
{
  v1 = v0[39];
  sub_10001B108();
  v0[40] = v2;
  v0[41] = v1;
  if (v1)
  {

    sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1002660E0;
  }

  else
  {
    sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1002656E8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1002656E8()
{

  return _swift_task_switch(sub_10026575C, 0, 0);
}

uint64_t sub_10026575C()
{
  v105 = v0;
  v1 = v0[33];
  (*(v0[32] + 16))(v1, v0[14], v0[31]);
  type metadata accessor for BeaconPayloadFile(0);
  swift_allocObject();
  if (!sub_10047815C(v1))
  {
    goto LABEL_6;
  }

  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v6 = v0[15];
  v5 = v0[16];
  v7 = sub_100A2C460();
  (v7)(v6, v5);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v8 = v0[27];

    sub_10000B3A8(v8, &qword_10169BA30, &unk_101395620);
LABEL_6:
    v14 = v0[12];
    sub_1002685E8();
    v15 = swift_allocError();
    *v16 = 3;
    v14(0, v15);

    goto LABEL_7;
  }

  v9 = v0[30];
  v10 = v0[28];
  sub_10001854C(v0[27], v9, type metadata accessor for TimeBasedKey);
  v11 = (v9 + *(v10 + 24));
  v12 = v11[5];
  if (v12 >> 60 == 15)
  {
    v13 = v0[30];

    sub_100018CA0(v13, type metadata accessor for TimeBasedKey);
    goto LABEL_6;
  }

  v19 = v11[4];
  v20 = v0[41];
  sub_100017D5C(v19, v11[5]);
  v21 = sub_100496ABC();
  if (v20)
  {
    v26 = v0[30];
    v27 = v0[12];
    swift_errorRetain();
    v27(0, v20);

    sub_100006654(v19, v12);

    sub_100018CA0(v26, type metadata accessor for TimeBasedKey);
  }

  else
  {
    v22 = v21;
    v23 = PublicKey.advertisement.getter(v11[2], v11[3]);
    v25 = v24;
    sub_10058F754(v22, v23, v24, v0 + 2);
    v28 = v0[25];
    v100 = v0[24];
    v102 = v22;
    v29 = v0[23];
    sub_100016590(v23, v25);
    v30 = v0[5];
    v31 = v0[6];
    sub_1000035D0(v0 + 2, v30);
    (*(v31 + 24))(v30, v31);
    v32 = (*(v28 + 48))(v29, 1, v100);
    v33 = v0[30];
    if (v32 == 1)
    {
      v34 = v0[12];
      sub_10000B3A8(v0[23], &qword_10169BA28, &unk_1013EAA60);
      v34(0, 0);

      sub_100006654(v19, v12);

      v35 = v33;
    }

    else
    {
      v87 = v0[26];
      v99 = v0[22];
      v88 = v0[21];
      v89 = v0[20];
      v101 = v0[19];
      v85 = v0[18];
      v86 = v0[17];
      v90 = v0[12];
      sub_10001854C(v0[23], v87, type metadata accessor for CachedHistoricalLocation);
      v91 = v33;
      v37 = v0[5];
      v36 = v0[6];
      sub_1000035D0(v0 + 2, v37);
      v38 = (*(*(v36 + 8) + 8))(v37);
      v40 = v39;
      v42 = v0[5];
      v41 = v0[6];
      sub_1000035D0(v0 + 2, v42);
      v43 = (*(*(v41 + 8) + 16))(v42);
      v45 = v44;
      v103 = v38;
      v104 = v40;
      v0[10] = &type metadata for Data;
      v0[11] = &protocol witness table for Data;
      v0[7] = v43;
      v0[8] = v44;
      v46 = sub_1000035D0(v0 + 7, &type metadata for Data);
      v97 = *v46;
      v47 = v46[1];
      sub_100017D5C(v38, v40);
      sub_100017D5C(v43, v45);
      sub_100017DB0(v97, v47, &v103);
      sub_100016590(v43, v45);
      sub_100016590(v38, v40);
      sub_100007BAC(v0 + 7);
      v95 = v103;
      v94 = v104;
      v49 = v0[5];
      v48 = v0[6];
      sub_1000035D0(v0 + 2, v49);
      v82 = (*(*(v48 + 8) + 8))(v49);
      v98 = v50;
      sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_101385D80;
      v53 = v0[5];
      v52 = v0[6];
      sub_1000035D0(v0 + 2, v53);
      *(v51 + 32) = ((*(*(v52 + 8) + 24))(v53) >> 4) & 3;
      v80 = sub_100268E34(v51);
      v96 = v54;

      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_101385D80;
      v57 = v0[5];
      v56 = v0[6];
      sub_1000035D0(v0 + 2, v57);
      *(v55 + 32) = (*(*(v56 + 8) + 24))(v57) >> 6;
      v58 = sub_100268E34(v55);
      v92 = v59;
      v93 = v58;

      v61 = v0[5];
      v60 = v0[6];
      sub_1000035D0(v0 + 2, v61);
      v83 = (*(*(v60 + 8) + 24))(v61);
      v63 = v0[5];
      v62 = v0[6];
      sub_1000035D0(v0 + 2, v63);
      v81 = (*(*(v62 + 8) + 40))(v63);
      v65 = v0[5];
      v64 = v0[6];
      sub_1000035D0(v0 + 2, v65);
      (*(*(v64 + 8) + 48))(v65);
      UUID.init()();
      v79 = objc_allocWithZone(SPBeaconAdvertisement);
      sub_100017D5C(v95, v94);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v66 = Data._bridgeToObjectiveC()().super.isa;
      v67 = Data._bridgeToObjectiveC()().super.isa;
      v68 = Data._bridgeToObjectiveC()().super.isa;
      v69 = Date._bridgeToObjectiveC()().super.isa;
      v70 = UUID._bridgeToObjectiveC()().super.isa;
      v84 = [v79 initWithAddress:isa publicKey:v66 deviceType:v67 batteryState:v68 rawStatus:v83 rssi:v81 scanDate:v69 recordIdentifier:v70];

      sub_100016590(v93, v92);
      sub_100016590(v80, v96);
      sub_100016590(v95, v94);
      sub_100016590(v82, v98);
      (*(v85 + 8))(v101, v86);
      (*(v88 + 8))(v99, v89);
      v71 = *v87;
      v72 = v87[1];
      v73 = v87[2];
      v74 = objc_allocWithZone(SPEstimatedLocation);
      v75 = Date._bridgeToObjectiveC()().super.isa;
      v76 = [v74 initWithTimestamp:v75 latitude:0 longitude:v71 horizontalAccuracy:v72 altitude:v73 verticalAccuracy:-1.0 speed:-1.0 speedAccuracy:-1.0 course:-1.0 courseAccuracy:-1.0 floorLevel:0xBFF0000000000000];

      [v84 setLocation:v76];
      v77 = v84;
      v90(v84, 0);

      sub_100006654(v19, v12);

      sub_100016590(v95, v94);
      sub_100018CA0(v87, type metadata accessor for CachedHistoricalLocation);
      v35 = v91;
    }

    sub_100018CA0(v35, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v0 + 2);
  }

LABEL_7:

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002660E0()
{

  return _swift_task_switch(sub_100266154, 0, 0);
}

uint64_t sub_100266154(uint64_t a1)
{
  v2 = *(v1 + 96);
  sub_1002685E8();
  v3 = swift_allocError();
  *v4 = 2;
  v2(0, v3);

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100266248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v35 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UUID();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v29);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v28 = &v25 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v31, v9);
  v17 = v29;
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v29);
  v18 = v5;
  (*(v5 + 16))(v35, v30, v36);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = (v8 + *(v5 + 80) + v20) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v34;
  *(v22 + 4) = v33;
  *(v22 + 5) = v23;
  (*(v10 + 32))(&v22[v19], v12, v26);
  (*(v7 + 32))(&v22[v20], v27, v17);
  (*(v18 + 32))(&v22[v21], v35, v36);

  sub_10025EDD4(0, 0, v28, &unk_1013955F8, v22);
}

uint64_t sub_1002665DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for HashAlgorithm();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[24] = v11;
  *v11 = v5;
  v11[1] = sub_100266860;

  return daemon.getter();
}

uint64_t sub_100266860(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v6 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100267678(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  *v3 = v9;
  v3[1] = sub_100266A3C;

  return ActorServiceDaemon.getService<A>()(v4, MyNetworkPublisherService, v6, v7);
}

uint64_t sub_100266A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    v7 = swift_task_alloc();
    *(v3 + 224) = v7;
    *v7 = v4;
    v7[1] = sub_100266C34;

    return sub_1008F2DA0();
  }
}

uint64_t sub_100266C34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_1002674E0;
  }

  else
  {
    v4 = sub_100266D48;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100266D48()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_16:
    (*(v0 + 40))(v8, 0);

    v36 = *(v0 + 8);

    v36();
    return;
  }

  v3 = *(v0 + 176);
  v46 = *(v0 + 168);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v0 + 112);
  v44 = (v5 + 8);
  v45 = (v5 + 104);
  v6 = *(v0 + 88);
  v43 = (v6 + 16);
  v7 = *(v0 + 136);
  v64 = (v7 + 8);
  v42 = (*(v0 + 64) + 56);
  v63 = (v7 + 16);
  v39 = (v6 + 8);
  v40 = v7;
  v8 = _swiftEmptyArrayStorage;
  v9 = *(v3 + 72);
  v41 = enum case for HashAlgorithm.sha256(_:);
  v10 = *(v0 + 184);
  v37 = v10;
  v38 = v9;
  while (1)
  {
    sub_10001861C(v4, *(v0 + 184));
    v11 = *(v10 + 24);
    v12 = *(v0 + 184);
    if ((v11 & 0x2000000000000000) != 0)
    {
      sub_100018CA0(*(v0 + 184), type metadata accessor for ObservedAdvertisement);
      goto LABEL_4;
    }

    v50 = v8;
    v51 = v4;
    v52 = v2;
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v55 = *(v0 + 152);
    v57 = *(v0 + 128);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v53 = *(v0 + 80);
    v59 = *(v0 + 72);
    v61 = *(v0 + 56);
    v17 = *(v10 + 16);
    (*v45)(v14, v41, v15);
    sub_100017D5C(v17, v11);
    v18 = Data.hash(algorithm:)();
    v20 = v19;
    sub_10001E524(v17, v11);
    (*v44)(v14, v15);
    (*v43)(v16, v12 + *(v46 + 44), v53);
    sub_100F4CE88();
    URL.appendingPathComponent(_:isDirectory:)();
    v21 = *v64;
    (*v64)(v13, v57);
    v22 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    (*(*(v22 - 8) + 56))(v59, 1, 1, v22);
    type metadata accessor for BeaconPayloadFile(0);
    v23 = swift_allocObject();
    (*v42)(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, 1, 1, v61);
    v24 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
    v25 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
    v26 = *v63;
    (*v63)(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v55, v57);
    v27 = (v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement);
    *v27 = v18;
    v27[1] = v20;
    sub_100017D5C(v18, v20);
    v28 = objc_autoreleasePoolPush();
    Date.timeIntervalSinceReferenceDate.getter();
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_21;
    }

    v56 = *(v0 + 184);
    v62 = *(v0 + 160);
    v47 = *(v0 + 152);
    v48 = v28;
    v30 = *(v0 + 144);
    v60 = v26;
    v31 = *(v0 + 128);
    v54 = *(v0 + 96);
    v49 = *(v0 + 80);
    v58 = *(v0 + 72);
    *(v0 + 32) = v29;
    dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 16) = v18;
    *(v0 + 24) = v20;
    sub_10025DB08();
    RawRepresentable<>.hexString.getter();
    sub_100016590(v18, v20);
    URL.appendingPathComponent(_:isDirectory:)();

    URL.appendingPathComponent(_:isDirectory:)();

    v21(v30, v31);
    objc_autoreleasePoolPop(v48);
    v21(v47, v31);
    (*v39)(v54, v49);
    sub_100018CA0(v56, type metadata accessor for ObservedAdvertisement);
    sub_1000D2AD8(v58, v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
    v60(v62, v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v31);
    swift_setDeallocating();
    v21(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v31);
    sub_100016590(*(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement), *(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement + 8));
    v21(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v31);
    sub_10000B3A8(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
    sub_10000B3A8(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
    sub_10000B3A8(v23 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);
    swift_deallocClassInstance();
    v8 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100A5C4D0(0, v50[2] + 1, 1, v50);
    }

    v4 = v51;
    v2 = v52;
    v10 = v37;
    v9 = v38;
    v33 = v8[2];
    v32 = v8[3];
    if (v33 >= v32 >> 1)
    {
      v8 = sub_100A5C4D0((v32 > 1), v33 + 1, 1, v8);
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 128);
    v8[2] = v33 + 1;
    (*(v40 + 32))(v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, v34, v35);
LABEL_4:
    v4 += v9;
    if (!--v2)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1002674E0()
{
  v1 = v0[30];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100267678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002676C0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100263C08(a1, a2, v2);
}

uint64_t sub_10026776C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003633C;

  return v6(a1);
}

uint64_t *sub_100267864@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_100268BDC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_10026792C(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_100016590(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_10138C660;
      sub_100016590(0, 0xC000000000000000);
      sub_1002680D4(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100016590(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  sub_100016590(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

char *sub_100267BDC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100016590(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v7, v6);
    *v4 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1002681B0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100016590(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1002681B0(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_100267F80@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100268BDC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100268C94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100268D10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100268014(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_100268068(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1002680D4(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

char *sub_1002681B0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void (*sub_100268264(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10026AE28;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002682E4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100268364;
  }

  __break(1u);
  return result;
}

uint64_t sub_10026836C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100268420(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014744;

  return sub_100264FCC(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1002685E8()
{
  result = qword_10169BA38;
  if (!qword_10169BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BA38);
  }

  return result;
}

void (*sub_10026863C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002686BC;
  }

  __break(1u);
  return result;
}

void *sub_1002686C4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(sub_1000BC4D4(&qword_10169BAB0, &qword_1013956D0) + 48);

  result = sub_1003A8FC4(a4, a1, a2, v7);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_100268740(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100268834;

  return v5(v2 + 32);
}

uint64_t sub_100268834()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100268948@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100268998(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100268A8C;

  return v5(v2 + 16);
}

uint64_t sub_100268A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100268BBC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100268BDC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100268C94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100268D10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100268D94(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100268E34(uint64_t a1)
{
  v9 = sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  v10 = sub_1000041A4(&qword_101699370, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_1000035D0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100267F80(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100007BAC(v8);
  return v5;
}

unint64_t sub_100268F10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608538, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100268F5C(void (*a1)(void))
{
  if (sub_100017068(1))
  {
    return (a1)(0);
  }

  v3 = static os_log_type_t.error.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C360;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = 0xD000000000000036;
  *(v5 + 40) = 0x80000001013478E0;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Cannot mark files as processed. Missing entitlement: %@", 55, 2, v5);

  sub_1002685E8();
  swift_allocError();
  *v6 = 0;
  a1();
}

uint64_t sub_1002690CC(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (sub_100017068(2))
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v8[5] = a2;

    sub_10025EDD4(0, 0, v6, &unk_101395638, v8);
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = 0xD000000000000035;
    *(v12 + 40) = 0x8000000101347920;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Cannot read beacon payloads. Missing entitlement: %@", 52, 2, v12);

    sub_1002685E8();
    v13 = swift_allocError();
    *v14 = 0;
    a1(v13, 1);
  }
}

uint64_t sub_10026931C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1002665DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002693DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10026776C(a1, v4);
}

uint64_t sub_100269494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100268740(a1, v4);
}

void *sub_10026954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100268068(sub_1002695B4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1002695D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100268998(a1, v4);
}

uint64_t sub_10026968C(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_100268014(sub_100269754, v4, a1, a2);
}

uint64_t sub_1002696E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100269774(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100268740(a1, v4);
}

unint64_t sub_10026982C()
{
  result = qword_10169BAD8;
  if (!qword_10169BAD8)
  {
    sub_100008BB8(255, &qword_10169BAD0, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BAD8);
  }

  return result;
}

uint64_t sub_10026989C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263B58(a1, v5, v4);
}

uint64_t sub_100269944(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263BE4(a1, v5, v4);
}

uint64_t sub_100269A14(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_1008DE9CC();
}

uint64_t sub_100269AC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100269B08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100261DAC(a1, v4, v5, v7, v6);
}

uint64_t sub_100269BC8(uint64_t a1, uint64_t a2)
{
  if (sub_100017068(1))
  {
    v4 = static os_log_type_t.default.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    v7 = *(a1 + 16);
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = v7;
    v8 = 2;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Disabled advertisement cache. Count: %i", v15);
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = 0xD000000000000036;
    *(v11 + 40) = 0x80000001013478E0;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Cannot save advertisements. Missing entitlement: %@", 51, 2, v11);
    v8 = 0;
  }

  sub_1002685E8();
  swift_allocError();
  *v12 = v8;
  v13 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v13);
}

void sub_100269DF0(unint64_t a1, char *a2, const void *a3)
{
  v6 = type metadata accessor for SPCachedAdvertisement(0);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  v9 = static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v10 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    if (a1 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = v12;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Trampolining save advertisements: %i", v32);

    v13 = _swiftEmptyArrayStorage;
    if (!v12)
    {
LABEL_16:
      swift_beginAccess();
      swift_unknownObjectRetain();
      v31 = sub_10039C43C(v13);

      _Block_copy(a3);
      sub_100269BC8(v31, a3);
      _Block_release(a3);
      swift_unknownObjectRelease();

      _Block_release(a3);
      return;
    }

    v43 = _swiftEmptyArrayStorage;
    sub_10112471C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      break;
    }

    v32 = a2;
    v33 = a3;
    v14 = 0;
    v13 = v43;
    v15 = a1;
    v36 = a1;
    v37 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = v12;
    while (1)
    {
      if (v37)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14 >= *(v34 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(v15 + 8 * v14 + 32);
LABEL_12:
      v17 = v16;
      v42 = [v16 status];
      v18 = [v17 address];
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v20;
      v41 = v19;

      v21 = [v17 advertisementData];
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = [v17 reserved];
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      a1 = [v17 rssi];
      a2 = [v17 scanDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v40;
      *v8 = v41;
      *(v8 + 1) = v28;
      *(v8 + 2) = a3;
      *(v8 + 3) = v23;
      v8[32] = v42;
      *(v8 + 5) = v25;
      *(v8 + 6) = v27;
      *(v8 + 7) = a1;
      v43 = v13;
      v30 = v13[2];
      v29 = v13[3];
      v9 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_10112471C((v29 > 1), v30 + 1, 1);
        v13 = v43;
      }

      ++v14;
      v13[2] = v9;
      sub_10001854C(v8, v13 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for SPCachedAdvertisement);
      v15 = v36;
      if (v35 == v14)
      {
        a3 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_10026A218(uint64_t a1)
{
  if (sub_100017068(1))
  {
    v2 = 2;
  }

  else
  {
    v3 = static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = 0xD000000000000036;
    *(v5 + 40) = 0x80000001013478E0;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Cannot mark advertisements as processed. Missing entitlement: %@", 64, 2, v5);

    v2 = 0;
  }

  sub_1002685E8();
  swift_allocError();
  *v6 = v2;
  v7 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, v7);
}

uint64_t sub_10026A388(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v5 = static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C360;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = *(a1 + 16);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v8;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Marking records for deletion: %i", v10);

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10026A218(aBlock);
  _Block_release(aBlock);
  return swift_unknownObjectRelease();
}

void sub_10026A4CC(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_1000BC4D4(&unk_10169BB38, &unk_101395740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v32 - v6);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_10177C360;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C360, "Received advertisement search response.", 39, 2, _swiftEmptyArrayStorage);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v11 = *v7;
    v12 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v14 = *(v11 + 16);
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v14;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v9, "Received cached advertisements: %i", LODWORD(v32[0]));

    if (v14)
    {
      v35 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v15 = v11 + 32;
      do
      {
        sub_10001F280(v15, v32);
        v16 = v33;
        v17 = v34;
        sub_1000035D0(v32, v33);
        sub_1003CCB60(v16, v17);
        sub_100007BAC(v32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    v28 = [objc_allocWithZone(SPSearchResultMarker) init];
    v29 = objc_allocWithZone(SPAdvertisementCacheSearchResult);
    sub_100008BB8(0, &qword_10169BB48, SPBeaconAdvertisement_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v29 initWithBeaconAdvertisements:isa searchResultMarker:v28 error:0];

    goto LABEL_11;
  }

  if (v10 == enum case for LegacyResult.failure<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v18 = *v7;
    v19 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v32[0] = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v9, "Error reading cached advertisements: %@", 39, 2, v20);

    v24 = objc_allocWithZone(SPAdvertisementCacheSearchResult);
    swift_errorRetain();
    sub_100008BB8(0, &qword_10169BB48, SPBeaconAdvertisement_ptr);
    v25 = Array._bridgeToObjectiveC()().super.isa;
    v26 = _convertErrorToNSError(_:)();

    v27 = [v24 initWithBeaconAdvertisements:v25 searchResultMarker:0 error:v26];

LABEL_11:
    (a2)[2](a2, v27);

    return;
  }

  _Block_release(a2);
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10026A9C0(void *a1)
{
  v2 = sub_1000BC4D4(&unk_10169BB38, &unk_101395740);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - v4);
  _Block_copy(a1);
  _Block_copy(a1);
  v6 = 2;
  if (!sub_100017068(2))
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = 0xD000000000000035;
    *(v9 + 40) = 0x8000000101347920;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Cannot read advertisements. Missing entitlement: %@", 51, 2, v9);

    v6 = 0;
  }

  sub_1002685E8();
  v10 = swift_allocError();
  *v11 = v6;
  *v5 = v10;
  (*(v3 + 104))(v5, enum case for LegacyResult.failure<A>(_:), v2);
  _Block_copy(a1);
  sub_10026A4CC(v5, a1);
  _Block_release(a1);
  (*(v3 + 8))(v5, v2);
  _Block_release(a1);
  _Block_release(a1);
}

uint64_t sub_10026AC00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  _Block_copy(a2);
  v3 = qword_101694940;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C2C(v5);

  sub_10026A9C0(a2);
  _Block_release(a2);
  return swift_unknownObjectRelease();
}

unint64_t sub_10026AD24()
{
  result = qword_10169BB78;
  if (!qword_10169BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB78);
  }

  return result;
}

unint64_t sub_10026AD7C()
{
  result = qword_10169BB80;
  if (!qword_10169BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB80);
  }

  return result;
}

unint64_t sub_10026ADD4()
{
  result = qword_10169BB88;
  if (!qword_10169BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB88);
  }

  return result;
}

uint64_t sub_10026AE34()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A800);
  sub_1000076D4(v0, qword_10177A800);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10026AEB4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169BB90);
  v1 = sub_1000076D4(v0, qword_10169BB90);
  if (qword_101694500 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A800);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10026AF7C()
{
  v1[3] = v0;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v1[4] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10026B07C, 0, 0);
}

uint64_t sub_10026B07C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_defaultActor_initialize();
  v3[14] = 0xD000000000000020;
  v3[15] = 0x8000000101395920;
  type metadata accessor for WorkItemQueue();
  v4 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  UUID.init()();
  v3[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v3[18] = 0;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v5 = type metadata accessor for CentralManager.Options();
  v6 = *(v5 - 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v7;
  sub_10027EB7C(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10026B354;
  v9 = v0[4];

  return CentralManager.__allocating_init(options:)(v9);
}

uint64_t sub_10026B354(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10026B454, 0, 0);
}

uint64_t sub_10026B454()
{
  *(v0[3] + 128) = v0[8];

  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t sub_10026B4D4()
{
  v1[93] = v0;
  v1[94] = *v0;
  v2 = sub_1000BC4D4(&qword_10169BD08, &unk_101395B50);
  v1[95] = v2;
  v1[96] = *(v2 - 8);
  v1[97] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[98] = v3;
  *v3 = v1;
  v3[1] = sub_10026B5F8;

  return daemon.getter();
}

uint64_t sub_10026B5F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[99] = a1;

  v3 = swift_task_alloc();
  v2[100] = v3;
  v4 = type metadata accessor for Daemon();
  v2[101] = v4;
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[102] = v6;
  v7 = sub_10027EB7C(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_10026B7EC;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_10026B7EC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 824) = a1;

  v4 = *(v3 + 744);
  if (v1)
  {

    v5 = sub_10026C308;
  }

  else
  {

    v5 = sub_10026B950;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10026B950()
{
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 832) = sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v7 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v5 = swift_task_alloc();
  *(v0 + 840) = v5;
  *v5 = v0;
  v5[1] = sub_10026BAB4;

  return v7();
}

uint64_t sub_10026BAB4()
{
  v1 = *(*v0 + 744);

  return _swift_task_switch(sub_10026BBC4, v1, 0);
}

uint64_t sub_10026BBC4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 848) = v5;
  *v5 = v1;
  v5[1] = sub_10026BCCC;

  return daemon.getter();
}

uint64_t sub_10026BCCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 856) = a1;

  v5 = swift_task_alloc();
  *(v3 + 864) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10026BE84;
  v8 = *(v2 + 816);
  v9 = *(v2 + 808);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10026BE84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {
    v5 = *(v4 + 744);
    v6 = sub_10026C428;
  }

  else
  {

    *(v4 + 880) = a1;
    v6 = sub_10026BFC0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026BFC0()
{
  v1 = v0[93];
  v0[111] = *(*(v0[110] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_10026C048, v1, 0);
}

uint64_t sub_10026C048()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v8 = v0[94];
  v4 = v0[93];
  v0[87] = v0[111];
  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  type metadata accessor for OwnedBeaconGroup(0);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  sub_1000041A4(&qword_10169BD18, &qword_10169BD08, &unk_101395B50, &protocol conformance descriptor for Publishers.CompactMap<A, B>);

  v6 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v4 + 144) = v6;

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_10026C290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026C308()
{
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10026C428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v6);
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v4 = swift_dynamicCast();
  return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
}

uint64_t sub_10026C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10169BB90);
  sub_10027E7C8(a1, v12, type metadata accessor for OwnedBeaconGroup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[0] = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29[1] = a2;
    v19 = v18;
    v31 = v18;
    *v17 = 136315138;
    v20 = sub_10051F7B0();
    v30 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = a1;
    v22 = a3;
    v24 = v23;
    sub_10027E768(v12, type metadata accessor for OwnedBeaconGroup);
    v25 = sub_1000136BC(v20, v24, &v31);
    a3 = v22;
    a1 = v21;
    v10 = v30;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removed beacon group: %s", v17, 0xCu);
    sub_100007BAC(v19);

    v7 = v29[0];
  }

  else
  {

    sub_10027E768(v12, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10027E7C8(a1, v10, type metadata accessor for OwnedBeaconGroup);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  sub_10027E700(v10, v27 + v26, type metadata accessor for OwnedBeaconGroup);
  *(v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10026C86C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for OwnedBeaconGroup(0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_10026C994;

  return daemon.getter();
}

uint64_t sub_10026C994(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v3 = v9;
  v3[1] = sub_10026CB78;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026CB78(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  if (v1)
  {
    v5 = sub_10026D3C0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 136) = *(v7 + 24);
    v5 = sub_10026CCBC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10026CCBC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 136), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_10026CE18;

  return v9(&unk_101395B80, v6);
}

uint64_t sub_10026CE18()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_10026D1E4;
  }

  else
  {
    v4 = sub_10026CF58;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026CF58()
{
  v17 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  sub_10027E7C8(v2, v1, type metadata accessor for OwnedBeaconGroup);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_10027EB7C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10027E768(v6, type metadata accessor for OwnedBeaconGroup);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removed analytics record for beacon group %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[4];

    sub_10027E768(v13, type metadata accessor for OwnedBeaconGroup);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10026D200()
{

  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10169BB90);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error removing analytics record %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10026D3C0()
{

  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10169BB90);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error removing analytics record %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10026D580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10026D610();
}

uint64_t sub_10026D610()
{
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for CentralManager.ConnectedState();
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20);
  v1[6] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10026D7D0, v0, 0);
}

uint64_t sub_10026D7D0()
{
  v18 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[14] = *(v0[3] + 128);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = type metadata accessor for CentralManager();
  v0[17] = v14;
  v15 = sub_10027EB7C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v13 = v0;
  v13[1] = sub_10026DACC;

  return CentralManagerProtocol.await(states:)(v10, v14, v15);
}

uint64_t sub_10026DACC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_10026E4B8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10026DBF4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026DBF4()
{
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v1 = swift_allocObject();
  *(v0 + 152) = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_10027EB7C(&unk_1016C21D0, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026DD70, v3, v2);
}

uint64_t sub_10026DD70()
{
  v1 = v0[18];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[20] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_10026E644;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_10026DE14;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10026DE14()
{
  AsyncStream.makeAsyncIterator()();
  v2 = sub_10027EB7C(&qword_10169BCA8, v1, type metadata accessor for AccessoryPairingAnalyticsService, &unk_101395A30);
  v3 = v0[20];
  v0[21] = v2;
  v0[22] = v3;
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10026DF10;
  v6 = v0[6];
  v7 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v6, v4, v2, v7);
}

uint64_t sub_10026DF10()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10026E020, v1, 0);
}

uint64_t sub_10026E020()
{
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "centralManager.connectionEvents() terminated", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_10;
  }

  v10 = v0[22];
  v11 = *v1;
  sub_10027E700(v1 + *(v2 + 48), v0[5], &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[5];

    sub_10027E768(v18, &type metadata accessor for CentralManager.ConnectedState);
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_10:

    v26 = v0[1];

    return v26();
  }

  v24 = v0[5];
  v25 = v0[3];
  type metadata accessor for Transaction();
  static Transaction.$current.getter();
  v0[2] = v11;
  swift_retain_n();
  sub_1000BC4D4(&qword_10169BD00, &qword_1013FD5B0);
  swift_task_localValuePush();
  sub_10026E7D0(v24, v25);
  v28 = v0[5];
  swift_task_localValuePop();

  sub_10027E768(v28, &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = 0;
  v29 = v0[21];
  v30 = v0[3];
  v31 = swift_task_alloc();
  v0[23] = v31;
  *v31 = v0;
  v31[1] = sub_10026DF10;
  v32 = v0[6];
  v33 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v32, v30, v29, v33);
}

uint64_t sub_10026E4B8()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10026E644()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10026E7D0(uint64_t a1, char *a2)
{
  v53 = a2;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v52 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = type metadata accessor for CentralManager.ConnectedState();
  __chkstk_darwin(v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10027E7C8(a1, v18, &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *(v5 + 32);
  v54 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    v20(v10, v18, v4);
    v21 = v4;
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10169BB90);
    v23 = v52;
    (*(v5 + 16))(v52, v10, v4);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v21;
      v31 = v30;
      v53 = v10;
      v32 = *(v5 + 8);
      v33 = v23;
      v34 = v29;
      v32(v33, v29);
      v35 = sub_1000136BC(v28, v31, &v55);

      *(v26 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Connected to %{public}s", v26, 0xCu);
      sub_100007BAC(v27);

      return v32(v53, v34);
    }

    else
    {

      v50 = *(v5 + 8);
      v50(v23, v21);
      return v50(v10, v21);
    }
  }

  else
  {
    v20(v15, v18, v4);
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10169BB90);
    (*(v5 + 16))(v13, v15, v4);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v51 = v40;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v40 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v4;
      v44 = v43;
      v45 = *(v5 + 8);
      v46 = v13;
      v47 = v42;
      v45(v46, v42);
      v48 = sub_1000136BC(v41, v44, &v55);

      v49 = v51;
      *(v51 + 1) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Disconnected from %{public}s", v49, 0xCu);
      sub_100007BAC(v52);

      v4 = v47;
    }

    else
    {

      v45 = *(v5 + 8);
      v45(v13, v4);
    }

    sub_10026EDA4(v15);
    return (v45)(v15, v4);
  }
}

uint64_t sub_10026EDA4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10026EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10026F02C, 0, 0);
}

uint64_t sub_10026F02C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v3 + 16);
  v0[10] = v8;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = v7;
  (*(v3 + 32))(v11 + v9, v1, v4);
  *(v11 + v10) = v5;

  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_10026F1A4;

  return withTimeout<A>(_:block:)(v12, 0x8AC7230489E80000, 0, &unk_101395AC8, v11, &type metadata for () + 1);
}

uint64_t sub_10026F1A4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10026F32C;
  }

  else
  {

    v2 = sub_10026F2C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026F2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026F32C()
{
  v23 = v0;

  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10169BB90);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136446466;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error handling disconnect event for %{public}s: %{public}@", v12, 0x16u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10026F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for MACAddress();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v3[22] = *(v8 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v9 = type metadata accessor for TransportType();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[38] = v10;
  v3[39] = *(v10 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[42] = v11;
  *v11 = v3;
  v11[1] = sub_10026F974;

  return daemon.getter();
}

uint64_t sub_10026F974(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[43] = a1;

  v3 = swift_task_alloc();
  v2[44] = v3;
  v4 = type metadata accessor for Daemon();
  v2[45] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[46] = v6;
  v7 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v3 = v9;
  v3[1] = sub_10026FB68;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10026FB68(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  if (v1)
  {
    v5 = sub_100274104;
    v6 = 0;
  }

  else
  {

    v5 = sub_10026FCA0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10026FCA0()
{
  v5 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v1 = swift_task_alloc();
  v0[49] = v1;
  v2 = sub_1000BC4D4(&qword_10169BCD0, &qword_101395AE0);
  v0[50] = v2;
  *v1 = v0;
  v1[1] = sub_10026FD90;
  v3 = v0[47];

  return (v5)(v0 + 2, &unk_101395AD8, v3, v2);
}

uint64_t sub_10026FD90()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 376);
  if (v0)
  {
    v4 = sub_100270120;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_10026FED4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}