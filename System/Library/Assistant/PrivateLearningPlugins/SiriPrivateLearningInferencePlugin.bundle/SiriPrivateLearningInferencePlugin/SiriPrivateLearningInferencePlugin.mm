void sub_15B8()
{
  type metadata accessor for SiriPrivateLearningInferencePlugin(0);
  sub_1B98(&qword_3CE08, &qword_309B0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CB88 = 91;
  unk_3CB90 = 0xE100000000000000;
}

uint64_t sub_1648()
{
  sub_29B50();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30820;
  *(v0 + 32) = type metadata accessor for ContactsInferenceDomain();
  result = type metadata accessor for MediaInferenceDomain();
  *(v0 + 40) = result;
  qword_3CBA0 = v0;
  return result;
}

uint64_t SiriPrivateLearningInferencePlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPrivateLearningInferencePlugin.init()();
  return v0;
}

char *SiriPrivateLearningInferencePlugin.init()()
{
  v1 = v0;
  sub_2ED98();
  sub_2ED88();
  sub_2ED58();

  sub_1960(v22, (v0 + 136));
  sub_2ED88();
  sub_2ED68();

  sub_1978(v22, v0 + 184);
  sub_2ED88();
  sub_2ED78();

  sub_1978(v22, v0 + 224);
  sub_2EF88();
  v2 = sub_2EF18();
  swift_allocObject();
  v3 = sub_2EF28();
  v4 = &protocol witness table for InferredGroundTruthStoreCoreData;
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  sub_2EF68();
  v6 = sub_2F9F8();
  swift_allocObject();
  v7 = sub_2FA08();
  v8 = &protocol witness table for PICSStoreCoreData;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *(v0 + 56) = v7;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;
  sub_2EF78();
  v10 = sub_2FA18();
  swift_allocObject();
  v11 = sub_2FA28();
  v12 = &protocol witness table for PIMSStoreCoreData;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(v0 + 96) = v11;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v13;
  *(v0 + 128) = v12;
  v14 = sub_2EEB8();
  v15 = sub_2EEA8();
  *(v1 + 36) = v14;
  *(v1 + 37) = &protocol witness table for FlatFileStreamBookmarkStore;
  *(v1 + 33) = v15;
  v16 = sub_2F018();
  swift_allocObject();
  v17 = sub_2F008();
  *(v1 + 46) = v16;
  *(v1 + 47) = &protocol witness table for FeatureManager;
  *(v1 + 43) = v17;
  sub_2EE38();
  sub_1978(v22, (v1 + 304));
  v18 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v19 = enum case for UFLCoreAnalyticsLogLevel.release(_:);
  v20 = sub_2EC58();
  (*(*(v20 - 8) + 104))(&v1[v18], v19, v20);
  return v1;
}

