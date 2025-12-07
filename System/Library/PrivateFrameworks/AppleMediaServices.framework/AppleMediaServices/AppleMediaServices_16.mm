uint64_t sub_1001875F4()
{
  sub_100004194();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v1[31] = v3;
  sub_100003B78(v3);
  v1[32] = v4;
  v1[33] = sub_1000C70D8();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_100099DF4(&qword_1002DF738, &unk_10023F550);
  sub_1000030B8(v5);
  v1[37] = sub_1000C70D8();
  v1[38] = swift_task_alloc();
  v6 = type metadata accessor for Log();
  v1[39] = v6;
  sub_100003B78(v6);
  v1[40] = v7;
  v1[41] = sub_1000C70D8();
  v1[42] = swift_task_alloc();
  v8 = sub_10000AA8C();

  return _swift_task_switch(v8);
}

uint64_t sub_10018774C()
{
  sub_10000A504();
  sub_100008B30();
  v1 = *(v0 + 240);
  static Log.tsDataSync.getter();
  *(v0 + 344) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 352) = *(v3 + 72);
  *(v0 + 520) = *(v4 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329D0;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v1;
  *(v0 + 360) = v5;
  *(v0 + 40) = v5;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C5C8();
  }

  else
  {
    sub_10018C3D0();
  }

  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v15 = *(v0 + 312);
  v16 = *(v0 + 240);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v8 = type metadata accessor for AccountIdentity();
  *(v0 + 368) = v8;
  *(v0 + 72) = v8;
  sub_100007914((v0 + 48));
  sub_10000B7EC();
  v10 = *(v9 + 16);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v11 = *(v7 + 8);
  *(v0 + 392) = v11;
  *(v0 + 400) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v15);
  *(v0 + 408) = *(v16 + 216);
  sub_10018C344();
  sub_100003BBC();

  return _swift_task_switch(v12);
}

uint64_t sub_100187990()
{
  sub_100004194();
  *(v0 + 416) = sub_10018A194(*(v0 + 232));

  return _swift_task_switch(sub_1001879FC);
}

uint64_t sub_1001879FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v27 = *(v26 + 416);
  v28 = *(v27 + 32);
  *(v26 + 528) = v28;
  v29 = -1;
  v30 = -1 << v28;
  v31 = *(v27 + 64);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  *(v26 + 424) = 0;
  *(v26 + 432) = _swiftEmptyArrayStorage;
  v32 = v29 & v31;
  if (v32)
  {
    v33 = 0;
LABEL_8:
    v36 = *(v26 + 296);
    v37 = (v32 - 1) & v32;
    v38 = __clz(__rbit64(v32)) | (v33 << 6);
    sub_100004D10();
    sub_10018B17C();
    v39 = *(*(v27 + 56) + 8 * v38);
    v40 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
    v41 = *(v40 + 48);
    sub_100006B88();
    sub_1000050CC();
    sub_10018B1D8();
    *(v36 + v41) = v39;
    sub_10000B7B0();
    sub_100002728(v42, v43, v44, v40);

    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = ((63 - v30) >> 6) - 1;
    while (v35 != v34)
    {
      v33 = v34 + 1;
      v32 = *(v27 + 72 + 8 * v34++);
      if (v32)
      {
        goto LABEL_8;
      }
    }

    sub_100099DF4(&qword_1002DF730, &qword_10023F548);
    sub_100007B78();
    sub_100002728(v52, v53, v54, v55);
    v37 = 0;
  }

  *(v26 + 440) = v37;
  *(v26 + 448) = v35;
  sub_1000114E8();
  v45 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v46 = sub_100013DDC();
  if (sub_100004DFC(v46, v47, v45) != 1)
  {
    *(v26 + 456) = *(*(v26 + 304) + *(v45 + 48));
    sub_100006B88();
    sub_10018B1D8();
    goto LABEL_13;
  }

  v48 = _swiftEmptyArrayStorage[2];
  *(v26 + 472) = v48;
  if (v48)
  {
    v49 = *(v26 + 256);
    *(v26 + 524) = *(v49 + 80);
    *(v26 + 480) = *(v49 + 72);
    *(v26 + 488) = 0;
    sub_100004D10();
    sub_10018B17C();
LABEL_13:
    sub_10000F438();

    return _swift_task_switch(v50);
  }

  v56 = *(v26 + 424);
  *(v26 + 496) = sub_100188CF8();
  *(v26 + 504) = v56;
  if (!v56)
  {
    sub_100005D84();
    goto LABEL_13;
  }

  v57 = *(v26 + 360);
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v58 = sub_10018BD88();
  sub_10018BE6C(v58, xmmword_1002381F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  sub_10000C6E0();

  sub_100004118((v26 + 80));
  sub_10018BB78();
  sub_10018C21C();
  sub_10018C020();
  v57();
  sub_10018C350();
  sub_10018C1DC();
  sub_10018BD6C();
  sub_10018BE2C();
  sub_10018C1C0();
  sub_10000B7EC();
  (*(v59 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_10018C1A4();
  sub_100002CCC();
  Log.error(_:)();

  v60 = sub_10018C040();
  v61(v60);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100187DF8()
{
  sub_100007F3C();
  v1 = *(v0 + 424);
  sub_100194348();
  *(v0 + 464) = v1;
  if (v1)
  {

    v2 = sub_100188A20;
  }

  else
  {
    v2 = sub_100187E94;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100187E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  sub_100004D10();
  sub_10018B17C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v26 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_10013C77C(v29 > 1, v30 + 1, 1, v28);
      v28 = v68;
    }

    sub_100003A24();
    sub_10018B234();
    *(v28 + 16) = v30 + 1;
    sub_100006B88();
    sub_10018B1D8();
    v31 = *(v26 + 440);
    v32 = *(v26 + 448);
    *(v26 + 424) = *(v26 + 464);
    *(v26 + 432) = v28;
    if (v31)
    {
      break;
    }

    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= (((1 << *(v26 + 528)) + 63) >> 6))
      {
        sub_100099DF4(&qword_1002DF730, &qword_10023F548);
        v50 = sub_100013DDC();
        sub_100002728(v50, v51, 1, v52);
        v36 = 0;
        goto LABEL_11;
      }

      v33 = *(v26 + 416);
      v31 = *(v33 + 8 * v34 + 64);
      ++v32;
      if (v31)
      {
        v32 = v34;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    sub_10013C77C(0, *(v28 + 16) + 1, 1, v28);
    v28 = v67;
  }

  v33 = *(v26 + 416);
LABEL_10:
  v35 = *(v26 + 296);
  v36 = (v31 - 1) & v31;
  v37 = __clz(__rbit64(v31)) | (v32 << 6);
  sub_100004D10();
  sub_10018B17C();
  v38 = *(*(v33 + 56) + 8 * v37);
  v39 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v40 = *(v39 + 48);
  sub_100006B88();
  sub_10018B1D8();
  *(v35 + v40) = v38;
  sub_10000B7B0();
  sub_100002728(v41, v42, v43, v39);

LABEL_11:
  *(v26 + 440) = v36;
  *(v26 + 448) = v32;
  v44 = *(v26 + 304);
  sub_1000114E8();
  v45 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  if (sub_100004DFC(v44, 1, v45) != 1)
  {
    *(v26 + 456) = *(*(v26 + 304) + *(v45 + 48));
    sub_100006B88();
    sub_10018B1D8();
    goto LABEL_15;
  }

  v46 = *(v28 + 16);
  *(v26 + 472) = v46;
  if (v46)
  {
    v47 = *(v26 + 256);
    *(v26 + 524) = *(v47 + 80);
    *(v26 + 480) = *(v47 + 72);
    *(v26 + 488) = 0;
    sub_100004D10();
    sub_10018B17C();
LABEL_15:
    sub_10000F438();

    return _swift_task_switch(v48);
  }

  v53 = *(v26 + 424);
  *(v26 + 496) = sub_100188CF8();
  *(v26 + 504) = v53;
  if (!v53)
  {
    sub_100005D84();
    goto LABEL_15;
  }

  v54 = *(v26 + 360);
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v55 = sub_10018BD88();
  sub_10018BE6C(v55, xmmword_1002381F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  sub_10000C6E0();

  sub_100004118((v26 + 80));
  sub_10018BB78();
  sub_10018C21C();
  sub_10018C020();
  v54();
  sub_10018C350();
  sub_10018C1DC();
  sub_10018BD6C();
  sub_10018BE2C();
  sub_10018C1C0();
  sub_10000B7EC();
  (*(v56 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_10018C1A4();
  sub_100002CCC();
  Log.error(_:)();

  v57 = sub_10018C040();
  v58(v57);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100188324()
{
  swift_beginAccess();
  sub_10014EC40();
  if (v1)
  {
    v2 = *(v0 + 408);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    v4 = *(v9 + 24);
    sub_100099DF4(&unk_1002DEA40, &unk_10023B990);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v4);
    sub_100003A24();
    sub_10018B234();

    type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
    sub_10018BA54();
    sub_10018ADEC(v5, v6, byte_10023679C);
    sub_1000050CC();
    _NativeDictionary._delete(at:)();
    *(v2 + 112) = v9;
  }

  swift_endAccess();
  v7 = sub_10000AA8C();

  return _swift_task_switch(v7);
}

uint64_t sub_10018848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v27 = v26[59];
  v28 = v26[61] + 1;
  sub_100003A24();
  sub_10018B234();
  if (v28 == v27)
  {

    v29 = v26[53];
    v26[62] = sub_100188CF8();
    v26[63] = v29;
    if (v29)
    {
      v30 = v26[45];
      sub_10000D5B4();
      static Log.tsDataSync.getter();
      v31 = sub_10018BD88();
      sub_10018BE6C(v31, xmmword_1002381F0);
      if (AMSLogKey())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C084();
      }

      else
      {
        sub_10018BD30();
      }

      sub_10000C6E0();

      sub_100004118(v26 + 10);
      sub_10018BB78();
      sub_10018C21C();
      sub_10018C020();
      v30();
      sub_10018C350();
      sub_10018C1DC();
      sub_10018BD6C();
      sub_10018BE2C();
      sub_10018C1C0();
      sub_10000B7EC();
      (*(v34 + 16))();
      static LogInterpolation.sensitive(_:)();
      sub_10018C1A4();
      sub_100002CCC();
      Log.error(_:)();

      v35 = sub_10018C040();
      v36(v35);
      swift_willThrow();

      sub_100002E08();
      sub_10000F438();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    sub_100005D84();
  }

  else
  {
    ++v26[61];
    sub_100004D10();
    sub_10018B17C();
  }

  sub_10000F438();

  return _swift_task_switch(v32);
}

uint64_t sub_1001886F0()
{
  sub_1000051E0();
  v1 = v0[63];
  (*(*(v0[62] + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store + 8) + 24))();
  v0[64] = v1;
  if (v1)
  {

    v2 = sub_10000AA8C();

    return _swift_task_switch(v2);
  }

  else
  {

    sub_100003844();

    return v3();
  }
}

uint64_t sub_100188838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v45 = v27[64];
  v29 = v27[45];
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v30 = sub_10018BD88();
  v27[10] = v28;
  *(v30 + 16) = xmmword_1002381F0;
  v27[13] = v29;

  v31 = AMSLogKey();
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10018B778();

  sub_100004118(v27 + 10);
  sub_10018C1F8();
  v27[17] = v28;
  sub_100007914(v27 + 14);
  sub_10018BD48();
  v26();
  sub_10018C350();
  sub_10018C508((v27 + 14));
  sub_10018BD6C();
  sub_10018C180();
  v27[21] = v27[26];
  sub_100007914(v27 + 18);
  sub_10000B4FC();
  sub_1000C7198();
  v33();
  static LogInterpolation.sensitive(_:)();
  sub_10018C508((v27 + 18));
  sub_100002CCC();
  Log.error(_:)();

  v34 = sub_10018B754();
  v35(v34);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v45, a23, a24, a25, a26);
}

uint64_t sub_100188A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();

  sub_100003A24();
  sub_10018B234();
  v45 = v27[58];
  v29 = v27[45];
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v30 = sub_10018BD88();
  v27[10] = v28;
  *(v30 + 16) = xmmword_1002381F0;
  v27[13] = v29;

  v31 = AMSLogKey();
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10018B778();

  sub_100004118(v27 + 10);
  sub_10018C1F8();
  v27[17] = v28;
  sub_100007914(v27 + 14);
  sub_10018BD48();
  v26();
  sub_10018C350();
  sub_10018C508((v27 + 14));
  sub_10018BD6C();
  sub_10018C180();
  v27[21] = v27[26];
  sub_100007914(v27 + 18);
  sub_10000B4FC();
  sub_1000C7198();
  v33();
  static LogInterpolation.sensitive(_:)();
  sub_10018C508((v27 + 18));
  sub_100002CCC();
  Log.error(_:)();

  v34 = sub_10018B754();
  v35(v34);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v45, a23, a24, a25, a26);
}

uint64_t sub_100188C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10000AA8C();
  return _swift_task_switch(v5);
}

uint64_t sub_100188C78()
{
  sub_100007F3C();
  v1 = sub_100189F20(*(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 40) + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100188CF8()
{
  if (*(v0 + 208))
  {
    v2 = *(v0 + 208);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 112);
    v20[3] = type metadata accessor for TSDataSyncCoordinatorActor();
    v20[4] = &off_1002BB528;
    v20[0] = v0;
    sub_100007974(v0 + 136, v19);
    v5 = type metadata accessor for LiveTransactionStore(0);
    v6 = type metadata accessor for DeviceDetails();
    v7 = objc_allocWithZone(AMSDefaults);
    v8 = v4;

    v9 = [v7 init];
    v18[3] = sub_10018AE34();
    v18[4] = &protocol witness table for AMSDefaults;
    v18[0] = v9;
    v16 = &type metadata for SystemRandomNumberGenerator;
    v17 = &protocol witness table for SystemRandomNumberGenerator;
    v10 = type metadata accessor for TSDataSyncConfigAccessActor(0);
    v11 = sub_10018C398(v10);
    v12 = v5;
    v2 = v11;
    v13 = sub_100170734(&type metadata for TSDataSyncConfigNetworking, &off_1002BB488, &type metadata for TSDataSyncConfigFileSystemStore, &off_1002BB4E8, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, v12, &off_1002BBE38, v6, &protocol witness table for DeviceDetails, v18, v8, v15, v20, v19);
    if (v1)
    {
      return v2;
    }

    v2 = v13;
    *(v3 + 208) = v13;
  }

  return v2;
}

uint64_t sub_100188E9C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100007620(sub_100188EB8);
}

uint64_t sub_100188EB8()
{
  sub_100007F3C();
  *(v0 + 56) = sub_100188CF8();
  v1 = sub_10018C344();

  return _swift_task_switch(v1);
}

uint64_t sub_100188F60()
{
  sub_100007F3C();
  swift_beginAccess();
  sub_10018BA3C();
  sub_10018B17C();

  sub_100003844();

  return v0();
}

uint64_t sub_100188FF8()
{
  sub_100004118((v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100189038()
{
  sub_100188FF8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100189088()
{
  sub_100004194();
  v1[38] = v0;
  sub_10018C0D8();
  v1[39] = v2;
  v3 = type metadata accessor for Log();
  v1[40] = v3;
  sub_100003B78(v3);
  v1[41] = v4;
  v1[42] = sub_100003FA8();
  v5 = sub_10000AA8C();

  return _swift_task_switch(v5);
}

uint64_t sub_100189150()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[38];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  sub_10018BFE0();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v0[37] = type metadata accessor for TSDataSyncCoordinatorActor();
  v0[34] = v1;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 34);
  LogInterpolation.init(stringLiteral:)();
  sub_10018C538();

  v3 = sub_1000DBA50();
  v4(v3);
  swift_task_alloc();
  sub_10000DEA0();
  v0[43] = v5;
  *v5 = v6;
  sub_10000BFD4(v5);
  sub_100003128();

  return sub_10017AECC(v7, v8);
}

uint64_t sub_100189308()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;

  if (v0)
  {

    sub_10018BB68();

    return v7();
  }

  else
  {
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    v9 = swift_task_alloc();
    *(v3 + 352) = v9;
    *v9 = v5;
    v9[1] = sub_100189480;

    return sub_10017C0F8();
  }
}

uint64_t sub_100189480()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_100004504();
  *v2 = v0;
  *v2 = *v1;

  sub_10018A46C(v0 + 16);
  sub_10018BD60();

  sub_10018BB68();

  return v3();
}

uint64_t sub_100189580()
{
  sub_100004194();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v1[46] = v5;
  sub_10018C0D8();
  v1[51] = v6;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  v1[52] = sub_1000C70D8();
  v1[53] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[54] = v8;
  sub_100003B78(v8);
  v1[55] = v9;
  v1[56] = sub_100003FA8();
  v10 = type metadata accessor for Log();
  v1[57] = v10;
  sub_100003B78(v10);
  v1[58] = v11;
  v1[59] = sub_100003FA8();
  v12 = sub_10000AA8C();

  return _swift_task_switch(v12);
}

uint64_t sub_1001896D4()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[50];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  sub_10018BFE0();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v0[45] = type metadata accessor for TSDataSyncCoordinatorActor();
  v0[42] = v1;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 42);
  LogInterpolation.init(stringLiteral:)();
  sub_10018C538();

  v3 = sub_1000DBA50();
  v4(v3);
  swift_task_alloc();
  sub_10000DEA0();
  v0[60] = v5;
  *v5 = v6;
  sub_10000BFD4(v5);
  sub_100003128();

  return sub_10017AECC(v7, v8);
}

uint64_t sub_10018988C()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {

    sub_100002E08();

    return v7();
  }

  else
  {
    v9 = sub_10018C344();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_1001899D4()
{
  sub_10000DB4C();
  v1 = *(v0 + 432);
  sub_10018AE78();
  v2 = sub_100013DDC();
  if (sub_100004DFC(v2, v3, v1) == 1)
  {
    sub_100004E7C(*(v0 + 424), &qword_1002DA970, &qword_1002318B0);
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    v4 = swift_task_alloc();
    *(v0 + 520) = v4;
    *v4 = v0;
    sub_100003EE8(v4);

    return sub_10017C0F8();
  }

  else
  {
    v6 = *(v0 + 488);
    (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
    *(v0 + 496) = sub_100188CF8();
    *(v0 + 504) = v6;
    v7 = *(v0 + 440);
    v8 = *(v0 + 432);
    if (v6)
    {
      (*(v7 + 8))(*(v0 + 448), *(v0 + 432));
      sub_10018A46C(v0 + 16);

      sub_100002E08();

      return v9();
    }

    else
    {
      (*(v7 + 16))(*(v0 + 416), *(v0 + 448), *(v0 + 432));
      sub_10000B7B0();
      sub_100002728(v10, v11, v12, v8);
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      v13 = sub_10000AA8C();

      return _swift_task_switch(v13);
    }
  }
}

uint64_t sub_100189BD0()
{
  sub_100007F3C();
  v1 = v0[63];
  sub_1001760F0();
  v0[64] = v1;
  sub_100004E7C(v0[52], &qword_1002DA970, &qword_1002318B0);

  if (v1)
  {
    sub_10018A46C((v0 + 2));
  }

  sub_100003054();

  return _swift_task_switch(v2);
}

uint64_t sub_100189C90()
{
  sub_100004194();
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  sub_100003EE8(v1);

  return sub_10017C0F8();
}

void sub_100189D20()
{
  sub_10000DB4C();
  sub_1000030F8();
  v2 = v1;
  sub_1000077D8();
  *v3 = v2;
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  sub_10018A46C(v2 + 16);

  sub_10000AD14();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_100189E84()
{
  sub_100007F3C();
  (*(v0[55] + 8))(v0[56], v0[54]);

  sub_100002E08();

  return v1();
}

char *sub_100189F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v12 = sub_1000030B8(v11);
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v4 + 112);
  if (*(v15 + 16))
  {

    v16 = sub_10014EC40();
    if (v17)
    {
      v14 = *(*(v15 + 56) + 8 * v16);

      return v14;
    }
  }

  sub_100004D10();
  sub_10018B17C();
  v31[3] = type metadata accessor for TSDataSyncCoordinatorActor();
  v31[4] = &off_1002BB528;
  v31[0] = a3;
  sub_100007974(a4, v30);
  v18 = type metadata accessor for LiveTransactionStore(0);
  v19 = type metadata accessor for DeviceDetails();
  v20 = objc_allocWithZone(AMSDefaults);

  v21 = [v20 init];
  v28 = sub_10018AE34();
  v29 = &protocol witness table for AMSDefaults;
  v27[0] = v21;
  v22 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
  sub_10018C398(v22);
  v23 = a2;
  sub_10018C9D4(v14, &type metadata for TSDataSyncDatasetGroupFileSystemStore, &off_1002BB768, &type metadata for TSDataSyncDatasetGroupNetworking, &off_1002BB708, v23, &type metadata for TSDataSyncWriteExternalData, &off_1002BB7C8, v18, &off_1002BBE38, v19, &protocol witness table for DeviceDetails, v27, v31, v30, v26, v27[0], v27[1], v27[2], v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v31[0]);
  if (!v6)
  {
    v14 = v24;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *(v7 + 112);
    sub_100150204();
    *(v7 + 112) = v30[0];
    swift_endAccess();
  }

  return v14;
}

unint64_t *sub_10018A194(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v6[2] = a1;

  v4 = sub_10018A588(sub_10018A568, v6, v3);

  return v4;
}

uint64_t sub_10018A21C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = type metadata accessor for AccountIdentity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  v15 = *a2;
  sub_10018B17C();
  *&v14[*(v9 + 56)] = v15;
  sub_10018AE78();

  v16 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(v5 + 16))(v7, &v11[*(v16 + 32)], v4);
  sub_10018B234();
  LOBYTE(v9) = static AccountIdentity.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  sub_100004E7C(v14, &qword_1002DF730, &qword_10023F548);
  return v9 & 1;
}

