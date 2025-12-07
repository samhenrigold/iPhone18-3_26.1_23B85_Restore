uint64_t sub_100509644()
{
  v1 = v0[323];
  v2 = v0[322];
  v3 = v0[321];
  v4 = v0[320];
  v5 = v0[317];
  v6 = v0[316];
  v7 = v0[312];
  v8 = v0[311];
  v9 = v0[310];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100509778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[131] = a4;
  v4[130] = a1;
  v6 = type metadata accessor for Logger();
  v4[132] = v6;
  v4[133] = *(v6 - 8);
  v4[134] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[135] = v7;
  v4[136] = *(v7 - 8);
  v4[137] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v4[138] = v8;
  v4[139] = *(v8 - 8);
  v4[140] = swift_task_alloc();
  v9 = type metadata accessor for DIPBackoffStrategy();
  v4[141] = v9;
  v4[142] = *(v9 - 8);
  v4[143] = swift_task_alloc();
  v10 = type metadata accessor for DIPRetrier();
  v4[144] = v10;
  v4[145] = *(v10 - 8);
  v4[146] = swift_task_alloc();

  return _swift_task_switch(sub_1005099B0, a4, 0);
}

uint64_t sub_1005099B0()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  *v1 = 0x3FA999999999999ALL;
  (*(v2 + 104))(v1, enum case for DIPBackoffStrategy.exponential(_:), v3);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v4 = swift_task_alloc();
  v0[147] = v4;
  v5 = sub_100007224(&qword_100842B48, &unk_1006DFD30);
  *v4 = v0;
  v4[1] = sub_100509ACC;
  v6 = v0[131];

  return DIPRetrier.retry<A>(operation:)(v0 + 2, &unk_1006E71F0, v6, v5);
}