_OWORD *sub_1960(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1978(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SiriPrivateLearningInferencePlugin.run(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2EC98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1B98(&qword_3CC88, &qword_30850);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_30088();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = &v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;

  sub_21D8(0, 0, v12, &unk_30860, v15);
}

uint64_t sub_1B98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = sub_2EC78();
  v7[4] = v9;
  v7[5] = *(v9 - 8);
  v7[6] = swift_task_alloc();
  v10 = sub_2EC88();
  v7[7] = v10;
  v7[8] = *(v10 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = sub_1B98(&qword_3CDF0, &qword_309A0);
  v7[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[12] = v11;
  v12 = swift_task_alloc();
  v7[13] = v12;
  *v12 = v7;
  v12[1] = sub_1D90;

  return sub_24D8(v11, a5);
}

uint64_t sub_1D90()
{

  return _swift_task_switch(sub_1E8C, 0, 0);
}

uint64_t sub_1E8C()
{
  sub_5AD0(v0[12], v0[11], &qword_3CDF0, &qword_309A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0 + 6;
    v1 = v0[6];
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0 + 5;
    v6 = v0[5];
    v8 = v0 + 4;
    v7 = v0[4];
    v9 = v0[7];
    v15 = v0[2];
    (*(v6 + 32))(v1, v0[11], v7);
    (*(v6 + 16))(v3, v1, v7);
    (*(v4 + 104))(v3, enum case for PrivateLearningPluginResult.failure(_:), v9);
    v15(v3);
    (*(v4 + 8))(v3, v9);
  }

  else
  {
    v2 = v0 + 9;
    v10 = v0[9];
    v5 = v0 + 8;
    v8 = v0 + 7;
    v11 = v0[2];
    (*(v0[8] + 104))(v10, enum case for PrivateLearningPluginResult.success(_:), v0[7]);
    v11(v10);
  }

  v12 = v0[12];
  (*(*v5 + 8))(*v2, *v8);
  sub_5B38(v12, &qword_3CDF0, &qword_309A0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_209C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2EC98() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_5BA0;

  return sub_1BE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B98(&qword_3CC88, &qword_30850);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_5AD0(a3, v25 - v10, &qword_3CC88, &qword_30850);
  v12 = sub_30088();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5B38(v11, &qword_3CC88, &qword_30850);
  }

  else
  {
    sub_30078();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_30058();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2FFA8() + 32;
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

      sub_5B38(a3, &qword_3CC88, &qword_30850);

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

  sub_5B38(a3, &qword_3CC88, &qword_30850);
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

uint64_t sub_24D8(uint64_t a1, uint64_t a2)
{
  v3[91] = v2;
  v3[90] = a2;
  v3[89] = a1;
  v4 = sub_2EC58();
  v3[92] = v4;
  v3[93] = *(v4 - 8);
  v3[94] = swift_task_alloc();
  v5 = sub_2EC98();
  v3[95] = v5;
  v3[96] = *(v5 - 8);
  v3[97] = swift_task_alloc();
  v6 = sub_2EC08();
  v3[98] = v6;
  v3[99] = *(v6 - 8);
  v3[100] = swift_task_alloc();
  v7 = sub_2FE98();
  v3[101] = v7;
  v3[102] = *(v7 - 8);
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_26B4, 0, 0);
}

uint64_t sub_26B4()
{
  v55 = v0;
  if (qword_3CC18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 720);
  v8 = sub_2FEC8();
  sub_4FD8(v8, qword_3E4A0);
  sub_2FEB8();
  sub_2FE78();
  *(v0 + 832) = sub_C724("runInferencePlugin", 18, 2, v1);
  (*(v2 + 8))(v1, v3);
  sub_2EBF8();
  (*(v5 + 16))(v4, v7, v6);
  v9 = (*(v5 + 88))(v4, v6);
  if (v9 == enum case for PrivateLearningPluginRunContext.eventBased(_:))
  {
    v10 = *(v0 + 776);
    (*(*(v0 + 768) + 96))(v10, *(v0 + 760));
    v11 = sub_2ECA8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  else if (v9 != enum case for PrivateLearningPluginRunContext.maintenance(_:))
  {
    (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));
  }

  if (qword_3CBA8 != -1)
  {
    swift_once();
  }

  v12 = sub_2FF48();
  *(v0 + 840) = sub_4FD8(v12, qword_3CBB0);
  v13 = sub_2FF28();
  v14 = sub_300D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v15 + 4) = sub_29C64(qword_3CB88, unk_3CB90, v54);
    *(v15 + 12) = 2080;
    v16 = sub_30128();
    v18 = sub_29C64(v16, v17, v54);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_0, v13, v14, "%s SiriPrivateLearningInference trigger reason: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 728);
  sub_54EC(v19 + 304, v0 + 64);
  sub_2F508();
  swift_allocObject();
  *(v0 + 848) = sub_2F4F8();
  sub_2F498();
  sub_5AD0(v19 + 16, v0 + 144, &qword_3CC90, &qword_30868);
  if (*(v0 + 168))
  {
    v20 = *(v0 + 728);
    sub_1978((v0 + 144), v0 + 104);
    sub_5AD0(v20 + 56, v0 + 224, &qword_3CC98, &qword_30870);
    if (*(v0 + 248))
    {
      v21 = *(v0 + 728);
      sub_1978((v0 + 224), v0 + 184);
      sub_5AD0(v21 + 96, v0 + 304, &qword_3CCA0, &qword_30878);
      if (*(v0 + 328))
      {
        v22 = *(v0 + 752);
        v23 = *(v0 + 744);
        v24 = *(v0 + 736);
        v25 = *(v0 + 728);
        sub_1978((v0 + 304), v0 + 264);
        sub_54EC(v0 + 104, v0 + 344);
        sub_54EC(v0 + 184, v0 + 384);
        sub_54EC(v25 + 344, v0 + 424);
        sub_54EC(v19 + 304, v0 + 464);
        sub_54EC(v0 + 264, v0 + 504);
        (*(v23 + 16))(v22, v25 + OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel, v24);
        type metadata accessor for SiriPrivateLearningInferencePluginContext(0);
        v26 = swift_allocObject();
        *(v0 + 856) = v26;
        sub_1978((v0 + 344), v26 + 16);
        sub_1978((v0 + 384), v26 + 56);
        sub_1978((v0 + 464), v26 + 96);
        sub_1978((v0 + 424), v26 + 136);
        sub_1978((v0 + 504), v26 + 176);
        (*(v23 + 32))(v26 + OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel, v22, v24);
        sub_5070(v25 + 136, v0 + 16);
        sub_54EC(v25 + 184, v0 + 544);
        sub_54EC(v25 + 224, v0 + 584);
        sub_54EC(v25 + 264, v0 + 624);
        v27 = qword_3CB98;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = qword_3CBA0;
        type metadata accessor for SiriPrivateLearningInferenceEngine();
        v29 = swift_allocObject();

        *(v0 + 864) = sub_44F4(v26, (v0 + 16), (v0 + 544), (v0 + 584), (v0 + 624), v28, v29);
        v30 = swift_task_alloc();
        *(v0 + 872) = v30;
        *v30 = v0;
        v30[1] = sub_3194;

        return sub_1011C();
      }

      sub_5B38(v0 + 304, &qword_3CCA0, &qword_30878);
      sub_5010();
      v32 = swift_allocError();
      *v35 = 4;
      *(v35 + 8) = 0;
      swift_willThrow();
      sub_5448((v0 + 184));
    }

    else
    {
      sub_5B38(v0 + 224, &qword_3CC98, &qword_30870);
      sub_5010();
      v32 = swift_allocError();
      *v34 = 4;
      *(v34 + 8) = 0;
      swift_willThrow();
    }

    sub_5448((v0 + 104));
  }

  else
  {
    sub_5B38(v0 + 144, &qword_3CC90, &qword_30868);
    sub_5010();
    v32 = swift_allocError();
    *v33 = 2;
    *(v33 + 8) = 0;
    swift_willThrow();
  }

  swift_errorRetain();
  v36 = sub_2FF28();
  v37 = sub_300E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v38 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v38 + 4) = sub_29C64(qword_3CB88, unk_3CB90, v54);
    *(v38 + 12) = 2080;
    *(v0 + 704) = v32;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v39 = sub_2FF98();
    v41 = sub_29C64(v39, v40, v54);

    *(v38 + 14) = v41;
    _os_log_impl(&dword_0, v36, v37, "%s Failed to run SiriPrivateLearningInference plugin, error=%s", v38, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 680) = v32;
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  v42 = swift_dynamicCast();
  v43 = *(v0 + 800);
  if (v42)
  {
    v44 = *(v0 + 664);
    v45 = *(v0 + 672);
    sub_2F488();
    if (v45 < 0)
    {
      swift_errorRetain();
      v46 = v44;
    }

    else
    {
      sub_5010();
      v46 = swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v45;
    }

    v50 = *(v0 + 800);
    v51 = *(v0 + 792);
    v52 = *(v0 + 784);
    *(v0 + 696) = v46;
    sub_2FF98();
    sub_2EC68();

    sub_5064(v44, v45);

    (*(v51 + 8))(v50, v52);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v48 = *(v0 + 792);
    v49 = *(v0 + 784);

    sub_2F488();
    *(v0 + 688) = v32;
    swift_errorRetain();
    sub_2FF98();
    sub_2EC68();

    (*(v48 + 8))(v43, v49);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  sub_39A0(*(v0 + 832));

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_3194(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[110] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_358C, 0, 0);
  }

  else
  {
    v6[111] = a2;
    v6[112] = a1;
    v7 = swift_task_alloc();
    v6[113] = v7;
    *v7 = v6;
    v7[1] = sub_331C;

    return sub_11E68();
  }
}

uint64_t sub_331C()
{

  return _swift_task_switch(sub_3418, 0, 0);
}

uint64_t sub_3418()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[107];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[89];
  sub_2F4A8();

  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = 0;
  sub_1B98(&qword_3CDF0, &qword_309A0);
  swift_storeEnumTagMultiPayload();
  sub_50D4(v3);

  sub_5448(v0 + 33);
  sub_5448(v0 + 23);
  sub_5448(v0 + 13);
  (*(v5 + 8))(v4, v6);
  sub_39A0(v0[104]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_358C()
{
  v23 = v0;
  v1 = *(v0 + 856);

  sub_50D4(v1);

  sub_5448((v0 + 264));
  sub_5448((v0 + 184));
  sub_5448((v0 + 104));
  v2 = *(v0 + 880);
  swift_errorRetain();
  v3 = sub_2FF28();
  v4 = sub_300E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_29C64(qword_3CB88, unk_3CB90, &v22);
    *(v5 + 12) = 2080;
    *(v0 + 704) = v2;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v6 = sub_2FF98();
    v8 = sub_29C64(v6, v7, &v22);

    *(v5 + 14) = v8;
    _os_log_impl(&dword_0, v3, v4, "%s Failed to run SiriPrivateLearningInference plugin, error=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 680) = v2;
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  v9 = swift_dynamicCast();
  v10 = *(v0 + 800);
  if (v9)
  {
    v11 = *(v0 + 664);
    v12 = *(v0 + 672);
    sub_2F488();
    if (v12 < 0)
    {
      swift_errorRetain();
      v13 = v11;
    }

    else
    {
      sub_5010();
      v13 = swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v12;
    }

    v17 = *(v0 + 800);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    *(v0 + 696) = v13;
    sub_2FF98();
    sub_2EC68();

    sub_5064(v11, v12);

    (*(v18 + 8))(v17, v19);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = *(v0 + 792);
    v16 = *(v0 + 784);

    sub_2F488();
    *(v0 + 688) = v2;
    swift_errorRetain();
    sub_2FF98();
    sub_2EC68();

    (*(v15 + 8))(v10, v16);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  sub_39A0(*(v0 + 832));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_39A0(uint64_t a1)
{
  v1 = sub_2FED8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2FE98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CC18 != -1)
  {
    swift_once();
  }

  v9 = sub_2FEC8();
  sub_4FD8(v9, qword_3E4A0);
  v10 = sub_2FEB8();
  sub_2FEE8();
  v11 = sub_30108();
  if (sub_30138())
  {

    sub_2FF18();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2FE88();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "runInferencePlugin", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

char *SiriPrivateLearningInferencePlugin.deinit()
{
  sub_5B38((v0 + 16), &qword_3CC90, &qword_30868);
  sub_5B38((v0 + 56), &qword_3CC98, &qword_30870);
  sub_5B38((v0 + 96), &qword_3CCA0, &qword_30878);
  sub_5448(v0 + 17);
  sub_5448(v0 + 23);
  sub_5448(v0 + 28);
  sub_5448(v0 + 33);
  sub_5448(v0 + 38);
  sub_5448(v0 + 43);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t SiriPrivateLearningInferencePlugin.__deallocating_deinit()
{
  sub_5B38((v0 + 16), &qword_3CC90, &qword_30868);
  sub_5B38((v0 + 56), &qword_3CC98, &qword_30870);
  sub_5B38((v0 + 96), &qword_3CCA0, &qword_30878);
  sub_5448(v0 + 17);
  sub_5448(v0 + 23);
  sub_5448(v0 + 28);
  sub_5448(v0 + 33);
  sub_5448(v0 + 38);
  sub_5448(v0 + 43);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_3E18()
{
  type metadata accessor for SiriPrivateLearningInferencePlugin(0);
  v0 = swift_allocObject();
  SiriPrivateLearningInferencePlugin.init()();
  return v0;
}

uint64_t sub_3E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2EC98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1B98(&qword_3CC88, &qword_30850);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_30088();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = &v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;

  sub_21D8(0, 0, v12, &unk_309B8, v15);
}

uint64_t sub_405C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CBB0);
  v1 = sub_4FD8(v0, qword_3CBB0);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_4124(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;
      a1(&v9, &v10);
      if (v3)
      {
        break;
      }

      if (v9)
      {
        sub_2FFE8();
        if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30008();
        }

        sub_30048();
        v4 = v11;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_4234@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4304(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_43FC;

  return v6(a1);
}

uint64_t sub_43FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_44F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7)
{
  v26 = *a7;
  v14 = sub_2EC58();
  __chkstk_darwin(v14 - 8);
  v29 = type metadata accessor for SiriPrivateLearningInferencePluginContext(0);
  v30 = sub_5494();
  v28[0] = a1;
  sub_54EC(v28, (a7 + 2));
  sub_5070(a2, (a7 + 7));
  sub_54EC(a3, (a7 + 13));
  sub_54EC(a4, (a7 + 18));
  sub_54EC(a5, (a7 + 23));
  sub_2F1D8();
  swift_allocObject();
  a7[29] = sub_2F1C8();
  sub_5550(v28, v29);
  sub_2F0C8();
  sub_2F5E8();
  swift_allocObject();
  a7[30] = sub_2F5C8();
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v15 = sub_2FF48();
  sub_4FD8(v15, qword_3D460);
  v16 = sub_2FF28();
  v17 = sub_300F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v27);
    _os_log_impl(&dword_0, v16, v17, "%s Initializing inference domains:", v18, 0xCu);
    sub_5448(v19);
  }

  sub_29B50();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = type metadata accessor for CommonInferenceDomain();
  v27 = a6;
  v21 = sub_27AA4(inited);
  v22 = v27;
  __chkstk_darwin(v21);
  *(&v25 - 2) = v28;
  *(&v25 - 1) = v26;
  v23 = sub_4124(sub_5594, (&v25 - 4), v22);

  a7[28] = v23;
  sub_FD58();
  sub_5448(a5);
  sub_5448(a4);
  sub_5448(a3);
  sub_5448(a2);
  sub_5448(v28);
  return a7;
}

unint64_t sub_48EC(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CE10, &qword_309C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B98(&qword_3CE18, &qword_309C8);
    v7 = sub_30268();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_5AD0(v9, v5, &qword_3CE10, &qword_309C0);
      result = sub_2A2F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2EC08();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t type metadata accessor for SiriPrivateLearningInferencePlugin(uint64_t a1)
{
  result = qword_3CCD0;
  if (!qword_3CCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B28(uint64_t a1)
{
  result = sub_2EC58();
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

unint64_t sub_4BE4(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CDD0, &qword_30988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B98(&qword_3CDD8, &unk_30990);
    v7 = sub_30268();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_5AD0(v9, v5, &qword_3CDD0, &qword_30988);
      result = sub_2A2F4(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_2EC08();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_4DF0(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CDC0, &qword_31900);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B98(&qword_3CDC8, &qword_30980);
    v7 = sub_30268();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_5AD0(v9, v5, &qword_3CDC0, &qword_31900);
      result = sub_2A21C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2F438();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_4FD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_5010()
{
  result = qword_3CDE0;
  if (!qword_3CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CDE0);
  }

  return result;
}

uint64_t sub_5064(uint64_t result, char a2)
{
  if (a2 < 0)
  {
  }

  return v2;
}

uint64_t sub_5070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_50D4(uint64_t a1)
{
  v2 = sub_2F728();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_54EC(a1 + 176, v11);
  sub_1B98(&qword_3CDF8, &qword_309A8);
  sub_2F278();
  if (swift_dynamicCast())
  {
    sub_2F718();
    sub_2F708();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_3CBA8 != -1)
    {
      swift_once();
    }

    v6 = sub_2FF48();
    sub_4FD8(v6, qword_3CBB0);
    v7 = sub_2FF28();
    v8 = sub_300E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "PIMS Store in context is not a CoreData store. Skipping store policies.", v9, 2u);
    }
  }
}

uint64_t sub_5448(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_5494()
{
  result = qword_3CE00;
  if (!qword_3CE00)
  {
    type metadata accessor for SiriPrivateLearningInferencePluginContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE00);
  }

  return result;
}

uint64_t sub_54EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_5550(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_55B0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_5614()
{
  v1 = sub_2EC98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_56F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2EC98() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_5834;

  return sub_1BE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_5834()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5BA0;

  return sub_4304(a1, v4);
}

uint64_t sub_5A18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5834;

  return sub_4304(a1, v4);
}

uint64_t sub_5AD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5B38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_5BA8()
{
  type metadata accessor for PhoneCallContactGroundTruthGenerator();
  sub_1B98(&qword_3CF78, &qword_30AF0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CE20 = 91;
  *algn_3CE28 = 0xE100000000000000;
}

uint64_t sub_5C34(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = sub_1B98(&qword_3CF40, &unk_315B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v91 - v5;
  v7 = sub_2EC08();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v91 - v13;
  __chkstk_darwin(v12);
  v16 = &v91 - v15;
  sub_30018();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_5B38(v6, &qword_3CF40, &unk_315B0);
  }

  v94 = v11;
  (*(v8 + 32))(v16, v6, v7);
  if (qword_3CBD0 != -1)
  {
    swift_once();
  }

  v18 = sub_2FF48();
  v19 = sub_4FD8(v18, qword_3CE30);
  v20 = *(v8 + 16);
  v93 = v8 + 16;
  v92 = v20;
  v20(v14, v16, v7);
  v21 = sub_2FF28();
  v22 = sub_300D8();
  v23 = os_log_type_enabled(v21, v22);
  v98 = v19;
  v97 = v8;
  if (!v23)
  {

    v96 = *(v8 + 8);
    v96(v14, v7);
    goto LABEL_9;
  }

  v91 = v16;
  v16 = v2;
  v2 = swift_slowAlloc();
  v100[0] = swift_slowAlloc();
  *v2 = 136315394;
  if (qword_3CBC8 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    *(v2 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
    *(v2 + 12) = 2080;
    v24 = sub_2EBE8();
    v26 = v25;
    v96 = *(v97 + 8);
    v96(v14, v7);
    v27 = sub_29C64(v24, v26, v100);

    *(v2 + 14) = v27;
    _os_log_impl(&dword_0, v21, v22, "%s Reviewing session with id=%s", v2, 0x16u);
    swift_arrayDestroy();

    v2 = v16;
    v16 = v91;
LABEL_9:
    v28 = sub_2FF28();
    v29 = sub_300D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v100[0] = v31;
      *v30 = 136315138;
      if (qword_3CBC8 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
      _os_log_impl(&dword_0, v28, v29, "%s Running classifiers on session features", v30, 0xCu);
      sub_5448(v31);
    }

    v32 = sub_2F358();
    swift_allocObject();
    v33 = sub_2F348();
    v103[3] = v32;
    v103[4] = &protocol witness table for PhoneCallClassifier;
    v103[0] = v33;
    sub_2F828();
    sub_1B98(&qword_3CF48, &unk_30AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_30830;
    *(inited + 32) = sub_2EFC8();
    *(inited + 40) = v35;
    v14 = sub_2C32C(inited);
    swift_setDeallocating();
    sub_7480(inited + 32);
    v36 = sub_2FAC8();
    swift_allocObject();
    v37 = sub_2FAB8();
    v101 = v36;
    v102 = &protocol witness table for ContactEntityUtteranceComparator;
    v100[0] = v37;
    v38 = sub_2F818();
    v22 = v38;
    v100[0] = v38;
    sub_2F808();

    v39 = sub_2F608();
    swift_allocObject();
    v40 = sub_2F5F8();
    v105[3] = v39;
    v105[4] = &protocol witness table for EntityPromptClassifier;
    v105[0] = v40;
    sub_54EC(v103, v100);
    sub_5550(v100, v101);
    v41 = sub_2F298();
    sub_5448(v100);
    v42 = *(v41 + 16);
    v43 = sub_294CC(0, v42, 1, _swiftEmptyArrayStorage);
    v21 = v43;
    if (*(v41 + 16))
    {
      isa = v43[2].isa;
      if (((v43[3].isa >> 1) - isa) < v42)
      {
        goto LABEL_75;
      }

      v22 = v43 + 40 * isa;
      sub_1B98(&qword_3CF50, &unk_30D70);
      swift_arrayInitWithCopy();

      if (v42)
      {
        v45 = v21[2].isa;
        v46 = __OFADD__(v45, v42);
        v47 = (v45 + v42);
        if (v46)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v21[2].isa = v47;
      }
    }

    else
    {

      if (v42)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    sub_54EC(&v104, v100);
    sub_5550(v100, v101);
    v41 = sub_2F298();
    sub_5448(v100);
    v42 = *(v41 + 16);
    v48 = v21[2].isa;
    v49 = v48 + v42;
    if (__OFADD__(v48, v42))
    {
      goto LABEL_27;
    }

    if (v49 <= (v21[3].isa >> 1))
    {
      if (v42)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

LABEL_28:
    if (v48 <= v49)
    {
      v52 = v49;
    }

    else
    {
      v52 = v48;
    }

    v21 = sub_294CC((&dword_0 + 1), v52, 1, v21);
    v48 = v21[2].isa;
    if (*(v41 + 16))
    {
LABEL_22:
      if (((v21[3].isa >> 1) - v48) < v42)
      {
        goto LABEL_76;
      }

      v22 = v21 + 40 * v48;
      sub_1B98(&qword_3CF50, &unk_30D70);
      swift_arrayInitWithCopy();

      if (v42)
      {
        v50 = v21[2].isa;
        v46 = __OFADD__(v50, v42);
        v51 = (v50 + v42);
        if (v46)
        {
          goto LABEL_80;
        }

        v21[2].isa = v51;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v42)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_33:
    sub_54EC(v105, v100);
    sub_5550(v100, v101);
    v41 = sub_2F298();
    sub_5448(v100);
    v42 = *(v41 + 16);
    v53 = v21[2].isa;
    v54 = v53 + v42;
    if (__OFADD__(v53, v42))
    {
      goto LABEL_41;
    }

    if (v54 <= (v21[3].isa >> 1))
    {
      if (!v42)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_42:
    if (v53 <= v54)
    {
      v57 = v54;
    }

    else
    {
      v57 = v53;
    }

    v21 = sub_294CC((&dword_0 + 1), v57, 1, v21);
    v53 = v21[2].isa;
    if (!*(v41 + 16))
    {
LABEL_46:

      if (!v42)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_36:
    if (((v21[3].isa >> 1) - v53) >= v42)
    {
      break;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  sub_1B98(&qword_3CF50, &unk_30D70);
  swift_arrayInitWithCopy();

  if (v42)
  {
    v55 = v21[2].isa;
    v46 = __OFADD__(v55, v42);
    v56 = (v55 + v42);
    if (v46)
    {
      goto LABEL_81;
    }

    v21[2].isa = v56;
  }

LABEL_47:
  sub_1B98(&qword_3CF58, &unk_30AE0);
  swift_arrayDestroy();
  v58 = sub_2FF28();
  v59 = sub_300D8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v100[0] = v61;
    *v60 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v60 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
    _os_log_impl(&dword_0, v58, v59, "%s Classification Results:", v60, 0xCu);
    sub_5448(v61);
  }

  sub_EFB0(8224, 0xE200000000000000, v21);
  v62 = sub_2FF28();
  v63 = sub_300D8();
  v64 = os_log_type_enabled(v62, v63);
  v95 = v2;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v100[0] = v66;
    *v65 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v65 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
    _os_log_impl(&dword_0, v62, v63, "%s Running ground truth generators with classification results.", v65, 0xCu);
    sub_5448(v66);
  }

  sub_2FD68();
  swift_allocObject();
  v100[0] = sub_2FD58();
  sub_74D4(&qword_3CF60, 255, &type metadata accessor for PhoneCallInAppFollowupGroundTruthGenerator, &protocol conformance descriptor for PhoneCallInAppFollowupGroundTruthGenerator);
  v67 = sub_2EF98();

  v68 = sub_27838(v67);

  sub_2F8F8();
  swift_allocObject();
  v99 = sub_2F8E8();
  sub_74D4(&qword_3CF68, 255, &type metadata accessor for SuccessfulPhoneCallDefinition, &protocol conformance descriptor for SuccessfulPhoneCallDefinition);
  sub_2F6F8();

  sub_5550(v100, v101);
  sub_2EF98();
  swift_getAssociatedTypeWitness();
  sub_1B98(&qword_3CF70, &unk_315C0);
  v69 = sub_30218();

  v99 = v68;
  sub_27BB0(v69);
  v2 = v99;
  sub_5448(v100);
  sub_2FB38();
  swift_allocObject();
  sub_2FB28();
  v70 = sub_2FB18();

  v71 = sub_2FF28();
  v72 = sub_300D8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v100[0] = v74;
    *v73 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v73 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
    _os_log_impl(&dword_0, v71, v72, "%s Generated Phone Call Ground Truth:", v73, 0xCu);
    sub_5448(v74);
  }

  else
  {
  }

  sub_EF9C(8224, 0xE200000000000000, v2);
  v75 = sub_2FF28();
  v22 = sub_300D8();
  if (os_log_type_enabled(v75, v22))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v100[0] = v77;
    *v76 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v76 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v100);
    _os_log_impl(&dword_0, v75, v22, "%s Generated Contact Prompt Ground Truth:", v76, 0xCu);
    sub_5448(v77);
  }

  sub_F328(8224, 0xE200000000000000, v70);
  v78 = sub_27880(v70);

  v100[0] = v2;
  sub_27BB0(v78);
  v14 = v100[0];
  v79 = v95;
  sub_751C(isUniquelyReferenced_nonNull_native, v21);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v79 + 64);
  v80 = v99;
  *(v79 + 64) = 0x8000000000000000;
  v82 = sub_2A2F4(v16);
  v83 = v80[2];
  v84 = (v81 & 1) == 0;
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
    goto LABEL_74;
  }

  v86 = v81;
  if (v80[3] < v85)
  {
    sub_2A570(v85, isUniquelyReferenced_nonNull_native);
    v80 = v99;
    v87 = sub_2A2F4(v16);
    if ((v86 & 1) == (v88 & 1))
    {
      v82 = v87;
      goto LABEL_70;
    }

LABEL_82:
    result = sub_302C8();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2B320();
    v80 = v99;
  }

LABEL_70:
  v89 = v96;
  *(v79 + 64) = v80;
  if ((v86 & 1) == 0)
  {
    v90 = v94;
    v92(v94, v16, v7);
    sub_2B18C(v82, v90, _swiftEmptyArrayStorage, v80);
  }

  sub_27BB0(v14);
  swift_endAccess();
  return v89(v16, v7);
}

void *sub_6D24()
{
  v51 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v1 = __chkstk_darwin(v51);
  v50 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v49 = &v38 - v4;
  v5 = __chkstk_darwin(v3);
  v48 = &v38 - v6;
  __chkstk_darwin(v5);
  v47 = &v38 - v7;
  v46 = sub_2F3B8();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v52 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 64);
  v11 = *(v10 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v55 = _swiftEmptyArrayStorage;

    sub_2BBE0(0, v11, 0);
    v54 = v55;
    v13 = v10 + 64;
    result = sub_30148();
    v14 = result;
    v15 = 0;
    v16 = *(v10 + 36);
    v44 = v8 + 32;
    v45 = v8;
    v39 = v10 + 72;
    v40 = v11;
    v41 = v16;
    v42 = v10 + 64;
    v43 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v10 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v16 != *(v10 + 36))
      {
        goto LABEL_24;
      }

      v53 = v15;
      v19 = *(v10 + 48);
      v20 = sub_2EC08();
      v21 = *(v20 - 8);
      v22 = v47;
      (*(v21 + 16))(v47, v19 + *(v21 + 72) * v14, v20);
      v23 = *(*(v10 + 56) + 8 * v14);
      v24 = v48;
      (*(v21 + 32))(v48, v22, v20);
      *(v24 + *(v51 + 48)) = v23;
      sub_7404(v24, v49);

      v25 = v50;
      sub_7404(v24, v50);
      v26 = v52;
      sub_2F3A8();
      sub_5B38(v24, &qword_3CF38, &unk_30AC0);
      (*(v21 + 8))(v25, v20);
      v27 = v54;
      v55 = v54;
      v29 = v54[2];
      v28 = v54[3];
      if (v29 >= v28 >> 1)
      {
        sub_2BBE0((v28 > 1), v29 + 1, 1);
        v26 = v52;
        v27 = v55;
      }

      v27[2] = v29 + 1;
      v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v54 = v27;
      result = (*(v45 + 32))(v27 + v30 + *(v45 + 72) * v29, v26, v46);
      v10 = v43;
      v17 = 1 << *(v43 + 32);
      if (v14 >= v17)
      {
        goto LABEL_25;
      }

      v13 = v42;
      v31 = *(v42 + 8 * v18);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v16) = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v18 << 6;
        v34 = v18 + 1;
        v35 = (v39 + 8 * v18);
        while (v34 < (v17 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_7474(v14, v41, 0);
            v17 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_7474(v14, v41, 0);
      }

LABEL_4:
      v15 = v53 + 1;
      v14 = v17;
      if (v53 + 1 == v40)
      {

        return v54;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_7238()
{
  sub_5448((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_733C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CE30);
  v1 = sub_4FD8(v0, qword_3CE30);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_7404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3CF38, &unk_30AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7474(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_74D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_751C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B98(&qword_3CF40, &unk_315B0);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = sub_2EC08();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CBD0 != -1)
  {
    swift_once();
  }

  v9 = sub_2FF48();
  sub_4FD8(v9, qword_3CE30);
  v10 = sub_2FF28();
  v11 = sub_300D8();
  v12 = &SiriPrivateLearningInferencePlugin;
  if (os_log_type_enabled(v10, v11))
  {
    v25[1] = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v28);
    _os_log_impl(&dword_0, v10, v11, "%s Logging inference results to SELF", v13, 0xCu);
    sub_5448(v14);

    v12 = &SiriPrivateLearningInferencePlugin;
  }

  else
  {
  }

  sub_2EBF8();
  v15 = sub_2FF28();
  v16 = sub_300D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v12;
    v20 = v18;
    v28[0] = v18;
    *v17 = 136315138;
    if (v19[41].base_props != -1)
    {
      swift_once();
    }

    *(v17 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v28);
    _os_log_impl(&dword_0, v15, v16, "%s Extracting phone call metadata for SELF logging", v17, 0xCu);
    sub_5448(v20);
  }

  v21 = v25[2];
  sub_30028();
  sub_2F4B8();
  sub_5B38(v5, &qword_3CF40, &unk_315B0);
  if (!*(v21 + 56))
  {
    return (*(v26 + 8))(v8, v27);
  }

  sub_54EC(v21 + 16, v28);
  v22 = sub_2FC68();
  swift_allocObject();

  v23 = sub_2FC58();
  v28[3] = v22;
  v28[4] = &protocol witness table for PhoneCallSuggestionOutcomeExtractor;
  v28[0] = v23;

  sub_2FE08();

  (*(v26 + 8))(v8, v27);
  return sub_5448(v28);
}

__n128 sub_7964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_79C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_7A24()
{
  sub_1B98(&qword_3CFC8, qword_30BA0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CF80 = 91;
  *algn_3CF88 = 0xE100000000000000;
}

uint64_t sub_7AB4(uint64_t a1)
{
  v2 = sub_2F428();
  v63 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EC08();
  v68 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v71 = v52 - v10;
  __chkstk_darwin(v9);
  v70 = v52 - v11;
  v56 = sub_2F378();
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3CFA8, &qword_30B98);
  v13 = sub_2F2C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_30830;
  (*(v14 + 104))(v16 + v15, enum case for MediaSuggestionTag.domainMusic(_:), v13);
  v74 = v72;
  v75 = a1;
  v17 = a1;
  v18 = sub_E550(sub_8CA8, v73, v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  v19 = v68;
  swift_deallocClassInstance();
  v20 = *(v17 + 16);
  v21 = _swiftEmptyArrayStorage;
  v62 = v2;
  v61 = v4;
  v57 = v18;
  if (v20)
  {
    v77 = _swiftEmptyArrayStorage;
    sub_2BAD8(0, v20, 0);
    v21 = v77;
    v22 = v17 + 32;
    v72 = v19 + 32;
    v23 = v70;
    do
    {
      sub_54EC(v22, v76);
      sub_5550(v76, v76[3]);
      sub_2F248();
      sub_5448(v76);
      v77 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        sub_2BAD8((v24 > 1), v25 + 1, 1);
        v21 = v77;
      }

      v21[2] = v25 + 1;
      (*(v68 + 32))(v21 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25, v23, v5);
      v22 += 40;
      --v20;
    }

    while (v20);
    v2 = v62;
    v4 = v61;
    v18 = v57;
  }

  v26 = sub_23D64(v21);

  v28 = v71;
  v54 = v18[2];
  v29 = 0;
  if (v54)
  {
    v30 = 0;
    v53 = v18 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v52[1] = v58 + 16;
    v52[0] = v58 + 8;
    v59 = v63 + 16;
    v72 = v26 + 56;
    v70 = (v68 + 16);
    v31 = (v68 + 8);
    v60 = (v63 + 8);
    while (v30 < v18[2])
    {
      v67 = v29;
      v32 = v58;
      v33 = *(v58 + 72);
      v66 = v30;
      v34 = v55;
      v35 = v56;
      (*(v58 + 16))(v55, &v53[v33 * v30], v56);
      v36 = sub_2F368();
      v37 = v35;
      v38 = v36;
      result = (*(v32 + 8))(v34, v37);
      v64 = *(v38 + 16);
      if (v64)
      {
        v39 = 0;
        v65 = v38;
        while (v39 < *(v38 + 16))
        {
          (*(v63 + 16))(v4, v38 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, v2);
          sub_2F418();
          if (!*(v26 + 16))
          {

            goto LABEL_22;
          }

          v69 = v39;
          sub_9178(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v40 = sub_2FF58();
          v41 = -1 << *(v26 + 32);
          v42 = v40 & ~v41;
          if (((*(v72 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
LABEL_21:

            v2 = v62;
            v4 = v61;
LABEL_22:
            (*v31)(v28, v5);
            result = (*v60)(v4, v2);
            v49 = 1;
            goto LABEL_23;
          }

          ++v69;
          v43 = ~v41;
          v44 = *(v68 + 72);
          v45 = *(v68 + 16);
          while (1)
          {
            v45(v8, *(v26 + 48) + v44 * v42, v5);
            sub_9178(&qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v46 = sub_2FF78();
            v47 = *v31;
            (*v31)(v8, v5);
            if (v46)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            v28 = v71;
            if (((*(v72 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v48 = v71;
          v47(v71, v5);
          v28 = v48;
          v4 = v61;
          v2 = v62;
          result = (*v60)(v61, v62);
          v38 = v65;
          v39 = v69;
          if (v69 == v64)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:

      v49 = 0;
LABEL_23:
      v18 = v57;
      v29 = (v67 + v49);
      if (__CFADD__(v67, v49))
      {
        goto LABEL_32;
      }

      v30 = v66 + 1;
      if (v66 + 1 == v54)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_27:
  v50 = v29;

  v51 = v18[2];

  if (HIDWORD(v51))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v51 >= v50)
  {
    return 0;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_831C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a4;
  v61 = a2;
  v6 = sub_2F2C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v56 - v11;
  if (qword_3CBE0 != -1)
  {
    swift_once();
  }

  v65 = a3;
  v13 = sub_2FF48();
  v14 = sub_4FD8(v13, qword_3CF90);
  v15 = *(v7 + 16);
  v62 = a1;
  v16 = a1;
  v17 = v7;
  v18 = v7 + 16;
  v68 = v15;
  v15(v12, v16, v6);
  v63 = v14;
  v19 = sub_2FF28();
  v20 = sub_300D8();
  if (os_log_type_enabled(v19, v20))
  {
    v58 = v17;
    v21 = swift_slowAlloc();
    *&v57 = swift_slowAlloc();
    v66 = v57;
    *v21 = 136315394;
    if (qword_3CBD8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v66);
    *(v21 + 12) = 2080;
    v22 = v18;
    v68(v10, v12, v6);
    v23 = sub_2FF98();
    v25 = v24;
    v26 = v58;
    v27 = *(v58 + 8);
    v59 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v27;
    v27(v12, v6);
    v28 = sub_29C64(v23, v25, &v66);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_0, v19, v20, "%s Processing new ground truth for %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v59 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v29;
    v29(v12, v6);
    v22 = v18;
    v26 = v17;
  }

  v56[1] = v22;
  sub_5550(v61 + 2, v61[5]);
  sub_2F0F8();
  v58 = sub_1B98(&qword_3CFA8, &qword_30B98);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v57 = xmmword_30830;
  *(v31 + 16) = xmmword_30830;
  v32 = v62;
  v68((v31 + v30), v62, v6);
  sub_2CAA8(v31);
  swift_setDeallocating();
  v33 = v60;
  v60(v31 + v30, v6);
  swift_deallocClassInstance();
  v61 = sub_2FC98();
  swift_allocObject();
  v34 = sub_2FC78();
  v35 = swift_allocObject();
  *(v35 + 16) = v57;
  v68((v35 + v30), v32, v6);
  sub_2CAA8(v35);
  swift_setDeallocating();
  v33(v35 + v30, v6);
  swift_deallocClassInstance();
  sub_2FA78();
  swift_allocObject();

  v68 = v34;
  v62 = sub_2FA58();
  v36 = sub_2FA68();

  v37 = sub_2FF28();
  v38 = sub_300D8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v66 = v40;
    *v39 = 136315650;
    v41 = &SiriPrivateLearningInferencePlugin;
    if (qword_3CBD8 != -1)
    {
      swift_once();
    }

    *(v39 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v66);
    *(v39 + 12) = 2048;
    *(v39 + 14) = *(v65 + 16);

    *(v39 + 22) = 2048;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v42 = sub_30168();
    }

    else
    {
      v42 = *(v36 + 16);
    }

    *(v39 + 24) = v42;
    _os_log_impl(&dword_0, v37, v38, "%s Updated candidate scores in %ld Ground Truth and %ld queries.", v39, 0x20u);
    sub_5448(v40);
  }

  else
  {

    v41 = &SiriPrivateLearningInferencePlugin;
  }

  sub_2FAA8();
  v66 = v68;
  sub_9178(&qword_3CFC0, &type metadata accessor for MediaSuggestionStoreCandidateAdapter, &protocol conformance descriptor for MediaSuggestionStoreCandidateAdapter);

  v43 = sub_2FA88();
  sub_8E5C(v36, &type metadata accessor for UsoEntity_common_MediaItem, &qword_3CFD0, &type metadata accessor for UsoEntity_common_MediaItem, &protocol conformance descriptor for UsoEntity_common_MediaItem);

  v44 = sub_2FA98();

  v45 = sub_2FF28();
  v46 = sub_300D8();
  if (os_log_type_enabled(v45, v46))
  {
    v65 = v43;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v47 = 136315138;
    if (*&v41[42].ivar_base_size != -1)
    {
      swift_once();
    }

    *(v47 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v66);
    _os_log_impl(&dword_0, v45, v46, "%s Nominated Candidates:", v47, 0xCu);
    sub_5448(v48);
  }

  else
  {
  }

  if (*&v41[42].ivar_base_size != -1)
  {
    swift_once();
  }

  v49 = qword_3CF80;
  v50 = *algn_3CF88;
  v66 = qword_3CF80;
  v67 = *algn_3CF88;

  v69._countAndFlagsBits = 8224;
  v69._object = 0xE200000000000000;
  sub_2FFC8(v69);
  sub_F7B4(v66, v67, v44);

  v51 = sub_2FF28();
  v52 = sub_300D8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_29C64(v49, v50, &v66);
    _os_log_impl(&dword_0, v51, v52, "%s Persisting updated candidates to the suggestion store", v53, 0xCu);
    sub_5448(v54);
  }

  sub_2FC88();

  *v64 = v44;
  return result;
}

uint64_t sub_8C54()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_8CC4()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CF90);
  v1 = sub_4FD8(v0, qword_3CF90);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_8D8C(uint64_t a1, uint64_t a2)
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

  sub_1B98(&qword_3CFD8, &qword_30E50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t **sub_8E5C(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_30168();
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v11 = sub_8D8C(v10, 0);

    a5 = sub_8F3C(&v13, v11 + 4, v10, a1, a2, a3, a4, a5);
    sub_916C(v13);
    if (a5 == v10)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v10 = *(a1 + 16);
    if (!v10)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v11;
}

uint64_t *sub_8F3C(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v17 = 0;
    v25 = -1 << *(v9 + 32);
    v15 = v9 + 56;
    v16 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v18 = v27 & *(v9 + 56);
    v19 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  sub_30158();
  a5(0);
  sub_9178(a6, a7, a8);
  result = sub_300B8();
  v9 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v19)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v29 = v16;
  v30 = a5;
  a5 = 0;
  v20 = (v16 + 64) >> 6;
  v21 = (&dword_0 + 1);
  while (v9 < 0)
  {
    if (!sub_30178())
    {
      goto LABEL_29;
    }

    v30(0);
    swift_dynamicCast();
    result = v32;
    v19 = a3;
    if (!v32)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v21 == v19)
    {
      a5 = v19;
      goto LABEL_29;
    }

    ++a2;
    a5 = v21;
    v24 = __OFADD__(v21, 1);
    v21 = (v21 + 1);
    if (v24)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v22 = v17;
  if (v18)
  {
LABEL_12:
    v18 &= v18 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v23 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v17 = v23;
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (v20 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v20;
  }

  v17 = v28 - 1;
LABEL_29:
  v16 = v29;
LABEL_31:
  *v11 = v9;
  v11[1] = v15;
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v18;
  return a5;
}

uint64_t sub_9178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_91C0(void *a1)
{
  v2 = swift_allocObject();
  sub_9200(a1);
  return v2;
}

uint64_t *sub_9200(void *a1)
{
  sub_54EC(a1, v7);
  sub_54EC(v7, v1 + 32);
  v3 = sub_2F098();
  v5 = v4;
  sub_5448(a1);
  sub_5448(v7);
  *(v1 + 16) = v3;
  *(v1 + 24) = v5;
  return v1;
}

uint64_t sub_9298()
{
  sub_1B98(&qword_3D0F8, &unk_30C20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30BC0;
  v1 = sub_2EDC8();
  swift_allocObject();
  v2 = sub_2EDB8();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for ASRFeatureExtractor;
  *(v0 + 32) = v2;
  v3 = sub_2F9A8();
  swift_allocObject();
  v4 = sub_2F998();
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_9564(&qword_3D100, &type metadata accessor for USOTaskSummaryFeatureExtractor, &protocol conformance descriptor for USOTaskSummaryFeatureExtractor);
  *(v0 + 72) = v4;
  v5 = sub_2EE78();
  swift_allocObject();
  v6 = sub_2EE68();
  *(v0 + 136) = v5;
  *(v0 + 144) = &protocol witness table for DismissalFeatureExtractor;
  *(v0 + 112) = v6;
  v7 = sub_2EE08();
  swift_allocObject();
  v8 = sub_2EDF8();
  *(v0 + 176) = v7;
  *(v0 + 184) = &protocol witness table for UEIFeatureExtractor;
  *(v0 + 152) = v8;
  v9 = sub_2EF08();
  swift_allocObject();
  v10 = sub_2EEF8();
  *(v0 + 216) = v9;
  *(v0 + 224) = &protocol witness table for FlowClientEventFeatureExtractor;
  *(v0 + 192) = v10;
  v11 = sub_2EE98();
  swift_allocObject();
  v12 = sub_2EE88();
  *(v0 + 256) = v11;
  *(v0 + 264) = &protocol witness table for RequestIdFeatureExtractor;
  *(v0 + 232) = v12;
  return v0;
}

uint64_t sub_9444()
{
  sub_1B98(&qword_3D0E8, &qword_30C18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2FB08();
  swift_allocObject();
  v2 = sub_2FAF8();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_9564(&qword_3D0F0, &type metadata accessor for CommonInteractionFeatureExtractor, &protocol conformance descriptor for CommonInteractionFeatureExtractor);
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_9500()
{

  sub_5448((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_9564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_95FC()
{
  type metadata accessor for MusicEntityGroundTruthGenerator();
  sub_1B98(&qword_3D238, &qword_30D68);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3D108 = 91;
  unk_3D110 = 0xE100000000000000;
}

void *sub_9688()
{
  v1 = v0;
  v2 = sub_2FD08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2FB98();
  swift_allocObject();
  v7 = sub_2FB88();
  v24[3] = v6;
  v24[4] = sub_C6DC(&qword_3D268, 255, &type metadata accessor for QuickSongStopGroundTruthGenerator, &protocol conformance descriptor for QuickSongStopGroundTruthGenerator);
  v24[0] = v7;
  sub_2F918();
  swift_allocObject();
  *&v21 = sub_2F908();
  sub_C6DC(&qword_3D270, 255, &type metadata accessor for SuccessfulPlayMediaDefinition, &protocol conformance descriptor for SuccessfulPlayMediaDefinition);
  sub_2F6F8();

  if (*(v1 + 32) == 1)
  {
    sub_2FCF8();
    *(&v27 + 1) = v2;
    v28 = sub_C6DC(&qword_3D280, 255, &type metadata accessor for MediaInAppFollowupGroundTruthGenerator, &protocol conformance descriptor for MediaInAppFollowupGroundTruthGenerator);
    v8 = sub_C678(&v26);
    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  sub_5AD0(v24, &v21, &qword_3D278, &qword_30DA8);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_1978(&v17, v20);
    v9 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_29514(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_29514((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    sub_1978(v20, &v9[5 * v11 + 4]);
  }

  else
  {
    sub_5B38(&v17, &qword_3D278, &qword_30DA8);
    v9 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(&v25, &v21, &qword_3D278, &qword_30DA8);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_1978(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_29514(0, v9[2] + 1, 1, v9);
    }

    v13 = v9[2];
    v12 = v9[3];
    if (v13 >= v12 >> 1)
    {
      v9 = sub_29514((v12 > 1), v13 + 1, 1, v9);
    }

    v9[2] = v13 + 1;
    sub_1978(v20, &v9[5 * v13 + 4]);
  }

  else
  {
    sub_5B38(&v17, &qword_3D278, &qword_30DA8);
  }

  sub_5AD0(&v26, &v21, &qword_3D278, &qword_30DA8);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_1978(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_29514(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = sub_29514((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    sub_1978(v20, &v9[5 * v15 + 4]);
  }

  else
  {
    sub_5B38(&v17, &qword_3D278, &qword_30DA8);
  }

  sub_1B98(&qword_3D278, &qword_30DA8);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_9B68(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CF40, &unk_315B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v71 - v3;
  v5 = sub_2EC08();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v71 - v11;
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v82 = a1;
  sub_30018();
  if ((v6[6])(v4, 1, v5) == 1)
  {
    return sub_5B38(v4, &qword_3CF40, &unk_315B0);
  }

  (v6[4])(v14, v4, v5);
  if (qword_3CBF0 != -1)
  {
    goto LABEL_81;
  }

LABEL_4:
  v75 = v9;
  v16 = sub_2FF48();
  v17 = sub_4FD8(v16, qword_3D118);
  v18 = v6[2];
  v79 = v14;
  v73 = v18;
  v74 = v6 + 2;
  v18(v12, v14, v5);
  v81 = v17;
  v19 = sub_2FF28();
  LOBYTE(v20) = sub_300D8();
  if (!os_log_type_enabled(v19, v20))
  {

    v76 = v6[1];
    v76(v12, v5);
    goto LABEL_8;
  }

  v21 = swift_slowAlloc();
  v84[0] = swift_slowAlloc();
  *v21 = 136315394;
  if (qword_3CBE8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    *(v21 + 4) = sub_29C64(qword_3D108, unk_3D110, v84);
    *(v21 + 12) = 2080;
    v22 = sub_2EBE8();
    v24 = v23;
    v76 = v6[1];
    v76(v12, v5);
    v25 = sub_29C64(v22, v24, v84);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_0, v19, v20, "%s Reviewing session with id=%s", v21, 0x16u);
    swift_arrayDestroy();

LABEL_8:
    v26 = sub_2FF28();
    v27 = sub_300D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v84[0] = v29;
      *v28 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_29C64(qword_3D108, unk_3D110, v84);
      _os_log_impl(&dword_0, v26, v27, "%s Running classifiers on session features", v28, 0xCu);
      sub_5448(v29);
    }

    v77 = v6;
    v78 = v5;
    v30 = sub_B6E0();
    v5 = v30[2];
    if (v5)
    {
      v6 = _swiftEmptyArrayStorage;
      v72 = v30;
      v9 = (v30 + 4);
      while (1)
      {
        sub_54EC(v9, v84);
        v12 = v85;
        sub_5550(v84, v85);
        v31 = sub_2F288();
        v14 = *(v31 + 16);
        v32 = v6[2];
        v33 = &v14[v32];
        if (__OFADD__(v32, v14))
        {
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
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          swift_once();
          goto LABEL_4;
        }

        v12 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v33 <= v6[3] >> 1)
        {
          if (*(v12 + 2))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v32 <= v33)
          {
            v35 = &v14[v32];
          }

          else
          {
            v35 = v32;
          }

          v6 = sub_294CC(isUniquelyReferenced_nonNull_native, v35, 1, v6);
          if (*(v12 + 2))
          {
LABEL_25:
            if ((v6[3] >> 1) - v6[2] < v14)
            {
              goto LABEL_77;
            }

            sub_1B98(&qword_3CF50, &unk_30D70);
            swift_arrayInitWithCopy();

            if (v14)
            {
              v36 = v6[2];
              v37 = __OFADD__(v36, v14);
              v38 = &v14[v36];
              if (v37)
              {
                goto LABEL_79;
              }

              v6[2] = v38;
            }

            goto LABEL_15;
          }
        }

        if (v14)
        {
          goto LABEL_74;
        }

LABEL_15:
        sub_5448(v84);
        v9 += 40;
        if (!--v5)
        {

          goto LABEL_31;
        }
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_31:

    v39 = sub_2FF28();
    v40 = sub_300D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v84[0] = v42;
      *v41 = 136315394;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_29C64(qword_3D108, unk_3D110, v84);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v6[2];

      _os_log_impl(&dword_0, v39, v40, "%s Made %ld Classifications:", v41, 0x16u);
      sub_5448(v42);
    }

    else
    {
    }

    sub_EFB0(8224, 0xE200000000000000, v6);
    v43 = sub_2FF28();
    v44 = sub_300D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v84[0] = v46;
      *v45 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_29C64(qword_3D108, unk_3D110, v84);
      _os_log_impl(&dword_0, v43, v44, "%s Running ground truth generators with classification results.", v45, 0xCu);
      sub_5448(v46);
    }

    v47 = sub_9688();
    v9 = v47[2];
    if (v9)
    {
      v12 = _swiftEmptyArrayStorage;
      v72 = v47;
      v48 = (v47 + 4);
      while (1)
      {
        sub_54EC(v48, v84);
        sub_5550(v84, v85);
        sub_2EF98();
        swift_getAssociatedTypeWitness();
        sub_1B98(&qword_3CF70, &unk_315C0);
        v49 = sub_30218();

        sub_5448(v84);
        v14 = *(v49 + 16);
        v5 = *(v12 + 2);
        v50 = &v14[v5];
        if (__OFADD__(v5, v14))
        {
          goto LABEL_75;
        }

        v51 = swift_isUniquelyReferenced_nonNull_native();
        if (v51 && v50 <= *(v12 + 3) >> 1)
        {
          if (*(v49 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v5 <= v50)
          {
            v52 = &v14[v5];
          }

          else
          {
            v52 = v5;
          }

          v12 = sub_29354(v51, v52, 1, v12);
          if (*(v49 + 16))
          {
LABEL_53:
            if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
            {
              goto LABEL_78;
            }

            swift_arrayInitWithCopy();

            if (v14)
            {
              v53 = *(v12 + 2);
              v37 = __OFADD__(v53, v14);
              v54 = &v14[v53];
              if (v37)
              {
                goto LABEL_80;
              }

              *(v12 + 2) = v54;
            }

            goto LABEL_43;
          }
        }

        if (v14)
        {
          goto LABEL_76;
        }

LABEL_43:
        v48 += 40;
        if (!--v9)
        {

          goto LABEL_59;
        }
      }
    }

    v12 = _swiftEmptyArrayStorage;
LABEL_59:
    v55 = sub_BB00(v12);

    v56 = sub_2FF28();
    v21 = sub_300D8();
    if (os_log_type_enabled(v56, v21))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v84[0] = v58;
      *v57 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v57 + 4) = sub_29C64(qword_3D108, unk_3D110, v84);
      _os_log_impl(&dword_0, v56, v21, "%s Generated Media Ground Truth:", v57, 0xCu);
      sub_5448(v58);
    }

    sub_EF9C(8224, 0xE200000000000000, v55);
    v59 = v80;
    sub_B2F0(v82, v6);

    swift_beginAccess();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v59 + 24);
    v60 = v83;
    *(v59 + 24) = 0x8000000000000000;
    v19 = sub_2A2F4(v79);
    v62 = v60[2];
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (!__OFADD__(v62, v63))
    {
      break;
    }

    __break(1u);
LABEL_83:
    swift_once();
  }

  v65 = v61;
  if (v60[3] >= v64)
  {
    v69 = v78;
    if ((v20 & 1) == 0)
    {
      sub_2B320();
      v60 = v83;
    }

    v66 = v79;
LABEL_70:
    *(v80 + 24) = v60;
    if ((v65 & 1) == 0)
    {
      v70 = v75;
      v73(v75, v66, v69);
      sub_2B18C(v19, v70, _swiftEmptyArrayStorage, v60);
    }

    sub_27BB0(v55);
    swift_endAccess();
    return (v76)(v66, v69);
  }

  else
  {
    sub_2A570(v64, v20);
    v60 = v83;
    v66 = v79;
    v67 = sub_2A2F4(v79);
    v69 = v78;
    if ((v65 & 1) == (v68 & 1))
    {
      v19 = v67;
      goto LABEL_70;
    }

    result = sub_302C8();
    __break(1u);
  }

  return result;
}

void *sub_A794()
{
  v1 = v0;
  v46 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v2 = __chkstk_darwin(v46);
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v44 = &v35 - v5;
  v6 = __chkstk_darwin(v4);
  v43 = &v35 - v7;
  __chkstk_darwin(v6);
  v42 = &v35 - v8;
  v41 = sub_2F3B8();
  v48 = *(v41 - 8);
  __chkstk_darwin(v41);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CBF8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_2F5B8();
    swift_beginAccess();
    v10 = *(v1 + 24);
    v11 = *(v10 + 16);
    v12 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      return v12;
    }

    v52 = _swiftEmptyArrayStorage;

    sub_2BBE0(0, v11, 0);
    v12 = v52;
    v13 = v10 + 64;
    v14 = sub_30148();
    v15 = 0;
    v1 = *(v10 + 36);
    v39 = v10;
    v40 = v48 + 32;
    v35 = v10 + 72;
    v36 = v11;
    v37 = v1;
    v38 = v10 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v10 + 32))
    {
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (v1 != *(v10 + 36))
      {
        goto LABEL_25;
      }

      v50 = 1 << v14;
      v51 = v14 >> 6;
      v49 = v15;
      v17 = *(v10 + 48);
      v18 = sub_2EC08();
      v19 = *(v18 - 8);
      v20 = v42;
      (*(v19 + 16))(v42, v17 + *(v19 + 72) * v14, v18);
      v21 = *(*(v10 + 56) + 8 * v14);
      v22 = v43;
      (*(v19 + 32))(v43, v20, v18);
      *(v22 + *(v46 + 48)) = v21;
      v1 = v12;
      sub_5AD0(v22, v44, &qword_3CF38, &unk_30AC0);

      v23 = v45;
      sub_5AD0(v22, v45, &qword_3CF38, &unk_30AC0);
      v24 = v47;
      sub_2F3A8();
      sub_5B38(v22, &qword_3CF38, &unk_30AC0);
      (*(v19 + 8))(v23, v18);
      v52 = v12;
      v26 = v12[2];
      v25 = v12[3];
      if (v26 >= v25 >> 1)
      {
        sub_2BBE0((v25 > 1), v26 + 1, 1);
        v24 = v47;
        v12 = v52;
      }

      v12[2] = v26 + 1;
      (*(v48 + 32))(v12 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v26, v24, v41);
      v10 = v39;
      v16 = 1 << *(v39 + 32);
      if (v14 >= v16)
      {
        goto LABEL_26;
      }

      v13 = v38;
      v27 = *(v38 + 8 * v51);
      if ((v27 & v50) == 0)
      {
        goto LABEL_27;
      }

      v1 = v37;
      if (v37 != *(v39 + 36))
      {
        goto LABEL_28;
      }

      v28 = v27 & (-2 << (v14 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v51 << 6;
        v30 = v51 + 1;
        v31 = (v35 + 8 * v51);
        while (v30 < (v16 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_7474(v14, v37, 0);
            v16 = __clz(__rbit64(v32)) + v29;
            goto LABEL_5;
          }
        }

        sub_7474(v14, v37, 0);
      }

LABEL_5:
      v15 = v49 + 1;
      v14 = v16;
      if (v49 + 1 == v36)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t sub_AD00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v4 = sub_2EC08();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2F958();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v44[-v11];
  v13 = sub_1B98(&qword_3D250, &unk_30D90);
  __chkstk_darwin(v13 - 8);
  v15 = &v44[-v14];
  v16 = sub_2F6C8();
  __chkstk_darwin(v16);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = a1;
  v19 = a1;
  v21 = v20;
  sub_54EC(v19, v59);
  sub_1B98(&qword_3CF70, &unk_315C0);
  v22 = swift_dynamicCast();
  v23 = *(v21 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v15, 1, 1, v16);
    sub_5B38(v15, &qword_3D250, &unk_30D90);
    return sub_54EC(v57, v58);
  }

  v53 = v2;
  v23(v15, 0, 1, v16);
  (*(v21 + 32))(v18, v15, v16);
  sub_2F6B8();
  v50 = *(v7 + 104);
  v51 = v7 + 104;
  v50(v10, enum case for MediaFeedbackGroundTruthSource.successfulPlay(_:), v6);
  v24 = sub_2F948();
  v25 = v16;
  v28 = *(v7 + 8);
  v26 = v7 + 8;
  v27 = v28;
  v28(v10, v6);
  v52 = v12;
  v28(v12, v6);
  if ((v24 & 1) == 0)
  {
    (*(v21 + 8))(v18, v25);
    return sub_54EC(v57, v58);
  }

  v29 = v6;
  v48 = v18;
  v49 = v25;
  if (qword_3CBF0 != -1)
  {
    swift_once();
  }

  v30 = sub_2FF48();
  sub_4FD8(v30, qword_3D118);
  sub_54EC(v57, v59);
  v31 = sub_2FF28();
  v32 = sub_300D8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60 = v46;
    *v33 = 136315138;
    v57 = v26;
    v47 = v29;
    sub_5550(v59, v59[3]);
    v45 = v32;
    v34 = v54;
    v29 = v47;
    sub_2F248();
    v35 = sub_2EBE8();
    v37 = v36;
    (*(v55 + 8))(v34, v56);
    sub_5448(v59);
    v38 = sub_29C64(v35, v37, &v60);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v31, v45, "Updating 'successfulPlay' ground truth id=%s to extendedPlayWithInAppFollowup due to a detected in app followup", v33, 0xCu);
    sub_5448(v46);
  }

  else
  {

    sub_5448(v59);
  }

  v40 = v48;
  v41 = v52;
  v50(v52, enum case for MediaFeedbackGroundTruthSource.extendedPlayWithInAppFollowup(_:), v29);
  v42 = v58;
  v43 = v49;
  v58[3] = v49;
  v42[4] = sub_C6DC(&qword_3D258, 255, &type metadata accessor for MediaFeedbackGroundTruth, &protocol conformance descriptor for MediaFeedbackGroundTruth);
  sub_C678(v42);
  sub_2F6A8();
  v27(v41, v29);
  return (*(v21 + 8))(v40, v43);
}

void sub_B2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_3CBF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2FF48();
  sub_4FD8(v4, qword_3D118);
  v5 = sub_2FF28();
  v6 = sub_300D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    if (qword_3CBE8 != -1)
    {
      swift_once();
    }

    *(v7 + 4) = sub_29C64(qword_3D108, unk_3D110, &v9);
    _os_log_impl(&dword_0, v5, v6, "%s Logging inference results to SELF", v7, 0xCu);
    sub_5448(v8);
  }

  if (*(v3 + 16))
  {
    sub_2F9E8();
    swift_allocObject();

    sub_2F9D8();
    sub_2FD98();
  }
}

uint64_t sub_B4E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_B5D8()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D118);
  v1 = sub_4FD8(v0, qword_3D118);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_B6A0()
{
  sub_2F5E8();
  swift_allocObject();
  result = sub_2F5D8();
  qword_3D130 = result;
  return result;
}

void *sub_B6E0()
{
  v0 = sub_2F328();
  swift_allocObject();
  v20[3] = v0;
  v20[4] = &protocol witness table for MediaPlayClassifier;
  v20[0] = sub_2F318();
  v1 = sub_2F8B8();
  swift_allocObject();
  v21[3] = v1;
  v21[4] = &protocol witness table for MediaInAppFollowupClassifier;
  v21[0] = sub_2F8A8();
  sub_2F828();
  sub_1B98(&qword_3CF48, &unk_30AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = sub_2EFB8();
  *(inited + 40) = v3;
  sub_2C32C(inited);
  swift_setDeallocating();
  sub_7480(inited + 32);
  v4 = sub_2F8D8();
  swift_allocObject();
  sub_2F8C8();
  *(&v18 + 1) = v4;
  v19 = &protocol witness table for FullEntityUtteranceComparator;
  *&v17 = sub_2F818();
  sub_2F808();

  sub_5AD0(v20, &v17, &qword_3D260, &qword_30DA0);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (*(&v18 + 1))
  {
    sub_1978(&v13, v16);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_294F0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_294F0((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_1978(v16, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_5B38(&v13, &qword_3D260, &qword_30DA0);
    v5 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v21, &v17, &qword_3D260, &qword_30DA0);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (*(&v18 + 1))
  {
    sub_1978(&v13, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_294F0(0, v5[2] + 1, 1, v5);
    }

    v9 = v5[2];
    v8 = v5[3];
    if (v9 >= v8 >> 1)
    {
      v5 = sub_294F0((v8 > 1), v9 + 1, 1, v5);
    }

    v5[2] = v9 + 1;
    sub_1978(v16, &v5[5 * v9 + 4]);
  }

  else
  {
    sub_5B38(&v13, &qword_3D260, &qword_30DA0);
  }

  sub_5AD0(&v22, &v17, &qword_3D260, &qword_30DA0);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (*(&v18 + 1))
  {
    sub_1978(&v13, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_294F0(0, v5[2] + 1, 1, v5);
    }

    v11 = v5[2];
    v10 = v5[3];
    if (v11 >= v10 >> 1)
    {
      v5 = sub_294F0((v10 > 1), v11 + 1, 1, v5);
    }

    v5[2] = v11 + 1;
    sub_1978(v16, &v5[5 * v11 + 4]);
  }

  else
  {
    sub_5B38(&v13, &qword_3D260, &qword_30DA0);
  }

  sub_1B98(&qword_3D260, &qword_30DA0);
  swift_arrayDestroy();
  return v5;
}

void *sub_BB00(void *a1)
{
  v2 = 0;
  v85 = sub_2FAE8();
  v3 = *(v85 - 8);
  v4 = __chkstk_darwin(v85);
  v84 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = v69 - v6;
  v90 = sub_2F238();
  v7 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B98(&qword_3D240, &qword_30D80);
  v10 = __chkstk_darwin(v9 - 8);
  v87 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v69 - v13;
  __chkstk_darwin(v12);
  v89 = v69 - v15;
  v16 = sub_1B98(&qword_3D248, &qword_30D88);
  v17 = __chkstk_darwin(v16);
  v72 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v71 = v69 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v69 - v22;
  __chkstk_darwin(v21);
  v86 = v69 - v24;
  v25 = a1[2];
  v73 = a1 + 4;
  v93 = (v7 + 56);
  v95 = (v26 + 56);
  v94 = (v26 + 48);
  v27 = (v7 + 48);
  v91 = (v7 + 32);
  v82 = enum case for MediaCorrectionGroundTruthSource.inAppFollowup(_:);
  v81 = (v3 + 104);
  v80 = (v3 + 8);
  v74 = enum case for MediaCorrectionGroundTruthSource.inAppFollowupUnrelatedEntity(_:);
  v79 = (v7 + 8);
  v70 = a1;

  v69[1] = 0;
  v29 = v14;
  v77 = v14;
  v92 = v16;
  v76 = v23;
  v75 = (v7 + 48);
  v78 = v25;
  while (1)
  {
    if (v2 == v25)
    {
      v103 = 0;
      v30 = v25;
      v101 = 0u;
      v102 = 0u;
      v31 = v90;
      goto LABEL_7;
    }

    if (v2 >= v25)
    {
      break;
    }

    result = sub_54EC(&v73[5 * v2], &v101);
    v32 = __OFADD__(v2, 1);
    v30 = v2 + 1;
    v31 = v90;
    if (v32)
    {
      goto LABEL_31;
    }

LABEL_7:
    v99[0] = v101;
    v99[1] = v102;
    v100 = v103;
    v96 = v30;
    if (*(&v102 + 1))
    {
      sub_1978(v99, &v98);
      sub_54EC(&v98, v97);
      sub_1B98(&qword_3CF70, &unk_315C0);
      v33 = swift_dynamicCast();
      (*v93)(v29, v33 ^ 1u, 1, v31);
      sub_5448(&v98);
      v34 = *v95;
      (*v95)(v29, 0, 1, v16);
    }

    else
    {
      v34 = *v95;
      (*v95)(v29, 1, 1, v16);
    }

    v35 = *v94;
    if ((*v94)(v29, 1, v16) == 1)
    {
      sub_5B38(v29, &qword_3D240, &qword_30D80);
      v36 = 1;
      goto LABEL_14;
    }

    sub_C610(v29, v23, &qword_3D248, &qword_30D88);
    if ((*v27)(v23, 1, v31) == 1)
    {
      result = sub_5B38(v23, &qword_3D248, &qword_30D88);
      v16 = v92;
      v2 = v96;
    }

    else
    {
      sub_C610(v23, v89, &qword_3D248, &qword_30D88);
      v36 = 0;
      v16 = v92;
LABEL_14:
      v37 = v89;
      v34(v89, v36, 1, v16);
      v38 = v37;
      v39 = v87;
      sub_C610(v38, v87, &qword_3D240, &qword_30D80);
      v40 = v35(v39, 1, v16);
      v41 = v88;
      if (v40 == 1)
      {
        v42 = v86;
        (*v93)(v86, 1, 1, v31);
        v43 = (*v27)(v42, 1, v31);
      }

      else
      {
        v44 = v71;
        sub_C610(v39, v71, &qword_3D248, &qword_30D88);
        v45 = v72;
        sub_5AD0(v44, v72, &qword_3D248, &qword_30D88);
        v46 = *v27;
        result = (*v27)(v45, 1, v31);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v47 = v86;
        (*v91)(v86, v45, v31);
        v48 = v44;
        v42 = v47;
        sub_5B38(v48, &qword_3D248, &qword_30D88);
        (*v93)(v47, 0, 1, v31);
        v43 = v46(v47, 1, v31);
      }

      if (v43 == 1)
      {
        v59 = v70;

        return v59;
      }

      (*v91)(v41, v42, v31);
      v49 = v83;
      v50 = v41;
      sub_2F228();
      v51 = *v81;
      v52 = v84;
      v53 = v49;
      v54 = v85;
      (*v81)(v84, v82, v85);
      v55 = v31;
      v56 = sub_2FAD8();
      v57 = *v80;
      (*v80)(v52, v54);
      v57(v53, v54);
      if (v56)
      {
        (*v79)(v50, v55);
        v25 = v78;
LABEL_24:

        v59 = _swiftEmptyArrayStorage;
        if (v25)
        {
          *&v99[0] = _swiftEmptyArrayStorage;
          sub_2BB60(0, v25, 0);
          v59 = *&v99[0];
          v60 = v73;
          do
          {
            sub_AD00(v60, &v101);
            *&v99[0] = v59;
            v62 = v59[2];
            v61 = v59[3];
            if (v62 >= v61 >> 1)
            {
              sub_2BB60((v61 > 1), v62 + 1, 1);
            }

            v63 = *(&v102 + 1);
            v64 = v103;
            v65 = sub_C5C0(&v101, *(&v102 + 1));
            __chkstk_darwin(v65);
            v67 = v69 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v68 + 16))(v67);
            sub_20EE0(v62, v67, v99, v63, v64);
            sub_5448(&v101);
            v59 = *&v99[0];
            v60 += 40;
            --v25;
          }

          while (v25);
        }

        return v59;
      }

      sub_2F228();
      v51(v52, v74, v54);
      v58 = sub_2FAD8();
      v57(v52, v54);
      v57(v53, v54);
      result = (*v79)(v50, v55);
      v25 = v78;
      v29 = v77;
      v16 = v92;
      v23 = v76;
      v27 = v75;
      v2 = v96;
      if (v58)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_C5C0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_C610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_C678(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_C6DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_C724(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_2FE98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_3CC00 != -1)
  {
    swift_once();
  }

  v11 = byte_3E468;
  v12 = sub_2FEB8();
  v13 = sub_30118();
  result = sub_30138();
  if (v11 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v10, a4, v7);
      sub_2FF08();
      swift_allocObject();
      return sub_2FEF8();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v18;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_2FE88();
      v17 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, a1, v17, v15, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_2FE88();
    v17 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v19;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_C99C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2FF88();
  v2 = [v0 BOOLForKey:v1];

  byte_3E468 = v2;
}

uint64_t sub_CA2C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3E470);
  sub_4FD8(v0, qword_3E470);
  return sub_2FF38();
}

uint64_t sub_CAB0()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3E488);
  sub_4FD8(v0, qword_3E488);
  return sub_2FF38();
}

uint64_t sub_CB30()
{
  v0 = sub_2FF48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2FEC8();
  sub_55B0(v4, qword_3E4A0);
  sub_4FD8(v4, qword_3E4A0);
  if (qword_3CC10 != -1)
  {
    swift_once();
  }

  v5 = sub_4FD8(v0, qword_3E488);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2FEA8();
}

uint64_t sub_CC6C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D288);
  v1 = sub_4FD8(v0, qword_3D288);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_CD34(void *a1)
{
  v2 = swift_allocObject();
  sub_CD74(a1);
  return v2;
}

void *sub_CD74(void *a1)
{
  v2 = v1;
  sub_5550(a1, a1[3]);
  sub_2F0D8();
  sub_2FE38();
  swift_allocObject();
  *(v1 + 72) = sub_2FE28();
  sub_54EC(a1, v8);
  sub_54EC(v8, v1 + 32);
  v4 = sub_2F098();
  v6 = v5;
  sub_5448(v8);
  *(v2 + 16) = v4;
  *(v2 + 24) = v6;
  sub_5448(a1);
  return v2;
}

void *sub_CE60()
{
  v1 = v0;
  v2 = sub_2F748();
  swift_allocObject();
  v3 = sub_2F738();
  v23[3] = v2;
  v23[4] = sub_E378(&qword_3D430, &type metadata accessor for PhoneCallFeatureExtractor, &protocol conformance descriptor for PhoneCallFeatureExtractor);
  v23[0] = v3;
  v4 = sub_2FA38();
  sub_54EC(v1 + 32, &v20);
  v5 = sub_2FA48();
  v24[3] = v4;
  v24[4] = sub_E378(&qword_3D438, &type metadata accessor for PlusClientEventFeatureExtractor, &protocol conformance descriptor for PlusClientEventFeatureExtractor);
  v24[0] = v5;
  v6 = sub_2F858();
  swift_allocObject();
  v7 = sub_2F848();
  v25[3] = v6;
  v25[4] = sub_E378(&qword_3D440, &type metadata accessor for SendMessageFeatureExtractor, &protocol conformance descriptor for SendMessageFeatureExtractor);
  v25[0] = v7;
  sub_5AD0(v23, &v20, &qword_3D448, &qword_30E68);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_1978(&v16, v19);
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_29538(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_29538((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    sub_1978(v19, &v8[5 * v10 + 4]);
  }

  else
  {
    sub_5B38(&v16, &qword_3D448, &qword_30E68);
    v8 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v24, &v20, &qword_3D448, &qword_30E68);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_1978(&v16, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_29538(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_29538((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    sub_1978(v19, &v8[5 * v12 + 4]);
  }

  else
  {
    sub_5B38(&v16, &qword_3D448, &qword_30E68);
  }

  sub_5AD0(v25, &v20, &qword_3D448, &qword_30E68);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  if (*(&v21 + 1))
  {
    sub_1978(&v16, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_29538(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = sub_29538((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = v14 + 1;
    sub_1978(v19, &v8[5 * v14 + 4]);
  }

  else
  {
    sub_5B38(&v16, &qword_3D448, &qword_30E68);
  }

  sub_1B98(&qword_3D448, &qword_30E68);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_D270()
{
  sub_1B98(&qword_3D408, &qword_30E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30DB0;
  v1 = sub_2F408();
  v2 = sub_E378(&qword_3D410, &type metadata accessor for PhoneCallGroundTruth, &protocol conformance descriptor for PhoneCallGroundTruth);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2F678();
  v4 = sub_E378(&qword_3D418, &type metadata accessor for ContactPromptGroundTruth, &protocol conformance descriptor for ContactPromptGroundTruth);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_2F338();
  v6 = sub_E378(&qword_3D420, &type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_2FC28();
  v8 = sub_E378(&qword_3D428, &type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

void *sub_D3D0()
{
  v0 = sub_2FB78();
  swift_allocObject();
  v1 = sub_2FB68();
  v17[3] = v0;
  v17[4] = sub_E378(&qword_3D3F0, &type metadata accessor for INStartCallIntentFeatureExtractor, &protocol conformance descriptor for INStartCallIntentFeatureExtractor);
  v17[0] = v1;
  v2 = sub_2FC48();
  swift_allocObject();
  v3 = sub_2FC38();
  v18[3] = v2;
  v18[4] = sub_E378(&qword_3D3F8, &type metadata accessor for INSendMessageIntentFeatureExtractor, &protocol conformance descriptor for INSendMessageIntentFeatureExtractor);
  v18[0] = v3;
  sub_5AD0(v17, &v14, &qword_3D400, &qword_30E58);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  if (*(&v15 + 1))
  {
    sub_1978(&v10, v13);
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2955C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_2955C((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    sub_1978(v13, &v4[5 * v6 + 4]);
  }

  else
  {
    sub_5B38(&v10, &qword_3D400, &qword_30E58);
    v4 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v18, &v14, &qword_3D400, &qword_30E58);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  if (*(&v15 + 1))
  {
    sub_1978(&v10, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2955C(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    if (v8 >= v7 >> 1)
    {
      v4 = sub_2955C((v7 > 1), v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    sub_1978(v13, &v4[5 * v8 + 4]);
  }

  else
  {
    sub_5B38(&v10, &qword_3D400, &qword_30E58);
  }

  sub_1B98(&qword_3D400, &qword_30E58);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_D6B0()
{
  sub_1B98(&qword_3CFD8, &qword_30E50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30DC0;
  sub_2F668();
  swift_allocObject();
  *(v0 + 32) = sub_2F658();
  sub_2F768();
  swift_allocObject();
  *(v0 + 40) = sub_2F758();
  return v0;
}

void *sub_D740()
{
  v1 = v0;
  sub_5550(v0 + 4, v0[7]);
  sub_2F0D8();
  sub_2F508();
  swift_allocObject();
  v2 = sub_2F4F8();
  sub_5550((v1 + 32), *(v1 + 56));
  sub_2F0A8();
  sub_5550((v1 + 32), *(v1 + 56));
  sub_2F0E8();
  v3 = v0[9];
  v4 = type metadata accessor for PhoneCallContactGroundTruthGenerator();
  v5 = swift_allocObject();
  swift_retain_n();

  v6 = _swiftEmptyArrayStorage;
  v5[8] = sub_48EC(_swiftEmptyArrayStorage);
  sub_1978(&v17, (v5 + 2));
  v5[7] = v3;
  v5[9] = v2;
  v22 = v4;
  v23 = sub_E378(&qword_3D3D0, type metadata accessor for PhoneCallContactGroundTruthGenerator, &unk_30A90);
  v21 = v5;
  sub_5550(v25, v25[3]);
  v7 = sub_2F068();
  *(&v18 + 1) = sub_2ECB8();
  v19 = &protocol witness table for AnyFeature;
  *&v17 = v7;
  LOBYTE(v4) = sub_2ED48();
  sub_5448(&v17);
  sub_25F70(v4 & 1, 0xD00000000000002BLL, 0x8000000000032560, v1, v24);
  sub_5550((v1 + 32), *(v1 + 56));
  sub_2F0E8();
  v8 = type metadata accessor for MessagesContactGroundTruthGenerator();
  v9 = swift_allocObject();
  *(v9 + 64) = sub_48EC(_swiftEmptyArrayStorage);
  sub_1978(&v17, v9 + 16);
  *(v9 + 56) = v3;
  v24[8] = v8;
  v24[9] = sub_E378(&qword_3D3D8, type metadata accessor for MessagesContactGroundTruthGenerator, &protocol conformance descriptor for MessagesContactGroundTruthGenerator);
  v24[5] = v9;
  sub_2FD48();
  swift_allocObject();
  *&v17 = sub_2FD38();
  sub_E378(&qword_3D3E0, &type metadata accessor for MessagesContactPartialRepetitionDefinition, &protocol conformance descriptor for MessagesContactPartialRepetitionDefinition);
  sub_2F838();

  for (i = 32; i != 192; i += 40)
  {
    sub_5AD0(&v20[i], &v17, &qword_3D3E8, &qword_30E48);
    v14[0] = v17;
    v14[1] = v18;
    v15 = v19;
    if (*(&v18 + 1))
    {
      sub_1978(v14, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_29580(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_29580((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      sub_1978(v16, &v6[5 * v12 + 4]);
    }

    else
    {
      sub_5B38(v14, &qword_3D3E8, &qword_30E48);
    }
  }

  sub_1B98(&qword_3D3E8, &qword_30E48);
  swift_arrayDestroy();
  sub_5448(v25);
  return v6;
}

BOOL sub_DB84(void *a1)
{
  sub_5550((v1 + 32), *(v1 + 56));
  sub_2F0A8();
  v3 = a1[3];
  sub_5550(a1, v3);
  v6 = 1;
  if (sub_DC68(v3))
  {
    sub_5550(v9, v9[3]);
    v4 = sub_2F068();
    v8[3] = sub_2ECB8();
    v8[4] = &protocol witness table for AnyFeature;
    v8[0] = v4;
    v5 = sub_2ED48();
    sub_5448(v8);
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }
  }

  sub_5448(v9);
  return v6;
}

uint64_t sub_DC68(uint64_t a1)
{
  v2 = sub_2F778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B98(&qword_3D3B0, &qword_30E30);
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = *(a1 - 8);
  __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B98(&qword_3D3B8, &qword_30E38);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_1B98(&qword_3D3C0, &qword_30E40);
  v16 = __chkstk_darwin(v15 - 8);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - v19;
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  (*(v9 + 16))(v11, v40, a1);
  v23 = sub_2F408();
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v26 = *(v23 - 8);
    v25(v14, 0, 1, v23);
    sub_2F3F8();
    (*(v26 + 8))(v14, v23);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v25(v14, 1, 1, v23);
    sub_5B38(v14, &qword_3D3B8, &qword_30E38);
  }

  v28 = *(v3 + 56);
  v28(v22, v27, 1, v2);
  (*(v3 + 104))(v20, enum case for PhoneCallGroundTruthSource.restatementAndSuccessfulPhoneCall(_:), v2);
  v28(v20, 0, 1, v2);
  v29 = *(v5 + 48);
  sub_5AD0(v22, v8, &qword_3D3C0, &qword_30E40);
  sub_5AD0(v20, &v8[v29], &qword_3D3C0, &qword_30E40);
  v30 = *(v3 + 48);
  if (v30(v8, 1, v2) != 1)
  {
    v32 = v39;
    sub_5AD0(v8, v39, &qword_3D3C0, &qword_30E40);
    if (v30(&v8[v29], 1, v2) != 1)
    {
      v33 = v38;
      (*(v3 + 32))(v38, &v8[v29], v2);
      sub_E378(&qword_3D3C8, &type metadata accessor for PhoneCallGroundTruthSource, &protocol conformance descriptor for PhoneCallGroundTruthSource);
      v34 = v32;
      v31 = sub_2FF78();
      v35 = *(v3 + 8);
      v35(v33, v2);
      sub_5B38(v20, &qword_3D3C0, &qword_30E40);
      sub_5B38(v22, &qword_3D3C0, &qword_30E40);
      v35(v34, v2);
      sub_5B38(v8, &qword_3D3C0, &qword_30E40);
      return v31 & 1;
    }

    sub_5B38(v20, &qword_3D3C0, &qword_30E40);
    sub_5B38(v22, &qword_3D3C0, &qword_30E40);
    (*(v3 + 8))(v32, v2);
    goto LABEL_9;
  }

  sub_5B38(v20, &qword_3D3C0, &qword_30E40);
  sub_5B38(v22, &qword_3D3C0, &qword_30E40);
  if (v30(&v8[v29], 1, v2) != 1)
  {
LABEL_9:
    sub_5B38(v8, &qword_3D3B0, &qword_30E30);
    v31 = 0;
    return v31 & 1;
  }

  sub_5B38(v8, &qword_3D3C0, &qword_30E40);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_E27C()
{
  sub_1B98(&qword_3D3A8, "\\\r");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2F938();
  swift_allocObject();
  v2 = sub_2F928();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for FirstPartyEventStreamProcessor;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_E30C()
{

  sub_5448((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_E378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_E3C0(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;
    result = (a1)(&v18, &v17, a2);
    if (v3)
    {

      return v5;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_29354(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_1B98(&qword_3CF70, &unk_315C0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_E5F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v22 = *(v9 + 72);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v24, v10);
    if (v6)
    {

      return v11;
    }

    v13 = v24;
    v14 = *(v24 + 16);
    v15 = v11[2];
    if (__OFADD__(v15, v14))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v15 + v14 <= v11[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v13 + 16))
      {
LABEL_12:
        v16 = (v11[3] >> 1) - v11[2];
        result = a6(0);
        if (v16 < v14)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v17 = v11[2];
          v18 = __OFADD__(v17, v14);
          v19 = v17 + v14;
          if (v18)
          {
            goto LABEL_22;
          }

          v11[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v22;
    if (!--v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_E818(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = (a1)(&v17, i, a2);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_29724(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_1B98(&qword_3D628, &qword_316D0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_E99C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    while (1)
    {
      v6 = 0;
      v22 = v4 & 0xC000000000000001;
      v7 = _swiftEmptyArrayStorage;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      while (v22)
      {
        v9 = sub_301C8();
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:

          return v7;
        }

LABEL_9:
        v26 = v9;
        a1(&v25, &v26);
        if (v3)
        {
          goto LABEL_26;
        }

        v24 = v10;
        v11 = v4;

        v12 = v25;
        v13 = *(v25 + 16);
        v14 = v7[2];
        v4 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_28;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v4 <= v7[3] >> 1)
        {
          if (!*(v12 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v14 <= v4)
          {
            v16 = v14 + v13;
          }

          else
          {
            v16 = v14;
          }

          v7 = sub_29794(isUniquelyReferenced_nonNull_native, v16, 1, v7);
          if (!*(v12 + 16))
          {
LABEL_4:

            v4 = v11;
            v3 = 0;
            v8 = v24;
            if (v13)
            {
              goto LABEL_29;
            }

            goto LABEL_5;
          }
        }

        if ((v7[3] >> 1) - v7[2] < v13)
        {
          goto LABEL_30;
        }

        sub_1B98(&qword_3D680, &qword_30FB0);
        swift_arrayInitWithCopy();

        v4 = v11;
        v3 = 0;
        v8 = v24;
        if (v13)
        {
          v17 = v7[2];
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_31;
          }

          v7[2] = v19;
        }

LABEL_5:
        ++v6;
        if (v8 == v5)
        {
          return v7;
        }
      }

      if (v6 < *(v21 + 16))
      {
        break;
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
      v5 = sub_30238();
      if (!v5)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    v9 = *(v4 + 8 * v6 + 32);

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_EBF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_301C8();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_41;
        }
      }

      v6 = (*(*v4 + 136))();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_30238() : *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v8;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_30238();
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_19;
      }

      v11 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v30 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_301D8();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_30238();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v32)
          {
            goto LABEL_44;
          }

          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_46;
            }

            sub_21430(&qword_3D640, &qword_3D638, &qword_30F88, &protocol conformance descriptor for [A]);
            for (i = 0; i != v14; ++i)
            {
              sub_1B98(&qword_3D638, &qword_30F88);
              v18 = sub_20E10(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            sub_2F648();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_30238();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_30238();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

void sub_EFC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = a3 + 32;
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v8 = sub_2FF48();
    do
    {
      sub_4FD8(v8, qword_3D288);
      sub_54EC(v7, v27);

      v15 = sub_2FF28();
      v16 = sub_300D8();

      if (os_log_type_enabled(v15, v16))
      {
        v9 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v9 = 136315394;
        *(v9 + 4) = sub_29C64(a1, a2, &v26);
        *(v9 + 12) = 2080;
        sub_54EC(v27, v25);
        sub_1B98(a4, a5);
        v10 = v8;
        v11 = sub_2FF98();
        v13 = v12;
        sub_5448(v27);
        v14 = sub_29C64(v11, v13, &v26);

        *(v9 + 14) = v14;
        v8 = v10;
        _os_log_impl(&dword_0, v15, v16, "%s%s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_5448(v27);
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v17 = sub_2FF48();
    sub_4FD8(v17, qword_3D288);

    osloga = sub_2FF28();
    v18 = sub_300D8();

    if (os_log_type_enabled(osloga, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_29C64(a1, a2, v27);
      _os_log_impl(&dword_0, osloga, v18, "%s<Empty>", v19, 0xCu);
      sub_5448(v20);
    }

    else
    {
    }
  }
}

void sub_F340(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v37 = a2;
  v32 = a1;
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v36 = *(v6 + 72);
    v13 = sub_2FF48();
    v14 = (v6 + 16);
    v34 = (v6 + 8);
    *&v15 = 136315394;
    v29 = v15;
    v35 = (v6 + 16);
    v30 = v13;
    do
    {
      sub_4FD8(v13, qword_3D288);
      v21 = *v14;
      (*v14)(v10, v12, v5);

      v22 = sub_2FF28();
      v23 = sub_300D8();

      if (os_log_type_enabled(v22, v23))
      {
        v16 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v33;
        *v16 = v29;
        *(v16 + 4) = sub_29C64(v32, v37, &v38);
        *(v16 + 12) = 2080;
        v21(v31, v10, v5);
        v17 = sub_2FF98();
        v19 = v18;
        (*v34)(v10, v5);
        v20 = sub_29C64(v17, v19, &v38);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_0, v22, v23, "%s%s", v16, 0x16u);
        swift_arrayDestroy();

        v13 = v30;
      }

      else
      {

        (*v34)(v10, v5);
      }

      v14 = v35;
      v12 += v36;
      --v11;
    }

    while (v11);
  }

  else
  {
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v24 = sub_2FF48();
    sub_4FD8(v24, qword_3D288);

    v36 = sub_2FF28();
    v25 = sub_300D8();

    if (os_log_type_enabled(v36, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_29C64(v32, v37, &v38);
      _os_log_impl(&dword_0, v36, v25, "%s<Empty>", v26, 0xCu);
      sub_5448(v27);
    }

    else
    {
      v28 = v36;
    }
  }
}

uint64_t sub_F7CC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_30238();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_301C8();
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

void sub_F904(uint64_t a1)
{
  type metadata accessor for SiriPrivateLearningInferenceEngine();
  sub_1B98(&qword_3D6B8, &unk_30FE0);
  v1._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  sub_2FFC8(v2);
  qword_3D450 = 91;
  *algn_3D458 = 0xE100000000000000;
}

void sub_F990(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_54EC(a2, v20);
  v5 = (*(v4 + 96))(v20);
  if ((*(*v5 + 104))())
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v6 = sub_2FF48();
    sub_4FD8(v6, qword_3D460);
    v7 = sub_2FF28();
    v8 = sub_300F8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v9 = 136315394;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_29C64(qword_3D450, *algn_3D458, v20);
      *(v9 + 12) = 2080;
      v21 = v4;
      sub_1B98(&qword_3D780, &qword_310B8);
      v10 = sub_2FF98();
      v12 = sub_29C64(v10, v11, v20);

      *(v9 + 14) = v12;
      _os_log_impl(&dword_0, v7, v8, "%s     - %s (enabled)", v9, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v13 = sub_2FF48();
    sub_4FD8(v13, qword_3D460);
    v14 = sub_2FF28();
    v15 = sub_300F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v16 = 136315394;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_29C64(qword_3D450, *algn_3D458, v20);
      *(v16 + 12) = 2080;
      v21 = v4;
      sub_1B98(&qword_3D780, &qword_310B8);
      v17 = sub_2FF98();
      v19 = sub_29C64(v17, v18, v20);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_0, v14, v15, "%s     - %s (disabled)", v16, 0x16u);
      swift_arrayDestroy();
    }

    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_FD58()
{
  v1 = sub_2FE58();
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2FB58();
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2F9C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2F1F8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0;
  v15 = *(v12 + 104);
  v15(v14, enum case for EventStreamType.nowPlayingStream(_:), v11);
  sub_54EC(v0 + 144, v29);
  sub_2F9B8();
  sub_2F1B8();
  (*(v8 + 8))(v10, v7);
  v16 = *(v12 + 8);
  v16(v14, v11);
  v15(v14, enum case for EventStreamType.playMediaIntentStream(_:), v11);
  sub_54EC(v22 + 104, v29);
  v17 = v23;
  sub_2FB48();
  v18 = v24;
  sub_2F1B8();
  (*(v25 + 8))(v17, v18);
  v16(v14, v11);
  v15(v14, enum case for EventStreamType.playMediaIntentStreamWithAttachedNowPlayingEvents(_:), v11);

  v19 = v26;
  sub_2FE48();
  v20 = v27;
  sub_2F1B8();
  (*(v28 + 8))(v19, v20);
  return (v16)(v14, v11);
}

uint64_t sub_1011C()
{
  v1[90] = v0;
  sub_1B98(&qword_3D770, &qword_310A0);
  v1[91] = swift_task_alloc();
  v2 = sub_2EC08();
  v1[92] = v2;
  v1[93] = *(v2 - 8);
  v1[94] = swift_task_alloc();
  v3 = sub_2F3B8();
  v1[95] = v3;
  v1[96] = *(v3 - 8);
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();

  return _swift_task_switch(sub_10294, 0, 0);
}

uint64_t sub_10294()
{
  v9 = v0;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v1 = sub_2FF48();
  v0[101] = v1;
  v0[102] = sub_4FD8(v1, qword_3D460);
  v2 = sub_2FF28();
  v3 = sub_300C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v8);
    _os_log_impl(&dword_0, v2, v3, "%s run() starting", v4, 0xCu);
    sub_5448(v5);
  }

  v0[103] = *(v0[90] + 240);
  sub_2F588();
  v6 = swift_task_alloc();
  v0[104] = v6;
  *v6 = v0;
  v6[1] = sub_1047C;

  return sub_129B0();
}

uint64_t sub_1047C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_11D18;
  }

  else
  {
    v4 = sub_10594;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10594()
{
  v161 = v0;
  v4 = v0[105];
  v151 = *(v4 + 16);
  v136 = v4;
  if (v151)
  {
    v5 = 0;
    v6 = v0[96];
    v8 = *(v6 + 16);
    v6 += 16;
    v7 = v8;
    v154 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v148 = (v6 - 8);
    v138 = (v0[93] + 8);
    v139 = v0[90];
    v142 = *(v6 + 56);
    v158 = 136315394;
    v141 = v8;
    v8(v0[100], v154, v0[95]);
    while (1)
    {
      v12 = *(sub_2F388() + 16);

      v13 = v0[100];
      v14 = v0[95];
      if (v12)
      {
        v7(v0[99], v13, v14);
        v15 = sub_2FF28();
        v16 = sub_300D8();
        v140 = v5;
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v160[0] = swift_slowAlloc();
          *v17 = 136315394;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          v18 = v0[99];
          v144 = v0[95];
          v19 = v0[94];
          v20 = v0[92];
          *(v17 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
          *(v17 + 12) = 2080;
          sub_2F398();
          v21 = sub_2EBE8();
          v23 = v22;
          (*v138)(v19, v20);
          v24 = v144;
          v145 = *v148;
          (*v148)(v18, v24);
          v25 = sub_29C64(v21, v23, v160);

          *(v17 + 14) = v25;
          _os_log_impl(&dword_0, v15, v16, "%s Persisting new ground truth for Session ID=%s", v17, 0x16u);
          swift_arrayDestroy();

          v5 = v140;
        }

        else
        {
          v38 = v0[99];
          v39 = v0[95];

          v145 = *v148;
          (*v148)(v38, v39);
        }

        v40 = sub_2F388();
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v40 + 32;
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          do
          {
            sub_4FD8(v0[101], qword_3D288);
            sub_54EC(v42, (v0 + 2));
            v43 = sub_2FF28();
            v44 = sub_300D8();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v160[0] = swift_slowAlloc();
              *v45 = 136315394;
              *(v45 + 4) = sub_29C64(8224, 0xE200000000000000, v160);
              *(v45 + 12) = 2080;
              sub_54EC((v0 + 2), (v0 + 82));
              sub_1B98(&qword_3CF70, &unk_315C0);
              v46 = sub_2FF98();
              v48 = v47;
              sub_5448(v0 + 2);
              v49 = sub_29C64(v46, v48, v160);

              *(v45 + 14) = v49;
              _os_log_impl(&dword_0, v43, v44, "%s%s", v45, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              sub_5448(v0 + 2);
            }

            v42 += 40;
            --v41;
          }

          while (v41);

          v5 = v140;
        }

        else
        {
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          sub_4FD8(v0[101], qword_3D288);
          v50 = sub_2FF28();
          v51 = sub_300D8();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v160[0] = v53;
            *v52 = 136315138;
            *(v52 + 4) = sub_29C64(8224, 0xE200000000000000, v160);
            _os_log_impl(&dword_0, v50, v51, "%s<Empty>", v52, 0xCu);
            sub_5448(v53);
          }
        }

        v9 = v0[100];
        v10 = v0[95];
        sub_5550((v139 + 16), *(v139 + 40));
        sub_2F0B8();
        sub_5550(v0 + 7, v0[10]);
        v11._rawValue = sub_2F388();
        sub_2EE48(v11);

        v145(v9, v10);
        sub_5448(v0 + 7);
        v7 = v141;
      }

      else
      {
        v7(v0[98], v13, v14);
        v26 = sub_2FF28();
        v27 = sub_300D8();
        if (os_log_type_enabled(v26, v27))
        {
          v140 = v5;
          v28 = swift_slowAlloc();
          v160[0] = swift_slowAlloc();
          *v28 = 136315394;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          v146 = v0[100];
          v29 = v0[98];
          v137 = v0[95];
          v30 = v0[94];
          v31 = v0[92];
          *(v28 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
          *(v28 + 12) = 2080;
          sub_2F398();
          v32 = sub_2EBE8();
          v34 = v33;
          (*v138)(v30, v31);
          v35 = *v148;
          (*v148)(v29, v137);
          v36 = sub_29C64(v32, v34, v160);

          *(v28 + 14) = v36;
          _os_log_impl(&dword_0, v26, v27, "%s Session ID=%s has no ground truth", v28, 0x16u);
          swift_arrayDestroy();

          v37 = v146;
          v145 = v35;
          v35(v37, v137);
          v5 = v140;
          v7 = v141;
        }

        else
        {
          v54 = v0[100];
          v55 = v0[98];
          v56 = v0[95];

          v57 = *v148;
          (*v148)(v55, v56);
          v145 = v57;
          v57(v54, v56);
        }
      }

      v5 = (v5 + 1);
      if (v5 == v151)
      {
        break;
      }

      v7(v0[100], v154 + v5 * v142, v0[95]);
    }

    v58 = _swiftEmptyArrayStorage;
    v3 = (&stru_20 + 8);
    v1 = &qword_3CF70;
    v2 = &unk_315C0;
    while (1)
    {
      v59 = v0[97];
      v60 = v0[95];
      v141(v59, v154, v60);
      v61 = sub_2F388();
      v145(v59, v60);
      v62 = *(v61 + 16);
      v63 = v58[2];
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v64 <= v58[3] >> 1)
      {
        if (!*(v61 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v63 <= v64)
        {
          v66 = v63 + v62;
        }

        else
        {
          v66 = v63;
        }

        v58 = sub_29354(isUniquelyReferenced_nonNull_native, v66, 1, v58);
        if (!*(v61 + 16))
        {
LABEL_31:

          if (v62)
          {
            goto LABEL_116;
          }

          goto LABEL_32;
        }
      }

      v67 = v58[2];
      if ((v58[3] >> 1) - v67 < v62)
      {
        goto LABEL_117;
      }

      v63 = &v58[5 * v67];
      sub_1B98(&qword_3CF70, &unk_315C0);
      swift_arrayInitWithCopy();

      if (v62)
      {
        v68 = v58[2];
        v69 = __OFADD__(v68, v62);
        v70 = v68 + v62;
        if (v69)
        {
          goto LABEL_120;
        }

        v58[2] = v70;
      }

LABEL_32:
      v154 += v142;
      v151 = (v151 - 1);
      if (!v151)
      {
        goto LABEL_47;
      }
    }
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_47:
  v158 = v58[2];
  if (v158)
  {
    v71 = v0[91];
    v3 = v0[90];
    sub_2F598();
    sub_16B20(v0 + 12);
    sub_5550(v3 + 2, v3[5]);
    sub_2F0E8();
    sub_5550(v0 + 17, v0[20]);
    sub_2F788();
    v72 = sub_2F898();
    v73 = *(v72 - 8);
    v74 = (*(v73 + 48))(v71, 1, v72);
    v75 = v0[91];
    if (v74 == 1)
    {
      sub_5448(v0 + 17);
      sub_5B38(v75, &qword_3D770, &qword_310A0);
      v76 = 0x8000000000032670;
      v77 = 0xD00000000000001CLL;
    }

    else
    {
      v77 = sub_2F888();
      v76 = v82;
      (*(v73 + 8))(v75, v72);
      sub_5448(v0 + 17);
    }

    v83 = v0[15];
    v84 = v0[16];
    sub_5550(v0 + 12, v83);
    v140 = v3;
    if (v77 == (*(v84 + 8))(v83, v84) && v76 == v85)
    {
    }

    else
    {
      v86 = sub_302A8();

      if ((v86 & 1) == 0)
      {
        v90 = sub_2FF28();
        v91 = sub_300D8();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v160[0] = v93;
          *v92 = 136315138;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          *(v92 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
          _os_log_impl(&dword_0, v90, v91, "%s Suggestion generator has been changed since the last run. Wiping the PICS store to maintain integrity.", v92, 0xCu);
          sub_5448(v93);
        }

        sub_5550(v3 + 2, v3[5]);
        sub_2F0E8();
        sub_5550(v0 + 22, v0[25]);
        sub_2F798();
        sub_5448(v0 + 22);
LABEL_68:
        v62 = sub_2FF28();
        LOBYTE(v1) = sub_300D8();
        if (!os_log_type_enabled(v62, v1))
        {
          goto LABEL_71;
        }

        v63 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        v160[0] = v2;
        *v63 = 136315138;
        if (qword_3CC28 != -1)
        {
          goto LABEL_130;
        }

        while (1)
        {
          *(v63 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
          _os_log_impl(&dword_0, v62, v1, "%s Suggestion generation requires reloading old ground truth. Loading ground truth from store.", v63, 0xCu);
          sub_5448(v2);

LABEL_71:

          v94 = v0[90];
          v1 = v3[6];
          sub_5550(v3 + 2, v3[5]);
          sub_2F0B8();
          v95 = sub_1BF44((v0 + 27));
          sub_5448(v0 + 27);
          v62 = v95[2];
          v152 = v94;

          v149 = v62;
          if (v62)
          {
            break;
          }

          v89 = _swiftEmptyArrayStorage;
LABEL_89:

LABEL_90:
          v1 = v0[90];
          v110 = v0[15];
          v2 = v0[16];
          sub_5550(v0 + 12, v110);
          v111 = (*(v2 + 24))(v89, v110, v2);
          v113 = v112;

          v153 = HIDWORD(v111);
          v157 = v111;
          v147 = HIDWORD(v113);
          v150 = v113;
          sub_5550(v3 + 2, v3[5]);
          sub_2F0E8();
          v3 = v0[56];
          sub_5550(v0 + 52, v0[55]);
          v115 = v0[15];
          v114 = v0[16];
          sub_5550(v0 + 12, v115);
          (*(v114 + 8))(v115, v114);
          v63 = v116;
          sub_2F7A8();

          sub_5448(v0 + 52);
          sub_16DE8(v0 + 62);
          if (!v0[65])
          {
            sub_5B38((v0 + 62), &qword_3D778, &unk_310A8);
            v130 = HIDWORD(v113);
            v2 = v113;
LABEL_107:
            v62 = *(v136 + 16);

            if (!HIDWORD(v62))
            {
              v63 = v58[2];

              if (!HIDWORD(v63))
              {
                LODWORD(v78) = v157 + v62;
                if (!__CFADD__(v157, v62))
                {
                  v62 = (v153 + v63);
                  if (!__CFADD__(v153, v63))
                  {
                    sub_5448(v0 + 12);
                    sub_23BA0();
                    v79 = v62 << 32;
                    v80 = v2;
                    v81 = v130 << 32;
                    goto LABEL_112;
                  }

                  goto LABEL_124;
                }

LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v62 = v0[103];
          sub_1978(v0 + 31, (v0 + 57));
          sub_2F5A8();
          v117 = 0;
          v118 = (v58 + 4);
          v3 = _swiftEmptyArrayStorage;
          do
          {
            if (v117 >= v58[2])
            {
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            sub_54EC(v118, (v0 + 67));
            v119 = v0[70];
            v63 = v0[71];
            v120 = sub_5550(v0 + 67, v119);
            v121 = v119;
            v62 = v120;
            if (sub_2647C(v121, v63))
            {
              sub_1978((v0 + 67), (v0 + 72));
              v122 = swift_isUniquelyReferenced_nonNull_native();
              v160[0] = v3;
              if ((v122 & 1) == 0)
              {
                sub_2BB60(0, v3[2] + 1, 1);
                v3 = v160[0];
              }

              v1 = v3[2];
              v123 = v3[3];
              if (v1 >= v123 >> 1)
              {
                sub_2BB60((v123 > 1), v1 + 1, 1);
              }

              v62 = v0[75];
              v63 = v0[76];
              v124 = sub_C5C0((v0 + 72), v62);
              v125 = *(v62 - 8);
              v126 = swift_task_alloc();
              v127 = *(v125 + 16);
              v2 = v125 + 16;
              v127(v126, v124, v62);
              sub_20EE0(v1, v126, v160, v62, v63);
              sub_5448(v0 + 72);

              v3 = v160[0];
            }

            else
            {
              sub_5448(v0 + 67);
            }

            ++v117;
            v118 += 40;
          }

          while (v158 != v117);
          v63 = v0[60];
          v128 = v0[61];
          sub_5550(v0 + 57, v63);
          v1 = (*(v128 + 24))(v3, v63, v128);
          v62 = v129;

          if (__CFADD__(v1, v157))
          {
            goto LABEL_125;
          }

          if (__CFADD__(HIDWORD(v1), v153))
          {
            goto LABEL_126;
          }

          v2 = (v62 + v150);
          if (__CFADD__(v62, v150))
          {
            goto LABEL_127;
          }

          v130 = (HIDWORD(v62) + v147);
          if (!__CFADD__(HIDWORD(v62), v147))
          {
            LODWORD(v153) = HIDWORD(v1) + v153;
            v157 += v1;
            sub_5550(v140 + 2, v140[5]);
            sub_2F0F8();
            v63 = v0[80];
            v1 = v0[81];
            sub_5550(v0 + 77, v63);
            v131 = v0[60];
            v132 = v0[61];
            sub_5550(v0 + 57, v131);
            (*(v132 + 8))(v131, v132);
            v3 = v133;
            sub_2F6D8();

            sub_5448(v0 + 77);
            sub_5448(v0 + 57);
            goto LABEL_107;
          }

LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          swift_once();
        }

        v3 = 0;
        v2 = (v0 + 32);
        v96 = (v95 + 4);
        v63 = v0[106];
        v89 = _swiftEmptyArrayStorage;
        v143 = v95;
        while (v3 < v95[2])
        {
          sub_54EC(v96, v2);
          v97 = *(v152 + 224);
          v98 = swift_task_alloc();
          LOBYTE(v1) = v98;
          *(v98 + 16) = v2;
          LOBYTE(v97) = sub_F7CC(sub_23D0C, v98, v97);

          if (v97)
          {
            sub_1978(v2, (v0 + 47));
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v159 = v89;
            if ((v99 & 1) == 0)
            {
              sub_2BB60(0, v89[2] + 1, 1);
              v89 = v159;
            }

            v155 = v63;
            v1 = v89[2];
            v100 = v89[3];
            if (v1 >= v100 >> 1)
            {
              sub_2BB60((v100 > 1), v1 + 1, 1);
            }

            v62 = v0[50];
            v101 = v0[51];
            v102 = sub_C5C0((v0 + 47), v62);
            v103 = *(v62 - 8);
            v104 = swift_task_alloc();
            (*(v103 + 16))(v104, v102, v62);
            sub_20EE0(v1, v104, &v159, v62, v101);
            sub_5448(v0 + 47);

            v89 = v159;
            v95 = v143;
            v2 = (v0 + 32);
            v63 = v155;
          }

          else
          {
            sub_54EC(v2, (v0 + 37));
            v62 = sub_2FF28();
            v105 = sub_300D8();
            if (os_log_type_enabled(v62, v105))
            {
              v156 = v63;
              v1 = swift_slowAlloc();
              v160[0] = swift_slowAlloc();
              *v1 = 136315394;
              if (qword_3CC28 != -1)
              {
                swift_once();
              }

              *(v1 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
              *(v1 + 12) = 2080;
              sub_54EC((v0 + 37), (v0 + 42));
              sub_1B98(&qword_3CF70, &unk_315C0);
              v106 = sub_2FF98();
              v108 = v107;
              sub_5448(v0 + 37);
              v109 = sub_29C64(v106, v108, v160);

              *(v1 + 14) = v109;
              _os_log_impl(&dword_0, v62, v105, "%s Ignoring %s", v1, 0x16u);
              swift_arrayDestroy();

              v95 = v143;
              v63 = v156;
            }

            else
            {

              sub_5448(v0 + 37);
            }

            v2 = (v0 + 32);
            sub_5448(v0 + 32);
          }

          v3 = (v3 + 1);
          v96 += 40;
          if (v149 == v3)
          {
            v3 = v140;
            goto LABEL_89;
          }
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }
    }

    v87 = v0[15];
    v88 = v0[16];
    sub_5550(v0 + 12, v87);
    if (((*(v88 + 16))(v87, v88) & 1) == 0)
    {

      v89 = v58;
      goto LABEL_90;
    }

    goto LABEL_68;
  }

  v62 = sub_2FF28();
  v63 = sub_300D8();
  if (os_log_type_enabled(v62, v63))
  {
    v58 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v160[0] = v1;
    *v58 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v58 + 4) = sub_29C64(qword_3D450, *algn_3D458, v160);
    _os_log_impl(&dword_0, v62, v63, "%s No new ground truth generated", v58, 0xCu);
    sub_5448(v1);
  }

  v78 = *(v136 + 16);

  if (HIDWORD(v78))
  {
    goto LABEL_129;
  }

  sub_23BA0();
  v79 = 0;
  v80 = 0;
  v81 = 0;
LABEL_112:

  v134 = v0[1];

  return v134(v79 | v78, v81 | v80);
}

uint64_t sub_11D18()
{
  *(v0 + 712) = *(v0 + 848);
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  if (swift_dynamicCast())
  {
    sub_5064(*(v0 + 696), *(v0 + 704));
  }

  else
  {
    v1 = *(v0 + 848);
    sub_5010();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = -127;
  }

  swift_willThrow();
  sub_23BA0();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11E88()
{
  v12 = v0;
  sub_54EC(*(v0 + 112) + 16, v0 + 72);
  type metadata accessor for DonationSourceProvider();
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  sub_1978((v0 + 72), inited + 16);
  v2 = sub_2E650();
  *(v0 + 128) = v2;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v3 = sub_2FF48();
  sub_4FD8(v3, qword_3D460);
  v4 = sub_2FF28();
  v5 = sub_300D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v6 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v11);
    _os_log_impl(&dword_0, v4, v5, "%s Cascade donation triggered", v6, 0xCu);
    sub_5448(v7);
  }

  sub_2F7F8();
  swift_allocObject();
  *(v0 + 136) = sub_2F7E8();
  v10 = (&async function pointer to dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:) + async function pointer to dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:));
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_120D0;

  return v10(v2);
}

uint64_t sub_120D0()
{

  return _swift_task_switch(sub_121E8, 0, 0);
}

uint64_t sub_121E8()
{
  v1 = *(v0 + 120);

  swift_setDeallocating();
  sub_5448((v1 + 16));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1225C(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v55 = sub_2EBD8();
  v59 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v46 - v5;
  v53 = sub_2EC38();
  v57 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EC48();
  v56 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B98(&qword_3D620, &unk_30F70);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  sub_5550(v1 + 23, v1[26]);
  v17 = sub_2EDD8();
  if (v17)
  {
    v18 = v1[10];
    v59 = v17;
    sub_5550(v1 + 7, v18);
    sub_2EEC8();
    v19 = v59;
  }

  else
  {
    v47 = v10;
    v48 = v7;
    v49 = v8;
    v50 = v14;
    v20 = v53;
    v21 = v54;
    v51 = "cePlugin21CommonInferenceDomain";
    v52 = v16;
    v22 = v55;
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v23 = sub_2FF48();
    v46 = sub_4FD8(v23, qword_3D460);
    v24 = sub_2FF28();
    v25 = sub_300D8();
    v26 = v20;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61 = v28;
      *v27 = 136315138;
      v29 = v21;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v61);
      _os_log_impl(&dword_0, v24, v25, "%s No existing conversation bookmark found. A new bookmark will be created and only the last 24hrs of data will be reviewed.", v27, 0xCu);
      sub_5448(v28);
    }

    else
    {

      v29 = v21;
    }

    v30 = v2;
    v31 = v57;
    v32 = v49;
    v33 = v47;
    sub_2EC28();
    v34 = v48;
    (*(v31 + 104))(v48, enum case for Calendar.Component.hour(_:), v26);
    sub_2EBC8();
    v35 = v52;
    sub_2EC18();
    v36 = v59;
    (*(v59 + 8))(v29, v22);
    (*(v31 + 8))(v34, v26);
    v37 = v33;
    v38 = v35;
    (*(v56 + 8))(v37, v32);
    v39 = *(v36 + 48);
    if (v39(v35, 1, v22) == 1)
    {
      v40 = sub_2FF28();
      v41 = sub_300E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v61 = v43;
        *v42 = 136315138;
        if (qword_3CC28 != -1)
        {
          swift_once();
        }

        *(v42 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v61);
        _os_log_impl(&dword_0, v40, v41, "%s Failed to calculate a new valid bookmark start date. Using the current date instead - all existing conversation data will be ignored.", v42, 0xCu);
        sub_5448(v43);
      }
    }

    v44 = v50;
    sub_5AD0(v38, v50, &qword_3D620, &unk_30F70);
    if (v39(v44, 1, v22) == 1)
    {
      sub_2EBC8();
      if (v39(v44, 1, v22) != 1)
      {
        sub_5B38(v44, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*(v59 + 32))(v58, v44, v22);
    }

    sub_2ED28();
    v45 = sub_2ED18();
    sub_5550(v30 + 23, v30[26]);
    sub_2EDE8();
    sub_5550(v30 + 7, v30[10]);
    sub_2EEC8();

    sub_5B38(v38, &qword_3D620, &unk_30F70);
  }
}

uint64_t sub_129B0()
{
  v1[47] = v0;
  v1[48] = sub_1B98(&qword_3D6C0, &unk_30FF0);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v2 = sub_1B98(&qword_3D6C8, &qword_31770);
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = sub_1B98(&qword_3D6D0, &qword_31000);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v3 = sub_2F3B8();
  v1[58] = v3;
  v1[59] = *(v3 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v4 = sub_2F148();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v5 = sub_1B98(&qword_3D6D8, &qword_31008);
  v1[66] = v5;
  v1[67] = *(v5 - 8);
  v1[68] = swift_task_alloc();
  sub_1B98(&qword_3D6E0, &qword_31010);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v6 = sub_2EC08();
  v1[71] = v6;
  v1[72] = *(v6 - 8);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v7 = sub_2F198();
  v1[77] = v7;
  v1[78] = *(v7 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  sub_1B98(&qword_3D6E8, &qword_31018);
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  sub_1B98(&qword_3D620, &unk_30F70);
  v1[83] = swift_task_alloc();
  sub_1B98(&qword_3CF40, &unk_315B0);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  sub_1B98(&qword_3D6F0, &qword_31020);
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v8 = sub_2ECF8();
  v1[89] = v8;
  v1[90] = *(v8 - 8);
  v1[91] = swift_task_alloc();
  v9 = sub_1B98(&qword_3D6F8, &qword_31028);
  v1[92] = v9;
  v1[93] = *(v9 - 8);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  sub_1B98(&qword_3D700, &qword_31030);
  v1[96] = swift_task_alloc();
  v10 = sub_1B98(&qword_3D708, &qword_31038);
  v1[97] = v10;
  v1[98] = *(v10 - 8);
  v1[99] = swift_task_alloc();
  v11 = sub_1B98(&qword_3D710, &qword_31040);
  v1[100] = v11;
  v1[101] = *(v11 - 8);
  v1[102] = swift_task_alloc();
  v1[103] = sub_1B98(&qword_3D718, &qword_31048);
  v1[104] = swift_task_alloc();
  v12 = sub_1B98(&qword_3D720, &qword_31050);
  v1[105] = v12;
  v1[106] = *(v12 - 8);
  v1[107] = swift_task_alloc();

  return _swift_task_switch(sub_13108, 0, 0);
}

uint64_t sub_13108()
{
  v31 = v0;
  v1 = v0[47];
  sub_1225C(v0[104]);
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_31060;
  *(v2 + 24) = v1;
  sub_21430(&qword_3D728, &qword_3D718, &qword_31048, &protocol conformance descriptor for AnyAsyncSequence<A>);

  sub_30228();
  v3 = sub_1BD4C();
  v0[108] = v3;
  v28 = sub_1B764();
  v0[109] = v28;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v4 = sub_2FF48();
  v0[110] = v4;
  v0[111] = sub_4FD8(v4, qword_3D460);
  v5 = sub_2FF28();
  v6 = sub_300D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v7 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v29);
    _os_log_impl(&dword_0, v5, v6, "%s Reviewing new conversations from Biome for ground truth generation.", v7, 0xCu);
    sub_5448(v8);
  }

  v9 = sub_2FF28();
  v10 = sub_300D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v29);
    _os_log_impl(&dword_0, v9, v10, "%s Suggestion evaluation frameworks:", v11, 0xCu);
    sub_5448(v12);
  }

  if (qword_3CC28 != -1)
  {
    swift_once();
  }

  v13 = qword_3D450;
  v14 = *algn_3D458;
  v0[112] = qword_3D450;
  v0[113] = v14;
  v29 = v13;
  v30 = v14;

  v33._countAndFlagsBits = 0x202D20202020;
  v33._object = 0xE600000000000000;
  sub_2FFC8(v33);
  sub_EFC4(v29, v30, v3, &qword_3D600, &unk_30F50);

  v15 = sub_2FF28();
  v16 = sub_300D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_29C64(v13, v14, &v29);
    _os_log_impl(&dword_0, v15, v16, "%s Ground truth generators:", v17, 0xCu);
    sub_5448(v18);
  }

  v19 = v0[99];
  v20 = v0[98];
  v21 = v0[97];
  v29 = v13;
  v30 = v14;

  v34._countAndFlagsBits = 0x202D20202020;
  v34._object = 0xE600000000000000;
  sub_2FFC8(v34);
  sub_EFC4(v29, v30, v28, &qword_3D618, &qword_316B0);

  v22 = sub_4BE4(_swiftEmptyArrayStorage);
  sub_21430(&qword_3D730, &qword_3D720, &qword_31050, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  sub_30098();
  sub_2EFE8();
  (*(v20 + 8))(v19, v21);
  v0[116] = v22;
  v0[115] = _swiftEmptyArrayStorage;
  v0[114] = v22;
  v23 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040, &protocol conformance descriptor for InferenceCombinedSessionAsyncSequence<A>.InferenceCombinedSessionAsyncSequenceIterator);
  v24 = swift_task_alloc();
  v0[117] = v24;
  *v24 = v0;
  v24[1] = sub_1370C;
  v25 = v0[100];
  v26 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v26, v25, v23);
}

uint64_t sub_1370C()
{
  *(*v1 + 944) = v0;

  if (v0)
  {

    v2 = sub_14A28;
  }

  else
  {
    v2 = sub_13840;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_13840()
{
  v158 = v0;
  v1 = v0[96];
  v2 = v0[92];
  v156 = v0;
  if ((*(v0[93] + 48))(v1, 1, v2) != 1)
  {
    v16 = v0[95];
    v17 = v0[94];
    v18 = v0[90];
    v19 = v0[89];
    v147 = v0[91];
    v150 = v0[88];
    v20 = v0[86];
    v21 = v156[72];
    v153 = v156[71];
    v22 = *(v2 + 48);
    v23 = *(v18 + 32);
    v23(v16, v1, v19);
    sub_C610(v1 + v22, v16 + v22, &qword_3D6F0, &qword_31020);
    sub_5AD0(v16, v17, &qword_3D6F8, &qword_31028);
    v24 = *(v2 + 48);
    v23(v147, v17, v19);
    sub_C610(v17 + v24, v150, &qword_3D6F0, &qword_31020);
    sub_2ECC8();
    v25 = *(v21 + 48);
    v156[119] = v25;
    v156[120] = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v26 = v25(v20, 1, v153);
    v27 = v156[86];
    if (v26 == 1)
    {
      sub_5B38(v156[86], &qword_3CF40, &unk_315B0);
      v28 = 0x8000000000032650;
      v29 = 0xD000000000000019;
    }

    else
    {
      v30 = v156[72];
      v31 = v156[71];
      v29 = sub_2EBE8();
      v28 = v32;
      (*(v30 + 8))(v27, v31);
    }

    v156[122] = v28;
    v156[121] = v29;

    v33 = sub_2FF28();
    v34 = sub_300D8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v156[113];
      v36 = v156[112];
      v37 = swift_slowAlloc();
      v157[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_29C64(v36, v35, v157);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_29C64(v29, v28, v157);
      _os_log_impl(&dword_0, v33, v34, "%s Reviewing conversation with conversationId=%s", v37, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v156[90];
    v39 = v156[89];
    v40 = v156[87];
    sub_5AD0(v156[88], v40, &qword_3D6F0, &qword_31020);
    if ((*(v38 + 48))(v40, 1, v39) == 1)
    {
      v41 = v156[83];
      sub_5B38(v156[87], &qword_3D6F0, &qword_31020);
      v42 = sub_2EBD8();
      (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    else
    {
      v43 = v156[90];
      v44 = v156[89];
      v45 = v156[87];
      sub_2ECD8();
      (*(v43 + 8))(v45, v44);
    }

    v46 = swift_task_alloc();
    v156[123] = v46;
    *v46 = v156;
    v46[1] = sub_14D50;
    v47 = v156[83];
    v48 = v156[91];

    return sub_17340(v48, v47);
  }

  v3 = v0[108];
  (*(v0[101] + 8))(v0[102], v0[100]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _swiftEmptyArrayStorage;
    v6 = 32;
    while (1)
    {
      sub_54EC(v0[108] + v6, (v0 + 2));
      sub_5550(v0 + 2, v0[5]);
      v7 = sub_2F2F8();
      sub_5448(v0 + 2);
      v8 = *(v7 + 16);
      v9 = *(v5 + 16);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 24) >> 1)
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v5 = sub_297E0(isUniquelyReferenced_nonNull_native, v12, 1, v5);
      }

      v0 = v156;
      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_40;
        }

        sub_1B98(&qword_3D740, &qword_31078);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v5 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_41;
          }

          *(v5 + 16) = v15;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_39;
        }
      }

      v6 += 40;
      if (!--v4)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_30238();
    v51 = result;
    if (!result)
    {
      goto LABEL_43;
    }

LABEL_32:
    if (v51 < 1)
    {
      goto LABEL_134;
    }

    for (i = 0; i != v51; i = (i + 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v53 = sub_301C8();
      }

      else
      {
        v53 = *(v5 + 8 * i + 32);
      }

      (*(*v53 + 176))();
    }

    goto LABEL_43;
  }

LABEL_30:

  v50 = v0[47];
  sub_5550(v50 + 2, v50[5]);
  sub_2F0D8();
  sub_2F508();
  swift_allocObject();
  sub_2F4F8();
  sub_2F4C8();

  v5 = v50[28];
  if (v5 >> 62)
  {
    goto LABEL_42;
  }

  v51 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v51)
  {
    goto LABEL_32;
  }

LABEL_43:
  v54 = *(v0[109] + 16);
  if (v54)
  {
    v55 = _swiftEmptyArrayStorage;
    v56 = 32;
    while (1)
    {
      sub_54EC(v0[109] + v56, (v0 + 7));
      sub_5550(v0 + 7, v0[10]);
      v57 = sub_2EFD8();
      result = sub_5448(v0 + 7);
      v58 = *(v57 + 16);
      v59 = v55[2];
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_122;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v60 <= v55[3] >> 1)
      {
        if (*(v57 + 16))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v59 <= v60)
        {
          v61 = v59 + v58;
        }

        else
        {
          v61 = v59;
        }

        result = sub_297B8(result, v61, 1, v55);
        v55 = result;
        if (*(v57 + 16))
        {
LABEL_56:
          if ((v55[3] >> 1) - v55[2] < v58)
          {
            goto LABEL_126;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v62 = v55[2];
            v14 = __OFADD__(v62, v58);
            v63 = v62 + v58;
            if (v14)
            {
              goto LABEL_133;
            }

            v55[2] = v63;
          }

          goto LABEL_46;
        }
      }

      if (v58)
      {
        goto LABEL_123;
      }

LABEL_46:
      v56 += 40;
      if (!--v54)
      {

        goto LABEL_62;
      }
    }
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_62:
  v64 = v0[118];
  sub_16F30(v55, v0[116]);
  v65 = sub_21478(v55);
  v128 = v64;

  v66 = v65[2];
  if (!v66)
  {

    v105 = _swiftEmptyArrayStorage;
    goto LABEL_101;
  }

  v67 = v0[59];
  v68 = v0[54];
  v157[0] = _swiftEmptyArrayStorage;
  sub_2BBE0(0, v66, 0);
  v148 = _swiftEmptyArrayStorage;
  v69 = v65 + 8;
  result = sub_30148();
  v70 = result;
  v71 = 0;
  v72 = *(v65 + 9);
  v130 = (v67 + 16);
  v154 = (v67 + 8);
  v139 = v67;
  v131 = v66;
  v129 = v65 + 9;
  v135 = v68;
  v137 = v65;
  v132 = v72;
  v133 = v65 + 8;
  do
  {
    if ((v70 & 0x8000000000000000) != 0 || v70 >= 1 << *(v65 + 32))
    {
      goto LABEL_127;
    }

    if ((v69[v70 >> 6] & (1 << v70)) == 0)
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      return result;
    }

    if (v72 != *(v65 + 9))
    {
      goto LABEL_129;
    }

    v143 = 1 << v70;
    v145 = v70 >> 6;
    v141 = v71;
    v73 = v0[72];
    v74 = v0[71];
    v76 = v0[56];
    v75 = v0[57];
    (*(v73 + 16))(v75, v65[6] + *(v73 + 72) * v70, v74);
    v151 = v70;
    v77 = *(v65[7] + 8 * v70);
    (*(v73 + 32))(v76, v75, v74);
    *(v76 + *(v68 + 48)) = v77;
    v78 = *(v77 + 16);
    if (v78)
    {
      v79 = v77 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v80 = *(v139 + 72);
      v81 = *(v139 + 16);

      v82 = _swiftEmptyArrayStorage;
      v0 = v130;
      while (1)
      {
        v83 = v156[60];
        v84 = v156[58];
        v81(v83, v79, v84);
        v85 = sub_2F388();
        (*v154)(v83, v84);
        v86 = *(v85 + 16);
        v87 = v82[2];
        v88 = v87 + v86;
        if (__OFADD__(v87, v86))
        {
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v88 <= v82[3] >> 1)
        {
          if (!*(v85 + 16))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v87 <= v88)
          {
            v89 = v87 + v86;
          }

          else
          {
            v89 = v87;
          }

          result = sub_29354(result, v89, 1, v82);
          v82 = result;
          if (!*(v85 + 16))
          {
LABEL_72:

            if (v86)
            {
              goto LABEL_116;
            }

            goto LABEL_73;
          }
        }

        if ((v82[3] >> 1) - v82[2] < v86)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        sub_1B98(&qword_3CF70, &unk_315C0);
        swift_arrayInitWithCopy();

        if (v86)
        {
          v90 = v82[2];
          v14 = __OFADD__(v90, v86);
          v91 = v90 + v86;
          if (v14)
          {
            goto LABEL_121;
          }

          v82[2] = v91;
        }

LABEL_73:
        v79 += v80;
        if (!--v78)
        {
          goto LABEL_88;
        }
      }
    }

LABEL_88:
    v0 = v156;
    v92 = v156[56];
    sub_5AD0(v92, v156[55], &qword_3D6D0, &qword_31000);
    v68 = v135;

    sub_2F3A8();
    sub_5B38(v92, &qword_3D6D0, &qword_31000);
    v93 = v148;
    v157[0] = v148;
    v95 = v148[2];
    v94 = v148[3];
    if (v95 >= v94 >> 1)
    {
      sub_2BBE0((v94 > 1), v95 + 1, 1);
      v93 = v157[0];
    }

    v96 = v156[61];
    v97 = v156[58];
    *(v93 + 16) = v95 + 1;
    v148 = v93;
    result = (*(v139 + 32))(v93 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v95, v96, v97);
    v65 = v137;
    v70 = 1 << *(v137 + 32);
    v72 = v132;
    v69 = v133;
    if (v151 >= v70)
    {
      goto LABEL_130;
    }

    v98 = v133[v145];
    if ((v98 & v143) == 0)
    {
      goto LABEL_131;
    }

    if (v132 != *(v137 + 9))
    {
      goto LABEL_132;
    }

    v99 = v98 & (-2 << (v151 & 0x3F));
    if (v99)
    {
      result = sub_7474(v151, v132, 0);
      v70 = __clz(__rbit64(v99)) | v151 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v100 = v145 << 6;
      v101 = &v129[v145];
      v102 = v145 + 1;
      while (v102 < (v70 + 63) >> 6)
      {
        v104 = *v101++;
        v103 = v104;
        v100 += 64;
        ++v102;
        if (v104)
        {
          result = sub_7474(v151, v132, 0);
          v70 = __clz(__rbit64(v103)) + v100;
          goto LABEL_65;
        }
      }

      result = sub_7474(v151, v132, 0);
    }

LABEL_65:
    v71 = v141 + 1;
  }

  while (v141 + 1 != v131);

  v105 = v148;
LABEL_101:
  v149 = v105;
  v106 = v0[115];
  v107 = *(v106 + 16);
  v155 = _swiftEmptyArrayStorage;
  if (v107)
  {
    v108 = v0[72];
    v140 = v0[52];
    v136 = v0[48];
    v138 = v0[51];
    v157[0] = _swiftEmptyArrayStorage;
    result = sub_2BC88(0, v107, 0);
    v109 = 0;
    v155 = _swiftEmptyArrayStorage;
    v134 = v106 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v144 = v106;
    v146 = *(v106 + 16);
    v142 = v107;
    while (v146 != v109)
    {
      if (v109 >= *(v106 + 16))
      {
        goto LABEL_125;
      }

      v110 = *(v136 + 48);
      v111 = v156[72];
      v112 = v156[71];
      v152 = v156[53];
      v114 = v156[49];
      v113 = v156[50];
      v115 = *(v111 + 16);
      v115(v113 + v110, v134 + *(v111 + 72) * v109, v112);
      *v114 = v109;
      v116 = *(v136 + 48);
      (*(v111 + 32))(&v114[v116], v113 + v110, v112);
      v117 = *(v138 + 48);
      v115(v152, &v114[v116], v112);
      *(v152 + v117) = v109;
      sub_5B38(v114, &qword_3D6C0, &unk_30FF0);
      v157[0] = v155;
      v119 = *(v155 + 2);
      v118 = *(v155 + 3);
      if (v119 >= v118 >> 1)
      {
        sub_2BC88((v118 > 1), v119 + 1, 1);
        v155 = v157[0];
      }

      v120 = v156[53];
      ++v109;
      *(v155 + 2) = v119 + 1;
      result = sub_C610(v120, v155 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v119, &qword_3D6C8, &qword_31770);
      v106 = v144;
      if (v142 == v109)
      {
        v0 = v156;
        goto LABEL_109;
      }
    }

    goto LABEL_124;
  }

LABEL_109:
  if (*(v155 + 2))
  {
    sub_1B98(&qword_3D748, &qword_31080);
    v121 = sub_30268();
  }

  else
  {
    v121 = &_swiftEmptyDictionarySingleton;
  }

  v157[0] = v121;
  sub_21888(v155, 1, v157);

  if (v128)
  {
  }

  else
  {
    v122 = v157[0];
    v157[0] = v149;

    sub_23AB8(v157, v122);
LABEL_117:
    v123 = v0[107];
    v124 = v0[106];
    v125 = v0[105];

    (*(v124 + 8))(v123, v125);

    v126 = v157[0];

    v127 = v0[1];

    return v127(v126);
  }
}

uint64_t sub_14A28()
{
  *(v0 + 360) = *(v0 + 944);
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_14AB8, 0, 0);
}

uint64_t sub_14AB8()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  (*(v0[101] + 8))(v0[102], v0[100]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_14D50(uint64_t a1)
{
  v4 = *v2;
  v4[124] = v1;

  v5 = v4[83];
  if (v1)
  {
    sub_5B38(v5, &qword_3D620, &unk_30F70);
    v6 = sub_1624C;
  }

  else
  {
    v4[125] = a1;
    sub_5B38(v5, &qword_3D620, &unk_30F70);
    v6 = sub_14EB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_14EB8()
{
  v174 = v0;
  v2 = v0[125];
  if (v2)
  {

    v0[43] = 0;
    v0[44] = 0;
    v0[42] = v2;

LABEL_4:
    v3 = v0[82];
    v4 = v0[81];
    sub_167D0(v4);
    sub_C610(v4, v3, &qword_3D6E8, &qword_31018);
    v5 = sub_1B98(&qword_3D750, &qword_31088);
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) != 1)
    {
      v6 = v0[82];
      v7 = v0[80];
      v8 = v0[79];
      v9 = v0[78];
      v10 = v0[77];
      v11 = *v6;
      (*(v9 + 32))(v7, &v6[*(v5 + 48)], v10);
      (*(v9 + 16))(v8, v7, v10);
      v12 = sub_2FF28();
      v13 = sub_300D8();
      v159 = v11;
      if (os_log_type_enabled(v12, v13))
      {
        v162 = v13;
        v14 = v0[113];
        v15 = v0[112];
        v160 = v0[79];
        v16 = v11;
        v17 = v0[78];
        v165 = v0[77];
        v18 = v0[76];
        v19 = v0[72];
        v20 = v0[71];
        v21 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v173 = v169;
        *v21 = 136315650;
        *(v21 + 4) = sub_29C64(v15, v14, &v173);
        *(v21 + 12) = 2048;
        *(v21 + 14) = v16;
        *(v21 + 22) = 2080;
        v1 = v160;
        sub_2F168();
        sub_23F00(&qword_3D758, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v22 = sub_30298();
        v24 = v23;
        (*(v19 + 8))(v18, v20);
        v158 = *(v17 + 8);
        v158(v160, v165);
        v25 = sub_29C64(v22, v24, &v173);

        *(v21 + 24) = v25;
        _os_log_impl(&dword_0, v12, v162, "%s Turn %ld (%s) Features:", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v26 = v0[79];
        v27 = v0[78];
        v28 = v0[77];

        v158 = *(v27 + 8);
        v158(v26, v28);
      }

      v29 = sub_2F188();
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = v29 + 32;
        if (qword_3CC20 != -1)
        {
          swift_once();
        }

        do
        {
          sub_4FD8(v0[110], qword_3D288);
          sub_54EC(v31, (v0 + 22));
          v32 = sub_2FF28();
          v33 = sub_300D8();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            *v34 = 136315394;
            *(v34 + 4) = sub_29C64(8224, 0xE200000000000000, &v173);
            *(v34 + 12) = 2080;
            sub_54EC((v0 + 22), (v0 + 37));
            sub_1B98(&qword_3D628, &qword_316D0);
            v35 = sub_2FF98();
            v1 = v36;
            sub_5448(v0 + 22);
            v37 = sub_29C64(v35, v1, &v173);

            *(v34 + 14) = v37;
            _os_log_impl(&dword_0, v32, v33, "%s%s", v34, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_5448(v0 + 22);
          }

          v31 += 40;
          --v30;
        }

        while (v30);
      }

      else
      {
        if (qword_3CC20 != -1)
        {
          swift_once();
        }

        sub_4FD8(v0[110], qword_3D288);
        v38 = sub_2FF28();
        v39 = sub_300D8();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v173 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_29C64(8224, 0xE200000000000000, &v173);
          _os_log_impl(&dword_0, v38, v39, "%s<Empty>", v40, 0xCu);
          sub_5448(v41);
        }
      }

      v43 = sub_2F158();
      v44 = 0;
      v45 = *(v43 + 16);
      v161 = v45;
      v163 = v43;
      while (1)
      {
        if (v44 == v45)
        {
          v46 = 1;
          v169 = v45;
        }

        else
        {
          if (v44 >= *(v43 + 16))
          {
            __break(1u);
LABEL_69:
            v42 = sub_2994C(0, v42[2] + 1, 1, v42);
LABEL_48:
            v112 = v42[2];
            v111 = v42[3];
            if (v112 >= v111 >> 1)
            {
              v42 = sub_2994C((v111 > 1), v112 + 1, 1, v42);
            }

            v113 = v0[119];
            v114 = v0[84];
            v115 = v0[74];
            v116 = v0[72];
            v117 = v0[71];
            v42[2] = v112 + 1;
            v171 = v42;
            v1(v42 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v112, v115, v117);
            sub_30028();
            if (v113(v114, 1, v117) == 1)
            {
              v118 = v0[84];
              (*(v0[72] + 8))(v0[75], v0[71]);
              sub_5B38(v118, &qword_3CF40, &unk_315B0);
              v94 = v0[116];
              v95 = v0[114];
            }

            else
            {
              v124 = v0[114];
              v125 = v0[76];
              v126 = v0[75];
              v127 = v0[73];
              v128 = v0[72];
              v129 = v0[71];
              v1(v127, v0[84], v129);
              (v169)(v125, v127, v129);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v173 = v124;
              sub_20C2C(v125, v126, isUniquelyReferenced_nonNull_native);
              v131 = *(v128 + 8);
              v131(v127, v129);
              v131(v126, v129);
              v95 = v173;
              v94 = v173;
            }

            goto LABEL_54;
          }

          v47 = v0[69];
          v48 = v0[68];
          v49 = v0[62];
          v50 = v0[63];
          v51 = *(v50 + 16);
          v52 = v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v44;
          v53 = *(v0[66] + 48);
          *v48 = v44;
          v51(v48 + v53, v52, v49);
          sub_C610(v48, v47, &qword_3D6D8, &qword_31008);
          v46 = 0;
          v169 = (v44 + 1);
        }

        v54 = v0[70];
        v55 = v0[69];
        v56 = v0[67];
        v57 = v0[66];
        (*(v56 + 56))(v55, v46, 1, v57);
        sub_C610(v55, v54, &qword_3D6E0, &qword_31010);
        if ((*(v56 + 48))(v54, 1, v57) == 1)
        {
          v158(v0[80], v0[77]);

          goto LABEL_4;
        }

        v58 = v0[70];
        v59 = v0[65];
        v61 = v0[63];
        v60 = v0[64];
        v62 = v0[62];
        v63 = *v58;
        (*(v61 + 32))(v59, &v58[*(v0[66] + 48)], v62);
        (*(v61 + 16))(v60, v59, v62);
        v64 = sub_2FF28();
        v65 = sub_300D8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = v0[113];
          v67 = v0[112];
          v68 = v0[63];
          v1 = v0[64];
          v166 = v0[62];
          v69 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *v69 = 136315906;
          *(v69 + 4) = sub_29C64(v67, v66, &v173);
          *(v69 + 12) = 2048;
          *(v69 + 14) = v159;
          *(v69 + 22) = 2048;
          *(v69 + 24) = v63;
          *(v69 + 32) = 2080;
          v70 = sub_2F118();
          v72 = v71;
          v73 = v166;
          v167 = *(v68 + 8);
          v167(v1, v73);
          v74 = sub_29C64(v70, v72, &v173);

          *(v69 + 34) = v74;
          _os_log_impl(&dword_0, v64, v65, "%s Turn %ld, Event %ld (%s) Features:", v69, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v76 = v0[63];
          v75 = v0[64];
          v77 = v0[62];

          v167 = *(v76 + 8);
          v167(v75, v77);
        }

        v78 = sub_2F138();
        v79 = *(v78 + 16);
        if (v79)
        {
          v80 = v78 + 32;
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          do
          {
            sub_4FD8(v0[110], qword_3D288);
            sub_54EC(v80, (v0 + 27));
            v81 = sub_2FF28();
            v82 = sub_300D8();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              *v83 = 136315394;
              *(v83 + 4) = sub_29C64(8224, 0xE200000000000000, &v173);
              *(v83 + 12) = 2080;
              sub_54EC((v0 + 27), (v0 + 32));
              sub_1B98(&qword_3D628, &qword_316D0);
              v84 = sub_2FF98();
              v1 = v85;
              sub_5448(v0 + 27);
              v86 = sub_29C64(v84, v1, &v173);

              *(v83 + 14) = v86;
              _os_log_impl(&dword_0, v81, v82, "%s%s", v83, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              sub_5448(v0 + 27);
            }

            v80 += 40;
            --v79;
          }

          while (v79);

          v45 = v161;
          v43 = v163;
        }

        else
        {
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          sub_4FD8(v0[110], qword_3D288);
          v87 = sub_2FF28();
          v88 = sub_300D8();
          v45 = v161;
          v43 = v163;
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v173 = v90;
            *v89 = 136315138;
            *(v89 + 4) = sub_29C64(8224, 0xE200000000000000, &v173);
            _os_log_impl(&dword_0, v87, v88, "%s<Empty>", v89, 0xCu);
            sub_5448(v90);
          }
        }

        v44 = v169;
        v167(v0[65], v0[62]);
      }
    }

    v91 = v0[119];
    v92 = v0[85];
    v93 = v0[71];

    sub_30018();
    if (v91(v92, 1, v93) != 1)
    {
      v106 = v0[75];
      v107 = v0[74];
      v108 = v0[72];
      v109 = v0[71];
      v1 = *(v108 + 32);
      v1(v106, v0[85], v109);
      v169 = *(v108 + 16);
      (v169)(v107, v106, v109);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v0[115];
      if ((v110 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_48;
    }

    sub_5B38(v0[85], &qword_3CF40, &unk_315B0);
    v94 = v0[116];
    v171 = v0[115];
    v95 = v0[114];
LABEL_54:
    v132 = sub_2FF28();
    v133 = sub_300D8();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = v0[113];
      v135 = v0[112];
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v173 = v137;
      *v136 = 136315138;
      *(v136 + 4) = sub_29C64(v135, v134, &v173);
      _os_log_impl(&dword_0, v132, v133, "%s Running evaluation frameworks on extracted features", v136, 0xCu);
      sub_5448(v137);
    }

    v138 = *(v0[108] + 16);
    if (v138)
    {
      v139 = 32;
      do
      {
        sub_54EC(v0[108] + v139, (v0 + 12));
        sub_5550(v0 + 12, v0[15]);
        sub_2F308();
        sub_5448(v0 + 12);
        v139 += 40;
        --v138;
      }

      while (v138);
    }

    v140 = sub_2FF28();
    v141 = sub_300D8();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = v0[113];
      v143 = v0[112];
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v173 = v145;
      *v144 = 136315138;
      *(v144 + 4) = sub_29C64(v143, v142, &v173);
      _os_log_impl(&dword_0, v140, v141, "%s Running ground truth generators on extracted features", v144, 0xCu);
      sub_5448(v145);
    }

    v146 = *(v0[109] + 16);
    if (v146)
    {
      v147 = 32;
      do
      {
        sub_54EC(v0[109] + v147, (v0 + 17));
        sub_5550(v0 + 17, v0[20]);
        sub_2F208();
        sub_5448(v0 + 17);
        v147 += 40;
        --v146;
      }

      while (v146);
    }

    v148 = v0[95];
    v149 = v0[91];
    v150 = v0[90];
    v151 = v0[89];
    v152 = v0[88];

    sub_5B38(v152, &qword_3D6F0, &qword_31020);
    (*(v150 + 8))(v149, v151);
    sub_5B38(v148, &qword_3D6F8, &qword_31028);
    v0[116] = v94;
    v0[115] = v171;
    v0[114] = v95;
  }

  else
  {

    v96 = sub_2FF28();
    v97 = sub_300E8();

    v98 = os_log_type_enabled(v96, v97);
    v99 = v0[122];
    if (v98)
    {
      v100 = v0[121];
      v101 = v0[113];
      v102 = v0[112];
      v170 = v0[91];
      v172 = v0[95];
      v103 = v0[90];
      v164 = v0[88];
      v168 = v0[89];
      v104 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *v104 = 136315394;
      *(v104 + 4) = sub_29C64(v102, v101, &v173);
      *(v104 + 12) = 2080;
      v105 = sub_29C64(v100, v99, &v173);

      *(v104 + 14) = v105;
      _os_log_impl(&dword_0, v96, v97, "%s Failed to generate a featurised session for conversationId=%s", v104, 0x16u);
      swift_arrayDestroy();

      sub_5B38(v164, &qword_3D6F0, &qword_31020);
      (*(v103 + 8))(v170, v168);
      sub_5B38(v172, &qword_3D6F8, &qword_31028);
    }

    else
    {
      v119 = v0[95];
      v120 = v0[91];
      v121 = v0[90];
      v122 = v0[89];
      v123 = v0[88];

      sub_5B38(v123, &qword_3D6F0, &qword_31020);
      (*(v121 + 8))(v120, v122);
      sub_5B38(v119, &qword_3D6F8, &qword_31028);
    }
  }

  v153 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040, &protocol conformance descriptor for InferenceCombinedSessionAsyncSequence<A>.InferenceCombinedSessionAsyncSequenceIterator);
  v154 = swift_task_alloc();
  v0[117] = v154;
  *v154 = v0;
  v154[1] = sub_1370C;
  v155 = v0[100];
  v156 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v156, v155, v153);
}

uint64_t sub_1624C()
{
  v30 = v0;

  swift_errorRetain();
  v1 = sub_2FF28();
  v2 = sub_300E8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[124];
    v4 = v0[122];
    v5 = v0[121];
    v6 = v0[113];
    v7 = v0[112];
    v27 = v0[91];
    v28 = v0[95];
    v25 = v0[90];
    v26 = v0[89];
    v24 = v0[88];
    v8 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_29C64(v7, v6, &v29);
    *(v8 + 12) = 2080;
    v9 = sub_29C64(v5, v4, &v29);

    *(v8 + 14) = v9;
    *(v8 + 22) = 2080;
    v0[46] = v3;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v10 = sub_2FF98();
    v12 = sub_29C64(v10, v11, &v29);

    *(v8 + 24) = v12;
    _os_log_impl(&dword_0, v1, v2, "%s Error generating features for conversationId=%s. Skipping ground truth generation. Error=%s", v8, 0x20u);
    swift_arrayDestroy();

    sub_5B38(v24, &qword_3D6F0, &qword_31020);
    (*(v25 + 8))(v27, v26);
    v13 = v28;
  }

  else
  {
    v14 = v0[95];
    v15 = v0[91];
    v16 = v0[90];
    v17 = v0[89];
    v18 = v0[88];

    sub_5B38(v18, &qword_3D6F0, &qword_31020);
    (*(v16 + 8))(v15, v17);
    v13 = v14;
  }

  sub_5B38(v13, &qword_3D6F8, &qword_31028);
  v19 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040, &protocol conformance descriptor for InferenceCombinedSessionAsyncSequence<A>.InferenceCombinedSessionAsyncSequenceIterator);
  v20 = swift_task_alloc();
  v0[117] = v20;
  *v20 = v0;
  v20[1] = sub_1370C;
  v21 = v0[100];
  v22 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v19);
}

uint64_t sub_165A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_165C8, 0, 0);
}

uint64_t sub_165C8()
{
  v1 = v0[4];
  if (v1)
  {
    sub_5550((v0[5] + 184), *(v0[5] + 208));
    v2 = v1;
    sub_2EDE8();
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_2ECF8();
  (*(*(v5 - 8) + 16))(v3, v4, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_166A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(a2 + *(sub_1B98(&qword_3D768, &qword_31098) + 48));
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5834;

  return v10(a1, a2, v7);
}

uint64_t sub_167D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98(&qword_3D750, &qword_31088);
  result = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = sub_2F198();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_C610(v7, a1, &qword_3D750, &qword_31088);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2EC08();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  sub_2F398();
  if (*(a3 + 16) && (v11 = sub_2A2F4(v10), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0x8000000000000000;
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_2F398();
  if (*(a3 + 16) && (v15 = sub_2A2F4(v8), (v16 & 1) != 0))
  {
    v17 = *(*(a3 + 56) + 8 * v15);
  }

  else
  {
    v17 = 0x8000000000000000;
  }

  v14(v8, v4);
  return v13 < v17;
}

uint64_t sub_16B20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_5550((v1 + 16), *(v1 + 40));
  sub_2F0A8();
  sub_5550(v19, v19[3]);
  v4 = sub_2F048();
  v18[3] = sub_2ECB8();
  v18[4] = &protocol witness table for AnyFeature;
  v18[0] = v4;
  v5 = sub_2ED48();
  sub_5448(v18);
  sub_5448(v19);
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v6 = sub_2FF48();
  sub_4FD8(v6, qword_3D460);
  v7 = sub_2FF28();
  v8 = sub_300D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_29C64(qword_3D450, *algn_3D458, v19);
    *(v9 + 12) = 2080;
    if (v5)
    {
      v10 = 0x6576697470616441;
    }

    else
    {
      v10 = 0x73656C6574617453;
    }

    if (v5)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE900000000000073;
    }

    v12 = sub_29C64(v10, v11, v19);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_0, v7, v8, "%s Running %s PICS Generation", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = (v5 & 1) == 0;
  if (v5)
  {
    v14 = &type metadata for AdaptiveContactSuggestionGeneratorWrapper;
  }

  else
  {
    v14 = &type metadata for LegacyContactSuggestionGeneratorWrapper;
  }

  if (v13)
  {
    v15 = &off_39A50;
  }

  else
  {
    v15 = &off_39C98;
  }

  v16 = swift_allocObject();
  result = sub_54EC(v2 + 16, v16 + 16);
  a1[3] = v14;
  a1[4] = v15;
  *a1 = v16;
  return result;
}

uint64_t sub_16DE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_5550((v1 + 16), *(v1 + 40));
  sub_2F0A8();
  sub_5550(&v10, *(&v11[0] + 1));
  v4 = sub_2F038();
  v13[3] = sub_2ECB8();
  v13[4] = &protocol witness table for AnyFeature;
  v13[0] = v4;
  v5 = sub_2ED48();
  sub_5448(v13);
  sub_5448(&v10);
  if (v5)
  {
    sub_54EC(v2 + 16, v11);
    *&v10 = 0xD000000000000020;
    *(&v10 + 1) = 0x8000000000032620;
    result = swift_allocObject();
    v7 = v11[0];
    *(result + 16) = v10;
    *(result + 32) = v7;
    *(result + 48) = v11[1];
    *(result + 64) = v12;
    v8 = &off_398E0;
    v9 = &type metadata for AdaptiveMediaSuggestionGeneratorWrapper;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v9;
  a1[4] = v8;
  *a1 = result;
  return result;
}

uint64_t sub_16F30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B98(&qword_3CF40, &unk_315B0);
  __chkstk_darwin(v5 - 8);
  v47 = &v32 - v6;
  v46 = sub_2EC08();
  v7 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_2F3B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v45 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 40);
  v43 = v2;
  sub_5550((v2 + 16), v15);
  sub_2F0D8();
  sub_2F508();
  swift_allocObject();
  v16 = sub_2F4F8();
  v17 = *(a1 + 16);
  if (v17)
  {
    v44 = v16;
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v36 = *(v18 + 56);
    v37 = v19;
    v32 = v7 + 16;
    v33 = v7;
    v21 = (v7 + 8);
    v34 = (v18 - 8);
    v35 = (v7 + 56);
    v40 = v11;
    v41 = a2;
    v38 = v18;
    v39 = v12;
    v22 = v47;
    v19(v45, v20, v12);
    while (1)
    {
      sub_2F398();
      if (*(a2 + 16) && (v29 = sub_2A2F4(v11), (v30 & 1) != 0))
      {
        (*(v33 + 16))(v47, *(a2 + 56) + *(v33 + 72) * v29, v46);
        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = v46;
      (*v35)(v22, v23, 1, v46);
      sub_2F388();
      sub_5550((v43 + 16), *(v43 + 40));
      sub_2F0E8();
      v25 = v42;
      sub_2EBF8();
      v11 = v40;
      sub_2F4E8();
      v26 = v45;

      v27 = *v21;
      (*v21)(v25, v24);
      sub_5448(v48);
      sub_5B38(v22, &qword_3CF40, &unk_315B0);
      v27(v11, v24);
      v28 = v39;
      (*v34)(v26, v39);
      v20 += v36;
      --v17;
      a2 = v41;
      if (!v17)
      {
        break;
      }

      v37(v26, v20, v28);
    }
  }
}

uint64_t sub_17340(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_2F2B8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B98(&qword_3D6A0, &unk_30FD0);
  v3[9] = swift_task_alloc();
  v5 = sub_2EB88();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1B98(&qword_3D620, &unk_30F70);
  v3[14] = swift_task_alloc();
  v6 = sub_2EBD8();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_17560, 0, 0);
}

uint64_t sub_17560()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_2ECD8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v5 = &qword_3D620;
    v6 = &unk_30F70;
LABEL_5:
    sub_5B38(v4, v5, v6);

    v13 = v0[1];

    return v13(0);
  }

  v7 = v0[17];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[3];
  (*(v0[16] + 32))(v7, v0[14], v0[15]);
  sub_17FD8(v7, v11, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v12 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v5 = &qword_3D6A0;
    v6 = &unk_30FD0;
    v4 = v12;
    goto LABEL_5;
  }

  v15 = v0[13];
  (*(v0[11] + 32))(v15, v0[9], v0[10]);
  v0[18] = sub_18A50(v15);
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_17868;
  v17 = v0[13];

  return sub_19730(v17);
}

uint64_t sub_17868(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    v5 = sub_17DE8;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_17998;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_17998()
{
  v12 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v11 = v0[18];
  sub_27D14(v1);

  sub_1E724(&v11);
  if (v2)
  {
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v7 = v0[11];

    v8 = v11;
    v0[22] = v11;
    (*(v7 + 16))(v5, v4, v6);
    sub_2F2A8();
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_17AF4;
    v10 = v0[8];

    return sub_192B4(v8, v10);
  }
}

uint64_t sub_17AF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_17ED4;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_17C40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_17C40()
{
  v1 = v0[16];
  v12 = v0[15];
  v13 = v0[17];
  v2 = v0[11];
  v10 = v0[10];
  v11 = v0[13];
  v3 = v0[7];
  v9 = v0[8];
  v4 = v0[6];
  sub_2ECE8();
  sub_30208();

  sub_2EF58();
  sub_2F148();
  v5 = sub_2F1E8();

  v6 = sub_1AB58(v5);

  (*(v3 + 8))(v9, v4);
  (*(v2 + 8))(v11, v10);
  (*(v1 + 8))(v13, v12);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_17DE8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_17ED4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_17FD8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B98(&qword_3D620, &unk_30F70);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_2EBD8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v59 = &v56 - v14;
  v15 = __chkstk_darwin(v13);
  v57 = &v56 - v16;
  v17 = __chkstk_darwin(v15);
  v56 = &v56 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v56 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v56 - v23;
  v25 = __chkstk_darwin(v22);
  v62 = &v56 - v26;
  __chkstk_darwin(v25);
  v28 = &v56 - v27;
  v61 = a1;
  sub_2EBA8();
  sub_5AD0(a2, v8, &qword_3D620, &unk_30F70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_5B38(v8, &qword_3D620, &unk_30F70);
    (*(v10 + 16))(v24, v28, v9);
    v29 = *(v10 + 32);
  }

  else
  {
    v58 = a3;
    v29 = *(v10 + 32);
    v29(v21, v8, v9);
    sub_23F00(&qword_3D660, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_2FF68())
    {
      (*(v10 + 8))(v21, v9);
      (*(v10 + 16))(v24, v28, v9);
    }

    else
    {
      v29(v24, v21, v9);
    }

    a3 = v58;
  }

  v30 = v62;
  v29(v62, v24, v9);
  sub_23F00(&qword_3D660, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = v61;
  if (sub_2FF68())
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v32 = sub_2FF48();
    sub_4FD8(v32, qword_3D460);
    v33 = *(v10 + 16);
    v34 = v59;
    v33(v59, v31, v9);
    v35 = v60;
    v33(v60, v30, v9);
    v36 = sub_2FF28();
    v37 = sub_300E8();
    if (os_log_type_enabled(v36, v37))
    {
      LODWORD(v57) = v37;
      v61 = v28;
      v58 = a3;
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v38 = 136315650;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v63);
      *(v38 + 12) = 2080;
      sub_23F00(&qword_3D6B0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v39 = v59;
      v40 = sub_30298();
      v42 = v41;
      v43 = *(v10 + 8);
      v43(v39, v9);
      v44 = sub_29C64(v40, v42, &v63);

      *(v38 + 14) = v44;
      *(v38 + 22) = 2080;
      v45 = v60;
      v46 = sub_30298();
      v48 = v47;
      v43(v45, v9);
      v49 = sub_29C64(v46, v48, &v63);

      *(v38 + 24) = v49;
      _os_log_impl(&dword_0, v36, v57, "%s Conversation timestamps out of order (conversationTimestamp: %s, nextTimestamp: %s)", v38, 0x20u);
      swift_arrayDestroy();

      v43(v62, v9);
      v43(v61, v9);
      v50 = 1;
      a3 = v58;
    }

    else
    {

      v53 = *(v10 + 8);
      v53(v35, v9);
      v53(v34, v9);
      v53(v30, v9);
      v53(v28, v9);
      v50 = 1;
    }
  }

  else
  {
    v51 = *(v10 + 16);
    v51(v56, v31, v9);
    v51(v57, v30, v9);
    sub_2EB68();
    v52 = *(v10 + 8);
    v52(v30, v9);
    v52(v28, v9);
    v50 = 0;
  }

  v54 = sub_2EB88();
  return (*(*(v54 - 8) + 56))(a3, v50, 1, v54);
}

uint64_t sub_18790(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_1B98(&qword_3D620, &unk_30F70);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = sub_2EBD8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  sub_2F108();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_2EB98();
    if (v15(v7, 1, v8) != 1)
    {
      sub_5B38(v7, &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_2F108();
  if (v15(v5, 1, v8) == 1)
  {
    sub_2EB98();
    if (v15(v5, 1, v8) != 1)
    {
      sub_5B38(v5, &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v5, v8);
  }

  v16 = sub_2EBB8();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  return v16 & 1;
}

uint64_t sub_18A50(uint64_t (*a1)(char *, uint64_t, uint64_t))
{
  v78 = a1;
  v2 = sub_1B98(&qword_3D630, &qword_30F80);
  __chkstk_darwin(v2 - 8);
  v74 = &v67 - v3;
  v84 = sub_2F148();
  v73 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2ED08();
  v69 = *(v5 - 8);
  __chkstk_darwin(v5);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B98(&qword_3D688, &qword_30FB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v76 = sub_2EBD8();
  v72 = *(v76 - 1);
  v10 = __chkstk_darwin(v76);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v77 = v1;
  result = sub_1BB54();
  v15 = *(result + 16);
  v83 = result;
  v71 = v13;
  if (!v15)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_19:
    v82 = v9;
    v75 = v5;
    v27 = 0;
    v87[7] = &_swiftEmptySetSingleton;
    v28 = *(v17 + 2);
    v79 = _swiftEmptyArrayStorage;
    while (v28 != v27)
    {
      if (v27 >= v28)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_45;
      }

      v30 = *&v17[8 * v27 + 32];
      v87[0] = v30;
      sub_1B98(&qword_3D690, &qword_30FC0);
      v31 = sub_2FF98();
      v33 = sub_1C6C8(v87, v31, v32);

      ++v27;
      if (v33)
      {
        v34 = v79;
        result = swift_isUniquelyReferenced_nonNull_native();
        v86 = v34;
        if ((result & 1) == 0)
        {
          result = sub_2BC24(0, v34[2] + 1, 1);
          v34 = v86;
        }

        v36 = v34[2];
        v35 = v34[3];
        if (v36 >= v35 >> 1)
        {
          result = sub_2BC24((v35 > 1), v36 + 1, 1);
          v34 = v86;
        }

        v34[2] = v36 + 1;
        v79 = v34;
        v34[v36 + 4] = v30;
        v27 = v29;
      }
    }

    v37 = objc_autoreleasePoolPush();
    sub_5550((v77 + 104), *(v77 + 128));
    v38 = v71;
    sub_2EB78();
    v39 = v70;
    sub_2EB58();
    v40 = v85;
    v41 = sub_2EDA8();
    v42 = v75;
    if (v40)
    {

      v43 = *(v72 + 8);
      v44 = v76;
      v43(v39, v76);
      v43(v38, v44);
      objc_autoreleasePoolPop(v37);
    }

    else
    {
      v85 = 0;
      v68 = v37;
      v45 = v41;

      v46 = *(v72 + 8);
      v47 = v76;
      v46(v39, v76);
      v46(v38, v47);
      v72 = v45;
      sub_301F8();
      v48 = v82;
      sub_30278();
      v49 = v69;
      v50 = v48;
      v78 = *(v69 + 48);
      v79 = (v69 + 48);
      if (v78(v48, 1, v42) == 1)
      {
        v38 = _swiftEmptyArrayStorage;
      }

      else
      {
        v52 = *(v49 + 32);
        v51 = v49 + 32;
        v53 = (v51 - 24);
        v54 = v74;
        v55 = (v73 + 48);
        v76 = (v73 + 32);
        v77 = v52;
        v38 = _swiftEmptyArrayStorage;
        v56 = v50;
        do
        {
          v59 = v80;
          v60 = v51;
          v61 = (v77)(v80, v56, v42);
          __chkstk_darwin(v61);
          *(&v67 - 2) = v59;
          v62 = v85;
          sub_E818(sub_211A0, (&v67 - 4), v83);
          v85 = v62;
          sub_2F128();
          (*v53)(v59, v42);
          v63 = v84;
          if ((*v55)(v54, 1, v84) == 1)
          {
            sub_5B38(v54, &qword_3D630, &qword_30F80);
          }

          else
          {
            v64 = *v76;
            (*v76)(v81, v54, v63);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_296FC(0, *(v38 + 2) + 1, 1, v38);
            }

            v66 = *(v38 + 2);
            v65 = *(v38 + 3);
            if (v66 >= v65 >> 1)
            {
              v38 = sub_296FC((v65 > 1), v66 + 1, 1, v38);
            }

            *(v38 + 2) = v66 + 1;
            v64(&v38[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v66], v81, v84);
            v54 = v74;
            v42 = v75;
          }

          v57 = v82;
          sub_30278();
          v58 = v78(v57, 1, v42);
          v51 = v60;
          v56 = v57;
        }

        while (v58 != 1);
      }

      objc_autoreleasePoolPop(v68);
    }

    return v38;
  }

  v16 = result + 32;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_54EC(v16, v87);
    sub_5550(v87, v87[3]);
    v18 = sub_2EED8();
    result = sub_5448(v87);
    v19 = *(v18 + 16);
    v20 = *(v17 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v17 + 3) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_295C8(result, v22, 1, v17);
      v17 = result;
      if (*(v18 + 16))
      {
LABEL_14:
        v23 = *(v17 + 2);
        if ((*(v17 + 3) >> 1) - v23 < v19)
        {
          goto LABEL_48;
        }

        memcpy(&v17[8 * v23 + 32], (v18 + 32), 8 * v19);

        if (v19)
        {
          v24 = *(v17 + 2);
          v25 = __OFADD__(v24, v19);
          v26 = v24 + v19;
          if (v25)
          {
            goto LABEL_49;
          }

          *(v17 + 2) = v26;
        }

        goto LABEL_4;
      }
    }

    if (v19)
    {
      goto LABEL_47;
    }

LABEL_4:
    v16 += 40;
    if (!--v15)
    {
      goto LABEL_19;
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
  return result;
}