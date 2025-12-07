uint64_t sub_10012F81C()
{
  sub_100002BAC();
  sub_1000C99A4(v0[18], v0[15], v0[13]);
  v1 = sub_100005F04();

  return _swift_task_switch(v1, v2, 0);
}

uint64_t sub_10012F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  while (1)
  {
    v13 = *(v12 + 144);
    sub_10000ED84(*(v12 + 120), &qword_1001B9D00);
    sub_100009CDC();
    v14 = sub_10000D300(v13);
    v17 = *(v12 + 240);
    v18 = *(v12 + 248);
    v19 = (*(v12 + 232) - 1) & *(v12 + 232);
    if (!v19)
    {
      break;
    }

LABEL_7:
    *(v12 + 232) = v19;
    *(v12 + 240) = v17;
    v21 = *(v12 + 144);
    v22 = *(v12 + 152);
    v23 = *(v12 + 112);
    v24 = *(v12 + 120);
    v25 = *(v12 + 104);
    sub_1000128DC();
    sub_10005CAA8(v26, v22);
    sub_10001961C();
    v27 = swift_task_alloc();
    sub_100018D54(v27);

    v28 = swift_task_alloc();
    v28[2] = v23;
    v28[3] = v21;
    v28[4] = v24;
    v28[5] = v25;

    LOBYTE(v21) = sub_100004CFC();
    *(v12 + 248) = v18;

    if ((v21 & 1) == 0)
    {
      v29 = (*(v12 + 112) + *(v12 + 224));
      v30 = sub_100003370(v29, v29[3]);
      sub_1000134AC(v30);
      sub_1000062BC();

      return _swift_task_switch(v14, v15, v16);
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return _swift_task_switch(v14, v15, v16);
    }

    if (v20 >= (((1 << *(v12 + 264)) + 63) >> 6))
    {
      break;
    }

    v19 = *(*(v12 + 88) + 8 * v20 + 56);
    ++v17;
    if (v19)
    {
      v17 = v20;
      goto LABEL_7;
    }
  }

  sub_100012124();

  sub_100001F00();
  sub_1000062BC();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_10012FA84(uint64_t a1, void *a2)
{
  if (CustomAssetConfiguration.templateID.getter() == *a2 && v3 == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10012FAF4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10012FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
LABEL_2:

  v14 = &unk_100172C48;
  v15 = &qword_1001B8F40;
  v16 = sub_10002B138();
  if (v17)
  {

    sub_100001F00();
    sub_1000062BC();

    v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
  }

  else
  {
    *(v12 + 240) = v16;
    v18 = sub_100143420(v16, *(v12 + 216));
    *(v12 + 248) = v18;
    a9 = v18;
    v19 = v18 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100009E10();
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 16);
    *(v12 + 48) = *(v19 + 32);
    *(v12 + 16) = v20;
    *(v12 + 32) = v21;
    v22 = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(v12 + 128) = vextq_s8(*(v12 + 40), *(v12 + 40), 8uLL);
    *(v12 + 144) = v22;
    sub_100036E68();
    sub_10001E72C(v23, v24, v25, v26);
    sub_100036E68();
    sub_10001E72C(v27, v28, v29, v30);
    sub_10000CD38();
    sub_10001E72C(v31, v32, v33, v34);
    sub_100042D18();
    v35 = sub_10006CF3C();
    sub_10000C750();
    sub_10000ED84(v36, v37);
    sub_10000C750();
    sub_10000ED84(v38, v39);
    sub_100006570();
    sub_10000ED84(v40, v41);
    sub_10000ED84(v12 + 128, &qword_1001B8F40);
    sub_10000E8DC(v35);
    sub_10014B428();
    while (v13 != v14)
    {
      if (&unk_100172C40)
      {
        sub_100003D88();
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= qword_1001BC480)
        {
          goto LABEL_19;
        }

        sub_10014B2AC();
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v42 = *(v12 + 200);
      v43 = *(v12 + 208);
      v44 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005DD8();
      sub_10005CAA8(v15 + v44, v43);
      LOBYTE(v42) = *(v43 + *(v42 + 24));
      sub_1000115C8();
      sub_10000D300(v43);

      ++v14;
      if ((v42 & 1) == 0)
      {

        goto LABEL_2;
      }
    }

    v45 = swift_task_alloc();
    *(v12 + 256) = v45;
    *v45 = v12;
    v45[1] = sub_10012FAF4;
    sub_1000031B8(*(v12 + 192));
    sub_1000062BC();

    sub_10006CD0C(v46);
  }
}

uint64_t sub_10012FE90()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[5] = v7;
  v1[6] = v8;
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v1[13] = v9;
  sub_100002F44(v9);
  v1[14] = v10;
  v1[15] = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10012FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000385C();
  sub_100003284();
  v17 = v16[5];
  v18 = v16[6];
  v19 = sub_10000E8DC(v17);
  v27 = v19;
  v28 = 0;
  v29 = v17 & 0xC000000000000001;
  v30 = v17 + 32;
  v31 = &OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets;
  v32 = &OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets;
  v64 = v17;
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_17;
    }

    if (v29)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v19;
    }

    else
    {
      if (v28 >= *(v17 + 16))
      {
        goto LABEL_24;
      }

      v33 = *(v30 + 8 * v28);
    }

    v16[16] = v33;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return Task.value.getter(v19, v20, v21, v22, v23, v24, v25, v26, a9, v64, a11, a12, a13, a14, a15, a16);
    }

    sub_10007BB54();
    if (v34 & 1) != 0 && (sub_10013041C(*(v33 + *v32), *(v18 + 24)))
    {
      v35 = v27;
      v36 = v30;
      v37 = v29;
      v38 = v31;
      v39 = v18;
      v40 = v32;
      v41 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      v42 = *(v33 + v41);
      v32 = v40;
      v18 = v39;
      v31 = v38;
      v29 = v37;
      v30 = v36;
      v27 = v35;
      v17 = v64;
      if (v42 <= 2)
      {
        break;
      }
    }

    ++v28;
  }

  v43 = v16[6];
  v44 = v43[7];
  v45 = v43[8];
  sub_100003370(v43 + 4, v44);
  (*(v45 + 8))(v44, v45);
  v46 = static InferenceProviderDescriptor.== infix(_:_:)();
  v47 = sub_100003754();
  v48(v47);
  if (v46)
  {
    v49 = v16[10];
    if (v49)
    {

      v49(v33);
      v50 = sub_10000D01C();
      sub_100016484(v50, v51);
    }

    sub_10006CFF8(v16[12], v16[6], v16[8], v16[9]);
    v16[17] = v52;
    v62 = swift_task_alloc();
    v16[18] = v62;
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    sub_1000060CC();
    *v62 = v63;
    v62[1] = sub_100130228;
    sub_100019260();
    sub_100003540();

    return Task.value.getter(v19, v20, v21, v22, v23, v24, v25, v26, a9, v64, a11, a12, a13, a14, a15, a16);
  }

LABEL_17:

  sub_10001E5F0();
  sub_100003540();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, v64, a11, a12, a13, a14);
}

uint64_t sub_100130228()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013033C()
{
  sub_100002BAC();

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1001303B0()
{
  sub_100002BAC();

  v0 = sub_10001E5F0();

  return v1(v0);
}

uint64_t sub_10013041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomAssetConfiguration();
  v59 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v48 - v8;
  v9 = sub_100065020(&qword_1001BDBF0, &unk_100174180);
  v10 = __chkstk_darwin(v9 - 8);
  result = __chkstk_darwin(v10);
  v54 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v54 + 16))
  {
    return 0;
  }

  v52 = (&v48 - v12);
  v53 = v13;
  v51 = v7;
  v14 = 0;
  v49 = a1;
  v15 = *(a1 + 64);
  v48 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v55 = v59 + 16;
  v56 = (v59 + 32);
  v50 = (v59 + 8);
  while (1)
  {
    v20 = v53;
    if (!v18)
    {
      break;
    }

    v57 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_12:
    v24 = (*(v49 + 48) + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v28 = v58;
    v27 = v59;
    (*(v59 + 16))(v58, *(v49 + 56) + *(v59 + 72) * v21, v4);
    v29 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
    v30 = *(v29 + 48);
    *v20 = v25;
    *(v20 + 1) = v26;
    (*(v27 + 32))(&v20[v30], v28, v4);
    sub_100009BFC(v20, 0, 1, v29);

LABEL_13:
    v31 = v52;
    sub_10002F6B4(v20, v52, &qword_1001BDBF0, &unk_100174180);
    v32 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
    v33 = sub_10000C6C0(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v37 = *v31;
    v36 = v31[1];
    v38 = v54;
    v39 = v51;
    (*v56)(v51, v31 + v35, v4);
    v40 = sub_1000236F4(v37, v36);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      (*v50)(v39, v4);
      return 0;
    }

    v44 = v58;
    v43 = v59;
    (*(v59 + 16))(v58, *(v38 + 56) + *(v59 + 72) * v40, v4);
    sub_10005FAF0(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration, &protocol conformance descriptor for CustomAssetConfiguration);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v43 + 8);
    v46(v44, v4);
    result = (v46)(v39, v4);
    v18 = v57;
    if ((v45 & 1) == 0)
    {
      return v34;
    }
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v47 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
      sub_100009BFC(v20, 1, 1, v47);
      v57 = 0;
      goto LABEL_13;
    }

    v23 = *(v48 + 8 * v22);
    ++v14;
    if (v23)
    {
      v57 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v22 << 6);
      v14 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001308AC()
{
  sub_100002BAC();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for RequestPriority();
  v1[18] = v5;
  sub_100002F44(v5);
  v1[19] = v6;
  v1[20] = sub_10000F0C0();
  v1[21] = swift_task_alloc();
  v7 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v7);
  v1[22] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[23] = v8;
  sub_100002F44(v8);
  v1[24] = v9;
  v1[25] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001309D8()
{
  sub_100001ED0();
  v0[26] = *(v0[14] + 16);
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[27] = sub_10000641C(v1, qword_1001BD750);
  v2 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v2, v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000BF10(v4);
    sub_100009DDC(&_mh_execute_header, v5, v6, "Entering enqueueRequestAndWait");
    sub_100002BD0();
  }

  v7 = v0[17];

  v8 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups;
  v0[28] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups;
  v9 = (v7 + v8);
  sub_100009E10();
  swift_beginAccess();
  v0[29] = *v9;
  v0[30] = v9[1];

  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_100130B58;

  return sub_10012FE90();
}

uint64_t sub_100130B58()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {

    sub_100001F00();
    sub_100003D20();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *(v5 + 320) = v3 & 1;
    sub_10000A30C();
    sub_100003D20();

    return _swift_task_switch(v18, v19, v20);
  }
}

uint64_t sub_100130CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  if (*(v13 + 320) == 1)
  {
    sub_100027ED4();
    v15 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80(v16, v17, v18);
      sub_100005070();
      v23 = sub_1000082D4(v19, v20, v21, v22);
      sub_1000156D8(v23);
      v24 = sub_10000592C();
      v25(v24);
      v26 = sub_100004CB0();
      sub_100004A3C(v26, v27, v28);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v29, v30, "Added request %s to existing pending foreground group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  else
  {
    v40 = *(v13 + 136);
    v41 = *(v13 + 112);
    v42 = (v40 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
    sub_100009E10();
    swift_beginAccess();
    *(v13 + 256) = *v42;
    *(v13 + 264) = v42[1];
    sub_100002EE0();
    v43 = swift_allocObject();
    *(v13 + 272) = v43;
    *(v43 + 16) = v41;
    *(v43 + 24) = v40;

    v44 = swift_task_alloc();
    *(v13 + 280) = v44;
    *v44 = v13;
    sub_10001294C(v44);
    sub_1000062BC();

    return sub_10012FE90();
  }
}

uint64_t sub_100130F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v13 = v12;
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v17 = *v11;
  sub_100002B9C();
  *v18 = v17;

  if (v10)
  {

    sub_100006378();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    *(v15 + 321) = v13 & 1;
    sub_10003DDC8();
    sub_100006378();

    return _swift_task_switch(v28, v29, v30);
  }
}

uint64_t sub_1001310BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  if (*(v13 + 321) == 1)
  {
    sub_100027ED4();
    v15 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80(v16, v17, v18);
      sub_100005070();
      v23 = sub_1000082D4(v19, v20, v21, v22);
      sub_1000156D8(v23);
      v24 = sub_10000592C();
      v25(v24);
      v26 = sub_100004CB0();
      sub_100004A3C(v26, v27, v28);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v29, v30, "Added request %s to existing pending background group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  else
  {
    v40 = *(v13 + 168);
    v41 = *(v13 + 176);
    v43 = *(v13 + 152);
    v42 = *(v13 + 160);
    v44 = *(v13 + 144);
    v45 = *(v13 + 112);
    v46 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v45 + v46, v41);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300(v41);
    (*(v43 + 104))(v42, enum case for RequestPriority.foreground(_:), v44);
    v47 = sub_100116BA4(v40, v42);
    v48 = *(v43 + 8);
    v48(v42, v44);
    v49 = sub_1000060A4();
    (v48)(v49);
    v50 = *(v13 + 136);
    if ((v47 & 1) != 0 || !*(*(v50 + *(v13 + 224) + 8) + 16))
    {
      v69 = (v50 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
      sub_100009E10();
      swift_beginAccess();
      *(v13 + 288) = *v69;
      *(v13 + 296) = v69[1];

      v70 = swift_task_alloc();
      *(v13 + 304) = v70;
      *v70 = v13;
      sub_10001294C(v70);
      sub_1000062BC();

      return sub_10012FE90();
    }

    else
    {
      sub_100027ED4();
      v51 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        sub_10002A148();
        sub_100003890();
        sub_10001D338();
        *v42 = 136315138;
        sub_10004AC80(v52, v53, v54);
        sub_100005070();
        v59 = sub_1000082D4(v55, v56, v57, v58);
        sub_1000156D8(v59);
        v60 = sub_10000592C();
        v61(v60);
        v62 = sub_100004CB0();
        sub_100004A3C(v62, v63, v64);
        sub_100005974();

        *(v42 + 4) = v47;
        sub_100035348(&_mh_execute_header, v65, v66, "Creating new execution group for request %s");
        sub_100002068();
        sub_100002BD0();
      }

      v67 = swift_task_alloc();
      *(v13 + 312) = v67;
      *v67 = v13;
      v67[1] = sub_10005D328;
      sub_1000031B8(*(v13 + 112));
      sub_1000062BC();

      return sub_10012DFC0();
    }
  }
}

uint64_t sub_100131498()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {

    sub_100001F00();
    sub_100003D20();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *(v5 + 322) = v3 & 1;
    sub_10000A30C();
    sub_100003D20();

    return _swift_task_switch(v18, v19, v20);
  }
}

uint64_t sub_100131620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v15 = *(v13 + 322);
  sub_100027ED4();
  v16 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  v17 = sub_10000A384();
  if (v15 == 1)
  {
    if (v17)
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80(v18, v19, v20);
      sub_100005070();
      v25 = sub_1000082D4(v21, v22, v23, v24);
      sub_1000156D8(v25);
      v26 = sub_10000592C();
      v27(v26);
      v28 = sub_100004CB0();
      sub_100004A3C(v28, v29, v30);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v31, v32, "Added request %s to existing active group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  else
  {
    if (v17)
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80(v42, v43, v44);
      sub_100005070();
      v49 = sub_1000082D4(v45, v46, v47, v48);
      sub_1000156D8(v49);
      v50 = sub_10000592C();
      v51(v50);
      v52 = sub_100004CB0();
      sub_100004A3C(v52, v53, v54);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v55, v56, "Creating new execution group for request %s");
      sub_100002068();
      sub_100002BD0();
    }

    v57 = swift_task_alloc();
    *(v13 + 312) = v57;
    *v57 = v13;
    v57[1] = sub_10005D328;
    sub_1000031B8(*(v13 + 112));
    sub_1000062BC();

    return sub_10012DFC0();
  }
}

uint64_t sub_10013186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RequestPriority();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_10005CAA8(a2 + v15, v14);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_10000D300(v14);
  (*(v6 + 104))(v9, enum case for RequestPriority.foreground(_:), v5);
  LOBYTE(a2) = sub_100116BA4(v11, v9);
  v16 = *(v6 + 8);
  v16(v9, v5);
  result = (v16)(v11, v5);
  if (a2)
  {
    swift_beginAccess();
    sub_100060B3C(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_100140E60(a1);
    return swift_endAccess();
  }

  return result;
}

void sub_100131AD4()
{
  sub_10000A274();
  v2 = v0;
  v4 = v3;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v7 = v6;
  sub_100004B1C();
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = _s6PolicyVMa(0);
  sub_100002C00();
  __chkstk_darwin(v12);
  sub_100002B8C();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_100131FC0(v4 + v16, v4);
  swift_endAccess();
  if (!v1)
  {
    v62 = v7;
    v17 = v2 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
    sub_100009E10();
    swift_beginAccess();
    sub_10000A748();
    v63 = v17;
    v18 = sub_1000037BC();
    sub_10005CAA8(v18, v19);
    v20 = sub_100007B78();
    LOBYTE(v17) = sub_1000E1170(v20, v21);
    sub_100008534();
    sub_10000D300(v15);
    if (v17)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000641C(v22, qword_1001BD750);
      sub_100019498();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        sub_100002F10();
        v25 = swift_slowAlloc();
        sub_100011828();
        v61 = swift_slowAlloc();
        *v25 = 136315394;
        v60 = v24;
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v26, v27, v28, v29);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v62 + 8))(v10, v5);
        v31 = sub_100005E8C();
        sub_100004A3C(v31, v32, v33);
        sub_100019498();

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        sub_10000A748();
        v34 = v63;
        sub_10005CAA8(v63, v15);
        v59 = v11;
        v64 = *(v15 + *(v11 + 28));

        v35 = sub_100004CB0();
        sub_100065020(v35, v36);
        sub_10000E8B4();
        sub_1000082D4(v37, v38, &qword_100171DF0, v39);
        sub_1000E17B4();
        v40 = Sequence<>.joined(separator:)();
        v42 = v41;

        v64 = v40;
        v65 = v42;

        v43._countAndFlagsBits = 10272;
        v43._object = 0xE200000000000000;
        String.append(_:)(v43);

        v44 = v64;
        v45 = v65;
        v46 = RequestPriority.rawValue.getter();
        v48 = v47;
        v64 = v44;
        v65 = v45;

        v49._countAndFlagsBits = v46;
        v49._object = v48;
        String.append(_:)(v49);

        v50._countAndFlagsBits = 41;
        v50._object = 0xE100000000000000;
        String.append(_:)(v50);

        v51 = v64;
        sub_100008534();
        sub_10000D300(v15);
        v52 = sub_100005E8C();
        sub_100004A3C(v52, v53, v54);
        sub_100019498();

        *(v25 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v23, v60, "Request %s denied due to policy %s", v25, 0x16u);
        swift_arrayDestroy();
        v11 = v59;
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v34 = v63;
      }

      type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v55, v56, &protocol conformance descriptor for ModelManagerError);
      sub_10000EF40();
      swift_allocError();
      *v57 = *(v34 + *(v11 + 28));
      sub_100006098();
      (*(v58 + 104))();
      swift_willThrow();
    }
  }

  sub_100005874();
}