uint64_t sub_100509ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  *(*v1 + 1184) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    v5 = v2[131];
    (*v4)(v2[146], v2[144]);
    v6 = sub_100509D60;
  }

  else
  {
    v5 = v2[131];
    (*v4)(v2[146], v2[144]);
    v6 = sub_100509C38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100509C38()
{
  v1 = v0[131];
  v2 = v0[130];
  memcpy(v0 + 69, v0 + 2, 0x1E8uLL);
  sub_10050AF8C(v0[67], v0[68]);

  memcpy(v2, v0 + 69, 0x1E8uLL);
  *(v1 + 192) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100509D60()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[133];
  v10 = v0[134];
  v11 = v0[132];
  v12 = v0[131];
  (*(v0[136] + 104))(v0[137], enum case for DIPError.Code.internalError(_:), v0[135]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10050AF44(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v2 + 16);
  v5(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v4 + 8))(v10, v11);

  swift_allocError();
  v5(v7, v1, v3);
  swift_willThrow();

  (*(v2 + 8))(v1, v3);
  *(v12 + 192) = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10050A000(uint64_t a1, uint64_t a2)
{
  *(v2 + 560) = a2;
  *(v2 + 552) = a1;
  return _swift_task_switch(sub_10050A024, 0, 0);
}

uint64_t sub_10050A024()
{
  sub_10000BA08((*(v0 + 560) + 152), *(*(v0 + 560) + 176));
  v1 = swift_task_alloc();
  *(v0 + 568) = v1;
  *v1 = v0;
  v1[1] = sub_10050A0D0;

  return sub_1005B16AC(v0 + 16, 0);
}

uint64_t sub_10050A0D0()
{
  v2 = *v1;
  v3 = *v1;
  v3[72] = v0;
  v3[73] = v2[2];
  *(v3 + 37) = *(v3 + 3);
  v3[76] = v2[5];
  *(v3 + 77) = *(v3 + 3);
  v3[79] = v2[8];
  v3[80] = v3[9];
  v3[81] = v2[10];
  v3[82] = v2[11];
  v4 = *(v3 + 7);
  *(v3 + 83) = *(v3 + 6);
  *(v3 + 85) = v4;
  v3[87] = v2[16];
  *(v3 + 44) = *(v3 + 17);
  v3[90] = v2[19];
  *(v3 + 91) = *(v3 + 10);
  v3[93] = v2[22];
  v22 = *(v3 + 184);
  v3[94] = v2[24];
  v21 = *(v3 + 200);
  v3[95] = v2[26];
  v3[96] = v2[27];
  v3[97] = v2[28];
  v20 = *(v3 + 232);
  v3[98] = v2[30];
  v19 = *(v3 + 248);
  v3[99] = v2[32];
  v5 = *(v3 + 264);
  v3[100] = v2[34];
  v6 = *(v3 + 280);
  v3[101] = v2[36];
  v7 = *(v3 + 296);
  v8 = *(v3 + 20);
  *(v3 + 51) = *(v3 + 19);
  *(v3 + 52) = v8;
  v9 = *(v3 + 22);
  *(v3 + 53) = *(v3 + 21);
  *(v3 + 54) = v9;
  v3[110] = v2[46];
  v10 = *(v3 + 376);
  v3[111] = v2[48];
  v11 = *(v3 + 392);
  *(v3 + 1025) = *(v3 + 393);
  v3[112] = v2[50];
  v12 = *(v3 + 408);
  v3[113] = v2[52];
  v13 = *(v3 + 424);
  v14 = *(v3 + 28);
  *(v3 + 57) = *(v3 + 27);
  *(v3 + 58) = v14;
  *(v3 + 1026) = *(v3 + 464);
  v15 = *(v3 + 61);
  *(v3 + 59) = *(v3 + 59);
  *(v3 + 60) = v15;
  v16 = *(v3 + 65);
  *(v3 + 61) = *(v3 + 63);
  *(v3 + 62) = v16;
  *(v3 + 63) = *(v3 + 67);

  if (v0)
  {
    v17 = sub_10050A71C;
  }

  else
  {
    *(v3 + 1024) = v22;
    *(v3 + 1032) = v21;
    *(v3 + 1040) = v20;
    *(v3 + 1048) = v19;
    *(v3 + 1056) = v5;
    *(v3 + 1064) = v6;
    *(v3 + 1072) = v7;
    *(v3 + 1080) = v10;
    *(v3 + 1088) = v11;
    *(v3 + 1096) = v12;
    *(v3 + 1104) = v13;
    v17 = sub_10050A4F4;
  }

  return _swift_task_switch(v17, 0, 0);
}

uint64_t sub_10050A4F4()
{
  v1 = *(v0 + 1026);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 1025);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 808);
  v8 = *(v0 + 800);
  v9 = *(v0 + 792);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = *(v0 + 744);
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 696);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 608);
  v23 = *(v0 + 600);
  v24 = *(v0 + 552);
  v25 = *(v0 + 616);
  v26 = *(v0 + 944);
  v27 = *(v0 + 960);
  v29 = *(v0 + 992);
  v28 = *(v0 + 1008);
  v30 = *(v0 + 912);
  v31 = *(v0 + 928);
  v32 = *(v0 + 816);
  v33 = *(v0 + 832);
  v34 = *(v0 + 848);
  v35 = *(v0 + 864);
  v36 = *(v0 + 664);
  v37 = *(v0 + 680);
  v38 = *(v0 + 728);
  v39 = *(v0 + 976);
  *v24 = *(v0 + 584);
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  *(v24 + 32) = v25;
  *(v24 + 48) = v21;
  *(v24 + 56) = v20;
  *(v24 + 64) = v19;
  *(v24 + 72) = v18;
  *(v24 + 80) = v36;
  *(v24 + 96) = v37;
  *(v24 + 112) = v17;
  *(v24 + 128) = v16;
  *(v24 + 136) = v15;
  *(v24 + 144) = v38;
  *(v24 + 160) = v14;
  *(v24 + 168) = *(v0 + 1024);
  *(v24 + 176) = v13;
  *(v24 + 184) = *(v0 + 1032);
  *(v24 + 192) = v12;
  *(v24 + 208) = v11;
  *(v24 + 216) = *(v0 + 1040);
  *(v24 + 224) = v10;
  *(v24 + 232) = *(v0 + 1048);
  *(v24 + 240) = v9;
  *(v24 + 248) = *(v0 + 1056);
  *(v24 + 256) = v8;
  *(v24 + 264) = *(v0 + 1064);
  *(v24 + 272) = v7;
  *(v24 + 280) = *(v0 + 1072);
  *(v24 + 288) = v32;
  *(v24 + 304) = v33;
  *(v24 + 320) = v34;
  *(v24 + 336) = v35;
  *(v24 + 352) = v6;
  *(v24 + 360) = *(v0 + 1080);
  *(v24 + 368) = v5;
  *(v24 + 376) = *(v0 + 1088);
  *(v24 + 377) = v4;
  *(v24 + 384) = v3;
  *(v24 + 392) = *(v0 + 1096);
  *(v24 + 400) = v2;
  *(v24 + 408) = *(v0 + 1104);
  *(v24 + 416) = v30;
  *(v24 + 432) = v31;
  *(v24 + 448) = v1;
  *(v24 + 456) = v26;
  *(v24 + 472) = v27;
  *(v24 + 488) = v39;
  *(v24 + 504) = v29;
  *(v24 + 520) = v28;
  v40 = enum case for DIPRetrier.RetryResult.success<A>(_:);
  v41 = sub_100007224(&qword_1008467B0, &qword_1006E7200);
  (*(*(v41 - 8) + 104))(v24, v40, v41);
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10050A71C()
{
  v1 = v0[69];
  *v1 = v0[72];
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
  v3 = sub_100007224(&qword_1008467B0, &qword_1006E7200);
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10050A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[125] = a4;
  v7 = sub_100007224(&qword_1008467A8, &unk_1006E71D8);
  v5[126] = v7;
  v5[127] = *(v7 - 8);
  v5[128] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[129] = v8;
  v9 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v8 = v5;
  v8[1] = sub_10050A910;

  return Task.value.getter(v5 + 2, a5, &type metadata for ActiveConfig, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_10050A910()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v2 = sub_10050AAE8;
  }

  else
  {
    v2 = sub_10050AA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10050AA24()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  memcpy(v0 + 63, v0 + 2, 0x1E8uLL);
  sub_100007224(&qword_100846790, &qword_1006E71A8);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10050AAE8()
{
  v0[124] = v0[130];
  sub_100007224(&qword_100846790, &qword_1006E71A8);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10050AB74()
{
  sub_10000BB78((v0 + 112));
  sub_10000BB78((v0 + 152));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10050ABE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100509778(a1, v4, v5, v6);
}

uint64_t sub_10050AC98()
{
  v1 = sub_100007224(&qword_100846790, &qword_1006E71A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10050AD7C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100846790, &qword_1006E71A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10050A7DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10050AEA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_10050A000(a1, v1);
}

uint64_t sub_10050AF44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10050AF8C(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegionCheck.getter();
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "ConfigurationManager region check disabled, skipping updateGlobalConfiguration", v14, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }

  else if (a2)
  {
    v15 = a2 + 64;
    v16 = 1 << *(a2 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a2 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (v18)
    {
LABEL_14:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v20 << 6);
      v25 = *(*(a2 + 56) + v24);
      if (v25 != 2 && (v25 & 1) != 0)
      {
        v26 = (*(a2 + 48) + 16 * v24);
        v27 = *v26;
        v55 = v26[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1003C5110(0, *(v21 + 2) + 1, 1, v21);
        }

        v30 = *(v21 + 2);
        v29 = *(v21 + 3);
        if (v30 >= v29 >> 1)
        {
          v21 = sub_1003C5110((v29 > 1), v30 + 1, 1, v21);
        }

        *(v21 + 2) = v30 + 1;
        v31 = &v21[16 * v30];
        v32 = v55;
        *(v31 + 4) = v54;
        *(v31 + 5) = v32;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v22 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(a2 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a2 + 64);
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (v35)
    {
LABEL_30:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = v40 | (v37 << 6);
      v42 = *(*(a2 + 56) + v41);
      if (v42 == 2 || (v42 & 1) == 0)
      {
        v43 = (*(a2 + 48) + 16 * v41);
        v44 = v43[1];
        v54 = *v43;

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v44;
        if ((v45 & 1) == 0)
        {
          v38 = sub_1003C5110(0, *(v38 + 2) + 1, 1, v38);
        }

        v47 = *(v38 + 2);
        v46 = *(v38 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v53 = v47 + 1;
          v51 = sub_1003C5110((v46 > 1), v47 + 1, 1, v38);
          v48 = v53;
          v38 = v51;
        }

        *(v38 + 2) = v48;
        v49 = &v38[16 * v47];
        v50 = v55;
        *(v49 + 4) = v54;
        *(v49 + 5) = v50;
      }
    }

    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        sub_10000BA08((v3 + 112), *(v3 + 136));
        dispatch thunk of MobileDocumentReaderSupportChecking.update(isGloballySupported:supportedRegions:unsupportedRegions:)();

        return;
      }

      v35 = *(v15 + 8 * v39);
      ++v37;
      if (v35)
      {
        v37 = v39;
        goto LABEL_30;
      }
    }

LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10050B3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100508638();
}

uint64_t sub_10050B4B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
      v5 = 0x80000001006FA430;
    }

    else
    {
      v4 = 0x6974634172657375;
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F72676B636162;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    v2 = 0xD000000000000010;
    v6 = 0x80000001006FA430;
    v7 = 0x6974634172657375;
    v8 = 0xEA00000000006E6FLL;
    v9 = a2 == 2;
  }

  else
  {
    v6 = 0xE700000000000000;
    v7 = 0x756F72676B636162;
    v8 = 0xEA0000000000646ELL;
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10050B614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x776F6C666B726F77;
    }

    if (v2)
    {
      v4 = 0x80000001006F8C00;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001006F8BB0;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656D737365737361;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xEF7344495547746ELL;
    }

    else
    {
      v4 = 0x80000001006F8BE0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x776F6C666B726F77;
    }

    if (a2)
    {
      v8 = 0x80000001006F8C00;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x656D737365737361;
    v6 = 0x80000001006F8BE0;
    if (a2 == 3)
    {
      v6 = 0xEF7344495547746ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001006F8BB0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10050B7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64692D6F746F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64692D6F746F6870;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = 0x80000001006F9CA0;
    }

    else
    {
      v5 = 0x80000001006F9C80;
    }
  }

  v6 = 0xE800000000000000;
  if (a2 != 2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001006F9CA0;
  if (a2)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x80000001006F9C80;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
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

uint64_t sub_10050B8DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x646E616D6D6F436BLL;
  v5 = 0xE900000000000073;
  v6 = 0x6F43737574617473;
  v7 = 0xEA00000000006564;
  if (a1 != 4)
  {
    v6 = 0x6461655278614D6BLL;
    v7 = 0xEC000000657A6953;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x644968637461426BLL;
  if (a1 != 1)
  {
    v9 = 0x64496B7361546BLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F69737265566BLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x646E616D6D6F436BLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006564;
      if (v10 != 0x6F43737574617473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC000000657A6953;
      if (v10 != 0x6461655278614D6BLL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x644968637461426BLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64496B7361546BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E6F69737265566BLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050BAE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265646165;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6E6F69737265566BLL;
    }

    else
    {
      v6 = 0x4874736575716572;
    }

    if (v3)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xED00007265646165;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x64496B7361546BLL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x80000001006F8F90;
    }

    if (a1 == 2)
    {
      v6 = 0x644968637461426BLL;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0x6E6F69737265566BLL;
    }

    else
    {
      v11 = 0x4874736575716572;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v8 = 0x64496B7361546BLL;
    v9 = 0x80000001006F8F90;
    if (a2 == 3)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    v10 = a2 == 2;
    if (a2 == 2)
    {
      v11 = 0x644968637461426BLL;
    }

    else
    {
      v11 = v8;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10050BC68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000644965;
  v3 = 0x7475626972747461;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1953259891;
    }

    else
    {
      v5 = 0x65756C6176;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64657669726564;
    }

    else
    {
      v5 = 0x7475626972747461;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000644965;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1953259891;
  if (a2 != 2)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x64657669726564;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_10050BD98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726564616548;
  v3 = 0x65736E6F70736572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000026;
    }

    else
    {
      v5 = 0x6C616E7265747865;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001006F9610;
    }

    else
    {
      v6 = 0xEC00000061746144;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x45656D69746E7572;
    }

    else
    {
      v5 = 0x65736E6F70736572;
    }

    if (v4)
    {
      v6 = 0xEC000000726F7272;
    }

    else
    {
      v6 = 0xEE00726564616548;
    }
  }

  v7 = 0xD000000000000026;
  v8 = 0x80000001006F9610;
  if (a2 != 2)
  {
    v7 = 0x6C616E7265747865;
    v8 = 0xEC00000061746144;
  }

  if (a2)
  {
    v3 = 0x45656D69746E7572;
    v2 = 0xEC000000726F7272;
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

uint64_t sub_10050BF04(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10050BF68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69616843;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  if (a1 > 3u)
  {
    v10 = 0xD000000000000011;
    v11 = 0x80000001006F8BE0;
    if (a1 != 6)
    {
      v10 = 0xD000000000000014;
      v11 = 0x80000001006F8C00;
    }

    v12 = 0xD000000000000011;
    v13 = 0x80000001006F8BB0;
    if (a1 != 4)
    {
      v12 = 0x656D737365737361;
      v13 = 0xEF7344495547746ELL;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v4 <= 5)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x7365636E6F6ELL;
    if (a1 != 2)
    {
      v6 = 0x726F576F73726570;
      v5 = 0xED0000776F6C666BLL;
    }

    v7 = 0xE800000000000000;
    if (!a1)
    {
      v7 = 0xED00006E69616843;
    }

    if (a1 <= 1u)
    {
      v8 = 0x776F6C666B726F77;
    }

    else
    {
      v8 = v6;
    }

    if (v4 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0x80000001006F8C00;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v14 = "assessmentBaseURL";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEF7344495547746ELL;
        if (v8 != 0x656D737365737361)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v14 = "assessmentProfile";
    }

    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE600000000000000;
      if (v8 != 0x7365636E6F6ELL)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v3 = 0x726F576F73726570;
    v2 = 0xED0000776F6C666BLL;
  }

  else if (a2)
  {
    v2 = 0xE800000000000000;
    if (v8 != 0x776F6C666B726F77)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v8 != v3)
  {
LABEL_44:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_10050C1E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6C4368636E75616CLL;
    v12 = 0xEE007364496D6961;
    if (a1 != 2)
    {
      v11 = 0x726575737369;
      v12 = 0xE600000000000000;
    }

    v13 = 25705;
    if (a1)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v13 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x776F6C666B726F77;
    v4 = 0xE400000000000000;
    v5 = 1919248756;
    if (a1 != 7)
    {
      v5 = 0x6D69616C63;
      v4 = 0xE500000000000000;
    }

    if (a1 == 6)
    {
      v4 = 0xEA00000000006449;
    }

    else
    {
      v3 = v5;
    }

    v6 = 0x646575737369;
    v7 = 0xEA00000000006E6FLL;
    if (a1 == 4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6974617269707865;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEE007364496D6961;
        if (v8 != 0x6C4368636E75616CLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        if (v8 != 0x726575737369)
        {
          goto LABEL_54;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE200000000000000;
      if (v8 != 25705)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E6F6973726576)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v8 != 0x646575737369)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v14 = 0xEA00000000006E6FLL;
      if (v8 != 0x6974617269707865)
      {
LABEL_54:
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_55;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEA00000000006449;
    if (v8 != 0x776F6C666B726F77)
    {
      goto LABEL_54;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v8 != 1919248756)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v8 != 0x6D69616C63)
    {
      goto LABEL_54;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_54;
  }

  v15 = 1;
LABEL_55:

  return v15 & 1;
}

uint64_t sub_10050C494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  v6 = 0xE500000000000000;
  v7 = 0x7468676972;
  if (a1 != 4)
  {
    v7 = 0x6465686361746564;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x70756F7267;
  if (a1 != 1)
  {
    v9 = 1635017060;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1752392040;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6465686361746564)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x70756F7267)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1635017060)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1752392040)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050C644(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7369839;
  if (a1 != 5)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001006F93E0;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6172656D6163;
  if (a1 != 3)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656B636970;
  if (a1 != 1)
  {
    v9 = 1702125924;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1954047348;
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
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x72656B636970)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1702125924)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1954047348)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7369839)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0x80000001006F93E0;
      if (v10 != 0xD000000000000010)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6172656D6163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6F746F6870)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10050C830(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E6F6974616ELL;
  v5 = 0xEA00000000004449;
  v6 = 0xE700000000000000;
  v7 = 0x44496F746F6870;
  if (a1 != 4)
  {
    v7 = 0xD000000000000017;
    v6 = 0x80000001006FA5F0;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 27748;
  if (a1 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x44496574617473;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000004449;
      if (v10 != 0x6C616E6F6974616ELL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x44496F746F6870)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000001006FA5F0;
      if (v10 != 0xD000000000000017)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE200000000000000;
      if (v10 != 27748)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x44496574617473)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050CA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64756F6C4369;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x726F707075736E75;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73656E755469;
    }

    else
    {
      v4 = 0x64756F6C4369;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0x6D754E656E6F6870;
  v7 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v6 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x73656E755469;
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
    v9 = 0xE600000000000000;
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

uint64_t sub_10050CB5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xEF64756F6C43692ELL;
    if (a1 != 1)
    {
      v9 = 0xEF73656E7554692ELL;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v7 = 0x73746E756F636341;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v4 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
    }

    v5 = 0x656C655465726F43;
    v6 = 0xED0000796E6F6870;
    if (a1 != 3)
    {
      v5 = 0x797469746E656449;
      v6 = 0xE800000000000000;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    v11 = 0xEF64756F6C43692ELL;
    if (a2 != 1)
    {
      v11 = 0xEF73656E7554692ELL;
    }

    if (a2)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != 0x73746E756F636341)
    {
      goto LABEL_41;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x64726143654DLL;
    }

    else
    {
      v12 = 0x726F707075736E75;
    }

    if (a2 == 5)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }

    if (v7 != v12)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v10 = 0xED0000796E6F6870;
    if (v7 != 0x656C655465726F43)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v7 != 0x797469746E656449)
    {
LABEL_41:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_42;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_10050CD7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65646F6373736170;
    }

    else
    {
      v4 = 7958113;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64496F6962;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65646F6373736170;
  if (a2 != 2)
  {
    v8 = 7958113;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x64496F6962;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_10050CEA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x444145525F43464ELL;
  if (a1 == 5)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x454B4F545F494950;
    v5 = 0xE90000000000004ELL;
  }

  v6 = 0xD000000000000013;
  v7 = 0x80000001006F8E70;
  if (a1 != 3)
  {
    v6 = 0x4E495F444559454BLL;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 5391183;
  if (a1 != 1)
  {
    v9 = 0x454349564544;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 5919309;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 5391183)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x454349564544)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 5919309)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x444145525F43464ELL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE90000000000004ELL;
      if (v10 != 0x454B4F545F494950)
      {
LABEL_40:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000001006F8E70;
    if (v10 != 0xD000000000000013)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x4E495F444559454BLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_10050D0B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E6F7246746ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEE006B636142746ELL;
    }

    else
    {
      v5 = 0xEF746E6F7246746ELL;
    }

    v4 = 0x656D75636F446469;
  }

  else if (a1 == 2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x6569666C6573;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x7373656E6576696CLL;
    }

    else
    {
      v4 = 0x7261696C69787561;
    }

    if (v3 == 3)
    {
      v5 = 0xED00006F65646956;
    }

    else
    {
      v5 = 0xEE006F6564695679;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x6569666C6573;
  v8 = 0x7373656E6576696CLL;
  v9 = 0xED00006F65646956;
  if (a2 != 3)
  {
    v8 = 0x7261696C69787561;
    v9 = 0xEE006F6564695679;
  }

  if (a2 != 2)
  {
    v7 = v8;
    v6 = v9;
  }

  if (a2)
  {
    v2 = 0xEE006B636142746ELL;
  }

  if (a2 <= 1u)
  {
    v10 = 0x656D75636F446469;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10050D25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xEB0000000043464ELL;
  v5 = 0x6E656B6F54696970;
  if (a1 == 6)
  {
    v5 = 0x74726F7073736170;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v6 = 0x80000001006FA3E0;
  v7 = 0x74726F7073736170;
  if (a1 == 4)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xEB000000005A524DLL;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000017;
  if (a1 == 2)
  {
    v8 = 0x6150373134666470;
    v9 = 0xEC00000064657372;
  }

  else
  {
    v9 = 0x80000001006FA3C0;
  }

  v10 = 0x6152373134666470;
  if (a1)
  {
    v3 = 0xE900000000000077;
  }

  else
  {
    v10 = 0x656369766564;
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
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC00000064657372;
        if (v11 != 0x6150373134666470)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x80000001006FA3C0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE900000000000077;
      if (v11 != 0x6152373134666470)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656369766564)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x80000001006FA3E0;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = 5919309;
LABEL_42:
    v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != 0x74726F7073736170)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 == 6)
  {
    v14 = 4408910;
    goto LABEL_42;
  }

  v13 = 0xE800000000000000;
  if (v11 != 0x6E656B6F54696970)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_47:
  if (v12 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_10050D4F4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10050D558(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050D670(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050D758(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10050D85C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10050D9A0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10050DAE4(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10050DC30(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DC84(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DDE4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DEFC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E020(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E120(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E224(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E308(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E460(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10050E59C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10050E690@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10050E7D4(*a1);
  *a2 = result;
  return result;
}

void sub_10050E6C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x44496574617473;
  v5 = 0xEA00000000004449;
  v6 = 0x6C616E6F6974616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x44496F746F6870;
  if (v2 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x80000001006FA5F0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 27748;
  if (v2 != 1)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10050E780()
{
  result = qword_1008467B8;
  if (!qword_1008467B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008467B8);
  }

  return result;
}

unint64_t sub_10050E7D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC0B0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10050E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[102] = v8;
  v9[101] = v18;
  v9[100] = a8;
  v9[99] = a7;
  v9[98] = a6;
  v9[97] = a5;
  v9[96] = a4;
  v9[95] = a3;
  v9[94] = a2;
  v9[93] = a1;
  v10 = type metadata accessor for IdentityDocumentElement();
  v9[103] = v10;
  v9[104] = *(v10 - 8);
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013KnownDocTypes();
  v9[107] = v11;
  v9[108] = *(v11 - 8);
  v9[109] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v9[110] = v12;
  v9[111] = *(v12 - 8);
  v9[112] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v9[113] = v13;
  v9[114] = *(v13 - 8);
  v9[115] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v9[119] = swift_task_alloc();
  v14 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v9[120] = v14;
  v9[121] = *(v14 - 8);
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v9[124] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v9[125] = v15;
  v9[126] = *(v15 - 8);
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();

  return _swift_task_switch(sub_10050EB64, 0, 0);
}

uint64_t sub_10050EB64(uint64_t a1)
{
  v162 = v1;
  v2 = v1[124];
  v3 = v1[121];
  v4 = v1[120];
  v153 = v1[119];
  v5 = v1[101];
  v6 = v1[99];
  v7 = v1[97];
  v8 = v1[96];
  v151 = v1[94];
  v9 = v1[93];
  defaultLogger()();
  v10 = *(v3 + 16);
  v10(v2, v9, v4);
  v11 = v10;
  sub_10000BBC4(v7, v153, &unk_100844540, &unk_1006BFBC0);
  sub_1005107A4(v151, (v1 + 10));

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  sub_1005107DC(v151);
  v152 = v8;

  v154 = v6;

  v150 = v5;

  v147 = v10;
  if (os_log_type_enabled(v12, v13))
  {
    v145 = v13;
    log = v12;
    v14 = v1[124];
    v15 = v1[123];
    v16 = v1[121];
    v17 = v1[120];
    v140 = v1[118];
    v142 = v1[119];
    v138 = v1[96];
    v136 = v1 + 46;
    v137 = v1[95];
    v18 = v1;
    v19 = v1[94];
    v20 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v20 = 136316418;
    v11(v15, v14, v17);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v149 = *(v16 + 8);
    v149(v14, v17);
    v24 = sub_100141FE4(v21, v23, &v161);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = v19[1];
    *(v1 + 23) = *v19;
    *(v1 + 24) = v25;
    v26 = v19[2];
    v27 = v19[3];
    v28 = v19[4];
    *(v1 + 441) = *(v19 + 73);
    *(v1 + 26) = v27;
    *(v1 + 27) = v28;
    *(v1 + 25) = v26;
    sub_1005107A4(v19, (v1 + 58));
    v29 = String.init<A>(describing:)();
    v31 = sub_100141FE4(v29, v30, &v161);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    if (v138)
    {
      v32 = v137;
    }

    else
    {
      v32 = 7104878;
    }

    if (v138)
    {
      v33 = v152;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_100141FE4(v32, v33, &v161);

    *(v20 + 24) = v34;
    *(v20 + 32) = 2080;
    sub_10000BBC4(v142, v140, &unk_100844540, &unk_1006BFBC0);
    v35 = type metadata accessor for URL();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v140, 1, v35);
    v38 = v18;
    v39 = v18[118];
    if (v37 == 1)
    {
      sub_10000BE18(v39, &unk_100844540, &unk_1006BFBC0);
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v41 = URL.absoluteString.getter();
      v40 = v50;
      (*(v36 + 8))(v39, v35);
    }

    v1 = v38;
    v51 = v38[126];
    v141 = v38[125];
    v143 = v38[128];
    v139 = v38[101];
    v52 = v38[100];
    v53 = v38[99];
    v54 = v38[98];
    sub_10000BE18(v38[119], &unk_100844540, &unk_1006BFBC0);
    v55 = sub_100141FE4(v41, v40, &v161);

    *(v20 + 34) = v55;
    *(v20 + 42) = 2080;
    if (v53)
    {
      v56 = v54;
    }

    else
    {
      v56 = 7104878;
    }

    if (v53)
    {
      v57 = v154;
    }

    else
    {
      v57 = 0xE300000000000000;
    }

    v58 = sub_100141FE4(v56, v57, &v161);

    *(v20 + 44) = v58;
    *(v20 + 52) = 2080;
    if (v139)
    {
      v59 = v52;
    }

    else
    {
      v59 = 7104878;
    }

    if (v139)
    {
      v60 = v150;
    }

    else
    {
      v60 = 0xE300000000000000;
    }

    v61 = sub_100141FE4(v59, v60, &v161);

    *(v20 + 54) = v61;
    _os_log_impl(&_mh_execute_header, log, v145, "Pass addHistoryEvent\nelementCategoryGroups: %s\ntransactionSource: %s\nmerchantNameOverride: %s\nmerchantPrivacyPolicyOverride: %s\nlocalizedRelyingPartyName: %s\nusageDescription: %s", v20, 0x3Eu);
    swift_arrayDestroy();

    v49 = *(v51 + 8);
    (v49)(v143, v141);
  }

  else
  {
    v42 = v1[128];
    v43 = v1[126];
    v44 = v1[125];
    v45 = v1[124];
    v46 = v1[121];
    v47 = v1[120];
    v48 = v1[119];

    sub_10000BE18(v48, &unk_100844540, &unk_1006BFBC0);
    v149 = *(v46 + 8);
    v149(v45, v47);
    v49 = *(v43 + 8);
    (v49)(v42, v44);
  }

  v62 = v1[94];
  v63 = [objc_allocWithZone(PKPaymentService) init];
  v1[129] = v63;
  if (*(v62 + 88) >= 0)
  {
    v64 = 2;
  }

  else
  {
    v64 = 3;
  }

  v65 = [objc_opt_self() paymentTransactionWithSource:v64];
  v1[130] = v65;
  if (v65)
  {
    loga = v49;
    v144 = v63;
    v66 = v1[115];
    v67 = v1[114];
    v68 = v1[113];
    v69 = v1[112];
    v70 = v1[111];
    v71 = v1[110];
    v72 = v1[94];
    v73 = v65;
    [v65 setTransactionType:15];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v67 + 8))(v66, v68);
    [v73 setTransactionDate:isa];

    [v73 setTransactionStatus:1];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v70 + 8))(v69, v71);
    v75 = String._bridgeToObjectiveC()();

    [v73 setIdentifier:v75];

    [v73 setOriginatedByDevice:1];
    v146 = v73;
    [v73 setHasNotificationServiceData:1];
    if (sub_10051112C(v72))
    {
      defaultLogger()();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "The bundleID is associated with an App Clip. Will set requiresLocation to true", v78, 2u);
      }

      v79 = v1[127];
      v80 = v1[125];

      (loga)(v79, v80);
      [v73 setRequiresLocation:1];
    }

    v81 = v1[117];
    v82 = v1[97];
    v147(v1[122], v1[93], v1[120]);
    sub_10000BBC4(v82, v81, &unk_100844540, &unk_1006BFBC0);
    v1[81] = type metadata accessor for BundleRecordFetcher();
    v1[82] = &protocol witness table for BundleRecordFetcher;
    sub_100032DBC(v1 + 78);
    BundleRecordFetcher.init()();
    v83 = IdentityDocumentElementCategoryGroups.recognizedElements.getter();
    v84 = *(v83 + 16);
    if (v84)
    {
      v85 = v1[104];
      v161 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_10001F8D4(0, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
      v88 = *(v85 + 16);
      v87 = v85 + 16;
      v86 = v88;
      v89 = v83 + ((*(v87 + 64) + 32) & ~*(v87 + 64));
      logb = *(v87 + 56);
      do
      {
        v90 = v1[106];
        v91 = v1[105];
        v92 = v1[103];
        v86(v90, v89, v92);
        v86(v91, v90, v92);
        sub_100510250(v91);
        (*(v87 - 8))(v90, v92);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v89 += logb;
        --v84;
      }

      while (v84);

      v93 = v161;
      if (!(v161 >> 62))
      {
LABEL_37:
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_38:
          v94 = v1;
          v160 = v1[117];
          v95 = v1[116];
          v96 = v1[109];
          v97 = v1[108];
          v98 = v94[107].isa;
          logc = v94[101].isa;
          v148 = v94[100].isa;
          v99 = v94[94].isa;
          v100 = objc_allocWithZone(PKTransactionReleasedData);
          IdentityDocumentElementCategoryGroups.documentType.getter();
          ISO18013KnownDocTypes.rawValue.getter();
          (*(v97 + 8))(v96, v98);
          v101 = String._bridgeToObjectiveC()();

          v102 = [v100 initWithDocumentType:v101];

          v103 = v102;
          sub_1006974E0(v93);
          v104 = v94;

          sub_10001F8D4(0, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
          sub_100511838();
          v105 = Set._bridgeToObjectiveC()().super.isa;

          [v103 setElements:v105];

          sub_100020260(&v94[78], &v94[83]);
          v106 = v94[86].isa;
          v107 = sub_10001F370(&v94[83], v106);
          v108 = *(v106 - 8);
          v109 = swift_task_alloc();
          (*(v108 + 16))(v109, v107, v106);
          sub_1005107A4(v99, &v94[22]);

          v110 = sub_10051080C(v99, v148, logc, v109);
          sub_10000BB78(&v94[83].isa);

          [v103 setApplication:v110];

          sub_10000BBC4(v160, v95, &unk_100844540, &unk_1006BFBC0);
          v111 = type metadata accessor for URL();
          v112 = *(v111 - 8);
          v114 = 0;
          if ((*(v112 + 48))(v95, 1, v111) != 1)
          {
            v115 = v94[116].isa;
            URL._bridgeToObjectiveC()(v113);
            v114 = v116;
            (*(v112 + 8))(v115, v111);
          }

          v117 = v94[96].isa;
          [v103 setPrivacyPolicyURL:{v114, v136}];

          if (v117 && (v94[88].isa = v94[95].isa, v94[89].isa = v152, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), v94[91].isa))
          {
            v118 = String._bridgeToObjectiveC()();
          }

          else
          {
            v118 = 0;
          }

          [v103 setMerchantNameOverride:v118];

          goto LABEL_51;
        }

LABEL_50:

        v103 = 0;
        v104 = v1;
LABEL_51:
        v121 = v104 + 2;
        logd = v104 + 92;
        v122 = v104[122].isa;
        v123 = v104[120].isa;
        v124 = v104[117].isa;
        v125 = v104[102].isa;
        v126 = v104[99].isa;
        v127 = v104[98].isa;
        v128 = v104;
        v129 = v104[94].isa;
        sub_10000BE18(v124, &unk_100844540, &unk_1006BFBC0);
        v149(v122, v123);
        sub_10000BB78(&v128[78].isa);
        [v146 setReleasedData:v103];

        sub_10001F8D4(0, &qword_100846890, PKMerchant_ptr);
        sub_1005107A4(v129, &v128[34]);

        sub_10050FFC0(v129, v127, v126);
        v131 = v130;
        [v146 setMerchant:v130];

        v132 = v146;
        v133 = String._bridgeToObjectiveC()();
        v128[131].isa = v133;
        v134 = *(v125 + 2);
        v128[2].isa = v128;
        v128[7].isa = logd;
        v128[3].isa = sub_10050FAF8;
        v135 = swift_continuation_init();
        v128[77].isa = sub_100007224(&qword_100846898, &unk_1006E7360);
        v128[74].isa = v135;
        v128[70].isa = _NSConcreteStackBlock;
        v128[71].isa = 1107296256;
        v128[72].isa = sub_1005101EC;
        v128[73].isa = &unk_100815C00;
        [v144 insertOrUpdatePaymentTransaction:v132 forPassUniqueIdentifier:v133 paymentApplication:v134 completion:?];

        return _swift_continuation_await(v121);
      }
    }

    else
    {

      v93 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_37;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  v119 = v1[1];

  return v119();
}

uint64_t sub_10050FAF8()
{

  return _swift_task_switch(sub_10050FBD8, 0, 0);
}

uint64_t sub_10050FBD8()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];

  v4 = v0[92];

  v5 = v0[1];

  return v5();
}

void *sub_10050FD20()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v1;
    v16 = v9;
    *v8 = 136315138;

    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "denit from %s called", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 80);

  os_unfair_lock_lock((v13 + 24));
  [*(v13 + 16) invalidate];
  os_unfair_lock_unlock((v13 + 24));

  return v1;
}

uint64_t sub_10050FF68()
{
  sub_10050FD20();

  return swift_deallocClassInstance();
}

void sub_10050FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();

    [v8 setName:v9];
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 88);
  if (v11 < 0)
  {
    URL.init(string:)();
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    v17 = 0;
    if ((*(v15 + 48))(v7, 1, v14) != 1)
    {
      URL._bridgeToObjectiveC()(v16);
      v17 = v18;
      (*(v15 + 8))(v7, v14);
    }

    [v8 setOriginURL:v17];

    if (v10)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    [v8 setBusinessConnectBrandIdentifier:v19];
    sub_1005107DC(a1);
  }

  else
  {
    v12 = *(a1 + 80);
    v13 = String._bridgeToObjectiveC()();
    [v8 setMerchantIdentifier:v13];

    if (v11)
    {
LABEL_7:
      sub_1005107DC(a1);
      return;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      [v8 setAdamIdentifier:v12];
      goto LABEL_7;
    }

    __break(1u);
  }
}

uint64_t sub_1005101EC(uint64_t a1, void *a2)
{
  v3 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_100510250(char *a1)
{
  v2 = type metadata accessor for IdentityDocumentElement();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  IdentityDocumentElement.namespace.getter();
  v15 = String._bridgeToObjectiveC()();

  [v14 setElementNamespace:v15];

  IdentityDocumentElement.identifier.getter();
  v16 = String._bridgeToObjectiveC()();

  [v14 setIdentifier:v16];

  IdentityDocumentElement.retentionIntent.getter();
  v17 = (*(v11 + 88))(v13, v10);
  if (v17 == enum case for IdentityDocumentElement.RetentionIntent.retain(_:))
  {
    (*(v11 + 96))(v13, v10);
    v18 = *v13;
    [v14 setRetentionIntent:1];
    [v14 setRetentionPeriod:v18];
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v14;
  }

  if (v17 == enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:))
  {
    [v14 setRetentionIntent:2];
    goto LABEL_7;
  }

  if (v17 == enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:))
  {
    [v14 setRetentionIntent:3];
    goto LABEL_7;
  }

  defaultLogger()();
  v20 = *(v3 + 16);
  v40 = v2;
  v38 = v20;
  v20(v7, a1, v2);
  v21 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v39))
  {
    v22 = swift_slowAlloc();
    v35 = v22;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v22 = 136315138;
    v36 = v21;
    v23 = v40;
    v38(v41, v7, v40);
    v24 = v23;
    v41 = String.init<A>(describing:)();
    v26 = v25;
    v27 = v7;
    v28 = *(v3 + 8);
    v28(v27, v24);
    v29 = sub_100141FE4(v41, v26, &v45);

    v30 = v35;
    v31 = v36;
    *(v35 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v31, v39, "PKTransactionReleasedData received unknown retention intent for element %s. Defaulting to a retained retentonIntent", v30, 0xCu);
    sub_10000BB78(v37);

    (*(v42 + 8))(v44, v43);
    v32 = v40;
  }

  else
  {

    v33 = v7;
    v28 = *(v3 + 8);
    v32 = v40;
    v28(v33, v40);
    (*(v42 + 8))(v44, v43);
  }

  [v14 setRetentionIntent:1];
  v28(a1, v32);
  (*(v11 + 8))(v13, v10);
  return v14;
}

void *sub_10051080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v13 = __chkstk_darwin(v12 - 8);
  v14 = __chkstk_darwin(v13);
  v67 = &v59 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v59 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v59 - v22;
  __chkstk_darwin(v21);
  v72 = &v59 - v25;
  if (*(a1 + 88) < 0)
  {

    sub_1005107DC(a1);
    v29 = type metadata accessor for BundleRecordFetcher();
    (*(*(v29 - 8) + 8))(a4, v29);
    return 0;
  }

  v61 = v24;
  v62 = a2;
  v64 = a3;
  v65 = v11;
  v26 = *(a1 + 48);
  v66 = a1;
  v74 = v26;
  v27 = [objc_allocWithZone(PKTransactionReleasedDataApplication) init];
  v28 = type metadata accessor for BundleRecordFetcher();
  v63 = v27;
  dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  (*(*(v28 - 8) + 8))(a4, v28);
  v31 = type metadata accessor for BundleRecord();
  (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  v32 = v23;
  v33 = v72;
  sub_100330950(v32, v72);
  v34 = v70;
  sub_10000BBC4(v33, v20, &qword_10083ACF8, &qword_1006D8FC0);
  type metadata accessor for BundleRecord();
  v35 = *(v31 - 8);
  v36 = *(v35 + 48);
  if (v36(v20, 1, v31) == 1)
  {
    sub_10000BE18(v20, &qword_10083ACF8, &qword_1006D8FC0);
    v37 = v66;
  }

  else
  {
    BundleRecord.bundleIdentifier.getter();
    v39 = v38;
    (*(v35 + 8))(v20, v31);
    v37 = v66;
    if (v39)
    {

      goto LABEL_16;
    }
  }

  v71 = v31;
  v40 = v65;
  defaultLogger()();
  sub_10000BBC4(v33, v34, &qword_10083ACF8, &qword_1006D8FC0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v73 = v60;
    *v43 = 136315138;
    v44 = v61;
    sub_10000BBC4(v34, v61, &qword_10083ACF8, &qword_1006D8FC0);
    v45 = v71;
    if (v36(v44, 1, v71) == 1)
    {
      sub_10000BE18(v44, &qword_10083ACF8, &qword_1006D8FC0);
    }

    else
    {
      v46 = BundleRecord.applicationIdentifier.getter();
      v48 = v47;
      (*(v35 + 8))(v44, v45);
      if (v48)
      {
        sub_10000BE18(v70, &qword_10083ACF8, &qword_1006D8FC0);
        v49 = v46;
LABEL_15:
        v37 = v66;
        v50 = sub_100141FE4(v49, v48, &v73);

        *(v43 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v41, v42, "PKTransactionReleasedData.makeFromRequestedElements Record bundle identifier is nil for application identifier: %s", v43, 0xCu);
        sub_10000BB78(v60);

        (*(v68 + 8))(v65, v69);
        v31 = v71;
        v33 = v72;
        goto LABEL_16;
      }
    }

    sub_10000BE18(v70, &qword_10083ACF8, &qword_1006D8FC0);

    v48 = 0xE500000000000000;
    v49 = 0x3E6C696E3CLL;
    goto LABEL_15;
  }

  sub_10000BE18(v34, &qword_10083ACF8, &qword_1006D8FC0);
  (*(v68 + 8))(v40, v69);
  v31 = v71;
LABEL_16:
  v51 = v67;
  sub_10000BBC4(v33, v67, &qword_10083ACF8, &qword_1006D8FC0);
  if (v36(v51, 1, v31) == 1)
  {
    sub_10000BE18(v51, &qword_10083ACF8, &qword_1006D8FC0);
    v52 = 0;
    v30 = v63;
    v53 = v64;
  }

  else
  {
    BundleRecord.bundleIdentifier.getter();
    v55 = v54;
    (*(v35 + 8))(v51, v31);
    v30 = v63;
    v53 = v64;
    if (v55)
    {
      v52 = String._bridgeToObjectiveC()();
    }

    else
    {
      v52 = 0;
    }
  }

  [v30 setBundleIdentifier:v52];

  if (v74)
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  [v30 setClient:v56];
  if (v53)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  [v30 setUsageDescription:v57];

  sub_1005107DC(v37);
  sub_10000BE18(v33, &qword_10083ACF8, &qword_1006D8FC0);
  return v30;
}

uint64_t sub_10051112C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v52 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - v7;
  __chkstk_darwin(v6);
  v48 = &v45 - v9;
  v10 = type metadata accessor for BundleRecord.RecordType();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BundleRecordFetcher();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BundleRecord();
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v23 = &v45 - v22;
  if (*(a1 + 88) < 0)
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "App Clips can only be associated with inApp presentments", v26, 2u);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v45 = v21;
  v46 = v20;
  v47 = v19;
  v49 = v3;
  v50 = v2;
  BundleRecordFetcher.init()();
  BundleRecordFetcher.record(withAuditToken:)();
  (*(v14 + 8))(v16, v13);
  BundleRecord.recordType.getter();
  v27 = v51;
  if ((*(v51 + 88))(v12, v10) != enum case for BundleRecord.RecordType.appClip(_:))
  {
    (*(v46 + 8))(v23, v47);
    (*(v27 + 8))(v12, v10);
    return 0;
  }

  (*(v27 + 8))(v12, v10);
  v28 = v48;
  defaultLogger()();
  v30 = v45;
  v29 = v46;
  v31 = v47;
  (*(v46 + 16))(v45, v23, v47);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v34 = 136315138;
    v35 = BundleRecord.applicationIdentifier.getter();
    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x3E6C696E3CLL;
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = *(v29 + 8);
    v40 = v30;
    v41 = v47;
    v39(v40, v47);
    v42 = sub_100141FE4(v37, v38, &v53);

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "The application identifier %s is associated with an App Clip", v34, 0xCu);
    sub_10000BB78(v52);

    (*(v49 + 8))(v28, v50);
    v39(v23, v41);
    return 1;
  }

  else
  {

    v44 = *(v29 + 8);
    v44(v30, v31);
    (*(v49 + 8))(v28, v50);
    v44(v23, v31);
    return 1;
  }
}