unint64_t sub_10018A4C0()
{
  result = qword_1002DF718;
  if (!qword_1002DF718)
  {
    result = swift_getWitnessTable(byte_10022E814, &unk_1002B45C8, v0, v1);
    atomic_store(result, &qword_1002DF718);
  }

  return result;
}

unint64_t sub_10018A514()
{
  result = qword_1002DF720;
  if (!qword_1002DF720)
  {
    result = swift_getWitnessTable("ew\a", &unk_1002B7C88, v0, v1);
    atomic_store(result, &qword_1002DF720);
  }

  return result;
}

unint64_t *sub_10018A588(uint64_t (*a1)(char *, uint64_t *), unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_10018A94C(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000EA578(0, v8, v9);
  sub_10018A70C(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

void sub_10018A70C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v30 = a4;
  v25 = a2;
  v26 = a1;
  v5 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v27 = 0;
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v31 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v32 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v7 << 6);
    v19 = v31;
    v20 = v28;
    sub_10018B17C();
    v34 = *(v19[7] + 8 * v18);

    v21 = v33;
    v22 = v30(v20, &v34);

    sub_10018B234();
    v33 = v21;
    if (v21)
    {
      return;
    }

    v13 = v32;
    if (v22)
    {
      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        sub_10018A9DC(v26, v25, v27, v31);
        return;
      }
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_16;
    }

    v17 = v9[v7];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_10018A94C(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
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

    sub_10018A70C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_10018A9DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v32 = &v30 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100099DF4(&qword_1002DF728, &qword_10023F540);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 64;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v35 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v36 = *(v33 + 72);
    sub_10018B17C();
    v20 = *(a4[7] + 8 * v19);
    sub_10018B1D8();
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();

    String.hash(into:)();
    String.hash(into:)();
    type metadata accessor for AccountIdentity();
    sub_10018ADEC(&qword_1002DE9E0, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v12 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      a4 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    a4 = v31;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_10018B1D8();
    *(*(v12 + 56) + 8 * v24) = v20;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    v13 = v35;
    if (!a3)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10018ADEC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018AE34()
{
  result = qword_1002DBBB8;
  if (!qword_1002DBBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DBBB8);
  }

  return result;
}

uint64_t sub_10018AE78()
{
  sub_100002FBC();
  sub_100099DF4(v1, v2);
  sub_10000B7EC();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

_OWORD *sub_10018AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v29 = &type metadata for String;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v10 = *a6;
  v11 = sub_10014EB30(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10014EB30(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a6;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100004118(v21);
    return sub_1001514B8(&v28, v21);
  }

  else
  {
    v23 = sub_100008494(&v28, &type metadata for String);
    v24 = __chkstk_darwin(v23);
    v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    sub_10018B0AC(v16, a3, a4, *v26, v26[1], v20);
    sub_100004118(&v28);
  }
}

_OWORD *sub_10018B0AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1001514B8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncEntryPoint(uint64_t a1)
{
  result = qword_1002DF7B8;
  if (!qword_1002DF7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018B17C()
{
  sub_100002FBC();
  v1(0);
  sub_10000B7EC();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_10018B1D8()
{
  sub_100002FBC();
  v1(0);
  sub_10000B7EC();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_10018B234()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000B7EC();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_10018B28C(uint64_t a1)
{
  sub_10018B300();
  if (v1 <= 0x3F)
  {
    sub_10018B328();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_10018B300()
{
  result = qword_1002DF7C8;
  if (!qword_1002DF7C8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1002DF7C8);
  }

  return result;
}

void sub_10018B328()
{
  if (!qword_1002DF7D0)
  {
    v0 = type metadata accessor for TSDataSyncExternalEvent(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1002DF7D0);
    }
  }
}

unint64_t sub_10018B370()
{
  result = qword_1002DF800;
  if (!qword_1002DF800)
  {
    result = swift_getWitnessTable(byte_10023920C, &type metadata for AccountDataNetworkingBag, v0, v1);
    atomic_store(result, &qword_1002DF800);
  }

  return result;
}

uint64_t sub_10018B474()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018B4D8()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10018B52C()
{

  sub_10011DE50();
}

uint64_t sub_10018B574@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AC540(0xD000000000000016, (a1 - 32) | 0x8000000000000000, 2);
}

uint64_t sub_10018B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(v19 + 296) = *(v21 - 80);
  *(v19 + 272) = v20;
}

uint64_t sub_10018B698@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 424) = a1;
  *(v2 + 400) = 0xD000000000000012;
  *(v2 + 408) = v1;
  sub_1001514B8((v2 + 400), (v2 + 432));
  v3 = *(v2 + 456);

  return sub_100008494(v2 + 432, v3);
}

uint64_t sub_10018B6F4@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AC540(0xD00000000000001DLL, (a1 - 32) | 0x8000000000000000, 2);
}

uint64_t sub_10018B724(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

uint64_t sub_10018B778()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return swift_getErrorValue();
}

uint64_t sub_10018B848()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018B86C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 296) = v4;
  *(v2 + 272) = v3;
}

uint64_t sub_10018B96C()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10018B994()
{

  sub_10011DE50();
}

uint64_t sub_10018B9BC()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018BA84()
{

  return swift_allocObject();
}

uint64_t sub_10018BACC()
{

  return sub_10018B234();
}

uint64_t sub_10018BB04()
{

  return sub_1001AC540(0xD000000000000017, v0 | 0x8000000000000000, 2);
}

uint64_t sub_10018BB28()
{
  sub_100004118((v0 + 272));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10018BB78()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018BB9C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 360) = v4;
  *(v3 + 336) = v2;
}

uint64_t sub_10018BC18()
{
  sub_100004118((v0 + 336));

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018BC88()
{

  return swift_getErrorValue();
}

uint64_t sub_10018BCC8()
{
  sub_100004118((v0 + 560));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10018BD6C()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018BD88()
{

  return swift_allocObject();
}

uint64_t sub_10018BDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

void sub_10018BE14()
{
  v1 = 0;
  v2 = 0xE000000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_10018BE2C()
{

  return swift_getErrorValue();
}

uint64_t sub_10018BE4C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v3;
}

uint64_t sub_10018BE6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 104) = v4;
  *(v2 + 80) = v3;
}

uint64_t sub_10018BE8C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 360) = v4;
  *(v2 + 336) = v3;
}

uint64_t sub_10018BEAC()
{
}

uint64_t *sub_10018BECC()
{
  v0[49] = v0[79];

  return sub_100007914(v0 + 46);
}

uint64_t *sub_10018BEEC()
{
  *(v1 + 136) = *(v1 + 152);

  return sub_100007914((v0 + 32));
}

uint64_t sub_10018BF08()
{
}

uint64_t *sub_10018BF24()
{
  v0[41] = v0[43];

  return sub_100007914(v0 + 38);
}

uint64_t sub_10018BF40(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1001AC540(v3, a2, 2);
}

uint64_t sub_10018BF58()
{

  return swift_allocObject();
}

uint64_t sub_10018BFC8()
{

  return swift_allocObject();
}

void sub_10018C050()
{
}

void sub_10018C084()
{
}

uint64_t sub_10018C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_1001A8ED8(va, a2, a3);
}

void sub_10018C0B4()
{
}

uint64_t sub_10018C150()
{

  return static LogInterpolation.sensitive(_:)();
}

void sub_10018C168()
{
}

uint64_t sub_10018C180()
{

  return swift_getErrorValue();
}

uint64_t sub_10018C1A4()
{

  return sub_100004E7C(v0 + 144, v1, v2);
}

uint64_t *sub_10018C1C0()
{
  v0[21] = v0[26];

  return sub_100007914(v0 + 18);
}

uint64_t sub_10018C1DC()
{

  return sub_100004E7C(v0 + 112, v1, v2);
}

uint64_t sub_10018C1F8()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t *sub_10018C21C()
{
  *(v0 + 136) = v1;

  return sub_100007914((v0 + 112));
}

uint64_t sub_10018C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getErrorValue();
}

uint64_t sub_10018C25C()
{

  return Log.default(_:)();
}

uint64_t sub_10018C278()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t *sub_10018C294()
{
  v0[49] = v0[51];

  return sub_100007914(v0 + 46);
}

uint64_t sub_10018C2B0()
{
}

uint64_t sub_10018C2CC()
{
  *(v1 + 24) = v0;
}

uint64_t sub_10018C2E8()
{

  return LogInterpolation.StringInterpolation.appendInterpolation(_:)();
}

uint64_t *sub_10018C304()
{
  *(v1 + 104) = *(v1 + 120);

  return sub_100007914((v0 + 32));
}

uint64_t sub_10018C320(uint64_t a1)
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_10018C350()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_10018C368()
{
  sub_100004118((v0 + 432));
}

uint64_t sub_10018C398(uint64_t a1)
{

  return swift_allocObject();
}

double sub_10018C454()
{
  result = 0.0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  return result;
}

uint64_t sub_10018C460@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 440) = a1;
  *(v2 + 448) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v3;
}

uint64_t sub_10018C480()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_allocObject();
}

uint64_t sub_10018C4C0()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t *sub_10018C4D8()
{
  *(v1 + 328) = v0;

  return sub_100007914((v1 + 304));
}

uint64_t sub_10018C4F0()
{

  return Log.error(_:)();
}

uint64_t sub_10018C508(uint64_t a1)
{

  return sub_100004E7C(a1, v1, v2);
}

uint64_t sub_10018C520(uint64_t a1)
{

  return static Date.now.getter();
}

uint64_t sub_10018C538()
{

  return Log.default(_:)();
}

uint64_t sub_10018C550(uint64_t a1)
{

  return sub_100004E7C(a1, v2, v1);
}

uint64_t sub_10018C568()
{

  return sub_10018AE78();
}

uint64_t sub_10018C580()
{

  return Log.default(_:)();
}

uint64_t sub_10018C598(uint64_t a1)
{

  return static Date.now.getter();
}

uint64_t sub_10018C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return swift_getErrorValue();
}

void sub_10018C5C8()
{
}

uint64_t sub_10018C5E0()
{

  return static LogInterpolation.sensitive(_:)();
}

uint64_t *sub_10018C5F8()
{
  *(v1 + 616) = v0;

  return sub_100007914((v1 + 592));
}

uint64_t sub_10018C610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002CC0();
  v10 = sub_100099DF4(v8, v9);
  sub_1000030B8(v10);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  sub_1000C68A8(a3, v27 - v12, &qword_1002DB950, &qword_100232E50);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_10000A218();
  v17 = sub_100004DFC(v15, v16, v14);

  if (v17 == 1)
  {
    sub_100004E24(v13, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000B7EC();
    (*(v18 + 8))(v13, v14);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;

      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v24 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      else
      {
        v24 = 0;
      }

      v27[1] = 7;
      v27[2] = v24;
      v27[3] = v23;
      v25 = sub_1000051F8();

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  return sub_1000051F8();
}

BOOL sub_10018C82C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a4)
  {
    return a8 & (a1 == a5);
  }

  if (a8)
  {
    return 0;
  }

  v11 = a1 == a5 && a2 == a6;
  return (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a3 == a7;
}

uint64_t sub_10018C8A4(uint64_t a1)
{
  v2 = sub_100197A34();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10018C8E0(uint64_t a1)
{
  v2 = sub_100197A34();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10018C938(uint64_t a1)
{
  v2 = sub_100197B38();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10018C974(uint64_t a1)
{
  v2 = sub_100197B38();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void sub_10018C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  v117 = v29;
  v118 = v28;
  v30 = v27;
  v121 = v31;
  v122 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v119 = a23;
  v120 = a24;
  v115 = v41;
  v116 = a22;
  v114 = a21;
  v104 = type metadata accessor for URL();
  sub_100003724();
  v103 = v42;
  __chkstk_darwin(v43);
  sub_1000030E4();
  sub_100008280(v44);
  v113 = type metadata accessor for FileStoreError();
  sub_100003724();
  v105 = v45;
  __chkstk_darwin(v46);
  sub_1000030E4();
  v112 = v47;
  sub_100013FAC();
  type metadata accessor for Log();
  sub_100003724();
  v110 = v49;
  v111 = v48;
  __chkstk_darwin(v48);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_10000D478();
  v52 = sub_100008280(v51);
  v53 = type metadata accessor for TSDataSyncDatasetGroupState(v52);
  sub_10000307C();
  __chkstk_darwin(v54);
  sub_1000037D4();
  v109 = v55;
  sub_100005238();
  __chkstk_darwin(v56);
  v58 = &v101 - v57;
  swift_defaultActor_initialize();
  sub_10000B0F8();
  v101 = v59;
  sub_100197820(v40, v30 + v59);
  v60 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store);
  *v60 = v38;
  v60[1] = v36;
  v108 = v60;
  v61 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester);
  v62 = v117;
  *v61 = v115;
  v61[1] = v62;
  v117 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag;
  *(v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag) = v34;
  v63 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_externalWriter);
  v64 = v122;
  *v63 = v121;
  v63[1] = v64;
  v65 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore);
  v66 = v116;
  *v65 = v114;
  v65[1] = v66;
  v67 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation);
  v68 = v120;
  *v67 = v119;
  v67[1] = v68;
  v116 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults;
  v121 = a25;
  sub_100007974(a25, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults);
  v115 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator;
  v120 = a26;
  sub_100007974(a26, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator);
  v114 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  sub_100007974(a27, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics);
  v69 = *(v36 + 8);
  v119 = v34;
  v122 = v40;
  v70 = v118;
  v69(v40, v38, v36);
  if (!v70)
  {
    sub_100197914(v58, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state);
    v82 = v107;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v83 = type metadata accessor for LogInterpolation();
    sub_100003B78(v83);
    sub_100005D98();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v124 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
    v123[0] = v30;

    v84 = AMSLogKey();
    if (v84)
    {
      v85 = v84;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v123);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    goto LABEL_12;
  }

  v123[0] = v70;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v72 = v112;
  v71 = v113;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    type metadata accessor for TSDataSyncDatasetState(0);
    sub_1000D6484();
    v86 = Dictionary.init(dictionaryLiteral:)();
    v87 = v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
    v88 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v89, v90, v91, v88);
    sub_100007B78();
    sub_100002728(v92, v93, v94, v88);
    sub_10000B0F8();
    sub_100197820(v122, v87);
    *(v87 + v53[5]) = v86;
    *(v87 + v53[8]) = _swiftEmptyArrayStorage;
    *(v87 + v53[9]) = _swiftEmptyArrayStorage;
    v95 = v87 + v53[10];
    *v95 = xmmword_100234820;
    *(v95 + 16) = 0;
    *(v95 + 24) = 0;
    sub_1000109B8();
    swift_beginAccess();
    sub_100006F90();
    sub_100197820(v87, v109);
    v96 = sub_100002CC0();
    v97(v96);
    sub_100004D28();
    sub_100197878();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v98 = type metadata accessor for LogInterpolation();
    sub_100003B78(v98);
    sub_100005D98();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v124 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
    v123[0] = v30;

    v99 = AMSLogKey();
    if (v99)
    {
      v100 = v99;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v123);
    LogInterpolation.init(stringLiteral:)();
    v82 = v106;
    Log.default(_:)();

LABEL_12:
    sub_100197CDC();
    sub_100008EE8();
    sub_100197878();
    (*(v110 + 8))(v82, v111);
    goto LABEL_13;
  }

  v73 = v105;
  v74 = (*(v105 + 88))(v72, v71);
  if (v74 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v73 + 8))(v72, v71);
    goto LABEL_8;
  }

  v75 = v74;

  (*(v73 + 96))(v72, v71);
  v76 = v103;
  v77 = v102;
  v78 = v104;
  (*(v103 + 32))(v102, v72, v104);
  sub_1001978CC(&qword_1002DB900, &type metadata accessor for FileStoreError, &protocol conformance descriptor for FileStoreError);
  sub_100004950();
  swift_allocError();
  v80 = v79;
  v81 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
  (*(v76 + 16))(v80, v77, v78);
  *(v80 + v81) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v73 + 104))(v80, v75, v113);
  swift_willThrow();
  (*(v76 + 8))(v77, v78);

  sub_100197878();

  sub_100004118((v30 + v116));
  sub_100004118((v30 + v115));
  sub_100004118((v30 + v114));
  type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
  swift_defaultActor_destroy();

  sub_100197CDC();
  sub_100197878();
  swift_deallocPartialClassInstance();
LABEL_13:
  sub_100005074();
}

void sub_10018D3CC()
{
  sub_100004868();
  v34 = v2;
  v30[1] = v3;
  v5 = v4;
  type metadata accessor for MetricsEvent();
  sub_100003724();
  v31 = v7;
  v32 = v6;
  __chkstk_darwin(v6);
  sub_1000030E4();
  v30[0] = v8;
  sub_100013FAC();
  v9 = type metadata accessor for Date();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D4();
  v33 = v13;
  sub_100005238();
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  v17 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v18 = sub_1000030B8(v17);
  __chkstk_darwin(v18);
  sub_10000308C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v23 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100006F90();
  sub_100197820(v0 + v23, v21);
  static Date.now.getter();
  sub_100106130();
  v24 = *(v11 + 8);
  v24(v16, v9);
  sub_100004D28();
  v25 = v34;
  sub_100197878();
  sub_100191A04();
  if (!v1)
  {
    v35 = v5;
    v26 = *(v25 + 184);
    v27 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
    static Date.now.getter();
    if (v26)
    {
      v28 = (v0 + v27);
      v29 = v30[0];
      sub_10011FE60();
      sub_10000C4FC(v28, v28[3]);
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v31 + 8))(v29, v32);
    }

    v24(v33, v9);
  }

  sub_100004D28();
  sub_100197878();
  sub_100005074();
}