uint64_t sub_100131FC0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v45 = type metadata accessor for RequestCancellationReason();
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  __chkstk_darwin(v4 - 8);
  v46 = &v36[-v5];
  v6 = type metadata accessor for ModelManagerError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-v12];
  result = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v15 = *(result + 24);
  v44 = a1;
  if (*(a1 + v15) == 1)
  {
    v16 = result;
    v40 = v9;
    if (qword_1001B8AB8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v7;
      v21 = v20;
      v38 = swift_slowAlloc();
      v47 = v38;
      *v21 = 136315138;
      v37 = v19;
      RequestMetadata.id.getter();
      sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v11 + 8))(v13, v10);
      v25 = sub_100004A3C(v22, v24, &v47);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v37, "Request %s cancelled before executing", v21, 0xCu);
      sub_10005D588(v38);

      v7 = v39;
    }

    v26 = *(v16 + 28);
    v28 = v44;
    v27 = v45;
    v29 = sub_10000C6C0(v44 + v26, 1, v45);
    v30 = v40;
    v31 = v46;
    if (v29)
    {
      sub_100009BFC(v46, 1, 1, v6);
    }

    else
    {
      v32 = v42;
      v33 = v28 + v26;
      v34 = v41;
      (*(v42 + 16))(v41, v33, v27);
      RequestCancellationReason.errorValue.getter();
      (*(v32 + 8))(v34, v27);
      if (sub_10000C6C0(v31, 1, v6) != 1)
      {
        (*(v7 + 32))(v30, v31, v6);
LABEL_12:
        sub_10005FAF0(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
        swift_allocError();
        (*(v7 + 16))(v35, v30, v6);
        swift_willThrow();
        return (*(v7 + 8))(v30, v6);
      }
    }

    (*(v7 + 104))(v30, enum case for ModelManagerError.operationCancelled(_:), v6);
    if (sub_10000C6C0(v31, 1, v6) != 1)
    {
      sub_10000ED84(v31, &qword_1001B9C80);
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100132548()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v1[7] = sub_100002C58();
  v4 = type metadata accessor for RequestPriority();
  v1[8] = v4;
  sub_100002F44(v4);
  v1[9] = v5;
  v1[10] = sub_100002C58();
  v6 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v6);
  v1[11] = sub_100002C58();
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[12] = v7;
  sub_100002F44(v7);
  v1[13] = v8;
  v1[14] = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100132690()
{
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BD750);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100002F80(v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000A240(v4);
    sub_1000059D8(&_mh_execute_header, v5, v6, "RequestManager holdAssets called");
    sub_100002BD0();
  }

  v7 = v0[11];
  v8 = v0[5];

  sub_100053BB4();
  RequestMetadata.id.getter();
  v9 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v8 + v9, v7);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300(v7);
  sub_100004B94();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = sub_10000D03C(v11);
  *v12 = v13;
  v12[1] = sub_10013289C;
  sub_1000031B8(v0[14]);
  sub_100036E68();

  return v15();
}

uint64_t sub_10013289C()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[16] = v0;

  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);
    v9 = sub_1000071D0();
    v10(v9);
    sub_10003DDC8();
    sub_1000071A8();
    sub_100006378();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000071D0();
    v16(v15);
    v17 = swift_task_alloc();
    v3[17] = v17;
    *v17 = v5;
    v17[1] = sub_100132ADC;
    sub_1000031B8(v3[5]);
    sub_100006378();

    return sub_1001308AC();
  }
}

uint64_t sub_100132ADC()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100132BF0()
{
  sub_10001881C();
  sub_100003884();
  sub_10014B1E0();
  v1 = type metadata accessor for TaskPriority();
  sub_100007098(v1);
  sub_100005640();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;

  sub_100003E60();
  sub_1000652FC();

  sub_100002F54();
  sub_100007BB8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100132CC4()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_100132D48()
{
  sub_100001ED0();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for TaskPriority();
  sub_100007098(v2);
  sub_100005640();
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100003E60();
  sub_1000652FC();

  sub_100001F00();

  return v4();
}

uint64_t sub_100132E24()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_100132F48, 0, 0);
}

uint64_t sub_100132F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_100053120(v14);
  sub_10000D0AC(xmmword_1001723E0);
  sub_100018E38();
  sub_10005FAF0(v15, v16, &protocol conformance descriptor for ContinuousClock);
  sub_100048664();
  dispatch thunk of Clock.now.getter();
  sub_10003F884();
  v19 = sub_10005FAF0(v17, v18, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1000359EC(v19);
  v12[14] = *(v13 + 8);
  v12[15] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20 = sub_1000071D0();
  v21(v20);
  v22 = swift_task_alloc();
  v12[16] = v22;
  *v22 = v12;
  v22[1] = sub_100133078;
  sub_1000031B8(v12[10]);
  sub_1000062BC();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_100133078()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 136) = v0;

  (*(v3 + 112))(*(v3 + 80), *(v3 + 56));
  if (v0)
  {
    v7 = sub_1001331B4;
  }

  else
  {
    v8 = sub_100007660();
    v9(v8);
    v7 = sub_100132F48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001331B4()
{
  sub_100001ED0();
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_100001F00();

  return v1();
}

uint64_t sub_100133248()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v1[8] = sub_100002C58();
  v7 = sub_100065020(&qword_1001B9C88, &qword_1001706E0);
  sub_100002F04(v7);
  v1[9] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[10] = v8;
  sub_100002F44(v8);
  v1[11] = v9;
  v1[12] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100133374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[2];
  sub_100138790();
  v14 = v13[8];
  sub_100003370(v13 + 4, v13[7]);
  RequestMetadata.id.getter();
  sub_100004B94();
  v26 = v15 + *v15;
  v16 = swift_task_alloc();
  v12[13] = v16;
  *v16 = v12;
  v16[1] = sub_1001334B8;
  sub_10000A9C8(v12[12]);
  sub_100001FBC();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, v14 + 64, v26, a12);
}

uint64_t sub_1001334B8()
{
  sub_10001881C();
  sub_100003884();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  v4 = sub_1000071D0();
  v5(v4);
  sub_10000A9E0();
  sub_10000E700();
  sub_100007BB8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10013361C()
{
  sub_10000636C();
  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for InferenceProviderRequestResult();
  sub_100007098(v3);
  v4 = v2[8];
  sub_100003370(v2 + 4, v2[7]);
  v5 = sub_10000D0E8();
  v6(v5, v4);
  v12 = (v1 + *v1);
  v7 = swift_task_alloc();
  v8 = sub_10000D03C(v7);
  *v8 = v9;
  v8[1] = sub_100133758;
  v10 = sub_1000031B8(v0[9]);

  return v12(v10);
}

uint64_t sub_100133758()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100003754();
  v6(v5);
  sub_10000ED84(v2, &qword_1001B9C88);

  sub_100002F54();
  sub_100003D20();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1001338E8()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

void sub_100133958()
{
  sub_1000055B0();
  i = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  v6 = sub_100002F04(v5);
  __chkstk_darwin(v6);
  sub_100009C24();
  v262 = v7;
  sub_100002F1C();
  __chkstk_darwin(v8);
  v10 = &v255 - v9;
  v11 = type metadata accessor for ClientData();
  sub_100002BDC();
  v261 = v12;
  __chkstk_darwin(v13);
  sub_100002B8C();
  v272 = (v15 - v14);
  v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100009C24();
  v266 = v20;
  sub_100002F1C();
  __chkstk_darwin(v21);
  v23 = (&v255 - v22);
  v24 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v25 = (v2 + v24);
  LODWORD(v271) = RequestMetadata.subrequestID.getter();
  if (qword_1001B8AB8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v269 = v18;
    v26 = type metadata accessor for Logger();
    sub_100002FD0(v26, qword_1001BD750);

    v268 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v274 = v23;
    v267 = v10;
    v263 = v4;
    v264 = v24;
    if (v29)
    {
      v30 = swift_slowAlloc();
      sub_1000033D0();
      v31 = swift_slowAlloc();
      v277 = v31;
      *v30 = 136315394;
      v24 = v266;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v32, v33, v34, v35);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001E5E0();
      v36 = sub_10002EAE0();
      v37(v36);
      v38 = sub_100011A70();
      sub_100004A3C(v38, v39, v40);
      sub_10014B3BC();

      *(v30 + 4) = v24;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v271;
      _os_log_impl(&_mh_execute_header, v27, v28, "Starting shouldCreateNextInputStreamSubrequest %s %u", v30, 0x12u);
      sub_10005D588(v31);
      sub_100002BD0();

      v23 = v274;
      sub_100002BD0();
    }

    v41 = (i + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
    sub_100004CBC();
    v42 = swift_beginAccess();
    v43 = *v41;
    v44 = v41[1];
    v45 = v41[2];
    __chkstk_darwin(v42);
    sub_10001854C();
    *(v46 - 32) = v43;
    *(v46 - 24) = v44;
    *(v46 - 16) = v23;

    sub_100026BB0();
    sub_1000440DC();
    v50 = sub_100141808(v47, v48, v49);
    v10 = &loc_10016F000;
    v270 = v16;
    v273 = v11;
    if (v51)
    {

      v53 = sub_10004AE58(v52);
      v45 = static os_log_type_t.default.getter();

      v54 = os_log_type_enabled(v53, v45);
      v260 = v2;
      if (v54)
      {
        sub_10000A05C();
        swift_slowAlloc();
        v55 = sub_100003890();
        v276 = v55;
        sub_10004A78C(4.8149e-34);
        v57 = *(v56 - 256);
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v58, v59, v60, v61);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001E5E0();
        v63 = *(v62 - 256);
        v63[1](v57, v270);
        v64 = sub_100011A70();
        sub_100004A3C(v64, v65, v66);
        sub_10014B3BC();

        *(v44 + 4) = v57;
        sub_100005EB0(&_mh_execute_header, v53, v45, "Creating new inputStreamRequests entry for %s");
        sub_10005D588(v55);
        v16 = v270;
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v63 = v269;
        v57 = v266;
      }

      v10 = v57;
      (v63[2])(v57, v274, v16);
      type metadata accessor for RequestManager.InputStreamRequestInfo();
      swift_allocObject();
      sub_100129AB4();
      sub_100002D24();
      swift_beginAccess();
      v67 = sub_100011A70();
      sub_100134FE0(v67, v68);
      swift_endAccess();
      v23 = v63;
      v2 = v260;
    }

    else
    {
      sub_100143420(v50, v45);

      sub_100016724();
    }

    sub_10000E75C();
    __chkstk_darwin(v69);
    sub_10014B134();

    v70 = sub_100141808(sub_10014AFA8, v45, v44);
    if (v71)
    {

      v73 = sub_10004AE58(v72);
      static os_log_type_t.fault.getter();
      v74 = sub_10000A82C();
      if (os_log_type_enabled(v74, v75))
      {
        sub_1000057F8();
        v76 = swift_slowAlloc();
        sub_10000A240(v76);
        sub_100035D10();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        sub_100002BD0();
      }

      v23[1](v274, v270);
      goto LABEL_53;
    }

    v258 = sub_100143420(v70, v10);

    sub_10000E75C();
    __chkstk_darwin(v82);
    sub_10014B134();

    v83 = sub_100141808(sub_10014AFA8, v45, v44);
    if (v84)
    {
      goto LABEL_65;
    }

    v85 = sub_100143420(v83, v10);

    v86 = *(v85 + 72);
    v87 = __CFADD__(v86, 1);
    v88 = v86 + 1;
    v89 = v270;
    v90 = v273;
    if (v87)
    {
      break;
    }

    *(v85 + 72) = v88;

    if (*(v258 + 16) != v271)
    {
      v118 = sub_10004AE58(v91);
      static os_log_type_t.default.getter();
      v119 = sub_10000A82C();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 67109120;
        v121[1] = v271;
        sub_100035D10();
        _os_log_impl(v122, v123, v124, v125, v126, 8u);
        sub_100002BD0();
      }

      v127 = *v41;
      v128 = v41[1];
      sub_100032348();
      __chkstk_darwin(v129);
      sub_10001854C();
      *(v130 - 32) = v127;
      *(v130 - 24) = v128;
      v131 = v274;
      *(v130 - 16) = v274;

      v132 = sub_100026BB0();
      v134 = sub_100141808(v132, v133, v128);
      if (v135)
      {
        goto LABEL_66;
      }

      sub_100143420(v134, v10);

      v136 = v262;
      (*(v261 + 16))(v262, v263, v90);
      sub_100009BFC(v136, 0, 1, v90);
      sub_100002D24();
      swift_beginAccess();
      sub_10013522C(v136, v271);
      swift_endAccess();

      v23[1](v131, v270);
LABEL_53:
      sub_100002EEC();
      return;
    }

    v11 = v2;
    v92 = *(v258 + 24);
    v93 = v92 == 0;
    v257 = v92 == 0;
    i = v24;
    if (v92)
    {

      v95 = v92;
      v96 = sub_10004AE58(v94);
      v97 = static os_log_type_t.default.getter();

      v98 = os_log_type_enabled(v96, v97);
      v271 = v95;
      if (v98)
      {
        sub_100002F10();
        v99 = swift_slowAlloc();
        LODWORD(v262) = v97;
        v100 = v99;
        sub_100011828();
        *&v259 = swift_slowAlloc();
        v276 = v259;
        *v100 = 136315394;
        v256 = v96;
        v101 = v266;
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v102, v103, v104, v105);
        sub_1000DAE34();
        v106 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v95;
        v95 = v107;
        v108 = v89;
        v109 = v269[1];
        v109(v101, v108);
        v110 = sub_100005E98();
        sub_100004A3C(v110, v111, v112);
        sub_10000D0E8();

        *(v100 + 4) = v106;
        *(v100 + 12) = 2080;
        RequestMetadata.id.getter();
        dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v113;
        v114 = v108;
        v11 = v273;
        v109(v101, v114);
        v115 = sub_100011A70();
        sub_100004A3C(v115, v116, v117);
        sub_10005D934();

        *(v100 + 14) = v101;
        v93 = v256;
        _os_log_impl(&_mh_execute_header, v256, v262, "Concatenating clientdata from %s to %s", v100, 0x16u);
        v96 = v259;
        swift_arrayDestroy();
        sub_100016724();
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v11 = v273;
      }

      sub_10000E75C();
      __chkstk_darwin(v171);
      sub_100061B00();
      *(v172 - 32) = v96;
      *(v172 - 24) = v95;
      sub_10005B664(v172);

      v173 = sub_100005F04();
      v24 = i;
      v175 = sub_100141808(v173, v174, v95);
      if (v176)
      {
        goto LABEL_68;
      }

      sub_100143420(v175, v10);
      sub_10005D934();

      sub_100002D24();
      swift_beginAccess();
      sub_10014B004();
      sub_10013F9E8(v177);
      sub_10014B248();
      sub_10014B15C();
      v179 = *(v178 + 16);
      v178 += 16;
      v18 = *(v178 + 64);
      v264 = *(v178 + 56);
      v180 = v263;
      v263 = v179;
      v179(v93 + 32 + ((v18 + 32) & ~v18) + v264 * v95, v180, v11);
      *(v93 + 32) = v93 + 32;
      swift_endAccess();
    }

    else
    {

      v138 = sub_10004AE58(v137);
      v139 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v138, v139))
      {
        sub_10000A05C();
        swift_slowAlloc();
        v140 = v89;
        v141 = sub_100003890();
        v276 = v141;
        sub_10004A78C(4.8149e-34);
        v143 = *(v142 - 256);
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v144, v145, v146, v147);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001E5E0();
        v149 = v140;
        v23 = v269;
        (*(*(v148 - 256) + 8))(v143, v149);
        v150 = sub_100011A70();
        sub_100004A3C(v150, v151, v152);
        sub_10005D934();

        *(v44 + 4) = v143;
        sub_100005EB0(&_mh_execute_header, v138, v139, "Adding new request for %s");
        sub_10005D588(v141);
        sub_100007C2C();

        sub_100002BD0();
      }

      v153 = *v41;
      v154 = v41[1];
      sub_100032348();
      __chkstk_darwin(v155);
      sub_10001854C();
      *(v156 - 32) = v153;
      *(v156 - 24) = v154;
      v157 = v274;
      *(v156 - 16) = v274;

      v158 = sub_100026BB0();
      v24 = i;
      v160 = sub_100141808(v158, v159, v154);
      if (v161)
      {
        goto LABEL_69;
      }

      v162 = sub_100143420(v160, v10);

      *(v162 + 24) = v11;

      v163 = *v41;
      v164 = v41[1];
      sub_100032348();
      __chkstk_darwin(v165);
      *(&v255 - 4) = v163;
      *(&v255 - 3) = v164;
      *(&v255 - 2) = v157;

      v166 = sub_100141808(sub_10014AFA8, (&v255 - 6), v164);
      if (v167)
      {
        goto LABEL_70;
      }

      sub_100143420(v166, v10);
      sub_10014B3BC();

      sub_100065020(&qword_1001B90B8, &qword_10016FD30);
      v168 = v261;
      v18 = *(v261 + 80);
      v264 = *(v261 + 72);
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_10016FF40;
      v170 = v263;
      v263 = *(v168 + 16);
      v263(v169 + ((v18 + 32) & ~v18), v170, v273);
      swift_beginAccess();
      v10 = *(&v255 - 2);
      *(&v255 - 2) = v169;
    }

    v181 = *v41;
    v182 = v41[1];
    sub_100032348();
    __chkstk_darwin(v183);
    *(&v255 - 4) = v181;
    *(&v255 - 3) = v182;
    *(&v255 - 2) = v274;

    v184 = sub_100141808(sub_10014AFA8, (&v255 - 6), v182);
    if (v185)
    {
      goto LABEL_67;
    }

    v4 = sub_100143420(v184, v10);

    v186 = *(v4 + 16);
    v187 = __OFADD__(v186, 1);
    v188 = v186 + 1;
    v16 = v270;
    if (v187)
    {
      goto LABEL_58;
    }

    *(v4 + 16) = v188;

    v189 = v258;
    sub_100004CBC();
    swift_beginAccess();
    v2 = *(v189 + 48);
    v275 = v2;
    swift_retain_n();
    v25 = &v275;
    sub_100147318(sub_100135688, 0);
    if (v24)
    {
      goto LABEL_71;
    }

    v266 = *(v275 + 16);
    v262 = v261 + 16;
    v260 = (v261 + 8);
    sub_10000657C();
    v261 = v192;
    *&v193 = 67109120;
    v259 = v193;
    for (i = v190; ; v190 = i)
    {
      if (v266 == v191)
      {
LABEL_52:

        v23[1](v274, v16);
        goto LABEL_53;
      }

      if (v191 >= *(v190 + 16))
      {
        break;
      }

      v271 = v191;
      v194 = *(v190 + 4 * v191 + 32);
      v195 = *v41;
      v196 = v41[1];
      v197 = v41[2];
      __chkstk_darwin(v190);
      sub_100061B00();
      *(v198 - 32) = v195;
      *(v198 - 24) = v196;
      sub_10005B664(v198);

      v199 = sub_100005F04();
      v201 = sub_100141808(v199, v200, v196);
      if (v202)
      {
        goto LABEL_59;
      }

      v203 = sub_100143420(v201, v197);

      v204 = *(v203 + 16);

      if (v204 != v194)
      {
        goto LABEL_52;
      }

      v206 = sub_10004AE58(v205);
      v207 = static os_log_type_t.default.getter();
      if (sub_100002F80(v207))
      {
        v208 = swift_slowAlloc();
        *v208 = v259;
        *(v208 + 4) = v194;
        _os_log_impl(&_mh_execute_header, v206, v203, "Processing queued request %u", v208, 8u);
        sub_100002BD0();
      }

      v209 = *v41;
      v210 = v41[1];
      v211 = v41[2];
      __chkstk_darwin(v212);
      sub_100061B00();
      *(v213 - 32) = v209;
      *(v213 - 24) = v210;
      sub_10005B664(v213);

      v214 = sub_100005F04();
      v216 = sub_100141808(v214, v215, v210);
      if (v217)
      {
        goto LABEL_63;
      }

      v218 = sub_100143420(v216, v211);
      sub_100004CBC();
      swift_beginAccess();
      v219 = v218[5];
      v220 = v218[6];
      v221 = v218[7];

      v222 = sub_100140EF4(v194, v219, v220);
      if (v223)
      {
        goto LABEL_60;
      }

      v224 = v222;

      v23 = v272;
      sub_100021800(v224, v221, &type metadata accessor for ClientData, v272);

      sub_10000E75C();
      __chkstk_darwin(v225);
      sub_100061B00();
      *(v226 - 32) = v209;
      *(v226 - 24) = v219;
      v227 = v274;
      *(v226 - 16) = v274;

      v228 = sub_100005F04();
      v230 = sub_100141808(v228, v229, v219);
      if (v231)
      {
        goto LABEL_61;
      }

      sub_100143420(v230, v221);
      sub_10005D934();

      sub_100002D24();
      swift_beginAccess();
      sub_10014B004();
      sub_10013F9E8(v232);
      sub_10014B248();
      sub_10014B15C();
      v263(v224 + 32 + v233 + v264 * v219, v23, v273);
      *(v224 + 32) = v224 + 32;
      swift_endAccess();

      v25 = *v41;
      v235 = v41[1];
      v4 = v41[2];
      __chkstk_darwin(v234);
      sub_100061B00();
      *(v236 - 32) = v25;
      *(v236 - 24) = v235;
      *(v236 - 16) = v227;

      v237 = sub_100005F04();
      sub_100141808(v237, v238, v235);
      v16 = v270;
      sub_100016724();
      if (v240)
      {
        goto LABEL_62;
      }

      v241 = sub_100143420(v239, v4);

      sub_100002D24();
      swift_beginAccess();
      v242 = sub_100140EF4(v194, *(v241 + 40), *(v241 + 48));
      if (v244)
      {
        v245 = 1;
        v11 = v273;
        v10 = v267;
      }

      else
      {
        v246 = v242;
        sub_100144258(v242, v243);
        v25 = (v241 + 56);
        v10 = v267;
        sub_100144970(v246, sub_1001472DC, &type metadata accessor for ClientData, sub_1000708E4);
        v245 = 0;
        v11 = v273;
      }

      sub_100009BFC(v10, v245, 1, v11);
      sub_10000ED84(v10, &qword_1001BA5F0);
      swift_endAccess();

      v18 = &v255;
      sub_10000E75C();
      __chkstk_darwin(v247);
      sub_100061B00();
      *(v248 - 32) = v25;
      *(v248 - 24) = v4;
      sub_10005B664(v248);

      v249 = sub_100005F04();
      v251 = sub_100141808(v249, v250, v4);
      if (v252)
      {
        goto LABEL_64;
      }

      v2 = v251;
      (*v260)(v272, v11);
      sub_100143420(v2, v10);
      sub_10005D934();

      v253 = *(v2 + 16);
      v187 = __OFADD__(v253, 1);
      v254 = v253 + 1;
      if (v187)
      {
        goto LABEL_55;
      }

      *(v2 + 16) = v254;

      v191 = v271 + 1;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_100005344();
    swift_once();
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

  __break(1u);
}