unint64_t sub_100511838()
{
  result = qword_100846888;
  if (!qword_100846888)
  {
    sub_10001F8D4(255, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846888);
  }

  return result;
}

__n128 sub_1005118D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1005118FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10051194C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005119D0(uint64_t result, char a2)
{
  v2 = *(result + 88) & 1 | (a2 << 7);
  *(result + 48) &= 1uLL;
  *(result + 88) = v2;
  return result;
}

void sub_100511A24(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_100511C48(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v98 = a1;
  v97 = type metadata accessor for Logger();
  v96 = *(v97 - 8);
  v3 = __chkstk_darwin(v97);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v93 - v6;
  v95 = [objc_allocWithZone(PKPassLibrary) init];
  v8 = [v95 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_72;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_73:

LABEL_74:
    defaultLogger()();
    v87 = v99;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = v5;
      v92 = swift_slowAlloc();
      v116[0] = v92;
      *v90 = 136315138;
      *(v90 + 4) = sub_100141FE4(v98, v87, v116);
      _os_log_impl(&_mh_execute_header, v88, v89, "Did not find pass for credential %s", v90, 0xCu);
      sub_10000BB78(v92);

      (*(v96 + 8))(v91, v97);
    }

    else
    {

      (*(v96 + 8))(v5, v97);
    }

    return;
  }

LABEL_3:
  v94 = v5;
  v93 = v7;
  v7 = 0;
  v5 = (v9 & 0xC000000000000001);
  v103 = v9 + 32;
  v104 = v9 & 0xFFFFFFFFFFFFFF8;
  v11 = &selRef_setSupportedEncoding_;
  v101 = v10;
  v102 = v9;
  v100 = v9 & 0xC000000000000001;
  while (1)
  {
LABEL_6:
    if (v5)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v104 + 16))
      {
        goto LABEL_71;
      }

      v12 = *(v103 + 8 * v7);
    }

    v13 = v12;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        goto LABEL_73;
      }

      goto LABEL_3;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      break;
    }