void sub_10018D694()
{
  sub_100004868();
  v177 = v1;
  v2 = v0;
  v186 = v3;
  v159 = v4;
  v6 = v5;
  v166 = v7;
  v9 = v8;
  v11 = v10;
  v179 = v12;
  v162 = v13;
  v14 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  v15 = sub_1000030B8(v14);
  __chkstk_darwin(v15);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v17);
  sub_10000D478();
  sub_100008280(v18);
  v156 = type metadata accessor for Date();
  sub_100003724();
  v155 = v19;
  __chkstk_darwin(v20);
  sub_1000030E4();
  v22 = sub_100008280(v21);
  v167 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(v22);
  sub_10000307C();
  __chkstk_darwin(v23);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v24);
  sub_10000D478();
  v26 = sub_100008280(v25);
  v164 = type metadata accessor for TSDataSyncDatasetGroupSchedule(v26);
  sub_10000307C();
  __chkstk_darwin(v27);
  sub_1000030E4();
  sub_10000A1C0(v28);
  v29 = sub_100099DF4(&qword_1002DF9D0, &unk_10023F700);
  v30 = sub_1000030B8(v29);
  __chkstk_darwin(v30);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_10000D478();
  v181 = v33;
  sub_100013FAC();
  v34 = type metadata accessor for LogInterpolation.StringInterpolation();
  v35 = sub_1000030B8(v34);
  __chkstk_darwin(v35);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  v174 = v37;
  sub_100005238();
  __chkstk_darwin(v38);
  sub_10011852C();
  type metadata accessor for Log();
  sub_100003724();
  v182 = v39;
  v183 = v40;
  __chkstk_darwin(v39);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v42);
  sub_100002DD0();
  v173 = v43;
  sub_100005238();
  __chkstk_darwin(v44);
  v46 = &v148 - v45;
  v151 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10000307C();
  __chkstk_darwin(v47);
  sub_10000306C();
  v50 = v49 - v48;
  v178 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  sub_10000307C();
  __chkstk_darwin(v51);
  sub_10000306C();
  v54 = v53 - v52;
  v55 = v2 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100006F90();
  v150 = v55;
  sub_100197820(v55, v50);
  v180 = v54;
  v56 = v179;
  v157 = v11;
  v158 = v9;
  v179 = v6;
  sub_1000E8C5C(v56, v11, v9, v50, v6, v54);
  sub_100004D28();
  sub_100197878();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v57 = type metadata accessor for LogInterpolation();
  sub_100003B78(v57);
  v59 = *(v58 + 72);
  v61 = *(v60 + 80);
  v62 = (v61 + 32) & ~v61;
  v170 = v62 + 2 * v59;
  v171 = v61;
  v175 = v9;
  v63 = swift_allocObject();
  v169 = xmmword_1002329F0;
  *(v63 + 16) = xmmword_1002329F0;
  v172 = v62;
  v168 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
  *(&v185 + 1) = v168;
  *&v184 = v2;
  v176 = v2;

  v64 = AMSLogKey();
  if (v64)
  {
    v65 = v64;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v184);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v66._object = 0xEF207475706E6920;
  v66._countAndFlagsBits = 0x656C756465686353;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v66);
  *(&v185 + 1) = v178;
  v67 = sub_100007914(&v184);
  sub_100197820(v180, v67);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v68._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v69 = v59;
  v70 = v183 + 8;
  v71 = *(v183 + 8);
  v71(v46, v182);
  v72 = v177;
  sub_1000E5B8C();
  if (v72)
  {
    goto LABEL_4;
  }

  v177 = v69;
  v148 = 0;
  v183 = v70;
  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = v169;
  *(&v185 + 1) = v168;
  *&v184 = v176;

  v73 = AMSLogKey();
  v149 = v71;
  if (v73)
  {
    v74 = v73;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v75 = v177;
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v184);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v76._countAndFlagsBits = 0x656C756465686353;
  v76._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v76);
  v77 = v181;
  v78 = v163;
  sub_1000C68A8(v181, v163, &qword_1002DF9D0, &unk_10023F700);
  v79 = sub_10000A218();
  v80 = v164;
  if (sub_100004DFC(v79, v81, v164) == 1)
  {
    sub_100004E24(v78, &qword_1002DF9D0, &unk_10023F700);
    v184 = 0u;
    v185 = 0u;
  }

  else
  {
    *(&v185 + 1) = v80;
    sub_100007914(&v184);
    sub_100197C3C();
    sub_100197914(v78, v82);
  }

  v83 = v167;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v84._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v84);
  LogInterpolation.init(stringInterpolation:)();
  v85 = v173;
  Log.default(_:)();

  v149(v85, v182);
  sub_100108290();
  sub_1000C68A8(v86, v87, v88, v89);
  if (sub_100004DFC(v75, 1, v80) == 1)
  {
    sub_100013FF0();
    sub_100004E24(v90, v91, v92);
    sub_10000844C();
    sub_100197878();
    sub_100013FF0();
    sub_100004E24(v93, v94, v95);
    v96 = v166;
LABEL_23:
    sub_1000C68A8(v96, v162, &qword_1002DC208, &qword_100234830);
    goto LABEL_24;
  }

  sub_100197C3C();
  sub_10000288C();
  sub_100197914(v97, v98);
  v99 = v161;
  sub_1000E9504(v77, v179, v186, v161);
  static Log.tsDataSync.getter();
  v100 = swift_allocObject();
  sub_10000504C(v100);
  *&v184 = v176;

  v101 = AMSLogKey();
  if (v101)
  {
    v102 = v101;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v103 = v149;
  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v184);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v104._countAndFlagsBits = 0x206E6F69746341;
  v104._object = 0xE700000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v104);
  sub_100197E88();
  sub_1000077E8();
  sub_100197820(v99, v105);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v106._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
  LogInterpolation.init(stringInterpolation:)();
  v107 = v165;
  Log.default(_:)();

  v103(v107, v182);
  v108 = v176;
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
  {
    v109 = *v99;
    v110 = *(v180 + *(v178 + 20));
    v75 = *(v150 + *(v151 + 20));

    sub_100194398(v109, v110, v75);
  }

  v96 = v166;
  if (*(*v99 + 16))
  {
    type metadata accessor for TSDataSyncDatasetGroupConfig(0);
    v75 = v154;
    static Date.now.getter();
    sub_100197D20();
    v111 = v148;
    sub_10018E57C();
    if (v111)
    {
      v112 = sub_100010A08();
      v113(v112);
      sub_10000F154();
      sub_100197878();
      sub_100004E24(v181, &qword_1002DF9D0, &unk_10023F700);
      sub_10000D128();
LABEL_4:
      sub_10000844C();
      sub_100197878();
      goto LABEL_24;
    }

    v148 = 0;
    v114 = sub_100010A08();
    v115(v114);
  }

  sub_1000077E8();
  sub_100108290();
  sub_100197820(v116, v117);
  sub_10000B7B0();
  sub_100002728(v118, v119, v120, v83);
  v121 = v152;
  sub_1000E9FB4(v96, v75, v152);
  sub_100004E24(v75, &qword_1002DC208, &qword_100234830);
  v122 = sub_10000A218();
  if (sub_100004DFC(v122, v123, v83) == 1)
  {
    sub_10000F154();
    sub_100197878();
    sub_100004E24(v181, &qword_1002DF9D0, &unk_10023F700);
    sub_10000D128();
    sub_10000844C();
    sub_100197878();
    sub_100004E24(v121, &qword_1002DC208, &qword_100234830);
    goto LABEL_23;
  }

  sub_1000046B0();
  sub_100197914(v121, v160);
  static Log.tsDataSync.getter();
  v124 = swift_allocObject();
  sub_10000504C(v124);
  *&v184 = v108;

  v125 = AMSLogKey();
  if (v125)
  {
    v126 = v125;
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v127 = 0;
  }

  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v184);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v128._countAndFlagsBits = 0xA203A65736F6843;
  v128._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v128);
  sub_100197E88();
  sub_1000077E8();
  v129 = sub_100197DB0();
  sub_100197820(v129, v130);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v131._countAndFlagsBits = sub_100197D90();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v131);
  sub_10000288C();
  sub_1000C68A8(v132, v133, v134, v135);
  v136 = sub_100013DDC();
  if (sub_100004DFC(v136, v137, v83) == 1)
  {
    sub_100004E24(v127, &qword_1002DC208, &qword_100234830);
    v184 = 0u;
    v185 = 0u;
  }

  else
  {
    sub_100197E88();
    sub_1000046B0();
    sub_100197914(v127, v138);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v139._countAndFlagsBits = 0x69687420646E6120;
  v139._object = 0xEC0000000A203A73;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v139);
  sub_100197E88();
  sub_1000077E8();
  sub_100197820(v99, v140);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v184, &unk_1002DFC10, &qword_10022E6D0);
  v141._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v141);
  LogInterpolation.init(stringInterpolation:)();
  v142 = v153;
  Log.default(_:)();

  v103(v142, v182);
  sub_10000F154();
  sub_100004F70();
  sub_100197878();
  sub_100004E24(v181, &qword_1002DF9D0, &unk_10023F700);
  sub_10000D128();
  sub_10000844C();
  sub_100197878();
  sub_1000046B0();
  sub_100197DB0();
  sub_10000288C();
  sub_100197914(v143, v144);
  sub_10000B7B0();
  sub_100002728(v145, v146, v147, v83);
LABEL_24:
  sub_100005074();
}

void sub_10018E57C()
{
  sub_100004868();
  v1 = v0;
  v26 = v2;
  type metadata accessor for Log();
  sub_100003724();
  v24 = v4;
  v25 = v3;
  __chkstk_darwin(v3);
  sub_1000030E4();
  v27 = v5;
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()() & 1) != 0 && (sub_10000C4FC((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults), *(v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults + 24)), sub_10000878C(), v6 = dispatch thunk of TSDataSyncDefaults.autoSyncDisabledForTSDataSync.getter(), (v6) && (v26 & 1) == 0)
  {
    v7 = v6;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v8 = type metadata accessor for LogInterpolation();
    sub_100003B78(v8);
    sub_10000A1F0();
    sub_1000C71C8();
    *(swift_allocObject() + 16) = xmmword_100232A00;
    v29 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
    v28[0] = v1;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v28);
    LogInterpolation.init(stringLiteral:)();
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    v29 = type metadata accessor for AccountIdentity();
    sub_100007914(v28);
    sub_10000B7EC();
    (*(v11 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100010EE0();
    sub_100004E24(v12, v13, v14);
    LogInterpolation.init(stringLiteral:)();
    v29 = &type metadata for Bool;
    LOBYTE(v28[0]) = 1;
    static LogInterpolation.safe(_:)();
    sub_100010EE0();
    sub_100004E24(v15, v16, v17);
    LogInterpolation.init(stringLiteral:)();
    v29 = &type metadata for Bool;
    LOBYTE(v28[0]) = v7 & 1;
    static LogInterpolation.safe(_:)();
    sub_100010EE0();
    sub_100004E24(v18, v19, v20);
    LogInterpolation.init(stringLiteral:)();
    v29 = &type metadata for Bool;
    LOBYTE(v28[0]) = 0;
    static LogInterpolation.safe(_:)();
    sub_100010EE0();
    sub_100004E24(v21, v22, v23);
    Log.default(_:)();

    (*(v24 + 8))(v27, v25);
  }

  else
  {
    sub_10018E9AC();
  }

  sub_100005074();
}

void sub_10018E9AC()
{
  sub_100004868();
  v97 = v1;
  v2 = v0;
  v96 = v3;
  v95 = v4;
  v100 = v5;
  v98 = v6;
  v8 = v7;
  v94 = v9;
  v93 = v10;
  v92 = type metadata accessor for Date();
  sub_100003724();
  v88 = v11;
  __chkstk_darwin(v12);
  v87 = v13;
  sub_100003F24();
  v15 = sub_100008280(v14);
  v16 = type metadata accessor for TSDataSyncDeviceState(v15);
  v17 = sub_100003B78(v16);
  v85 = v18;
  __chkstk_darwin(v17);
  v86 = v19;
  sub_100003F24();
  sub_10000A1C0(v20);
  v21 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v21);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_100003018();
  v24 = sub_100008280(v23);
  v25 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v24);
  v26 = sub_1000030B8(v25);
  __chkstk_darwin(v26);
  sub_10000306C();
  v29 = v28 - v27;
  v30 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v31 = sub_1000030B8(v30);
  __chkstk_darwin(v31);
  sub_10000308C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v81 - v36;
  v38 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v39 = sub_100003B78(v38);
  v83 = v40;
  __chkstk_darwin(v39);
  v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v41;
  __chkstk_darwin(v43);
  v45 = &v81 - v44;
  v46 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100197820(v2 + v46, v37);
  v47 = v95;
  v95 = v8;
  sub_1000D36D8(v93, v37, v94, v47, v8, v45);
  sub_100197878();
  v48 = v2 + v46;
  v49 = v45;
  v50 = v96;
  sub_100197820(v48, v37);
  sub_1000067FC();
  sub_100197820(v49, v42);
  sub_100006BA0();
  v51 = sub_1000050CC();
  sub_100197914(v51, v52);
  sub_1000F88E4(v29, v37, v50, v53, v54, v55, v56, v57, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  sub_100003A3C();
  sub_100197878();
  sub_100197878();
  v58 = v97;
  sub_100191A04();
  if (!v58)
  {
    v82 = v2;
    v59 = *(*(v2 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore + 8) + 8);
    v97 = 0;
    v59(12);
    type metadata accessor for TaskPriority();
    sub_100007B78();
    sub_100002728(v60, v61, v62, v63);
    sub_1000067FC();
    v64 = v42;
    sub_100197820(v49, v42);
    sub_100197820(v95, v89);
    v95 = v34;
    v65 = v88;
    (*(v88 + 16))(v91, v50, v92);
    v66 = sub_1001978CC(&qword_1002DF9C8, type metadata accessor for TSDataSyncDatasetGroupAccessActor, byte_10023F628);
    v67 = *(v83 + 80);
    v96 = v49;
    v68 = (v67 + 40) & ~v67;
    v69 = (v84 + *(v85 + 80) + v68) & ~*(v85 + 80);
    v70 = (((v86 + v69 + 7) & 0xFFFFFFFFFFFFFFF8) + 199) & 0xFFFFFFFFFFFFFFF8;
    v94 = (*(v65 + 80) + v70 + 64) & ~*(v65 + 80);
    v71 = swift_allocObject();
    v72 = v82;
    v71[2] = v82;
    v71[3] = v66;
    v71[4] = v72;
    sub_100197914(v64, v71 + v68);
    sub_100197914(v89, v71 + v69);
    sub_100108290();
    memcpy(v73, v74, 0xC0uLL);
    v75 = (v71 + v70);
    v76 = v100[1];
    *v75 = *v100;
    v75[1] = v76;
    v77 = v100[3];
    v75[2] = v100[2];
    v75[3] = v77;
    (*(v65 + 32))(v71 + v94, v91, v92);
    swift_retain_n();
    sub_10009FF70(v66, v99);
    sub_1000C68A8(v100, v99, &qword_1002DF3B8, &qword_10023F050);
    v78 = sub_100197C54();
    sub_10013ABD4(v78, v79, v90, v80, v71);
  }

  sub_100004D28();
  sub_100197878();
  sub_100013E94();
  sub_100197878();
  sub_100005074();
}

uint64_t sub_10018F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[14] = a4;
  v9 = type metadata accessor for MetricsEvent();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for FlagKeys();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v12 = type metadata accessor for Log();
  v8[27] = v12;
  v8[28] = *(v12 - 8);
  v8[29] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[30] = v13;
  *v13 = v8;
  v13[1] = sub_10018F2DC;

  return sub_10018F8A4();
}

uint64_t sub_10018F2DC()
{
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10018F43C);
  }

  else
  {

    sub_100002E08();

    return v7();
  }
}

uint64_t sub_10018F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = v3;
  v4 = v3[14];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  sub_100005D98();
  sub_1000C71D4();
  v6 = swift_allocObject();
  v7 = sub_100008CD8(v6, xmmword_1002329D0);
  v3[2] = v4;
  v3[5] = v7;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = v3[28];
  v32 = v3[27];
  v11 = v3[21];
  v33 = v3[20];
  v35 = v3[22];
  v30 = v3[29];
  v31 = v3[15];
  v29 = v3[14];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v3 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v3[9] = v3[11];
  sub_100007914(v3 + 6);
  sub_10000B7EC();
  (*(v12 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v3 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v10 + 8))(v30, v32);
  v13 = *(v31 + 184);
  v14 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  static Date.now.getter();
  (*(v11 + 104))(v35, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v33);
  v15 = FlagKeys.isEnabled.getter();
  (*(v11 + 8))(v35, v33);
  if (v15)
  {
    static Date.now.getter();
    if (v13)
    {
      v16 = (v29 + v14);
      v18 = v3[24];
      v17 = v3[25];
      v20 = v3[18];
      v19 = v3[19];
      v34 = v3[17];
      v36 = v3[23];
      sub_10011DE50();
      v37[3] = &type metadata for String;
      v37[0] = 0xD000000000000012;
      v37[1] = 0x8000000100275910;
      sub_100006F54();
      sub_1001A8ED8(v37, v21, v22);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10000C4FC(v16, v16[3]);
      sub_10000878C();
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v20 + 8))(v19, v34);
      v23 = *(v18 + 8);
      v23(v17, v36);
      v23(v3[26], v3[23]);
    }

    else
    {
      v24 = *(v3[24] + 8);
      v24(v3[25], v3[23]);
      v24(v3[26], v3[23]);
    }
  }

  else
  {
    (*(v3[24] + 8))(v3[26], v3[23]);
  }

  v25 = sub_10000ADD0();
  v26(v25);

  sub_100002E08();

  return v27();
}

uint64_t sub_10018F8A4()
{
  sub_10000DB4C();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for Date();
  v1[7] = v6;
  sub_100003B78(v6);
  v1[8] = v7;
  v1[9] = sub_100003FA8();
  v8 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  sub_1000030B8(v8);
  v1[10] = sub_100003FA8();
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_10018F9EC;

  return sub_10018FE08();
}

uint64_t sub_10018F9EC()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_10018FAE4()
{
  sub_100004194();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10018FB88;

  return sub_100190990();
}

uint64_t sub_10018FB88()
{
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  *v4 = *v1;
  *(v3 + 104) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = sub_10018FD88;
  }

  else
  {
    v8 = sub_10018FD08;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_10018FD08()
{
  sub_100004194();
  sub_100004E24(*(v0 + 80), &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v1();
}

uint64_t sub_10018FD88()
{
  sub_100004194();
  sub_100004E24(*(v0 + 80), &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v1();
}

uint64_t sub_10018FE08()
{
  sub_100004194();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[22] = v5;
  v1[23] = v6;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v1[28] = v7;
  sub_1000030B8(v7);
  v1[29] = sub_1000C70D8();
  v1[30] = swift_task_alloc();
  v8 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v1[31] = v8;
  sub_1000030B8(v8);
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v9 = type metadata accessor for MetricsEvent();
  v1[34] = v9;
  sub_100003B78(v9);
  v1[35] = v10;
  v1[36] = sub_100003FA8();
  v11 = type metadata accessor for Date();
  v1[37] = v11;
  sub_100003B78(v11);
  v1[38] = v12;
  v1[39] = sub_100003FA8();
  v13 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_1000030B8(v13);
  v1[40] = sub_100003FA8();
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v14);
  v1[41] = sub_100003FA8();
  v15 = type metadata accessor for Log();
  v1[42] = v15;
  sub_100003B78(v15);
  v1[43] = v16;
  v1[44] = sub_1000C70D8();
  v1[45] = swift_task_alloc();
  v17 = sub_10000AA8C();

  return _swift_task_switch(v17);
}

uint64_t sub_10018FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = v3;
  v4 = *(v3 + 216);
  static Log.tsDataSync.getter();
  *(v3 + 368) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v3 + 376) = *(v6 + 72);
  *(v3 + 416) = *(v7 + 80);
  sub_1000C71C8();
  v8 = swift_allocObject();
  v9 = sub_100008CD8(v8, xmmword_1002329F0);
  *(v3 + 16) = v4;
  *(v3 + 384) = v9;
  *(v3 + 40) = v9;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v3 + 344);
  v52 = *(v3 + 336);
  v54 = *(v3 + 320);
  v13 = *(v3 + 224);
  v51 = *(v3 + 216);
  v47 = *(v3 + 360);
  v49 = *(v3 + 200);
  v14 = *(v3 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v3 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = sub_100197D90();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 72) = v13;
  sub_100007914((v3 + 48));
  sub_1000067FC();
  sub_100197820(v14, v16);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v3 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v17._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v18 = *(v12 + 8);
  *(v3 + 392) = v18;
  *(v3 + 400) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v47, v52);
  v19 = *(v49 + 184);
  v20 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100006F90();
  sub_100197820(v51 + v20, v54);
  v21 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  static Date.now.getter();
  if (v19)
  {
    v22 = *(v3 + 264);
    v23 = *(v3 + 240);
    *(v3 + 168) = _swiftEmptyArrayStorage;
    sub_1000067FC();
    sub_100197820(v24, v23);
    sub_100006BA0();
    sub_100197914(v23, v22);

    sub_100120DDC();
    v59[0] = v25;
    sub_1001072CC(v59);
    v55 = (v51 + v21);
    v26 = *(v3 + 320);
    v53 = *(v3 + 288);
    v27 = *(v3 + 264);
    v56 = *(v3 + 280);
    v57 = *(v3 + 272);
    v48 = *(v3 + 256);
    v50 = *(v3 + 248);
    v46 = *(v3 + 232);
    v28 = *(v3 + 200);
    v45 = *(v3 + 184);

    v29 = v59[0];
    v30 = swift_task_alloc();
    v30[2] = v27;
    v30[3] = v26;
    v30[4] = v28;
    v30[5] = v3 + 168;
    sub_10011DDBC(sub_100197638, v30, v29);

    sub_100197878();
    sub_10011DE50();
    v31 = *(v3 + 168);
    v60 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
    v59[0] = v31;

    sub_1001A8ED8(v59, 0x7374657361746164, 0xE800000000000000);
    sub_1000067FC();
    sub_100197820(v45, v46);
    sub_100006BA0();
    sub_100197914(v46, v48);
    v32 = (v48 + *(v50 + 24));
    v34 = *v32;
    v33 = v32[1];
    v60 = &type metadata for String;
    v59[0] = v34;
    v59[1] = v33;

    sub_1001A8ED8(v59, 0x65566769666E6F63, 0xED00006E6F697372);
    sub_100197878();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    sub_10000C4FC(v55, v55[3]);
    sub_10000878C();
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v56 + 8))(v53, v57);
  }

  v35 = *(v3 + 216);
  (*(*(v3 + 304) + 8))(*(v3 + 312), *(v3 + 296));
  sub_100004D28();
  sub_100197878();
  v37 = *(v35 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester);
  v36 = *(v35 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester + 8);
  v38 = *(v35 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag);
  v58 = (*(v36 + 8) + **(v36 + 8));
  v39 = swift_task_alloc();
  *(v3 + 408) = v39;
  *v39 = v3;
  v39[1] = sub_100190648;
  v40 = *(v3 + 200);
  v41 = *(v3 + 208);
  v42 = *(v3 + 176);
  v43 = *(v3 + 184);

  return v58(v42, v43, v40, v38, v41, v37, v36);
}

uint64_t sub_100190648()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_100190740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100197DBC();
  v23 = v22[48];
  v24 = v22[27];
  static Log.tsDataSync.getter();
  v25 = swift_allocObject();
  v22[10] = v24;
  *(v25 + 16) = xmmword_1002329D0;
  v22[13] = v23;

  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v42 = v22[49];
  v43 = v22[50];
  v28 = v22[44];
  v41 = v22[45];
  v29 = v22[42];
  v44 = v22[41];
  v45 = v22[40];
  v46 = v22[39];
  v47 = v22[36];
  v48 = v22[33];
  v49 = v22[32];
  v50 = v22[30];
  v51 = v22[29];
  v30 = v22[22];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v22 + 10);
  LogInterpolation.init(stringLiteral:)();
  v22[17] = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v31 = sub_100007914(v22 + 14);
  sub_1000C68A8(v30, v31, &qword_1002DBC10, &unk_10023F6E0);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v22 + 14), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v42(v28, v29);

  sub_100002E08();
  sub_1000D3574();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a20, a21, a22);
}