uint64_t sub_100134FE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v9 = v2[1];
  v20 = *v2;
  v21 = v9;
  v22 = a2;
  v10 = sub_100141808(sub_10014AFA8, v19, v9);
  if (v12)
  {
    if (a1)
    {
      sub_100140F44(a2, v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    return (*(v6 + 8))(a2, v5);
  }

  else
  {
    v14 = v10;
    if (a1)
    {
      v16 = v2 + 2;
      v15 = v2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_100064034(v15);
        *v16 = v15;
      }

      result = (*(v6 + 8))(a2, v5);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *(v15 + 16))
      {
        *(v15 + 8 * v14 + 32) = a1;

        return specialized ContiguousArray._endMutation()();
      }

      __break(1u);
    }

    else
    {
      sub_100144424(v10, v11, v8);
      v18 = *(v6 + 8);
      v18(v8, v5);
      sub_100060BAC(v14, sub_10014AFE0, sub_100060E68);

      return v18(a2, v5);
    }
  }

  return result;
}

uint64_t sub_10013522C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ClientData();
  v48 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v46 = &v44 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - v11;
  __chkstk_darwin(v10);
  v45 = &v44 - v13;
  v14 = sub_100065020(&qword_1001BDBD8, &qword_100174148);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = a2;
  v19 = sub_100140EF4(a2, *v2, v2[1]);
  LOBYTE(a2) = v20;
  v22 = v21;
  v23 = *(v15 + 56);
  v49 = a1;
  sub_10001E72C(a1, &v17[v23], &qword_1001BA5F0, &qword_100171290);
  v24 = v5;
  v25 = sub_10000C6C0(&v17[v23], 1, v5);
  if (a2)
  {
    if (v25 == 1)
    {
      return sub_10000ED84(v49, &qword_1001BA5F0);
    }

    else
    {
      v27 = v48;
      v28 = &v17[v23];
      v29 = v46;
      v30 = v24;
      v45 = *(v48 + 32);
      (v45)(v46, v28, v24);
      sub_100141688(v18, v22);
      v31 = v47;
      (*(v27 + 16))(v47, v29, v30);
      v34 = v2[2];
      v32 = v2 + 2;
      v33 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100070F08();
        v33 = *v32;
      }

      v36 = *(v33 + 16);
      if (v36 >= *(v33 + 24) >> 1)
      {
        sub_100070F08();
      }

      sub_10000ED84(v49, &qword_1001BA5F0);
      (*(v27 + 8))(v29, v30);
      v37 = *v32;
      *(v37 + 16) = v36 + 1;
      result = (v45)(v37 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v36, v31, v30);
      *v32 = v37;
    }
  }

  else
  {
    if (v25 == 1)
    {
      sub_100144258(v19, v22);
      sub_100144970(v19, sub_1001472DC, &type metadata accessor for ClientData, sub_1000708E4);
      sub_10000ED84(v49, &qword_1001BA5F0);
      return (*(v48 + 8))(v12, v5);
    }

    v38 = v48;
    v39 = &v17[v23];
    v40 = v45;
    (*(v48 + 32))(v45, v39, v24);
    v41 = v2[2];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    if ((v42 & 1) == 0)
    {
      sub_1001472DC();
      v41 = v43;
    }

    result = sub_10000ED84(v49, &qword_1001BA5F0);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v41 + 16))
    {
      result = (*(v38 + 40))(v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v19, v40, v24);
      v2[2] = v41;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10013569C(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-v5];
  v7 = v1[1];
  v13 = *v1;
  v14 = v7;
  v15 = a1;
  v9 = sub_100141808(sub_10014AFA8, v12, v7);
  result = 0;
  if ((v11 & 1) == 0)
  {
    sub_100144424(v9, v8, v6);
    (*(v4 + 8))(v6, v3);
    return sub_100060BAC(v9, sub_10014AFE0, sub_100060E68);
  }

  return result;
}

uint64_t sub_1001357E8()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v1[13] = v6;
  sub_100002F04(v6);
  v1[14] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v7);
  v1[15] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[16] = v8;
  sub_100002F44(v8);
  v1[17] = v9;
  v1[18] = sub_100002C58();
  v10 = type metadata accessor for TaskPriority();
  v1[19] = v10;
  sub_100002F44(v10);
  v1[20] = v11;
  v1[21] = sub_100002C58();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10013593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100005B0C();
  sub_10001A5C4();
  sub_100131AD4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100002FD0(v11, qword_1001BD750);
  v12 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v9[21];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    *v10 = 136315138;
    static Task<>.currentPriority.getter();
    sub_10005FAF0(&qword_1001BDBC8, &type metadata accessor for TaskPriority, &protocol conformance descriptor for TaskPriority);
    sub_100042FBC();
    v15 = sub_10000C778();
    v16(v15);
    v17 = sub_10000CD1C();
    sub_100004A3C(v17, v18, v19);
    sub_100005974();

    *(v10 + 4) = v14;
    sub_100035348(&_mh_execute_header, v20, v21, "executeRequest executing (Priority: %s)");
    sub_100002068();
    sub_100002BD0();
  }

  v22 = v9[18];
  v24 = v9[16];
  v23 = v9[17];
  v25 = v9[14];
  v58 = v9[15];
  v59 = v9[19];
  v26 = v9[12];
  v61 = v9[11];
  v62 = v9[13];
  v60 = v9[10];
  v27 = v9[8];
  v28 = v9[9];
  _StringGuts.grow(_:)(23);

  RequestMetadata.id.getter();
  sub_100005070();
  sub_1000082D4(v29, v30, v31, v32);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  (*(v23 + 8))(v22, v24);
  v34._countAndFlagsBits = 0x676E696E6E755220;
  v34._object = 0xED00006B73615420;
  String.append(_:)(v34);
  sub_100003978();
  sub_100009BFC(v35, v36, v37, v38);
  sub_100003CA4();
  v41 = sub_10005FAF0(v39, v40, &unk_100174018);
  v42 = swift_allocObject();
  v42[2] = v26;
  v42[3] = v41;
  v42[4] = v26;
  v42[5] = v27;
  v42[6] = v28;
  v42[7] = v60;
  v42[8] = v61;

  swift_retain_n();

  sub_100004CB0();
  sub_100128ED0();
  v44 = v43;
  v9[22] = v43;
  v45 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v27 + v45, v25);
  v46 = *(v62 + 20);

  *(v25 + v46) = v44;
  sub_100002D24();
  swift_beginAccess();
  sub_10005CB00(v25, v27 + v45);
  swift_endAccess();
  v47 = swift_task_alloc();
  v9[23] = v47;
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000060CC();
  *v47 = v48;
  v47[1] = sub_10005C80C;
  sub_100019260();
  sub_1000135DC();

  return Task.value.getter(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, v60, v61, v62, 0x2074736575716552, 0xE800000000000000);
}

uint64_t sub_100135D8C()
{
  sub_100001ED0();
  sub_10005C920(*(v0 + 64));

  sub_100001F00();

  return v1();
}

uint64_t sub_100135E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_100135E50, a4, 0);
}

uint64_t sub_100135E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100001ED0();
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  v23 = *(v20 + 24);
  v24 = swift_task_alloc();
  *(v20 + 64) = v24;
  v25 = *(v20 + 48);
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  *(v24 + 32) = v21;
  *(v24 + 40) = v25;
  v26 = swift_task_alloc();
  *(v20 + 72) = v26;
  *(v26 + 16) = v22;
  *(v26 + 24) = v23;
  sub_100003CA4();
  v29 = sub_10005FAF0(v27, v28, &unk_100174018);
  v30 = swift_task_alloc();
  *(v20 + 80) = v30;
  *v30 = v20;
  v30[1] = sub_10005C6E8;
  v31 = *(v20 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v31, &unk_100174110, v24, sub_10014A3B8, v26, v23, v29, &type metadata for () + 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100135F94()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100135FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  v8 = type metadata accessor for ModelManagerError();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v10 = type metadata accessor for InferenceError.Context();
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();
  v12 = type metadata accessor for ClientData();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v13 = type metadata accessor for InferenceProviderRequestConfiguration();
  v6[39] = v13;
  v6[40] = *(v13 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v14 = type metadata accessor for InferenceProviderRequestResult();
  v6[43] = v14;
  v6[44] = *(v14 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v15 = type metadata accessor for InferenceMonitor.Event();
  v6[47] = v15;
  v6[48] = *(v15 - 8);
  v6[49] = swift_task_alloc();

  return _swift_task_switch(sub_10013636C, a2, 0);
}

uint64_t sub_100136CC0()
{
  sub_100003884();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[52] = v0;

  v6 = v2[42];
  v7 = v2[40];
  v8 = v2[39];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);
    sub_10003DDC8();
    sub_1000071A8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    sub_100005358();
    v16 = v12;
    v13 = swift_task_alloc();
    v3[53] = v13;
    *v13 = v5;
    v13[1] = sub_100136EC0;
    v14 = sub_1000031B8(v3[46]);

    return v16(v14);
  }
}

uint64_t sub_100136EC0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100136FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  (*(v14[44] + 8))(v14[46], v14[43]);
  if (RequestMetadata.isStream.getter())
  {
    sub_10004AE14();
    sub_10014B2E4();

    sub_10003328C(v15, v16, v17);
    sub_100005070();
    sub_1000082D4(v18, v19, v20, v21);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = sub_100003754();
    v24(v23);
    v14[57] = a11;
    sub_100003CA4();
    sub_10005FAF0(v25, v26, &unk_100174018);
    v27 = swift_task_alloc();
    v14[58] = v27;
    *v27 = v14;
    sub_100012BF8(v27);
    sub_100011DF4();
    sub_100003540();

    return static _OSTransaction.named<A>(_:closure:isolation:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000065AC();
    sub_1000494CC();

    sub_100002F54();
    sub_100003540();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100137198()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1000071A8();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_1001372BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_1000065AC();
  sub_1000494CC();

  sub_100002F54();
  sub_1000062BC();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_100137370()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 152);
  if (v0)
  {

    v6 = sub_10014B000;
  }

  else
  {
    v6 = sub_10013749C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10013749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = *(v16 + 472);
  v18 = *(v16 + 488);
  v19 = *(v16 + 256);
  v20 = *(v16 + 240);
  v21 = *(v16 + 216);
  v22 = *(v16 + 224);
  v34 = *(v16 + 152);
  v35 = *(v16 + 160);
  sub_10005FAF0(&qword_1001BAA28, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  sub_100007894();
  v36 = swift_allocError();
  v24 = v23;
  v17(v23, v19, v20);
  (*(v22 + 104))(v24, v18, v21);
  swift_willThrow();
  sub_10005C054(v34, v35);
  sub_1000065AC();

  sub_100001F00();
  sub_100003D04();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, a13, a14, a15, a16);
}

uint64_t sub_100137600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = *(v14 + 416);
  sub_10014B0E4();
  v18 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  v19 = sub_100002CBC();
  if (sub_100060B20(v19, v20))
  {
    v21 = sub_10005D760();
    (*(v22 + 88))(v21);
    sub_1000365B8();
    if (v23)
    {
      sub_100049480();
      v24 = sub_100007B78();
      v25(v24);
      v17 = enum case for InferenceError.notLoaded(_:)[4];
      v26 = sub_10002EAE0();
      v17(v26);
      goto LABEL_10;
    }

    v27 = sub_10005D760();
    (*(v28 + 8))(v27);
  }

  sub_10014B26C();
  *(v16 - 48) = v17;
  swift_errorRetain();
  v29 = sub_100048664();
  if (!sub_100060B20(v29, v30))
  {
LABEL_18:
    v57 = *(v14 + 160);

    v58 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_100138098(v57 + v58);
    swift_endAccess();
    swift_willThrow();
    v59 = sub_10014B3C8();
    sub_10005C054(v59, v60);
    sub_1000065AC();
    v71 = *(v14 + 208);

    sub_100001F00();
    sub_100003540();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v71, a11, a12, a13, a14);
  }

  v31 = sub_10014B450();
  if (v32(v31) != enum case for ModelManagerError.inferenceError(_:) || (v33 = sub_100045E6C(), v34(v33), (*(v16 + 88))(v18, v15), sub_1000365B8(), !v23))
  {
    v55 = sub_10014B388();
    v56(v55);
    goto LABEL_18;
  }

  sub_10014B10C();
  v35 = sub_10014B41C();
  v36(v35);
  v37 = sub_10014B3A8();
  v17(v37);