LABEL_5:

    if (v7 == v10)
    {
LABEL_58:

      v5 = v94;
      goto LABEL_74;
    }
  }

  v16 = v15;
  v13 = v13;
  if (![v16 v11[274]])
  {

    goto LABEL_5;
  }

  v110 = v13;
  v17 = [v16 devicePaymentApplications];
  if (!v17)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v18 = v17;
  v107 = v7;
  v19 = sub_10001F8D4(0, &qword_100846948, PKPaymentApplication_ptr);
  v20 = sub_100512C3C(&qword_100846950, &qword_100846948, PKPaymentApplication_ptr);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = v16;
  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v21 = v116[1];
    v22 = v116[2];
    v23 = v116[3];
    v24 = v116[4];
    v25 = v116[5];
  }

  else
  {
    v24 = 0;
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);
  }

  v108 = v23;
  v29 = (v23 + 64) >> 6;
  v111 = v19;
  v112 = v22;
  while (1)
  {
LABEL_22:
    if (v21 < 0)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34 || (v115 = v34, swift_dynamicCast(), v33 = v116[0], v32 = v24, v20 = v25, !v116[0]))
      {
LABEL_57:
        v62 = v110;

        sub_10001FA6C(v21);
        v10 = v101;
        v9 = v102;
        v7 = v107;
        v5 = v100;
        v11 = &selRef_setSupportedEncoding_;
        if (v107 != v101)
        {
          goto LABEL_6;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v30 = v24;
      v31 = v25;
      v32 = v24;
      if (!v25)
      {
        while (1)
        {
          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v32 >= v29)
          {
            goto LABEL_57;
          }

          v31 = *(v22 + 8 * v32);
          ++v30;
          if (v31)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_27:
      v20 = (v31 - 1) & v31;
      v33 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (!v33)
      {
        goto LABEL_57;
      }
    }

    if ([v33 state] == 1)
    {
      break;
    }

    v24 = v32;
    v25 = v20;
  }

  v35 = v33;
  v36 = v21;
  v113 = v35;
  v114 = v20;
  v37 = [v35 subcredentials];
  if (!v37)
  {
    __break(1u);
    goto LABEL_78;
  }

  v38 = v37;
  sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
  sub_100512C3C(&qword_100840E48, &qword_100840E40, PKAppletSubcredential_ptr);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v20 & 0xC000000000000001;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v109 = v25;
    v106 = v24;
    v39 = __CocoaSet.startIndex.getter();
    v41 = v40;
    v42 = __CocoaSet.endIndex.getter();
    v44 = v43;
    v45 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100316220(v42, v44, 1);
    v21 = v36;
    v46 = v114;
    if ((v45 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_42:
    sub_100316220(v39, v41, v2 != 0);

LABEL_52:
    v24 = v32;
    v25 = v46;
    v22 = v112;
    goto LABEL_22;
  }

  v47 = 0;
  v48 = (v20 + 56);
  v39 = 1 << *(v20 + 32);
  v49 = (v39 + 63) >> 6;
  while (1)
  {
    v51 = *v48++;
    v50 = v51;
    if (v51)
    {
      break;
    }

    v47 -= 64;
    if (!--v49)
    {
      v41 = *(v20 + 36);
LABEL_41:
      v46 = v114;
      goto LABEL_42;
    }
  }

  v109 = v25;
  v52 = __clz(__rbit64(v50));
  v41 = *(v20 + 36);
  if (v52 - v39 == v47)
  {
    goto LABEL_41;
  }

  v106 = v24;
  v39 = v52 - v47;
  v46 = v114;
LABEL_44:
  sub_100511A24(v39, v41, v2 != 0, v20);
  v54 = v53;
  sub_100316220(v39, v41, v2 != 0);

  v55 = [v54 identifier];

  if (!v55)
  {

    goto LABEL_52;
  }

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v57;

  if (v56 == v98 && v20 == v99)
  {
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {

LABEL_56:
      v24 = v32;
      v25 = v46;
      v22 = v112;
      goto LABEL_22;
    }
  }

  v60 = v110;
  v61 = [v105 uniqueID];
  if (!v61)
  {

    goto LABEL_56;
  }

  v32 = v60;
  v63 = v61;

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v64;

  v65 = v93;
  defaultLogger()();

  v66 = v99;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v69 = 136315394;
    *(v69 + 4) = sub_100141FE4(v2, v29, v116);
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_100141FE4(v98, v66, v116);
    _os_log_impl(&_mh_execute_header, v67, v68, "Found pass %s for credential %s", v69, 0x16u);
    swift_arrayDestroy();
  }

  (*(v96 + 8))(v65, v97);
  v70 = v105;
  v71 = [v105 localizedDescription];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v72;

  v73 = [v70 identityType];
  if (v73 >= 6)
  {
    LOBYTE(v22) = 2;
  }

  else
  {
    LOBYTE(v22) = 0x50304000102uLL >> (8 * v73);
  }

  v74 = [v70 issuerAdministrativeAreaCode];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    goto LABEL_68;
  }

LABEL_67:
  v76 = 0;
  v78 = 0;
LABEL_68:
  type metadata accessor for Pass();
  v79 = swift_allocObject();
  *(v79 + 16) = v113;
  *(v79 + 24) = v2;
  *(v79 + 32) = v29;
  *(v79 + 40) = v20;
  *(v79 + 48) = v25;
  *(v79 + 56) = v22;
  *(v79 + 64) = v76;
  *(v79 + 72) = v78;
  v80 = v79;
  v81 = objc_opt_self();
  v82 = PKPassKitCoreBundle();
  v83 = String._bridgeToObjectiveC()();
  v84 = [v81 newAssertionForBundle:v82 withReason:v83];

  if (!v84)
  {
    goto LABEL_79;
  }

  sub_100007224(&qword_100846958, &qword_1006E7428);
  v85 = swift_allocObject();
  *(v85 + 24) = 0;
  v86 = v84;

  sub_10001FA6C(v21);
  *(v85 + 16) = v86;

  *(v80 + 80) = v85;
}

unint64_t sub_1005127B4()
{
  v25 = [objc_allocWithZone(PKPassLibrary) init];
  v0 = [v25 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
LABEL_19:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v3 = 0;
  do
  {
    v4 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v3 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v4;
      if (v3 == v2)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v3 != v2);
LABEL_20:

  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_52:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_22;
    }

LABEL_53:

    return 6;
  }

  v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_53;
  }

LABEL_22:
  v8 = 0;
  while (1)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v9 = _swiftEmptyArrayStorage[v8 + 4];
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v12 = String.lowercased()();
    v13 = [v10 issuerAdministrativeAreaCode];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = String.lowercased()();

      if (v12._countAndFlagsBits == v15._countAndFlagsBits && v12._object == v15._object)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v18 = String.lowercased()();
      v19 = [v10 issuerCountryCode];
      if (v19)
      {
        break;
      }
    }

LABEL_24:
    ++v8;
    if (v11 == v7)
    {
      goto LABEL_53;
    }
  }

  v20 = v19;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = String.lowercased()();

  if (v18._countAndFlagsBits == v21._countAndFlagsBits && v18._object == v21._object)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  if ([v10 isRemotePass])
  {
LABEL_44:

    goto LABEL_24;
  }

  v23 = [v10 identityType];

  if (v23 > 5)
  {
    return 2;
  }

  else
  {
    return 0x50304000102uLL >> (8 * v23);
  }
}

uint64_t sub_100512C3C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F8D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100512C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1003F1504(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000BE18(v9, &unk_100845860, &unk_1006BF9D0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100512E94(uint64_t (**a1)(), uint64_t a2, uint64_t a3)
{

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *a1 = sub_100022140;
  a1[1] = v6;
}

uint64_t sub_100512F08(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100513024, v1, 0);
}

uint64_t sub_100513024(uint64_t a1)
{
  v2 = v1[5];
  if (*(v2 + 120))
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.internalError(_:), v1[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "SecureTransactionServiceManager start called", v7, 2u);
    }

    v9 = v1[10];
    v8 = v1[11];
    v10 = v1[9];
    v12 = v1[4];
    v11 = v1[5];

    (*(v9 + 8))(v8, v10);
    v13 = [objc_allocWithZone(STSReader) initWithType:0 queue:0];
    v1[12] = v13;
    v14 = *(v2 + 120);
    *(v2 + 120) = v13;
    v15 = v13;

    *(v11 + 112) = 0;
    v16 = swift_task_alloc();
    v1[13] = v16;
    v16[2] = v15;
    v16[3] = v12;
    v16[4] = v11;
    sub_10051A2C0(&qword_100846A88, v17, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
    v18 = swift_task_alloc();
    v1[14] = v18;
    *v18 = v1;
    v18[1] = sub_1005133AC;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v1 + 2, &unk_1006E7560);
  }
}

uint64_t sub_1005133AC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100513560;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1005134D4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005134D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_100513560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for DIPError();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for STSReader.StateChanges();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10051376C, a4, 0);
}

uint64_t sub_10051376C()
{
  v1 = sub_100514720();
  v0[17] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_100513A84;
  v4 = v0[16];

  return STSReader.start(configuration:)(v4, v2);
}

uint64_t sub_100513A84()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1005141F8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100513BAC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100513BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2[16];
  v5 = v2[5];
  v4 = v2[6];
  v6 = sub_10051A2C0(&qword_100846A88, a2, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
  v7 = swift_task_alloc();
  v2[20] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v2[21] = v8;
  *v8 = v2;
  v8[1] = sub_100513CE0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, v4, v6, &unk_1006E7580, v7, &type metadata for () + 8);
}

uint64_t sub_100513CE0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_10051447C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100513E08;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100513E08()
{
  v24 = v0;
  v1 = [*(v0 + 32) sessionTranscriptBytes];
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v23 = *(v0 + 112);
  if (v1)
  {
    v5 = *(v0 + 24);
    v6 = v1;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *v5 = v7;
    v5[1] = v9;
    (*(v3 + 8))(v2, v23);

    v10 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 88) + 104))(v4, enum case for DIPError.Code.documentReaderSessionTranscriptBytesNil(_:), *(v0 + 80));
    sub_1000402AC(_swiftEmptyArrayStorage);
    v21 = sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v11 = swift_allocError();
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    v20 = 93;
    strcpy(v19, "start(with:)");
    v22 = " trying to signDigest";
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v23);
    v12 = *(v0 + 48);
    [*(v0 + 32) invalidate];
    v13 = *(v12 + 120);
    *(v12 + 120) = 0;

    *(v12 + 112) = 0;
    *(v0 + 16) = v11;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      swift_willThrow();
    }

    else
    {
      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      type metadata accessor for SecureTransactionServiceManager();
      sub_1003DC460(v15);
      (*(v17 + 16))(v14, v15, v16);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      v20 = 105;
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      strcpy(v19, "start(with:)");
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v17 + 8))(v15, v16);
    }

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1005141F8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 48);
  [*(v0 + 32) invalidate];
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  *(v2 + 112) = 0;
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v5);
    (*(v7 + 16))(v4, v5, v6);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10051447C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  [*(v0 + 32) invalidate];
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  *(v5 + 112) = 0;
  *(v0 + 16) = v4;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v8);
    (*(v10 + 16))(v7, v8, v9);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

char *sub_100514720()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for MobileDocumentReaderDeviceEngagementType.qr(_:))
  {
    (*(v7 + 96))(v9, v6);
    v12 = *v9;
    v11 = v9[1];
    sub_10000B8B8(v12, v11);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v12, v11);
    v14 = [objc_opt_self() configurationWithDeviceEngagementType:1 dataRetrievalType:6 engagementData:isa];

    sub_10000B90C(v12, v11);
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v10 != enum case for MobileDocumentReaderDeviceEngagementType.nfc(_:))
    {
      (*(v7 + 8))(v9, v6);
LABEL_8:
      (*(v3 + 104))(v5, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v2);
      v14 = " trying to signDigest";
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v14;
    }

    v14 = [objc_opt_self() configurationWithDeviceEngagementType:0 dataRetrievalType:6 engagementData:0];
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  return v14;
}

uint64_t sub_100514A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v7 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v5[8] = *(v8 + 64);
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for STSReader.StateChanges();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v5[12] = *(v10 + 64);
  v5[13] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100514BFC, a3, 0);
}

uint64_t sub_100514BFC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v20 = v2;
  v21 = v4;
  v22 = v0[12];
  v6 = v0[7];
  v7 = v0[6];
  v19 = v0[5];
  v8 = v0[4];
  v23 = v0[3];
  v9 = type metadata accessor for TaskPriority();
  v24 = *(*(v9 - 8) + 56);
  v24(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v5);
  (*(v6 + 16))(v4, v19, v7);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = (v22 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v23;
  (*(v3 + 32))(&v12[v10], v20, v5);
  (*(v6 + 32))(&v12[v11], v21, v7);

  sub_100512C8C(v1, &unk_1006E7590, v12);
  sub_10000BE18(v1, &unk_100845860, &unk_1006BF9D0);
  v24(v1, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v23;

  sub_100512C8C(v1, &unk_1006E75A0, v13);
  sub_10000BE18(v1, &unk_100845860, &unk_1006BF9D0);
  v15 = sub_10051A2C0(&qword_100846A88, v14, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
  v16 = swift_task_alloc();
  v0[15] = v16;
  v17 = sub_100007224(&qword_100846AC0, &qword_1006E75A8);
  *v16 = v0;
  v16[1] = sub_100514F0C;

  return ThrowingTaskGroup.next(isolation:)(v0 + 17, v23, v15, v17);
}

uint64_t sub_100514F0C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1005150F8;
  }

  else
  {
    v4 = sub_100515038;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100515038()
{
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.cancelAll()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005150F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100515170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100027B9C;

  return sub_100517CB4(a5);
}

uint64_t sub_10051520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for DIPError.Code();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100515384, 0, 0);
}

uint64_t sub_100515384(uint64_t a1)
{
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_100515464;

  return sub_1003DA1A4(v2, v4, 0, 0, 1);
}

uint64_t sub_100515464()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100515880;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 16);
    v6 = sub_1005155E4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10051560C(uint64_t a1)
{
  if (*(v1 + 112) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device engagement timeout exceeded. Ignoring since we're now connecting.", v4, 2u);
    }

    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v7 = *(v1 + 48);

    (*(v6 + 8))(v5, v7);

    v8 = *(v1 + 8);
  }

  else
  {
    (*(*(v1 + 32) + 104))(*(v1 + 40), enum case for DIPError.Code.documentReaderReadTimedOut(_:), *(v1 + 24));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v1 + 8);
  }

  return v8();
}

uint64_t sub_100515880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100515924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_100007224(&qword_100846AA8, &qword_1006E7510);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderSession.State();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100515A80, v3, 0);
}

uint64_t sub_100515A80()
{
  v1 = v0[5];
  v2 = *(v1 + 120);
  v0[14] = v2;
  if (v2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v18 = v0[3];
    v19 = v0[4];
    v6 = *(v1 + 128);
    v7 = v2;
    os_unfair_lock_lock((v6 + 32));
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10051AC70;
    *(v11 + 24) = v10;
    *(v6 + 16) = sub_1000222A4;
    *(v6 + 24) = v11;

    os_unfair_lock_unlock((v6 + 32));
    (*(v4 + 104))(v3, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v5);
    v9(v3);

    (*(v4 + 8))(v3, v5);
    v12 = swift_task_alloc();
    v0[15] = v12;
    v12[2] = v7;
    v12[3] = v18;
    v12[4] = v19;
    sub_10051A2C0(&qword_100846A88, v13, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_100515E2C;
    v15 = v0[10];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v15, &unk_1006E7520);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100515E2C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_10051606C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100515F54;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100515F54()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v0[9] + 48);
  v8 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  (*(*(v8 - 8) + 32))(v4, &v2[v7], v8);
  [v1 invalidate];

  v9 = *(v3 + 120);
  *(v3 + 120) = 0;

  *(v3 + 112) = 0;

  v10 = v0[1];

  return v10(v5, v6);
}

uint64_t sub_10051606C()
{
  v1 = v0[14];
  v2 = v0[5];

  [v1 invalidate];

  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  *(v2 + 112) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100516120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = type metadata accessor for DIPError();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_100007224(&qword_100846AB0, &qword_1006E7540);
  v4[32] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100516348, 0, 0);
}

uint64_t sub_100516348()
{
  v1 = v0[22];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[40] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100516490;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100846AB8, &unk_1006E7548);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100517138;
  v0[13] = &unk_100815E90;
  v0[14] = v3;
  [v1 sendDocumentRequest:isa timeoutInterval:0 sessionTermination:v0 + 10 responseHandler:300.0];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100516490()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_100516EB8;
  }

  else
  {
    v2 = sub_1005165A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005165A0()
{
  v47 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  if (v1 >> 60 == 15)
  {
    (*(*(v0 + 296) + 104))(*(v0 + 312), enum case for DIPError.Code.documentReaderSTSConnectionError(_:), *(v0 + 288));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v3 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v4 = [*(v0 + 176) stsReaderCryptarch];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for ISO18013SessionCryptarch();
      v6 = v5;
      sub_100517230(v6);
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v9 = *(v0 + 256);
      ISO18013SessionCryptarch.localKey.getter();
      if ((*(v8 + 48))(v9, 1, v7) != 1)
      {
        v44 = *(*(v0 + 272) + 32);
        v44(*(v0 + 280), *(v0 + 256), *(v0 + 264));
        defaultLogger()();
        sub_10000B8B8(v2, v1);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        sub_10000BD94(v2, v1);
        v21 = os_log_type_enabled(v19, v20);
        v45 = *(v0 + 248);
        v22 = *(v0 + 224);
        v23 = *(v0 + 232);
        v24 = v2;
        if (v21)
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v46 = v26;
          *v25 = 136315138;
          sub_10000B8B8(v24, v1);
          v43 = v22;
          v27 = Data.description.getter();
          v42 = v20;
          v29 = v28;
          sub_10000BD94(v24, v1);
          v30 = sub_100141FE4(v27, v29, &v46);

          *(v25 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v19, v42, "SecureTransactionServiceManager readDocument received response %s", v25, 0xCu);
          sub_10000BB78(v26);

          v31 = *(v23 + 8);
          v32 = v45;
          v33 = v43;
        }

        else
        {

          v31 = *(v23 + 8);
          v32 = v45;
          v33 = v22;
        }

        v41 = v31;
        v31(v32, v33);
        v34 = *(v0 + 280);
        v40 = *(v0 + 264);
        v35 = *(v0 + 240);
        v36 = *(v0 + 224);
        v37 = *(v0 + 168);
        defaultLogger()();
        v38 = swift_task_alloc();
        *(v38 + 16) = v24;
        *(v38 + 24) = v1;
        Logger.sensitive(_:)();

        v41(v35, v36);
        defaultLogger()();
        *(swift_task_alloc() + 16) = v34;
        Logger.sensitive(_:)();

        v41(v35, v36);
        v39 = *(sub_100007224(&qword_100846AA8, &qword_1006E7510) + 48);
        *v37 = v24;
        v37[1] = v1;
        v44(v37 + v39, v34, v40);

        v17 = *(v0 + 8);
        goto LABEL_13;
      }

      v10 = *(v0 + 312);
      v11 = *(v0 + 288);
      v12 = *(v0 + 296);
      sub_10000BE18(*(v0 + 256), &qword_100846AB0, &qword_1006E7540);
      (*(v12 + 104))(v10, enum case for DIPError.Code.documentReaderEphemeralReaderPrivateKeyNil(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v3 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      (*(*(v0 + 296) + 104))(*(v0 + 312), enum case for DIPError.Code.documentReaderEphemeralReaderPrivateKeyNil(_:), *(v0 + 288));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v3 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    sub_10000BD94(v2, v1);
  }

  *(v0 + 160) = v3;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_willThrow();
  }

  else
  {
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v13);
    (*(v16 + 16))(v14, v13, v15);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v16 + 8))(v13, v15);
  }

  v17 = *(v0 + 8);