uint64_t sub_100190990()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v8);
  v1[12] = sub_100003FA8();
  v9 = type metadata accessor for MetricsEvent();
  v1[13] = v9;
  sub_100003B78(v9);
  v1[14] = v10;
  v1[15] = sub_100003FA8();
  v11 = type metadata accessor for Date();
  v1[16] = v11;
  sub_100003B78(v11);
  v1[17] = v12;
  v1[18] = sub_1000C70D8();
  v1[19] = swift_task_alloc();
  v13 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_1000030B8(v13);
  v1[20] = sub_1000C70D8();
  v1[21] = swift_task_alloc();
  v14 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v14);
  v1[22] = sub_1000C70D8();
  v1[23] = swift_task_alloc();
  v15 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  sub_1000030B8(v15);
  v1[24] = sub_100003FA8();
  v16 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v1[25] = v16;
  sub_1000030B8(v16);
  v1[26] = sub_100003FA8();
  v17 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v1[27] = v17;
  sub_1000030B8(v17);
  v1[28] = sub_1000C70D8();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v18 = sub_10000AA8C();

  return _swift_task_switch(v18);
}

uint64_t sub_100190FF4()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  v3 = *v0;
  sub_100004504();
  *v4 = v3;
  *(v6 + 320) = v5;

  v7 = sub_10000AA8C();

  return _swift_task_switch(v7);
}

uint64_t sub_1001910F0()
{
  sub_100197DBC();
  v2 = *(v1 + 296);
  v45 = *(v1 + 320);
  v46 = *(v1 + 304);
  v4 = *(v1 + 240);
  v3 = *(v1 + 248);
  v5 = *(v1 + 176);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  sub_100006F90();
  sub_100197820(v11 + v10, v4);
  sub_100106D98(v2);
  v12 = sub_100002834();
  v13 = *(v8 + *(type metadata accessor for TSDataSyncDeviceState(v12) + 56));
  static Date.now.getter();
  sub_1000067FC();
  sub_100197820(v9, v5);
  sub_100006BA0();
  v14 = sub_100002CC0();
  sub_100197914(v14, v15);
  sub_100101D50(v45, v4, v0, v6, v7, v3, v13);
  if (v46)
  {
    v16 = *(v1 + 152);
    v17 = *(v1 + 128);
    v18 = *(v1 + 136);

    sub_100003A3C();
    sub_100197878();
    (*(v18 + 8))(v16, v17);
    sub_100197C24();
    sub_100197878();
    sub_100197878();
    sub_1000050CC();
    sub_100197878();
    sub_100197C64();

    sub_100002E08();

    return v22();
  }

  else
  {
    v19 = *(v1 + 136);

    sub_100003A3C();
    sub_100197878();
    v20 = *(v19 + 8);
    v21 = sub_100002CC0();
    v20(v21);
    sub_100004D28();
    sub_100197878();
    sub_100191A04();
    sub_100106C4C();
    *(v1 + 328) = v24;
    if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
    {
      sub_100195174(*(v1 + 280), *(v1 + 248), *(v1 + 320), *(v1 + 296));
    }

    v25 = *(v1 + 288);
    v26 = *(v1 + 232);
    v27 = *(v1 + 88);
    v28 = *(v1 + 72);

    v29 = *(v28 + 184);
    sub_100006F90();
    sub_100197820(v27 + v25, v26);
    v30 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
    static Date.now.getter();
    if (v29)
    {
      v32 = *(v1 + 112);
      v31 = *(v1 + 120);
      v33 = *(v1 + 104);
      v34 = (*(v1 + 88) + v30);
      sub_100197DFC();
      sub_10011EBD8();
      sub_10000C4FC(v34, v34[3]);
      sub_10000878C();
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v32 + 8))(v31, v33);
    }

    v35 = *(v1 + 288);
    v36 = *(v1 + 224);
    v38 = *(v1 + 88);
    v37 = *(v1 + 96);
    v39 = *(v1 + 40);
    (v20)(*(v1 + 144), *(v1 + 128));
    sub_100004D28();
    sub_100197878();
    v40 = sub_10000ADD0();
    v41(v40);
    sub_10000C4FC((v38 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator), *(v38 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator + 24));
    sub_100006F90();
    sub_100197820(v38 + v35, v36);
    sub_1000D631C(v39, v37);
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    v42 = swift_task_alloc();
    v43 = sub_100197DA4(v42);
    *v43 = v44;
    v43[1] = sub_1001915E0;

    return sub_100189580();
  }
}

uint64_t sub_1001915E0()
{
  sub_1000D354C();
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 344) = v0;

  v5 = *(v2 + 96);

  sub_100004E24(v5, &qword_1002DA970, &qword_1002318B0);
  sub_100004D28();
  sub_100197878();
  sub_10000AD14();

  return _swift_task_switch(v6);
}

uint64_t sub_10019176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100197DBC();
  v32 = v22[26];
  v33 = v22[24];
  v34 = v22[23];
  v35 = v22[22];
  v36 = v22[21];
  v37 = v22[20];
  v38 = v22[19];
  v39 = v22[18];
  v40 = v22[15];
  v41 = v22[12];
  sub_100197C24();
  sub_100197878();
  sub_1000050CC();
  sub_100197878();
  sub_100197878();

  sub_100002E08();
  sub_1000D3574();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, a20, a21, a22);
}

uint64_t sub_1001918BC()
{
  sub_10000DFA4();
  sub_100197878();
  sub_100197878();
  sub_100197878();
  sub_100197C64();

  sub_100002E08();

  return v0();
}

void sub_100191A04()
{
  sub_100004868();
  v113 = v2;
  v3 = v0;
  v97 = v4;
  v102 = v5;
  v107 = v6;
  v108 = v7;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_1000030E4();
  v109 = v10;
  sub_100013FAC();
  v106 = type metadata accessor for Log();
  sub_100003724();
  v110 = v11;
  __chkstk_darwin(v12);
  sub_1000037D4();
  v111 = v13;
  sub_100005238();
  __chkstk_darwin(v14);
  sub_10000D478();
  v105 = v15;
  sub_100013FAC();
  v98 = type metadata accessor for MetricsEvent();
  sub_100003724();
  v96 = v16;
  __chkstk_darwin(v17);
  sub_1000030E4();
  sub_100008280(v18);
  type metadata accessor for FlagKeys();
  sub_100003724();
  v100 = v20;
  v101 = v19;
  __chkstk_darwin(v19);
  sub_1000030E4();
  v99 = v21;
  sub_100013FAC();
  type metadata accessor for Date();
  sub_100003724();
  v103 = v23;
  v104 = v22;
  __chkstk_darwin(v22);
  sub_10000308C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = v90 - v28;
  v30 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_10000306C();
  v34 = v33 - v32;
  v35 = v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store;
  v36 = *(v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store);
  v38 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_groupIdentifier;
  v37 = *(v35 + 8);
  (*(v37 + 16))(v113, v3 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_groupIdentifier, v36, v37);
  if (!v1)
  {
    v93 = v26;
    v94 = v29;
    v112 = v30;
    (*(v37 + 8))(v3 + v38, v36, v37);
    v39 = v3;
    v92 = 0;
    sub_100109E08();
    v40 = &unk_100232000;
    if ((v41 & 1) == 0)
    {
      v91 = v38;
      v42 = *(v102 + 184);
      v90[1] = *(v102 + 176);
      sub_100197580();
      sub_100004950();
      v102 = swift_allocError();
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *v43 = 2;
      *(v43 + 24) = 1;
      v44 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
      v45 = v94;
      static Date.now.getter();
      v46 = v99;
      v47 = v100;
      v48 = v101;
      (*(v100 + 104))(v99, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v101);
      v49 = FlagKeys.isEnabled.getter();
      (*(v47 + 8))(v46, v48);
      if (v49)
      {
        v50 = v93;
        static Date.now.getter();
        if (v42)
        {
          sub_10011DE50();
          v116 = &type metadata for String;
          v114 = 0xD000000000000015;
          v115 = 0x8000000100275890;
          sub_100006F54();
          sub_1001A8ED8(&v114, v51, v52);
          v53 = v95;
          static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

          sub_10000C4FC((v39 + v44), *(v39 + v44 + 24));
          dispatch thunk of MetricsQueue.enqueue(event:)();
          (*(v96 + 8))(v53, v98);
          v54 = v104;
          v55 = *(v103 + 8);
          v56 = sub_100004F70();
          v55(v56, v54);
          v57 = v94;
        }

        else
        {
          v54 = v104;
          v55 = *(v103 + 8);
          v55(v50, v104);
          v57 = v45;
        }

        v55(v57, v54);
        v58 = v106;
      }

      else
      {
        (*(v103 + 8))(v45, v104);
        v58 = v106;
      }

      v59 = v110;
      v104 = v34;

      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100002834();
      v60 = type metadata accessor for LogInterpolation();
      sub_100003B78(v60);
      sub_10000A1F0();
      sub_1000C71C8();
      *(swift_allocObject() + 16) = xmmword_1002329D0;
      v116 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
      v114 = v39;
      v61 = v39;

      v62 = AMSLogKey();
      if (v62)
      {
        v63 = v62;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100197E08();

      sub_100004118(&v114);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._countAndFlagsBits = 0xD00000000000001DLL;
      v64._object = 0x8000000100274D50;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v64);
      v116 = &type metadata for String;
      v114 = v107;
      v115 = v108;

      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_1000028B0();
      sub_100004E24(v65, v66, v67);
      v68._countAndFlagsBits = 58;
      v68._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
      LogInterpolation.init(stringInterpolation:)();
      sub_100197E68();
      sub_100006F90();
      sub_100197820(v113, v69);
      static LogInterpolation.sensitive(_:)();
      sub_1000028B0();
      sub_100004E24(v70, v71, v72);
      v73 = v105;
      Log.fault(_:)();

      (*(v59 + 8))(v73, v58);
      v39 = v61;
      sub_1001967B4(v61 + v91);
      v34 = v104;
      v40 = &unk_100232000;
    }

    v74 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
    swift_beginAccess();
    sub_1001975D4(v34, v39 + v74);
    swift_endAccess();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v75 = type metadata accessor for LogInterpolation();
    sub_100003B78(v75);
    sub_10000A1F0();
    sub_1000C71C8();
    *(swift_allocObject() + 16) = v40[157];
    v116 = type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
    v114 = v39;

    v76 = AMSLogKey();
    if (v76)
    {
      v77 = v76;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v78 = v106;
    v79 = v110;
    sub_100197E08();

    sub_100004118(&v114);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80._countAndFlagsBits = 0x61206465726F7453;
    v80._object = 0xED00002072657466;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
    v116 = &type metadata for String;
    v114 = v107;
    v115 = v108;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000028B0();
    sub_100004E24(v81, v82, v83);
    v84._countAndFlagsBits = 58;
    v84._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v84);
    LogInterpolation.init(stringInterpolation:)();
    sub_100197E68();
    sub_100006F90();
    sub_100197820(v34, v85);
    static LogInterpolation.sensitive(_:)();
    sub_1000028B0();
    sub_100004E24(v86, v87, v88);
    v89 = v111;
    Log.default(_:)();

    (*(v79 + 8))(v89, v78);
    sub_100004D28();
    sub_100197878();
  }

  sub_100005074();
}

uint64_t sub_10019234C()
{
  sub_100004194();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[25] = v5;
  v6 = type metadata accessor for Log();
  v1[30] = v6;
  sub_100003B78(v6);
  v1[31] = v7;
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v8 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v8);
  v1[34] = sub_100003FA8();
  v9 = sub_10000AA8C();

  return _swift_task_switch(v9);
}

void sub_100192430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10018BA04();
  v26 = *(v25 + 208);
  if (v26)
  {
    a10 = v25 + 168;

    sub_100099DF4(&qword_1002DF9C0, &unk_10023F6D0);
    sub_1000D6484();
    v27 = Dictionary.init(dictionaryLiteral:)();
    v28 = 0;
    v29 = *(v26 + 32);
    *(v25 + 360) = v29;
    v30 = 1 << v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v26 + 64);
    a13 = " external database:";
    a14 = 0;
    a11 = xmmword_1002329D0;
    while (1)
    {
      *(v25 + 280) = v27;
      if (!v32)
      {
        while (!__OFADD__(v28, 1))
        {
          v33 = sub_100197D10();
          if (v35 == v36)
          {

            goto LABEL_28;
          }

          v32 = *(v33 + 8 * v34 + 64);
          ++v28;
          if (v32)
          {
            v28 = v34;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v33 = *(v25 + 208);
LABEL_13:
      *(v25 + 288) = v32;
      *(v25 + 296) = v28;
      v37 = __clz(__rbit64(v32)) | (v28 << 6);
      v38 = (*(v33 + 48) + 16 * v37);
      v39 = *v38;
      *(v25 + 304) = *v38;
      v40 = v38[1];
      *(v25 + 312) = v40;
      sub_100197BF4(v33, v37);
      v42 = *(v41 + 16);
      a18 = *(v41 + 8);
      *(v25 + 328) = v42;
      a21 = v40;
      a19 = v26;
      a20 = v39;
      if (*(v26 + 16))
      {
        type metadata accessor for TSDataSyncDatasetGroupState(0);
        *(v25 + 168) = v39;
        *(v25 + 176) = v40;
        *(swift_task_alloc() + 16) = a10;

        sub_10000C760();
        v43 = sub_10015D6FC();

        if (v43)
        {
          sub_1001ABF58(v39, v40, *(v25 + 216), *(v25 + 272));
          v73 = swift_task_alloc();
          v74 = sub_100197DA4(v73);
          *v74 = v75;
          sub_1000053F8(v74);
          sub_10000F438();

          sub_100193758();
          return;
        }
      }

      else
      {
      }

      a16 = v42;
      a17 = v27;
      v44 = *(v25 + 232);
      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v45 = type metadata accessor for LogInterpolation();
      sub_100003B78(v45);
      sub_10000A1F0();
      v46 = swift_allocObject();
      *(v25 + 40) = sub_100008CD8(v46, xmmword_1002329D0);
      *(v25 + 16) = v44;

      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v49 = *(v25 + 264);
      v50 = *(v25 + 248);
      a15 = *(v25 + 240);
      static LogInterpolation.prefix(_:_:)();

      sub_100004118((v25 + 16));
      sub_10000426C();
      *(v25 + 48) = a19;
      *(v25 + 56) = a18;
      *(v25 + 64) = v42;
      *(v25 + 72) = &type metadata for TSDataSyncDatasetRecord;
      static LogInterpolation.sensitive(_:)();
      sub_100004E24(v25 + 48, &unk_1002DFC10, &qword_10022E6D0);
      Log.default(_:)();

      (*(v50 + 8))(v49, a15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 184) = a17;
      sub_10014EB30(a20, v40);
      sub_10000B818();
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_38;
      }

      v57 = v52;
      v58 = v53;
      sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
      v26 = v25 + 184;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
      {
        v26 = *(v25 + 184);
        v59 = sub_10014EB30(a20, a21);
        if ((v58 & 1) != (v60 & 1))
        {
          sub_10000F438();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v57 = v59;
      }

      v27 = *(v25 + 184);
      if (v58)
      {
        sub_100197CA0(v27[7] + 16 * v57);
      }

      else
      {
        sub_1000035B8(&v27[v57 >> 6]);
        v61 = (v27[6] + 16 * v57);
        *v61 = a20;
        v61[1] = a21;
        v62 = v27[7] + 16 * v57;
        *v62 = 0;
        *(v62 + 8) = 0;
        v63 = v27[2];
        v36 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v36)
        {
          goto LABEL_39;
        }

        v27[2] = v64;
      }

      v32 &= v32 - 1;
    }
  }

LABEL_28:

  sub_1000D3518();
  sub_10000F438();

  v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100192984(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_100004504();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 344) = v1;

  v7 = *(v4 + 272);
  if (v1)
  {
    sub_100004E24(v7, &qword_1002DBC28, &qword_100232F70);

    v8 = sub_100193054;
  }

  else
  {
    *(v5 + 352) = a1;
    sub_100004E24(v7, &qword_1002DBC28, &qword_100232F70);

    v8 = sub_100192B48;
  }

  return _swift_task_switch(v8);
}

void sub_100192B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  v77 = v26 + 21;
  v27 = v26[35];
  swift_isUniquelyReferenced_nonNull_native();
  v79 = v27;
  sub_100150450();

  v28 = v26[37];
  v29 = v27;
  v30 = (v26[36] - 1) & v26[36];
  v78 = v26[43];
  while (1)
  {
    v26[35] = v29;
    if (!v30)
    {
      break;
    }

LABEL_8:
    v26[36] = v30;
    v26[37] = v28;
    sub_100197DE8();
    v36 = *v35;
    v26[38] = *v35;
    v37 = v35[1];
    v26[39] = v37;
    sub_100197BF4(v38, v39);
    v41 = *(v40 + 16);
    a18 = *(v40 + 8);
    a19 = 1;
    v26[41] = v41;
    a20 = v36;
    a21 = v37;
    if (MEMORY[0x11])
    {
      type metadata accessor for TSDataSyncDatasetGroupState(0);
      v26[21] = v36;
      v26[22] = v37;
      *(swift_task_alloc() + 16) = v77;

      sub_10000C760();
      v42 = sub_10015D6FC();

      if (v42)
      {
        sub_1001ABF58(v36, v37, v26[27], v26[34]);
        v72 = swift_task_alloc();
        v73 = sub_100197DA4(v72);
        *v73 = v74;
        sub_1000053F8(v73);
        sub_10000F438();

        sub_100193758();
        return;
      }
    }

    else
    {
    }

    a16 = v41;
    a17 = v29;
    v43 = v26[29];
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v44 = type metadata accessor for LogInterpolation();
    sub_100003B78(v44);
    sub_10000A1F0();
    v45 = swift_allocObject();
    v26[5] = sub_100008CD8(v45, xmmword_1002329D0);
    v26[2] = v43;

    v46 = AMSLogKey();
    if (v46)
    {
      v47 = v46;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v48 = v26[33];
    v49 = v26[31];
    a15 = v26[30];
    sub_100010EE0();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v26 + 2);
    sub_10000426C();
    v26[6] = 1;
    v26[7] = a18;
    v26[8] = v41;
    v26[9] = &type metadata for TSDataSyncDatasetRecord;
    static LogInterpolation.sensitive(_:)();
    sub_100004E24((v26 + 6), &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v49 + 8))(v48, a15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[23] = a17;
    sub_10014EB30(v36, a21);
    sub_10000B818();
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v56 = v51;
    v57 = v52;
    sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55))
    {
      v58 = sub_10014EB30(a20, a21);
      if ((v57 & 1) != (v59 & 1))
      {
        sub_10000F438();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v56 = v58;
    }

    v29 = v26[23];
    if (v57)
    {
      sub_100197CA0(v29[7] + 16 * v56);
    }

    else
    {
      sub_1000035B8(&v29[v56 >> 6]);
      v60 = (v29[6] + 16 * v56);
      *v60 = a20;
      v60[1] = a21;
      v61 = v29[7] + 16 * v56;
      *v61 = 0;
      *(v61 + 8) = 0;
      v62 = v29[2];
      v34 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v34)
      {
        goto LABEL_34;
      }

      v29[2] = v63;
    }

    v30 &= v30 - 1;
  }

  while (1)
  {
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    v31 = sub_100197D10();
    if (v33 == v34)
    {
      break;
    }

    v30 = *(v31 + 8 * v32 + 64);
    ++v28;
    if (v30)
    {
      v28 = v32;
      goto LABEL_8;
    }
  }

  sub_1000D3518();
  sub_10000F438();

  v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, v77, 3, 6, " external database:", v78, a15, a16, a17, a18, a19, a20, a21, v79, a23, a24, a25, a26);
}