LABEL_10:

  *(v14 + 472) = v17;
  *(v14 + 488) = v15;
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100002FD0(v38, qword_1001BD750);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v40))
  {
    sub_1000057F8();
    v41 = swift_slowAlloc();
    sub_10000A240(v41);
    sub_1000059D8(&_mh_execute_header, v42, v43, "InferenceProvider assets are de-synced with MM, terminating the inference provider to self-heal");
    sub_100002BD0();
  }

  sub_100037EB4();
  v69 = sub_100035D60();
  sub_100004B94();
  v70 = v44 + *v44;
  v45 = swift_task_alloc();
  *(v14 + 480) = v45;
  *v45 = v14;
  sub_10000EF70(v45);
  sub_100003540();

  return v50(v46, v47, v48, v49, v50, v51, v52, v53, v69, v70, a11, a12, a13, a14);
}

uint64_t sub_1001379B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = *(v14 + 440);
  sub_10014B0E4();
  v18 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  v19 = sub_100002CBC();
  if (sub_100060B20(v19, v20))
  {
    v21 = sub_10005D760();
    (*(v22 + 88))(v21);
    sub_1000365B8();
    if (v23)
    {
      sub_100049480();
      v24 = sub_100007B78();
      v25(v24);
      v17 = enum case for InferenceError.notLoaded(_:)[4];
      v26 = sub_10002EAE0();
      v17(v26);
      goto LABEL_10;
    }

    v27 = sub_10005D760();
    (*(v28 + 8))(v27);
  }

  sub_10014B26C();
  *(v16 - 48) = v17;
  swift_errorRetain();
  v29 = sub_100048664();
  if (!sub_100060B20(v29, v30))
  {
LABEL_18:
    v57 = *(v14 + 160);

    v58 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_100138098(v57 + v58);
    swift_endAccess();
    swift_willThrow();
    v59 = sub_10014B3C8();
    sub_10005C054(v59, v60);
    sub_1000065AC();
    v71 = *(v14 + 208);

    sub_100001F00();
    sub_100003540();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v71, a11, a12, a13, a14);
  }

  v31 = sub_10014B450();
  if (v32(v31) != enum case for ModelManagerError.inferenceError(_:) || (v33 = sub_100045E6C(), v34(v33), (*(v16 + 88))(v18, v15), sub_1000365B8(), !v23))
  {
    v55 = sub_10014B388();
    v56(v55);
    goto LABEL_18;
  }

  sub_10014B10C();
  v35 = sub_10014B41C();
  v36(v35);
  v37 = sub_10014B3A8();
  v17(v37);
LABEL_10:

  *(v14 + 472) = v17;
  *(v14 + 488) = v15;
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100002FD0(v38, qword_1001BD750);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v40))
  {
    sub_1000057F8();
    v41 = swift_slowAlloc();
    sub_10000A240(v41);
    sub_1000059D8(&_mh_execute_header, v42, v43, "InferenceProvider assets are de-synced with MM, terminating the inference provider to self-heal");
    sub_100002BD0();
  }

  sub_100037EB4();
  v69 = sub_100035D60();
  sub_100004B94();
  v70 = v44 + *v44;
  v45 = swift_task_alloc();
  *(v14 + 480) = v45;
  *v45 = v14;
  sub_10000EF70(v45);
  sub_100003540();

  return v50(v46, v47, v48, v49, v50, v51, v52, v53, v69, v70, a11, a12, a13, a14);
}

uint64_t sub_100137D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for RequestKey();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100137E30, 0, 0);
}

uint64_t sub_100137E30()
{
  sub_10000636C();
  sub_100008110();
  sub_100045430();
  RequestMetadata.requestKey.getter();
  sub_100004B94();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = sub_10000AC24(v2);
  *v3 = v4;
  v3[1] = sub_100137F58;
  v5 = sub_10000A9C8(*(v0 + 40));

  return v7(v5);
}

uint64_t sub_100137F58()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);

  sub_100002F54();

  return v5();
}

uint64_t sub_100138098(uint64_t a1)
{
  v2 = type metadata accessor for RequestCancellationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ModelManagerError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  if (*(a1 + *(result + 24)) == 1)
  {
    v18 = v10;
    v14 = *(result + 28);
    if (sub_10000C6C0(a1 + v14, 1, v2))
    {
      sub_100009BFC(v8, 1, 1, v9);
    }

    else
    {
      (*(v3 + 16))(v5, a1 + v14, v2);
      RequestCancellationReason.errorValue.getter();
      (*(v3 + 8))(v5, v2);
      if (sub_10000C6C0(v8, 1, v9) != 1)
      {
        v15 = v18;
        (*(v18 + 32))(v12, v8, v9);
        sub_10005FAF0(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
        swift_allocError();
        (*(v15 + 16))(v16, v12, v9);
        swift_willThrow();
        return (*(v15 + 8))(v12, v9);
      }
    }

    return sub_10000ED84(v8, &qword_1001B9C80);
  }

  return result;
}

double sub_100138394(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v7 = sub_10001B160("Request cancelled", 17, 2);
  v8 = type metadata accessor for TaskPriority();
  sub_100009BFC(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1000652FC();

  swift_beginAccess();
  os_activity_scope_leave((v7 + 24));
  swift_endAccess();

  return result;
}

uint64_t sub_100138518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001385E4, 0, 0);
}

uint64_t sub_1001385E4()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v4 = *(v0 + 16);
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80(v5, v6, v7);
    sub_100005070();
    v12 = sub_1000082D4(v8, v9, v10, v11);
    sub_1000156D8(v12);
    v13 = sub_10000592C();
    v14(v13);
    v15 = sub_100004CB0();
    sub_100004A3C(v15, v16, v17);
    sub_100005974();

    *(v1 + 4) = v4;
    sub_100035348(&_mh_execute_header, v18, v19, "InferenceProvider cancel for Request %s");
    sub_100002068();
    sub_100002BD0();
  }

  v20 = swift_task_alloc();
  *(v0 + 56) = v20;
  *v20 = v0;
  v20[1] = sub_10001C820;
  sub_100002CBC();
  sub_1000062BC();

  return sub_10012EDE0();
}

void sub_100138790()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v27 - v11;
  v29 = v3;
  RequestMetadata.id.getter();
  v13 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100004CBC();
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[2];
  v30[2] = *v13;
  v30[3] = v14;
  v30[4] = v12;

  v16 = sub_100141808(sub_10014AFA8, v30, v14);
  if (v17)
  {

    (*(v6 + 8))(v12, v4);
LABEL_6:
    sub_100002EEC();
    return;
  }

  sub_100143420(v16, v15);

  v18 = *(v6 + 8);
  v27[1] = v6 + 8;
  v28 = v4;
  v18(v12, v4);

  v19 = RequestMetadata.id.getter();
  v20 = *v13;
  v21 = v13[1];
  v22 = v13[2];
  __chkstk_darwin(v19);
  v27[-4] = v20;
  v27[-3] = v21;
  v27[-2] = v10;

  v23 = sub_100141808(sub_10014AFA8, &v27[-6], v21);
  if ((v24 & 1) == 0)
  {
    v25 = sub_100143420(v23, v22);

    v18(v10, v28);
    v26 = RequestMetadata.subrequestID.getter();
    if (v26)
    {
      *(v25 + 64) = v26 - 1;
      *(v25 + 68) = 0;

      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100138A3C()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v3;
  sub_100002F44(v3);
  v1[14] = v4;
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100138B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v29;
  a24 = v30;
  sub_100005EA4();
  a22 = v24;
  v31 = v24[17];
  RequestMetadata.id.getter();
  sub_1000125C0();
  swift_beginAccess();
  v32 = sub_10000598C();
  *(sub_10014B1BC(v32) + 32) = v31;

  v33 = sub_10000640C();
  sub_100141808(v33, v34, v35);
  sub_100007BE4();
  if (v28)
  {
  }

  else
  {
    sub_1000118CC();

    if (*(v27 + 68) != 1 && *(v27 + 64) < *(v27 + 72))
    {
      v36 = v24[17];
      sub_100002D24();
      swift_beginAccess();
      sub_10013569C(v36);
      swift_endAccess();

      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000641C(v37, qword_1001BD750);
      sub_1000251CC();
      v38 = sub_1000062B0();
      v39(v38);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v24[17];
      v44 = v24[13];
      v45 = v24[14];
      if (v42)
      {
        sub_10000A05C();
        a11 = v43;
        v46 = swift_slowAlloc();
        sub_1000033D0();
        a10 = swift_slowAlloc();
        a12 = a10;
        *v46 = 136315138;
        sub_100005070();
        sub_1000082D4(v47, v48, v49, v50);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        HIDWORD(a9) = v41;
        v53 = v52;
        v54 = *(v45 + 8);
        v55 = sub_100036724();
        v54(v55);
        v56 = sub_100004A3C(v51, v53, &a12);

        *(v46 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v40, BYTE4(a9), "Removing %s from inputStreamRequests dictionary", v46, 0xCu);
        sub_10014B518();
        sub_100002BD0();

        sub_100002BD0();

        (v54)(a11, v44);
      }

      else
      {

        v102 = *(v45 + 8);
        v103 = sub_100036724();
        v102(v103);
        (v102)(v43, v44);
      }

      goto LABEL_23;
    }
  }

  v57 = v24[17];
  v58 = sub_10000598C();
  *(sub_10014B1BC(v58) + 32) = v57;

  v59 = sub_10000640C();
  sub_100141808(v59, v60, v61);
  sub_100007BE4();
  if (v28)
  {

LABEL_16:
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000641C(v80, qword_1001BD750);
    sub_1000251CC();
    v81 = sub_1000062B0();
    v82(v81);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v24[14];
    if (v85)
    {
      sub_10000A05C();
      swift_slowAlloc();
      a11 = sub_100003890();
      a12 = a11;
      *v25 = 136315138;
      sub_100005070();
      sub_1000082D4(v87, v88, v89, v90);
      v91 = sub_100042FBC();
      v93 = v92;
      v94 = *(v86 + 8);
      LODWORD(a10) = v84;
      v95 = sub_100005E8C();
      v94(v95);
      v96 = sub_100004A3C(v91, v93, &a12);

      *(v25 + 4) = v96;
      sub_100005EB0(&_mh_execute_header, v83, v84, "Incorrect Input streaming request state for group %s");
      sub_10014B518();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v94 = *(v86 + 8);
      v97 = sub_100005E8C();
      v94(v97);
    }

    type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v98, v99, &protocol conformance descriptor for ModelManagerError);
    sub_100006194();
    sub_100007894();
    swift_allocError();
    sub_100006098();
    (*(v100 + 104))();
    swift_willThrow();
    v101 = sub_1000071D0();
    v94(v101);

    sub_100001F00();
    goto LABEL_24;
  }

  sub_1000118CC();

  v25 = *(v57 + 24);

  if (!v25)
  {
    goto LABEL_16;
  }

  type metadata accessor for DaemonRequest(0);
  v62 = sub_10005C434();

  if ((v62 & 1) == 0)
  {
    goto LABEL_16;
  }

  v63 = v24[17];
  v64 = sub_10000598C();
  *(sub_10014B1BC(v64) + 32) = v63;

  v65 = sub_10000640C();
  sub_100141808(v65, v66, v67);
  result = sub_100007BE4();
  if (v28)
  {
    __break(1u);
    goto LABEL_28;
  }

  v69 = v24[17];
  sub_1000118CC();

  *(v63 + 24) = 0;

  v70 = sub_10000598C();
  v70[2] = v26;
  v70[3] = v25;
  v70[4] = v69;

  v71 = sub_10002B158();
  sub_100141808(v71, v72, v25);
  v74 = v73;

  if (v74)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v75 = sub_1000062B0();
  v77 = sub_100143420(v75, v76);

  v78 = sub_10002EAE0();
  v79(v78);
  swift_beginAccess();
  *(v77 + 32) = _swiftEmptyArrayStorage;

LABEL_23:

  sub_100002F54();
LABEL_24:
  sub_100003D04();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100139284()
{
  sub_100002BAC();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  v1[22] = sub_100002C58();
  v6 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v6);
  v1[23] = v7;
  v1[24] = *(v8 + 64);
  v1[25] = sub_10000F0C0();
  v1[26] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v1[27] = v9;
  sub_100002F44(v9);
  v1[28] = v10;
  v1[29] = sub_100002C58();
  v11 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[30] = v11;
  sub_100002F44(v11);
  v1[31] = v12;
  v1[32] = sub_100002C58();
  v13 = type metadata accessor for RequestPriority();
  v1[33] = v13;
  sub_100002F44(v13);
  v1[34] = v14;
  v1[35] = sub_100002C58();
  v15 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v15);
  v1[36] = sub_100002C58();
  v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[37] = v16;
  sub_100002F44(v16);
  v1[38] = v17;
  v1[39] = sub_10000F0C0();
  v1[40] = swift_task_alloc();
  v18 = type metadata accessor for InferenceProviderRequestConfiguration();
  v1[41] = v18;
  sub_100002F44(v18);
  v1[42] = v19;
  v1[43] = sub_10000F0C0();
  v1[44] = swift_task_alloc();
  v20 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v20);
  v1[45] = sub_100002C58();
  v21 = sub_100002C10();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_10013956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  *(v17 + 368) = sub_10000641C(v19, qword_1001BD750);
  v20 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1000057F8();
    v22 = swift_slowAlloc();
    sub_10000BF10(v22);
    _os_log_impl(&_mh_execute_header, v20, v16, "executeRequest requested", v18, 2u);
    sub_100002BD0();
  }

  sub_100131AD4();
  *(v17 + 376) = 0;
  v32 = sub_10014F3A8();
  if (v32)
  {
    v33 = *(v17 + 352);
    v34 = *(v17 + 360);
    v35 = *(v17 + 328);
    v36 = *(v17 + 336);
    v37 = *(v17 + 144);
    v38 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    (*(v36 + 16))(v33, v37 + v38, v35);
    InferenceProviderRequestConfiguration.auditToken.getter();
    v39 = sub_100007660();
    v40(v39);
    v41 = type metadata accessor for AuditToken();
    if (sub_10000C6C0(v34, 1, v41) == 1)
    {
      sub_10000ED84(*(v17 + 360), &qword_1001BB3F8);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      if (sub_100002F80(v43))
      {
        sub_1000057F8();
        v44 = swift_slowAlloc();
        sub_10000A240(v44);
        sub_1000059D8(&_mh_execute_header, v45, v46, "Request executed with no audit token");
        sub_100002BD0();
      }

      type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v47, v48, &protocol conformance descriptor for ModelManagerError);
      sub_100007894();
      swift_allocError();
      sub_100006098();
      (*(v49 + 104))();
      swift_willThrow();
      sub_1000076F4();
      sub_10014B4F8();

      sub_100001F00();
      sub_100003D04();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v63 = *(v17 + 168);
      *(v17 + 552) = AuditToken.processIdentifier.getter();
      sub_100006098();
      v64 = sub_100007660();
      v65(v64);
      *(v17 + 384) = *(v63 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter);
      sub_10000A30C();
      sub_100003D04();

      return _swift_task_switch(v66, v67, v68);
    }
  }

  else
  {
    v50 = *(v17 + 288);
    v51 = *(v17 + 144);
    sub_100053BB4();
    *(v17 + 392) = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.id.getter();
    v52 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    *(v17 + 400) = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v51 + v52, v50);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300(v50);
    sub_100004B94();
    v70 = v53 + *v53;
    v54 = swift_task_alloc();
    *(v17 + 408) = v54;
    *v54 = v17;
    v54[1] = sub_100139CF0;
    sub_1000031B8(*(v17 + 320));
    sub_100036E68();
    sub_100003D04();

    return v59(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, 88, v70, a13, a14, a15, a16);
  }
}

uint64_t sub_100139A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = *(v16 + 376);
  sub_10014B868(*(v16 + 552));
  if (v17)
  {
    sub_10014B4F8();

    sub_100001F00();
    sub_100003D04();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10000A30C();
    sub_100003D04();

    return _swift_task_switch(v27, v28, v29);
  }
}

uint64_t sub_100139B54()
{
  sub_1000033DC();
  v1 = v0[36];
  v2 = v0[18];
  sub_100053BB4();
  v0[49] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v3 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v0[50] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v2 + v3, v1);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300(v1);
  sub_100004B94();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_100139CF0;
  sub_1000031B8(v0[40]);
  sub_100036E68();

  return v7();
}