LABEL_13:

  return v17();
}

uint64_t sub_100516EB8(uint64_t a1)
{
  v2 = v1[40];
  swift_willThrow();

  v1[20] = v1[41];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(v1[26] + 8))(v1[27], v1[25]);
    swift_willThrow();
  }

  else
  {
    v3 = v1[38];
    v4 = v1[39];
    v5 = v1[36];
    v6 = v1[37];
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v4);
    (*(v6 + 16))(v3, v4, v5);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v6 + 8))(v4, v5);
  }

  v7 = v1[1];

  return v7();
}

uint64_t sub_100517138(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_100517230(void *a1)
{
  v2 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v44 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v19 = [a1 curve];
  if (v19 >= 5)
  {
    (*(v9 + 104))(v11, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v8);
    v28 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v20 = **(&off_100815F30 + v19);
    v42 = v13;
    v43 = v12;
    (*(v13 + 104))(v18, v20, v12);
    v35 = a1;
    v21 = [a1 variant];
    v22 = v18;
    if (v21)
    {
      v23 = v45;
      v24 = v44;
      if (v21 != 1)
      {
        (*(v9 + 104))(v11, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v8);
        v28 = sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v42 + 8))(v22, v43);
        return v28;
      }

      v25 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
      v27 = v42;
      v26 = v43;
    }

    else
    {
      v25 = &enum case for ISO18013SessionCryptarch.Variant.standard(_:);
      v27 = v42;
      v26 = v43;
      v23 = v45;
      v24 = v44;
    }

    v29 = v23;
    (*(v24 + 13))(v7, *v25, v23);
    (*(v36 + 104))(v39, enum case for ISO18013SessionCryptarch.Role.reader(_:), v37);
    (*(v27 + 16))(v16, v22, v26);
    (*(v24 + 2))(v38, v7, v29);
    v44 = v22;
    v30 = v35;
    v31 = [v35 privateKey];
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v40;
    v32 = v41;
    v33 = dispatch thunk of ISO18013SessionCryptarch.__allocating_init(role:curve:variant:localKey:)();
    if (!v32)
    {
      v28 = v33;
    }

    (*(v24 + 1))(v7, v45);
    (*(v42 + 8))(v44, v43);
  }

  return v28;
}

uint64_t sub_1005178A8()
{
  _StringGuts.grow(_:)(65);
  v0._object = 0x800000010071D630;
  v0._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_10051793C()
{
  _StringGuts.grow(_:)(75);
  v0._object = 0x800000010071D5E0;
  v0._countAndFlagsBits = 0xD000000000000049;
  String.append(_:)(v0);
  v1 = ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  v4 = Data.base16EncodedString()();
  sub_10000B90C(v1, v3);
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_1005179EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a2, v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;

  sub_1003E653C(0, 0, v9, a4, v18);
}

uint64_t sub_100517C38()
{
  v1 = *(v0 + 16);
  [*(v1 + 120) invalidate];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  *(v1 + 112) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100517CB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for STSReader.StateEvent();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_100007224(&qword_100846A98, &qword_1006E74F8);
  v2[10] = swift_task_alloc();
  v5 = sub_100007224(&qword_100846AA0, &unk_1006E7500);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderSession.State();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100517F58, v1, 0);
}

uint64_t sub_100517F58(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureTransactionServiceManager stream started", v4, 2u);
  }

  v5 = *(v1 + 184);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v9 = *(v1 + 120);
  v8 = *(v1 + 128);
  v10 = *(v1 + 112);
  v11 = *(v1 + 24);

  v12 = *(v7 + 8);
  *(v1 + 192) = v12;
  v12(v5, v6);
  v13 = *(v11 + 128);
  *(v1 + 200) = v13;
  os_unfair_lock_lock((v13 + 32));
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10051A498;
  *(v17 + 24) = v16;
  *(v13 + 16) = sub_1000222A4;
  *(v13 + 24) = v17;

  os_unfair_lock_unlock((v13 + 32));
  v18 = enum case for MobileDocumentReaderSession.State.ready(_:);
  v19 = *(v9 + 104);
  *(v1 + 208) = v19;
  *(v1 + 216) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v8, v18, v10);
  v15(v8);

  v20 = *(v9 + 8);
  *(v1 + 224) = v20;
  *(v1 + 232) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v8, v10);
  STSReader.StateChanges.makeAsyncIterator()();
  v22 = sub_10051A2C0(&qword_100846A88, v21, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
  *(v1 + 240) = v22;
  *(v1 + 256) = enum case for STSReader.StateEvent.tnepFailed(_:);
  *(v1 + 260) = enum case for STSReader.StateEvent.invalidated(_:);
  *(v1 + 264) = enum case for STSReader.StateEvent.alternativeCarrierConnected(_:);
  *(v1 + 268) = enum case for STSReader.StateEvent.tnepCompleted(_:);
  *(v1 + 272) = enum case for MobileDocumentReaderSession.State.connecting(_:);
  v23 = *(v1 + 24);
  v24 = swift_task_alloc();
  *(v1 + 248) = v24;
  *v24 = v1;
  v24[1] = sub_10051825C;
  v25 = *(v1 + 80);
  v26 = *(v1 + 88);

  return AsyncStream.Iterator.next(isolation:)(v25, v23, v22, v26);
}

uint64_t sub_10051825C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10051836C, v1, 0);
}

uint64_t sub_10051836C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 40);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v5 = static Task<>.isCancelled.getter();
    v6 = *(v4 + 104);
    v7 = *(v0 + 32);
    if (v5)
    {
      v6(*(v0 + 48), enum case for DIPError.Code.documentReadCancelled(_:), v7);
    }

    else
    {
      v6(*(v0 + 48), enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:), v7);
    }

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 72);
  (*(v3 + 32))(v9, v1, v2);
  v10 = (*(v3 + 88))(v9, v2);
  if (v10 == v8)
  {
    (*(*(v0 + 64) + 96))(*(v0 + 72), *(v0 + 56));
    defaultLogger()();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "SecureTransactionServiceManager stream received tnepFailed with error %@", v13, 0xCu);
      sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 136);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);

    v16(v17, v18);
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    goto LABEL_10;
  }

  if (v10 == *(v0 + 260))
  {
    v24 = *(v0 + 72);
    (*(*(v0 + 64) + 96))(v24, *(v0 + 56));
    v25 = *v24;
    defaultLogger()();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      if (v25)
      {
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v28 + 4) = v30;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "SecureTransactionServiceManager stream received invalidated with error %@", v28, 0xCu);
      sub_10000BE18(v29, &unk_100833B50, &unk_1006D8FB0);
    }

    v63 = *(v0 + 192);
    v64 = *(v0 + 160);
    v65 = *(v0 + 136);

    v63(v64, v65);
    if (!v25)
    {
      (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:), *(v0 + 32));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v66 = *(v0 + 96);
    v67 = *(v0 + 104);
    v68 = *(v0 + 88);
    swift_willThrow();
    (*(v66 + 8))(v67, v68);
    goto LABEL_10;
  }

  if (v10 == *(v0 + 264))
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "SecureTransactionServiceManager stream received alternativeCarrierConnected, sending document request…", v34, 2u);
    }

    v35 = *(v0 + 192);
    v36 = *(v0 + 176);
    v37 = *(v0 + 136);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v40 = *(v0 + 88);

    v35(v36, v37);
    (*(v38 + 8))(v39, v40);

    v22 = *(v0 + 8);
    goto LABEL_11;
  }

  if (v10 != *(v0 + 268))
  {
    v60 = *(v0 + 96);
    v61 = *(v0 + 88);
    v62 = *(v0 + 64);
    v74 = *(v0 + 72);
    v70 = *(v0 + 104);
    v72 = *(v0 + 56);
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.internalError(_:), *(v0 + 32));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v60 + 8))(v70, v61);
    (*(v62 + 8))(v74, v72);
LABEL_10:

    v22 = *(v0 + 8);
LABEL_11:

    return v22();
  }

  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "SecureTransactionServiceManager stream received tnepCompleted", v43, 2u);
  }

  v71 = *(v0 + 272);
  v73 = *(v0 + 224);
  v69 = *(v0 + 208);
  v44 = *(v0 + 192);
  v45 = *(v0 + 200);
  v46 = *(v0 + 152);
  v47 = *(v0 + 128);
  v48 = *(v0 + 136);
  v49 = *(v0 + 112);
  v50 = *(v0 + 24);

  v44(v46, v48);
  *(v50 + 112) = 1;
  os_unfair_lock_lock((v45 + 32));
  v52 = *(v45 + 16);
  v51 = *(v45 + 24);
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_10051AC70;
  *(v54 + 24) = v53;
  *(v45 + 16) = sub_1000222A4;
  *(v45 + 24) = v54;

  os_unfair_lock_unlock((v45 + 32));
  v69(v47, v71, v49);
  v52(v47);

  v73(v47, v49);
  v55 = *(v0 + 240);
  v56 = *(v0 + 24);
  v57 = swift_task_alloc();
  *(v0 + 248) = v57;
  *v57 = v0;
  v57[1] = sub_10051825C;
  v58 = *(v0 + 80);
  v59 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v58, v56, v55, v59);
}

uint64_t sub_100518F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100519044, v3, 0);
}

uint64_t sub_100519044(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureTransactionServiceManager signDigest called", v4, 2u);
  }

  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 80);
  v8 = *(v1 + 48);

  (*(v6 + 8))(v5, v7);
  v10 = *(v8 + 120);
  *(v1 + 104) = v10;
  if (v10)
  {
    v12 = *(v1 + 40);
    v11 = *(v1 + 48);
    v20 = *(v1 + 24);
    v13 = sub_10051A2C0(&qword_100846A88, v9, type metadata accessor for SecureTransactionServiceManager, &unk_1006E74C0);
    v14 = swift_task_alloc();
    *(v1 + 112) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v20;
    *(v14 + 40) = v12;
    v15 = v10;
    v16 = swift_task_alloc();
    *(v1 + 120) = v16;
    v17 = sub_100007224(&qword_10083C160, &qword_1006DECE0);
    *v16 = v1;
    v16[1] = sub_1005193B8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 16, v11, v13, 0xD000000000000017, 0x800000010071D240, sub_10051A308, v14, v17);
  }

  else
  {
    (*(*(v1 + 64) + 104))(*(v1 + 72), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v1 + 56));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = *(v1 + 8);

    return v18();
  }
}