void sub_100193054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v88 = v26;
  v27 = v26[29];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v28 = type metadata accessor for LogInterpolation();
  sub_100003B78(v28);
  v29 = swift_allocObject();
  v30 = sub_100008CD8(v29, xmmword_1002329D0);
  v26[10] = v27;
  v78 = v30;
  v26[13] = v30;

  v31 = AMSLogKey();
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v84 = v26[35];
  v34 = v26[31];
  v33 = v26[32];
  v82 = v26[30];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v26 + 10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v26[17] = v26[19];
  sub_100007914(v26 + 14);
  sub_10000B7EC();
  (*(v35 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v26 + 14), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v34 + 8))(v33, v82);
  swift_errorRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v87 = v84;
  v36 = &v87;
  sub_100150450();

  v37 = v87;
  v38 = v26[37];
  for (i = (v26[36] - 1) & v26[36]; ; i &= i - 1)
  {
    v26[35] = v37;
    if (!i)
    {
      while (!__OFADD__(v38, 1))
      {
        v40 = sub_100197D10();
        if (v42 == v43)
        {

          sub_1000D3518();
          sub_100010410();

          __asm { BRAA            X2, X16 }
        }

        i = *(v40 + 8 * v41 + 64);
        ++v38;
        if (i)
        {
          v38 = v41;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

LABEL_10:
    v26[36] = i;
    v26[37] = v38;
    sub_100197DE8();
    v45 = *v44;
    v26[38] = *v44;
    v46 = v44[1];
    v26[39] = v46;
    sub_100197BF4(v47, v48);
    v50 = *(v49 + 16);
    v83 = *(v49 + 8);
    v26[41] = v50;
    v85 = v36;
    if (v36[2])
    {
      type metadata accessor for TSDataSyncDatasetGroupState(0);
      v26[21] = v45;
      v26[22] = v46;
      *(swift_task_alloc() + 16) = v26 + 21;

      sub_10000C760();
      v51 = sub_10015D6FC();

      if (v51)
      {
        sub_1001ABF58(v45, v46, v26[27], v26[34]);
        v73 = swift_task_alloc();
        v74 = sub_100197DA4(v73);
        *v74 = v75;
        sub_1000053F8(v74);
        sub_100010410();

        sub_100193758();
        return;
      }
    }

    else
    {
    }

    v86 = v45;
    v80 = v46;
    v81 = v37;
    v52 = v26[29];
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v26[5] = v78;
    v26[2] = v52;

    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v55 = v26[33];
    v56 = v26[31];
    v79 = v26[30];
    sub_1000028B0();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v26 + 2);
    sub_10000426C();
    v26[6] = v85;
    v26[7] = v83;
    v26[8] = v50;
    v26[9] = &type metadata for TSDataSyncDatasetRecord;
    static LogInterpolation.sensitive(_:)();
    sub_100004E24((v26 + 6), &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v56 + 8))(v55, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[23] = v81;
    sub_10014EB30(v86, v80);
    sub_10000B818();
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_35;
    }

    v63 = v58;
    v64 = v59;
    sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
    v36 = v26 + 23;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v62))
    {
      break;
    }

LABEL_20:
    v37 = v26[23];
    if (v64)
    {
      sub_100197CA0(v37[7] + 16 * v63);
    }

    else
    {
      sub_1000035B8(&v37[v63 >> 6]);
      v67 = (v37[6] + 16 * v63);
      *v67 = v86;
      v67[1] = v80;
      v68 = v37[7] + 16 * v63;
      *v68 = 0;
      *(v68 + 8) = 0;
      v69 = v37[2];
      v43 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v43)
      {
        goto LABEL_36;
      }

      v37[2] = v70;
    }
  }

  v36 = v26[23];
  v65 = sub_10014EB30(v86, v80);
  if ((v64 & 1) == (v66 & 1))
  {
    v63 = v65;
    goto LABEL_20;
  }

  sub_100010410();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100193758()
{
  sub_100004194();
  v1[63] = v2;
  v1[64] = v0;
  v1[61] = v3;
  v1[62] = v4;
  v1[59] = v5;
  v1[60] = v6;
  v1[57] = v7;
  v1[58] = v8;
  v9 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v9);
  v1[65] = sub_1000C70D8();
  v1[66] = swift_task_alloc();
  v10 = type metadata accessor for Log();
  v1[67] = v10;
  sub_100003B78(v10);
  v1[68] = v11;
  v1[69] = sub_1000C70D8();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v12 = sub_10000AA8C();

  return _swift_task_switch(v12);
}

uint64_t sub_100193858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  v27 = *(v26 + 512);
  static Log.tsDataSync.getter();
  v28 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v26 + 576) = v28;
  v29 = type metadata accessor for LogInterpolation();
  sub_100003B78(v29);
  v31 = *(v30 + 72);
  *(v26 + 584) = v31;
  LODWORD(v30) = *(v32 + 80);
  *(v26 + 640) = v30;
  v33 = (v30 + 32) & ~v30;
  v113 = v31;
  v98 = 3 * v31;
  v99 = v30;
  v100 = v28;
  v34 = swift_allocObject();
  v35 = sub_100008CD8(v34, xmmword_1002329D0);
  *(v26 + 208) = v27;
  *(v26 + 592) = v35;
  v111 = (v26 + 208);
  v97 = v35;
  *(v26 + 232) = v35;

  v36 = AMSLogKey();
  v102 = v33;
  if (v36)
  {
    v37 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v38 = *(v26 + 544);
  v104 = *(v26 + 568);
  v106 = *(v26 + 536);
  v39 = *(v26 + 472);
  v107 = *(v26 + 480);
  v109 = *(v26 + 528);
  v41 = *(v26 + 456);
  v40 = *(v26 + 464);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v111);
  LogInterpolation.init(stringLiteral:)();
  *(v26 + 240) = v41;
  *(v26 + 248) = v40;
  *(v26 + 256) = v39;
  *(v26 + 264) = &type metadata for TSDataSyncDatasetRecord;

  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v26 + 240, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v42 = *(v38 + 8);
  *(v26 + 600) = v42;
  *(v26 + 608) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v104, v106);
  sub_1000C68A8(v107, v109, &qword_1002DBC28, &qword_100232F70);
  v43 = type metadata accessor for TSDataSyncDatasetState(0);
  v44 = sub_10000A218();
  v46 = sub_100004DFC(v44, v45, v43);
  v47 = *(v26 + 528);
  if (v46 == 1)
  {
    sub_100004E24(*(v26 + 528), &qword_1002DBC28, &qword_100232F70);
LABEL_8:
    v65 = *(v26 + 496);
    v64 = *(v26 + 504);
    sub_100197580();
    sub_100004950();
    swift_allocError();
    *v66 = v65;
    *(v66 + 8) = v64;
    *(v66 + 16) = 1;
    *(v66 + 24) = 0;
    swift_willThrow();

    sub_100002E08();
    sub_10000F438();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, v97, 3, 6, v98, v99, v100, v102, v104, v106, v107, v109, v111, v113, a23, a24, a25, a26);
  }

  v48 = *(v47 + 48);
  v49 = *(v47 + 56);

  sub_1000081A4();
  sub_100197878();
  if (!v49)
  {
    goto LABEL_8;
  }

  v50 = *(v26 + 520);
  v51 = *(v26 + 504);
  v52 = *(v26 + 480);
  v53 = *(v26 + 488);
  v54 = *v53;
  v55 = v53[1];
  v56 = v53[5];
  v57 = v53[6];
  *(v26 + 80) = *(v26 + 496);
  *(v26 + 88) = v51;
  *(v26 + 96) = v54;
  *(v26 + 104) = v55;
  *(v26 + 112) = v48;
  *(v26 + 120) = v49;
  *(v26 + 128) = v56;
  *(v26 + 136) = v57;
  v58 = *(v26 + 80);
  v59 = *(v26 + 96);
  v60 = *(v26 + 128);
  *(v26 + 48) = *(v26 + 112);
  *(v26 + 64) = v60;
  *(v26 + 16) = v58;
  *(v26 + 32) = v59;
  v110 = (v26 + 16);
  sub_1000C68A8(v52, v50, &qword_1002DBC28, &qword_100232F70);
  v61 = sub_100004DFC(v50, 1, v43);
  v62 = *(v26 + 520);
  if (v61 == 1)
  {

    sub_100004E24(v62, &qword_1002DBC28, &qword_100232F70);
    v108 = 0;
    v63 = 0;
  }

  else
  {
    v77 = *(v26 + 464);
    v76 = *(v26 + 472);
    v78 = *(v62 + *(v43 + 72));

    sub_1000081A4();
    sub_100197878();
    v108 = sub_1001AC17C(v77, v76, v78);
    v63 = v79;
  }

  v105 = 2 * v113;
  *(v26 + 616) = v63;
  v80 = *(v26 + 512);
  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  *(v26 + 296) = v97;
  *(v26 + 272) = v80;

  v81 = AMSLogKey();
  if (v81)
  {
    v82 = v81;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v83 = *(v26 + 560);
  v101 = *(v26 + 536);
  v103 = *(v26 + 512);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v26 + 272));
  LogInterpolation.init(stringLiteral:)();
  *(v26 + 328) = &type metadata for TSDataSyncWriteConfiguration;
  v84 = swift_allocObject();
  *(v26 + 304) = v84;
  v85 = *(v26 + 32);
  v84[1] = *v110;
  v84[2] = v85;
  v86 = *(v26 + 64);
  v84[3] = *(v26 + 48);
  v84[4] = v86;
  sub_10011DB70(v26 + 80, v26 + 144);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v26 + 304, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v42(v83, v101);
  v112 = (*(v103 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_externalWriter + 8) + 8);
  v114 = *v112 + **v112;
  v87 = swift_task_alloc();
  *(v26 + 624) = v87;
  *v87 = v26;
  v87[1] = sub_100193F38;
  sub_10000F438();

  return v94(v88, v89, v90, v91, v92, v93, v94, v95, a9, v97, 3, 6, v98, v99, v101, v103, v105, v63, v108, v110, v112, v114, a23, a24, a25, a26);
}

uint64_t sub_100193F38()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v3[54] = v1;
  v3[55] = v5;
  v3[56] = v0;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  v3[79] = v0;

  if (v0)
  {
    v8 = sub_1001942A4;
  }

  else
  {

    v8 = sub_100194054;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_100194054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 592);
  v5 = *(v3 + 512);
  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329E0;
  *(v3 + 360) = v4;
  *(v3 + 336) = v5;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v3 + 440);
  v22 = *(v3 + 600);
  v9 = *(v3 + 552);
  v10 = *(v3 + 536);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v3 + 336));
  *(v3 + 392) = &type metadata for Int;
  *(v3 + 368) = v8;
  static LogInterpolation.sensitive(_:)();
  sub_1000028B0();
  sub_100004E24(v11, v12, v13);
  sub_10000426C();
  *(v3 + 424) = &type metadata for TSDataSyncWriteConfiguration;
  v14 = swift_allocObject();
  *(v3 + 400) = v14;
  v15 = *(v3 + 32);
  v14[1] = *(v3 + 16);
  v14[2] = v15;
  v16 = *(v3 + 64);
  v14[3] = *(v3 + 48);
  v14[4] = v16;
  static LogInterpolation.sensitive(_:)();
  sub_1000028B0();
  sub_100004E24(v17, v18, v19);
  Log.default(_:)();

  v22(v9, v10);

  sub_1000D3518();

  return v20(v8);
}

uint64_t sub_1001942A4()
{
  sub_1000D354C();
  sub_10000DB4C();

  sub_10011DBA8(v0 + 80);

  sub_100002E08();
  sub_10000AD14();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100194398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003018();
  sub_100008280(v9);
  v10 = type metadata accessor for Date();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = v15 - v14;
  v98 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_100003724();
  __chkstk_darwin(v17);
  sub_1000030E4();
  sub_10000A1C0(v18);
  v19 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v20 = sub_1000030B8(v19);
  __chkstk_darwin(v20);
  sub_10000308C();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_10011852C();
  v25 = sub_100099DF4(&qword_1002DF9B0, &qword_10023F6B0);
  v26 = sub_1000030B8(v25);
  __chkstk_darwin(v26);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_10000D478();
  v106 = v28;
  v29 = a1 + 56;
  sub_100197CC0();
  v104 = v30 >> 6;
  v96 = (v12 + 16);
  v103 = a1;

  v32 = 0;
  v95 = _swiftEmptyArrayStorage;
  v100 = v16;
  v101 = v3;
  v102 = a1 + 56;
  v99 = v10;
LABEL_2:
  v33 = v32;
  while (v4)
  {
    v32 = v33;
LABEL_8:
    v34 = (*(v103 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v4)))));
    v35 = *v34;
    v36 = v34[1];
    if (*(a2 + 16))
    {

      v37 = sub_10014EB30(v35, v36);
      if (v38)
      {
        v39 = v37;
        v40 = a2;
        v41 = v35;
        v42 = v23;
        v43 = *(v40 + 56);
        v44 = v40;
        v45 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        sub_10000307C();
        v47 = v43 + *(v46 + 72) * v39;
        v23 = v42;
        v3 = v101;
        sub_100197820(v47, v106);
        v35 = v41;
        sub_10000B7B0();
        v51 = v45;
        a2 = v44;
        v10 = v99;
      }

      else
      {
        type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        sub_100007B78();
      }

      sub_100002728(v48, v49, v50, v51);
    }

    else
    {
      type metadata accessor for TSDataSyncDatasetScheduleInput(0);
      sub_100007B78();
      sub_100002728(v52, v53, v54, v55);
    }

    if (*(a3 + 16))
    {
      sub_10014EB30(v35, v36);
      if (v56)
      {
        sub_100007E10();
        sub_100197820(v57, v97);
        (*v96)(v3, v97 + *(v98 + 36), v10);
        sub_1000081A4();
        sub_100197878();
        v58 = 0;
      }

      else
      {
        v58 = 1;
      }
    }

    else
    {
      v58 = 1;
    }

    v4 &= v4 - 1;
    sub_100002728(v3, v58, 1, v10);
    sub_1000C68A8(v3, v23, &qword_1002DA970, &qword_1002318B0);
    sub_1000075D8(v23);
    if (v59)
    {

      v60 = sub_1000050CC();
      sub_100004E24(v60, v61, &qword_1002318B0);
      sub_100004E24(v106, &qword_1002DF9B0, &qword_10023F6B0);
      result = sub_100004E24(v23, &qword_1002DA970, &qword_1002318B0);
      v33 = v32;
    }

    else
    {
      sub_100008AA4();
      v62(v100, v23, v10);
      Date.timeIntervalSince1970.getter();
      v64 = v63;
      Date.timeIntervalSince1970.getter();
      if (v64 - v65 >= 5.0)
      {

        sub_100008AA4();
        v73(v100, v10);
        v3 = v101;
      }

      else
      {
        sub_10000288C();
        sub_1000C68A8(v66, v67, &qword_1002DF9B0, &qword_10023F6B0);
        v68 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        v69 = sub_100013DDC();
        v3 = v101;
        if (sub_100004DFC(v69, v70, v68) == 1)
        {
          sub_100004E24(v100, &qword_1002DF9B0, &qword_10023F6B0);
LABEL_31:
          v74 = Dictionary.init(dictionaryLiteral:)();
          *&v108 = 1701667182;
          *(&v108 + 1) = 0xE400000000000000;
          AnyHashable.init<A>(_:)();
          v75 = String._bridgeToObjectiveC()();

          v76 = sub_100197454();
          v109 = v76;
          *&v108 = v75;
          sub_1001514B8(&v108, v107);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10015032C(v107, v110, isUniquelyReferenced_nonNull_native);
          sub_100117298(v110);
          *&v108 = 0x6573756163;
          *(&v108 + 1) = 0xE500000000000000;
          AnyHashable.init<A>(_:)();
          v78 = NSString.init(stringLiteral:)();
          v109 = v76;
          *&v108 = v78;
          sub_1001514B8(&v108, v107);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          sub_10015032C(v107, v110, v79);
          sub_100117298(v110);
          v80 = v95;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100197D6C();
            v80 = v84;
          }

          v82 = v80[2];
          v81 = v80[3];
          if (v82 >= v81 >> 1)
          {
            sub_10013C648(v81 > 1, v82 + 1, 1, v80);
            v95 = v85;
          }

          else
          {
            v95 = v80;
          }

          sub_100008AA4();
          v83(v100, v10);
          sub_100004E24(v101, &qword_1002DA970, &qword_1002318B0);
          result = sub_100004E24(v106, &qword_1002DF9B0, &qword_10023F6B0);
          v95[2] = v82 + 1;
          v95[v82 + 4] = v74;
          v29 = v102;
          goto LABEL_2;
        }

        v71 = *(v100 + *(v68 + 40));
        sub_100197878();
        if (v71 == 2 || (v71 & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_100008AA4();
        v72(v100, v10);
      }

      sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
      result = sub_100004E24(v106, &qword_1002DF9B0, &qword_10023F6B0);
      v33 = v32;
    }

    v29 = v102;
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return result;
    }

    if (v32 >= v104)
    {
      break;
    }

    v4 = *(v29 + 8 * v32);
    ++v33;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  if (!v95[2])
  {
  }

  type metadata accessor for TaskPriority();
  sub_100007B78();
  sub_100002728(v86, v87, v88, v89);
  v90 = swift_allocObject();
  v90[2] = 0;
  v90[3] = 0;
  v90[4] = sub_100197DB0();
  v90[5] = v95;

  v91 = sub_100197C54();
  sub_10018C610(v91, v92, v94, v93, v90);

  return sub_100004E24(v94, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_100194D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for Log();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100194E08);
}

uint64_t sub_100194E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v7 = type metadata accessor for LogInterpolation();
  sub_100003B78(v7);
  sub_100005D98();
  sub_1000C71C8();
  v8 = swift_allocObject();
  v9 = sub_100008CD8(v8, xmmword_1002329F0);
  sub_100197E48(v9);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  sub_10000AEC4();

  sub_100004118(v6);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100197D48("Sending auto bug capture report for ");
  v14 = sub_100099DF4(&qword_1002DF9A8, &qword_10023F6A8);
  sub_100197E28(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v6, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v5 + 8))(v4);
  v16 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  *(v3 + 128) = sub_100197B98(v17, 0x8000000100274C90, v18, v19, v13 | 1, v20, v21, v22, v29, v30, v31);
  v23 = swift_task_alloc();
  *(v3 + 136) = v23;
  *v23 = v3;
  v23[1] = sub_100195070;
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v24, v25, v26, v27);
}

uint64_t sub_100195070()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 144) = v3;

  if (!v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v9);
}

void sub_100195174(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v195 = a3;
  v207 = a2;
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003018();
  sub_100008280(v11);
  v194 = type metadata accessor for Date();
  sub_100003724();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000030E4();
  sub_10000A1C0(v15);
  v193 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v16);
  sub_100003018();
  sub_10000A1C0(v17);
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v20);
  v22 = (v185 - v21);
  __chkstk_darwin(v23);
  sub_10011852C();
  v24 = type metadata accessor for LogInterpolation.StringInterpolation();
  v25 = sub_1000030B8(v24);
  __chkstk_darwin(v25);
  sub_1000030E4();
  v214 = v26;
  sub_100013FAC();
  v206 = type metadata accessor for Log();
  sub_100003724();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000030E4();
  v213 = v30;
  v31 = sub_100013FAC();
  v200 = type metadata accessor for TSDataSyncDatasetState(v31);
  sub_100003724();
  v211 = v32;
  __chkstk_darwin(v33);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  v217 = v37;
  sub_100005238();
  __chkstk_darwin(v38);
  sub_10000D478();
  sub_10000A1C0(v39);
  v40 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v41 = sub_1000030B8(v40);
  __chkstk_darwin(v41);
  sub_1000037D4();
  v212 = v42;
  sub_100005238();
  __chkstk_darwin(v43);
  sub_10000D478();
  v45 = sub_100008280(v44);
  v205 = type metadata accessor for TSDataSyncDatasetGroupState(v45);
  v210 = *(a1 + *(v205 + 20)) + 64;
  sub_100197CC0();
  v209 = v46 >> 6;
  v204 = "silent failed persist for ";
  v203 = v28 + 8;
  v187 = v13 + 32;
  v190 = (v13 + 8);
  v185[1] = " after write failure ";
  v185[2] = "anged after writing ";
  v185[3] = " when no write result";
  v186 = 0x80000001002755F0;
  v201 = v47;

  v48 = 0;
  v202 = xmmword_1002329F0;
  v197 = _swiftEmptyArrayStorage;
  v199 = v22;
  v198 = v5;
LABEL_2:
  v49 = v212;
LABEL_3:
  sub_100197DD4();
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
    v52 = v48;
LABEL_9:
    v53 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v54 = (*(v201 + 48) + 16 * (v53 | (v52 << 6)));
    v55 = *v54;
    a1 = v54[1];
    sub_100007E10();
    sub_100108290();
    sub_100197820(v56, v57);
    v58 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v59 = v212;
    *v212 = v55;
    v59[1] = a1;
    v49 = v59;
    sub_10000DC74();
    sub_100197914(v4, v61 + v60);
    sub_10000B7B0();
    sub_100002728(v62, v63, v64, v58);