uint64_t sub_100139CF0()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  *v4 = *v1;
  v3[52] = v0;

  v5 = v2[40];
  v6 = v2[38];
  v7 = v2[37];
  (*(v2[34] + 8))(v2[35], v2[33]);
  v10 = *(v6 + 8);
  v9 = v6 + 8;
  v8 = v10;
  if (!v0)
  {
    v3[53] = v8;
    v3[54] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v8(v5, v7);
  sub_100006378();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100139ED4()
{
  v43 = *(v0 + 424);
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v35 = *(v0 + 312);
  v34 = *(v0 + 256);
  v40 = *(v0 + 240);
  v42 = *(v0 + 296);
  v4 = *(v0 + 224);
  v32 = *(v0 + 400);
  v33 = *(v0 + 232);
  v37 = *(v0 + 216);
  v38 = *(v0 + 248);
  v45 = *(v0 + 208);
  v46 = *(v0 + 200);
  v47 = *(v0 + 184);
  v50 = *(v0 + 160);
  v51 = *(v0 + 168);
  v5 = *(v0 + 144);
  v48 = *(v0 + 192);
  v49 = *(v0 + 152);
  sub_100007130(v51 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager, v0 + 16);
  sub_100003370((v0 + 16), *(v0 + 40));
  RequestMetadata.id.getter();
  RequestMetadata.sessionID.getter();
  RequestMetadata.loggingIdentifier.getter();
  (*(v1 + 16))(v2, &v5[v32], v3);
  InferenceProviderRequestConfiguration.useCaseIdentifier.getter();
  (*(v1 + 8))(v2, v3);
  v6 = *(v5 + 8);
  sub_100003370(v5 + 4, *(v5 + 7));
  v7 = sub_10000D0E8();
  v8(v7, v6);
  InferenceProviderDescriptor.id.getter();
  v9 = *(v4 + 8);
  *(v0 + 440) = v9;
  *(v0 + 448) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v33, v37);
  RequestMetadata.isStream.getter();
  RequestMetadata.isInference.getter();
  v10 = sub_100002CBC();
  v44 = v11(v10);
  *(v0 + 456) = v44;

  (*(v38 + 8))(v34, v40);
  v43(v35, v42);
  v12 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider;
  *(v0 + 464) = OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider;
  v39 = *(v51 + v12 + 24);
  v36 = *(v51 + v12 + 32);
  sub_100003370((v51 + v12), v39);
  RequestMetadata.id.getter();
  v41 = type metadata accessor for UUID();
  *(v0 + 472) = v41;
  sub_100002BDC();
  v14 = v13;
  *(v0 + 480) = *(v15 + 64);
  v16 = sub_100002C58();
  UUIDIdentifier.uuid.getter();
  v43(v35, v42);
  v17 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v17);
  *(v0 + 488) = *(v18 + 64);
  v19 = sub_100002C58();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  v20 = RequestMetadata.useCaseID.getter();
  v22 = v21;
  *(v0 + 496) = *(v5 + 2);
  sub_1001284A4();
  (*(v36 + 8))(v16, v19, 1, v20, v22, v23, v39);

  sub_10000ED84(v19, &qword_1001B9060);
  v24 = *(v14 + 8);
  *(v0 + 504) = v24;
  *(v0 + 512) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v16, v41);

  sub_100065020(&qword_1001BDBC0, &qword_1001740C0);
  v25 = swift_allocObject();
  *(v0 + 520) = v25;
  *(v25 + 20) = 0;
  *(v25 + 16) = 0;
  sub_100007130(v0 + 16, v0 + 56);
  sub_10001E72C(v45, v46, &qword_1001B9058, &qword_10016FCC8);
  v26 = (*(v47 + 80) + 80) & ~*(v47 + 80);
  v27 = (v48 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v0 + 528) = v28;
  sub_100004A04((v0 + 56), (v28 + 2));
  v28[7] = v5;
  v28[8] = v44;
  v28[9] = v51;
  sub_10002F6B4(v46, v28 + v26, &qword_1001B9058, &qword_10016FCC8);
  *(v28 + v27) = v25;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v49;
  v29[1] = v50;

  v30 = swift_task_alloc();
  *(v0 + 536) = v30;
  *v30 = v0;
  v30[1] = sub_10005D478;
  sub_1000031B8(*(v0 + 144));

  return sub_1001308AC();
}

uint64_t sub_10013A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    sub_10000A05C();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    sub_100005EB0(&_mh_execute_header, v17, v18, "Calling back request unable to add connection with %@");
    sub_10000ED84(v20, &qword_1001B8F68);
    sub_100002BD0();

    sub_100002BD0();
  }

  swift_willThrow();
  sub_1000076F4();
  v32 = *(v16 + 200);
  v33 = *(v16 + 176);
  v34 = v22;

  sub_100001F00();
  sub_100003D04();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, a13, a14, a15, a16);
}

uint64_t sub_10013A638()
{
  v1 = v0[65];

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 1) == 0)
  {
    v3 = v0[68];
    v33 = v0[63];
    v32 = v0[59];
    v31 = v0[57];
    v30 = v0[55];
    v29 = v0[53];
    v4 = v0[39];
    v28 = v0[37];
    v5 = v0[29];
    v26 = v0[27];
    v6 = v0[18];
    v7 = (v0[21] + v0[58]);
    v27 = v0[5];
    v25 = v0[6];
    sub_100003370(v0 + 2, v27);
    RequestMetadata.id.getter();
    v8 = v6[8];
    sub_100003370(v6 + 4, v6[7]);
    v9 = *(v8 + 8);
    swift_errorRetain();
    v10 = sub_100002CBC();
    v9(v10);
    v11 = InferenceProviderDescriptor.id.getter();
    v13 = v12;
    v30(v5, v26);
    (*(v25 + 32))(v4, v31, v3, v11, v13, v27);

    v29(v4, v28);
    sub_100003370(v7, v7[3]);
    RequestMetadata.id.getter();
    v14 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    v29(v4, v28);
    v15 = swift_task_alloc();
    RequestMetadata.loggingIdentifier.getter();
    UUID.init(uuidString:)();

    sub_100065020(&qword_1001B9CA0, &qword_100170718);
    sub_100005B00();
    v16 = type metadata accessor for ModelManagerError();
    sub_100002F44(v16);
    *(swift_allocObject() + 16) = xmmword_10016FF40;
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    RequestMetadata.useCaseID.getter();
    sub_10001351C();
    sub_1001284A4();
    v17 = sub_100007B78();
    v18(v17);

    sub_10000ED84(v15, &qword_1001B9060);
    v33(v14, v32);
  }

  v19 = v0[26];
  v20 = v0[18];
  swift_willThrow();

  sub_10000ED84(v19, &qword_1001B9058);
  sub_10005D588(v0 + 2);
  v21 = type metadata accessor for TaskPriority();
  sub_100007098(v21);
  sub_100005640();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;

  sub_100003E60();
  sub_1000652FC();

  sub_1000076F4();

  sub_100001F00();

  return v23();
}

uint64_t sub_10013AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return _swift_task_switch(sub_10013AC4C, a4, 0);
}

uint64_t sub_10013AC4C()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v46 = v0[19];
  v47 = v0[16];
  v52 = v0[13];
  v49 = v0[10];
  v50 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v5[4];
  v48 = v5[3];
  sub_100003370(v5, v48);
  v53 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v8 = v6[8];
  sub_100003370(v6 + 4, v6[7]);
  v9 = sub_100019498();
  v10(v9, v8);
  InferenceProviderDescriptor.id.getter();
  sub_10001351C();
  (*(v4 + 8))(v3, v47);
  (*(v7 + 32))(v1, v49, 0, v3, v8, v48, v7);

  v11 = *(v2 + 8);
  v11(v1, v46);
  sub_100003370((v50 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider), *(v50 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider + 24));
  RequestMetadata.id.getter();
  v51 = type metadata accessor for UUID();
  sub_100002BDC();
  v19 = v12;
  v13 = sub_100002C58();
  UUIDIdentifier.uuid.getter();
  v14 = sub_1000125D0();
  v45 = v11;
  (v11)(v14);
  v15 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v15);
  v16 = sub_100002C58();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  RequestMetadata.useCaseID.getter();
  sub_10001351C();
  sub_1001284A4();
  v17 = sub_10005FA98();
  v18(v17);

  sub_10000ED84(v16, &qword_1001B9060);
  v20 = *(v19 + 8);
  LOBYTE(v19) = v19 + 8;
  v20(v13, v51);

  os_unfair_lock_lock((v52 + 20));
  *(v52 + 16) = 1;
  os_unfair_lock_unlock((v52 + 20));
  if (RequestMetadata.isInputStream.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002FD0(v21, qword_1001BD750);

    v22 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();
    if (os_log_type_enabled(v22, v53))
    {
      v19 = v0[19];
      sub_10000A05C();
      v23 = swift_slowAlloc();
      sub_1000033D0();
      v13 = swift_slowAlloc();
      *v23 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v24, v25, v26, v27);
      dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_10000CD1C();
      v45(v28);
      v29 = sub_1000037BC();
      v32 = sub_100004A3C(v29, v30, v31);

      *(v23 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v22, v53, "Resetting currentRequest for input streaming group %s", v23, 0xCu);
      sub_10005D588(v13);
      sub_100007C2C();

      sub_100002BD0();
    }

    v33 = v0[21];
    v34 = v0[11];
    RequestMetadata.id.getter();
    v35 = (v34 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
    sub_100009E10();
    swift_beginAccess();
    v37 = *v35;
    v36 = v35[1];
    v38 = swift_task_alloc();
    v38[2] = v37;
    v38[3] = v36;
    v38[4] = v33;

    sub_100141808(sub_10014A248, v38, v36);
    sub_100007BE4();
    if (v19)
    {

      v39 = sub_1000125D0();
      v45(v39);
      v40 = 0;
    }

    else
    {
      sub_1000118CC();

      v43 = sub_1000125D0();
      v45(v43);
      sub_100004CBC();
      swift_beginAccess();
      v40 = v13[4];
    }

    v0[23] = v40;
    v44 = swift_task_alloc();
    v0[24] = v44;
    *v44 = v0;
    v44[1] = sub_10013B2C0;
    sub_1000031B8(v0[9]);

    return sub_100138A3C();
  }

  else
  {
    v0[25] = 0;
    v41 = swift_task_alloc();
    v0[26] = v41;
    *v41 = v0;
    sub_1000464FC(v41);
    sub_1000031B8(v0[9]);

    return sub_1001357E8();
  }
}

uint64_t sub_10013B2C0()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {

    sub_10000778C();

    return v7();
  }

  else
  {
    v3[25] = v3[23];
    v9 = swift_task_alloc();
    v3[26] = v9;
    *v9 = v5;
    sub_1000464FC(v9);
    sub_1000031B8(v3[9]);

    return sub_1001357E8();
  }
}

uint64_t sub_10013B434()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_10013B4B8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v3 = _s6PolicyVMa(0);
  v1[15] = v3;
  sub_100002F04(v3);
  v1[16] = sub_10000F0C0();
  v1[17] = swift_task_alloc();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013B540()
{
  sub_100007B84();
  sub_100005EA4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000641C(v2, qword_1001BD750);
  v0[18] = v3;
  sub_10000A748();
  v4 = sub_1000062B0();
  sub_10005CAA8(v4, v5);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = sub_10000A82C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  if (v9)
  {
    v11 = v0[15];
    v12 = v0[16];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    *v1 = 136315138;
    sub_10000A748();
    v13 = sub_100007B78();
    sub_10005CAA8(v13, v14);
    v0[12] = *(v12 + *(v11 + 28));

    v15 = sub_1000037BC();
    sub_100065020(v15, v16);
    sub_10000E8B4();
    sub_1000082D4(v17, v18, &qword_100171DF0, v19);
    sub_1000E17B4();
    Sequence<>.joined(separator:)();

    v20._countAndFlagsBits = 10272;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);

    v21 = RequestPriority.rawValue.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);

    sub_10000D300(v12);
    sub_10000D300(v10);
    v26 = sub_100036724();
    v29 = sub_100004A3C(v26, v27, v28);

    *(v1 + 4) = v29;
    sub_100005EB0(&_mh_execute_header, v6, v3, "Processing policy change, new policy: %s");
    sub_10014B518();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {

    sub_100008534();
    sub_10000D300(v10);
  }

  v31 = v0[14];
  v30 = v0[15];
  v32 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v0[19] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v33 = v31 + v32;
  sub_100002D24();
  swift_beginAccess();
  v34 = sub_100001F70();
  sub_100149530(v34, v35);
  swift_endAccess();
  v0[20] = *(v31 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter);
  v0[21] = *(v33 + *(v30 + 24));
  v0[22] = *(v33 + *(v30 + 20));
  sub_10000A30C();
  sub_100003D04();

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_10013B848()
{
  sub_100002BAC();
  sub_10014B67C(*(v0 + 168), *(v0 + 176));
  v1 = sub_100005F04();

  return _swift_task_switch(v1, v2, 0);
}

void sub_10013B8B0()
{
  v24 = v0;
  v1 = &_swiftEmptySetSingleton;
  v0[11] = &_swiftEmptySetSingleton;
  v2 = v0[14] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  sub_100004CBC();
  swift_beginAccess();
  v3 = *(v2 + 8);
  v20 = *(v3 + 16);
  if (!v20)
  {
LABEL_23:
    v0[23] = v1;

    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_10013BC2C;
    v17 = v0[14];

    sub_100035C34(v1, &unk_100174060, v17);
    return;
  }

  v19 = v3 + 32;

  v4 = 0;
  v18 = v3;
  while (v4 < *(v3 + 16))
  {
    v5 = *(v19 + 8 * v4) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v6 = *(*(v5 + 32) + 16);
    if (v6)
    {
      sub_100065020(&dword_1001BA4A8, &qword_100171010);
      v7 = sub_10014B308();
      j__malloc_size(v7);
      sub_1000316D4();
      *(v7 + 16) = v6;
      *(v7 + 24) = v8;
      sub_10002F720();
      sub_1001495F4();
      v21 = v23;
      v22 = v9;

      swift_bridgeObjectRetain_n();

      sub_100007F18(v21);
      if (v22 != v6)
      {
        goto LABEL_27;
      }

      if (v7 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v7 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }
    }

    if ((v7 & 0x4000000000000000) == 0)
    {
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

LABEL_21:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v10 < 1)
    {
      goto LABEL_28;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v0[16];
      v14 = v0[14];
      sub_10000A748();
      sub_10005CAA8(v14 + v15, v13);
      LOBYTE(v14) = sub_1000E1170(v12, v14);
      sub_100008534();
      sub_10000D300(v13);
      if (v14)
      {
        sub_10007D34C(&v23, v12);
      }
    }

LABEL_19:

    ++v4;

    v3 = v18;
    if (v4 == v20)
    {

      v1 = v0[11];
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_10013BC2C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 200) = v6;
  *v6 = v4;
  v6[1] = sub_10013BD80;

  return sub_100036100();
}

uint64_t sub_10013BD80()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10013BE78()
{
  sub_100001ED0();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (sub_100002F80(v1))
  {
    sub_1000057F8();
    v2 = swift_slowAlloc();
    sub_10000A240(v2);
    sub_1000059D8(&_mh_execute_header, v3, v4, "Completed policy change");
    sub_100002BD0();
  }

  sub_100001F00();

  return v5();
}

uint64_t sub_10013BF2C(uint64_t *a1, uint64_t a2)
{
  v2[5] = a2;
  v2[6] = _s6PolicyVMa(0);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for RequestCancellationReason();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[13] = v6;
  v2[14] = v7;

  return _swift_task_switch(sub_10013C08C, 0, 0);
}

uint64_t sub_10013C08C()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v4 = *(v0 + 112);
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80(v5, v6, v7);
    sub_100005070();
    v12 = sub_1000082D4(v8, v9, v10, v11);
    sub_1000156D8(v12);
    v13 = sub_10000592C();
    v14(v13);
    v15 = sub_100004CB0();
    sub_100004A3C(v15, v16, v17);
    sub_100005974();

    *(v1 + 4) = v4;
    sub_100035348(&_mh_execute_header, v18, v19, "Cancelling request %s due to policy change");
    sub_100002068();
    sub_100002BD0();
  }

  sub_10000A30C();
  sub_1000062BC();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10013C1F0()
{
  sub_100001ED0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  sub_100004CBC();
  swift_beginAccess();
  sub_10000A748();
  sub_10005CAA8(v2 + v3, v1);
  v4 = sub_100003000();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013C27C()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v4 + *(v0[6] + 28));

  sub_100008534();
  sub_10000D300(v4);
  *v1 = v5;
  (*(v2 + 104))(v1, enum case for RequestCancellationReason.specificPolicyChange(_:), v3);
  v6 = swift_task_alloc();
  v7 = sub_10000D03C(v6);
  *v7 = v8;
  v7[1] = sub_10013C364;
  sub_1000031B8(v0[14]);
  sub_100003D20();

  return sub_10013C4DC();
}

uint64_t sub_10013C364()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_1000060A4();
  v4(v3);

  sub_100001F00();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10013C4DC()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = type metadata accessor for RequestKey();
  v1[11] = v4;
  sub_100002F44(v4);
  v1[12] = v5;
  v1[13] = sub_100002C58();
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[14] = v6;
  sub_100002F44(v6);
  v1[15] = v7;
  v1[16] = sub_100002C58();
  v8 = type metadata accessor for RequestCancellationReason();
  v1[17] = v8;
  sub_100002F44(v8);
  v1[18] = v9;
  v1[19] = sub_10000F0C0();
  v1[20] = swift_task_alloc();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10013C634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_t log, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_100005B0C();
  a27 = v29;
  a28 = v30;
  sub_10001A5C4();
  a26 = v28;
  v31 = v28[8];
  v32 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v28[21] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v33 = v31 + v32;
  sub_1000125C0();
  swift_beginAccess();
  v34 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v28[22] = v34;
  if (*(v33 + *(v34 + 24)))
  {
    v35 = v28[18];
    v36 = sub_10014B3F4();
    v37(v36);
    sub_10000D01C();
    v38 = static RequestCancellationReason.== infix(_:_:)();
    v39 = sub_100003308();
    v40(v39);
    v41 = v28[8];
    if (v38)
    {
      sub_100008110();
      sub_100045430();
      RequestMetadata.requestKey.getter();
      sub_100004B94();
      v112 = v42 + *v42;
      v43 = swift_task_alloc();
      v28[26] = v43;
      *v43 = v28;
      v43[1] = sub_10013D1C8;
      sub_10000A9C8(v28[13]);
      sub_1000135DC();

      return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, log, v35 + 112, v112, a17, a18, a19, a20);
    }

    else
    {
      sub_100025ADC(v28[22]);
      if (v41)
      {

        v77 = swift_task_alloc();
        v28[28] = v77;
        sub_100065020(&qword_1001B8F60, &unk_100171260);
        sub_1000060CC();
        *v77 = v78;
        sub_100018A90();
        sub_100019260();
        sub_1000135DC();

        return Task.value.getter(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, log, a15, a16);
      }

      else
      {
        sub_10014B074();

        sub_100001F00();
        sub_1000135DC();

        return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, log, a15, a16, a17, a18, a19, a20);
      }
    }
  }

  else
  {
    v53 = v34;
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    v28[23] = sub_10000641C(v54, qword_1001BD750);
    v55 = sub_100036724();
    v113 = v56;
    (v56)(v55);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v28[20];
    if (v59)
    {
      a11 = v28[17];
      log = v57;
      v62 = v28[15];
      v61 = v28[16];
      HIDWORD(a13) = v58;
      v63 = v28[14];
      sub_100002F10();
      a10 = v60;
      v64 = swift_slowAlloc();
      sub_100011828();
      a12 = swift_slowAlloc();
      a17 = a12;
      *v64 = 136315394;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v65, v66, v67, v68);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001351C();
      (*(v62 + 8))(v61, v63);
      v69 = sub_100005E98();
      sub_100004A3C(v69, v70, v71);
      sub_10000D0E8();

      *(v64 + 4) = v61;
      *(v64 + 12) = 2080;
      sub_10005FAF0(&qword_1001BDBB8, &type metadata accessor for RequestCancellationReason, &protocol conformance descriptor for RequestCancellationReason);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = sub_100036724();
      v76(v75);
      sub_100004A3C(v72, v74, &a17);
      sub_10000D0E8();

      *(v64 + 14) = a10;
      _os_log_impl(&_mh_execute_header, v57, BYTE4(a13), "Cancelling request %s due to %s", v64, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100007C2C();
    }

    else
    {

      v87 = sub_100007B78();
      v88(v87);
    }

    v89 = v28[17];
    v91 = v28[8];
    v90 = v28[9];
    sub_100002D24();
    swift_beginAccess();
    *(v33 + *(v53 + 24)) = 1;
    v92 = *(v53 + 28);
    sub_10000ED84(v33 + v92, &unk_1001BDBB0);
    v113(v33 + v92, v90, v89);
    sub_100009BFC(v33 + v92, 0, 1, v89);
    swift_endAccess();
    v93 = v91[8];
    sub_100003370(v91 + 4, v91[7]);
    v28[24] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.requestKey.getter();
    sub_100004B94();
    v114 = v94 + *v94;
    v95 = swift_task_alloc();
    v28[25] = v95;
    *v95 = v28;
    v95[1] = sub_10013CCBC;
    sub_1000031B8(v28[13]);
    sub_100036E68();
    sub_1000135DC();

    return v100(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, log, v93 + 104, v114, a17, a18, a19, a20);
  }
}