uint64_t sub_1005193B8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_100519568;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1005194E0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005194E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100519568()
{
  v1 = v0[13];
  v2 = v0[6];

  [*(v2 + 120) invalidate];
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  *(v2 + 112) = 0;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_100519618(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_100007224(&qword_100846A90, &qword_1006E74F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - v12;
  (*(v11 + 16))(aBlock - v12, a1, v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  (*(v11 + 32))(&v15[v14], v13, v10);
  aBlock[4] = sub_10051A3EC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_100815D50;
  v16 = _Block_copy(aBlock);

  sub_10000B8B8(a4, a5);

  [a2 executeOnSEProxyWithBlock:v16];
  _Block_release(v16);
}

id sub_1005197FC(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v53 = a5;
  v55 = a3;
  v45 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v54 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v9;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "SecureTransactionServiceManager within executeOnSEProxy block", v20, 2u);
    v9 = v51;
  }

  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    (*(v56 + 104))(v13, enum case for DIPError.Code.internalError(_:), v57);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v21 = swift_allocError();
LABEL_5:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v58 = v21;
    sub_100007224(&qword_100846A90, &qword_1006E74F0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    (*(v56 + 104))(v13, enum case for DIPError.Code.documentReaderDidNotReceiveSTSEndpoint(_:), v57);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v21 = swift_allocError();
    goto LABEL_5;
  }

  type metadata accessor for SESKeystore();
  swift_allocObject();
  v23 = a1;
  v50 = SESKeystore.init()();
  v51 = [objc_allocWithZone(LAContext) init];
  v24 = v55;
  v25 = v55[2];
  v26 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v43 = v23;
    v44 = a6;
    v49 = a1;
    v58 = _swiftEmptyArrayStorage;
    sub_10017314C(0, v25, 0);
    v26 = v58;
    v47 = enum case for SESKeystore.SignatureOutputFormat.raw(_:);
    v46 = (v9 + 104);
    v48 = (v9 + 8);
    v27 = v24 + 5;
    v28 = v45;
    v29 = v54;
    while (1)
    {
      v56 = v25;
      v57 = v26;
      v31 = *(v27 - 1);
      v30 = *v27;
      v55 = v27;
      sub_10000B8B8(v31, v30);
      result = [v51 externalizedContext];
      if (!result)
      {
        break;
      }

      v32 = result;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      (*v46)(v29, v47, v28);
      v36 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
      v38 = v37;
      sub_10000B90C(v33, v35);
      sub_10000B90C(v31, v30);
      (*v48)(v29, v28);
      v26 = v57;
      v58 = v57;
      v40 = v57[2];
      v39 = v57[3];
      if (v40 >= v39 >> 1)
      {
        sub_10017314C((v39 > 1), v40 + 1, 1);
        v28 = v45;
        v26 = v58;
      }

      v29 = v54;
      v27 = v55 + 2;
      v26[2] = v40 + 1;
      v41 = &v26[2 * v40];
      v41[4] = v36;
      v41[5] = v38;
      v25 = v56 - 1;
      if (v56 == 1)
      {
        v23 = v43;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v58 = v26;
    sub_100007224(&qword_100846A90, &qword_1006E74F0);
    CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t sub_100519F1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "SecureTransactionServiceManager %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 120);
  if (v10)
  {
    [v10 invalidate];
    v11 = *(v1 + 120);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + 120) = 0;

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10051A0F4()
{
  sub_100519F1C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10051A144(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017AD78;

  return sub_100512F08(a1);
}

uint64_t sub_10051A1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100103B8C;

  return sub_100515924(a1, a2, a3);
}

uint64_t sub_10051A288()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10051A2C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10051A314()
{
  v1 = sub_100007224(&qword_100846A90, &qword_1006E74F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_10000B90C(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_10051A3EC(void *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100846A90, &qword_1006E74F0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1005197FC(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_10051A480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10051A4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100516120(a1, v4, v5, v6);
}

uint64_t sub_10051A598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100517C18(a1, v4, v5, v6);
}

uint64_t sub_10051A674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1005135E0(a1, v4, v5, v6);
}

uint64_t sub_10051A768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100515904(a1, v4, v5, v6);
}

uint64_t sub_10051A81C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_100514A90(a1, a2, v6, v7, v8);
}

uint64_t sub_10051A8E0()
{
  v1 = type metadata accessor for STSReader.StateChanges();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10051AA38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for STSReader.StateChanges() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_100515170(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_10051AB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10051520C(a1, v4, v5, v6);
}

uint64_t sub_10051AC74()
{
  type metadata accessor for SignpostManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  qword_100882378 = v0;
  return result;
}

uint64_t sub_10051ACBC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPSignpost();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v42 - v8;
  v9 = type metadata accessor for DIPSignpost.Config();
  v10 = __chkstk_darwin(v9);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v45 = &v42 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v17 = *(v13 + 16);
    v16 = v13 + 16;
    v18 = (a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v49 = (v47 + 32);
    v50 = v17;
    v48 = *(v16 + 56);
    v51 = v16;
    v43 = v2;
    v44 = (v16 - 8);
    v42 = v47 + 40;
    while (1)
    {
      v52 = v15;
      v19 = v45;
      v20 = v50;
      v50(v45, v18, v9);
      v21 = v53;
      v22 = v9;
      v20(v53, v19, v9);
      v23 = v46;
      DIPSignpost.init(_:)();
      swift_beginAccess();
      v24 = *v49;
      v25 = v7;
      v26 = v4;
      (*v49)(v7, v23, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v2 + 112);
      v28 = v54;
      *(v2 + 112) = 0x8000000000000000;
      v30 = sub_10003B610(v21);
      v31 = v28[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v29;
      if (v28[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100170CF4();
        }
      }

      else
      {
        sub_100168B60(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_10003B610(v53);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_17;
        }

        v30 = v35;
      }

      v4 = v26;
      v37 = v54;
      v9 = v22;
      if (v34)
      {
        v7 = v25;
        (*(v47 + 40))(v54[7] + *(v47 + 72) * v30, v25, v4);
        (*v44)(v53, v22);
      }

      else
      {
        v54[(v30 >> 6) + 8] |= 1 << v30;
        v38 = v53;
        v50(v37[6] + v30 * v48, v53, v9);
        v7 = v25;
        v24((v37[7] + *(v47 + 72) * v30), v25, v4);
        (*v44)(v38, v9);
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_16;
        }

        v37[2] = v41;
      }

      v2 = v43;
      *(v43 + 112) = v37;

      result = swift_endAccess();
      v18 += v48;
      v15 = v52 - 1;
      if (v52 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10051B0E0(uint64_t a1)
{
  v2 = v1;
  v60 = type metadata accessor for DIPSignpost();
  v48 = *(v60 - 8);
  __chkstk_darwin(v60);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DIPSignpost.Config();
  result = __chkstk_darwin(v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = v14;
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = v13;
    swift_beginAccess();
    v21 = *(v18 + 16);
    v18 += 16;
    v55 = v21;
    v61 = (v48 + 56);
    v47 = (v48 + 16);
    v54 = (v48 + 48);
    v22 = *(v18 + 56);
    v44 = (v48 + 8);
    v56 = v18;
    v51 = (v18 - 8);
    v46 = v48 + 32;
    v58 = v10;
    v59 = v8;
    v57 = v20;
    v52 = v16;
    v53 = v22;
    v50 = v2;
    v21(v16, v19, v20);
    while (1)
    {
      v30 = *(v2 + 112);
      if (*(v30 + 16))
      {

        v31 = sub_10003B610(v16);
        v32 = v60;
        if (v33)
        {
          (*(v48 + 16))(v10, *(v30 + 56) + *(v48 + 72) * v31, v60);
          v34 = 0;
        }

        else
        {
          v34 = 1;
        }
      }

      else
      {
        v34 = 1;
        v32 = v60;
      }

      v35 = *v61;
      (*v61)(v10, v34, 1, v32);
      if ((*v54)(v10, 1, v32))
      {
        sub_10051B628(v10);
      }

      else
      {
        v36 = v45;
        (*v47)(v45, v10, v32);
        sub_10051B628(v10);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*v44)(v36, v32);
      }

      swift_beginAccess();
      v37 = sub_10003B610(v16);
      if (v38)
      {
        v39 = v37;
        v49 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v2 + 112);
        v62 = v41;
        *(v2 + 112) = 0x8000000000000000;
        v42 = v2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100170CF4();
          v41 = v62;
        }

        v25 = v53;
        v27 = v51;
        v24 = v57;
        (*v51)(*(v41 + 48) + v39 * v53, v57);
        v23 = v59;
        v43 = v60;
        (*(v48 + 32))(v59, *(v41 + 56) + *(v48 + 72) * v39, v60);
        sub_10015072C(v39, v41);
        *(v42 + 112) = v41;

        v49(v23, 0, 1, v43);
      }

      else
      {
        v23 = v59;
        v24 = v57;
        v25 = v53;
        v26 = v32;
        v27 = v51;
        v35(v59, 1, 1, v26);
      }

      sub_10051B628(v23);
      swift_endAccess();
      v28 = v52;
      result = (*v27)(v52, v24);
      v19 += v25;
      --v17;
      v10 = v58;
      v29 = v24;
      v16 = v28;
      v2 = v50;
      if (!v17)
      {
        break;
      }

      v55(v28, v19, v29);
    }
  }

  return result;
}

uint64_t sub_10051B5CC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10051B628(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10051B690(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 64);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10[0] = *(v5 - 4);
      v10[1] = v8;
      v10[2] = v9;
      v10[3] = v6;
      v10[4] = v7;

      sub_10052E520(v10, a2);
      if (v2)
      {
        break;
      }

      v5 += 5;

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10051B76C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = MCFeatureDiagnosticsSubmissionAllowed;
    v3 = [v1 effectiveBoolValueForSetting:v2];

    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  byte_100882380 = v4;
}

uint64_t sub_10051B804()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10053B9C0(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100846B98 = result;
  return result;
}

uint64_t sub_10051BAF0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, _OWORD *a13, char a14)
{
  v16 = v14;
  v105 = a8;
  v98 = a7;
  v103 = a6;
  v97 = a5;
  v95 = a4;
  v102 = a3;
  v96 = a2;
  v104 = a13;
  v119 = a12;
  v94 = type metadata accessor for Logger();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DIPError.Code();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v101 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 216) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 232) = 0u;
  *(v14 + 248) = 0u;
  v107 = v14 + 216;
  *(v14 + 264) = 0u;
  *(v14 + 280) = 0xF000000000000000;
  *(v14 + 288) = 0u;
  *(v14 + 304) = 0u;
  *(v14 + 320) = 0u;
  *(v14 + 336) = 0u;
  *(v14 + 352) = 0xF000000000000000;
  *(v14 + 360) = 0;
  *(v14 + 368) = 0;
  *(v14 + 376) = 0;
  *(v14 + 384) = 0x6567616D2E6D6F63;
  *(v14 + 392) = 0xEB0000000061746ELL;
  *(v14 + 400) = 257;
  v23 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v24 = type metadata accessor for ORDRequest(0);
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v26 = type metadata accessor for OTDRequest(0);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = (v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  *v27 = 0;
  v27[1] = 0;
  v106 = a11;
  sub_10000BBC4(a11, &v111, &qword_100834EB0, &qword_1006E78F0);
  if (v112)
  {
    sub_10001F358(&v111, &v113);
  }

  else
  {
    sub_1000CCD08(&v113);
    if (v112)
    {
      sub_10000BE18(&v111, &qword_100834EB0, &qword_1006E78F0);
    }
  }

  v108 = a1;
  if (!v114)
  {

    sub_10000BE18(&v113, &qword_100834EB0, &qword_1006E78F0);
    (*(v21 + 104))(v101, enum case for DIPError.Code.assessmentGUIDsExhausted(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

    sub_10000BE18(v119, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BE18(v106, &qword_100834EB0, &qword_1006E78F0);
LABEL_16:

    sub_10000BE18(v107, &qword_100834EB0, &qword_1006E78F0);

    sub_10000BD94(*(v16 + 272), *(v16 + 280));
    sub_10000BE18(v16 + 288, &qword_100834EB0, &qword_1006E78F0);

    sub_10000BD94(*(v16 + 344), *(v16 + 352));

    sub_10000BE18(v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest, &unk_10084A170, &unk_1006E7900);
    sub_10000BE18(v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest, &qword_100847538, &unk_1006E83A0);

    type metadata accessor for DIPODNator(0);
    swift_deallocPartialClassInstance();
    return v16;
  }

  v92 = v20;
  v100 = a9;
  v99 = a10;
  sub_10001F358(&v113, &v116);
  v29 = v117;
  v28 = v118;
  sub_10000BA08(&v116, v117);
  v30 = (*(v28 + 8))(v29, v28);
  v32 = v31;
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v33 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);

  os_unfair_lock_unlock(v33 + 6);
  v34 = sub_100544838(v30, v32);
  if (v15)
  {

    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

LABEL_13:
    sub_10000BE18(v119, &qword_100834EB0, &qword_1006E78F0);
    v39 = v106;
LABEL_14:
    sub_10000BE18(v39, &qword_100834EB0, &qword_1006E78F0);
LABEL_15:
    sub_10000BB78(&v116);
    goto LABEL_16;
  }

  v36 = v30;
  v37 = v35;
  v91._countAndFlagsBits = v36;
  v91._object = v32;
  v90 = v34;

  if (v37 >> 60 == 15)
  {

    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v113 = 0xD000000000000026;
    *(&v113 + 1) = 0x800000010071DBF0;
    String.append(_:)(v91);

    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    (*(v21 + 104))(v101, enum case for DIPError.Code.internalError(_:), v92);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

    goto LABEL_13;
  }

  sub_10000BBC4(v119, &v109, &qword_100834EB0, &qword_1006E78F0);
  if (v110)
  {
    sub_10001F358(&v109, &v111);
  }

  else
  {
    sub_1000CCD08(&v111);
    if (v110)
    {
      sub_10000BE18(&v109, &qword_100834EB0, &qword_1006E78F0);
    }
  }

  v89 = v37;
  v41 = v92;
  if (!v112)
  {

    sub_10000BE18(&v111, &qword_100834EB0, &qword_1006E78F0);
    (*(v21 + 104))(v101, enum case for DIPError.Code.assessmentGUIDsExhausted(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v90, v89);
    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

    sub_10000BE18(v119, &qword_100834EB0, &qword_1006E78F0);
    v39 = v106;
    goto LABEL_14;
  }

  sub_10001F358(&v111, &v113);
  v88 = 0;
  v42 = v114;
  v43 = v115;
  sub_10000BA08(&v113, v114);
  v44 = (*(v43 + 8))(v42, v43);
  v46 = v45;
  os_unfair_lock_lock(v33 + 6);

  os_unfair_lock_unlock(v33 + 6);
  v47 = v88;
  v48 = sub_100544838(v44, v46);
  if (v47)
  {
    sub_10000BD94(v90, v89);

    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

LABEL_28:
    sub_10000BE18(v119, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BE18(v106, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BB78(&v113);
    goto LABEL_15;
  }

  v50 = v48;
  v86 = v44;
  v87 = v49;

  if (v87 >> 60 == 15)
  {

    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v111 = 0xD000000000000024;
    *(&v111 + 1) = 0x800000010071DC50;
    v51._countAndFlagsBits = v86;
    v51._object = v46;
    String.append(_:)(v51);

    v52._countAndFlagsBits = 41;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    (*(v21 + 104))(v101, enum case for DIPError.Code.internalError(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v90, v89);
    sub_10000BE18(v104, &unk_10084A150, &qword_1006E78F8);

    goto LABEL_28;
  }

  v101 = v50;
  defaultLogger()();
  object = v91._object;

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  v56 = os_log_type_enabled(v54, v55);
  v88 = 0;
  v85 = v46;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *&v111 = swift_slowAlloc();
    *v57 = 136446466;
    *(v57 + 4) = sub_100141FE4(v91._countAndFlagsBits, object, &v111);
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_100141FE4(v86, v46, &v111);
    _os_log_impl(&_mh_execute_header, v54, v55, "Using aguid %{public}s, tguid %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  (*(v93 + 8))(v19, v94);
  v58 = v108;
  v59 = v108[2];
  v60 = *(v59 + 24);
  *(v16 + 16) = *(v59 + 16);
  *(v16 + 24) = v60;
  v61 = v58[3];
  v62 = v99;
  if (v61)
  {
    v63 = v61[3];
    *(v16 + 32) = v61[2];
    *(v16 + 40) = v63;
    v64 = v61[9];
    *(v16 + 48) = v61[8];
    *(v16 + 56) = v64;
    v65 = v61[16];
    *(v16 + 64) = v61[15];
    *(v16 + 72) = v65;
    v67 = v61[17];
    v66 = v61[18];
  }

  else
  {
    v67 = 0x414C494156414E55;
    v66 = 0xEB00000000454C42;
    *(v16 + 32) = 0x414C494156414E55;
    *(v16 + 40) = 0xEB00000000454C42;
    *(v16 + 48) = 0x414C494156414E55;
    *(v16 + 56) = 0xEB00000000454C42;
    *(v16 + 64) = 0;
    *(v16 + 72) = 0;
  }

  sub_10000BE18(v119, &qword_100834EB0, &qword_1006E78F0);
  sub_10000BE18(v106, &qword_100834EB0, &qword_1006E78F0);
  *(v16 + 80) = v67;
  *(v16 + 88) = v66;
  v68 = v58[1082];
  v69 = v58[1083];

  *(v16 + 96) = v68;
  *(v16 + 104) = v69;
  v70 = v102;
  *(v16 + 184) = v95 & 1;
  *(v16 + 168) = v96;
  *(v16 + 176) = v70;
  v71 = v103;
  *(v16 + 192) = v97;
  *(v16 + 200) = v71;
  *(v16 + 208) = v98;
  *(v16 + 144) = v105;
  *(v16 + 152) = v100;
  *(v16 + 160) = v62;
  sub_100020260(&v116, &v111);
  v72 = v107;
  swift_beginAccess();
  sub_1000B2764(&v111, v72, &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v73 = v91._object;
  *(v16 + 256) = v91._countAndFlagsBits;
  *(v16 + 264) = v73;

  v74 = *(v16 + 272);
  v75 = *(v16 + 280);
  v76 = v89;
  *(v16 + 272) = v90;
  *(v16 + 280) = v76;
  sub_10000BD94(v74, v75);
  sub_100020260(&v113, &v111);
  swift_beginAccess();
  sub_1000B2764(&v111, v16 + 288, &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v77 = v85;
  *(v16 + 328) = v86;
  *(v16 + 336) = v77;

  v78 = *(v16 + 344);
  v79 = *(v16 + 352);
  v80 = v87;
  *(v16 + 344) = v101;
  *(v16 + 352) = v80;
  sub_10000BD94(v78, v79);
  v81 = (v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
  v82 = v104;
  v83 = v104[3];
  v81[2] = v104[2];
  v81[3] = v83;
  v81[4] = v82[4];
  v84 = v82[1];
  *v81 = *v82;
  v81[1] = v84;
  *(v16 + 402) = a14 & 1;
  sub_10000BB78(&v113);
  sub_10000BB78(&v116);
  return v16;
}

uint64_t sub_10051CE1C(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v11 = v10;
  v116 = a8;
  v111 = a2;
  v112 = a7;
  v110 = a1;
  v118 = 0;
  LODWORD(v123) = a9;
  v16 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  __chkstk_darwin(v16 - 8);
  v102 = &v101 - v17;
  v18 = type metadata accessor for AugmentedProfile(0);
  __chkstk_darwin(v18 - 8);
  v104 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Logger();
  v115 = *(v119 - 8);
  v20 = __chkstk_darwin(v119);
  v103 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v113 = &v101 - v23;
  __chkstk_darwin(v22);
  v114 = &v101 - v24;
  v25 = type metadata accessor for DIPError.Code();
  v120 = *(v25 - 8);
  v121 = v25;
  __chkstk_darwin(v25);
  v124 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v108 = *(v27 - 8);
  v109 = v27;
  __chkstk_darwin(v27);
  v106 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 232) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 264) = 0u;
  *(v10 + 280) = 0xF000000000000000;
  *(v10 + 288) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = 0u;
  *(v10 + 336) = 0u;
  *(v10 + 352) = 0xF000000000000000;
  *(v10 + 360) = 0;
  *(v10 + 368) = 0;
  *(v10 + 376) = 0;
  *(v10 + 384) = 0x6567616D2E6D6F63;
  *(v10 + 392) = 0xEB0000000061746ELL;
  *(v10 + 400) = 257;
  v29 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v30 = type metadata accessor for ORDRequest(0);
  (*(*(v30 - 8) + 56))(v10 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v32 = type metadata accessor for OTDRequest(0);
  (*(*(v32 - 8) + 56))(v10 + v31, 1, 1, v32);
  v33 = (v10 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  *v33 = 0;
  v33[1] = 0;
  v117 = a5;
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  v107 = a3;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *(v10 + 168) = a3;
  *(v10 + 176) = a4;
  v105 = a4;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0xE000000000000000;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 208) = v123;
  *(v10 + 184) = 1;
  *(v10 + 144) = 0;
  v122 = 0x800000010071E8A0;
  v123 = "sessment GUID to use";
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  v34 = swift_allocObject();
  v35 = v111;
  v34[2] = v110;
  v34[3] = v35;
  v36 = v112;
  v37 = v116;
  v34[4] = v112;
  v34[5] = v37;
  type metadata accessor for DIPAssessmentWebService();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  runAsyncAndBlock<A>(file:function:line:_:)();

  *(v10 + 160) = v131;

  v38 = v106;
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  (*(v108 + 1))(v38, v109);
  v42 = sub_1005AF7BC(v39, v41, v36, v37);
  v43 = v117;

  v44 = sub_10054A524(v43, a6, v107, v105, v42);
  v116 = v44;

  *(v11 + 152) = v44;
  swift_retain_n();
  sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  v111 = 0xD000000000000054;
  runAsyncAndBlock<A>(file:function:line:_:)();

  if (*(&v131 + 1))
  {
    v45 = v104;
    v46 = v118;
    sub_10053CD68(v104);
    if (v46)
    {
      v112 = a6;
      v118 = v46;

      v47 = v103;
      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v115;
      v52 = v124;
      v53 = v120;
      v54 = v121;
      if (v50)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "unexpected error getting augmented profile", v55, 2u);
      }

      v56 = *(v51 + 8);
      v109 = (v51 + 8);
      v110 = v56;
      (v56)(v47, v119);
      v108 = "tarting GUIDFactory";
      (*(v53 + 104))(v52, enum case for DIPError.Code.odnErrorDecodingProfile(_:), v54);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v57 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v111 = v57;
      v58 = *(v57 - 8);
      v107 = *(v58 + 72);
      v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1006BF740;
      v61 = v60 + v59;
      v62 = (v60 + v59 + *(v57 + 48));
      v63 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
      v64 = type metadata accessor for DIPError.PropertyKey();
      v65 = *(*(v64 - 8) + 104);
      (v65)(v61, v63, v64);
      v62[3] = &type metadata for String;
      v62[4] = &protocol witness table for String;
      v66 = v117;
      v67 = v112;
      *v62 = v117;
      v62[1] = v67;
      v68 = (v61 + v107 + *(v111 + 48));
      v65();
      v68[3] = &type metadata for String;
      v68[4] = &protocol witness table for String;
      *v68 = v66;
      v68[1] = v67;

      sub_10003C9C0(v60);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v69 = v114;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (v110)(v69, v119);

      v70 = 0;
      v46 = 0;
    }

    else
    {

      v86 = v102;
      sub_10000BBC4(v45, v102, &qword_1008350C0, &unk_1006C0B30);
      v87 = sub_100007224(&qword_100835138, &qword_1006C0B58);
      v88 = *(v87 - 8);
      if ((*(v88 + 48))(v86, 1, v87) == 1)
      {
        sub_100537B90(v45, type metadata accessor for AugmentedProfile);
        sub_10000BE18(v86, &qword_1008350C0, &unk_1006C0B30);
        v70 = 0;
      }

      else
      {
        JWSSignedJSON.payload.getter();
        sub_100537B90(v45, type metadata accessor for AugmentedProfile);
        v135 = v129;
        v136[0] = v130[0];
        *(v136 + 13) = *(v130 + 13);
        v131 = v125;
        v132 = v126;
        v133 = v127;
        v134 = v128;
        (*(v88 + 8))(v86, v87);
        sub_10009E858(&v131);
        v70 = BYTE11(v136[1]);
      }
    }

    v85 = v113;
  }

  else
  {
    v109 = "dForSendingResults:)";
    (*(v120 + 104))(v124, enum case for DIPError.Code.odnMissingProfile(_:), v121);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v71 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v110 = v71;
    v72 = *(v71 - 8);
    v108 = *(v72 + 72);
    v73 = *(v72 + 80);
    v112 = a6;
    v74 = (v73 + 32) & ~v73;
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1006BF740;
    v76 = v75 + v74;
    v77 = (v75 + v74 + *(v71 + 48));
    v78 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v79 = type metadata accessor for DIPError.PropertyKey();
    v80 = *(*(v79 - 8) + 104);
    (v80)(v76, v78, v79);
    v77[3] = &type metadata for String;
    v77[4] = &protocol witness table for String;
    v81 = v117;
    v82 = v112;
    *v77 = v117;
    v77[1] = v82;
    v83 = &v108[v76 + v110[12]];
    v80();
    *(v83 + 3) = &type metadata for String;
    *(v83 + 4) = &protocol witness table for String;
    *v83 = v81;
    *(v83 + 1) = v82;

    sub_10003C9C0(v75);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v84 = v114;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v115 + 8))(v84, v119);

    v70 = 0;
    v85 = v113;
    v46 = v118;
  }

  LODWORD(v118) = a10;
  *(&v132 + 1) = type metadata accessor for DeviceInformationProvider();
  *&v133 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v131);
  v89 = v116;

  DeviceInformationProvider.init()();
  sub_10004D91C(&v131, v70, &unk_1006E7A40, v89, v137);
  if (v46)
  {
    v90 = (v11 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
    *v90 = 0u;
    v90[1] = 0u;
    v90[2] = 0u;
    v90[3] = 0u;
    v90[4] = 0u;
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Ignoring error initialing GUIDFactory. This will result in errors getting Assessments which may not be mandatory", v93, 2u);
    }

    v94 = *(v115 + 8);
    v95 = v119;
    v94(v85, v119);
    (*(v120 + 104))(v124, enum case for DIPError.Code.odnGUIDFactoryIssueInitializing(_:), v121);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v96 = v114;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v94(v96, v95);
  }

  else
  {

    v97 = (v11 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
    v98 = v137[3];
    v97[2] = v137[2];
    v97[3] = v98;
    v97[4] = v137[4];
    v99 = v137[1];
    *v97 = v137[0];
    v97[1] = v99;
  }

  *(v11 + 402) = v118 & 1;
  return v11;
}

uint64_t sub_10051DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10051DF5C, 0, 0);
}

uint64_t sub_10051DF5C()
{
  if (v0[4])
  {
    v1 = v0[3];
    v2 = v0[4];
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    UUID.init()();
    v1 = UUID.uuidString.getter();
    v2 = v6;
    (*(v4 + 8))(v3, v5);
  }

  v0[10] = v2;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10051E074;
  v8 = v0[5];
  v9 = v0[6];

  return sub_1005AFCD4(v1, v2, v8, v9);
}

uint64_t sub_10051E074(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10051E194, 0, 0);
}

uint64_t sub_10051E194()
{
  **(v0 + 16) = *(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10051E200(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10051E294;

  return sub_100545B38();
}

uint64_t sub_10051E294(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(sub_10051E394, 0, 0);
}

uint64_t sub_10051E3B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10051E444;

  return sub_100547540();
}

uint64_t sub_10051E444(uint64_t a1, unint64_t a2)
{
  v5 = *v2;

  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v5 + 8);

  return v8(v6, v7);
}

void sub_10051E554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v38 = a1;
  v39 = a2;
  v5 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  __chkstk_darwin(v5 - 8);
  v45 = &v37 - v6;
  v7 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for DIPPregeneratedAssessment(0);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for DIPSignpost();
  v43 = *(v13 - 8);
  v44 = v13;
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v22 = NSUserDefaults.internalBool(forKey:)(v21);

  if (v22)
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping ODIN due to setting", v25, 2u);
    }

    (*(v17 + 8))(v19, v16);
    v26 = v46;
    swift_beginAccess();
    sub_10000BBC4(v26 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
    v28 = *(v26 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v27 = *(v26 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v29 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v30 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v30 - 8) + 56))(a4 + v29, 1, 1, v30);
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;
    *(a4 + 120) = 1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 216) = v28;
    *(a4 + 224) = v27;
  }

  else
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    sub_10000BBC4(v42, v9, &unk_10084A130, &qword_1006E9ED0);
    if ((*(v40 + 48))(v9, 1, v41) == 1)
    {
      sub_10000BE18(v9, &unk_10084A130, &qword_1006E9ED0);
      v31 = sub_10051F568(v38, v39, 1);
      memset(v47, 0, sizeof(v47));
      v48 = 1;
      v32 = type metadata accessor for AugmentedProfile(0);
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v33 = v45;
      (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
      sub_100522400(v31, 0, v47, v33, 1, a4);

      sub_10000BE18(v33, &unk_10084A160, &unk_1006E7978);
    }

    else
    {
      v34 = v37;
      sub_100537B28(v9, v37, type metadata accessor for DIPPregeneratedAssessment);
      v35 = type metadata accessor for AugmentedProfile(0);
      v36 = v45;
      (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
      sub_100520B1C(v34, v36, a4);
      sub_10000BE18(v36, &unk_10084A160, &unk_1006E7978);
      sub_100537B90(v34, type metadata accessor for DIPPregeneratedAssessment);
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v43 + 8))(v15, v44);
  }
}

uint64_t sub_10051EB94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100833A88, qword_1006BF8E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v35 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v15 = type metadata accessor for DIPError();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  if (!v16)
  {
    v17(v14, 1, 1, v15);
    sub_10000BE18(v14, &qword_100833A88, qword_1006BF8E0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    goto LABEL_11;
  }

  v18 = *(v15 - 8);
  v17(v14, 0, 1, v15);
  v19 = DIPError.properties.getter();
  (*(v18 + 8))(v14, v15);
  (*(v9 + 104))(v11, enum case for DIPError.PropertyKey.underlyingErrno(_:), v8);
  if (!*(v19 + 16) || (v20 = sub_10003AF10(v11), (v21 & 1) == 0))
  {

    (*(v9 + 8))(v11, v8);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    goto LABEL_11;
  }

  sub_100020260(*(v19 + 56) + 40 * v20, &v36);
  (*(v9 + 8))(v11, v8);

  if (!*(&v37 + 1))
  {
LABEL_11:
    sub_10000BE18(&v36, &qword_10083BD10, &qword_1006DA228);
    v23 = 0;
    v24 = 1;
    goto LABEL_12;
  }

  sub_100007224(&unk_100833A90, &unk_1006DEE50);
  v22 = swift_dynamicCast();
  if (v22)
  {
    v23 = v35;
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 ^ 1;
LABEL_12:
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v25 = type metadata accessor for DIPError.Code();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v7, 1, v25) == 1)
  {
    sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);
    v27 = -1;
  }

  else
  {
    v27 = DIPError.Code.rawValue.getter();
    (*(v26 + 8))(v7, v25);
  }

  v29 = *(v33 + 32);
  v28 = *(v33 + 40);
  LOBYTE(v36) = *(v33 + 208);
  sub_10053B8D4();

  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = v27;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v29;
  *(a3 + 32) = v28;
  *(a3 + 40) = result;
  *(a3 + 48) = v31;
  *(a3 + 56) = v34;
  return result;
}