LABEL_10:
    v65 = v49;
    v66 = v208;
    sub_100197338(v65, v208);
    v67 = sub_100197DFC();
    v69 = sub_100099DF4(v67, v68);
    if (sub_100004DFC(v66, 1, v69) == 1)
    {
      sub_100197DB0();

      v175 = v197;
      if (v197[2])
      {
        type metadata accessor for TaskPriority();
        v176 = v196;
        sub_100007B78();
        sub_100002728(v177, v178, v179, v180);
        v181 = swift_allocObject();
        v181[2] = 0;
        v181[3] = 0;
        v181[4] = sub_100004F70();
        v181[5] = v175;

        v182 = sub_100197C54();
        sub_10018C610(v182, v183, v176, v184, v181);

        sub_100004E24(v176, &qword_1002DB950, &qword_100232E50);
      }

      else
      {
      }

      return;
    }

    v70 = a4;
    v71 = *v66;
    v215 = v66[1];
    v216 = v71;
    sub_10000DC74();
    sub_100197914(v66 + v72, v217);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v73 = type metadata accessor for LogInterpolation();
    sub_100003B78(v73);
    sub_10000A1F0();
    v76 = v75 & ~v74;
    sub_1000C71D4();
    v77 = swift_allocObject();
    *(&v223 + 1) = sub_100008CD8(v77, v202);
    *&v222 = sub_100004F70();

    v78 = AMSLogKey();
    if (v78)
    {
      v79 = v78;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v4 = v77 + v76;
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v222);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80._countAndFlagsBits = 0x676E696B63656843;
    v80._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
    *(&v223 + 1) = &type metadata for TSDataSyncDatasetIdentifier;
    v81 = v215;
    *&v222 = v216;
    *(&v222 + 1) = v215;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v222, &unk_1002DFC10, &qword_10022E6D0);
    sub_10000D46C();
    sub_100197DC8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
    a4 = v70;
    if (v70)
    {
      *(&v223 + 1) = sub_100099DF4(&qword_1002DF9A0, &qword_10023F6A0);
      *&v222 = v70;
    }

    else
    {
      v222 = 0u;
      v223 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v222, &unk_1002DFC10, &qword_10022E6D0);
    v83._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v83);
    LogInterpolation.init(stringInterpolation:)();
    v84 = v213;
    Log.debug(_:)();

    sub_100008AA4();
    v85(v84, v206);
    v86 = *(v207 + *(v205 + 20));
    if (!*(v86 + 16))
    {
      goto LABEL_30;
    }

    v4 = *v217;
    v87 = v217[1];
    sub_10014EB30(v216, v81);
    if ((v88 & 1) == 0)
    {
      goto LABEL_30;
    }

    v89 = *(v211 + 72);
    sub_100007E10();
    sub_10000288C();
    sub_100197820(v90, v91);
    v93 = *a1;
    v92 = a1[1];

    sub_1000081A4();
    sub_100197878();
    v94 = v4 == v93 && v87 == v92;
    if (v94)
    {

      v95 = v215;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v95 = v215;
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (!*(v86 + 16) || (sub_100197D20(), v4 = *(v217 + *(v102 + 44)), sub_10014EB30(v216, v95), (v103 & 1) == 0))
    {
LABEL_30:

      sub_1000081A4();
      sub_100197878();
      goto LABEL_31;
    }

    sub_100007E10();
    sub_10000288C();
    sub_100197820(v104, v105);
    sub_100197D20();
    v107 = *(a1 + *(v106 + 44));
    sub_1000081A4();
    sub_100197878();
    v108 = v199;
    v109 = v198;
    if (v4 == v107)
    {
      v191 = v89;
      if (a4 && *(a4 + 16) && (sub_10014EB30(v216, v215), (v110 & 1) != 0))
      {
        v111 = v195;
        if (v195 && (v112 = v194, *(v195 + 16)) && (v4 = v195, v113 = sub_10014EB30(v216, v215), (v114 & 1) != 0))
        {
          v115 = *(v111 + 56) + 16 * v113;
          v116 = *v115;
          if (*(v115 + 8) == 1)
          {
            *&v222 = 0;
            *(&v222 + 1) = 0xE000000000000000;
            v155 = sub_100013DDC();
            sub_100197448(v155, v156);
            _StringGuts.grow(_:)(71);
            sub_100197DC8();
            v157._countAndFlagsBits = 0xD000000000000045;
            String.append(_:)(v157);
            *&v220 = v116;
            sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
            _print_unlocked<A, B>(_:_:)();
            v158 = sub_100013DDC();
            sub_100107D70(v158, v159);
          }

          else
          {
            if (v116 >= 1)
            {
              *&v222 = 0;
              *(&v222 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(73);
              sub_10000D46C();
              sub_100197DC8();
              String.append(_:)(v160);
              *&v220 = v116;
            }

            else
            {
              v185[0] = *v115;
              sub_100197D20();
              sub_1000C68A8(v217 + *(v117 + 48), v109, &qword_1002DA970, &qword_1002318B0);
              if (*(v86 + 16) && (sub_10014EB30(v216, v215), (v118 & 1) != 0))
              {
                sub_100007E10();
                v119 = v189;
                sub_100197820(v120, v189);
                sub_100197D20();
                sub_1000C68A8(v119 + *(v121 + 48), v108, &qword_1002DA970, &qword_1002318B0);
                sub_1000081A4();
                sub_100197878();
              }

              else
              {
                sub_100007B78();
                sub_100002728(v122, v123, v124, v112);
              }

              a1 = v108;
              v125 = *(v193 + 48);
              sub_100108290();
              sub_1000C68A8(v126, v127, &qword_1002DA970, &qword_1002318B0);
              sub_1000C68A8(v108, v4 + v125, &qword_1002DA970, &qword_1002318B0);
              sub_1000075D8(v4);
              if (v94)
              {
                sub_100010EE0();
                sub_100004E24(v128, v129, v130);
                sub_100010EE0();
                sub_100004E24(v131, v132, v133);
                sub_1000075D8(v4 + v125);
                v49 = v212;
                if (!v94)
                {
                  goto LABEL_53;
                }

                sub_100004E24(v4, &qword_1002DA970, &qword_1002318B0);
              }

              else
              {
                v134 = v192;
                sub_1000C68A8(v4, v192, &qword_1002DA970, &qword_1002318B0);
                sub_1000075D8(v4 + v125);
                if (v135)
                {
                  sub_100010EE0();
                  sub_100004E24(v136, v137, v138);
                  sub_100010EE0();
                  sub_100004E24(v139, v140, v141);
                  sub_100008AA4();
                  v142(v134, v112);
                  v49 = v212;
LABEL_53:
                  sub_100004E24(v4, &qword_1002DACF0, &qword_100232140);
LABEL_55:

                  sub_1000081A4();
                  sub_100197878();
                  goto LABEL_3;
                }

                sub_100008AA4();
                a1 = v188;
                v143(v188, v4 + v125, v112);
                sub_1001978CC(&qword_1002E27C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                LODWORD(v191) = dispatch thunk of static Equatable.== infix(_:_:)();
                v144 = *v190;
                (*v190)(a1, v112);
                sub_100010EE0();
                sub_100004E24(v145, v146, v147);
                sub_100010EE0();
                sub_100004E24(v148, v149, v150);
                v144(v192, v112);
                sub_100010EE0();
                sub_100004E24(v151, v152, v153);
                v49 = v212;
                if ((v191 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              *&v222 = 0;
              *(&v222 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(78);
              sub_10000D46C();
              sub_100197DC8();
              String.append(_:)(v161);
              *&v220 = v185[0];
            }

            v162._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v162);

            v163._countAndFlagsBits = 0x7364726F63657220;
            v163._object = 0xE800000000000000;
            String.append(_:)(v163);
          }

          v4 = *(&v222 + 1);
          v191 = v222;
        }

        else
        {
          sub_10000D46C();
          v191 = v154;
          v4 = v186;
        }

        v164 = Dictionary.init(dictionaryLiteral:)();
        *&v220 = 1701667182;
        *(&v220 + 1) = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        v221 = &type metadata for String;
        *&v220 = v216;
        *(&v220 + 1) = v215;
        sub_1001514B8(&v220, &v219);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v218 = v164;
        sub_10015032C(&v219, &v222, isUniquelyReferenced_nonNull_native);
        v166 = v218;
        sub_100117298(&v222);
        *&v220 = 0x6573756163;
        *(&v220 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        v221 = &type metadata for String;
        *&v220 = v191;
        *(&v220 + 1) = v4;
        sub_1001514B8(&v220, &v219);
        v167 = swift_isUniquelyReferenced_nonNull_native();
        v218 = v166;
        sub_10015032C(&v219, &v222, v167);
        v168 = v218;
        sub_100117298(&v222);
        v169 = v197;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100197D6C();
          v169 = v173;
        }

        v197 = v169;
        v171 = v169[2];
        v170 = v169[3];
        a1 = (v171 + 1);
        if (v171 >= v170 >> 1)
        {
          sub_10013C648(v170 > 1, v171 + 1, 1, v197);
          v197 = v174;
        }

        sub_1000081A4();
        sub_100197878();
        v172 = v197;
        v197[2] = a1;
        v172[v171 + 4] = v168;
      }

      else
      {

        sub_1000081A4();
        sub_100197878();
      }

      goto LABEL_2;
    }

    sub_1000081A4();
    sub_100197878();

LABEL_31:
    v49 = v212;
    sub_100197DD4();
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v52 >= v51)
    {
      v96 = sub_100197DFC();
      sub_100099DF4(v96, v97);
      sub_100007B78();
      sub_100002728(v98, v99, v100, v101);
      v6 = 0;
      goto LABEL_10;
    }

    v6 = *(v50 + 8 * v52);
    ++v48;
    if (v6)
    {
      v48 = v52;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100196250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for Log();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10019633C);
}

uint64_t sub_10019633C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v7 = type metadata accessor for LogInterpolation();
  sub_100003B78(v7);
  sub_100005D98();
  sub_1000C71C8();
  v8 = swift_allocObject();
  v9 = sub_100008CD8(v8, xmmword_1002329F0);
  sub_100197E48(v9);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  sub_10000AEC4();

  sub_100004118(v6);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100197D48("Sending auto bug capture report for ");
  v14 = sub_100099DF4(&qword_1002DF9A8, &qword_10023F6A8);
  sub_100197E28(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v6, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v5 + 8))(v4);
  v16 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  *(v3 + 128) = sub_100197B98(v17, 0x8000000100274C90, v18, v19, v13 + 23, v20, v21, v22, v29, v30, v31);
  v23 = swift_task_alloc();
  *(v3 + 136) = v23;
  *v23 = v3;
  v23[1] = sub_1001965A4;
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v24, v25, v26, v27);
}

uint64_t sub_1001965A4()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 144) = v3;

  if (!v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v9);
}

uint64_t sub_1001966A8()
{
  sub_100004194();

  sub_100002E08();

  return v1();
}

uint64_t sub_100196718()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v3 = v1;

  sub_100002E08();
  sub_10000AD14();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001967B4(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_100003724();
  v46 = v3;
  __chkstk_darwin(v4);
  sub_100003F24();
  v49 = v5;
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003018();
  v47 = v8;
  sub_100013FAC();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_1000030B8(v9);
  __chkstk_darwin(v10);
  sub_10000306C();
  v45 = type metadata accessor for Log();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = v15 - v14;
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  sub_10000A1F0();
  v18 = swift_allocObject();
  v51 = sub_100008CD8(v18, xmmword_1002329F0);
  v50[0] = v1;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v50);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD00000000000003ALL;
  v21._object = 0x8000000100275590;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  v51 = v2;
  v22 = sub_100007914(v50);
  sub_100197820(a1, v22);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v50, &unk_1002DFC10, &qword_10022E6D0);
  v23._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v12 + 8))(v16, v45);
  v24 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  sub_100197B98(v25, 0x8000000100274C90, v26, v27, 0xD000000000000015, v28, v29, v30, v42, v43, v44);
  sub_100003F9C();
  type metadata accessor for TaskPriority();
  sub_100007B78();
  sub_100002728(v31, v32, v33, v34);
  sub_100197820(a1, v49);
  v35 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v24;
  sub_100197914(v49, v36 + v35);
  v37 = v24;
  v38 = sub_100197C54();
  sub_10018C610(v38, v39, v47, v40, v36);

  return sub_100004E24(v47, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_100196C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[17] = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100196CB0);
}

uint64_t sub_100196CB0()
{
  v1 = v0[18];
  v2 = v0[16];
  sub_100099DF4(&qword_1002DE4A8, &qword_10023B280);
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002DF998, &unk_10023F670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  sub_10000B0F8();
  sub_100197820(v2, v1);
  sub_1001978CC(&unk_1002DC7D0, type metadata accessor for TSDataSyncDatasetGroupIdentifier, byte_10023679C);
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v3 + 32) = Dictionary.init(dictionaryLiteral:)();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100196E64;
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v6, v7, v8, v9);
}

uint64_t sub_100196E64()
{
  sub_1000D354C();
  sub_10000DB4C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_10000452C();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 168) = v3;

  if (v0)
  {
    sub_10000381C();
    sub_10000AD14();

    return _swift_task_switch(v9);
  }

  else
  {

    sub_10000AD14();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_100196FC8()
{
  v1 = *(v0 + 168);
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v2 = v1;

  sub_100002E08();

  return v3();
}

uint64_t sub_100197058()
{
  sub_100004D28();
  sub_100197878();
  sub_100008EE8();
  sub_100197878();

  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001970E0()
{
  sub_100197058();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupAccessActor(uint64_t a1)
{
  result = qword_1002DF830;
  if (!qword_1002DF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197160(uint64_t a1)
{
  result = type metadata accessor for TSDataSyncDatasetGroupState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100197260()
{
  sub_10000DB4C();
  v0 = sub_100002834();
  v1 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v0);
  sub_1000030B8(v1);
  v2 = swift_task_alloc();
  v3 = sub_100005380(v2);
  *v3 = v4;
  v3[1] = sub_1000C6A64;
  sub_100197BC8();

  return sub_100196C1C(v5, v6, v7, v8, v9);
}

uint64_t sub_100197338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001973A8()
{
  sub_1000D354C();
  sub_10000DB4C();
  v0 = swift_task_alloc();
  v1 = sub_100005380(v0);
  *v1 = v2;
  v1[1] = sub_100013D70;
  sub_100197BC8();
  sub_10000AD14();

  return sub_100196250(v3, v4, v5, v6, v7);
}

uint64_t sub_100197448(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

unint64_t sub_100197454()
{
  result = qword_1002DB930;
  if (!qword_1002DB930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DB930);
  }

  return result;
}

uint64_t sub_100197498()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001974E0()
{
  sub_1000D354C();
  sub_10000DB4C();
  v0 = swift_task_alloc();
  v1 = sub_100005380(v0);
  *v1 = v2;
  v1[1] = sub_100013D70;
  sub_100197BC8();
  sub_10000AD14();

  return sub_100194D1C(v3, v4, v5, v6, v7);
}

unint64_t sub_100197580()
{
  result = qword_1002DF9B8;
  if (!qword_1002DF9B8)
  {
    result = swift_getWitnessTable(aQ_8, &type metadata for TSDataSyncDatasetGroupAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF9B8);
  }

  return result;
}

uint64_t sub_1001975D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197658(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_100003B78(v2);
  v3 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_100003B78(v3);
  v4 = type metadata accessor for Date();
  sub_1000030B8(v4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C6A64;
  sub_100197BC8();

  return sub_10018F080(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100197820(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_100197878()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1001978CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100197914(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

__n128 sub_100197978(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10019798C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001979CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_100197A34()
{
  result = qword_1002DF9D8;
  if (!qword_1002DF9D8)
  {
    result = swift_getWitnessTable(asc_10023F7F0, &type metadata for TSDataSyncDatasetGroupAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF9D8);
  }

  return result;
}

unint64_t sub_100197A8C()
{
  result = qword_1002DF9E0;
  if (!qword_1002DF9E0)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for TSDataSyncDatasetGroupAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF9E0);
  }

  return result;
}

unint64_t sub_100197AE4()
{
  result = qword_1002DF9E8;
  if (!qword_1002DF9E8)
  {
    result = swift_getWitnessTable(byte_10023F780, &type metadata for TSDataSyncDatasetGroupAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF9E8);
  }

  return result;
}

unint64_t sub_100197B38()
{
  result = qword_1002DF9F0;
  if (!qword_1002DF9F0)
  {
    result = swift_getWitnessTable(asc_10023F830, &type metadata for TSDataSyncDatasetGroupAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF9F0);
  }

  return result;
}

uint64_t sub_100197B98(void x0_0, uint64_t a1, uint64_t a2, void x3_0, uint64_t a3, void x5_0, void x6_0, void a8, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)();
}

uint64_t sub_100197C64()
{
}

uint64_t sub_100197CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;

  return sub_100107D70(v2, v3);
}

uint64_t sub_100197CDC()
{
  sub_100004118(*(v0 - 72));
  sub_100004118(*(v0 - 168));
  v1 = *(v0 - 160);

  return sub_100004118(v1);
}

uint64_t sub_100197D2C()
{

  return sub_100004DFC(v1 + v2, 1, v0);
}

void sub_100197D48(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000024;

  v3 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v2);
}

void sub_100197D6C()
{
  v2 = v0[2] + 1;

  sub_10013C648(0, v2, 1, v0);
}

uint64_t sub_100197E08()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100197E28(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

uint64_t sub_100197E48(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
}

uint64_t *sub_100197E68()
{
  *(v0 - 96) = *(v0 - 136);

  return sub_100007914((v0 - 120));
}

uint64_t *sub_100197E88()
{
  *(v1 - 120) = v0;

  return sub_100007914((v1 - 144));
}

unint64_t sub_100197EB0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100099DF4(&qword_1002DF9F8, &qword_10023F938);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_10011723C(*(v1 + 48) + 40 * v11, __src);
      sub_100009F20(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_10011723C(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_100004E24(__dst, &qword_1002DFA00, &unk_10023F940);

        goto LABEL_23;
      }

      sub_100009F20(&__dst[40], v24);
      sub_100004E24(__dst, &qword_1002DFA00, &unk_10023F940);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_10014EB30(v22, v23);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v2[6] + 16 * result);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * result);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      v9 = v10;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_100198184()
{
  sub_100004194();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v5 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_1000030B8(v5);
  v0[30] = sub_100003FA8();
  v6 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v6);
  v0[31] = sub_100003FA8();
  v7 = type metadata accessor for Date();
  v0[32] = v7;
  sub_100003B78(v7);
  v0[33] = v8;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v9 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v0[36] = v9;
  sub_1000030B8(v9);
  v0[37] = sub_100003FA8();
  v10 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v0[38] = v10;
  sub_1000030B8(v10);
  v0[39] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v11);
}

uint64_t sub_1001982D8()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  *(v0 + 320) = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_10019838C;

  return sub_100198F1C();
}

uint64_t sub_10019838C()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[42] = v6;
  v3[43] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[44] = v8;
    *v8 = v5;
    v8[1] = sub_1001984EC;

    return sub_1001999D0();
  }
}

uint64_t sub_1001984EC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 360) = v4;
  *(v2 + 368) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1001985EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[45];
  v16 = v14[42];
  v17 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v14[47] = v17;
  [v15 setDelegate:v17];
  v18 = v16;
  v19 = [v15 dataTaskPromiseWithRequest:v18 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v14[48] = v19;
  swift_unknownObjectRelease();

  v14[2] = v14;
  v14[7] = v14 + 25;
  v14[3] = sub_100198794;
  v20 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5D24;
  v14[13] = &unk_1002BB718;
  v14[14] = v20;
  [v19 resultWithCompletion:v14 + 10];

  return _swift_continuation_await(v14 + 2, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100198794()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100198890()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);

  static Date.now.getter();
  v4 = sub_10019A1E0(v3);
  if (!v4 || (v5 = sub_100197EB0(v4), , !v5))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v6 = *(v0 + 368);
  [v3 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v6)
  {
    v7 = sub_100005424();
    v8(v7);

    **(v0 + 312) = v6;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v9 = [v3 data];
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_1000D361C(v0 + 144);
    sub_10000D170(v10, v12);
    static HTTPHelpers.responseTimestamp(from:)();
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v17 = *(v0 + 264);
    v18 = *(v0 + 256);
    v36 = *(v0 + 272);
    v37 = *(v0 + 232);
    v38 = *(v0 + 280);

    v19 = v15[5];
    Date.addingTimeInterval(_:)();
    sub_100002728(v16 + v19, 0, 1, v18);
    sub_100002728(v16 + v15[6], 1, 1, v18);
    v20 = *(v17 + 16);
    v20(v16 + v15[7], v36, v18);
    v20(v16 + v15[8], v37, v18);
    v2 = [v3 responseStatusCode];
    v21 = *(v17 + 8);
    v21(v36, v18);
    result = (v21)(v38, v18);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v22 = *(v0 + 360);
    v23 = *(v0 + 336);
    v24 = *(v0 + 312);
    v39 = *(v0 + 376);
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    sub_100006814();
    sub_10019A2A0(v29, v27, v30);
    v31 = sub_1000081BC();
    sub_10019A35C(v31, v28, v32);
    sub_10019A2A0(v28, v26 + *(v25 + 40), type metadata accessor for TSDataSyncDatasetGroupIdentifier);
    sub_10019A300(v28);

    v33 = *(v0 + 144);
    v34 = *(v0 + 160);
    v35 = *(v0 + 176);
    *(v26 + 48) = *(v0 + 192);
    *(v26 + 16) = v34;
    *(v26 + 32) = v35;
    *v26 = v33;
    *(v26 + *(v25 + 36)) = v2;
    sub_10019A35C(v26, v24, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v3, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v13();
}

uint64_t sub_100198C90()
{
  sub_10019A3C4(*(v2 + 344));
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v3();
}

uint64_t sub_100198D58()
{
  sub_10019A3C4(*(v2 + 368));
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v3();
}

uint64_t sub_100198E28(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[47];
  v4 = v1[45];
  v5 = v1[42];
  swift_willThrow();

  sub_10019A3C4(v1[49]);
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v3, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v6();
}

uint64_t sub_100198F1C()
{
  sub_100004194();
  v0[10] = v1;
  v0[11] = v2;
  v3 = type metadata accessor for URL();
  v0[12] = v3;
  sub_100003B78(v3);
  v0[13] = v4;
  v0[14] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_100198FC4()
{
  v1 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[11]];
  v0[15] = v1;
  [v1 setRequestEncoding:3];
  if (sub_1000D61EC())
  {
    v2 = sub_100199E28(v0[10]);
    [v1 setAccount:v2];
  }

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100199114;
  v4 = v0[14];
  v5 = v0[10];

  return sub_1000D4850(v4, v5);
}

uint64_t sub_100199114()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_10000452C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

void sub_100199210()
{
  sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
  v88 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = 0x646975472D58;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() deviceGUID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = Dictionary.init(dictionaryLiteral:)();
  v82 = sub_1000D4B24() + 64;
  sub_100007E28();
  v20 = v19 >> 6;
  v84 = v19 >> 6;
  v86 = v10;
  while (1)
  {
    v88[18].super.isa = v9;
    if (!inited)
    {
      break;
    }

    v21 = v18;
LABEL_7:
    sub_100003338(v10, v11, v12, v13, v14, v15, v16, v17, v80, v82, v84, v86);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v9;
    v23 = sub_10000B110();
    v25 = sub_10014EB30(v23, v24);
    v27 = *(v9 + 16);
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_39;
    }

    v30 = v25;
    v31 = v26;
    sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
    {
      v32 = sub_10000B110();
      v34 = sub_10014EB30(v32, v33);
      if ((v31 & 1) != (v35 & 1))
      {
LABEL_34:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v30 = v34;
    }

    inited &= inited - 1;
    if (v31)
    {

      v9 = v90;
      v36 = (v90[7] + 16 * v30);
      *v36 = v89;
      v36[1] = v1;
    }

    else
    {
      v9 = v90;
      sub_10000AC84(&v90[v30 >> 6]);
      v37 = (v90[6] + 16 * v30);
      *v37 = v3;
      v37[1] = v2;
      v38 = (v90[7] + 16 * v30);
      *v38 = v89;
      v38[1] = v1;
      v39 = v90[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_41;
      }

      v90[2] = v41;
    }

    v18 = v21;
    v20 = v84;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      v81 = v9;
      isa = v88[10].super.isa;

      v43 = Dictionary.init(dictionaryLiteral:)();
      v44 = sub_1000D49E8();
      v85 = v44 + 64;
      v87 = v44;
      sub_100007E28();
      v56 = v55 >> 6;
      v83 = v56;
      if (!isa)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v57 = v53;
LABEL_21:
        sub_100003338(v45, v46, v47, v48, v49, v50, v51, v52, v81, v83, v85, v87);

        v58 = swift_isUniquelyReferenced_nonNull_native();
        v59 = sub_10000B110();
        v61 = sub_10014EB30(v59, v60);
        v63 = v43[2];
        v64 = (v62 & 1) == 0;
        v65 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          goto LABEL_40;
        }

        v66 = v61;
        v67 = v62;
        sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v65))
        {
          v68 = sub_10000B110();
          v70 = sub_10014EB30(v68, v69);
          if ((v67 & 1) != (v71 & 1))
          {
            goto LABEL_34;
          }

          v66 = v70;
        }

        isa &= isa - 1;
        if (v67)
        {

          v72 = (v43[7] + 16 * v66);
          *v72 = v89;
          v72[1] = v1;
        }

        else
        {
          sub_10000AC84(&v43[v66 >> 6]);
          v73 = (v43[6] + 16 * v66);
          *v73 = v3;
          v73[1] = v2;
          v74 = (v43[7] + 16 * v66);
          *v74 = v89;
          v74[1] = v1;
          v75 = v43[2];
          v40 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v40)
          {
            goto LABEL_42;
          }

          v43[2] = v76;
        }

        v53 = v57;
        v56 = v83;
        v54 = v85;
        if (!isa)
        {
LABEL_18:
          while (1)
          {
            v57 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_38;
            }

            if (v57 >= v56)
            {

              v77.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
              v88[19].super.isa = v77.super.isa;

              v78 = swift_task_alloc();
              v88[20].super.isa = v78;
              *v78 = v88;
              *(v78 + 1) = sub_1001996F4;
              v79 = v88[14].super.isa;

              sub_1001A833C(2, v79, v81, v77.super.isa);
              return;
            }

            isa = *(v54 + 8 * v57);
            ++v53;
            if (isa)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    inited = *(v82 + 8 * v21);
    ++v18;
    if (inited)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1001996F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000452C();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 168) = v1;

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_10019984C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 176);

  return v4(v5);
}