uint64_t sub_10013CCBC()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003308();
  v4(v3);
  v5 = sub_100026BB0();

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10013CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000385C();
  sub_100003284();
  if (*(v16[8] + v16[21] + *(v16[22] + 20)))
  {

    v17 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10014B230();
    if (sub_10001E6D8())
    {
      sub_10000A05C();
      v18 = swift_slowAlloc();
      sub_1000033D0();
      a10 = swift_slowAlloc();
      a11 = a10;
      *v18 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v19, v20, v21, v22);
      dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_10014B41C();
      v24(v23);
      v25 = sub_1000037BC();
      v28 = sub_100004A3C(v25, v26, v27);

      *(v18 + 4) = v28;
      sub_100018928();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_10014B518();
      sub_100002BD0();

      sub_100002BD0();
    }

    sub_100065020(&qword_1001B8F60, &unk_100171260);
    Task.cancel()();
  }

  v34 = v16[18];
  v35 = sub_10014B3F4();
  v36(v35);
  sub_10000D01C();
  v37 = static RequestCancellationReason.== infix(_:_:)();
  v38 = sub_100003308();
  v39(v38);
  v40 = v16[8];
  if (v37)
  {
    sub_100008110();
    sub_100045430();
    RequestMetadata.requestKey.getter();
    sub_100004B94();
    v70 = v41 + *v41;
    v42 = swift_task_alloc();
    v16[26] = v42;
    *v42 = v16;
    v42[1] = sub_10013D1C8;
    sub_10000A9C8(v16[13]);
    sub_100003540();

    return v46(v43, v44, v45, v46, v47, v48, v49, v50, v34 + 112, v70, a11, a12, a13, a14);
  }

  else
  {
    sub_100025ADC(v16[22]);
    if (v40)
    {

      v52 = swift_task_alloc();
      v16[28] = v52;
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_1000060CC();
      *v52 = v53;
      sub_100018A90();
      sub_100003540();

      return Task.value.getter(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      sub_10014B074();

      sub_100001F00();
      sub_100003540();

      return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_10013D1C8()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003308();
  v4(v3);
  v5 = sub_100026BB0();

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10013D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100001ED0();
  sub_100025ADC(*(v17 + 176));
  if (v16)
  {

    v18 = swift_task_alloc();
    *(v17 + 224) = v18;
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    sub_1000060CC();
    *v18 = v19;
    sub_100018A90();
    sub_100019260();

    return Task.value.getter(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10014B074();

    sub_100001F00();

    return v28();
  }
}

uint64_t sub_10013D424()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 80);
  if (v0)
  {

    v6 = sub_10014AF98;
  }

  else
  {
    v6 = sub_10013D550;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10013D550()
{
  sub_100001ED0();

  sub_10014B074();

  sub_100001F00();

  return v0();
}

uint64_t sub_10013D5CC()
{
  sub_100008534();
  sub_10000D300(v0 + v1);
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager));

  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_runningBoard));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentTime));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10013D72C()
{
  sub_10013D5CC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RequestManager(uint64_t a1)
{
  result = qword_1001BD790;
  if (!qword_1001BD790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013D7AC(uint64_t a1)
{
  result = _s6PolicyVMa(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10013D8C8()
{
  sub_1000055B0();
  sub_1000135C4();
  v76 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v2);
  sub_100002B8C();
  v75 = v4 - v3;
  v5 = sub_10002B158();
  sub_10012C094(v5, v6, v1, v0);
  v8 = v7;
  v9 = 0;
  v10 = *(v7 + 16);
  v11 = &_swiftEmptySetSingleton;
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return;
    }

    v12 = v9 + 1;

    sub_100078D90();
    v11 = v13;
    v9 = v12;
  }

  if (v11[2])
  {
    sub_10002B158();
    sub_10002F720();
    sub_10012C094(v14, v15, v16, v17);
    v19 = v18;
    v20 = 0;
    v21 = *(v18 + 16);
    while (v21 != v20)
    {
      if (v20 >= *(v19 + 16))
      {
        goto LABEL_68;
      }

      v22 = v20 + 1;

      sub_100078D90();
      v20 = v22;
    }

    sub_100078D90();
    v71[-2] = __chkstk_darwin(v23);
    sub_10002F720();
    v28 = sub_10012C094(v24, v25, v26, v27);
    v71[0] = 0;
    v71[1] = v28;
    v30 = v29;

    v31 = 0;
    v79 = v30;
    v80 = _swiftEmptyArrayStorage;
    v32 = *(v30 + 16);
    v77 = v30 + 32;
    v78 = v32;
    while (1)
    {
      if (v31 == v78)
      {

        v81 = _swiftEmptyArrayStorage;
        v61 = v80;
        v62 = sub_10000E8DC(v80);
        v63 = 0;
        v64 = v61 & 0xC000000000000001;
        v65 = v61 & 0xFFFFFFFFFFFFFF8;
        while (v62 != v63)
        {
          if (v64)
          {
            v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v63 >= *(v65 + 16))
            {
              goto LABEL_73;
            }

            v66 = *(v80 + 8 * v63 + 32);
          }

          if (__OFADD__(v63, 1))
          {
            goto LABEL_72;
          }

          v67 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
          sub_100004CBC();
          swift_beginAccess();
          sub_100005DD8();
          v68 = v75;
          sub_10005CAA8(v66 + v67, v75);
          LOBYTE(v67) = *(v68 + *(v76 + 24));
          sub_1000115C8();
          sub_10000D300(v68);
          if (v67)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v63;
        }

        sub_100077EE0(v81);
LABEL_66:
        sub_100002EEC();
        return;
      }

      if (v31 >= *(v79 + 16))
      {
        goto LABEL_69;
      }

      v33 = *(v77 + 8 * v31) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
      sub_1000125C0();
      swift_beginAccess();
      v34 = *(*(v33 + 32) + 16);
      if (v34)
      {
        v35 = v31;
        sub_100065020(&dword_1001BA4A8, &qword_100171010);
        v36 = sub_10014B308();
        j__malloc_size(v36);
        sub_1000316D4();
        *(v36 + 16) = v34;
        *(v36 + 24) = v37;
        sub_1001495F4();
        v39 = v38;
        v40 = v82[0];

        sub_100007F18(v40);
        if (v39 != v34)
        {
          goto LABEL_74;
        }

        v31 = v35;
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }

      v41 = v36 < 0 || (v36 & 0x4000000000000000) != 0;
      if (v41)
      {
        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *(v36 + 16);
      }

      v43 = v80 >> 62;
      if (v80 >> 62)
      {
        v44 = sub_10014B4B8();
      }

      else
      {
        v44 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v44 + v42;
      if (__OFADD__(v44, v42))
      {
        goto LABEL_70;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v43)
      {
        goto LABEL_30;
      }

      v46 = v80 & 0xFFFFFFFFFFFFFF8;
      if (v45 > *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }

LABEL_32:
      ++v31;
      v47 = *(v46 + 16);
      v48 = (*(v46 + 24) >> 1) - v47;
      v49 = v46 + 8 * v47;
      if (v41)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_46;
        }

        sub_100019498();
        v50 = _CocoaArrayWrapper.endIndex.getter();
        if (v48 < v50)
        {
          goto LABEL_77;
        }

        if (v45 < 1)
        {
          goto LABEL_78;
        }

        v51 = v50;
        v72 = v46;
        v73 = v42;
        v74 = v31;
        v52 = v49 + 32;
        sub_100003508();
        sub_1000082D4(&qword_1001BC498, &qword_1001BC490, &qword_100174200, v53);
        for (i = 0; i != v45; ++i)
        {
          sub_100065020(&qword_1001BC490, &qword_100174200);
          v55 = sub_1001494CC(v82, i, v36);
          v57 = *v56;

          v55(v82, 0);
          *(v52 + 8 * i) = v57;
        }

        v42 = v73;
        v31 = v74;
        v46 = v72;
LABEL_42:
        if (v51 < v42)
        {
          goto LABEL_71;
        }

        if (v51 > 0)
        {
          v58 = *(v46 + 16);
          v59 = __OFADD__(v58, v51);
          v60 = v58 + v51;
          if (v59)
          {
            goto LABEL_75;
          }

          *(v46 + 16) = v60;
        }
      }

      else
      {
        v51 = *(v36 + 16);
        if (v51)
        {
          if (v48 < v51)
          {
            goto LABEL_76;
          }

          type metadata accessor for DaemonRequest(0);
          swift_arrayInitWithCopy();

          goto LABEL_42;
        }

LABEL_46:

        if (v42 > 0)
        {
          goto LABEL_71;
        }
      }
    }

    if (v43)
    {
LABEL_30:
      sub_10014B4B8();
    }

LABEL_31:
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v46 = v80 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_32;
  }

  if (!sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    goto LABEL_66;
  }

  sub_100002EEC();

  sub_10006622C(v69);
}