unint64_t sub_10051F010(uint64_t *a1)
{
  _StringGuts.grow(_:)(30);

  v1 = Dictionary.description.getter();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  return 0xD00000000000001CLL;
}

uint64_t sub_10051F0D0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Locale();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  if (qword_100832C80 != -1)
  {
    swift_once();
  }

  v11 = [objc_allocWithZone(NSNumber) initWithBool:byte_100882380];
  v12 = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
  v32 = v12;
  v31[0] = v11;
  sub_10014BD20(v31, 0xD000000000000014, 0x800000010071E1C0);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v13 = [objc_allocWithZone(NSNumber) initWithBool:MKBGetDeviceLockState() - 1 < 2];
  v32 = v12;
  v31[0] = v13;
  sub_10014BD20(v31, 0x6563697665447369, 0xEE0064656B636F4CLL);
  if (a3)
  {
    v14 = a3;
    v15 = v30;
  }

  else
  {
    static Locale.current.getter();
    Locale.region.getter();
    (*(v29 + 8))(v7, v5);
    v16 = type metadata accessor for Locale.Region();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_10000BE18(v10, &unk_100849BA0, &qword_1006D95F0);
      v15 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      v15 = Locale.Region.identifier.getter();
      v14 = v18;
      (*(v17 + 8))(v10, v16);
    }
  }

  v19 = sub_1005A1364(v15, v14);

  v32 = &type metadata for Int;
  v31[0] = v19;
  sub_10014BD20(v31, 0xD000000000000011, 0x800000010071E1E0);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v31, v32);
  v20 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 appleID];

    sub_10000BB78(v31);
    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v32 = &type metadata for String;
      v31[0] = v23;
      v31[1] = v25;
      sub_10014BD20(v31, 0x6469656C707061, 0xE700000000000000);
    }
  }

  else
  {
    sub_10000BB78(v31);
  }

  sub_100533D54(a1);
  v26 = sub_1005330EC(*a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *a1;
  sub_100535E1C(v26, sub_100535960, 0, isUniquelyReferenced_nonNull_native, v31);

  *a1 = v31[0];
  return result;
}