uint64_t sub_1001998E0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  sub_100002E08();

  return v4();
}

uint64_t sub_10019996C()
{
  sub_100004194();

  sub_100002E08();

  return v1();
}

uint64_t sub_1001999D0()
{
  sub_100004194();
  v0[21] = v1;
  v2 = type metadata accessor for IndexSet();
  v0[22] = v2;
  sub_100003B78(v2);
  v0[23] = v3;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100199A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  v14[26] = v15;
  sub_1001797AC(&qword_1002DB9D8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v14[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v17 = v14[25];
  v18 = v14[22];
  v19 = v14[23];
  v20 = v14[21];
  (*(v19 + 32))(v17, v14[24], v18);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v21);
  v23 = v22;
  (*(v19 + 8))(v17, v18);
  [v15 setAllowedStatusCodes:v23];

  v24 = objc_opt_self();
  v14[27] = v24;
  v25 = [objc_opt_self() currentProcess];
  v26 = [v24 ams_configurationWithClientInfo:v25 bag:v20];
  v14[28] = v26;

  v14[2] = v14;
  v14[7] = v14 + 20;
  v14[3] = sub_100199D2C;
  v27 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5C90;
  v14[13] = &unk_1002BB740;
  v14[14] = v27;
  [v26 resultWithCompletion:v14 + 10];

  return _swift_continuation_await(v14 + 2, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100199D2C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

id sub_100199E28(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for AccountIdentity.DSID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10000306C();
  v16 = v15 - v14;
  sub_100006814();
  sub_10019A2A0(a1, v11, v17);
  v18 = sub_1000081BC();
  sub_10019A35C(v18, v6, v19);
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  AccountIdentity.dsid.getter();
  sub_10019A300(v6);
  v20 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v22 = [v20 ams_iTunesAccountWithDSID:isa];

  if (!v22)
  {
    type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
    sub_1001797AC(&qword_1002DD650, type metadata accessor for TSDataSyncNetworkingCore.Errors, byte_1002384C4);
    swift_allocError();
    v24 = v23;
    v25 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
    (*(v13 + 16))(v24, v16, v12);
    *(v24 + v25) = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v13 + 8))(v16, v12);
  return v22;
}

uint64_t sub_10019A0B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_100198184();
}

uint64_t sub_10019A170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019A1E0(void *a1)
{
  v1 = [a1 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10019A2A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10019A300(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019A35C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10019A3C4@<X0>(uint64_t a1@<X8>)
{
  **(v1 + 312) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10019A3E0(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors(0);
  sub_10000307C();
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v40 - v14);
  v16 = sub_100099DF4(&qword_1002DFAD8, &unk_10023FAD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v20 = (&v40 + *(v19 + 56) - v17);
  sub_10019B0D0(a1, &v40 - v17, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  sub_10019B0D0(a2, v20, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = sub_100003A54();
    sub_10019B0D0(v30, v15, v31);
    v33 = *v15;
    v32 = v15[1];
    v34 = v15[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v20[2];
      if (v33 == *v20 && v32 == v20[1])
      {
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v29 = v34 == v35;
      goto LABEL_18;
    }

LABEL_8:
    sub_100004E24(v18, &qword_1002DFAD8, &unk_10023FAD0);
    return 0;
  }

  v21 = sub_100003A54();
  sub_10019B0D0(v21, v12, v22);
  v23 = *(sub_100099DF4(&qword_1002DF4D0, &unk_10023F390) + 48);
  v24 = *&v12[v23];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v12, v41);
    goto LABEL_8;
  }

  v25 = *(v20 + v23);
  v26 = v41;
  (*(v5 + 32))(v9, v20, v41);
  v27 = static AccountIdentity.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v9, v26);
  v28(v12, v26);
  if ((v27 & 1) == 0)
  {
LABEL_14:
    sub_10019B130(v18, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
    return 0;
  }

  v29 = v24 == v25;
LABEL_18:
  v38 = v29;
  sub_10019B130(v18, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  return v38;
}

uint64_t sub_10019A740(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAB8, byte_10023FA18);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019A798(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAB8, byte_10023FA18);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10019A80C(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAD0, byte_10023FA58);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10019A864(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAD0, byte_10023FA58);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10019A8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for URL();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000306C();
  sub_1000072D8();
  v13 = [objc_opt_self() ams_dataVaultDirectory];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  sub_100002728(v5, v15, 1, v9);
  sub_1000CAE2C(v5, v8);
  if (sub_100004DFC(v8, 1, v9) == 1)
  {
    sub_100004E24(v8, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors(0);
    sub_100006BB8();
    sub_10019B08C(v16, v17);
    swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000100272EB0;
    v18[2] = 1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v11 + 8))(v8, v9);
    return (*(v11 + 32))(a1, v1, v9);
  }
}

uint64_t sub_10019AB30(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  type metadata accessor for TSDataSyncDatasetGroupStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1000072D8();
  result = sub_10019A8C0(v7);
  if (!v1)
  {
    v2[3] = type metadata accessor for LiveFileStore();
    v2[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v2);
    LiveFileStore.init()();
    v10 = sub_10000BBD4();
    v11(v10);
    sub_1000081D8();
    sub_10019B0D0(a1, v2 + v12, v13);
    sub_100118C3C();
    sub_100004D68();
    return sub_10019B130(v2, v14);
  }

  return result;
}

uint64_t sub_10019AC8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  sub_100003724();
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  type metadata accessor for TSDataSyncDatasetGroupStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v10);
  sub_10000306C();
  sub_1000072D8();
  result = sub_10019A8C0(v9);
  if (!v2)
  {
    v3[3] = type metadata accessor for LiveFileStore();
    v3[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v3);
    LiveFileStore.init()();
    v12 = sub_10000BBD4();
    v13(v12);
    sub_1000081D8();
    sub_10019B0D0(a2, v3 + v14, v15);
    sub_100118EB4(a1);
    sub_100004D68();
    return sub_10019B130(v3, v16);
  }

  return result;
}

uint64_t sub_10019ADE8(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  sub_1000072D8();
  v8 = type metadata accessor for TSDataSyncDatasetGroupStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = (v11 - v10);
  result = sub_10019A8C0(v2);
  if (!v1)
  {
    v12[3] = type metadata accessor for LiveFileStore();
    v12[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v12);
    LiveFileStore.init()();
    (*(v6 + 32))(v12 + *(v8 + 20), v2, v4);
    sub_1000081D8();
    sub_10019B0D0(a1, v12 + v14, v15);
    sub_1001192A0();
    sub_100004D68();
    return sub_10019B130(v12, v16);
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors(uint64_t a1)
{
  result = qword_1002DFA80;
  if (!qword_1002DFA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019B08C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019B0D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10019B130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10019B19C()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v5 = type metadata accessor for Log();
  v0[13] = v5;
  sub_100003B78(v5);
  v0[14] = v6;
  v0[15] = swift_task_alloc();
  v7 = type metadata accessor for DictionaryUpsert();
  v0[16] = v7;
  sub_100003B78(v7);
  v0[17] = v8;
  v0[18] = swift_task_alloc();
  v9 = type metadata accessor for OnDeviceStorageError();
  v0[19] = v9;
  sub_100003B78(v9);
  v0[20] = v10;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v11 = type metadata accessor for Table();
  v0[26] = v11;
  sub_100003B78(v11);
  v0[27] = v12;
  v0[28] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v13);
}

uint64_t sub_10019B37C()
{
  sub_1000051E0();

  sub_10000EF24();
  Table.init(_:database:)();
  type metadata accessor for Connection();

  sub_10000EF24();
  v0[29] = Connection.__allocating_init(token:userId:)();
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_10019B528;
  sub_100005040(v0[25]);
  sub_1000050D8();

  return __s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF();
}

uint64_t sub_10019B528()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *v1;
  sub_100004504();
  *v3 = v2;
  *(v4 + 248) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_10019B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v21 = 0;
  v22 = 0;
  v23 = *(v12[10] + 16);
  v24 = v12[31];
  v12[32] = v23;
  v12[33] = 0;
  while (1)
  {
    if (v22 == v23)
    {
      v27 = swift_task_alloc();
      v12[38] = v27;
      *v27 = v12;
      sub_100003A70(v27);
LABEL_10:
      sub_100005040(v28);
      sub_100003128();

      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    if (v22 >= v23)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    v12[34] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_22;
    }

    sub_10000B918();
    sub_10000B11C();
    v26 = v25;

    if (v24)
    {
      v12[39] = v24;
      v29 = swift_task_alloc();
      v12[40] = v29;
      *v29 = v12;
      sub_100004D84(v29);
      goto LABEL_10;
    }

    v24 = *(v26 + 16);
    if (v24)
    {
      break;
    }

    v23 = v12[32];
    ++v22;
    v21 += 24;
  }

  v12[35] = v24;
  v12[6] = _swiftEmptyArrayStorage;
  sub_10000B50C();
  do
  {
    v12[8] = *(v26 + 32);

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    v30 = sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10019C6E0(v30);
    sub_10000AC9C();
    if (v32)
    {
      sub_1000046C8(v31);
    }

    sub_10000A670();
  }

  while (!v33);
  sub_10019C704();
  sub_10000BBEC();
  v36 = sub_10019C698(v34, v35, &protocol conformance descriptor for Table);
  sub_10000D150(v36);

  v37 = swift_task_alloc();
  v12[36] = v37;
  *v37 = v12;
  sub_100006FA8(v37);
  sub_100003128();

  return __s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_10019B854()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *v1;
  sub_100004504();
  *v3 = v2;
  *(v4 + 296) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_10019B954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = (*(v12[17] + 8))(v12[18], v12[16]);
  v21 = v12[37];
  v23 = v12[34];
  v22 = v12[35];
  v12[33] = v22;
  for (i = 24 * v23; ; i += 24)
  {
    v25 = v12[32];
    if (v23 == v25)
    {
      v28 = swift_task_alloc();
      v12[38] = v28;
      *v28 = v12;
      sub_100003A70(v28);
LABEL_10:
      sub_100005040(v29);
      sub_100003128();

      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    if (v23 >= v25)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v12[34] = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_23;
    }

    sub_10000B918();
    sub_10000B11C();
    v27 = v26;

    if (v21)
    {
      v12[39] = v21;
      v30 = swift_task_alloc();
      v12[40] = v30;
      *v30 = v12;
      sub_100004D84(v30);
      goto LABEL_10;
    }

    v21 = *(v27 + 16);
    if (v21)
    {
      break;
    }

    ++v23;
  }

  v12[35] = v22 + v21;
  if (__OFADD__(v22, v21))
  {
LABEL_24:
    __break(1u);
    return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
  }

  v12[6] = _swiftEmptyArrayStorage;
  sub_10000B50C();
  do
  {
    v12[8] = *(v27 + 32);

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    v31 = sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10019C6E0(v31);
    sub_10000AC9C();
    if (v33)
    {
      sub_1000046C8(v32);
    }

    sub_10000A670();
  }

  while (!v34);
  sub_10019C704();
  sub_10000BBEC();
  v37 = sub_10019C698(v35, v36, &protocol conformance descriptor for Table);
  sub_10000D150(v37);

  v38 = swift_task_alloc();
  v12[36] = v38;
  *v38 = v12;
  sub_100006FA8(v38);
  sub_100003128();

  return __s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_10019BBA0()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  sub_10000381C();

  return _swift_task_switch(v3);
}

uint64_t sub_10019BC9C()
{

  v0 = sub_100007484();
  v1(v0);

  v2 = sub_10000F16C();

  return v3(v2);
}

uint64_t sub_10019BD60()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[19];
  v6 = v0[20];
  sub_1000081F0();
  sub_10019C698(v7, v8, &protocol conformance descriptor for OnDeviceStorageError);
  swift_allocError();
  (*(v6 + 32))(v9, v4, v5);

  (*(v3 + 8))(v1, v2);
  sub_100006BD0();

  sub_100002E08();

  return v10();
}

uint64_t sub_10019BE90()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  sub_10000381C();

  return _swift_task_switch(v3);
}

void sub_10019BF8C()
{
  sub_1000051E0();
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  (*(v3 + 8))(v1, v2);
  sub_100006BD0();

  sub_100002E08();
  sub_1000050D8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10019C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[24];
  v14 = v12[19];
  v15 = v12[20];
  v17 = v12[17];
  v16 = v12[18];
  v18 = v12[16];
  sub_1000081F0();
  sub_10019C698(v19, v20, &protocol conformance descriptor for OnDeviceStorageError);
  v21 = swift_allocError();
  (*(v15 + 32))(v22, v13, v14);
  (*(v17 + 8))(v16, v18);
  v12[39] = v21;
  v23 = swift_task_alloc();
  v12[40] = v23;
  *v23 = v12;
  sub_100004D84(v23);
  v25 = sub_100005040(v24);

  return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_10019C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = v12[28];
  v14 = v12[26];
  v15 = v12[27];
  v17 = v12[20];
  v16 = v12[21];
  v18 = v12[19];
  sub_1000081F0();
  sub_10019C698(v19, v20, &protocol conformance descriptor for OnDeviceStorageError);
  swift_allocError();
  (*(v17 + 32))(v21, v16, v18);

  (*(v15 + 8))(v13, v14);
  sub_100006BD0();

  sub_100002E08();
  sub_100003128();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_10019C29C()
{
  v12 = v0[23];
  v1 = v0[19];
  v2 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v11 = *(v0[20] + 32);
  v11();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v4 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v0[5] = v1;
  v5 = sub_100007914(v0 + 2);
  (v11)(v5, v12, v1);
  static LogInterpolation.safe(_:)();
  sub_100009DF4((v0 + 2));
  Log.error(_:)();

  (*(v13 + 8))(v2, v14);
  v6 = sub_100007484();
  v7(v6);

  v8 = sub_10000F16C();

  return v9(v8);
}

uint64_t sub_10019C4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10019C5A8;

  return sub_10019B19C();
}

uint64_t sub_10019C5A8()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  v4 = *v1;
  sub_100004504();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_10019C698(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019C6E0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10019C704()
{
}

uint64_t sub_10019C724()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  v4 = type metadata accessor for Log();
  v0[13] = v4;
  sub_100003B78(v4);
  v0[14] = v5;
  v0[15] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10019C830;
  sub_100006FDC(0x644972657375);

  return sub_10019CF68();
}

uint64_t sub_10019C830()
{
  sub_100004194();
  v2 = *v1;
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  v2[17] = v5;
  v2[18] = v6;
  v2[19] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v2[20] = v8;
    *v8 = v4;
    v8[1] = sub_10019C9B0;
    sub_100006FDC(0x6449746E65696C63);

    return sub_10019CF68();
  }
}

uint64_t sub_10019C9B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_10000452C();
  *v7 = v6;
  v8 = *v3;
  sub_10000452C();
  *v9 = v8;
  v6[21] = v2;

  if (!v2)
  {
    v6[22] = a2;
    v6[23] = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v10);
}

uint64_t sub_10019CAD8()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [objc_opt_self() buildVersion];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (os_variant_has_internal_content())
  {
    v7 = 0x6C616E7265746E69;
  }

  else
  {
    v7 = 0x72656D6F74737563;
  }

  v8 = v0[23];
  v9 = v0[17];
  v10 = v0[10];

  *v10 = v8;
  v10[1] = v1;
  v10[2] = v9;
  v10[3] = v2;
  v10[4] = v4;
  v10[5] = v6;
  v10[6] = v7;
  v10[7] = 0xE800000000000000;
  v11 = v0[1];

  return v11();
}

uint64_t sub_10019CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000336C(a1, a2, a3);
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  *(sub_100008208() + 16) = xmmword_1002329D0;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007800(&type metadata for TSDataSyncMetricsIdentifiers);

  sub_100007E54();
  sub_1000074A8();
  v8 = v4[6];
  v9 = v4[7];
  v4[5] = v9;
  v10 = sub_100007914(v4 + 2);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  static LogInterpolation.sensitive(_:)();
  sub_100009DF4((v4 + 2));
  Log.default(_:)();

  (*(v5 + 8))(v3);

  sub_10000682C();

  return v11();
}

uint64_t sub_10019CDA0()
{

  sub_10000336C(v3, v4, v5);
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  *(sub_100008208() + 16) = xmmword_1002329D0;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007800(&type metadata for TSDataSyncMetricsIdentifiers);

  sub_100007E54();
  sub_1000074A8();
  v8 = v1[6];
  v9 = v1[7];
  v1[5] = v9;
  v10 = sub_100007914(v1 + 2);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  static LogInterpolation.sensitive(_:)();
  sub_100009DF4((v1 + 2));
  Log.default(_:)();

  (*(v2 + 8))(v0);

  sub_10000682C();

  return v11();
}

uint64_t sub_10019CF68()
{
  sub_100004194();
  v0[23] = v1;
  v0[24] = v2;
  v0[21] = v3;
  v0[22] = v4;
  v0[19] = v5;
  v0[20] = v6;
  v7 = type metadata accessor for AccountIdentity.DSID();
  v0[25] = v7;
  sub_100003B78(v7);
  v0[26] = v8;
  v0[27] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v9);
}