void sub_10013DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v22;
  a20 = v23;
  sub_10002A104();
  v24 = type metadata accessor for RequestPriority();
  sub_100002BDC();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100009C24();
  v55 = v28;
  sub_100002F1C();
  __chkstk_darwin(v29);
  v30 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v31 = sub_100002F04(v30);
  __chkstk_darwin(v31);
  sub_100002B8C();
  v52 = v33 - v32;
  v34 = *v20 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000125C0();
  swift_beginAccess();
  v35 = *(v34 + 16);
  v63 = *v34;
  v64 = v35;
  v65 = *(v34 + 32);
  v66 = *(&v63 + 1);
  v67 = v35;
  a10 = v65;
  sub_10001E72C(&v66, v62, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v67, v62, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v67 + 8, v62, &qword_1001BC470, &unk_100172C48);
  sub_10001E72C(&a10, v62, &qword_1001B8F40, &unk_10016FB20);
  v36 = sub_10006CF3C();
  v57 = sub_10000E8DC(v36);
  v37 = 0;
  v54 = v36 & 0xC000000000000001;
  v56 = v36;
  v53 = v36 & 0xFFFFFFFFFFFFFF8;
  v51 = enum case for RequestPriority.foreground(_:);
  v50 = (v26 + 104);
  v38 = (v26 + 8);
  while (1)
  {
    v39 = v37;
    if (v57 == v37)
    {
      goto LABEL_15;
    }

    if (v54)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_100016724();
    }

    else
    {
      v21 = v55;
      if (v37 >= *(v53 + 16))
      {
        goto LABEL_17;
      }

      v40 = *(v56 + 8 * v37 + 32);
    }

    if (__OFADD__(v39, 1))
    {
      break;
    }

    v41 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v40 + v41, v52);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300(v52);
    (*v50)(v21, v51, v24);
    sub_10005FAF0(&qword_1001BCD38, &type metadata accessor for RequestPriority, &protocol conformance descriptor for RequestPriority);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = v61;
    if (v60 == v58 && v61 == v59)
    {

      v47 = *v38;
      v48 = sub_100005FEC();
      v47(v48);
      v49 = sub_1000DAE34();
      v47(v49);

LABEL_15:
      sub_10000ED84(&v66, &qword_1001BC468);
      sub_10000ED84(&v67, &qword_1001BC468);
      sub_10000ED84(&v67 + 8, &qword_1001BC470);
      sub_10000ED84(&a10, &qword_1001B8F40);

      sub_100005874();
      return;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = *v38;
    v45 = sub_100005FEC();
    v44(v45);
    v46 = sub_1000DAE34();
    v44(v46);

    v37 = v39 + 1;
    if (v43)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_10013E450(uint64_t a1, uint64_t a2)
{
  v108 = type metadata accessor for ModelCatalogAsset(0);
  v4 = __chkstk_darwin(v108);
  v6 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v9 = (&v101 - v8);
  __chkstk_darwin(v7);
  v12 = &v101 - v11;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v107 = v10;
  v13 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;
  v115 = a1 + 56;

  v19 = 0;
  if (!v16)
  {
LABEL_7:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_122;
      }

      if (v20 >= v17)
      {

        return 1;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_6:
  v20 = v19;
LABEL_10:
  v21 = *(a2 + 48);
  v114 = *(v107 + 72);
  sub_10005CAA8(v21 + v114 * (__clz(__rbit64(v16)) | (v20 << 6)), v12);
  sub_10000D4B4(v12, v9);
  if (!*(a1 + 16))
  {
    goto LABEL_119;
  }

  v105 = v20;
  Hasher.init(_seed:)();
  sub_10000C228(v119);
  v22 = Hasher._finalize()();
  v23 = -1 << *(a1 + 32);
  v24 = v22 & ~v23;
  if ((*(v115 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v102 = v17;
    v103 = v13;
    v104 = v12;
    v106 = a2;
    v101 = (v16 - 1) & v16;
    v112 = ~v23;
    v113 = a1;
    v25 = *v9;
    v117 = v9[1];
    v118 = v25;
    v116 = v9;
    while (1)
    {
      sub_10005CAA8(*(a1 + 48) + v24 * v114, v6);
      v26 = *v6 == v118 && v6[1] == v117;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }

      v27 = v6[2];
      v28 = v116[2];
      v29 = *(v27 + 16);
      if (v29 != *(v28 + 16))
      {
        goto LABEL_111;
      }

      if (v29)
      {
        v30 = v27 == v28;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
LABEL_31:
        v34 = v6[3];
        v9 = v116[3];
        v35 = v34[2];
        if (v35 == v9[2])
        {
          if (v35)
          {
            v36 = v34 == v9;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
LABEL_37:
            v37 = v6[4];
            v9 = v116[4];
            v38 = v37[2];
            if (v38 == v9[2])
            {
              if (v38)
              {
                v39 = v37 == v9;
              }

              else
              {
                v39 = 1;
              }

              if (v39)
              {
LABEL_43:
                if ((static AssetCost.== infix(_:_:)() & 1) != 0 && *(v6 + v108[9]) == *(v116 + v108[9]) && *(v6 + v108[10]) == *(v116 + v108[10]) && *(v6 + v108[11]) == *(v116 + v108[11]) && *(v6 + v108[12]) == *(v116 + v108[12]) && *(v6 + v108[13]) == *(v116 + v108[13]))
                {
                  v40 = v108[14];
                  v41 = *(v6 + v40);
                  v42 = *(v116 + v40);
                  v43 = *(v41 + 16);
                  if (v43 == *(v42 + 16))
                  {
                    if (!v43 || v41 == v42)
                    {
LABEL_59:
                      if (*(v6 + v108[15]) == *(v116 + v108[15]))
                      {
                        sub_10000D300(v6);
                        v9 = v116;
                        result = sub_10000D300(v116);
                        v19 = v105;
                        a2 = v106;
                        a1 = v113;
                        v12 = v104;
                        v13 = v103;
                        v17 = v102;
                        v16 = v101;
                        if (!v101)
                        {
                          goto LABEL_7;
                        }

                        goto LABEL_6;
                      }
                    }

                    else
                    {
                      v44 = (v41 + 40);
                      v45 = (v42 + 40);
                      while (1)
                      {
                        v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
                        if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          break;
                        }

                        v44 += 2;
                        v45 += 2;
                        if (!--v43)
                        {
                          goto LABEL_59;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                result = v37[4];
                v76 = v37[6];
                v77 = v37[7];
                v78 = *(v37 + 64);
                v79 = v9[6];
                v80 = v9[7];
                v81 = *(v9 + 64);
                v82 = result == v9[4] && v37[5] == v9[5];
                v109 = v37[2];
                if (!v82)
                {
                  v83 = v9;
                  v84 = v37;
                  v85 = v81;
                  v86 = v78;
                  v87 = v76;
                  v88 = v79;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v79 = v88;
                  v76 = v87;
                  v78 = v86;
                  v81 = v85;
                  v37 = v84;
                  v9 = v83;
                  v38 = v109;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_111;
                  }
                }

                v89 = 0;
                v90 = 1;
                if (v77)
                {
LABEL_92:
                  if (v80)
                  {
                    if (v76 != v79 || v77 != v80)
                    {
                      v92 = v78;
                      result = _stringCompareWithSmolCheck(_:_:expecting:)();
                      if (result & 1) == 0 || ((v81 ^ v92))
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_102;
                    }

                    goto LABEL_101;
                  }
                }

                else
                {
                  while (!v80)
                  {
LABEL_101:
                    if ((v81 ^ v78))
                    {
                      break;
                    }

LABEL_102:
                    if (v38 == v90)
                    {
                      goto LABEL_43;
                    }

                    if (v90 >= v38)
                    {
                      goto LABEL_123;
                    }

                    result = *(v37 + v89 + 72);
                    v76 = *(v37 + v89 + 88);
                    v77 = *(v37 + v89 + 96);
                    v78 = *(v37 + v89 + 104);
                    v79 = *(v9 + v89 + 88);
                    v80 = *(v9 + v89 + 96);
                    v81 = *(v9 + v89 + 104);
                    if (result != *(v9 + v89 + 72) || *(v37 + v89 + 80) != *(v9 + v89 + 80))
                    {
                      v110 = v89;
                      v111 = v90;
                      v94 = v9;
                      v95 = v37;
                      v96 = v81;
                      v97 = v78;
                      v98 = v80;
                      v99 = v76;
                      v100 = v79;
                      result = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v79 = v100;
                      v76 = v99;
                      v80 = v98;
                      v78 = v97;
                      v81 = v96;
                      v37 = v95;
                      v9 = v94;
                      v38 = v109;
                      v89 = v110;
                      v90 = v111;
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    v89 += 40;
                    ++v90;
                    if (v77)
                    {
                      goto LABEL_92;
                    }
                  }
                }
              }
            }
          }

          else
          {
            result = v34[4];
            v47 = v34[6];
            v48 = v34[7];
            v49 = *(v34 + 64);
            v50 = v9[6];
            v51 = v9[7];
            v52 = *(v9 + 64);
            v53 = result == v9[4] && v34[5] == v9[5];
            v110 = v34[2];
            if (!v53)
            {
              v54 = v9;
              v55 = v34;
              v56 = v52;
              v57 = v6;
              v58 = v49;
              v59 = v24;
              v60 = v47;
              v61 = v50;
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v50 = v61;
              v47 = v60;
              v24 = v59;
              v49 = v58;
              v6 = v57;
              v52 = v56;
              v34 = v55;
              v9 = v54;
              v35 = v110;
              if ((result & 1) == 0)
              {
                goto LABEL_111;
              }
            }

            v62 = 0;
            v63 = 1;
            v109 = v9;
            if (v48)
            {
LABEL_67:
              if (v51)
              {
                if (v47 != v50 || v48 != v51)
                {
                  v65 = v49;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  if (result & 1) == 0 || ((v52 ^ v65))
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_77;
                }

                goto LABEL_76;
              }
            }

            else
            {
              while (!v51)
              {
LABEL_76:
                if ((v52 ^ v49))
                {
                  break;
                }

LABEL_77:
                if (v35 == v63)
                {
                  goto LABEL_37;
                }

                if (v63 >= v35)
                {
                  __break(1u);
LABEL_122:
                  __break(1u);
LABEL_123:
                  __break(1u);
                  __break(1u);
                  return result;
                }

                result = *(v34 + v62 + 72);
                v47 = *(v34 + v62 + 88);
                v48 = *(v34 + v62 + 96);
                v49 = *(v34 + v62 + 104);
                v50 = *(v9 + v62 + 88);
                v51 = *(v9 + v62 + 96);
                v52 = *(v9 + v62 + 104);
                if (result != *(v9 + v62 + 72) || *(v34 + v62 + 80) != *(v9 + v62 + 80))
                {
                  v111 = v62;
                  v67 = v34;
                  v68 = v52;
                  v69 = v6;
                  v70 = v49;
                  v71 = v63;
                  v72 = v51;
                  v73 = v24;
                  v74 = v47;
                  v75 = v50;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v50 = v75;
                  v47 = v74;
                  v24 = v73;
                  v51 = v72;
                  v63 = v71;
                  v49 = v70;
                  v6 = v69;
                  v52 = v68;
                  v34 = v67;
                  v9 = v109;
                  v35 = v110;
                  v62 = v111;
                  if ((result & 1) == 0)
                  {
                    break;
                  }
                }

                v62 += 40;
                ++v63;
                if (v48)
                {
                  goto LABEL_67;
                }
              }
            }
          }
        }
      }

      else
      {
        v31 = (v27 + 40);
        v32 = (v28 + 40);
        while (1)
        {
          if (!v29)
          {
            __break(1u);
LABEL_119:
            sub_10000D300(v9);

            return 0;
          }

          v33 = *(v31 - 1) == *(v32 - 1) && *v31 == *v32;
          if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v31 += 2;
          v32 += 2;
          if (!--v29)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_111:
      sub_10000D300(v6);
      a1 = v113;
      v24 = (v24 + 1) & v112;
      if (((*(v115 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {

        v9 = v116;
        goto LABEL_115;
      }
    }
  }

LABEL_115:
  sub_10000D300(v9);
  return 0;
}

void sub_10013ED10()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  sub_100004B1C();
  __chkstk_darwin(v5);
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FD0(v6, qword_1001BD750);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_10000A05C();
    v9 = swift_slowAlloc();
    sub_1000033D0();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    sub_10012880C(v3);
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100006194();
    v11 = Array.description.getter();
    v13 = v12;

    v14 = sub_100004A3C(v11, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Foreground requests are blocked from running; will preemptively cancel background requests %s", v9, 0xCu);
    sub_10005D588(v10);
    sub_100002BD0();

    sub_100007C2C();
  }

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v15, v16, v17, v18);
  sub_100003CA4();
  v21 = sub_10005FAF0(v19, v20, &unk_100174018);
  v22 = swift_allocObject();
  v22[2] = v1;
  v22[3] = v21;
  v22[4] = v3;
  v22[5] = v1;
  swift_retain_n();

  sub_1000652FC();

  sub_100002EEC();
}

uint64_t sub_10013EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;

  return _swift_task_switch(sub_10013F000, a5, 0);
}

uint64_t sub_10013F000()
{
  sub_100003884();
  type metadata accessor for _OSActivity();
  v0[12] = swift_initStackObject();
  v0[13] = sub_10001B160("Cancelling preempted background requests", 40, 2);

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10013F128;
  v2 = sub_1000031B8(v0[10]);

  return v3(v2);
}

uint64_t sub_10013F128()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000071A8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10013F25C()
{
  sub_100002BAC();
  v1 = *(v0 + 104);
  sub_100002D24();
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_10013F304(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = type metadata accessor for RequestCancellationReason();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[8] = v6;
  v2[9] = v7;

  return _swift_task_switch(sub_10013F434, 0, 0);
}

uint64_t sub_10013F434()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v4 = v0[9];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80(v5, v6, v7);
    sub_100005070();
    v12 = sub_1000082D4(v8, v9, v10, v11);
    sub_1000156D8(v12);
    v13 = sub_10000592C();
    v14(v13);
    v15 = sub_100004CB0();
    sub_100004A3C(v15, v16, v17);
    sub_100005974();

    *(v1 + 4) = v4;
    sub_100035348(&_mh_execute_header, v18, v19, "Cancelling request %s due to pending foreground request(s)");
    sub_100002068();
    sub_100002BD0();
  }

  (*(v0[4] + 104))(v0[5], enum case for RequestCancellationReason.requestPreemption(_:), v0[3]);
  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_10013F5F8;
  sub_1000031B8(v0[9]);
  sub_1000062BC();

  return sub_10013C4DC();
}

uint64_t sub_10013F5F8()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_1000060A4();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_10013F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10013F820, 0, 0);
}

uint64_t sub_10013F820()
{
  sub_10000636C();
  sub_100008110();
  sub_100045430();
  RequestMetadata.id.getter();
  sub_100004B94();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = sub_10000AC24(v2);
  *v3 = v4;
  v3[1] = sub_10014AFDC;
  v5 = sub_10000A9C8(*(v0 + 40));

  return v7(v5);
}

uint64_t sub_10013F948(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_10014B338();
  *v2 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_10013F9E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10014B338();
  *v1 = v2;
  if (!result)
  {
    result = a1(result, *(v2 + 16) + 1, 1, v2);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10013FA84(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_10013FB2C()
{
  sub_100004D68();
  if ((v4 & 1) == 0 || (sub_100012660(), v5 == v6))
  {
LABEL_6:
    sub_100006184();
    if (v3)
    {
      sub_100065020(&qword_1001BDBD0, &qword_100174140);
      v7 = sub_10014B308();
      j__malloc_size(v7);
      sub_100057A74();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10001997C();
        sub_100026AFC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_100005FE0();
  if (!v5)
  {
    sub_10000A210();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10013FC18(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100012660();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_100065020(a5, a6);
      v16 = sub_10014B308();
      j__malloc_size(v16);
      sub_100057A74();
      v16[2] = v14;
      v16[3] = v17;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100005FE0();
  if (!v12)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10013FCF8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_10000C348(v9, a2, &qword_1001B9108, &qword_10016FD80, &type metadata accessor for FilePath);
  v11 = *(type metadata accessor for FilePath() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100070884(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10013FE08(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100065020(&qword_1001BDC18, &unk_100174240);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100026AFC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100065020(&unk_1001BBEC8, "py");
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10013FF18()
{
  sub_100004D68();
  if ((v3 & 1) == 0 || (sub_100012660(), v4 == v5))
  {
LABEL_6:
    sub_100006184();
    if (v2)
    {
      v6 = sub_100065020(&qword_1001BAA20, &unk_1001715C0);
      v7 = sub_100048628(v6);
      v8 = j__malloc_size(v7);
      sub_10014B01C(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10001997C();
        sub_100071588(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100065020(&qword_1001BA8F8, "ޅ");
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100005FE0();
  if (!v4)
  {
    sub_10000A210();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10013FFE4()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001B90B8, &qword_10016FD30, &type metadata accessor for ClientData);
  sub_1000494E8();
  type metadata accessor for ClientData();
  sub_1000191C8();
  sub_10000657C();
  if (v1)
  {
    v8 = sub_100005FBC(v7);
    sub_1000708E4(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

char *sub_1001400B4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100065020(&qword_1001BDC10, &qword_100174220);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007091C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100065020(&qword_1001BDC08, &qword_100174218);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1001401CC()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001BDC20, &qword_100174258, type metadata accessor for RemoteManager.InternalRemoteRequestState);
  v7 = sub_1000494E8();
  type metadata accessor for RemoteManager.InternalRemoteRequestState(v7);
  sub_1000191C8();
  sub_10000657C();
  if (v1)
  {
    v9 = sub_100005FBC(v8);
    sub_100070944(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

void sub_10014029C()
{
  sub_1000144A8();
  if (v2)
  {
    sub_100018970();
    if (v3 != v4)
    {
      sub_10014B39C();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  v5 = *(v0 + 16);
  sub_10004D14C();
  sub_10000C348(v5, v6, v7, v8, v9);
  v10 = sub_1000494E8();
  type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v10);
  sub_1000191C8();
  sub_10000657C();
  if (v1)
  {
    v12 = sub_100005FBC(v11);
    sub_10007095C(v12, v13, v14);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

void *sub_10014035C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1001405B4(v8, v7);
  v10 = *(sub_100065020(&qword_1001B90F8, &qword_10016FD70) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100070974(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_100140454()
{
  sub_100004D68();
  if ((v3 & 1) == 0 || (sub_100012660(), v4 == v5))
  {
LABEL_6:
    sub_100006184();
    if (v2)
    {
      v6 = sub_100065020(&qword_1001BCB60, &qword_100173320);
      v7 = sub_100048628(v6);
      v8 = j__malloc_size(v7);
      sub_10014B01C(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10001997C();
        sub_100071588(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100065020(&qword_1001BCB40, &qword_1001732E8);
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100005FE0();
  if (!v4)
  {
    sub_10000A210();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1001405B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100065020(&qword_1001BDC40, &qword_1001742D0);
  v4 = *(sub_100065020(&qword_1001B90F8, &qword_10016FD70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001406BC(uint64_t a1)
{
  v4 = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001409E4(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10014B464();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100140760(uint64_t a1)
{
  result = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100140B18(result, 1, sub_10013FCF8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for FilePath();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100140864(unint64_t a1)
{
  v2 = sub_10001297C(a1);
  v3 = sub_10001297C(*v1);
  v4 = __OFADD__(v3, v2);
  result = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100140A78(result, 1);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001491E0();
  v9 = v8;

  if (v9 < v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 1)
  {
LABEL_6:
    *v1 = v6;
    return result;
  }

  v10 = *(v7 + 16);
  v4 = __OFADD__(v10, v9);
  v11 = v10 + v9;
  if (!v4)
  {
    *(v7 + 16) = v11;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100140910(uint64_t a1)
{
  v4 = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100140B18(v4, 1, sub_10013FF18);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10014B464();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100065020(&qword_1001BA8F8, "ޅ");
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001409E4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10013FC18(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1001B9090, &unk_100172C70, &type metadata for String, sub_100026AFC);
    *v2 = v8;
  }
}

uint64_t sub_100140A78(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100140B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_10014B338();
  *v3 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100140B88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CustomAssetConfiguration();
  sub_10005FAF0(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration, &protocol conformance descriptor for CustomAssetConfiguration);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100140C18(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  }

  __break(1u);
  return result;
}

void sub_100140CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = a3(0);
    sub_100002F04(v3);

    sub_100036E68();
    return;
  }

  __break(1u);
}

void sub_100140D50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {

    sub_100036E68();
    return;
  }

  __break(1u);
}

void *sub_100140DC4(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      v7 = v6;
      v3 = sub_100011294(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100140E60(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v10 = a1;
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = &v10;
  sub_100060948(sub_100060AE8, v9, v3);
  v7 = v6;
  if (v6)
  {
    sub_100141540(a1, v5);
  }

  return v7 & 1;
}

uint64_t sub_100140EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (a2)
  {
    return sub_100143248(a1, a3 + 32, v4, (a2 + 16), a2 + 32);
  }

  else
  {
    return sub_100142974(a1, a3 + 32, v4);
  }
}

void sub_100140F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  (*(v7 + 16))(&v18 - v8, a1, v6);
  v10 = v3 + 1;
  v11 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100070A50(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_100070A50(v13 > 1, v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
  v3[1] = v11;
  v15 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v14)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v16)
    {

      *v3 = 0;
      return;
    }

LABEL_14:
    v17 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v17, v16, sub_100141B90, sub_100141A98);
    return;
  }

  sub_100141958();
  if (*v3)
  {
    sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_100141198()
{
  sub_1000055B0();
  v1 = v0;
  sub_100005B00();
  type metadata accessor for UUID();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_100002B8C();
  v3 = sub_100003D88();
  v4(v3);
  v5 = v0 + 1;
  v6 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000080E4();
    sub_100070A90();
    v6 = *v5;
  }

  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_100070A90();
    v6 = *v5;
  }

  v9 = sub_100026868();
  v10(v9);
  v1[1] = v6;
  v11 = *v1;
  if (!*v1)
  {
    if (v8 <= 0xE)
    {
      goto LABEL_15;
    }

    v12 = 0;
LABEL_14:
    v13 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v13, v12, sub_100141D98, sub_100141A98);
    goto LABEL_15;
  }

  sub_100004CBC();
  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v8)
  {
    v12 = *(v11 + 24) & 0x3FLL;
    if (v8 <= 0xE && !v12)
    {

      *v1 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100141958();
  if (*v1)
  {
    sub_100009EB0(*v1);
LABEL_15:
    sub_100002EEC();
    return;
  }

  __break(1u);
}

void sub_100141374()
{
  sub_1000055B0();
  v1 = v0;
  sub_100005B00();
  type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_100002B8C();
  v3 = sub_100003D88();
  v4(v3);
  v5 = v0 + 1;
  v6 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000080E4();
    sub_100021200();
    v6 = *v5;
  }

  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_100021200();
    v6 = *v5;
  }

  v9 = sub_100026868();
  v10(v9);
  v1[1] = v6;
  v11 = *v1;
  if (!*v1)
  {
    if (v8 <= 0xE)
    {
      goto LABEL_15;
    }

    v12 = 0;
LABEL_14:
    static _HashTable.scale(forCapacity:)();
    sub_100012E74();
    sub_100141A44(v13, v12, v14, sub_100141A98);
    goto LABEL_15;
  }

  sub_100004CBC();
  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v8)
  {
    v12 = *(v11 + 24) & 0x3FLL;
    if (v8 <= 0xE && !v12)
    {

      *v1 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100141958();
  if (*v1)
  {
    sub_100009EB0(*v1);
LABEL_15:
    sub_100002EEC();
    return;
  }

  __break(1u);
}

void sub_100141540(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v5 = *v2;
  v6 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() < v6)
    {
      v7 = *(v5 + 24) & 0x3FLL;
      if (v6 <= 0xF && v7 == 0)
      {

        *v3 = 0;
        return;
      }

      goto LABEL_11;
    }

    sub_100141958();
    if (*v3)
    {
      sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v6 > 0xF)
  {
    v7 = 0;
LABEL_11:
    v9 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v9, v7, sub_100142420, sub_100141B14);
  }
}

void sub_100141688(int a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100070F50(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_100070F50(v10 > 1, v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  *(v7 + 4 * v11 + 32) = a1;
  v3[1] = v7;
  v12 = *v3;
  if (!*v3)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    v13 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v11)
  {
    v13 = *(v12 + 24) & 0x3FLL;
    if (v11 <= 0xE && v13 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v15 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v15, v13, sub_100142184, sub_100141A98);
    return;
  }

  sub_100141958();
  if (*v3)
  {
    sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_100141808(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_100065020(&qword_1001B8F48, &qword_10016FB30) - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_1001418B8(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  sub_100002F04(v6);
  result = a1(&v9, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_100141958()
{
  if (*v0 && (swift_isUniquelyReferenced_native() & 1) == 0)
  {
    if (*v0)
    {
      v1 = _HashTable.copy()();

      *v0 = v1;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100141A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v6 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v7 = a4(v4[1], a2, 0, v6, a3);

  *v4 = v7;
}

uint64_t sub_100141A98(uint64_t a1)
{
  v4 = sub_10014B0BC(a1);
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >= 5)
  {
    _HashTable.init(scale:reservedScale:)();
    v7 = sub_10014B408();
    v1(v7);
  }

  return 0;
}

uint64_t sub_100141B14(uint64_t a1)
{
  v4 = sub_10014B0BC(a1);
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >= 5)
  {
    _HashTable.init(scale:reservedScale:)();
    v7 = sub_10014B408();
    sub_100142258(v7, v8, v9, v1);
  }

  return 0;
}

uint64_t sub_100141B90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  result = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v26 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v24 = *(v12 + 56);
    v25 = v13;
    v27 = v12;
    v14 = (v12 - 8);
    while (1)
    {
      v25(v10, v26 + v24 * v11, v6);
      sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = 1 << *a2;
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        break;
      }

      v18 = v17 & result;
      v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = v20;
      v23 = v22;
      (*v14)(v10, v6);
      v29 = a2;
      v30 = a3;
      v31 = v18;
      v32 = v19;
      v33 = v21;
      v34 = v23;
      v35 = 0;
      while (v32)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v11 == v28)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100141D98(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a3;
  result = type metadata accessor for UUID();
  v6 = *(result - 8);
  v30 = *(a1 + 16);
  if (v30)
  {
    v7 = result;
    v8 = 0;
    v28 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v26 = *(v6 + 64);
    v27 = v9;
    v25 = v10;
    v29 = v6 + 16;
    v24 = (v6 + 8);
    while (1)
    {
      __chkstk_darwin(result);
      v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27(v12, v28 + v25 * v8, v7);
      sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v13 = 1 << *a2;
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        break;
      }

      v16 = v15 & result;
      v17 = v31;
      v18 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v20 = v19;
      v22 = v21;
      (*v24)(v12, v7);
      v32 = a2;
      v33 = v17;
      v34 = v16;
      v35 = v18;
      v36 = v20;
      v37 = v22;
      v38 = 0;
      while (v35)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v8 == v30)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100141F80(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderDescriptor();
  result = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v11 = 0;
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v26 = a1 + v12;
    v27 = v14;
    v25 = *(v13 + 56);
    v28 = v13;
    v15 = (v13 - 8);
    while (1)
    {
      v27(v10, v26 + v25 * v11, v6);
      sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = 1 << *a2;
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        break;
      }

      v19 = v18 & result;
      v20 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v22 = v21;
      v24 = v23;
      (*v15)(v10, v6);
      v30 = a2;
      v31 = a3;
      v32 = v19;
      v33 = v20;
      v34 = v22;
      v35 = v24;
      v36 = 0;
      while (v33)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v11 == v29)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100142184(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *a2;
      result = static Hasher._hash(seed:bytes:count:)();
      if (__OFSUB__(1 << v5, 1))
      {
        break;
      }

      if (_HashTable.UnsafeHandle._startIterator(bucket:)())
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
        }
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v4 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1001422A0(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v10 + 40 * v5;
        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
        Hasher.init(_seed:)();

        String.hash(into:)();
        if (v7)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v8);
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v9)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100142420(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_100142578(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        sub_10001214C(v17);
        result = Hasher._finalize()();
        v8 = 1 << *a3;
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          break;
        }

        v11 = v10 & result;
        v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v14 = v13;
        v16 = v15;

        v17[0] = a3;
        v17[1] = a4;
        v17[2] = v11;
        v18 = v12;
        v19 = v14;
        v20 = v16;
        v21 = 0;
        while (v18)
        {
          _HashTable.BucketIterator.advance()();
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100142698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    (*(v6 + 16))(v8, a2 + *(v6 + 72) * i, v5);
    sub_1000082D4(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_100142818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  for (i = 0; v23 != i; ++i)
  {
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    (*(v28 + 16))(&a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + *(v30 + 72) * i, v27);
    sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
    sub_100005FEC();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = sub_100003D88();
    v33(v32);
    if (v31)
    {
      break;
    }
  }

  sub_100002EEC();
}

uint64_t sub_100142974(int a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    if (*(a2 + 4 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1001429AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v14 = a2;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v19;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    if ((v20 & 1) == 0)
    {
      do
      {
        (*(v7 + 16))(v9, v14 + *(v7 + 72) * v11, v6);
        sub_1000082D4(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
        v12 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v12)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v13 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_100142BF4()
{
  sub_1000055B0();
  v11[0] = v0;
  v1 = type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D128();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v3 = v13;
    sub_10014B1A4(v12);
    if ((v14 & 1) == 0)
    {
      do
      {
        v5 = *(v1 - 8);
        __chkstk_darwin(v4);
        v7 = v11 - v6;
        (*(v5 + 16))(v11 - v6, v11[0] + *(v8 + 72) * v3, v1);
        sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
        v9 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v5 + 8))(v7, v1);
        if (v9)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_1000192C0();
        v4 = _HashTable.BucketIterator.currentValue.getter();
        v3 = v4;
      }

      while ((v10 & 1) == 0);
    }

    sub_100002EEC();
  }
}

void sub_100142DCC()
{
  sub_1000055B0();
  v18 = v0;
  v1 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  sub_1000079A4();
  sub_10005FAF0(v8, v9, &protocol conformance descriptor for InferenceProviderDescriptor);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D128();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v20;
    v12 = sub_10014B1A4(v19);
    if ((v21 & 1) == 0)
    {
      do
      {
        (*(v3 + 16))(v7, v18 + *(v3 + 72) * v11, v1, v12);
        sub_1000079A4();
        sub_10005FAF0(&qword_1001BBE20, v13, &protocol conformance descriptor for InferenceProviderDescriptor);
        v14 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = sub_100005FEC();
        v16(v15);
        if (v14)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_1000192C0();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v17 & 1) == 0);
    }

    sub_100002EEC();
  }
}

void sub_100142F9C()
{
  sub_1000135C4();
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)(v57);
  Hasher._finalize()();
  sub_10000D128();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_10014B498(v2, v3, v4, v5, v6, v7, v8, v9, v37, v40, v43);
    v12 = v59;
    v13 = v60;
    sub_10014B18C(v11, v14, v15, v16, v17, v18, v19, v20, v38, v41, v44, v46, v48, v50, v52, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v58);
    if ((v13 & 1) == 0)
    {
      do
      {
        v21 = v0 + 40 * v12;
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        v24 = *(v21 + 32);
        v25 = *v21 == *v1 && *(v21 + 8) == *(v1 + 8);
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = *(v1 + 24);
          if (v22)
          {
            if (v26)
            {
              v27 = v23 == *(v1 + 16) && v22 == v26;
              if (v27 || (sub_100053C38(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
LABEL_17:
                if (v24 == (*(v1 + 32) & 1))
                {
                  return;
                }
              }
            }
          }

          else if (!v26)
          {
            goto LABEL_17;
          }
        }

        _HashTable.BucketIterator.advance()();
        sub_10014B04C(v28, v29, v30, v31, v32, v33, v34, v35, v39, v42, v45, v47, v49, v51, v53);
        v12 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v36 & 1) == 0);
    }
  }
}

Swift::Int sub_1001430DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v7 = v10;
    if ((v11 & 1) == 0)
    {
      do
      {

        v8 = static UUID.== infix(_:_:)();

        if (v8)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v9 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_100143248(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  result = static Hasher._hash(seed:bytes:count:)();
  if (__OFSUB__(1 << v7, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    result = v10;
    if ((v11 & 1) == 0)
    {
      do
      {
        if (*(a2 + 4 * result) == a1)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v9 & 1) == 0);
    }
  }

  return result;
}

void sub_100143334()
{
  sub_1000135C4();
  Hasher.init(_seed:)();
  sub_10001214C(v50);
  Hasher._finalize()();
  sub_10000D128();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_10014B498(v1, v2, v3, v4, v5, v6, v7, v8, v30, v33, v36);
    v11 = v52;
    sub_10014B18C(v10, v12, v13, v14, v15, v16, v17, v18, v31, v34, v37, v39, v41, v43, v45, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v51);
    if ((v11 & 1) == 0)
    {
      do
      {
        v19 = type metadata accessor for InferenceProviderAsset(0);

        sub_100019CE4(v20, v0);
        sub_10014B320();
        if (v19)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_10014B04C(v21, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v40, v42, v44, v46);
        _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v29 & 1) == 0);
    }
  }
}

unint64_t sub_100143420(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
  }

  __break(1u);
  return result;
}

void sub_100143444()
{
  sub_1000055B0();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for UUID();
  v24 = v0;
  v5 = *v0;
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_100012484();
  v27 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v6 = v5 + 56;
  v26 = v5;
  sub_100011E24();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    if (((*(v6 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
    {
      v17 = v25;
      v18 = 1;
      goto LABEL_9;
    }

    v11 = *(v4 - 8);
    __chkstk_darwin(v7);
    v13 = &v23 - v12;
    v15 = *(v14 + 72) * v10;
    (*(v11 + 16))(&v23 - v12, *(v26 + 48) + v15, v4);
    sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
    sub_100025DE0();
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v13, v4);
    if (v16)
    {
      break;
    }

    v7 = v10 + 1;
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v19;
  v28 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000869B0();
    v21 = v28;
  }

  v22 = v25;
  (*(v11 + 32))(v25, *(v21 + 48) + v15, v4);
  sub_100143BC8(v10);
  *v19 = v28;
  v17 = v22;
  v18 = 0;
LABEL_9:
  sub_100009BFC(v17, v18, 1, v4);
  sub_100002EEC();
}

void sub_10014366C(Swift::UInt a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      break;
    }

    if (*(*(v3 + 48) + 24 * v6) == a1)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_10014B3D4();
      if ((v7 & 1) == 0)
      {
        sub_1000865CC();
      }

      sub_100143E7C(v6);
      sub_1000279A4(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      break;
    }

    v4 = v6 + 1;
  }

  sub_100006570();
}

void sub_100143778(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_10007F5C8(v6, v5);
  v21 = v7;
  Hasher.init(_seed:)();

  sub_10001214C(v20);
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for InferenceProviderAsset(0);

    v12 = sub_100019CE4(v11, a2);

    if (v12)
    {

      v13 = *(*(v7 + 48) + 8 * v10);
      sub_100036C5C(v10, sub_10001214C, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
      if (sub_100019CE4(a2, v13))
      {
        *v3 = v21;
        return;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
}

void sub_1001438E8(uint64_t a1)
{
  v2 = v1;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10007F838(v4, v3);
  v17 = v5;
  Hasher.init(_seed:)();

  sub_100012C1C(v16);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DaemonSession(0);

    v9 = sub_1000372F8();

    if (v9)
    {

      sub_100036C5C(v8, sub_100012C1C, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, vars0, vars8);
      if (sub_1000372F8())
      {
        *v2 = v17;
        return;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
}

void sub_100143A58(uint64_t a1)
{
  v2 = v1;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10007F6F8(v4, v3);
  v17 = v5;
  Hasher.init(_seed:)();

  sub_10005C330(v16);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DaemonRequest(0);

    v9 = sub_10005C434();

    if (v9)
    {

      sub_100036C5C(v8, sub_10005C330, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, vars0, vars8);
      if (sub_10005C434())
      {
        *v2 = v17;
        return;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
}

void sub_100143BC8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v10 = type metadata accessor for UUID();
      v11 = v10;
      v12 = *(v10 - 8);
      v13 = v12[2];
      v34[2] = v12 + 2;
      v35 = v13;
      v14 = v12[9];
      v34[1] = v12[8];
      v36 = v4;
      v37 = v14;
      v34[0] = v12 + 1;
      v15 = v7;
      do
      {
        __chkstk_darwin(v10);
        v17 = v2;
        v18 = v9;
        v19 = v15;
        v20 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = v37 * v6;
        v35(v20, *(v3 + 48) + v37 * v6, v11);
        v22 = v3;
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = v20;
        v15 = v19;
        v9 = v18;
        v2 = v17;
        v10 = (*v34[0])(v24, v11);
        v25 = v23 & v15;
        if (v17 >= v9)
        {
          if (v25 < v9 || v17 < v25)
          {
LABEL_20:
            v3 = v22;
            v4 = v36;
            goto LABEL_24;
          }
        }

        else if (v25 < v9 && v17 < v25)
        {
          goto LABEL_20;
        }

        v3 = v22;
        v27 = *(v22 + 48);
        v4 = v36;
        v10 = v27 + v37 * v17;
        v28 = v27 + v21 + v37;
        if (v37 * v17 < v21 || v10 >= v28)
        {
          v10 = swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v2 = v6;
          goto LABEL_24;
        }

        v2 = v6;
        if (v37 * v17 != v21)
        {
          v10 = swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v6 = (v6 + 1) & v15;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v3 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v33;
    ++*(v3 + 36);
  }
}

void sub_100143E7C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 24 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = v14 + 24 * v2;
            v16 = (v14 + 24 * v6);
            if (v2 != v6 || v15 >= v16 + 24)
            {
              v18 = *v16;
              *(v15 + 16) = *(v16 + 2);
              *v15 = v18;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_100144030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_100144970(a1, sub_1001472B4, &type metadata accessor for InferenceProviderDescriptor, sub_10007089C);
    return;
  }

  sub_100004CBC();
  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_100141958();
    v9 = *v3;
    if (*v3)
    {

      sub_100144A4C(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v10 = v3[1];

        sub_10014581C(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100144970(a1, sub_1001472B4, &type metadata accessor for InferenceProviderDescriptor, sub_10007089C);
  if (v7)
  {
    sub_100004CBC();
    swift_beginAccess();
    v11 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || *(*v5 + 16) >= 0x10uLL)
  {
    static _HashTable.scale(forCapacity:)();
    sub_100012E74();
    sub_100141A44(v12, v11, v13, sub_100141A98);
  }

  else
  {

    *v3 = 0;
  }
}

void sub_100144258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_100144814(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_12:
    sub_100144814(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    if (v11 || *(*v5 + 16) >= 0x10uLL)
    {
      v12 = static _HashTable.scale(forCapacity:)();
      sub_100141A44(v12, v11, sub_100142184, sub_100141A98);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_100141958();
  v9 = *v3;
  if (*v3)
  {
    sub_100145100(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_100145E14(a1, a1 + 1, v10, (v9 + 16));

      sub_100144814(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100144424(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v3 + 1;
  v8 = *(v3[1] + 16);
  v9 = *v4;
  if (!*v4)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_10014488C(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v9 + 16) & 0x3FLL) == (*(v9 + 24) & 0x3FLL))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_100141958();
    v11 = *v4;
    if (*v4)
    {

      sub_100144DA4(a2, (v11 + 16), v11 + 32, v4);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v12 = v4[1];

        sub_100146214(a1, a1 + 1, v12, (v11 + 16), v11 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v8 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_10014488C(a1, a3);
  if (v9)
  {
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  if (v13 || *(*v7 + 16) >= 0x10uLL)
  {
    v14 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v14, v13, sub_100141B90, sub_100141A98);
  }

  else
  {

    *v4 = 0;
  }
}

void sub_1001445EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_100144970(a1, sub_100147304, &type metadata accessor for UUID, sub_100070878);
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_100141958();
    v9 = *v3;
    if (*v3)
    {

      sub_1001452C4(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v10 = v3[1];

        sub_1001467FC(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100144970(a1, sub_100147304, &type metadata accessor for UUID, sub_100070878);
  if (v7)
  {
    swift_beginAccess();
    v11 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || *(*v5 + 16) >= 0x10uLL)
  {
    v12 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v12, v11, sub_100141D98, sub_100141A98);
  }

  else
  {

    *v3 = 0;
  }
}

void sub_100144814(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472C8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_1000708FC((v3 + 4 * a1 + 36), v5 - 1 - a1, (v3 + 4 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_10014488C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472F0(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    (*(v9 + 32))(a2, v11, v8);
    sub_100070864(v11 + v10, v7 - 1 - a1, v11);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }
}

uint64_t sub_100144970(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t (*a4)(unint64_t, unint64_t, unint64_t))
{
  result = sub_10014B338();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v11 = *(v5 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    sub_100002C00();
    v12 += 32;
    v13 = *(v12 + 40);
    v14 = v5 + ((*(v12 + 48) + 32) & ~*(v12 + 48)) + v13 * a1;
    v15 = sub_1000071D0();
    v16(v15);
    result = a4(v14 + v13, v11 - 1 - a1, v14);
    *(v5 + 16) = v11 - 1;
    *v4 = v5;
  }

  return result;
}

unint64_t sub_100144A4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v25 = a2;
  *(&v25 + 1) = a3;
  *&v26 = a1;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v26 + 1))
  {
    v23[0] = a3;
    v14 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v23[1] = v8 + 16;
    while (1)
    {
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v16)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v24 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_26;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14 || a1 < v20)
        {
          goto LABEL_19;
        }
      }

      else if (v20 < v14 && a1 < v20)
      {
        goto LABEL_19;
      }

      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      _HashTable.BucketIterator.currentValue.getter();
      a1 = v30;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_19:
      _HashTable.BucketIterator.advance()();
      if (!*(&v26 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_100144DA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v25 = a2;
  *(&v25 + 1) = a3;
  *&v26 = a1;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v26 + 1))
  {
    v23[0] = a3;
    v14 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v23[1] = v8 + 16;
    while (1)
    {
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v16)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v24 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_26;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14 || a1 < v20)
        {
          goto LABEL_19;
        }
      }

      else if (v20 < v14 && a1 < v20)
      {
        goto LABEL_19;
      }

      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      _HashTable.BucketIterator.currentValue.getter();
      a1 = v30;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_19:
      _HashTable.BucketIterator.advance()();
      if (!*(&v26 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_100145100(int64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v16)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      v11 = *a2;
      result = static Hasher._hash(seed:bytes:count:)();
      if (__OFSUB__(1 << v11, 1))
      {
        goto LABEL_25;
      }

      v12 = result & ((1 << v11) - 1);
      if (v8 >= v7)
      {
        if (v12 >= v7 && v8 >= v12)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v12 >= v7 || v8 >= v12)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}