void *sub_10051F568(uint64_t a1, uint64_t a2, int a3)
{
  v214 = a2;
  v216 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v211 = &v190 - v10;
  v11 = __chkstk_darwin(v9);
  v212 = &v190 - v12;
  v13 = __chkstk_darwin(v11);
  v200 = &v190 - v14;
  v15 = __chkstk_darwin(v13);
  v202 = &v190 - v16;
  v17 = __chkstk_darwin(v15);
  v201 = &v190 - v18;
  v19 = __chkstk_darwin(v17);
  v203 = &v190 - v20;
  __chkstk_darwin(v19);
  v22 = &v190 - v21;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Preparing bindings dict from claim", v25, 2u);
  }

  v27 = *(v5 + 8);
  v26 = v5 + 8;
  v215 = v27;
  v27(v22, v4);
  v28 = sub_10003D8DC(_swiftEmptyArrayStorage);
  v222 = v28;
  if (!v216 || !v214)
  {
LABEL_85:
    if (*(v213 + 144) && (v170 = sub_10059A2CC()) != 0)
    {
      v171 = v170;
      [v170 coordinate];
      v172 = Double.description.getter();
      *(&v221 + 1) = &type metadata for String;
      *&v220 = v172;
      *(&v220 + 1) = v173;
      sub_10001F348(&v220, &v218);
      v174 = v222;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v217 = v174;
      sub_10016CC40(&v218, 0xD000000000000018, 0x800000010071E160, isUniquelyReferenced_nonNull_native);
      v176 = v217;
      [v171 coordinate];
      v177 = Double.description.getter();
      *(&v221 + 1) = &type metadata for String;
      *&v220 = v177;
      *(&v220 + 1) = v178;
      sub_10001F348(&v220, &v218);
      v179 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v176;
      sub_10016CC40(&v218, 0xD000000000000019, 0x800000010071E180, v179);
      v180 = v217;
      [v171 horizontalAccuracy];
      v181 = Double.description.getter();
      *(&v221 + 1) = &type metadata for String;
      *&v220 = v181;
      *(&v220 + 1) = v182;
      sub_10001F348(&v220, &v218);
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v180;
      sub_10016CC40(&v218, 0xD000000000000022, 0x800000010071E870, v183);
      v222 = v217;
      defaultLogger()();
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        *v186 = 0;
        _os_log_impl(&_mh_execute_header, v184, v185, "got GPS data", v186, 2u);
      }

      v8 = v211;
    }

    else
    {
      defaultLogger()();
      v171 = Logger.logObject.getter();
      v187 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v171, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&_mh_execute_header, v171, v187, "no GPS location available", v188, 2u);
      }
    }

    v215(v8, v4);
    if (a3)
    {
      sub_10051F0D0(&v222, 0, 0);
    }

    return v222;
  }

  v191 = v28;
  v207 = v26;
  v197 = a3;
  v29 = *(v216 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v209 = (v31 + 63) >> 6;

  v34 = 0;
  *&v35 = 136315394;
  v190 = v35;
  *&v35 = 136315138;
  v195 = v35;
  v208 = v4;
  v196 = v8;
  v199 = v29;
  v198 = v29 + 64;
LABEL_8:
  v36 = v34;
  while (v33)
  {
    v34 = v36;
LABEL_14:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v34 << 6);
    v39 = (*(v29 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(v29 + 56) + 96 * v38;
    v44 = *(v42 + 72);
    v43 = *(v42 + 80);

    v192 = sub_1005905A8(v41, v40);
    v205 = v47;
    v206 = v41;
    v210 = v40;
    v194 = v44;
    v48 = *(v214 + 16);
    v204 = v43;
    if (v48)
    {
      v49 = v46;
      v50 = v45;
      sub_10003ADCC(v206, v210);
      v45 = v50;
      v46 = v49;
      v193 = v51;
    }

    else
    {
      v193 = 0;
    }

    *&v220 = v45;
    *(&v220 + 1) = v46;
    *&v218 = 0x6E692D646579656BLL;
    *(&v218 + 1) = 0xE800000000000000;
    v52 = v46;
    v53 = v45;
    sub_1000348A0();
    sub_1000348F4();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {

      v63 = [objc_opt_self() standardUserDefaults];
      v64._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
      v65 = NSUserDefaults.internalBool(forKey:)(v64);

      v66 = v204;
      if (v65 && v204)
      {

        v67 = v203;
        defaultLogger()();

        v68 = v205;

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *&v220 = swift_slowAlloc();
          *v71 = v190;
          *(v71 + 4) = sub_100141FE4(v192, v68, &v220);
          *(v71 + 12) = 2080;
          v72 = v194;
          v73 = sub_100141FE4(v194, v66, &v220);

          *(v71 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v69, v70, "ODN bindings keyed-in attribute %s: %s", v71, 0x16u);
          swift_arrayDestroy();

          v215(v203, v208);
          v74 = v193;
        }

        else
        {

          v215(v67, v208);
          v74 = v193;
          v72 = v194;
        }

        goto LABEL_46;
      }

      v89 = v201;
      defaultLogger()();
      v90 = v205;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v220 = v94;
        *v93 = v195;
        *(v93 + 4) = sub_100141FE4(v192, v90, &v220);
        _os_log_impl(&_mh_execute_header, v91, v92, "ODN bindings keyed-in attribute %s", v93, 0xCu);
        sub_10000BB78(v94);
      }

      v215(v89, v208);
      v74 = v193;
      v72 = v194;
      if (v66)
      {
LABEL_46:
        *(&v221 + 1) = &type metadata for String;
        *&v220 = v72;
        *(&v220 + 1) = v66;
        sub_10001F348(&v220, &v218);
        v109 = v222;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v217 = v109;
        v111 = v192;
        v112 = v205;
        sub_10016CC40(&v218, v192, v205, v110);
        v98 = v217;
        v222 = v217;
      }

      else
      {
        v95 = sub_10003ADCC(v192, v205);
        if (v96)
        {
          v97 = v95;
          v98 = v222;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v217 = v98;
          if ((v99 & 1) == 0)
          {
            sub_10016F6B4();
            v98 = v217;
          }

          sub_10001F348((*(v98 + 56) + 32 * v97), &v218);
          sub_1001501BC(v97, v98);
          v222 = v98;
        }

        else
        {
          v218 = 0u;
          v219 = 0u;
          v98 = v222;
        }

        sub_10000BE18(&v218, &unk_100845ED0, &qword_1006DA1D0);
        v112 = v205;
        v111 = v192;
      }

      *&v220 = v111;
      *(&v220 + 1) = v112;
LABEL_51:
      v115._countAndFlagsBits = 0x657261685373692ELL;
      v115._object = 0xE900000000000064;
      String.append(_:)(v115);
      v117 = *(&v220 + 1);
      v116 = v220;
      v118 = [objc_allocWithZone(NSNumber) initWithBool:v74 & 1];
      *(&v221 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
      *&v220 = v118;
      sub_10001F348(&v220, &v218);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v98;
      sub_10016CC40(&v218, v116, v117, v119);

      v191 = v217;
      v222 = v217;
      v29 = v199;
      v30 = v198;
      goto LABEL_8;
    }

    *&v220 = v53;
    *(&v220 + 1) = v52;
    *&v218 = 0x746E656D75636F64;
    *(&v218 + 1) = 0xE800000000000000;
    v54 = BidirectionalCollection<>.starts<A>(with:)();

    if (v54)
    {
      v75 = [objc_opt_self() standardUserDefaults];
      v76._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
      v77 = NSUserDefaults.internalBool(forKey:)(v76);

      v78 = v204;
      v79 = v210;
      if (v77 && v204)
      {

        v80 = v202;
        defaultLogger()();

        v81 = Logger.logObject.getter();
        v82 = v79;
        v83 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v81, v83))
        {
          v84 = swift_slowAlloc();
          *&v220 = swift_slowAlloc();
          *v84 = v190;
          v85 = v206;
          *(v84 + 4) = sub_100141FE4(v206, v82, &v220);
          *(v84 + 12) = 2080;
          v86 = sub_100141FE4(v194, v78, &v220);

          *(v84 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v81, v83, "ODN bindings document attribute %s: %s", v84, 0x16u);
          swift_arrayDestroy();

          v87 = v85;

          v215(v202, v208);
          v88 = v194;
          v74 = v193;
          v79 = v210;
        }

        else
        {

          v215(v80, v208);
          v74 = v193;
          v88 = v194;
          v79 = v82;
          v87 = v206;
        }

        goto LABEL_49;
      }

      v100 = v200;
      defaultLogger()();

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v220 = v104;
        *v103 = v195;
        *(v103 + 4) = sub_100141FE4(v206, v79, &v220);
        _os_log_impl(&_mh_execute_header, v101, v102, "ODN bindings document attribute %s", v103, 0xCu);
        sub_10000BB78(v104);
      }

      v215(v100, v208);
      v74 = v193;
      v88 = v194;
      v87 = v206;
      if (v78)
      {
LABEL_49:
        *(&v221 + 1) = &type metadata for String;
        *&v220 = v88;
        *(&v220 + 1) = v78;
        sub_10001F348(&v220, &v218);
        v113 = v222;
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v217 = v113;
        sub_10016CC40(&v218, v87, v79, v114);
        v98 = v217;
        v222 = v217;
      }

      else
      {
        v105 = sub_10003ADCC(v206, v79);
        if (v106)
        {
          v107 = v105;
          v98 = v222;
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v217 = v98;
          if ((v108 & 1) == 0)
          {
            sub_10016F6B4();
            v98 = v217;
          }

          sub_10001F348((*(v98 + 56) + 32 * v107), &v218);
          sub_1001501BC(v107, v98);
          v222 = v98;
        }

        else
        {
          v218 = 0u;
          v219 = 0u;
          v98 = v222;
        }

        sub_10000BE18(&v218, &unk_100845ED0, &qword_1006DA1D0);
      }

      *&v220 = v87;
      *(&v220 + 1) = v79;
      goto LABEL_51;
    }

    v55 = v212;
    defaultLogger()();
    v56 = v210;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v220 = v60;
      *v59 = v195;
      v61 = sub_100141FE4(v206, v56, &v220);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "Skipping ODN bindings for attribute %s", v59, 0xCu);
      sub_10000BB78(v60);

      v62 = v212;
    }

    else
    {

      v62 = v55;
    }

    v215(v62, v208);
    v36 = v34;
    v29 = v199;
    v30 = v198;
  }

  while (1)
  {
    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_96;
    }

    if (v34 >= v209)
    {
      break;
    }

    v33 = *(v30 + 8 * v34);
    ++v36;
    if (v33)
    {
      goto LABEL_14;
    }
  }

  v120 = *(v216 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);
  v121 = v120 + 64;
  v122 = 1 << *(v120 + 32);
  v123 = -1;
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  v124 = v123 & *(v120 + 64);
  v125 = (v122 + 63) >> 6;

  v126 = 0;
  while (1)
  {
    v127 = v126;
    if (!v124)
    {
      break;
    }

LABEL_63:
    v128 = __clz(__rbit64(v124));
    v124 &= v124 - 1;
    v129 = v128 | (v126 << 6);
    v130 = (*(v120 + 48) + 16 * v129);
    v132 = *v130;
    v131 = v130[1];
    v133 = *(v120 + 56) + 96 * v129;
    v134 = *(v133 + 72);
    v135 = *(v133 + 80);

    v136 = sub_1005905A8(v132, v131);
    v209 = v120;
    v210 = v136;
    v212 = v137;

    if (*(v214 + 16))
    {
      sub_10003ADCC(v132, v131);
      v139 = v138;

      if (v135)
      {
        goto LABEL_65;
      }
    }

    else
    {

      v139 = 0;
      if (v135)
      {
LABEL_65:
        *(&v221 + 1) = &type metadata for String;
        *&v220 = v134;
        *(&v220 + 1) = v135;
        sub_10001F348(&v220, &v218);
        v140 = v222;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v217 = v140;
        sub_10016CC40(&v218, v210, v212, v141);
        v142 = v217;
        v222 = v217;
        goto LABEL_73;
      }
    }

    v143 = sub_10003ADCC(v210, v212);
    if (v144)
    {
      v145 = v143;
      v142 = v222;
      v146 = swift_isUniquelyReferenced_nonNull_native();
      *&v218 = v142;
      if ((v146 & 1) == 0)
      {
        sub_10016F6B4();
        v142 = v218;
      }

      sub_10001F348((v142[7] + 32 * v145), &v220);
      sub_1001501BC(v145, v142);
      v222 = v142;
    }

    else
    {
      v220 = 0u;
      v221 = 0u;
      v142 = v222;
    }

    sub_10000BE18(&v220, &unk_100845ED0, &qword_1006DA1D0);
LABEL_73:
    *&v220 = v210;
    *(&v220 + 1) = v212;
    v147._countAndFlagsBits = 0x657261685373692ELL;
    v147._object = 0xE900000000000064;
    String.append(_:)(v147);
    v148 = *(&v220 + 1);
    v212 = v220;
    v149 = objc_allocWithZone(NSNumber);
    v150 = v139 & 1;
    v151 = v148;
    v152 = [v149 initWithBool:v150];
    *(&v221 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
    *&v220 = v152;
    sub_10001F348(&v220, &v218);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v217 = v142;
    v210 = v151;
    v154 = sub_10003ADCC(v212, v151);
    v156 = v142[2];
    v157 = (v155 & 1) == 0;
    v158 = __OFADD__(v156, v157);
    v159 = v156 + v157;
    if (v158)
    {
      goto LABEL_97;
    }

    v160 = v155;
    if (v142[3] < v159)
    {
      sub_100166280(v159, v153);
      v154 = sub_10003ADCC(v212, v210);
      if ((v160 & 1) != (v161 & 1))
      {
        goto LABEL_99;
      }

LABEL_78:
      if (v160)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    }

    if (v153)
    {
      goto LABEL_78;
    }

    v165 = v154;
    sub_10016F6B4();
    v154 = v165;
    if (v160)
    {
LABEL_79:
      v162 = v154;

      v163 = v217;
      v164 = (*(v217 + 56) + 32 * v162);
      sub_10000BB78(v164);
      sub_10001F348(&v218, v164);
      goto LABEL_83;
    }

LABEL_81:
    v163 = v217;
    *(v217 + 8 * (v154 >> 6) + 64) |= 1 << v154;
    v166 = (v163[6] + 16 * v154);
    v167 = v210;
    *v166 = v212;
    v166[1] = v167;
    sub_10001F348(&v218, (v163[7] + 32 * v154));
    v168 = v163[2];
    v158 = __OFADD__(v168, 1);
    v169 = v168 + 1;
    if (v158)
    {
      goto LABEL_98;
    }

    v163[2] = v169;
LABEL_83:
    v120 = v209;
    v191 = v163;
    v222 = v163;
  }

  while (1)
  {
    v126 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      break;
    }

    if (v126 >= v125)
    {

      LOBYTE(a3) = v197;
      v4 = v208;
      v8 = v196;
      goto LABEL_85;
    }

    v124 = *(v121 + 8 * v126);
    ++v127;
    if (v124)
    {
      goto LABEL_63;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100520B1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v134 = a1;
  v125 = type metadata accessor for DIPError.Code();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v129 = *(v133 - 8);
  __chkstk_darwin(v133);
  v118 = &v116 - v5;
  v6 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  __chkstk_darwin(v6 - 8);
  v123 = &v116 - v7;
  v8 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v9 = __chkstk_darwin(v8 - 8);
  v128 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = &v116 - v11;
  v12 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v13 = __chkstk_darwin(v12 - 8);
  v122 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v127 = &v116 - v16;
  __chkstk_darwin(v15);
  v135 = &v116 - v17;
  v18 = type metadata accessor for AugmentedProfile(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v130 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v116 - v22;
  v24 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v25 = __chkstk_darwin(v24 - 8);
  v117 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v116 - v28;
  __chkstk_darwin(v27);
  v137 = &v116 - v30;
  v132 = type metadata accessor for Logger();
  v31 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v121 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v120 = (&v116 - v35);
  __chkstk_darwin(v34);
  v37 = &v116 - v36;
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Using pre-computed assessment", v40, 2u);
  }

  (*(v31 + 8))(v37, v132);
  v41 = *(v19 + 56);
  v42 = v137;
  v41(v137, 1, 1, v18);
  sub_10000BBC4(v131, v29, &unk_10084A160, &unk_1006E7978);
  if ((*(v19 + 48))(v29, 1, v18) == 1)
  {
    sub_10000BE18(v29, &unk_10084A160, &unk_1006E7978);

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    if (*(&v144 + 1))
    {
      v131 = 0x800000010071E760;
      v43 = v130;
      sub_10053CD68(v130);

      sub_10052DC18(v43);
      v111 = v137;
      sub_10000BE18(v137, &unk_10084A160, &unk_1006E7978);
      v112 = v43;
      v113 = v117;
      sub_100537B28(v112, v117, type metadata accessor for AugmentedProfile);
      v41(v113, 0, 1, v18);
      sub_1000B1FC8(v113, v111, &unk_10084A160, &unk_1006E7978);
    }
  }

  else
  {
    sub_10000BE18(v42, &unk_10084A160, &unk_1006E7978);
    sub_100537B28(v29, v23, type metadata accessor for AugmentedProfile);
    sub_10053BFD8(v23, v42);
    v41(v42, 0, 1, v18);
    sub_10052DC18(v23);
    sub_100537B90(v23, type metadata accessor for AugmentedProfile);
  }

  v44 = type metadata accessor for DIPPregeneratedAssessment(0);
  v45 = v134;
  v46 = (v134 + v44[7]);
  v47 = *v46;
  v48 = v46[1];
  v49 = (v134 + v44[6]);
  v51 = *v49;
  v50 = v49[1];
  v132 = v51;
  v131 = v50;
  v52 = (v134 + v44[12]);
  v53 = v52[1];
  v130 = *v52;
  type metadata accessor for DIPODNator(0);

  LODWORD(v125) = sub_100536710(v47, v48);
  v126 = v54;
  v56 = v55;
  v57 = (v45 + v44[10]);
  v58 = v57[1];
  v124 = *v57;
  swift_bridgeObjectRetain_n();

  v59 = v127;
  v60 = v128;
  sub_100521D68(v127, v128, v45);
  v61 = v135;
  sub_1000B1FC8(v59, v135, &qword_100835180, &unk_1006C0CE0);
  v62 = v60;
  v63 = v136;
  sub_1000B1FC8(v62, v136, &qword_100835248, &unk_1006E7940);
  Date.timeIntervalSinceNow.getter();
  v65 = v64;
  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v64 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v64 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v127 = v56;
  v66 = *(v45 + v44[13]);
  v67 = *(v129 + 48);
  v68 = v67(v61, 1, v133);
  if (v68 == 1)
  {
    v121 = 0;
  }

  else
  {
    if (__OFADD__(v66, 1))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v121 = v66 + 1;
  }

  v69 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v70 = (*(*(v69 - 8) + 48))(v63, 1, v69);
  v120 = v67;
  v119 = a3;
  if (v70 == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = v66 + 2;
    if (__OFADD__(v66, 2))
    {
LABEL_32:
      __break(1u);
      return;
    }
  }

  v72 = v70 == 1;
  *&v139 = v130;
  *(&v139 + 1) = v53;
  v140 = v130;
  v141 = v53;
  v142 = v124;
  v143 = v58;
  v144 = 0u;
  v145 = 0u;
  v73 = v125 & 1;
  *&v146[16] = 0;
  *v146 = 1uLL;
  v146[24] = 0;
  v128 = v53;
  v74 = v131;

  v125 = -v65;
  v115 = v72;
  v114 = v71;
  v75 = v135;
  v76 = v128;
  v77 = v126;
  LODWORD(v126) = v73;
  sub_100529B68(v132, v74, &v139, v77, v127, v66, &v144, v73, v135, v121, v68 == 1, v136, v114, v115, v137, v125, 0);

  swift_bridgeObjectRelease_n();

  v78 = v66 + 1;
  if (__OFADD__(v66, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v79 = v122;
  sub_10000BBC4(v75, v122, &qword_100835180, &unk_1006C0CE0);
  v80 = v133;
  if (v120(v79, 1, v133) == 1)
  {
    sub_10000BE18(v79, &qword_100835180, &unk_1006C0CE0);
    v81 = v134;
    v82 = v119;
  }

  else
  {
    v83 = v129;
    v84 = *(v129 + 32);
    v85 = v118;
    v84(v118, v79, v80);
    v86 = *(v138 + 32);
    v87 = *(v138 + 384);
    v127 = *(v138 + 40);
    v88 = String.hasPrefix(_:)(v87);
    v82 = v119;
    if (v88)
    {
      v89 = type metadata accessor for AssessmentAdditionalInfo(0);
      v124 = v78;
      v90 = v89;
      v91 = *(v89 + 28);
      v92 = v85;
      v93 = v80;
      v94 = v123;
      v84(&v123[v91], v92, v93);
      v95 = v136;
      (*(v83 + 56))(v94 + v91, 0, 1, v93);
      v76 = v128;
      v96 = v127;
      *v94 = v86;
      *(v94 + 8) = v96;
      *(v94 + 16) = v126;
      *(v94 + 24) = v125;
      *(v94 + 32) = 0;
      v97 = v94 + *(v90 + 32);
      *v97 = v124;
      *(v97 + 8) = 0;
      (*(*(v90 - 8) + 56))(v94, 0, 1, v90);

      v81 = v134;
      v98 = v137;
      goto LABEL_24;
    }

    (*(v83 + 8))(v85, v80);
    v81 = v134;
  }

  v99 = type metadata accessor for AssessmentAdditionalInfo(0);
  v94 = v123;
  (*(*(v99 - 8) + 56))(v123, 1, 1, v99);
  v95 = v136;
  v98 = v137;
LABEL_24:
  v100 = (v81 + v44[8]);
  v102 = *v100;
  v101 = v100[1];
  *(v82 + 24) = &type metadata for String;
  *(v82 + 32) = &off_1007FDA60;
  *v82 = v102;
  *(v82 + 8) = v101;

  sub_10000BE18(v98, &unk_10084A160, &unk_1006E7978);
  v103 = v145;
  *(v82 + 88) = v144;
  v104 = v138;
  v105 = *(v138 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v106 = *(v138 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  *(v82 + 40) = v130;
  *(v82 + 48) = v76;
  v107 = v131;
  *(v82 + 56) = v132;
  *(v82 + 64) = v107;
  *(v82 + 72) = 0;
  *(v82 + 80) = 0;
  *(v82 + 104) = v103;
  *(v82 + 120) = *v146;
  *(v82 + 129) = *&v146[9];
  *(v82 + 200) = 0u;
  *(v82 + 184) = 0u;
  *(v82 + 168) = 0u;
  *(v82 + 152) = 0u;
  *(v82 + 216) = v105;
  *(v82 + 224) = v106;
  v108 = type metadata accessor for ODNAssessmentResult(0);
  sub_1000B1FC8(v94, v82 + *(v108 + 44), &qword_100836328, &unk_1006C51B0);

  sub_10000BE18(v95, &qword_100835248, &unk_1006E7940);
  sub_10000BE18(v135, &qword_100835180, &unk_1006C0CE0);
  v109 = *(v104 + 376);
  if (v109)
  {
    v110 = v109;
    OS_dispatch_semaphore.signal()();
  }
}