uint64_t sub_10019D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[27];
  v16 = v14[25];
  v17 = v14[26];
  v34 = v14[24];
  AccountIdentity.dsid.getter();
  v18 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v20 = [v18 ams_iTunesAccountWithDSID:isa];
  v14[28] = v20;

  (*(v17 + 8))(v15, v16);
  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 identifierForAccount:v20 bag:v34 bagNamespace:v22 keyName:v23];
  v14[29] = v24;

  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_10019D258;
  v25 = swift_continuation_init();
  v14[17] = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5D24;
  v14[13] = &unk_1002BB7D8;
  v14[14] = v25;
  [v24 resultWithCompletion:?];

  return _swift_continuation_await(v14 + 2, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10019D258()
{
  sub_100004194();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10019D35C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = String.init(_:)(v0[18]);

  v4 = v0[1];

  return v4(v3._countAndFlagsBits, v3._object);
}

uint64_t sub_10019D3F8(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10019D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10019D57C;

  return sub_10019D688(v11, a1, a2, a3, a5, a6, a7);
}

uint64_t sub_10019D57C()
{
  sub_100007F3C();
  v3 = v2;
  v5 = v4;
  v10 = *v1;

  v8 = *(v10 + 8);
  if (!v0)
  {
    v6 = v5;
    v7 = v3;
  }

  return v8(v6, v7);
}

uint64_t sub_10019D688(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a6;
  *(v7 + 328) = a7;
  *(v7 + 304) = a4;
  *(v7 + 312) = a5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 408) = a1;
  v8 = type metadata accessor for AccountIdentity.DSID();
  *(v7 + 336) = v8;
  *(v7 + 344) = *(v8 - 8);
  *(v7 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_10019D754);
}

uint64_t sub_10019D754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *(v14 + 408);
  AccountIdentity.dsid.getter();
  if (v18)
  {
    if (v18 == 1)
    {
      v47 = v14 + 280;
      v19 = v14 + 208;
      v20 = v14 + 80;
      v21 = sub_100004DAC();
      *(v14 + 360) = v22(v21);
      (*(v17 + 8))(v15, v16);
      objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      v25 = sub_100006844(v24, "identifierForAccount:bag:bagNamespace:keyName:");
      *(v14 + 368) = v25;

      *(v14 + 80) = v14;
      *(v14 + 120) = v14 + 280;
      *(v14 + 88) = sub_10019DB04;
      v26 = swift_continuation_init();
      *(v14 + 264) = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      *(v14 + 208) = _NSConcreteStackBlock;
      *(v14 + 216) = 1107296256;
      *(v14 + 224) = sub_1000C5D24;
      *(v14 + 232) = &unk_1002BB878;
      *(v14 + 240) = v26;
    }

    else
    {
      v20 = v14 + 16;
      v47 = v14 + 272;
      v19 = v14 + 144;
      v35 = sub_100004DAC();
      *(v14 + 384) = v36(v35);
      (*(v17 + 8))(v15, v16);
      objc_opt_self();
      v37 = String._bridgeToObjectiveC()();
      v38 = String._bridgeToObjectiveC()();
      v25 = sub_100006844(v38, "identifierForAccount:bag:bagNamespace:keyName:");
      *(v14 + 392) = v25;

      *(v14 + 16) = v14;
      *(v14 + 56) = v14 + 272;
      *(v14 + 24) = sub_10019DD0C;
      v39 = swift_continuation_init();
      *(v14 + 200) = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      *(v14 + 144) = _NSConcreteStackBlock;
      *(v14 + 152) = 1107296256;
      *(v14 + 160) = sub_1000C5D24;
      *(v14 + 168) = &unk_1002BB850;
      *(v14 + 176) = v39;
    }

    [v25 resultWithCompletion:{v19, v47}];

    return _swift_continuation_await(v20, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v28 = *(v14 + 344);
    v27 = *(v14 + 352);
    v29 = *(v14 + 336);
    sub_10019DFF4();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v28 + 8))(v27, v29);

    v33 = *(v14 + 8);

    return v33(v30, v32);
  }
}

uint64_t sub_10019DB04()
{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_10019DC90;
  }

  else
  {
    v2 = sub_10019DC14;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019DC14()
{
  sub_100007F3C();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  String.init(_:)(*(v0 + 280));

  v3 = sub_100006FF8();

  return v4(v3);
}

uint64_t sub_10019DC90()
{
  sub_100007F3C();
  v1 = v0[46];
  v2 = v0[45];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019DD0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_10019DE98;
  }

  else
  {
    v2 = sub_10019DE1C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019DE1C()
{
  sub_100007F3C();
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  String.init(_:)(*(v0 + 272));

  v3 = sub_100006FF8();

  return v4(v3);
}

uint64_t sub_10019DE98()
{
  sub_100007F3C();
  v1 = v0[49];
  v2 = v0[48];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10019E054;

  return sub_10019D4A0(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_10019DFF4()
{
  result = qword_1002DD3E0;
  if (!qword_1002DD3E0)
  {
    v3 = type metadata accessor for AccountIdentity.DSID();
    result = swift_getWitnessTable(&protocol conformance descriptor for AccountIdentity.DSID, v3, v0, v1);
    atomic_store(result, &qword_1002DD3E0);
  }

  return result;
}

uint64_t sub_10019E068(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v51 = a1;
  v52 = a2;
  v4 = *a3;
  v45 = a3[1];
  v46 = v4;
  v5 = *(a3 + 4);
  v43 = *(a3 + 5);
  v44 = v5;
  v42 = *(a3 + 12);
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_1000037D4();
  v47 = v7;
  __chkstk_darwin(v8);
  type metadata accessor for Log();
  sub_100003724();
  v49 = v10;
  v50 = v9;
  __chkstk_darwin(v9);
  sub_1000037D4();
  v41 = v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  static Log.tsDataSync.getter();
  v15 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v16 = *(type metadata accessor for LogInterpolation() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v48 = *(v16 + 72);
  v39 = v17 + 2 * v48;
  v40 = v15;
  v18 = swift_allocObject();
  v38 = xmmword_1002329F0;
  *(v18 + 16) = xmmword_1002329F0;
  v19 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x696C756465686353;
  v20._object = 0xEC0000002020676ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v21 = *a3;
  if (*a3 == 2)
  {
    v22 = 0;
    v23 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = *(a3 + 8);
    *(v22 + 40) = *(a3 + 24);
    *(v22 + 52) = *(a3 + 36);
    v23 = &unk_1002BC0A8;
  }

  v53[0] = v22;
  v54 = v23;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v53);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v25 = *(v49 + 8);
  v25(v14, v50);
  if (*a3 != 2)
  {
    v26 = v41;
    static Log.tsDataSync.getter();
    *(swift_allocObject() + 16) = v38;
    v27 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._object = 0x8000000100272EF0;
    v28._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v54 = &unk_1002BC0A8;
    v29 = swift_allocObject();
    v53[0] = v29;
    v30 = v45;
    *(v29 + 16) = v46;
    *(v29 + 32) = v30;
    v31 = v43;
    *(v29 + 48) = v44;
    *(v29 + 56) = v31;
    *(v29 + 64) = v42;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v53);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v25(v26, v50);
    v33 = String.utf8CString.getter();
    xpc_activity_unregister((v33 + 32));
  }

  v34 = swift_allocObject();
  v36 = v51;
  v35 = v52;
  *(v34 + 16) = v51;
  *(v34 + 24) = v35;

  sub_1001AE964(v36, v35, a3, &unk_10023FC58, v34);
}

uint64_t sub_10019E534(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019E554);
}

uint64_t sub_10019E554()
{
  sub_10019E5B4(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10019E5B4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v15 = type metadata accessor for Log();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v14;
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6B73617420534144;
  v11._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v16[3] = &type metadata for String;
  v16[0] = v10;
  v16[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v16);
  v12._countAndFlagsBits = 0x676E696E6E757220;
  v12._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v5 + 8))(v8, v15);
  if (qword_1002DA5A8 != -1)
  {
    swift_once();
  }

  return sub_10019E914(v10, a2);
}

uint64_t sub_10019E87C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000CB6D0;

  return sub_10019E534(v2, v3);
}

uint64_t sub_10019E914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v6 = sub_1000030B8(v5);
  __chkstk_darwin(v6);
  v28 = &v27 - v7;
  v8 = type metadata accessor for Log();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v14 = type metadata accessor for LogInterpolation();
  sub_100003B78(v14);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v31[3] = ObjectType;
  v31[0] = v3;
  v15 = v3;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v31);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v10 + 8))(v13, v8);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  sub_100008F38(0xD000000000000015, 0x8000000100275C90);
  v18 = type metadata accessor for TaskPriority();
  v19 = v28;
  sub_100002728(v28, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v30;
  v20[4] = v29;
  v20[5] = v21;
  v20[6] = v15;
  v22 = v15;

  sub_10013ABD4(0, 0, v19, &unk_10023FE80, v20);

  v23 = sub_10000D4B8(21);
  return sub_1001AC540(v23, v24, v25);
}

void *sub_10019EC38()
{
  v1 = v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock));
  if (*(v1 + 8))
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
    sub_1001512EC(v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics, v5);
    type metadata accessor for TSDataSyncCoordinatorActor();
    swift_allocObject();
    v2 = sub_10017AA10(v3, &type metadata for TSDataSyncSyncDASScheduler, &off_1002BB8C0, v5, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, &type metadata for TSDataSyncMetricsIdentifierStore, &off_1002BB840);
    *(v1 + 8) = v2;
  }

  os_unfair_lock_unlock(v1);
  return v2;
}

id sub_10019ED1C()
{
  result = [objc_allocWithZone(type metadata accessor for TSDataSyncService()) init];
  qword_1003106D8 = result;
  return result;
}

id sub_10019ED4C()
{
  if (qword_1002DA5A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003106D8;

  return v1;
}

uint64_t sub_10019EDD0(uint64_t a1)
{
  v2 = sub_1001A4A6C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019EE0C(uint64_t a1)
{
  v2 = sub_1001A4A6C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10019EE64(uint64_t a1)
{
  v2 = sub_1001A4C28();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10019EEA0(uint64_t a1)
{
  v2 = sub_1001A4C28();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

id sub_10019EEDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_opt_self() defaultBag];
  v5 = objc_allocWithZone(type metadata accessor for SendableBag());
  v6 = SendableBag.init(wrappedBag:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag] = v6;
  v11 = type metadata accessor for MetricsOnAllBuilds();
  v12 = &protocol witness table for MetricsOnAllBuilds;
  sub_100007914(&v10);
  v7 = v6;
  MetricsOnAllBuilds.init(bag:)();
  sub_10000601C(&v10, &v1[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics]);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10019EFF4()
{
  sub_100004194();
  v1[81] = v0;
  v1[80] = v2;
  v1[82] = swift_getObjectType();
  v3 = type metadata accessor for MetricsEvent();
  v1[83] = v3;
  sub_100003B78(v3);
  v1[84] = v4;
  v1[85] = sub_100003FA8();
  v5 = type metadata accessor for FlagKeys();
  v1[86] = v5;
  sub_100003B78(v5);
  v1[87] = v6;
  v1[88] = sub_100003FA8();
  v7 = type metadata accessor for Date();
  v1[89] = v7;
  sub_100003B78(v7);
  v1[90] = v8;
  v1[91] = sub_1000D3604();
  v1[92] = swift_task_alloc();
  v9 = type metadata accessor for TSDataSyncEntryPoint(0);
  v1[93] = v9;
  sub_1000030B8(v9);
  v1[94] = sub_100003FA8();
  v10 = type metadata accessor for UUID();
  v1[95] = v10;
  sub_100003B78(v10);
  v1[96] = v11;
  v1[97] = sub_100003FA8();
  v12 = type metadata accessor for TSDataSyncExternalEvent(0);
  v1[98] = v12;
  sub_1000030B8(v12);
  v1[99] = sub_100003FA8();
  v13 = type metadata accessor for AccountIdentity();
  v1[100] = v13;
  sub_100003B78(v13);
  v1[101] = v14;
  v1[102] = sub_1000D3604();
  v1[103] = swift_task_alloc();
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v15);
  v1[104] = sub_100003FA8();
  v16 = type metadata accessor for Log();
  v1[105] = v16;
  sub_100003B78(v16);
  v1[106] = v17;
  v1[107] = sub_1000D3604();
  v1[108] = swift_task_alloc();
  v18 = sub_10000EF80();

  return _swift_task_switch(v18);
}

uint64_t sub_10019F2B0()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  static Log.tsDataSync.getter();
  *(v0 + 872) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 880) = *(v4 + 72);
  *(v0 + 1024) = *(v5 + 80);
  *(sub_1001A4C84() + 16) = xmmword_1002329F0;
  *(v0 + 416) = v1;
  *(v0 + 392) = v2;
  v6 = v2;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v7 = *(v0 + 864);
  v8 = *(v0 + 848);
  v20 = *(v0 + 840);
  v9 = *(v0 + 640);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 392));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x8000000100275BE0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = sub_100003AE0(0, &qword_1002DF148, NSDictionary_ptr);
  *(v0 + 888) = v11;
  *(v0 + 448) = v11;
  *(v0 + 424) = v9;
  v12 = v9;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 424, &unk_1002DFC10, &qword_10022E6D0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v14 = *(v8 + 8);
  *(v0 + 896) = v14;
  *(v0 + 904) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v20);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v15 = *(v0 + 648);
  *(v0 + 912) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD00000000000001ALL, v16);
  *(v0 + 920) = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 928) = *(v15 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
  v17 = swift_task_alloc();
  *(v0 + 936) = v17;
  *v17 = v0;
  v17[1] = sub_10019F570;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_10019F570()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 944) = v0;

  if (!v0)
  {
    *(v5 + 1028) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v9);
}

uint64_t sub_10019F67C()
{
  if (*(v0 + 1028) != 1)
  {
    sub_1000074C8();
    sub_1001A4DC0();
    v4 = sub_10000D4B8(26);
    sub_1001AC540(v4, v5, v6);

    sub_100003844();
    sub_1000D3574();

    __asm { BRAA            X1, X16 }
  }

  sub_1001A0A90(*(v0 + 640), v0 + 352);
  if (!*(v0 + 376))
  {
    sub_100004E7C(v0 + 352, &qword_1002DB958, &qword_100232B60);
LABEL_16:
    sub_1001A4980();
    swift_allocError();
    *v23 = 3;
    *(v23 + 8) = 2;
    v20 = swift_willThrow();
    goto LABEL_17;
  }

  v2 = *(v0 + 640);
  sub_10000601C((v0 + 352), v0 + 312);
  *(v0 + 608) = 7565409;
  *(v0 + 616) = 0xE300000000000000;
  v3 = [v2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  *(v0 + 520) = v50;
  *(v0 + 536) = v51;
  if (!*(v0 + 544))
  {
    sub_100004E7C(v0 + 520, &unk_1002DFC10, &qword_10022E6D0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_100004118((v0 + 312));
    goto LABEL_16;
  }

  v9 = *(v0 + 944);
  v10 = *(v0 + 824);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  v13 = *(v0 + 632);
  *(v0 + 952) = v13;
  sub_10011A364(v13);
  *(v0 + 960) = v14;
  v15 = sub_10000C4FC((v0 + 312), *(v0 + 336));
  v16 = *(v11 + 16);
  v16(v10, v15, v12);
  v17 = sub_10011A504(v13, v10);
  v18 = (v11 + 8);
  v19 = *(v0 + 824);
  v1 = *(v0 + 800);
  if (v9)
  {
    (*v18)(v19, *(v0 + 800));

    v20 = sub_100004118((v0 + 312));
LABEL_17:
    sub_10000ACB4(v20, v21, v22);
    v24 = sub_100002AE0();
    sub_1001A4E00(v24, xmmword_1002329D0);
    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C778();

    sub_100004118((v0 + 456));
    LogInterpolation.init(stringLiteral:)();
    sub_100004994();
    sub_100005190();
    sub_10000B7EC();
    (*(v27 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C(v0 + 488, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v28 = sub_100003EC4();
    v1(v28);
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 1000) = v29;
    *v29 = v30;
    sub_100003A98(v29);
    sub_1000D3574();

    return sub_10017AECC(v31, v32);
  }

  v35 = *(v0 + 792);
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 768);
  v48 = *(v0 + 760);
  v49 = *(v0 + 752);
  (*v18)(v19, v1);
  static Date.now.getter();
  v39 = sub_10000C4FC((v0 + 312), *(v0 + 336));
  v16(v35 + v36[5], v39, v1);
  UUID.init()();
  v40 = UUID.uuidString.getter();
  v42 = v41;
  (*(v38 + 8))(v37, v48);
  v43 = v35 + v36[6];
  *v43 = 0;
  *(v43 + 8) = 1;
  *(v35 + v36[7]) = 0;
  *(v35 + v36[8]) = v17;
  v44 = (v35 + v36[9]);
  *v44 = 0;
  v44[1] = 0;
  v45 = (v35 + v36[10]);
  *v45 = v40;
  v45[1] = v42;
  sub_1001A47CC(v35, v49);
  swift_storeEnumTagMultiPayload();
  *(v0 + 968) = sub_10019EC38();
  v46 = swift_task_alloc();
  *(v0 + 976) = v46;
  *v46 = v0;
  v46[1] = sub_10019FC30;
  sub_100005040(*(v0 + 752));
  sub_1000D3574();

  return sub_10017B18C();
}

uint64_t sub_10019FC30()
{
  sub_100007F3C();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 984) = v0;

  sub_10000A688();

  return _swift_task_switch(v4);
}

uint64_t sub_10019FD6C()
{
  v1 = *(v0 + 752);

  sub_100004DD0();
  sub_1001A4830(v1, v2);
  sub_100006868();
  sub_100004118((v0 + 312));
  sub_1000074C8();
  sub_1001A4DC0();
  v3 = sub_10000D4B8(26);
  sub_1001AC540(v3, v4, v5);

  sub_100003844();

  return v6();
}

uint64_t sub_10019FE94()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 1008) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_10019FF90()
{
  v1 = v0[126];
  type metadata accessor for TSDataSyncConfigAccessActor(0);
  sub_100172FD8(v0 + 34);
  if (v1)
  {
    sub_10018A46C((v0 + 2));

    sub_100002EF4();
    sub_1001A4DC0();
    v2 = sub_10000D4B8(26);
    sub_1001AC540(v2, v3, v4);

    sub_100002E08();
    sub_100008A70();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[100];
  v10 = sub_10000C4FC(v0 + 34, v0[37]);
  (*(v8 + 16))(v7, v10, v9);
  swift_task_alloc();
  sub_10000DEA0();
  v0[127] = v11;
  *v11 = v12;
  v11[1] = sub_1001A0178;
  sub_100008A70();

  return sub_10019C724();
}

uint64_t sub_1001A0178()
{
  sub_100007F3C();
  sub_1000030F8();
  v2 = v1;
  sub_1000077D8();
  *v3 = v2;
  v5 = v4[102];
  v6 = v4[101];
  v7 = v4[100];
  v8 = *v0;
  sub_100004504();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_100004118((v2 + 272));
  v10 = sub_10000EF80();

  return _swift_task_switch(v10);
}

uint64_t sub_1001A02B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1001A4E64();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 704);
  v32 = *(v28 + 696);
  v33 = *(v28 + 688);
  v34 = *(v28 + 648);
  *(v28 + 576) = *(v28 + 192);
  sub_1001A491C(v28 + 576, v28 + 592, &qword_1002DCC48, &qword_100238200);
  sub_10018A46C(v28 + 16);
  v35 = OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics;
  static Date.now.getter();
  (*(v32 + 104))(v31, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v33);
  v36 = FlagKeys.isEnabled.getter();
  (*(v32 + 8))(v31, v33);
  if (v36)
  {
    static Date.now.getter();
    v37 = *(v28 + 736);
    v38 = *(v28 + 728);
    v39 = *(v28 + 720);
    v40 = *(v28 + 712);
    if (*(v28 + 584))
    {
      v69 = *(v28 + 712);
      v67 = *(v28 + 728);
      v41 = (v34 + v35);
      v42 = *(v28 + 680);
      v43 = *(v28 + 672);
      v65 = *(v28 + 664);
      sub_10011DE50();
      v45 = v44;
      sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);
      a13 = v45;
      a17 = &type metadata for String;
      a14 = 0xD000000000000013;
      a15 = 0x8000000100275C50;
      sub_1001A8ED8(&a14, 0x636F4C726F727265, 0xED00006E6F697461);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10000C4FC(v41, v41[3]);
      sub_100002CC0();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      sub_100004E7C(v28 + 576, &qword_1002DCC48, &qword_100238200);
      (*(v43 + 8))(v42, v65);
      v46 = *(v39 + 8);
      v46(v67, v69);
      v46(v37, v69);
    }

    else
    {
      sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);

      v50 = *(v39 + 8);
      v50(v38, v40);
      v50(v37, v40);
    }
  }

  else
  {
    v47 = *(v28 + 736);
    v48 = *(v28 + 720);
    v49 = *(v28 + 712);
    sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);

    sub_100004E7C(v28 + 576, &qword_1002DCC48, &qword_100238200);
    (*(v48 + 8))(v47, v49);
  }

  sub_1000074C8();
  v66 = v52;
  v68 = v51;
  sub_1001A4DC0();
  v70 = v53;
  v71 = v54;
  sub_1001AC540(0xD00000000000001ALL, v55 | 0x8000000000000000, 2);

  sub_100003844();
  sub_1000D3404();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, v66, v68, v70, v71, a13, a14, a15, a16, a17, a18, a19, a20);
}