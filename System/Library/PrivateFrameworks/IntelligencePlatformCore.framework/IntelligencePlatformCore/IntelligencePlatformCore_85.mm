uint64_t sub_1C4BF227C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BF22C8()
{
  sub_1C43FBCD4();
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  *(v0 + 304) = v3;
  *(v0 + 248) = v4;
  v5 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v5);
  *(v0 + 272) = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4BF234C()
{
  sub_1C4404D98();
  v1 = *(v0 + 256);
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(v3, v1, v2);

  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 32) = v4;
    v5 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v5;
    _s45EntityRelevanceHistoricalFeatureViewGeneratorCMa(0);
    swift_unownedRetainStrong();
    sub_1C4420610();
    sub_1C4BF8590();

    sub_1C46F4E90(v0 + 16, v0 + 144);
    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    *v6 = v0;
    v6[1] = sub_1C4BF2564;

    return sub_1C4BF2754();
  }

  else
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    sub_1C450B034();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = xmmword_1C4F5B670;
    *(v10 + 32) = 0xD000000000000025;
    *(v10 + 40) = 0x80000001C4FB83A0;
    *(v10 + 48) = v12;
    *(v10 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C4BF2564(uint64_t a1)
{
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 288) = v1;

  if (!v1)
  {
    *(v5 + 296) = a1;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4BF2678()
{
  sub_1C43FBCD4();
  sub_1C46EEFDC(v0 + 16);

  v1 = *(v0 + 8);
  v2 = *(v0 + 296);

  return v1(v2, &off_1F44026A8);
}

uint64_t sub_1C4BF26F0()
{
  sub_1C43FBCD4();
  sub_1C46EEFDC(v0 + 16);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4BF2754()
{
  sub_1C43FBCD4();
  v1[124] = v0;
  v1[123] = v2;
  v1[122] = v3;
  v1[125] = sub_1C4EFDAB8();
  sub_1C4404280();
  v1[126] = v4;
  v1[127] = sub_1C43FE604();
  v1[128] = swift_task_alloc();
  v5 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v5);
  v1[129] = sub_1C43FE604();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4BF2864()
{
  v1 = *(v0 + 1064);
  sub_1C4420610();
  sub_1C4BF8590();
  type metadata accessor for KeyValueStore(0);
  sub_1C43FD23C();
  swift_allocObject();
  *(v0 + 1072) = KeyValueStore.init(config:domain:)(v1, 1413829954, 0xE400000000000000);
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  *(v0 + 1080) = sub_1C4ABF81C();
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C44E7FAC();
  *(v0 + 1088) = v2;
  v3 = v2;
  v4 = *(v0 + 1056);
  sub_1C4420610();
  sub_1C4BF8590();
  v5 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  *(v0 + 1096) = type metadata accessor for BehaviorHistoryUtility(0);
  sub_1C43FD23C();
  swift_allocObject();
  *(v0 + 1104) = sub_1C4623CF4(v4, v5);
  v6 = *(v0 + 1048);
  sub_1C4420610();
  sub_1C4BF8590();
  type metadata accessor for GraphStore(0);
  sub_1C43FD23C();
  swift_allocObject();
  *(v0 + 1112) = GraphStore.init(config:)(v6);
  v7 = *(v0 + 1008);
  result = sub_1C4EFDA88();
  v9 = result;
  v10 = 0;
  v26 = *(result + 16);
  v25 = (v7 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  while (v26 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 1024);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    (*(v7 + 16))(v12, v9 + v13 + v14 * v10, *(v0 + 1000));
    if (sub_1C4BF5404(v12))
    {
      v24 = *v25;
      (*v25)(*(v0 + 1016), *(v0 + 1024), *(v0 + 1000));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C459D1E0();
      }

      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_1C459D1E0();
      }

      ++v10;
      v16 = *(v0 + 1016);
      v17 = *(v0 + 1000);
      *(v11 + 16) = v15 + 1;
      result = v24(v11 + v13 + v15 * v14, v16, v17);
    }

    else
    {
      result = (*(v7 + 8))(*(v0 + 1024), *(v0 + 1000));
      ++v10;
    }
  }

  sub_1C4598238();
  *(v0 + 1120) = v18;
  *(v0 + 1256) = [objc_opt_self() isInternalDevice];
  v19 = swift_task_alloc();
  *(v0 + 1128) = v19;
  *v19 = v0;
  v19[1] = sub_1C4BF2E70;
  sub_1C4409BA4();

  return sub_1C470CF78(v20, v21, v22);
}

uint64_t sub_1C4BF2E70()
{
  sub_1C4404D98();
  sub_1C441648C();
  v7 = v6;
  sub_1C43FBE64();
  *v8 = v7;
  v9 = *v3;
  sub_1C43FBDAC();
  *v10 = v9;
  v7[142] = v1;

  if (!v1)
  {
    v7[143] = v2;
    v7[144] = v0;
    v7[145] = v5;
    v7[146] = v4;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4BF2F98()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[150] = v0[143];
  v0[149] = v3;
  v0[148] = v2;
  v0[147] = v1;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = swift_task_alloc();
  v0[151] = v4;
  *v4 = v0;
  sub_1C4433904(v4);
  v5 = sub_1C44692CC();

  return sub_1C470CF78(v5, v6, v7);
}

uint64_t sub_1C4BF3054()
{
  sub_1C4404D98();
  sub_1C441648C();
  v7 = v6;
  sub_1C43FBE64();
  *v8 = v7;
  v9 = *v3;
  sub_1C43FBDAC();
  *v10 = v9;
  v7[152] = v1;

  if (!v1)
  {
    v7[153] = v2;
    v7[154] = v0;
    v7[155] = v5;
    v7[156] = v4;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4BF317C()
{
  v155 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1224);
  v144 = *(v0 + 1232);
  v145 = *(v0 + 1240);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 984);

  v146 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v0 + 928) = *(v4 + 48);
  v149 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C482FCC4(v149);
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  v147 = v1;
  v150 = v5;
  if (v3)
  {
    v140 = *(v0 + 1200);
    v7 = *(v0 + 1176);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C43FCEE8(v8, qword_1EDE2DDE0);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v10))
    {
      v11 = sub_1C43FCED0();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Default ER model available, queueing evaluation tasks.", v11, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v12 = *(v0 + 1192);
    v13 = *(v0 + 1184);
    v14 = *(v0 + 1072);
    v15 = *(v0 + 992);
    v138 = v15;
    v16 = *(v0 + 984);
    v17 = *(v0 + 976);

    v18 = swift_task_alloc();
    v18[2] = v17;
    v18[3] = v7;
    v18[4] = v13;
    v18[5] = v12;
    v18[6] = v140;
    v18[7] = v16;
    sub_1C4426EC0();
    v19[8] = v14;
    v19[9] = v20;
    v19[10] = v15;
    sub_1C440DA0C();
    sub_1C45DAB7C();
    v22 = v21;

    sub_1C49D47F8(v22);
    v23 = swift_task_alloc();
    v23[2] = v17;
    v23[3] = v7;
    v23[4] = v13;
    v23[5] = v12;
    v23[6] = v140;
    v23[7] = v16;
    sub_1C4426EC0();
    *(v24 + 64) = v26;
    *(v24 + 72) = v25;
    v27 = sub_1C4411360(v24, v138);
    v29 = sub_1C45DAE74(v27, v28, v150);

    sub_1C49D47F8(v29);

    v1 = v147;
    p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
  }

  if (v1)
  {
    if (p_info[205] != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v30 = sub_1C4F00978();
    sub_1C43FCEE8(v30, qword_1EDE2DDE0);
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v32))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4404B90();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      v38 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v38);
    }

    v39 = *(v0 + 1072);
    v40 = *(v0 + 992);
    v141 = v40;
    v41 = *(v0 + 984);
    v42 = *(v0 + 976);

    v43 = swift_task_alloc();
    v43[2] = v42;
    v43[3] = v1;
    v43[4] = v145;
    v43[5] = v144;
    v43[6] = v146;
    v43[7] = v41;
    sub_1C4426EC0();
    v44[8] = v39;
    v44[9] = v45;
    v44[10] = v40;
    sub_1C45DAB7C();
    v47 = v46;

    sub_1C49D47F8(v47);
    v48 = swift_task_alloc();
    v48[2] = v42;
    v48[3] = v1;
    v48[4] = v145;
    v48[5] = v144;
    v48[6] = v146;
    v48[7] = v41;
    sub_1C4426EC0();
    v49[8] = v51;
    v49[9] = v50;
    v49[10] = v141;
    v52 = sub_1C45DAE74(sub_1C4BF8730, v48, v150);

    sub_1C49D47F8(v52);
  }

  v53 = *(v0 + 1104);
  v54 = *(v0 + 1096);
  v139 = v54;
  v142 = *(v0 + 1120);
  v55 = *(v0 + 1080);
  v151 = *(v0 + 1072);
  sub_1C456902C(&qword_1EC0B8D08, &unk_1C4F0E140);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1C4F0D130;
  sub_1C4420610();
  sub_1C4BF8590();
  sub_1C456902C(&qword_1EC0B8D18, &unk_1C4F0E150);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C4F0D130;

  v57 = sub_1C45EDEF8();
  v58 = type metadata accessor for BehaviorDatabaseEventTracker();
  *(v0 + 504) = v58;
  *(v0 + 512) = &off_1F43E2390;
  *(v0 + 480) = v57;
  *(v0 + 544) = v54;
  *(v0 + 552) = &off_1F43E41D8;
  *(v0 + 520) = v53;
  type metadata accessor for EntityRelevanceEvaluationSampleProvider();
  v59 = swift_allocObject();
  v60 = sub_1C4418280(v0 + 480, v58);
  sub_1C43FCE64();
  v62 = v61;
  v63 = sub_1C43FBE7C();
  (*(v62 + 16))(v63, v60, v58);
  v64 = *v63;
  *(v59 + 56) = v58;
  *(v59 + 64) = &off_1F43E2390;
  *(v59 + 32) = v64;
  *(v59 + 16) = xmmword_1C4F1FD20;
  sub_1C441D670((v0 + 520), v59 + 72);
  *(v59 + 112) = 0;
  *(v59 + 120) = v142;
  *(v59 + 128) = 5;

  sub_1C446C0A0((v0 + 480));

  v65 = *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  *(v0 + 584) = v58;
  *(v0 + 592) = &off_1F43E2390;
  *(v0 + 560) = v65;

  v66 = sub_1C45ED17C();
  *(v0 + 624) = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  *(v0 + 632) = &off_1F43E2510;
  *(v0 + 600) = v66;
  *(v0 + 704) = v139;
  *(v0 + 712) = &off_1F43E41D8;
  *(v0 + 680) = v53;

  sub_1C45EA370(v0 + 680, (v0 + 640));
  sub_1C440962C((v0 + 680));
  *(v56 + 32) = v59;
  sub_1C441D670((v0 + 560), v56 + 40);
  sub_1C441D670((v0 + 600), v56 + 80);
  sub_1C441D670((v0 + 640), v56 + 120);
  v67 = v151;
  *(v56 + 160) = v151;
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;
  *(v56 + 184) = 0;
  sub_1C441E77C();
  v70 = v69 & v68;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DDE2C();
  v71 = (63 - v55) >> 6;

  v72 = 0;
  v143 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v73 = v72;
    if (!v70)
    {
      break;
    }

LABEL_18:
    v152 = *(v0 + 1112);
    v74 = *(v0 + 1104);
    v75 = *(v0 + 1096);
    v76 = *(v0 + 1088);
    v77 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v78 = v77 | (v72 << 6);
    v79 = (*(v149 + 48) + 16 * v78);
    v67 = *v79;
    v80 = v79[1];
    sub_1C4707E5C(*(v149 + 56) + 224 * v78, v0 + 32);
    *(v0 + 16) = v67;
    *(v0 + 24) = v80;
    *(v0 + 744) = v75;
    *(v0 + 752) = &off_1F43E41D8;
    *(v0 + 720) = v74;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = v0 + 32;
    sub_1C46D9C30(v67, v80, v76, v152, (v0 + 720), (v0 + 256));
    sub_1C440962C((v0 + 720));
    sub_1C4420C3C(v0 + 16, &qword_1EC0C4948, &qword_1C4F5CD48);
    if (*(v0 + 256))
    {
      memcpy(__dst, (v0 + 256), sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458E6B0();
        v143 = v82;
      }

      v67 = *(v143 + 16);
      v81 = *(v143 + 24);
      v55 = v67 + 1;
      if (v67 >= v81 >> 1)
      {
        sub_1C43FCFE8(v81);
        sub_1C458E6B0();
        v143 = v83;
      }

      *(v143 + 16) = v55;
      memcpy((v143 + 160 * v67 + 32), __dst, 0xA0uLL);
    }

    else
    {
      sub_1C4420C3C(v0 + 256, &qword_1EC0C4950, &qword_1C4F5CD50);
    }
  }

  while (1)
  {
    v72 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_35:
      sub_1C43FCEC0();
      sub_1C458E5F4();
      v108 = v135;
      goto LABEL_29;
    }

    if (v72 >= v71)
    {
      break;
    }

    v70 = *(v149 + 64 + 8 * v72);
    ++v73;
    if (v70)
    {
      goto LABEL_18;
    }
  }

  v84 = *(v0 + 1256);
  v85 = *(v0 + 1104);
  v86 = *(v0 + 1096);
  v148 = *(v0 + 1080);
  v153 = *(v0 + 1072);
  v87 = *(v0 + 984);

  if (v84)
  {
    v88 = 43200.0;
  }

  else
  {
    v88 = 14400.0;
  }

  sub_1C4420C3C(v0 + 928, &qword_1EC0C4940, &qword_1C4F5CD40);
  __dst[0] = v56;
  sub_1C49D4750(v143);
  v89 = __dst[0];
  v90 = *(v87 + 40);
  *(v0 + 936) = v90;
  v91 = sub_1C456902C(&qword_1EC0C4958, qword_1C4F5CD58);
  sub_1C43FD23C();
  v92 = swift_allocObject();
  v93 = (v92 + qword_1EC0BBDA8);
  v93[3] = v86;
  v93[4] = &off_1F43E41D8;
  *v93 = v85;
  sub_1C441EFF8();
  sub_1C4423848(v94);
  sub_1C441EFF8();
  *v96 = v95 + 19;
  v96[1] = v97;
  v99 = (v98 + qword_1EC0BBDF0);
  *v99 = 0;
  v99[1] = 0;
  *(v98 + qword_1EC0BBDF8) = MEMORY[0x1E69E7CC0];
  sub_1C4420610();
  sub_1C4BF85E8();
  v100 = (v92 + qword_1EC0BBDC0);
  v101 = *(v87 + 48);
  v103 = *v87;
  v102 = *(v87 + 16);
  v100[2] = *(v87 + 32);
  v100[3] = v101;
  *v100 = v103;
  v100[1] = v102;
  *(v92 + qword_1EC0BBDB0) = v89;
  *(v92 + qword_1EC0BBDB8) = v153;
  sub_1C4410660();
  *(v92 + v104) = v105;
  *(v92 + qword_1EC0BBDD0) = v90;
  *(v92 + qword_1EC0BBDD8) = v88;
  *(v137 + 56) = v91;
  *(v137 + 64) = &off_1F43E9F28;
  *(v137 + 32) = v92;

  sub_1C44DDE2C();
  sub_1C46F4E90(v87, v0 + 416);
  sub_1C4812774();
  v107 = v106;

  __dst[0] = v137;
  sub_1C49D4728(v107);
  v108 = __dst[0];
  sub_1C4BF8590();
  v109 = sub_1C4F00518();

  v110 = sub_1C4F00508();
  *(v0 + 784) = v86;
  *(v0 + 792) = &off_1F43E41D8;
  *(v0 + 760) = v85;
  *(v0 + 824) = v109;
  *(v0 + 832) = &off_1F43E7288;
  *(v0 + 800) = v110;
  v55 = type metadata accessor for JointHUDataCollectionTaskManager(0);
  sub_1C43FD23C();
  v67 = swift_allocObject();
  v111 = sub_1C4418280(v0 + 800, v109);
  sub_1C43FCE64();
  v113 = v112;
  v114 = sub_1C43FBE7C();
  (*(v113 + 16))(v114, v111, v109);
  v115 = *v114;
  v116 = (v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker);
  v116[3] = v109;
  v116[4] = &off_1F43E7288;
  *v116 = v115;
  sub_1C441B06C();
  *(v67 + 16) = v118;
  *(v67 + 24) = v117;
  sub_1C441EFF8();
  *v120 = v119 + 15;
  v120[1] = v121;
  *(v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = 0;
  v122 = (v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v122[1] = 0;
  v122[2] = 0;
  *v122 = 0;
  v123 = (v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  *v123 = 0u;
  v123[1] = 0u;
  sub_1C4BF85E8();
  *(v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase) = v148;
  sub_1C441D670((v0 + 760), v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource);
  *(v67 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore) = v153;
  sub_1C4410660();
  *(v67 + v124) = v125;
  sub_1C446C0A0((v0 + 800));

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v127 = *(v108 + 16);
  v126 = *(v108 + 24);
  if (v127 >= v126 >> 1)
  {
    sub_1C43FCFE8(v126);
    sub_1C458E5F4();
    v108 = v136;
  }

  v128 = *(v0 + 1176);
  v129 = *(v0 + 984);
  *(v0 + 864) = v55;
  *(v0 + 872) = &off_1F43F24F0;
  *(v0 + 840) = v67;
  *(v108 + 16) = v127 + 1;
  sub_1C441D670((v0 + 840), v108 + 40 * v127 + 32);
  sub_1C4BF8590();
  swift_allocObject();
  v130 = sub_1C4426A94();
  sub_1C4BF6074(v130, v129, v108);
  sub_1C4BF8640(v128);
  sub_1C4BF8640(v147);

  v131 = sub_1C4440060();
  sub_1C4BF8528(v131, type metadata accessor for Configuration);

  v132 = sub_1C43FD5F0();

  return v133(v132);
}

uint64_t sub_1C4BF3F24()
{
  sub_1C4404D98();
  v21 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = *(v0 + 1136);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DDE0);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1136);
  if (v6)
  {
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    sub_1C43FEC60();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C4F02A38();
    v12 = sub_1C441D828(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Failed to create default ER model: %s", v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v13);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v14);
  }

  else
  {
  }

  *(v0 + 1176) = 0u;
  *(v0 + 1192) = 0u;
  v15 = swift_task_alloc();
  *(v0 + 1208) = v15;
  *v15 = v0;
  sub_1C4433904(v15);
  v16 = sub_1C44692CC();

  return sub_1C470CF78(v16, v17, v18);
}

uint64_t sub_1C4BF40FC()
{
  v132 = v0;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  if (qword_1EDDFA668 != -1)
  {
LABEL_34:
    sub_1C4406758();
    swift_once();
  }

  v2 = *(v0 + 1216);
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DDE0);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1216);
  if (v7)
  {
    sub_1C43FECF0();
    v9 = p_info;
    v10 = swift_slowAlloc();
    sub_1C43FEC60();
    v11 = swift_slowAlloc();
    __dst[0] = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1C4F02A38();
    v14 = sub_1C441D828(v12, v13, __dst);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Failed to create Trial ER model: %s", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    p_info = v9;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v15 = *(v0 + 1176);
  *(v0 + 928) = *(*(v0 + 984) + 48);
  v127 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C482FCC4(v127);
  if (v15)
  {
    if (*(p_info + 1640) != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    sub_1C43FCEE8(v3, qword_1EDE2DDE0);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v18))
    {
      v19 = sub_1C43FCED0();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Default ER model available, queueing evaluation tasks.", v19, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v20 = *(v0 + 1072);
    v21 = *(v0 + 992);
    v124 = v21;

    v22 = swift_task_alloc();
    sub_1C4435CFC(v22);
    sub_1C4426EC0();
    v23[8] = v20;
    v23[9] = v24;
    v23[10] = v21;
    sub_1C440DA0C();
    sub_1C45DAB7C();
    v26 = v25;

    sub_1C49D47F8(v26);
    v27 = swift_task_alloc();
    sub_1C4435CFC(v27);
    sub_1C4426EC0();
    *(v28 + 64) = v30;
    *(v28 + 72) = v29;
    v31 = sub_1C4411360(v28, v124);
    v33 = sub_1C45DAE74(v31, v32, v16);

    sub_1C49D47F8(v33);
  }

  v34 = *(v0 + 1104);
  v35 = *(v0 + 1096);
  v123 = v35;
  v125 = *(v0 + 1120);
  v36 = *(v0 + 1080);
  v128 = *(v0 + 1072);
  sub_1C456902C(&qword_1EC0B8D08, &unk_1C4F0E140);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1C4F0D130;
  sub_1C4420610();
  sub_1C4BF8590();
  sub_1C456902C(&qword_1EC0B8D18, &unk_1C4F0E150);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C4F0D130;

  v38 = sub_1C45EDEF8();
  v39 = type metadata accessor for BehaviorDatabaseEventTracker();
  *(v0 + 504) = v39;
  *(v0 + 512) = &off_1F43E2390;
  *(v0 + 480) = v38;
  *(v0 + 544) = v35;
  *(v0 + 552) = &off_1F43E41D8;
  *(v0 + 520) = v34;
  type metadata accessor for EntityRelevanceEvaluationSampleProvider();
  v40 = swift_allocObject();
  v41 = sub_1C4418280(v0 + 480, v39);
  sub_1C43FCE64();
  v43 = v42;
  v44 = sub_1C43FBE7C();
  (*(v43 + 16))(v44, v41, v39);
  v45 = *v44;
  *(v40 + 56) = v39;
  *(v40 + 64) = &off_1F43E2390;
  *(v40 + 32) = v45;
  *(v40 + 16) = xmmword_1C4F1FD20;
  sub_1C441D670((v0 + 520), v40 + 72);
  *(v40 + 112) = 0;
  *(v40 + 120) = v125;
  *(v40 + 128) = 5;

  sub_1C440962C((v0 + 480));

  v46 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  *(v0 + 584) = v39;
  *(v0 + 592) = &off_1F43E2390;
  *(v0 + 560) = v46;

  v47 = sub_1C45ED17C();
  *(v0 + 624) = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  *(v0 + 632) = &off_1F43E2510;
  *(v0 + 600) = v47;
  *(v0 + 704) = v123;
  *(v0 + 712) = &off_1F43E41D8;
  *(v0 + 680) = v34;

  sub_1C45EA370(v0 + 680, (v0 + 640));
  sub_1C440962C((v0 + 680));
  *(v37 + 32) = v40;
  sub_1C441D670((v0 + 560), v37 + 40);
  sub_1C441D670((v0 + 600), v37 + 80);
  sub_1C441D670((v0 + 640), v37 + 120);
  *(v37 + 160) = v128;
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;
  *(v37 + 184) = 0;
  sub_1C441E77C();
  p_info = v49 & v48;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DDE2C();
  v50 = (63 - v36) >> 6;

  v51 = 0;
  v126 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v52 = v51;
    if (!p_info)
    {
      break;
    }

LABEL_16:
    v129 = *(v0 + 1112);
    v53 = *(v0 + 1104);
    v54 = *(v0 + 1096);
    v55 = *(v0 + 1088);
    v56 = __clz(__rbit64(p_info));
    p_info &= p_info - 1;
    v57 = v56 | (v51 << 6);
    v58 = (*(v127 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    sub_1C4707E5C(*(v127 + 56) + 224 * v57, v0 + 32);
    *(v0 + 16) = v60;
    *(v0 + 24) = v59;
    *(v0 + 744) = v54;
    *(v0 + 752) = &off_1F43E41D8;
    *(v0 + 720) = v53;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C46D9C30(v60, v59, v55, v129, (v0 + 720), (v0 + 256));
    sub_1C440962C((v0 + 720));
    sub_1C4420C3C(v0 + 16, &qword_1EC0C4948, &qword_1C4F5CD48);
    if (*(v0 + 256))
    {
      memcpy(__dst, (v0 + 256), 0xA0uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458E6B0();
        v126 = v63;
      }

      v62 = *(v126 + 16);
      v61 = *(v126 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C43FCFE8(v61);
        sub_1C458E6B0();
        v126 = v64;
      }

      *(v126 + 16) = v62 + 1;
      memcpy((v126 + 160 * v62 + 32), __dst, 0xA0uLL);
    }

    else
    {
      sub_1C4420C3C(v0 + 256, &qword_1EC0C4950, &qword_1C4F5CD50);
    }
  }

  while (1)
  {
    v51 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v51 >= v50)
    {
      break;
    }

    p_info = *(v127 + 64 + 8 * v51);
    ++v52;
    if (p_info)
    {
      goto LABEL_16;
    }
  }

  v65 = *(v0 + 1256);
  v66 = *(v0 + 1104);
  v67 = *(v0 + 1096);
  v122 = *(v0 + 1080);
  v130 = *(v0 + 1072);
  v68 = *(v0 + 984);

  if (v65)
  {
    v69 = 43200.0;
  }

  else
  {
    v69 = 14400.0;
  }

  sub_1C4420C3C(v0 + 928, &qword_1EC0C4940, &qword_1C4F5CD40);
  __dst[0] = v37;
  sub_1C49D4750(v126);
  v70 = __dst[0];
  v71 = *(v68 + 40);
  *(v0 + 936) = v71;
  v72 = sub_1C456902C(&qword_1EC0C4958, qword_1C4F5CD58);
  sub_1C43FD23C();
  v73 = swift_allocObject();
  v74 = (v73 + qword_1EC0BBDA8);
  v74[3] = v67;
  v74[4] = &off_1F43E41D8;
  *v74 = v66;
  sub_1C441EFF8();
  sub_1C4423848(v75);
  sub_1C441EFF8();
  *v77 = v76 + 19;
  v77[1] = v78;
  v80 = (v79 + qword_1EC0BBDF0);
  *v80 = 0;
  v80[1] = 0;
  *(v79 + qword_1EC0BBDF8) = MEMORY[0x1E69E7CC0];
  sub_1C4420610();
  sub_1C4BF85E8();
  v81 = (v73 + qword_1EC0BBDC0);
  v82 = *(v68 + 48);
  v84 = *v68;
  v83 = *(v68 + 16);
  v81[2] = *(v68 + 32);
  v81[3] = v82;
  *v81 = v84;
  v81[1] = v83;
  *(v73 + qword_1EC0BBDB0) = v70;
  *(v73 + qword_1EC0BBDB8) = v130;
  sub_1C4410660();
  *(v73 + v85) = v86;
  *(v73 + qword_1EC0BBDD0) = v71;
  *(v73 + qword_1EC0BBDD8) = v69;
  *(v121 + 56) = v72;
  *(v121 + 64) = &off_1F43E9F28;
  *(v121 + 32) = v73;

  sub_1C44DDE2C();
  sub_1C46F4E90(v68, v0 + 416);
  sub_1C4812774();
  v88 = v87;

  __dst[0] = v121;
  sub_1C49D4728(v88);
  v89 = __dst[0];
  sub_1C4BF8590();
  v90 = sub_1C4F00518();

  v91 = sub_1C4F00508();
  *(v0 + 784) = v67;
  *(v0 + 792) = &off_1F43E41D8;
  *(v0 + 760) = v66;
  *(v0 + 824) = v90;
  *(v0 + 832) = &off_1F43E7288;
  *(v0 + 800) = v91;
  v92 = type metadata accessor for JointHUDataCollectionTaskManager(0);
  sub_1C43FD23C();
  v93 = swift_allocObject();
  v94 = sub_1C4418280(v0 + 800, v90);
  sub_1C43FCE64();
  v96 = v95;
  v97 = sub_1C43FBE7C();
  (*(v96 + 16))(v97, v94, v90);
  v98 = *v97;
  v99 = (v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker);
  v99[3] = v90;
  v99[4] = &off_1F43E7288;
  *v99 = v98;
  sub_1C441B06C();
  *(v93 + 16) = v101;
  *(v93 + 24) = v100;
  sub_1C441EFF8();
  *v103 = v102 + 15;
  v103[1] = v104;
  *(v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = 0;
  v105 = (v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v105[1] = 0;
  v105[2] = 0;
  *v105 = 0;
  v106 = (v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  *v106 = 0u;
  v106[1] = 0u;
  sub_1C4BF85E8();
  *(v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase) = v122;
  sub_1C441D670((v0 + 760), v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource);
  *(v93 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore) = v130;
  sub_1C4410660();
  *(v93 + v107) = v108;
  sub_1C440962C((v0 + 800));

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C43FCEC0();
    sub_1C458E5F4();
    v89 = v119;
  }

  v110 = *(v89 + 16);
  v109 = *(v89 + 24);
  if (v110 >= v109 >> 1)
  {
    sub_1C43FCFE8(v109);
    sub_1C458E5F4();
    v89 = v120;
  }

  v111 = *(v0 + 1176);
  v112 = *(v0 + 984);
  *(v0 + 864) = v92;
  *(v0 + 872) = &off_1F43F24F0;
  *(v0 + 840) = v93;
  *(v89 + 16) = v110 + 1;
  sub_1C441D670((v0 + 840), v89 + 40 * v110 + 32);
  sub_1C44139A8();
  sub_1C4BF8590();
  swift_allocObject();
  v113 = sub_1C4426A94();
  sub_1C4BF6074(v113, v112, v89);
  sub_1C4BF8640(v111);
  sub_1C43FEAF8();
  sub_1C4BF8640(v114);

  v115 = sub_1C4440060();
  sub_1C4BF8528(v115, v93);

  v116 = sub_1C43FD5F0();

  return v117(v116);
}

uint64_t sub_1C4BF4DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4BF4EA8;

  return sub_1C4BF22C8();
}

uint64_t sub_1C4BF4EA8(uint64_t a1, uint64_t a2)
{
  sub_1C43FBDE4();
  v6 = *v3;
  sub_1C43FBDAC();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

void sub_1C4BF4FAC()
{
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v1 = static NSUserDefaults.enableERHistoricalFeatureGeneration.getter();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 48);
    v25 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 32);
    v26 = v2;
    v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 16);
    v23 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact);
    v24 = v3;
    MEMORY[0x1EEE9AC00](v1);
    v17[2] = v4;
    sub_1C446C37C(sub_1C4707C54, v17);
    v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers);
    if (v6)
    {
      v7 = 0;
      v8 = *(v6 + 16);
      v9 = v6 + 32;
      *&v5 = 136315394;
      v18 = v5;
      while (v8 != v7)
      {
        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        sub_1C442E860(v9, v20);
        v10 = v21;
        v11 = v22;
        sub_1C4409678(v20, v21);
        (*(v11 + 24))(v10, v11);
        sub_1C440962C(v20);
        v9 += 40;
        ++v7;
      }
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
LABEL_15:
      sub_1C4406758();
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DDE0);
    v19 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v13))
    {
      v14 = sub_1C43FCED0();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v13, "Skipping clearing historical feature data view: 'enableERHistoricalFeatureGeneration is set to false", v14, 2u);
      v15 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v15);
    }

    v16 = v19;
  }
}

uint64_t sub_1C4BF5404(uint64_t a1)
{
  v2 = sub_1C4EFDAB8();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v6 = *(v3 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D480;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  v10(v9, *MEMORY[0x1E69A93E0], v2);
  v10(v9 + v6, *MEMORY[0x1E69A9418], v2);
  v10(v9 + 2 * v6, *MEMORY[0x1E69A9420], v2);
  v10(v9 + 3 * v6, *MEMORY[0x1E69A9458], v2);
  v30 = a1;
  LOBYTE(v6) = sub_1C479B760(sub_1C4BF86F8, v29, v8);
  swift_setDeallocating();
  sub_1C49E1558();
  if (v6)
  {
    v11 = v28;
  }

  else
  {
    sub_1C4EFDA68();
    sub_1C4836304();
    v13 = v12;

    v11 = v28;
    if ((v13 & 1) == 0)
    {
      v14 = sub_1C4EFDA58();
      MEMORY[0x1EEE9AC00](v14);
      *(&v27 - 2) = a1;
      v15 = sub_1C479B760(sub_1C4BF8748, (&v27 - 4), v14);

      if (v15)
      {
        return 1;
      }
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2DDE0);
  (*(v4 + 16))(v11, a1, v2);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    sub_1C4472598(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
    v22 = sub_1C4F02858();
    v23 = v11;
    v25 = v24;
    (*(v4 + 8))(v23, v2);
    v26 = sub_1C441D828(v22, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1C43F8000, v18, v19, "EntityRelevanceHistoricalFeatureViewGenerator: Skipping evaluation of %s using shared database", v20, 0xCu);
    sub_1C440962C(v21);
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v11, v2);
  }

  return 0;
}

uint64_t sub_1C4BF5844@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v15 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = type metadata accessor for Configuration(0);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  sub_1C44139A8();
  sub_1C4BF8590();
  v51 = v17;
  v27 = *(v17 + 16);
  v27(v21, a1, v15);
  type metadata accessor for EntityRelevanceEvaluationTaskManager(0);
  sub_1C43FD23C();
  v28 = swift_allocObject();
  v56[3] = &type metadata for EntityRelevanceMLModel;
  v56[4] = &off_1F43E9B30;
  v29 = swift_allocObject();
  v56[0] = v29;
  *(v29 + 16) = a3;
  *(v29 + 24) = a9;
  *(v29 + 32) = a4;
  *(v29 + 40) = a5;
  sub_1C441EFF8();
  *v30 = 0xD000000000000024;
  v30[1] = v31;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  v50 = v26;
  sub_1C4BF8590();
  sub_1C442E860(v56, v28 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  v27(v28 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v21, v15);
  sub_1C4418C28(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  *(v28 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = a7;
  sub_1C4410660();
  *(v28 + v32) = v33;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *(v28 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = a10;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E90(a6, v55);
  v34 = qword_1EDDFA668;

  if (v34 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2DDE0);
  sub_1C442E860(v56, v55);
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CB8();
  if (os_log_type_enabled(v36, v37))
  {
    sub_1C43FECF0();
    v38 = swift_slowAlloc();
    sub_1C43FEC60();
    v39 = swift_slowAlloc();
    v57 = v39;
    sub_1C442AC94(4.8149e-34);
    sub_1C440962C(v55);
    v40 = sub_1C441D828(a6, v21, &v57);

    *(v38 + 4) = v40;
    sub_1C4430738(&dword_1C43F8000, v41, v42, "Evaluating '%s'");
    sub_1C440962C(v39);
    v43 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v43);
    v44 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v44);

    (*(v51 + 8))(v21, v15);
    sub_1C44010FC();
    sub_1C4BF8528(v50, v45);
    v46 = v56;
  }

  else
  {

    (*(v51 + 8))(v21, v15);
    sub_1C44010FC();
    sub_1C4BF8528(v50, v47);
    sub_1C440962C(v56);
    v46 = v55;
  }

  result = sub_1C440962C(v46);
  *a8 = v28;
  return result;
}

uint64_t sub_1C4BF5C48@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v15 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v17 = v16;
  v57 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = type metadata accessor for Configuration(0);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = *a1;
  v28 = a1[1];
  v52 = v27;
  sub_1C44139A8();
  sub_1C4BF8590();
  (*(v17 + 104))(v21, *MEMORY[0x1E69A9418], v15);
  type metadata accessor for EntityRelevanceEvaluationTaskManager(0);
  sub_1C43FD23C();
  v29 = swift_allocObject();
  v59[3] = &type metadata for EntityRelevanceMLModel;
  v59[4] = &off_1F43E9B30;
  v30 = swift_allocObject();
  v59[0] = v30;
  *(v30 + 16) = a3;
  *(v30 + 24) = a9;
  *(v30 + 32) = a4;
  *(v30 + 40) = a5;
  sub_1C441EFF8();
  *v31 = 0xD000000000000024;
  v31[1] = v32;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  v54 = v26;
  sub_1C4BF8590();
  sub_1C442E860(v59, v29 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  (*(v57 + 16))(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v21, v15);
  sub_1C4418C28(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  *(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = a7;
  sub_1C4410660();
  *(v29 + v33) = v34;
  v35 = (v29 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *v35 = v52;
  v35[1] = v28;
  *(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = a10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E90(a6, v58);
  v36 = qword_1EDDFA668;

  if (v36 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v37 = sub_1C4F00978();
  sub_1C442B738(v37, qword_1EDE2DDE0);
  sub_1C442E860(v59, v58);
  v38 = sub_1C4F00968();
  v39 = sub_1C4F01CB8();
  if (os_log_type_enabled(v38, v39))
  {
    sub_1C43FECF0();
    v40 = swift_slowAlloc();
    sub_1C43FEC60();
    v41 = swift_slowAlloc();
    v60 = v41;
    sub_1C442AC94(4.8149e-34);
    sub_1C440962C(v58);
    v42 = sub_1C441D828(a6, v15, &v60);

    *(v40 + 4) = v42;
    sub_1C4430738(&dword_1C43F8000, v43, v44, "Evaluating '%s'");
    sub_1C440962C(v41);
    v45 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v45);
    v46 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v46);

    (*(v57 + 8))(v21, v15);
    sub_1C44010FC();
    sub_1C4BF8528(v54, v47);
    v48 = v59;
  }

  else
  {

    (*(v57 + 8))(v21, v15);
    sub_1C44010FC();
    sub_1C4BF8528(v54, v49);
    sub_1C440962C(v59);
    v48 = v58;
  }

  result = sub_1C440962C(v48);
  *a8 = v29;
  return result;
}

uint64_t sub_1C4BF6074(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1C441EFF8();
  *v6 = 0xD00000000000002DLL;
  v6[1] = v7;
  sub_1C4420610();
  sub_1C4BF85E8();
  v8 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact);
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a2[3];
  v8[2] = a2[2];
  v8[3] = v10;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers) = a3;
  return v3;
}

uint64_t sub_1C4BF6104()
{
  sub_1C43FBCD4();
  v1[18] = v0;
  v1[19] = *v0;
  v1[20] = sub_1C4F01828();
  sub_1C4404280();
  v1[21] = v2;
  v1[22] = sub_1C43FE604();
  v1[23] = swift_task_alloc();
  v1[24] = sub_1C4EF9CD8();
  sub_1C4404280();
  v1[25] = v3;
  v1[26] = sub_1C43FE604();
  v1[27] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4BF6240()
{
  v34 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v1 = static NSUserDefaults.enableERHistoricalFeatureGeneration.getter();
  if ((v1 & 1) == 0)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C43FCEE8(v26, qword_1EDE2DDE0);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (!sub_1C43FEB2C(v28))
    {
      goto LABEL_19;
    }

    v29 = sub_1C43FCED0();
    *v29 = 0;
    v30 = "Skipping historical feature view generation: 'enableERHistoricalFeatureGeneration is set to false";
    goto LABEL_18;
  }

  v2 = *(v0[18] + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers);
  v0[28] = v2;
  if (v2)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v3 = sub_1C4F00978();
    v0[29] = sub_1C43FCEE8(v3, qword_1EDE2DDE0);

    v4 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      v5 = v0[18];
      sub_1C43FECF0();
      v6 = swift_slowAlloc();
      sub_1C43FEC60();
      v7 = swift_slowAlloc();
      v33 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1C441D828(*(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v33);
      sub_1C4404B90();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_1C446C0A0(v7);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v13 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v13);
    }

    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[19];
    sub_1C4EF9CC8();
    sub_1C4703364();
    sub_1C4EF9BE8();
    v19 = *(v17 + 8);
    v0[30] = v19;
    v0[31] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v16);
    *(swift_task_alloc() + 16) = v14;
    sub_1C49BFEF8();
    v21 = v20;
    v0[32] = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    sub_1C456902C(&qword_1EC0C4928, &qword_1C4F5CCA0);
    inited = swift_initStackObject();
    v0[33] = inited;
    inited[2] = v21;
    inited[3] = sub_1C4BF8504;
    inited[4] = v22;
    swift_bridgeObjectRetain_n();
    v24 = swift_task_alloc();
    v0[34] = v24;
    *v24 = v0;
    v24[1] = sub_1C4BF6688;

    return sub_1C4BF07B0();
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v31 = sub_1C4F00978();
  sub_1C43FCEE8(v31, qword_1EDE2DDE0);
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CD8();
  if (sub_1C43FEB2C(v28))
  {
    v29 = sub_1C43FCED0();
    *v29 = 0;
    v30 = "Skipping historical feature view generation: taskManagers are nil";
LABEL_18:
    _os_log_impl(&dword_1C43F8000, v27, v28, v30, v29, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_19:

  sub_1C43FBCF0();

  return v32((v1 & 1) == 0);
}

uint64_t sub_1C4BF6688()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4BF6784()
{
  v49 = v0;

  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(v1, v2))
  {
    sub_1C43FECF0();
    v3 = swift_slowAlloc();
    sub_1C43FEC60();
    v4 = swift_slowAlloc();
    *(v3 + 4) = sub_1C4441274(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    sub_1C4404B90();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C446C0A0(v4);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v17 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v17);
  }

  swift_setDeallocating();
  sub_1C4BF227C();
  v18 = v0[35];

  v19 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C44020E0())
  {
    sub_1C43FECF0();
    v20 = swift_slowAlloc();
    sub_1C43FEC60();
    v21 = swift_slowAlloc();
    *(v20 + 4) = sub_1C4441274(4.8149e-34, v21, v22, v23, v24, v25, v26, v27, v28, v21);
    sub_1C4404B90();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_1C446C0A0(v21);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v34 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v34);
  }

  v35 = 0;
  v36 = v0[28];
  v37 = *(v36 + 16);
  v38 = v36 + 32;
  while (v37 != v35)
  {
    if (v35 >= *(v36 + 16))
    {
      __break(1u);
      return;
    }

    v39 = v0[18];
    sub_1C442E860(v38, (v0 + 7));
    sub_1C4BF76B8(v0 + 7, v39);
    if (v18)
    {

      sub_1C440962C(v0 + 7);
      return;
    }

    ++v35;
    sub_1C440962C(v0 + 7);
    v38 += 40;
  }

  sub_1C4441594();

  v40 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C44020E0())
  {
    v36 = v0[18];
    sub_1C43FECF0();
    v41 = swift_slowAlloc();
    sub_1C43FEC60();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1C441D828(*(v36 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(v36 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v48);
    sub_1C43FBD74(&dword_1C43F8000, v43, v44, "%s: update complete");
    sub_1C440962C(v42);
    v45 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v45);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4450838();
  v46 = sub_1C4402B58();
  (v36)(v46);

  sub_1C43FBCF0();

  v47(1);
}

void sub_1C4BF6AB4()
{
  v1 = *(v0 + 280);
  swift_setDeallocating();
  sub_1C4BF227C();
  *(v0 + 136) = v1;
  v2 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 280);
  if (v3)
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);

    (*(v8 + 32))(v6, v5, v7);

    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 144);
      sub_1C43FECF0();
      v12 = swift_slowAlloc();
      sub_1C43FEC60();
      v81 = swift_slowAlloc();
      *v12 = 136315138;
      *(v12 + 4) = sub_1C441B548((v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v78, v79, v80);
      sub_1C4404B90();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_1C446C0A0(v81);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v18 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v18);
    }

    v19 = *(v0 + 224);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v0 + 96);
      v22 = v19 + 32;
      do
      {
        sub_1C442E860(v22, v21);
        v23 = *(v0 + 120);
        v24 = *(v0 + 128);
        sub_1C4409678(v21, v23);
        (*(v24 + 16))(v23, v24);
        sub_1C440962C(v21);
        v22 += 40;
        --v20;
      }

      while (v20);
    }

    v25 = *(v0 + 240);
    v26 = *(v0 + 216);
    v27 = *(v0 + 192);
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 160);
    sub_1C4426130();
    sub_1C4472598(v31, v32, MEMORY[0x1E69E8558]);
    swift_allocError();
    (*(v29 + 16))(v33, v28, v30);
    swift_willThrow();
    v34 = sub_1C4414A08();
    v35(v34);

    v25(v26, v27);

    sub_1C43FBCF0();
    goto LABEL_20;
  }

  v36 = v4;
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 280);
  if (v39)
  {
    v41 = *(v0 + 144);
    v42 = sub_1C440F274();
    v43 = swift_slowAlloc();
    sub_1C43FEC60();
    v82 = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_1C441B548((v41 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v78, v79, v80);
    *(v42 + 12) = 2112;
    v44 = v40;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v45;
    *v43 = v45;
    sub_1C4404B90();
    _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
    sub_1C4420C3C(v43, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v82);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v51 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v51);
  }

  else
  {
  }

  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CF8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 144);
    sub_1C43FECF0();
    v55 = swift_slowAlloc();
    sub_1C43FEC60();
    v83 = swift_slowAlloc();
    *v55 = 136315138;
    *(v55 + 4) = sub_1C441B548((v54 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v78, v79, v80);
    sub_1C4404B90();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    sub_1C446C0A0(v83);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v61 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v61);
  }

  v62 = 0;
  v63 = *(v0 + 224);
  v64 = *(v63 + 16);
  for (i = v63 + 32; ; i += 40)
  {
    if (v64 == v62)
    {
      sub_1C4441594();

      v70 = sub_1C4F00968();
      sub_1C4F01CF8();

      if (sub_1C44020E0())
      {
        v63 = *(v0 + 144);
        sub_1C43FECF0();
        v71 = swift_slowAlloc();
        sub_1C43FEC60();
        v84 = swift_slowAlloc();
        *v71 = 136315138;
        *(v71 + 4) = sub_1C441B548((v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v78, v79, v80);
        sub_1C43FBD74(&dword_1C43F8000, v72, v73, "%s: update complete");
        sub_1C440962C(v84);
        v74 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v74);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C4450838();
      v75 = sub_1C4402B58();
      (v63)(v75);

      sub_1C43FBCF0();
LABEL_20:
      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }

    if (v62 >= *(v63 + 16))
    {
      break;
    }

    v66 = sub_1C4402120();
    sub_1C442E860(v66, v67);
    v68 = sub_1C4402B58();
    sub_1C4BF76B8(v68, v69);
    ++v62;
    sub_1C440962C((v0 + 56));
  }

  __break(1u);
}

void sub_1C4BF70E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v7);
  v9 = (*(v8 + 8))(a2, v7, v8);
  if (v3)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DDE0);
    sub_1C442E860(a1, v26);
    v13 = v3;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v16 = 136315394;
      sub_1C442E860(v26, &v25);
      sub_1C456902C(&qword_1EC0B8D10, &qword_1C4F0EFE0);
      v19 = sub_1C4F01198();
      v21 = v20;
      sub_1C440962C(v26);
      v22 = sub_1C441D828(v19, v21, &v27);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      *v17 = v24;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Unable to create invocation of task manager %s: %@", v16, 0x16u);
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      sub_1C440962C(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      sub_1C440962C(v26);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = v9;
    a3[1] = v10;
    a3[2] = v11;
  }
}

uint64_t sub_1C4BF7368@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v29 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9BE8();
  sub_1C4472598(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1C4F01088();
  if (result)
  {
    v27 = v6;
    v28 = v4;
    v17 = a1;
    v26 = a1;
    v18 = *(v13 + 32);
    v18(v11, v15, v12);
    v19 = v29;
    (*(v13 + 16))(&v11[*(v29 + 48)], v17, v12);
    sub_1C44DDE2C();
    v20 = *(v19 + 48);
    v18(a2, v8, v12);
    v21 = *(v13 + 8);
    v21(&v8[v20], v12);
    sub_1C44CDA7C();
    v22 = *(v19 + 48);
    v23 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v18(&a2[*(v23 + 36)], &v8[v22], v12);
    v21(v8, v12);
    v24 = v27;
    sub_1C44DDE2C();
    v25 = *&v24[*(v28 + 48)];
    *&a2[*(type metadata accessor for BehaviorDigestRunSpecification(0) + 20)] = v25;
    return (v21)(v24, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C4BF76B8(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1C4409678(a1, v5);
  (*(v6 + 32))(v5, v6);
  v7 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v7);
  (*(v8 + 24))(v7, v8);
  if (v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    sub_1C442E860(a1, v24);

    v10 = v2;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CE8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_1C441D828(*(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v23);
      *(v13 + 12) = 2080;
      sub_1C442E860(v24, v22);
      sub_1C456902C(&qword_1EC0B8D10, &qword_1C4F0EFE0);
      v15 = sub_1C4F01198();
      v17 = v16;
      sub_1C440962C(v24);
      v18 = sub_1C441D828(v15, v17, &v23);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v19 = sub_1C4F02A38();
      v21 = sub_1C441D828(v19, v20, &v23);

      *(v13 + 24) = v21;
      _os_log_impl(&dword_1C43F8000, v11, v12, "%s: unable to clear %s state: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {

      sub_1C440962C(v24);
    }
  }
}

void sub_1C4BF7DBC(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  v10 = &unk_1C4F0C000;
  if (a2)
  {
    v11 = a2;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DDE0);
    v13 = a2;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_1C4F02A38();
      v20 = sub_1C441D828(v18, v19, &v33);

      *(v16 + 4) = v20;
      v10 = &unk_1C4F0C000;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Error in dodML record creation: %s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      v21 = v16;
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    else
    {
    }
  }

  if (p_info[205] != -1)
  {
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2DDE0);
  sub_1C44DDE2C();
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = v10[458];
    sub_1C44DDE2C();
    v27 = sub_1C4EF9D38();
    if (sub_1C44157D4(v5, 1, v27) == 1)
    {
      sub_1C4420C3C(v5, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      v29 = sub_1C4EF9CF8();
      v28 = v30;
      (*(*(v27 - 8) + 8))(v5, v27);
    }

    sub_1C4420C3C(v8, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v31 = sub_1C441D828(v29, v28, &v33);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1C43F8000, v23, v24, "DodML record writing UUID: %s", v25, 0xCu);
    sub_1C440962C(v26);
    MEMORY[0x1C6942830](v26, -1, -1);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  else
  {

    sub_1C4420C3C(v8, &qword_1EC0B9DC8, &unk_1C4F124A0);
  }
}

uint64_t sub_1C4BF81D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1C4EF9D18();
    v10 = sub_1C4EF9D38();
    v11 = 0;
  }

  else
  {
    v10 = sub_1C4EF9D38();
    v11 = 1;
  }

  sub_1C440BAA8(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_1C4420C3C(v8, &qword_1EC0B9DC8, &unk_1C4F124A0);
}

uint64_t sub_1C4BF82E0()
{
  sub_1C44010FC();
  sub_1C4BF8528(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C4BF8390()
{
  sub_1C4BF82E0();

  return swift_deallocClassInstance();
}

uint64_t _s45EntityRelevanceHistoricalFeatureViewGeneratorCMa(uint64_t a1)
{
  result = qword_1EDDE88B8;
  if (!qword_1EDDE88B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BF843C(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4BF8528(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4BF8590()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C4BF85E8()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C4BF8640(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1C4BF8774(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C4C81AA0(a1, a2, 0);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      *a3 = v12;
      a3[1] = v13;
      a3[2] = v14;
      a3[3] = v15;
    }

    else
    {
      v7 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v7);
      *v8 = a1;
      v8[1] = a2;
      sub_1C44139C0();
      *(v9 + 16) = v10;
      *(v9 + 24) = 0x80000001C4FB9640;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C4BF887C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v56 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v53 = v11 - v10;
  sub_1C4EFDAB8();
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = a1[1];
  v59 = *a1;
  v62 = a1[2];
  v61 = a1[3];
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[7];
  v83 = a1[6];
  v66 = v19;
  v65 = a1[8];
  v64 = a1[9];
  v63 = a1[10];
  (*(v20 + 104))(v15, *MEMORY[0x1E69A9418]);
  v21 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  swift_allocObject();
  v57 = v17;
  v22 = sub_1C45EA510(a2, v15, v17, v18);
  v23 = type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v60 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v24 = sub_1C4624330(a3, a4);
  if (v52)
  {

    v25 = 0;
  }

  else
  {
    v26 = v24;
    v74 = v21;
    v75 = &off_1F43E2510;
    v77 = v23;
    v78 = &off_1F43E41D8;
    v76 = v24;
    v71[0] = v59;
    v71[1] = v16;
    v71[2] = a2;
    v72 = v22;
    v81 = &type metadata for BehaviorDatabaseHistogramManager;
    v82 = &off_1F43E25F0;
    *&v79 = swift_allocObject();
    sub_1C4BEB830(v71, v79 + 16);
    v69 = v23;
    v70 = &off_1F43E41D8;
    *&v68 = v26;
    v67[4] = &off_1F43E2510;
    v67[3] = v21;
    v67[0] = v22;
    type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v27 = swift_allocObject();
    sub_1C4418280(v67, v21);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v28);
    sub_1C43FBCC4();
    v31 = (v30 - v29);
    (*(v32 + 16))(v30 - v29);
    v33 = *v31;
    v27[15] = v21;
    v27[16] = &off_1F43E2510;
    v27[12] = v33;
    v27[17] = MEMORY[0x1E69E7CC8];
    sub_1C441D670(&v68, (v27 + 2));
    sub_1C441D670(&v79, (v27 + 7));
    swift_retain_n();

    v25 = v27;

    sub_1C440962C(v67);
    sub_1C4BEB88C(v71);
  }

  v72 = v21;
  v73 = &off_1F43E2510;
  v71[0] = v22;
  v34 = 0;
  if (v25)
  {
    v34 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v35 = &off_1F43E24F0;
  }

  else
  {
    v35 = 0;
    *(&v79 + 1) = 0;
    v80 = 0;
  }

  *&v79 = v25;
  v81 = v34;
  v82 = v35;
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v36 = (type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
  v37 = *(*v36 + 72);
  v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C4F0C890;
  v40 = (v39 + v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BEC810(v65, v64);
  sub_1C4EFBE08();
  *v40 = 1701869940;
  *(v40 + 1) = 0xE400000000000000;
  v41 = *(v55 + 32);
  v41(&v40[v36[7]], v53, v56);
  v42 = &v40[v37];
  sub_1C4EFBE08();
  strcpy(&v40[v37], "behaviorType");
  v42[13] = 0;
  *(v42 + 7) = -5120;
  v43 = sub_1C4411380();
  (v41)(v43);
  v44 = &v40[2 * v37];
  sub_1C4EFBDB8();
  *v44 = 1635017060;
  *(v44 + 1) = 0xE400000000000000;
  v45 = sub_1C4411380();
  (v41)(v45);
  a6[4] = a5;
  a6[5] = v39;
  *a6 = v59;
  a6[1] = v16;
  a6[2] = v62;
  a6[3] = v61;
  sub_1C442E860(v71, (a6 + 11));
  sub_1C46DA590(&v79, (a6 + 6));
  v46 = *(*(a5 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v47 = type metadata accessor for BehaviorDatabaseEventTracker();
  swift_allocObject();
  v48 = sub_1C45DC594(v83, v66, v46, v65, v64, v63);
  a6[19] = v47;
  a6[20] = &off_1F43E2390;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BEC810(v65, v64);

  a6[16] = v48;
  sub_1C4BF9A14(&v79);
  result = sub_1C440962C(v71);
  a6[21] = v57;
  a6[22] = v60;
  a6[23] = v83;
  a6[24] = v66;
  a6[25] = v65;
  a6[26] = v64;
  a6[27] = v63;
  return result;
}

void sub_1C4BF93CC()
{
  sub_1C44127A4();
  sub_1C4401114();
  if (v1)
  {
    sub_1C43FF76C(v5);
    v19 = *(v6 + 16);
    v20 = 0uLL;
    sub_1C44E9220();
    if (!v0)
    {
      v8 = v7;
      swift_retain_n();

      v9 = v3;

      sub_1C440392C();
      v11 = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C470336C(v8, v21[9], v1, v19, v11, v21);

      if (!v9)
      {
        MEMORY[0x1EEE9AC00](v12);
        v18[2] = v21;
        sub_1C446C37C(sub_1C4707C54, v18);
        sub_1C46EEFDC(v21);
      }
    }
  }

  else
  {
    v13 = sub_1C450B034();
    v14 = sub_1C43FFB2C(&unk_1F44064D8, v13);
    *v15 = v4;
    v15[1] = v2;
    sub_1C442D668(v14, v15);
    sub_1C44010A8(v20, v16, v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BF9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (a3 + *(_s6ConfigVMa(0) + 72));
  v9 = v8[1];
  if (v9)
  {
    v43 = a5;
    v44 = a1;
    v45 = a2;
    v10 = v8[3];
    v11 = *v8;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = v11;
    *(inited + 40) = v9;
    v42 = inited;
    v13 = v10 + 64;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v46 = v17;
    v47 = v10 + 64;
    if (v16)
    {
      while (1)
      {
        v51 = v19;
LABEL_10:
        v21 = (*(v48 + 56) + 88 * (__clz(__rbit64(v16)) | (v18 << 6)));
        v22 = v21[1];
        v50 = *v21;
        v24 = v21[4];
        v23 = v21[5];
        v26 = v21[6];
        v25 = v21[7];
        v27 = v21[9];
        v49 = v21[8];
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_1C4F0C890;
        *(v28 + 32) = v50;
        *(v28 + 40) = v22;
        *(v28 + 48) = v24;
        *(v28 + 56) = v23;
        *(v28 + 64) = v26;
        *(v28 + 72) = v25;
        if (v27)
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4BEC810(v49, v27);
          sub_1C443D664();
          v28 = v29;

          *(v28 + 16) = 4;
          *(v28 + 80) = v49;
          *(v28 + 88) = v27;

          sub_1C45E8E50(v49, v27);
          v30 = *(v28 + 16);
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v30 = 3;
        }

        v19 = v51;
        v31 = *(v51 + 16);
        if (__OFADD__(v31, v30))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v31 + v30 > *(v51 + 24) >> 1)
        {
          sub_1C443D664();
          v19 = v32;
        }

        if (*(v28 + 16))
        {
          if ((*(v19 + 24) >> 1) - *(v19 + 16) < v30)
          {
            goto LABEL_30;
          }

          swift_arrayInitWithCopy();

          v17 = v46;
          v13 = v47;
          if (v30)
          {
            v33 = *(v19 + 16);
            v34 = __OFADD__(v33, v30);
            v35 = v33 + v30;
            if (v34)
            {
              goto LABEL_31;
            }

            *(v19 + 16) = v35;
          }
        }

        else
        {

          v17 = v46;
          v13 = v47;
          if (v30)
          {
            goto LABEL_29;
          }
        }

        v16 &= v16 - 1;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {

          sub_1C449ADBC(v19);
          sub_1C4C743B4(v44, v45, v42, v43);
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v51 = v19;
          v18 = v20;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v37 = sub_1C450B034();
  v38 = sub_1C43FFB2C(&unk_1F44064D8, v37);
  *v39 = a1;
  v39[1] = a2;
  sub_1C442D668(v38, v39);
  sub_1C44010A8(v52, v40, v41);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4BF9A14(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB460, &qword_1C4F5D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4BF9A7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4BF9ADC(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  sub_1C4BC7950();
  v4 = sub_1C4EFBE98();
  if (v2)
  {
  }

  v6 = v4;

  type metadata accessor for EscapeBlockMonitor();
  v7 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v7;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v6;

  a2(sub_1C4AE5180, v11);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4BF9C7C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  a8(a4, a5, a6, a7);
  v12 = sub_1C4EFBE98();
  if (v10)
  {
  }

  v14 = v12;

  type metadata accessor for EscapeBlockMonitor();
  v15 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v15;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v14;

  a2(a10, v19);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4BF9E2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v14 = *(v2 + 32);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2E088);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "RowUpdatableDatabaseTable: insert with callback", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v10);
  v12[2] = v13;
  v12[3] = a1;
  v12[4] = a2;

  sub_1C446C37C(sub_1C4BFC4F0, v12);
}

uint64_t sub_1C4BF9FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2E088);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "RowUpdatableDatabaseTable: insert with callback", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v14);
  v16[2] = v17;
  v16[3] = a1;
  v16[4] = a2;

  sub_1C446C37C(a7, v16);
}

uint64_t sub_1C4BFA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v42 - v16;
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);
  if (v5)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      v47[0] = v44;
      v47[1] = v45;
      v48 = v46;
      swift_unownedRetainStrong();

      v18 = sub_1C442D680();
      sub_1C443A738(v18, v19, v20, v21, v22, v23, v24, v25);
      v42[1] = a5;

      v28 = *&v17[*(v11 + 112)];
      sub_1C4BFC638(v28);
      v29 = v17;
      v30 = v28;
      sub_1C445F57C(v29);
      if (v28)
      {
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      swift_unownedRetainStrong();

      v31 = sub_1C442D680();
      sub_1C443A738(v31, v32, v33, v34, v35, v36, v37, v38);

      v39 = &v14[*(v11 + 112)];
      v41 = *v39;
      v40 = v39[1];
      sub_1C4BFC638(*v39);
      sub_1C445F57C(v14);
      if (v41)
      {
      }

      else
      {
        v40 = 0;
      }

      swift_unownedRetainStrong();
      _s37EntityRelevanceInferenceViewGeneratorCMa();
      v11 = swift_allocObject();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BFA680(a1, a2, v47, v30, v40, a4);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v26 = a1;
      *(v26 + 8) = a2;
      *(v26 + 16) = xmmword_1C4F5B670;
      *(v26 + 32) = 0xD000000000000025;
      *(v26 + 40) = 0x80000001C4FB83A0;
      *(v26 + 48) = v43;
      *(v26 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v11;
}

uint64_t sub_1C4BFA5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BFA230(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t *sub_1C4BFA680(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_1C4F01D98();
  sub_1C43FCDF8();
  v28 = v16;
  v29 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v27 = v18 - v17;
  sub_1C4F01D58();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v20 = sub_1C4F00D88();
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1C43FBCC4();
  v8[2] = a1;
  v8[3] = a2;
  v31 = *a3;
  v32 = *(a3 + 4);
  sub_1C456902C(&qword_1EC0C4970, &unk_1C4F5CF90);
  v21 = swift_allocObject();
  *(v21 + 56) = 0;
  v22 = a3[1];
  *(v21 + 16) = *a3;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a3 + 4);
  v8[4] = v21;
  v8[5] = a4;
  v8[6] = a5;
  type metadata accessor for EntityRelevanceInferenceCore();
  swift_allocObject();
  sub_1C448DB48(&v31, v30);

  sub_1C445FFF0(&v32, v30, &qword_1EC0BB018, qword_1C4F50870);

  v24 = sub_1C470A450(v23);
  if (v7)
  {

    sub_1C4471348(&v31);

    sub_1C4420C3C(&v32, &qword_1EC0BB018, qword_1C4F50870);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8[7] = v24;
    sub_1C4665684();
    sub_1C4F00D78();
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1C4490264(&qword_1EDDF0418, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4A54BDC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4F020C8();
    (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
    v25 = sub_1C4F01DC8();

    sub_1C4471348(&v31);

    sub_1C4420C3C(&v32, &qword_1EC0BB018, qword_1C4F50870);
    v8[8] = v25;
    v8[9] = a6;
  }

  return v8;
}

void sub_1C4BFAA64()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 14);
  sub_1C4CFDDC4();

  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_1C4BFAAE0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  *(v0 + 64) = v2;
  os_unfair_lock_lock((v2 + 56));
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  *(v0 + 48) = *(v2 + 48);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  sub_1C4CFDDC4();
  os_unfair_lock_unlock((v2 + 56));
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v12 = *(v1 + 16);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  *(v9 + 32) = v8;
  *(v9 + 40) = v2;
  *(v9 + 48) = v7;
  *(v9 + 56) = v12;
  *(v9 + 72) = v6;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1C4BFAC44;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C4BFAC44()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4BFAD5C, 0, 0);
}

uint64_t sub_1C4BFAD5C()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 56));
  sub_1C4BFBEAC((v1 + 16));
  os_unfair_lock_unlock((*(v0 + 64) + 56));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C4BFAE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v37 = sub_1C4F00D58();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4F00D88();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v35 = *(a2 + 64);
  (*(v18 + 16))(&v30 - v20, a1, v17, v19);
  v22 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = a4;
  *(v23 + 4) = a5;
  v24 = v32;
  *(v23 + 5) = v31;
  *(v23 + 6) = v24;
  *(v23 + 7) = v33;
  *(v23 + 8) = a9;
  (*(v18 + 32))(&v23[v22], v21, v17);
  aBlock[4] = sub_1C4BFC2C8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F44029C0;
  v25 = _Block_copy(aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = v34;
  sub_1C4F00D78();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1C4490264(&qword_1EDDFCF08, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4A54BDC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
  v28 = v36;
  v27 = v37;
  sub_1C4F020C8();
  MEMORY[0x1C6940AA0](0, v26, v28, v25);
  _Block_release(v25);
  (*(v40 + 8))(v28, v27);
  (*(v38 + 8))(v26, v39);
}

void sub_1C4BFB208(void *a1, uint64_t a2, os_unfair_lock_s *a3)
{
  if (a1[2])
  {
    v4 = a1[4];
    v5 = a1[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C0C2D8(v4, v5, v22);

    v24[0] = v22[0];
    v24[1] = v22[1];
    v25 = v23;
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(a3 + 14);
    sub_1C4BFC344(&a3[4]);
    os_unfair_lock_unlock(a3 + 14);
    sub_1C4BFC36C(v24);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "No feature view dependencies specified. Stopping since there's nowhere to retrieve features from", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C470CDF4();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 4;
    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v14 = v11;
    v21 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();

    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1C43F8000, v21, v15, "Failed to update entity relevance inferences due to missing view client: %@", v16, 0xCu);
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);

      v20 = v21;
    }

    else
    {

      v20 = v11;
    }
  }
}

uint64_t sub_1C4BFB594(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v30 = a4;
  v31 = a6;
  v39 = a5;
  v29 = a3;
  v11 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  v16 = *(a1 + 16);
  v17 = *a1;
  v18 = a1[3];
  v19 = a1[4];
  v28[0] = a1[1];
  v28[1] = v18;
  v28[2] = v19;
  v34 = v17;
  v35 = v28[0];
  v36 = v16;
  v37 = v18;
  v38 = v19;
  (*(v12 + 16))(v15, a8, v11, v13);
  v20 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v16;
  v22 = v30;
  *(v21 + 32) = v29;
  *(v21 + 40) = v22;
  v23 = v39;
  v24 = v39[1];
  *(v21 + 48) = *v39;
  *(v21 + 64) = v24;
  v25 = v31;
  v26 = v32;
  *(v21 + 80) = *(v23 + 4);
  *(v21 + 88) = v25;
  *(v21 + 96) = v26;
  (*(v12 + 32))(v21 + v20, v15, v11);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BFC460(v39, v33);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BF9E2C(sub_1C4BFC3C0, v21);
}

uint64_t sub_1C4BFB7B8(void (*a1)(void), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v11 = a7[1];
  v40 = *a7;
  v41 = v11;
  *&v42 = *(a7 + 4);
  sub_1C470B7CC(a4, a5, a6, &v40, a8, a9, v43);
  if (v9)
  {
    v12 = v9;
    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = a1;
    v12 = v43[0];
    v32 = v43[3];
    v33 = v43[1];
    v30 = v43[5];
    v44 = v43[0];
    v35 = *(v43[0] + 16);
    sub_1C445FFF0(&v44, &v40, &qword_1EC0C4968, qword_1C4F5CF10);

    v21 = 0;
    v34 = v12;
    for (i = v12 + 7; ; i += 4)
    {
      if (v35 == v21)
      {
        sub_1C4420C3C(&v44, &qword_1EC0C4968, qword_1C4F5CF10);

        sub_1C4420C3C(&v44, &qword_1EC0C4968, qword_1C4F5CF10);

        goto LABEL_14;
      }

      if (v21 >= v34[2])
      {
        break;
      }

      v23 = *(i - 1);
      v24 = *i;
      v25 = *(i - 2);
      v39[0] = *(i - 3);
      v39[1] = v25;
      v39[2] = v23;
      v39[3] = v24;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v33(&v36, v39);

      v26 = v36;
      v27 = v37;
      v12 = *(&v38 + 1);
      v28 = v38;
      v40 = v36;
      v41 = v37;
      v42 = v38;
      if (v32(&v40))
      {
        v40 = v26;
        v41 = v27;
        v42 = __PAIR128__(v12, v28);
        v30(&v36, &v40);
        sub_1C4BFC50C(v26, *(&v26 + 1));
        v40 = v36;
        v41 = v37;
        v42 = v38;
        sub_1C4BFBC48(&v40, v31);
      }

      else
      {
        sub_1C4BFC50C(v26, *(&v26 + 1));
      }

      ++v21;
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DF70);
  v14 = v12;
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CE8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1C43F8000, v15, v16, "Failed to update entity relevance inferences: %@", v17, 0xCu);
    sub_1C4420C3C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v18, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  else
  {
  }

LABEL_14:
  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  return sub_1C4F01818();
}

uint64_t sub_1C4BFBC48(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v25 = a1[3];
  v7 = a1[5];
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v3, v4, &v26);
    _os_log_impl(&dword_1C43F8000, v9, v10, "Computed entity relevance for: %s", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    v14 = v12;
    a2 = v11;
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_1C4F0D480;
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69A0138];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = v18;
  *(v15 + 32) = v3;
  *(v15 + 40) = v4;
  v19 = MEMORY[0x1E69A0168];
  *(v15 + 96) = MEMORY[0x1E69E63B0];
  *(v15 + 104) = v19;
  *(v15 + 72) = v5;
  *(v15 + 136) = v17;
  *(v15 + 144) = v18;
  v20 = v25;
  if (!v6)
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v6)
  {
    v21 = v6;
  }

  v22 = MEMORY[0x1E69E7360];
  *(v15 + 112) = v20;
  *(v15 + 120) = v21;
  v23 = MEMORY[0x1E69A01D0];
  *(v15 + 176) = v22;
  *(v15 + 184) = v23;
  *(v15 + 152) = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  a2(v16);
}

void sub_1C4BFBEAC(__int128 *a1)
{
  v3 = sub_1C4EF98F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = a1[1];
  v30 = *a1;
  v31 = v10;
  v32 = *(a1 + 4);
  v11 = sub_1C4947844();
  if (v1)
  {
  }

  else
  {
    v12 = v11;
    v13 = *(v4 + 16);
    v13(v9, *(*(&v31 + 1) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v3);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v13(v6, v9, v3);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v17 = 134218242;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2080;
      sub_1C4490264(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v28 = v16;
      v18 = sub_1C4F02858();
      v20 = v19;
      v27 = v15;
      v21 = *(v4 + 8);
      v21(v6, v3);
      v22 = sub_1C441D828(v18, v20, &v33);

      *(v17 + 14) = v22;
      v23 = v27;
      _os_log_impl(&dword_1C43F8000, v27, v28, "writing %ld entity relevance rows to %s", v17, 0x16u);
      v24 = v29;
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v24, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);

      v21(v9, v3);
    }

    else
    {

      v25 = *(v4 + 8);
      v25(v6, v3);
      v25(v9, v3);
    }
  }
}

uint64_t sub_1C4BFC1EC()
{

  return v0;
}

uint64_t sub_1C4BFC23C()
{
  sub_1C4BFC1EC();

  return swift_deallocClassInstance();
}

void sub_1C4BFC2C8()
{
  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_1C4BFB208(v1, v2, v3);
}

uint64_t sub_1C4BFC3C0()
{
  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v10 = *(v0 + 96);
  v1 = sub_1C442D680();
  return sub_1C4BFB7B8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1C4BFC4BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *))
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4BFA124(a1, v5, a3);
}

uint64_t sub_1C4BFC50C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C4BFC5E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4BFC638(uint64_t result)
{
  if (result)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4BFC6A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v9 = *v1;
  v8 = v4;
  a1[3] = &type metadata for EntityRelevanceRankingDatabaseTable;
  a1[4] = &off_1F43E9D58;
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 16) = *v1;
  *(v5 + 32) = *(v1 + 2);
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  sub_1C448DB48(&v9, v7);

  return sub_1C4AF994C(&v8, v7);
}

void sub_1C4BFC748(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa(0) + 56));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(v8 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v33 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v13 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      v14 = *(v13 + 72);
      v31 = v11;
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C4F0D480;
      v17 = (v16 + v15);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v17 = 1684628589;
      v17[1] = 0xE400000000000000;
      v18 = v10;
      v19 = (v17 + v14);
      sub_1C4EFBDE8();
      sub_1C441A7B0();
      *v19 = v20;
      v19[1] = v21;
      v22 = (v17 + 2 * v14);
      sub_1C4EFBDD8();
      sub_1C4407EB0();
      *v22 = v23;
      v22[1] = v24;
      v25 = (v17 + 3 * v14);
      sub_1C4EFBE08();
      *v25 = 0xD000000000000010;
      v25[1] = 0x80000001C4FB97A0;
      a4[3] = &type metadata for EntityRelevanceRankingDatabaseTable;
      a4[4] = &off_1F43E9D58;
      v26 = swift_allocObject();
      *a4 = v26;
      *(v26 + 16) = v18;
      *(v26 + 24) = v9;
      *(v26 + 32) = v31;
      *(v26 + 40) = v33;
      *(v26 + 48) = v16;
    }
  }

  else
  {
    sub_1C450B034();
    v27 = swift_allocError();
    *v28 = a1;
    v28[1] = a2;
    sub_1C442D690(v27, v28);
    sub_1C44010A8(v32, v29, v30);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BFC9A4()
{
  v6 = sub_1C440B5BC();
  v8 = (v2 + *(v6 + 56));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(v8 + 16);
    v27 = 0uLL;
    sub_1C4417990(v6, v7, v4 & 1);
    if (!v1)
    {
      v13 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      type metadata accessor for ViewDatabaseArtifact.Property(0);
      sub_1C44139CC();
      v15 = *(v14 + 72);
      v16 = sub_1C44127D8();
      sub_1C4432C90(v16, xmmword_1C4F0D480);
      sub_1C4EFBDD8();
      sub_1C442063C();
      sub_1C441A7B0();
      sub_1C4403954(v17);
      sub_1C4407EB0();
      *v11 = v18;
      v11[1] = v19;
      v20 = (v5 + 3 * v15);
      v21 = sub_1C43FE010();
      *v20 = 0xD000000000000010;
      v20[1] = v11;
      v28[0] = v10;
      v28[1] = v9;
      v29 = v32;
      v30 = v13;
      v31 = v16;
      MEMORY[0x1EEE9AC00](v21);
      v26[2] = v28;
      sub_1C446C37C(sub_1C4BFCD78, v26);
    }
  }

  else
  {
    sub_1C450B034();
    v22 = swift_allocError();
    *v23 = v3;
    v23[1] = v0;
    sub_1C442D690(v22, v23);
    sub_1C44010A8(v27, v24, v25);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BFCB8C()
{
  v6 = sub_1C440B5BC();
  v8 = v2 + *(v6 + 56);
  if (*(v8 + 8))
  {
    v9 = *(v8 + 16);
    sub_1C4417990(v6, v7, v4 & 1);
    if (!v1)
    {
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      type metadata accessor for ViewDatabaseArtifact.Property(0);
      sub_1C44139CC();
      v11 = *(v10 + 72);
      v12 = sub_1C44127D8();
      sub_1C4432C90(v12, xmmword_1C4F0D480);
      sub_1C4EFBDD8();
      sub_1C442063C();
      sub_1C441A7B0();
      sub_1C4403954(v13);
      sub_1C4407EB0();
      *v9 = v14;
      v9[1] = v15;
      v16 = (v5 + 3 * v11);
      sub_1C43FE010();
      *v16 = 0xD000000000000010;
      v16[1] = v9;
      sub_1C4CFDDC4();
    }
  }

  else
  {
    sub_1C450B034();
    v17 = swift_allocError();
    *v18 = v3;
    v18[1] = v0;
    sub_1C442D690(v17, v18);
    sub_1C44010A8(v21, v19, v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BFCDA4()
{
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1C4EF9F88();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v17 = *(v8 + 8);
  v39 = v8 + 8;
  v40 = v7;
  v36 = v17;
  v17(v10, v7);
  v18 = *MEMORY[0x1E6969AB0];
  v19 = *(v1 + 104);
  v19(v6, v18, v0);
  v35 = sub_1C4EF9F78();
  v20 = *(v1 + 8);
  v20(v6, v0);
  v19(v6, v18, v0);
  v19(v3, *MEMORY[0x1E6969A10], v0);
  v21 = sub_1C4EF9F48();
  v23 = v22;
  LOBYTE(v8) = v24;
  v20(v3, v0);
  v25 = (v20)(v6, v0);
  if (v8)
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v25);
    v27 = v35;
    *(&v34 - 4) = v16;
    *(&v34 - 3) = v27;
    *(&v34 - 2) = v13;
    sub_1C49BFC78(sub_1C4BFF3A4, (&v34 - 6), v21, v23, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    v26 = v32;
  }

  v36(v13, v40);
  (*(v37 + 8))(v16, v38);
  return v26;
}

uint64_t sub_1C4BFD138()
{
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = sub_1C4EF9CD8();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EF9F88();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9C88();
  v13 = *MEMORY[0x1E6969A58];
  v14 = *(v1 + 104);
  v14(v6, v13, v0);
  v30 = sub_1C4EF9F78();
  v15 = *(v1 + 8);
  v15(v6, v0);
  v14(v6, v13, v0);
  v14(v3, *MEMORY[0x1E6969A48], v0);
  v16 = sub_1C4EF9F48();
  v18 = v17;
  v20 = v19;
  v15(v3, v0);
  v21 = (v15)(v6, v0);
  if (v20)
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    v23 = v30;
    *(&v30 - 4) = v12;
    *(&v30 - 3) = v23;
    *(&v30 - 2) = v9;
    sub_1C49BFC78(sub_1C4BFF37C, (&v30 - 6), v16, v18, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
    v22 = v28;
  }

  (*(v33 + 8))(v9, v34);
  (*(v31 + 8))(v12, v32);
  return v22;
}

uint64_t sub_1C4BFD47C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v8 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = *a1;
  result = (*(v10 + 104))(v13 - v12, *a5, v8);
  if (__OFSUB__(v15, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v10 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_1C4BFD59C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *a1;
  v13 = *(a1 + 2);
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featureNames;
  *(v6 + v14) = sub_1C4499940();
  v15 = v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database;
  *v15 = v19;
  *(v15 + 16) = v13;
  *(v15 + 24) = *(a1 + 24);
  sub_1C463F29C(a2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_config);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_dayOfWeekBins) = sub_1C4BFCDA4();
  v16 = sub_1C4BFD138();
  v17 = sub_1C4EF9CD8();
  (*(*(v17 - 8) + 8))(a6, v17);
  sub_1C445F57C(a2);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_hourOfDayBins) = v16;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featurizer) = a4;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_behaviorDatabase) = a5;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_graphStore) = a3;
  return v6;
}

uint64_t sub_1C4BFD6E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  v41 = a4;
  v39 = a1;
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442D6AC(v10, v35);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1C456902C(&qword_1EC0C4978, &qword_1C4F5D128);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = *(v4 + *a3);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v35 = &v35 - v15;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v17, 0);
    v18 = v44;
    v21 = *(v8 + 16);
    v19 = v8 + 16;
    v20 = v21;
    v22 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v36 = *(v19 + 56);
    v37 = v19;
    v23 = (v19 - 8);
    do
    {
      v20(v13, v22, v6);
      v20(v38, v13, v6);
      v42 = 0;
      LOWORD(v43) = 256;
      type metadata accessor for BehaviorContext(0);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v41, 1, v39, v24, v25, v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      v30 = v29;

      (*v23)(v13, v6);
      v44 = v18;
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C459D100(v31 > 1, v32 + 1, 1);
        v18 = v44;
      }

      *(v18 + 16) = v32 + 1;
      *(v18 + 8 * v32 + 32) = v30;
      v22 += v36;
      --v17;
    }

    while (v17);
  }

  sub_1C4577DBC();
  v42 = v18;
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C4F0D130;
  *(v33 + 32) = *(v18 + 16);
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  sub_1C4BFF2D0();
  sub_1C4F00998();
  return sub_1C4F01D08();
}

uint64_t sub_1C4BFD9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v45 = a2;
  v47 = a4;
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C442D6AC(v6, v38);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  v11 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v43 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v42 = v24 - v23;
  v25 = a1;
  sub_1C45D5A24(v19);
  v26 = *MEMORY[0x1E69A9468];
  v46 = *(v13 + 104);
  v46(v16, v26, v11);
  sub_1C4BFF334(&qword_1EDDEFFB8, MEMORY[0x1E69A9478], MEMORY[0x1E69A9498]);
  sub_1C4401124();
  sub_1C442066C();
  v27 = *(v13 + 8);
  v27(v16, v11);
  v27(v19, v11);
  if (v49 == v48)
  {
    v28 = sub_1C45D2400();
    v29 = v44;
    sub_1C465C294(v28, v30, v45);

LABEL_3:
    if (sub_1C44157D4(v29, 1, v20) == 1)
    {
      sub_1C47781FC(v29);
LABEL_16:
      v33 = 1;
      v31 = v47;
      return sub_1C440BAA8(v31, v33, 1, v20);
    }

    v31 = v47;
    goto LABEL_13;
  }

  sub_1C45D5A24(v19);
  v46(v16, *MEMORY[0x1E69A9458], v11);
  sub_1C4401124();
  sub_1C442066C();
  v27(v16, v11);
  v27(v19, v11);
  if (v49 != v48)
  {
    sub_1C45D5A24(v19);
    v46(v16, *MEMORY[0x1E69A9420], v11);
    sub_1C4401124();
    sub_1C442066C();
    v27(v16, v11);
    v27(v19, v11);
    if (v49 != v48)
    {
      goto LABEL_16;
    }

    sub_1C45D2400();
    v29 = v41;
    sub_1C4EFF0D8();
    goto LABEL_3;
  }

  v31 = v47;
  if (*(v25 + 40) != 14)
  {
    goto LABEL_11;
  }

  v32 = *(v25 + 8);
  v33 = 1;
  if (v32 && (*(v25 + 20) & 1) != 0)
  {
    v34 = *v25;
    v29 = v39;
    sub_1C465C294(v34, v32, v40);
    if (sub_1C44157D4(v29, 1, v20) != 1)
    {
LABEL_13:
      v35 = v42;
      v36 = *(v43 + 32);
      v36(v42, v29, v20);
      v36(v31, v35, v20);
      v33 = 0;
      return sub_1C440BAA8(v31, v33, 1, v20);
    }

    sub_1C47781FC(v29);
LABEL_11:
    v33 = 1;
  }

  return sub_1C440BAA8(v31, v33, 1, v20);
}

uint64_t sub_1C4BFDE68(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_graphStore);
  v35 = sub_1C4708580(v4);
  v34 = sub_1C4708EDC(v4);
  v5 = *(a1 + 16);
  v6 = (a1 + 72);
  for (i = MEMORY[0x1E69E7CC0]; v5; --v5)
  {
    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *(v6 - 4);
    v11 = *(v6 - 3);
    v12 = *v6;
    *&v36 = *(v6 - 5);
    *(&v36 + 1) = v10;
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v40 = v12;
    v13 = sub_1C440B5E8();
    sub_1C45D7F78(v13, v14, v15, v16, v17, v18);
    sub_1C4BFDFE8(&v36, v33, v35, v34, a2, &v41);
    v19 = sub_1C440B5E8();
    sub_1C45A23B4(v19, v20, v21, v22, v23, v24);
    v25 = v41;
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458B994();
        i = v27;
      }

      v26 = *(i + 16);
      if (v26 >= *(i + 24) >> 1)
      {
        sub_1C458B994();
        i = v28;
      }

      *(i + 16) = v26 + 1;
      *(i + 8 * v26 + 32) = v25;
    }

    v6 += 48;
  }

  sub_1C45FAC9C(i);
  v30 = v29;

  return v30;
}

void sub_1C4BFDFE8(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v82 = a2;
  v11 = sub_1C4EFDAB8();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - v14;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = a1[1];
  v84 = *a1;
  v85[0] = v23;
  v24 = *(a1 + 25);
  v26 = v25;
  *(v85 + 9) = v24;
  sub_1C4BFD9FC(&v84, a3, a4, v15);
  if (sub_1C44157D4(v15, 1, v26) == 1)
  {
    sub_1C47781FC(v15);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDE0);
    sub_1C45A2358(&v84, v83);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CB8();
    sub_1C45EC75C(&v84);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83[0] = v31;
      *v30 = 136315138;
      v32 = sub_1C45D58F8();
      v34 = sub_1C441D828(v32, v33, v83);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1C43F8000, v28, v29, "Behavior identifier %s could not be mapped to MDID", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    v35 = 0;
  }

  else
  {
    v81 = a6;
    v77 = v6;
    (*(v17 + 32))(v22, v15, v26);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DDE0);
    v37 = *(v17 + 16);
    v75 = v22;
    v37(v19, v22, v26);
    sub_1C45A2358(&v84, v83);
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CB8();
    sub_1C45EC75C(&v84);
    v40 = os_log_type_enabled(v38, v39);
    v76 = v17;
    v74 = v26;
    if (v40)
    {
      v41 = v26;
      v42 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83[0] = v73;
      *v42 = 136315394;
      v43 = sub_1C45D2400();
      v45 = sub_1C441D828(v43, v44, v83);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      sub_1C4BFF334(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
      v46 = sub_1C4F02858();
      v48 = v47;
      v49 = v41;
      v50 = *(v17 + 8);
      v50(v19, v49);
      v51 = sub_1C441D828(v46, v48, v83);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1C43F8000, v38, v39, "[EntitySimilarityFeatureView] Mapping %s to %s", v42, 0x16u);
      v52 = v73;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v52, -1, -1);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    else
    {

      v50 = *(v17 + 8);
      v50(v19, v26);
    }

    sub_1C45A2358(&v84, v83);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CB8();
    sub_1C45EC75C(&v84);
    v55 = os_log_type_enabled(v53, v54);
    a6 = v81;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v83[0] = v57;
      *v56 = 136315138;
      v58 = v78;
      sub_1C45D5A24(v78);
      sub_1C4BFF334(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
      v59 = v50;
      v60 = v80;
      v61 = sub_1C4F02858();
      v63 = v62;
      v64 = v60;
      v50 = v59;
      (*(v79 + 8))(v58, v64);
      v65 = sub_1C441D828(v61, v63, v83);

      *(v56 + 4) = v65;
      _os_log_impl(&dword_1C43F8000, v53, v54, "[EntitySimilarityFeatureView] BehaviorType %s", v56, 0xCu);
      sub_1C440962C(v57);
      a6 = v81;
      MEMORY[0x1C6942830](v57, -1, -1);
      MEMORY[0x1C6942830](v56, -1, -1);
    }

    v66 = v86;
    v67 = sub_1C4BFD6E4(&v84, v86, &OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_dayOfWeekBins, 3);
    v68 = sub_1C4BFD6E4(&v84, v66, &OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_hourOfDayBins, 0);
    sub_1C456902C(&qword_1EC0B9D08, &qword_1C4F11670);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C4F0CE60;
    *(v35 + 32) = 0xD00000000000001DLL;
    *(v35 + 40) = 0x80000001C4F869C0;
    v69 = v75;
    *(v35 + 48) = sub_1C4EFF048();
    *(v35 + 56) = v70;
    *(v35 + 64) = v67;
    *(v35 + 72) = 0xD00000000000001DLL;
    *(v35 + 80) = 0x80000001C4F869E0;
    v71 = v67;
    *(v35 + 88) = sub_1C4EFF048();
    *(v35 + 96) = v72;
    *(v35 + 104) = v68;

    v50(v69, v74);
  }

  *a6 = v35;
}

uint64_t sub_1C4BFE7BC()
{
  v2 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = (v13 - v12);
  v15 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featurizer);
  sub_1C4EF9C88();
  sub_1C460299C(v14);
  if (v1)
  {
    return (*(v10 + 8))(v14, v8);
  }

  v30 = v15;
  (*(v10 + 8))(v14, v8);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v17 = *(v32 + 72);
  v18 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D480;
  v20 = v19 + v18;
  v21 = *(v32 + 104);
  v21(v19 + v18, *MEMORY[0x1E69A9468], v2);
  v21(v20 + v17, *MEMORY[0x1E69A9410], v2);
  v21(v20 + 2 * v17, *MEMORY[0x1E69A9420], v2);
  v21(v20 + 3 * v17, *MEMORY[0x1E69A9458], v2);
  v33 = MEMORY[0x1E69E7CC0];
  v22 = 4;
  sub_1C459D890(0, 4, 0);
  v31 = *(v32 + 16);
  do
  {
    v31(v7, v20, v2);
    sub_1C45ED17C();
    v23 = sub_1C45EA9C0(v7);
    v24 = v2;
    (*(v32 + 8))(v7, v2);

    v26 = *(v33 + 16);
    v25 = *(v33 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C459D890(v25 > 1, v26 + 1, 1);
    }

    *(v33 + 16) = v26 + 1;
    *(v33 + 8 * v26 + 32) = v23;
    v20 += v17;
    --v22;
    v2 = v24;
  }

  while (v22);
  swift_setDeallocating();
  sub_1C49E1558();
  sub_1C45FAED4(v33);
  v28 = v27;

  v29 = sub_1C4BFDE68(v28, v30);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811E40(v29);

  sub_1C47D32C8();

  return sub_1C4BFEC54();
}

uint64_t sub_1C4BFEE7C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database);
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v3;
  v7[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C463F21C, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C4BFEF78()
{
  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_config);

  return v0;
}

uint64_t sub_1C4BFF038()
{
  sub_1C4BFEF78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntitySimilarityFeatureView(uint64_t a1)
{
  result = qword_1EDDE0800;
  if (!qword_1EDDE0800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BFF0E4(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BFF1A0()
{
  sub_1C4BFE7BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BFF218()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4BFEE5C();
}

unint64_t sub_1C4BFF2D0()
{
  result = qword_1EDDDBBF8;
  if (!qword_1EDDDBBF8)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBF8);
  }

  return result;
}

uint64_t sub_1C4BFF334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4BFF3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  swift_unownedRetainStrong();
  v15 = a3;
  v16 = a4;
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, v15);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      swift_unownedRetainStrong();

      sub_1C443A738(a1, a2, v17, v18, v19, v20, v21, v22);

      v25 = *(v14 + *(v10 + 116));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C02434(v14, _s10ViewConfigVMa);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      swift_unownedRetainStrong();
      _s35EntityTaggingInferenceViewGeneratorCMa();
      v16 = swift_allocObject();

      sub_1C4BFF768(v28, v29, v30, v31, v26, a4);
    }

    else
    {
      v16 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = xmmword_1C4F5B670;
      *(v23 + 32) = 0xD000000000000025;
      *(v23 + 40) = 0x80000001C4FB83A0;
      *(v23 + 48) = v27;
      *(v23 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v16;
}

uint64_t sub_1C4BFF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BFF3CC(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BFF6E8()
{

  return v0;
}

uint64_t sub_1C4BFF734()
{
  sub_1C4BFF6E8();

  return swift_deallocClassInstance();
}

void *sub_1C4BFF768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1C4F01D98();
  sub_1C43FCDF8();
  v28 = v14;
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v27 = v16 - v15;
  sub_1C4F01D58();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v18 = sub_1C4F00D88();
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FBCC4();
  v6[6] = 0x3FE999999999999ALL;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C472B548(v19);
  _s35EntityTaggingInferenceViewGeneratorC12SendableInfoCMa();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = v20;
  sub_1C456902C(&qword_1EC0C4990, &qword_1C4F5D258);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v21;
  v7[2] = v22;
  v7[3] = a5;
  v7[5] = a6;
  type metadata accessor for EntityTaggingInferenceCore();
  swift_allocObject();
  v23 = swift_retain_n();
  v24 = sub_1C4729DAC(v23);
  if (v31)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[4] = v24;
    sub_1C4461BB8(0, &qword_1EDDFA4A0, 0x1E69E9610);
    sub_1C4F00D78();
    sub_1C4490264(&qword_1EDDF0418, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4A54BDC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4F020C8();
    (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
    v25 = sub_1C4F01DC8();

    v7[7] = v25;
  }

  return v7;
}

void sub_1C4BFFB40()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CFDCF8(v3, v4, v5, v6);

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4BFFBDC()
{
  v1[35] = v0;
  v1[36] = *v0;
  type metadata accessor for EntityTaggingInjectedTags(0);
  v1[37] = sub_1C43FBE7C();
  v2 = sub_1C4EFF488();
  v1[38] = v2;
  sub_1C43FCF7C(v2);
  v1[39] = v3;
  v1[40] = sub_1C43FBE7C();
  sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v1[41] = sub_1C43FBE7C();
  v4 = sub_1C4EFF0C8();
  v1[42] = v4;
  sub_1C43FCF7C(v4);
  v1[43] = v5;
  v1[44] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4BFFD54, 0, 0);
}

uint64_t sub_1C4BFFD54()
{
  v94 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[45] = v2;
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CFDCF8(v5, v4, v6, v7);

  os_unfair_lock_unlock((v2 + 24));
  v8 = *(v1 + 40);
  sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, v93);
  v9 = v93[2];
  v11 = v93[3];
  v10 = v93[4];
  v88 = v8;
  v0[46] = v93[1];
  v0[47] = v11;
  v0[48] = v10;
  v12 = swift_task_alloc();
  *(v12 + 16) = &unk_1F43D6800;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v13 = sub_1C49A529C(sub_1C470CB14, v12);
  v0[49] = v13;

  v90 = v13;
  if (*(v13 + 16))
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Entity Tagging: Deleting all events in EntityTaggingInference Biome stream", v17, 2u);
      sub_1C43FBE2C();
    }

    os_unfair_lock_lock((v2 + 24));
    v18 = *(*(v2 + 16) + 48);
    sub_1C472ABA4(v18);

    os_unfair_lock_unlock((v2 + 24));
  }

  v89 = v2;
  v19 = v0[43];
  v20 = v0[39];
  sub_1C456902C(&qword_1EC0B8F48, &qword_1C4F0EA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C4F86030;
  *(inited + 48) = &unk_1F43D6850;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  v22 = swift_task_alloc();
  *(v22 + 16) = 0;
  *(v22 + 24) = inited;
  *(v22 + 32) = v9;
  *(v22 + 40) = v11;
  *(v22 + 48) = v10;
  *(v22 + 56) = 0;
  v23 = sub_1C49A5498(sub_1C470CD1C, v22);
  swift_setDeallocating();
  sub_1C49E15C4();

  v24 = 0;
  v87 = (v19 + 32);
  v92.i64[0] = *(v23 + 16);
  v82 = v20 + 32;
  v83 = v19 + 16;
  v81 = v20 + 40;
  v84 = v19;
  v85 = (v19 + 8);
  v86 = v20;
  v25 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v91 = v25;
    v0[50] = v25;
    for (i = 80 * v24 + 32; ; i += 80)
    {
      if (v92.i64[0] == v24)
      {
        v66 = v0[37];
        v67 = v0[35];

        v92 = *(v67 + 24);
        sub_1C44098F0(v88 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v66);
        v68 = sub_1C472B6C4();
        v33 = v68;
        v23 = v89;
        if (v68 && !*(v68 + 16))
        {

          v33 = 0;
        }

        if (qword_1EDDFECD0 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_39;
      }

      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      memcpy(v0 + 2, (v23 + i), 0x49uLL);
      sub_1C470CD44((v0 + 2), (v0 + 12));
      v27 = objc_autoreleasePoolPush();
      sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      v28 = sub_1C4F01D38();
      objc_autoreleasePoolPop(v27);
      if (v28)
      {
        break;
      }

      sub_1C470CDA0((v0 + 2));
LABEL_15:
      ++v24;
    }

    v30 = v0[41];
    v29 = v0[42];
    v31 = [v28 stringValue];

    sub_1C4F01138();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v30, 1, v29) == 1)
    {
      v32 = v0[41];
      sub_1C470CDA0((v0 + 2));

      sub_1C4420C3C(v32, &unk_1EC0BA0E0, &qword_1C4F105A0);
      goto LABEL_15;
    }

    v33 = v0[44];
    (*v87)(v33, v0[41], v0[42]);
    sub_1C4EFFA88();

    swift_isUniquelyReferenced_nonNull_native();
    v93[0] = v91;
    sub_1C44E3664();
    if (__OFADD__(*(v91 + 16), (v35 & 1) == 0))
    {
      __break(1u);
LABEL_39:
      sub_1C44066DC(&qword_1EDDFECD0);
LABEL_29:
      v69 = sub_1C4F00978();
      sub_1C442B738(v69, qword_1EDE2DF70);
      v70 = sub_1C4F00968();
      v71 = sub_1C4F01CF8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1C43F8000, v70, v71, "Entity Tagging: Injected Entity Tags present, skipping inference step.", v72, 2u);
        sub_1C43FBE2C();
      }

      v0[51] = 0;
      v0[52] = v33;
      v74 = v0[35];
      v73 = v0[36];
      v75 = swift_task_alloc();
      v0[53] = v75;
      v75[1].i64[0] = v74;
      v75[1].i64[1] = v90;
      v75[2].i64[0] = v23;
      v75[2].i64[1] = v33;
      v75[3] = vextq_s8(v92, v92, 8uLL);
      v75[4].i64[0] = v91;
      v75[4].i64[1] = 0x3FE999999999999ALL;
      v75[5].i64[0] = v73;
      v76 = swift_task_alloc();
      v0[54] = v76;
      *v76 = v0;
      v76[1] = sub_1C4C0077C;
      sub_1C43FE030();

      return MEMORY[0x1EEE6DDE0]();
    }

    v36 = v34;
    v37 = v35;
    sub_1C456902C(&qword_1EC0C4980, &qword_1C4F5D1D0);
    v38 = sub_1C4F02458();
    v25 = v93[0];
    if ((v38 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1C44E3664();
    if ((v37 & 1) == (v44 & 1))
    {
      v36 = v38;
LABEL_20:
      if (v37)
      {
        v45 = sub_1C4432CB0(v38, v0[40], v0[38], v39, v40, v41, v42, v43, v80, v81, v82, v83, v84, v85, v86);
        (*(v46 + 40))(v45);
LABEL_24:
        ++v24;
        v64 = v0[44];
        v65 = v0[42];
        sub_1C470CDA0((v0 + 2));
        (*v85)(v64, v65);
        continue;
      }

      v47 = v0[44];
      v48 = v0[42];
      v49 = v0[40];
      v50 = v0[38];
      *(v25 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v51 = (*(v84 + 16))(*(v25 + 48) + *(v84 + 72) * v36, v47, v48);
      v59 = sub_1C4432CB0(v51, v52, v53, v54, v55, v56, v57, v58, v80, v81, v82, v83, v84, v85, v86);
      (*(v60 + 32))(v59, v49, v50);
      v61 = *(v25 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (!v62)
      {
        *(v25 + 16) = v63;
        goto LABEL_24;
      }

      __break(1u);
      return MEMORY[0x1EEE6DDE0]();
    }

    break;
  }

LABEL_35:
  sub_1C43FE030();

  return sub_1C4F029F8();
}

uint64_t sub_1C4C0077C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4C008F0, 0, 0);
}

void sub_1C4C008F0()
{
  v1 = v0[51];
  v2 = v0[45];
  os_unfair_lock_lock((v2 + 24));
  sub_1C4C01E38((v2 + 16));
  if (v1)
  {
    v3 = (v0[45] + 24);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = v0[37];
    os_unfair_lock_unlock((v0[45] + 24));

    swift_bridgeObjectRelease_n();

    sub_1C4C02434(v4, type metadata accessor for EntityTaggingInjectedTags);

    v5 = v0[1];

    v5();
  }
}

uint64_t sub_1C4C00A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v34[1] = a6;
  v35 = a8;
  v44 = a7;
  v36 = a10;
  v40 = sub_1C4F00D58();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4F00D88();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v37 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v34 - v24;
  v38 = *(a2 + 56);
  (*(v21 + 16))(v34 - v24, a1, v20, v23);
  v26 = (*(v21 + 80) + 72) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  v28 = v35;
  *(v27 + 48) = v44;
  *(v27 + 56) = v28;
  *(v27 + 64) = a9;
  (*(v21 + 32))(v27 + v26, v25, v20);
  *(v27 + ((v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  aBlock[4] = sub_1C4C0228C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F4402D70;
  v29 = _Block_copy(aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = v37;
  sub_1C4F00D78();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C4490264(&qword_1EDDFCF08, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4A54BDC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
  v32 = v39;
  v31 = v40;
  sub_1C4F020C8();
  MEMORY[0x1C6940AA0](0, v30, v32, v29);
  _Block_release(v29);
  (*(v43 + 8))(v32, v31);
  (*(v41 + 8))(v30, v42);
}

uint64_t sub_1C4C00E48(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + 16);
  for (i = (a1 + 40); v16; --v16)
  {
    v18 = *i;
    v20[0] = *(i - 1);
    v20[1] = v18;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C00F2C(v20, a2, a3, a4, a5, a6, a9, a7);

    i += 2;
  }

  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  return sub_1C4F01818();
}

void sub_1C4C00F2C(uint64_t *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CF8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1C441D828(v20, v21, &v35);
      _os_log_impl(&dword_1C43F8000, v23, v24, "Entity Tagging: Entity Identifier :%s is not valid", v25, 0xCu);
      sub_1C440962C(v26);
      MEMORY[0x1C6942830](v26, -1, -1);
      MEMORY[0x1C6942830](v25, -1, -1);
    }
  }

  else
  {
    v27 = (*(v17 + 32))(v19, v15, v16);
    MEMORY[0x1EEE9AC00](v27);
    v28 = v32;
    *(&v30 - 10) = v31;
    *(&v30 - 9) = v20;
    *(&v30 - 8) = v21;
    *(&v30 - 7) = v28;
    v29 = v34;
    *(&v30 - 6) = v33;
    *(&v30 - 5) = v29;
    *(&v30 - 4) = v19;
    *(&v30 - 3) = a8;
    *(&v30 - 2) = a7;
    os_unfair_lock_lock(a2 + 6);
    sub_1C4C0232C();
    os_unfair_lock_unlock(a2 + 6);
    if (v8)
    {
      __break(1u);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }
}

uint64_t sub_1C4C01278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v45 = a5;
  v46 = a7;
  v41 = a3;
  v42 = a6;
  v35[1] = a4;
  v43 = a10;
  v36 = sub_1C4EFF0C8();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v36);
  v18 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(*a1 + 24);
  v44 = *(*a1 + 16);
  v22 = v19[4];
  v21 = v19[5];
  v38 = v20;
  v39 = v22;
  v40 = v21;
  v37 = v19[6];
  v23 = v37;
  (*(v15 + 16))(v18, a8, v17);
  v24 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v41;
  *(v26 + 2) = a2;
  *(v26 + 3) = v27;
  v29 = v45;
  v28 = v46;
  *(v26 + 4) = a4;
  *(v26 + 5) = v29;
  *(v26 + 6) = v42;
  *(v26 + 7) = v28;
  *(v26 + 8) = v23;
  (*(v15 + 32))(&v26[v24], v18, v36);
  *&v26[v25] = a9;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = v39;

  v32 = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = v37;
  sub_1C4BF9F98(sub_1C4C02358, v26, v44, v30, v31, v32);
}

void sub_1C4C014D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  v60 = a1;
  v61 = a9;
  v59 = a2;
  v16 = sub_1C4EFFEB8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C456902C(&qword_1EC0C4988, qword_1C4F5D1D8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v55 - v23);
  if (a3)
  {
    v61 = v10;
    v25 = sub_1C4663244();
    if (!v25)
    {
      v25 = sub_1C4F00F28();
    }

    v26 = v25;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1C441D828(a4, a5, &v62);
      _os_log_impl(&dword_1C43F8000, v28, v29, "Entity Tagging: Retrieved injected EntityTags for: %s", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    v32 = 0;
  }

  else
  {
    v56 = v17;
    v57 = v22;
    v58 = v21;
    v41 = v24;
    sub_1C4729FCC(a4, a5, a8, v61);
    v61 = v10;
    if (v10)
    {
      v40 = v61;
      goto LABEL_13;
    }

    v55 = a4;
    sub_1C4EFEF58();
    v26 = sub_1C4EFFEA8();
    v56[1](v19, v16);
    v56 = v41;
    v32 = sub_1C4EFEF68();
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v50 = sub_1C4F00978();
    sub_1C442B738(v50, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CF8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_1C441D828(v55, a5, &v62);
      *(v53 + 12) = 2048;
      *(v53 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v51, v52, "Entity Tagging: Computed EntityTags for: %s (Event ID: %lld)", v53, 0x16u);
      sub_1C440962C(v54);
      MEMORY[0x1C6942830](v54, -1, -1);
      MEMORY[0x1C6942830](v53, -1, -1);
    }

    (*(v57 + 8))(v56, v58);
  }

  sub_1C4EFF0A8();
  v33 = sub_1C4F02B98();
  v62 = v32;
  v34 = sub_1C4F02858();
  sub_1C472ACF4(v33, v26, v34, v35, a10, a6);

  v36 = sub_1C4EFF068();
  v38 = sub_1C4C01B48(v36, v37, v26, v32);

  v39 = v61;
  v60(v38);
  if (!v39)
  {

    return;
  }

  v40 = v39;
LABEL_13:
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v42 = sub_1C4F00978();
  sub_1C442B738(v42, qword_1EDE2DF70);
  v43 = v40;
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CE8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    v48 = v40;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v49;
    *v47 = v49;
    _os_log_impl(&dword_1C43F8000, v44, v45, "Entity Tagging: Failed to update entity tagging inferences: %@", v46, 0xCu);
    sub_1C4420C3C(v47, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v47, -1, -1);
    MEMORY[0x1C6942830](v46, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C4C01B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F37DE0;
  v9 = MEMORY[0x1E69A0138];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4412800(0x726568746F6DLL);
  v10 = MEMORY[0x1E69E63B0];
  v11 = MEMORY[0x1E69A0168];
  *(v8 + 96) = MEMORY[0x1E69E63B0];
  *(v8 + 104) = v11;
  sub_1C4407ED0();
  *(v8 + 72) = v12;
  sub_1C4412800(0x726568746166);
  *(v8 + 136) = v10;
  *(v8 + 144) = v11;
  sub_1C4407ED0();
  *(v8 + 112) = v13;
  sub_1C4412800(0x746E65726170);
  *(v8 + 176) = v10;
  *(v8 + 184) = v11;
  sub_1C4407ED0();
  *(v8 + 152) = v14;
  sub_1C4412800(0x726574736973);
  *(v8 + 216) = v10;
  *(v8 + 224) = v11;
  sub_1C4407ED0();
  *(v8 + 192) = v15;
  sub_1C4403974(0x726568746F7262);
  *(v8 + 256) = v10;
  *(v8 + 264) = v11;
  sub_1C4407ED0();
  *(v8 + 232) = v16;
  sub_1C4403974(0x676E696C626973);
  *(v8 + 296) = v10;
  *(v8 + 304) = v11;
  sub_1C4407ED0();
  *(v8 + 272) = v17;
  sub_1C4412800(0x796C696D6166);
  *(v8 + 336) = v10;
  *(v8 + 344) = v11;
  sub_1C4407ED0();
  *(v8 + 312) = v18;
  sub_1C4412800(0x646E65697266);
  *(v8 + 376) = v10;
  *(v8 + 384) = v11;
  sub_1C4407ED0();
  *(v8 + 352) = v19;
  sub_1C465C024(0xD000000000000010, 0x80000001C4FB9970, a3);
  *(v8 + 416) = v10;
  *(v8 + 424) = v11;
  sub_1C4407ED0();
  *(v8 + 392) = v20;
  sub_1C4403974(0x72656E74726170);
  *(v8 + 456) = v10;
  *(v8 + 464) = v11;
  sub_1C4407ED0();
  *(v8 + 432) = v21;
  sub_1C465C024(0x72656B726F776F63, 0xE800000000000000, a3);
  *(v8 + 496) = v10;
  *(v8 + 504) = v11;
  sub_1C4407ED0();
  *(v8 + 472) = v22;
  sub_1C4412800(0x696E6D756C61);
  *(v8 + 536) = v10;
  *(v8 + 544) = v11;
  sub_1C4407ED0();
  *(v8 + 512) = v23;
  sub_1C465C024(0x646C696863, 0xE500000000000000, a3);
  *(v8 + 576) = v10;
  *(v8 + 584) = v11;
  sub_1C4407ED0();
  *(v8 + 552) = v24;
  sub_1C465C024(7237491, 0xE300000000000000, a3);
  *(v8 + 616) = v10;
  *(v8 + 624) = v11;
  sub_1C4407ED0();
  *(v8 + 592) = v25;
  sub_1C465C024(0x7265746867756164, 0xE800000000000000, a3);
  *(v8 + 656) = v10;
  *(v8 + 664) = v11;
  sub_1C4407ED0();
  *(v8 + 632) = v26;
  sub_1C4412800(0x666C6573796DLL);
  *(v8 + 696) = v10;
  *(v8 + 704) = v11;
  sub_1C4407ED0();
  *(v8 + 672) = v27;
  sub_1C4403974(0x6E776F6E6B6E75);
  *(v8 + 736) = v10;
  *(v8 + 744) = v11;
  sub_1C4407ED0();
  *(v8 + 712) = v28;
  *(v8 + 776) = MEMORY[0x1E69E7360];
  *(v8 + 784) = MEMORY[0x1E69A01D0];
  *(v8 + 752) = a4;
  return v8;
}

void sub_1C4C01E38(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C4EF98F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v10 = *(*a1 + 16);
  v9 = *(*a1 + 24);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4947740(v10, v9, v11, v12);
  if (v2)
  {
  }

  else
  {
    v29 = v13;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();

    v30 = v16;
    v17 = v16;
    v18 = v15;
    if (os_log_type_enabled(v15, v17))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      v27 = v19;
      *v19 = 134218242;
      *(v19 + 4) = v29;
      *(v19 + 12) = 2080;
      (*(v5 + 16))(v7, *(v11 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4);
      sub_1C4490264(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v29 = v18;
      v20 = sub_1C4F02858();
      v22 = v21;
      (*(v5 + 8))(v7, v4);
      v23 = sub_1C441D828(v20, v22, &v31);

      v24 = v27;
      *(v27 + 14) = v23;
      v25 = v29;
      _os_log_impl(&dword_1C43F8000, v29, v30, "Entity Tagging: writing %ld entity tag rows to %s", v24, 0x16u);
      v26 = v28;
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v26, -1, -1);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4C021A4()
{

  return v0;
}

uint64_t sub_1C4C021E4()
{
  sub_1C4C021A4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C0228C()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCF7C(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  v12 = *(v0 + 7);
  v13 = v0[8];
  v14 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4C00E48(v7, v8, v9, v10, v11, v12, v13, v0 + v6, v14);
}

void sub_1C4C02358(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  sub_1C43FCF7C(v5);
  sub_1C4C014D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + ((*(v7 + 64) + ((*(v6 + 80) + 72) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_1C4C02434(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C0249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &unk_1F43EA260;
  a5[4] = &off_1F43EA350;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C02540(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = (a3 + *(_s6ConfigVMa(0) + 60));
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    sub_1C442D6CC();
    sub_1C44E9220();
    if (v4)
    {
      return;
    }

    v13 = v12;
    a4[3] = &unk_1F43EA260;
    a4[4] = &off_1F43EA350;
    v14 = swift_allocObject();
    *a4 = v14;
    v14[2] = v11;
    v14[3] = v10;
    v14[4] = v13;
    v14[5] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C450B034();
    v15 = swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    sub_1C441A7D4(v15, v16);
    sub_1C44010A8(v19, v17, v18);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C02670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + *(_s6ConfigVMa(0) + 60));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v6[2];
    v17 = 0uLL;
    sub_1C44E9220();
    if (!v3)
    {
      MEMORY[0x1EEE9AC00](v10);
      v16[2] = v8;
      v16[3] = v7;
      v16[4] = v11;
      v16[5] = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446C37C(sub_1C4C02940, v16);
    }
  }

  else
  {
    sub_1C450B034();
    v12 = swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    sub_1C441A7D4(v12, v13);
    sub_1C44010A8(v17, v14, v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C027D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a3 + *(_s6ConfigVMa(0) + 60));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    sub_1C442D6CC();
    sub_1C44E9220();
    if (!v3)
    {
      v11 = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDCF8(v9, v8, v11, v4);
    }
  }

  else
  {
    sub_1C450B034();
    v12 = swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    sub_1C441A7D4(v12, v13);
    sub_1C44010A8(v16, v14, v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C02970(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

void sub_1C4C02A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v443 = a3;
  v5 = sub_1C456902C(&qword_1EC0C49A0, &qword_1C4F5D430);
  sub_1C43FFAE0(v5, &v472);
  v472 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  sub_1C43FCE30(v8);
  v9 = sub_1C456902C(&qword_1EC0C49A8, &qword_1C4F5D438);
  sub_1C43FFAE0(v9, v471);
  v470 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  sub_1C43FCE30(v12);
  v13 = sub_1C456902C(&qword_1EC0C49B0, &qword_1C4F5D440);
  sub_1C43FFAE0(v13, &v480);
  v469 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  sub_1C43FCE30(v16);
  v17 = sub_1C456902C(&qword_1EC0C49B8, &qword_1C4F5D448);
  sub_1C43FFAE0(v17, &v478);
  v468 = v18;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  sub_1C43FCE30(v20);
  v21 = sub_1C456902C(&qword_1EC0C49C0, &qword_1C4F5D450);
  sub_1C43FFAE0(v21, v476);
  v467 = v22;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  sub_1C43FCE30(v24);
  v25 = sub_1C456902C(&qword_1EC0C49C8, &qword_1C4F5D458);
  sub_1C43FFAE0(v25, &v435);
  v462 = v26;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  sub_1C43FCE30(v28);
  v29 = sub_1C456902C(&qword_1EC0C49D0, &qword_1C4F5D460);
  sub_1C43FFAE0(v29, &v433);
  v461 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  sub_1C43FCE30(v32);
  v33 = sub_1C456902C(&qword_1EC0C49D8, &qword_1C4F5D468);
  sub_1C43FFAE0(v33, &v431);
  v460 = v34;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  sub_1C43FCE30(v36);
  v37 = sub_1C456902C(&qword_1EC0C49E0, &qword_1C4F5D470);
  sub_1C43FFAE0(v37, &v442);
  v458 = v38;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  sub_1C43FCE30(v40);
  v41 = sub_1C456902C(&qword_1EC0C49E8, &qword_1C4F5D478);
  sub_1C43FFAE0(v41, v441);
  v456 = v42;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  sub_1C43FCE30(v44);
  v45 = sub_1C456902C(&qword_1EC0C49F0, &qword_1C4F5D480);
  sub_1C43FFAE0(v45, v440);
  v455 = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  sub_1C43FCE30(v48);
  v49 = sub_1C456902C(&qword_1EC0C49F8, &qword_1C4F5D488);
  sub_1C43FFAE0(v49, &v446);
  v454 = v50;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  sub_1C43FCE30(v52);
  v53 = sub_1C456902C(&qword_1EC0C4A00, &qword_1C4F5D490);
  sub_1C43FFAE0(v53, &v451);
  v452 = v54;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  sub_1C43FCE30(v56);
  v57 = sub_1C456902C(&qword_1EC0C4A08, &qword_1C4F5D498);
  sub_1C43FFAE0(v57, v449);
  v451 = v58;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  sub_1C43FCE30(v60);
  v61 = sub_1C456902C(&qword_1EC0C4A10, &qword_1C4F5D4A0);
  sub_1C43FFAE0(v61, &v454);
  v446 = v62;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBC74();
  sub_1C43FCE30(v64);
  v65 = sub_1C456902C(&qword_1EC0C4A18, &qword_1C4F5D4A8);
  sub_1C43FFAE0(v65, &v481);
  v445 = v66;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBC74();
  sub_1C43FCE30(v68);
  v69 = sub_1C456902C(&qword_1EC0C4A20, &qword_1C4F5D4B0);
  sub_1C43FFAE0(v69, v463);
  v444 = v70;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBC74();
  sub_1C43FCE30(v72);
  v73 = sub_1C456902C(&qword_1EC0C4A28, &qword_1C4F5D4B8);
  sub_1C43FFAE0(v73, &v461);
  v438 = v74;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBC74();
  sub_1C43FCE30(v76);
  v77 = sub_1C456902C(&qword_1EC0C4A30, &qword_1C4F5D4C0);
  sub_1C43FFAE0(v77, v474);
  v448 = v78;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBC74();
  sub_1C43FCE30(v80);
  v81 = sub_1C456902C(&qword_1EC0C4A38, &qword_1C4F5D4C8);
  sub_1C43FFAE0(v81, &v430);
  v439 = v82;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBC74();
  sub_1C43FCE30(v84);
  v466 = sub_1C456902C(&qword_1EC0C4A40, &qword_1C4F5D4D0);
  sub_1C43FCDF8();
  *&v426 = v85;
  MEMORY[0x1EEE9AC00](v86);
  v447 = (v425 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v88);
  v465 = v425 - v89;
  v464 = sub_1C456902C(&qword_1EC0C4A48, &qword_1C4F5D4D8);
  sub_1C43FCDF8();
  v425[25] = v90;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBC74();
  sub_1C43FCE30(v92);
  v93 = sub_1C456902C(&qword_1EC0C4A50, &qword_1C4F5D4E0);
  sub_1C43FFAE0(v93, &v455);
  v430 = v94;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FBC74();
  sub_1C43FCE30(v96);
  v97 = sub_1C456902C(&qword_1EC0C4A58, &qword_1C4F5D4E8);
  sub_1C43FCDF8();
  v99 = v98;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v100);
  v102 = v425 - v101;
  v103 = swift_allocObject();
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v104 = MEMORY[0x1E69E7CC0];
  v105 = sub_1C4F00F28();
  v434 = v103;
  *(v103 + 16) = v105;
  v425[21] = v103 + 16;
  v433 = v104;
  v479 = v104;
  sub_1C456902C(&qword_1EC0C4A60, &qword_1C4F5D4F0);
  swift_allocObject();
  v475 = sub_1C4F00C08();
  v106 = v475;
  sub_1C4401CBC(&qword_1EC0C4A68, &qword_1EC0C4A60, &qword_1C4F5D4F0, MEMORY[0x1E695BF88]);
  sub_1C4F00C48();
  sub_1C4401CBC(&qword_1EC0C4A70, &qword_1EC0C4A58, &qword_1C4F5D4E8, MEMORY[0x1E695BD60]);
  v107 = sub_1C4F00C18();
  (*(v99 + 8))(v102, v97);
  v109 = v443 + 64;
  v108 = *(v443 + 64);
  v110 = 1 << *(v443 + 32);
  v111 = -1;
  v112 = v107;
  v477 = v107;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v453 = v111 & v108;
  v442 = (v110 + 63) >> 6;
  sub_1C4405EAC();
  v448 = v113;
  sub_1C4405EAC();
  v425[3] = v114;
  sub_1C4405EAC();
  v425[2] = v115;
  sub_1C4405EAC();
  v425[1] = v116;
  sub_1C4405EAC();
  v425[0] = v117;
  sub_1C4405EAC();
  v425[14] = v118;
  sub_1C4405EAC();
  v425[13] = v119;
  sub_1C4405EAC();
  v425[12] = v120;
  sub_1C4405EAC();
  v430 = v121;
  sub_1C4405EAC();
  v425[22] = v122;
  sub_1C4405EAC();
  v428 = v123;
  sub_1C4405EAC();
  v427 = v124;
  sub_1C4405EAC();
  v458 = v125;
  sub_1C4405EAC();
  v439 = v126;
  sub_1C4405EAC();
  v438 = v127;
  sub_1C4405EAC();
  v429 = v128;
  sub_1C4405EAC();
  v462 = v129;
  sub_1C4405EAC();
  v461 = v130;
  v446 = v472 + 8;
  v445 = v470 + 8;
  v456 = v469 + 8;
  v455 = v468 + 8;
  v454 = v467 + 8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v131 = 0;
  *&v132 = 136315650;
  v426 = v132;
  v436 = a4;
  v435 = v106;
  v437 = v109;
LABEL_4:
  v133 = v131;
  v134 = v442;
  while (1)
  {
    v135 = v453;
    if (!v453)
    {
      break;
    }

    v136 = v133;
LABEL_10:
    v453 = (v135 - 1) & v135;
    v452 = v136;
    v137 = __clz(__rbit64(v135)) | (v136 << 6);
    v138 = *(v443 + 56);
    v139 = (*(v443 + 48) + 16 * v137);
    v140 = v139[1];
    v444 = *v139;
    v469 = *(v138 + 8 * v137);
    v468 = *(v469 + 16);
    v451 = v140;
    if (!v468)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_76:
      v473 = v112;
      sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
      sub_1C441A7EC();
      sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500, v416);
      sub_1C444B340();
      sub_1C4F00CB8();
      sub_1C4418B14();
      v417 = swift_allocObject();
      v418 = v444;
      v417[2] = v434;
      v417[3] = v418;
      v417[4] = v451;
      sub_1C441E79C();
      sub_1C4401CBC(&qword_1EC0C4AA8, &qword_1EC0C4A50, &qword_1C4F5D4E0, v419);

      v420 = v431;
      sub_1C4F00D28();

      v421 = sub_1C4412818();
      v423 = v422(v421, v420);
      v107 = &v479;
      MEMORY[0x1C6940330](v423);
      if (*((v479 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v479 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v433 = v479;
      v109 = v437;
      v131 = v452;
      goto LABEL_4;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v141 = v469;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_beginAccess();
    v142 = 0;
    v143 = (v141 + 56);
    while (2)
    {
      if (v142 >= *(v469 + 16))
      {
        __break(1u);
        goto LABEL_85;
      }

      v144 = *(v143 - 3);
      v145 = *(v143 - 2);
      v146 = *(v143 - 1);
      ++v142;
      v147 = *v143;
      switch(*v143)
      {
        case 1:
          v472 = v112;
          v473 = v112;
          sub_1C44042C4();
          v152 = swift_allocObject();
          v152[2] = v144;
          v152[3] = v145;
          v260 = sub_1C44047DC();
          sub_1C49F1884(v260, v261, v262, 1u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v263 = sub_1C4426ECC();
          v264 = sub_1C456902C(v263, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v265, v266, v267);
          v268 = MEMORY[0x1E69E7CA0];
          sub_1C441F004();
          sub_1C4F00C28();

          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v269);
          sub_1C442068C();
          sub_1C44139F8();
          sub_1C440C798(v270, v271);
          v272 = sub_1C4412818();
          v273(v272, v268);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v152);
          sub_1C43FCA34();
          v107 = v264;
          sub_1C4F00C18();
          v274 = sub_1C440E8F0();
          v277 = 1;
          goto LABEL_48;
        case 2:
          v472 = v112;
          v473 = v112;
          sub_1C44042C4();
          v152 = swift_allocObject();
          v152[2] = v144;
          v152[3] = v145;
          v205 = sub_1C44047DC();
          sub_1C49F1884(v205, v206, v207, 2u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v107 = &qword_1EC0C4A88;
          v208 = sub_1C4426ECC();
          v160 = sub_1C456902C(v208, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v209, v210, v211);
          sub_1C441066C();
          v467 = v142;
          sub_1C441F004();
          sub_1C4F00CD8();

          sub_1C440398C();
          sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440, v212);
          sub_1C440924C();
          sub_1C4430274();
          sub_1C4F00C28();
          v213 = sub_1C4412818();
          v214(v213, v152);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448, v215);
          sub_1C43FF778();
          sub_1C44366E0(v216, v217);
          v218 = sub_1C440FD84();
          v219(v218, v160);
          v220 = sub_1C4401CBC(&qword_1EC0C4AD0, &qword_1EC0C49C0, &qword_1C4F5D450, v152);
          sub_1C4402568(v220);
          v221 = sub_1C440E8F0();
          v224 = 2;
          goto LABEL_33;
        case 3:
          v472 = v112;
          v473 = v112;
          sub_1C44042C4();
          v152 = swift_allocObject();
          v152[2] = v144;
          v152[3] = v145;
          v225 = sub_1C44047DC();
          sub_1C49F1884(v225, v226, v227, 3u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v107 = &qword_1EC0C4A88;
          v228 = sub_1C4426ECC();
          v160 = sub_1C456902C(v228, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v229, v230, v231);
          sub_1C441066C();
          v467 = v142;
          sub_1C441F004();
          sub_1C4F00CD8();

          sub_1C440398C();
          sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440, v232);
          sub_1C440924C();
          sub_1C4430274();
          sub_1C4F00C28();
          v233 = sub_1C4412818();
          v234(v233, v152);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448, v235);
          sub_1C43FF778();
          sub_1C44366E0(v236, v237);
          v238 = sub_1C440FD84();
          v239(v238, v160);
          v240 = sub_1C4401CBC(&qword_1EC0C4AD0, &qword_1EC0C49C0, &qword_1C4F5D450, v152);
          sub_1C4402568(v240);
          v221 = sub_1C440E8F0();
          v224 = 3;
LABEL_33:
          sub_1C49F181C(v221, v222, v223, v224);
          v164 = sub_1C4412818();
          v142 = v467;
          goto LABEL_34;
        case 4:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4AB0, &qword_1C4F5D508);
          sub_1C4F00F28();
          sub_1C4441298();
          if (!v166)
          {
            goto LABEL_67;
          }

          v167 = sub_1C4404A98();
          v169 = sub_1C445FAA8(v167, v168);
          if ((v170 & 1) == 0)
          {
            goto LABEL_67;
          }

          sub_1C4415D48(v169);

          sub_1C44042C4();
          v171 = swift_allocObject();
          sub_1C44164A8(v171);
          v172 = sub_1C4426ECC();
          sub_1C456902C(v172, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v173, v174, v175);
          sub_1C441066C();
          v176 = v146;
          v460 = v146;
          sub_1C440924C();
          sub_1C4F00C28();
          v177 = swift_allocObject();
          *(v177 + 16) = sub_1C4C072C0;
          *(v177 + 24) = v147;
          *(v177 + 32) = v146;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          v178 = sub_1C440C010();
          sub_1C4433E30(v178, v179);

          v180 = sub_1C440FD84();
          v181(v180, v142);
          v182 = MEMORY[0x1E69E7CA0];
          sub_1C440DA44();
          sub_1C4F00AA8();
          v183 = sub_1C44179B0();
          v184(v183);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v185);
          sub_1C442068C();
          sub_1C440924C();
          sub_1C440C798(v186, v187);
          v188 = sub_1C4412818();
          v142 = v112;
          v189(v188, v176);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v177);
          sub_1C43FCA34();
          v107 = v182;
          sub_1C4F00C18();
          v190 = sub_1C4405418();
          v193 = 4;
          goto LABEL_45;
        case 5:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4AB8, &qword_1C4F5D510);
          sub_1C4F00F28();
          sub_1C4441298();
          if (!v278)
          {
            goto LABEL_67;
          }

          v279 = sub_1C4404A98();
          v281 = sub_1C445FAA8(v279, v280);
          if ((v282 & 1) == 0)
          {
            goto LABEL_67;
          }

          sub_1C4415D48(v281);

          sub_1C44042C4();
          v283 = swift_allocObject();
          sub_1C44164A8(v283);
          v284 = sub_1C4426ECC();
          sub_1C456902C(v284, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v285, v286, v287);
          sub_1C441066C();
          sub_1C440924C();
          sub_1C4F00C28();
          sub_1C4418B14();
          v152 = swift_allocObject();
          v152[2] = sub_1C4C072D4;
          v152[3] = v147;
          v152[4] = v146;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          v467 = v142;
          v288 = v459;
          v289 = v450;
          sub_1C4F00AA8();

          v290 = sub_1C440FD84();
          v291(v290, v289);
          sub_1C4430274();
          sub_1C4F00AA8();
          v292 = sub_1C4412818();
          v293(v292, v152);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v294);
          sub_1C442068C();
          sub_1C43FF778();
          v268 = v466;
          sub_1C4F00C28();
          v295 = sub_1C440FD84();
          v296(v295, v268);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v152);
          sub_1C43FCA34();
          v107 = v288;
          sub_1C4F00C18();
          v297 = sub_1C440E8F0();
          sub_1C49F181C(v297, v298, v299, 5u);

          v164 = sub_1C4412818();
          v142 = v467;
          goto LABEL_49;
        case 6:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4A78, &qword_1C4F5D4F8);
          sub_1C4F00F28();
          sub_1C4441298();
          if (!v300 || (v301 = sub_1C4404A98(), v303 = sub_1C445FAA8(v301, v302), (v304 & 1) == 0))
          {
LABEL_67:

            sub_1C4C0724C();
            v397 = swift_allocError();
            *v398 = 2;
            goto LABEL_70;
          }

          sub_1C4415D48(v303);

          sub_1C44042C4();
          v305 = swift_allocObject();
          sub_1C44164A8(v305);
          v306 = sub_1C4426ECC();
          sub_1C456902C(v306, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v307, v308, v309);
          sub_1C441066C();
          v176 = v146;
          v460 = v146;
          sub_1C440924C();
          sub_1C4F00C28();
          sub_1C4418B14();
          v310 = swift_allocObject();
          v310[2] = sub_1C4C072A0;
          v310[3] = v147;
          v310[4] = v146;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          v311 = sub_1C440C010();
          sub_1C4433E30(v311, v312);

          v313 = sub_1C440FD84();
          v314(v313, v142);
          v315 = MEMORY[0x1E69E7CA0];
          sub_1C440DA44();
          sub_1C4F00AA8();
          v316 = sub_1C44179B0();
          v317(v316);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v318);
          sub_1C442068C();
          sub_1C440924C();
          sub_1C440C798(v319, v320);
          v321 = sub_1C4412818();
          v142 = v112;
          v322(v321, v176);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v310);
          sub_1C43FCA34();
          v107 = v315;
          sub_1C4F00C18();
          v190 = sub_1C4405418();
          v193 = 6;
LABEL_45:
          sub_1C49F181C(v190, v191, v192, v193);

          v258 = sub_1C440FD84();
          goto LABEL_46;
        case 7:
          type metadata accessor for MLMultiArrayDataType(0);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F00F28();
          sub_1C4441298();
          if (!v242 || (v243 = sub_1C445FAA8(v145, v146), (v244 & 1) == 0))
          {

            sub_1C4C0724C();
            v397 = swift_allocError();
            *v399 = 1;
            goto LABEL_70;
          }

          v245 = *(v107[7] + 8 * v243);

          v472 = v112;
          v473 = v112;
          sub_1C44042C4();
          v246 = swift_allocObject();
          *(v246 + 16) = v144;
          *(v246 + 24) = v245;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v247 = sub_1C4426ECC();
          sub_1C456902C(v247, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v248, v249, v250);
          v467 = v142;
          v251 = v447;
          sub_1C441F004();
          sub_1C4F00C28();

          v460 = v146;
          v252 = v465;
          v176 = v466;
          sub_1C4F00AA8();
          v112 = v462;
          v253 = *v462;
          (*v462)(v251, v176);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v254);
          sub_1C442068C();
          sub_1C43FF778();
          sub_1C4F00C28();
          v253(v252, v176);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v246);
          sub_1C43FCA34();
          v107 = v251;
          sub_1C4F00C18();
          v255 = sub_1C4405418();
          sub_1C49F181C(v255, v256, v257, 7u);
          v258 = sub_1C4412818();
          v142 = v467;
LABEL_46:
          v259(v258, v176);

          v477 = v112;
          goto LABEL_52;
        case 8:
          v472 = v112;
          v473 = v112;
          v152 = swift_allocObject();
          v152[2] = v144;
          v323 = sub_1C44047DC();
          sub_1C49F1884(v323, v324, v325, 8u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v326 = sub_1C4426ECC();
          v327 = sub_1C456902C(v326, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90, v328, v329, v330);
          v268 = MEMORY[0x1E69E7CA0];
          sub_1C441F004();
          sub_1C4F00C28();

          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0, v331);
          sub_1C442068C();
          sub_1C44139F8();
          sub_1C440C798(v332, v333);
          v334 = sub_1C4412818();
          v335(v334, v268);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8, v152);
          sub_1C43FCA34();
          v107 = v327;
          sub_1C4F00C18();
          v274 = sub_1C440E8F0();
          v277 = 8;
LABEL_48:
          sub_1C49F181C(v274, v275, v276, v277);
          v164 = sub_1C4433940();
LABEL_49:
          v241 = v268;
          goto LABEL_50;
        case 9:
          v194 = v146 | v145;
          if (!(v146 | v145 | v144))
          {
            v473 = v112;
            v336 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            v197 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500, v337);
            sub_1C441066C();
            sub_1C44139F8();
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B20, &qword_1EC0C4A18, &qword_1C4F5D4A8, v338);
            sub_1C43FF778();
            sub_1C442E614();
            sub_1C4F00C68();
            v339 = sub_1C4433940();
            v340(v339, v336);
            sub_1C4415024();
            sub_1C4401CBC(&qword_1EC0C4B28, &qword_1EC0C4A20, &qword_1C4F5D4B0, v341);
            sub_1C44139F8();
            sub_1C4430274();
            sub_1C4F00C28();
            v342 = sub_1C4412818();
            v343(v342, v336);
            sub_1C4401CBC(&qword_1EC0C4B30, &qword_1EC0C4A28, &qword_1C4F5D4B8, v197);
            sub_1C440D248(&v461);
            v107 = &qword_1C4F5D500;
            v152 = sub_1C4F00C18();
LABEL_57:
            v361 = sub_1C4433940();
LABEL_58:
            v362(v361, v197);
            goto LABEL_51;
          }

          if (v144 == 1 && v194 == 0)
          {
            v473 = v112;
            v344 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            v197 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500, v345);
            sub_1C441066C();
            sub_1C44139F8();
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B20, &qword_1EC0C4A18, &qword_1C4F5D4A8, v346);
            sub_1C43FF778();
            sub_1C442E614();
            sub_1C4F00C58();
            v347 = sub_1C4433940();
            v348(v347, v344);
            sub_1C4415024();
            sub_1C4401CBC(&qword_1EC0C4B28, &qword_1EC0C4A20, &qword_1C4F5D4B0, v349);
            v350 = MEMORY[0x1E69E7CA0];
            sub_1C440924C();
            sub_1C4430274();
            sub_1C4F00C28();
            v351 = sub_1C4412818();
            v352(v351, v344);
            sub_1C4401CBC(&qword_1EC0C4B30, &qword_1EC0C4A28, &qword_1C4F5D4B8, v197);
            sub_1C44139F8();
            sub_1C442E614();
            sub_1C4F00C28();
            v353 = sub_1C440FD84();
            v354(v353, v344);
            sub_1C4401CBC(&qword_1EC0C4B38, &qword_1EC0C4A10, &qword_1C4F5D4A0, v197);
            sub_1C440D248(&v454);
            v107 = v350;
            v152 = sub_1C4F00C18();
            goto LABEL_57;
          }

          if (v144 == 2 && v194 == 0)
          {
            v473 = v112;
            v197 = &qword_1C4F5D500;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90, v355, v356, v357);
            sub_1C444B340();
            sub_1C4425500();
            sub_1C4F00C78();
            sub_1C4401CBC(&qword_1EC0C4B10, &qword_1EC0C4A00, &qword_1C4F5D490, MEMORY[0x1E695BD80]);
            sub_1C44139F8();
            sub_1C4426148();
            sub_1C4F00C28();
            v358 = sub_1C44179B0();
            v359(v358);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4B18, &qword_1EC0C4A08, &qword_1C4F5D498, v360);
            sub_1C440D248(v449);
            v107 = v147;
            v152 = sub_1C4F00C18();
            goto LABEL_57;
          }

          if (v144 == 3 && !v194)
          {
            v473 = v112;
            v197 = &qword_1C4F5D500;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90, v198, v199, v200);
            sub_1C444B340();
            sub_1C4425500();
            sub_1C4F00CB8();
            sub_1C441E79C();
            sub_1C4401CBC(&qword_1EC0C4AA8, &qword_1EC0C4A50, &qword_1C4F5D4E0, v201);
            sub_1C44139F8();
            sub_1C4426148();
            sub_1C4F00C28();
            v202 = sub_1C44179B0();
            v203(v202);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4B08, &qword_1EC0C49F8, &qword_1C4F5D488, v204);
            sub_1C440D248(&v446);
            v107 = v147;
            v152 = sub_1C4F00C18();
            goto LABEL_57;
          }

          if (v144 == 4 && !v194)
          {
            v473 = v112;
            v363 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90, v364, v365, v366);
            sub_1C444B340();
            sub_1C4425500();
            sub_1C4F00CE8();
            sub_1C4401CBC(&qword_1EC0C4AF0, &qword_1EC0C49E0, &qword_1C4F5D470, MEMORY[0x1E695BE38]);
            v367 = v142;
            v368 = MEMORY[0x1E69E7CA0];
            sub_1C44139F8();
            sub_1C4426148();
            sub_1C4F00C28();
            v369 = sub_1C44179B0();
            v370(v369);
            sub_1C4407EDC();
            sub_1C4401CBC(&qword_1EC0C4AF8, &qword_1EC0C49E8, &qword_1C4F5D478, v371);
            sub_1C43FF778();
            v197 = v425[18];
            sub_1C4F00C28();
            v372 = sub_1C4433940();
            v373(v372, v197);
            sub_1C4401CBC(&qword_1EC0C4B00, &qword_1EC0C49F0, &qword_1C4F5D480, v363);
            sub_1C440D248(v440);
            v107 = v368;
            v152 = sub_1C4F00C18();
            v361 = sub_1C4412818();
            v142 = v367;
            goto LABEL_58;
          }

          v374 = v142;
          if (v144 != 5 || v194)
          {
            v473 = v112;
            v389 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500, v390);
            sub_1C441066C();
            sub_1C44139F8();
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B40, &qword_1EC0C4A30, &qword_1C4F5D4C0, v391);
            sub_1C43FF778();
            sub_1C442E614();
            sub_1C4F00C28();
            v392 = sub_1C4433940();
            v393(v392, &qword_1EC0C4A88);
            sub_1C4401CBC(&qword_1EC0C4B48, &qword_1EC0C4A38, &qword_1C4F5D4C8, v389);
            v394 = v425[5];
            v107 = sub_1C4F00C18();
            v395 = sub_1C4412818();
            v396(v395, v394);

            v477 = v107;
            v112 = v107;
          }

          else
          {
            v473 = v112;
            v375 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90, v376, v377, v378);
            sub_1C444B340();
            sub_1C4425500();
            sub_1C4F00CA8();
            sub_1C4401CBC(&qword_1EC0C4AD8, &qword_1EC0C49C8, &qword_1C4F5D458, MEMORY[0x1E695BDA8]);
            v379 = MEMORY[0x1E69E7CA0];
            sub_1C44139F8();
            sub_1C4426148();
            sub_1C4F00C28();
            v380 = sub_1C44179B0();
            v381(v380);
            sub_1C4407EDC();
            sub_1C4401CBC(&qword_1EC0C4AE0, &qword_1EC0C49D0, &qword_1C4F5D460, v382);
            sub_1C43FF778();
            v383 = v425[9];
            sub_1C4F00C28();
            v384 = sub_1C4433940();
            v385(v384, v383);
            sub_1C4401CBC(&qword_1EC0C4AE8, &qword_1EC0C49D8, &qword_1C4F5D468, v375);
            sub_1C440D248(&v431);
            v107 = v379;
            v386 = sub_1C4F00C18();
            v387 = sub_1C4412818();
            v388(v387, v383);

            v477 = v386;
            v112 = v386;
          }

          v142 = v374;
          goto LABEL_52;
        default:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4404A98();
          v148 = sub_1C4F01108();
          v149 = NSClassFromString(v148);

          if (v149)
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v472 = v112;
            v473 = v112;
            *(swift_allocObject() + 16) = ObjCClassMetadata;
            v151 = sub_1C4426ECC();
            v152 = sub_1C456902C(v151, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90, v153, v154, v155);
            sub_1C441066C();
            sub_1C4F00CD8();

            sub_1C440398C();
            sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440, v156);
            sub_1C440924C();
            sub_1C4430274();
            sub_1C4F00C28();
            v157 = sub_1C4412818();
            v158(v157, v152);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448, v159);
            v160 = v457;
            v107 = v146;
            sub_1C4F00C18();
            v161 = sub_1C440E8F0();
            sub_1C49F181C(v161, v162, v163, 0);
            v164 = sub_1C440FD84();
LABEL_34:
            v241 = v160;
LABEL_50:
            v165(v164, v241);
LABEL_51:

            v477 = v152;
            v112 = v152;
LABEL_52:
            v143 += 32;
            if (v468 == v142)
            {

              a4 = v436;
              v106 = v435;
              goto LABEL_76;
            }

            continue;
          }

          sub_1C4C0724C();
          v397 = swift_allocError();
          *v400 = 0;
LABEL_70:
          swift_willThrow();
          v432 = 0;
          v401 = sub_1C44047DC();
          sub_1C49F181C(v401, v402, v403, v147);
          v404 = v436;
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v405 = sub_1C4F00978();
          v107 = sub_1C442B738(v405, qword_1EDE2DF70);
          v406 = v451;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v407 = v397;
          v408 = sub_1C4F00968();
          v409 = sub_1C4F01CD8();

          if (os_log_type_enabled(v408, v409))
          {
            v410 = swift_slowAlloc();
            v472 = v112;
            v411 = v410;
            v473 = swift_slowAlloc();
            *v411 = v426;
            v412 = v444;
            *(v411 + 4) = sub_1C441D828(v444, v406, &v473);
            *(v411 + 12) = 2080;
            v413 = sub_1C441D828(v412, v406, &v473);

            *(v411 + 14) = v413;
            *(v411 + 22) = 2080;
            swift_getErrorValue();
            v414 = sub_1C4F02A38();
            v107 = sub_1C441D828(v414, v415, &v473);

            *(v411 + 24) = v107;
            _os_log_impl(&dword_1C43F8000, v408, v409, "SignalPipelineProcessor %s: invalid pipeline for feature %s: %s", v411, 0x20u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            v112 = v472;
            sub_1C43FBE2C();
          }

          else
          {
          }

          v133 = v452;
          v109 = v437;
          v134 = v442;
          a4 = v404;
          v106 = v435;
          break;
      }

      break;
    }
  }

  while (1)
  {
    v136 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      break;
    }

    if (v136 >= v134)
    {

      v424 = v432;
      sub_1C463ED24(v106, a4);
      if (v424)
      {
      }

      else
      {

        swift_beginAccess();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      return;
    }

    v135 = *(v109 + 8 * v136);
    ++v133;
    if (v135)
    {
      goto LABEL_10;
    }
  }

LABEL_85:
  __break(1u);
}

uint64_t sub_1C4C059D4()
{
  v1 = qword_1EC0C4998;
  if (*(v0 + qword_1EC0C4998))
  {
    v2 = *(v0 + qword_1EC0C4998);
  }

  else
  {
    v3 = [*(v0 + qword_1EC152D20) featureNames];
    v2 = sub_1C4F01AB8();

    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4C05A74()
{
  v1 = v0;
  v2 = *v0;
  v53[0] = *(v0 + qword_1EC152D20);
  v3 = (*(*(v2 + 88) + 16))(*(v2 + 80));
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  v5 = &unk_1C4F0C000;
  v6 = &qword_1EC151FF8[1];
  if (!*(v3 + 16))
  {
    if (qword_1EDDFECD0 != -1)
    {
LABEL_36:
      sub_1C4400FC0();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DF70);

    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = *(v5 + 3664);
      *(v10 + 4) = sub_1C441D828(*(v1 + v6[419]), *(v1 + v6[419] + 8), v53);
      _os_log_impl(&dword_1C43F8000, v8, v9, "SignalView %s: Could not generate requested features", v10, 0xCu);
      sub_1C440962C(v11);
      p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  v12 = v3 + 64;
  v13 = 1 << *(v3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v5 = v14 & *(v3 + 64);
  v51 = v1 + v6[419];
  v6 = ((v13 + 63) >> 6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v52 = v3 + 64;
  v50 = v1;
  v54 = v3;
LABEL_9:
  v16 = v15;
  if (!v5)
  {
    goto LABEL_11;
  }

  do
  {
    v15 = v16;
LABEL_14:
    v17 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v18 = (*(v3 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v3 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v21)
    {
      v22 = sub_1C4404A98();
      v24 = sub_1C445FAA8(v22, v23);
      if (v25)
      {
        v34 = *(*(v3 + 56) + 8 * v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458B504();
          v49 = v37;
        }

        v35 = *(v49 + 16);
        if (v35 >= *(v49 + 24) >> 1)
        {
          sub_1C458B504();
          v49 = v38;
        }

        *(v49 + 16) = v35 + 1;
        v36 = (v49 + 40 * v35);
        v36[4] = v19;
        v36[5] = v20;
        v36[6] = 0;
        v36[7] = 0;
        v36[8] = v34;
        p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
        v3 = v54;
        v12 = v52;
        goto LABEL_9;
      }
    }

    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DF70);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1C441D828(*v51, *(v51 + 1), v53);
      *(v29 + 12) = 2080;
      v30 = sub_1C4404A98();
      v33 = sub_1C441D828(v30, v31, v32);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_1C43F8000, v27, v28, "SignalView %s: Could not generate requested feature %s", v29, 0x16u);
      swift_arrayDestroy();
      p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
      sub_1C43FBE2C();
      v1 = v50;
      sub_1C43FBE2C();
    }

    else
    {
    }

    v16 = v15;
    v3 = v54;
    v12 = v52;
  }

  while (v5);
  while (1)
  {
LABEL_11:
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v15 >= v6)
    {
      break;
    }

    v5 = *(v12 + 8 * v15);
    ++v16;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v39 = v1[3];
  v40 = v1[4];
  v41 = v1[5];
  v42 = v1[6];
  v53[0] = v1[2];
  v53[1] = v39;
  v53[2] = v40;
  v53[3] = v41;
  v53[4] = v42;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C47D32C8();
  if (v48)
  {
  }

  else
  {

    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDE2DF70);

    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CB8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_1C441D828(*v51, *(v51 + 1), v53);
      _os_log_impl(&dword_1C43F8000, v44, v45, "SignalView %s: Wrote features", v46, 0xCu);
      sub_1C440962C(v47);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }
}

uint64_t sub_1C4C06088()
{

  sub_1C445F57C(v0 + qword_1EC152D18);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C4C060FC()
{
  sub_1C4C06088();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C061A8()
{
  sub_1C4C05A74();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C4C06220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[3] = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *a2 = a1;

  return a1;
}

uint64_t sub_1C4C06294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = MEMORY[0x1E69E7CA0] + 8;
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_1C442B870(a1, v4 + 16);
}

id sub_1C4C062F8(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  v1 = sub_1C4F02918();
  v2 = [v1 isKindOfClass_];
  swift_unknownObjectRelease();
  return v2;
}

double sub_1C4C0635C@<D0>(void *a1@<X0>, _OWORD *a4@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  v5 = sub_1C4F02918();
  v6 = sub_1C4F01108();
  v7 = [v5 valueForKeyPath_];

  swift_unknownObjectRelease();
  if (v7)
  {
    sub_1C4F02078();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C4C0641C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v24 = a2;
  result = sub_1C442B870(a1, a3);
  if (a2[2])
  {
    v7 = a2[4];
    v6 = a2[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C076A8();
    v8 = v24;
    if (v24[2])
    {
      v9 = &qword_1EC0B84C0;
      v10 = MEMORY[0x1E69E7CA0];
      while (1)
      {
        sub_1C44600A0(a3, &v22, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if (!*(&v23 + 1))
        {
          break;
        }

        sub_1C456902C(v9, &qword_1C4F0DD00);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_11;
        }

        if (!*(v21 + 16))
        {

LABEL_11:

          v16 = a3;
LABEL_12:
          result = sub_1C4423A0C(v16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v22 = 0u;
          v23 = 0u;
          goto LABEL_13;
        }

        v11 = v9;
        v12 = v10;
        v13 = sub_1C445FAA8(v7, v6);
        v15 = v14;

        if (v15)
        {
          sub_1C442B870(*(v21 + 56) + 32 * v13, &v22);
          sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        else
        {

          result = sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v22 = 0u;
          v23 = 0u;
        }

        v10 = v12;
        v9 = v11;
LABEL_13:
        v17 = v23;
        *a3 = v22;
        a3[1] = v17;
        v18 = v8[2];
        if (!v18)
        {
          __break(1u);
          goto LABEL_25;
        }

        v7 = v8[4];
        v6 = v8[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_isUniquelyReferenced_nonNull_native() || (v18 - 1) > v8[3] >> 1)
        {
          sub_1C443D664();
          v8 = v19;
        }

        sub_1C4471348((v8 + 4));
        v20 = v8[2];
        memmove(v8 + 4, v8 + 6, 16 * v20 - 16);
        v8[2] = v20 - 1;
        if (v20 == 1)
        {
        }
      }

      sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v16 = &v22;
      goto LABEL_12;
    }
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C066C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C442B870(a1, v16);
  if (swift_dynamicCast())
  {
    sub_1C440BAA8(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_1C4EF9AD8();
    v12 = v11;
    result = (*(v8 + 8))(v10, v7);
    v14 = 0;
    *a2 = v12;
  }

  else
  {
    sub_1C440BAA8(v6, 1, 1, v7);
    sub_1C4423A0C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C442B870(a1, v16);
    result = swift_dynamicCast();
    if (result)
    {
      result = sub_1C49F2108(v15[0], v15[1]);
      *a2 = result;
    }

    else
    {
      v14 = 0;
      *a2 = 0;
    }
  }

  *(a2 + 8) = v14 & 1;
  return result;
}

uint64_t sub_1C4C068E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C442B870(a1, &v4);
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1C4C06950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  *a2 = v3;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4C069A4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[3] = MEMORY[0x1E69E6530];
  *a2 = v2;
  return result;
}

uint64_t sub_1C4C069BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02438();
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3 == 0xE000000000000000;
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C4F02938();
  }

  return v6 & 1;
}

uint64_t sub_1C4C06A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02438();
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3 == 0xE000000000000000;
  }

  if (v5)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1C4F02938();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1C4C06B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C442B870(a1, v22);
  sub_1C456902C(&qword_1EC0C4B50, &qword_1C4F5D518);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  result = sub_1C4428DA0(v21);
  v8 = result;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 32;
    v12 = 1;
    do
    {
      v13 = *(v11 + 8 * v10);
      v14 = v12 * v13;
      if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
      {
        __break(1u);
        goto LABEL_26;
      }

      ++v10;
      v12 *= v13;
    }

    while (v9 != v10);
    if (result != v14)
    {
      goto LABEL_13;
    }

    v22[0] = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    do
    {
      v11 += 8;
      sub_1C4F01B58();
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v9;
    }

    while (v9);
    v15 = v22[0];
  }

  else
  {
    if (result != 1)
    {
LABEL_13:

LABEL_14:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  result = sub_1C4C07150(v15, a3);
  v17 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  if (v8 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      sub_1C4431590(0, (v21 & 0xC000000000000001) == 0, v21);
      sub_1C4431590(v8 - 1, (v21 & 0xC000000000000001) == 0, v21);
      for (i = 0; i != v8; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C6940F90](i);
        }

        else
        {
          v19 = *(v21 + 8 * i + 32);
        }

        v20 = v19;
        [v17 setObject:v19 atIndexedSubscript:i];
      }
    }

    result = sub_1C4461BB8(0, &qword_1EC0C4B58, 0x1E695FED0);
    *(a4 + 24) = result;
    *a4 = v17;
  }

  return result;
}

double sub_1C4C06D70(void (*a1)(double *__return_ptr, double *, double *), double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  a1(&v4, &v6, &v5);
  return v4;
}

uint64_t sub_1C4C06DC4@<X0>(double *a1@<X0>, double (*a2)(double, double)@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  a2(*a1, a4);
  result = sub_1C4F019C8();
  *a3 = result;
  return result;
}

float sub_1C4C06E18(void (*a1)(uint64_t *__return_ptr, float *, char *), float a2, float a3)
{
  *(&v4 + 1) = a3;
  v5 = a2;
  a1(&v4, &v5, &v4 + 4);
  return *&v4;
}

uint64_t sub_1C4C06E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C442B870(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 4) = result ^ 1;
  return result;
}

uint64_t sub_1C4C06EC4@<X0>(float *a1@<X0>, uint64_t (*a2)(float, float)@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  a2(*a1, a4);
  result = sub_1C4F01A58();
  *a3 = result;
  return result;
}

uint64_t sub_1C4C06F00(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C06F10(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C06F2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result != 0x8000000000000000 || a2 != -1)
    {
      result /= a2;
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

uint64_t sub_1C4C06F50(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result != 0x8000000000000000 || a2 != -1)
    {
      result %= a2;
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

uint64_t sub_1C4C06F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v5 = a2;
  v6 = a1;
  a3(&v4, &v6, &v5);
  return v4;
}

uint64_t sub_1C4C06FC8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1C442B870(a1, &v5);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
  }

  *(a3 + 8) = result ^ 1;
  return result;
}

uint64_t sub_1C4C0702C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a2(*a1, a3);
  result = sub_1C4F01B58();
  *a4 = result;
  return result;
}

uint64_t sub_1C4C0706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C442B870(a1, v20);
  v8 = sub_1C4C0BF5C(v20);
  swift_beginAccess();
  if (v8)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a2 + 16);
    sub_1C4660314();
    *(a2 + 16) = v19;
  }

  else
  {
    sub_1C45920FC(a3, a4, v9, v10, v11, v12, v13, v14, v17, v18);
  }

  return swift_endAccess();
}

id sub_1C4C07150(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v4 = sub_1C4F01658();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1C4C0724C()
{
  result = qword_1EC0C4A80;
  if (!qword_1EC0C4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4A80);
  }

  return result;
}

void sub_1C4C07300()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B607F8(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 16 * v7);
  sub_1C456902C(&qword_1EC0B8C10, &qword_1C4F5D530);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4461B98((v10 + 16 * v0), v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C073D0()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60858(v4 - v8, 1);
  v9 = *v1;
  sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C443FC6C();
  v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v12 + 72);
  v14 = v11 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C459C4D4(v11 + v13 * v0, v15, v14);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C4C074E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1C4B608D0(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1C4474DD4((v8 + 32 + 8 * a2), v9 - a2, (v8 + 32 + 8 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C4C075A0()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60A38(v4 - v8, 1);
  v9 = *v1;
  sub_1C4EF9CD8();
  sub_1C443FC6C();
  v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v12 + 72);
  v14 = v11 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C459C458(v11 + v13 * v0, v15, v14);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C076A8()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C449AE50(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 16 * v7);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4461B98((v10 + 16 * v0), v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C07768()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60BB8(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 8 * v7);
  sub_1C456902C(&qword_1EC0B8988, &unk_1C4F5D520);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4474DF4((v10 + 8 * v0), v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C07838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C443FC6C();
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = v14 + v12 * a1;
  swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15 + v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      sub_1C459C470(v14 + v12 * a2, v18 - a2, v15 + v12 * a3);
      v19 = *(v9 + 16);
      v20 = __OFADD__(v19, v16);
      v21 = v19 + v16;
      if (!v20)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
LABEL_14:
    sub_1C4423A0C(a4, &qword_1EC0BB1D8, &qword_1C4F1E1A8);
    return;
  }

  v23 = 0;
  while ((v23 & 1) == 0)
  {
    sub_1C44600A0(a4, v15, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v15 += v12;
    v23 = 1;
    if (v15 >= v17)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

void sub_1C4C079AC()
{
  sub_1C442F0C4();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 16 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_15;
  }

  sub_1C4461B98((v9 + 32 + 16 * v8), v13 - v8, (v10 + 16 * v7));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  sub_1C4422220();
}

_BYTE *storeEnumTagSinglePayload for SignalPipelineError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4C07B9C()
{
  result = qword_1EC0C4B60;
  if (!qword_1EC0C4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4B60);
  }

  return result;
}

uint64_t sub_1C4C07C04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, 0x49uLL);
      memcpy(__src, v7, 0x49uLL);
      sub_1C470CD44(__dst, v9);
      sub_1C4C089E4(__src, a2, a3);
      if (v3)
      {
        break;
      }

      memcpy(v9, __src, 0x49uLL);
      sub_1C470CDA0(v9);
      v7 += 80;
      if (!--v6)
      {
      }
    }

    memcpy(v9, __src, 0x49uLL);
    sub_1C470CDA0(v9);
  }
}

uint64_t sub_1C4C07CD8(uint64_t result, char a2, uint64_t *a3)
{
  v6 = *(result + 16);
  v7 = (result + 64);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v12[0] = *(v7 - 4);
      v12[1] = v11;
      v12[2] = v9;
      v12[3] = v10;
      v13 = v8;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C0B52C(v12, a2 & 1, a3);
      if (v3)
      {
        break;
      }

      v7 += 40;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_1C4C07DB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FE61C();
  v14 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for EntityEdge(0) + 20);
  v19 = *(v14 + 48);
  sub_1C457E858(a1 + v18, v17);
  sub_1C457E858(a2 + v18, &v17[v19]);
  sub_1C4406BE8(v17);
  if (v20)
  {
    sub_1C4406BE8(&v17[v19]);
    if (v20)
    {
      sub_1C4420C3C(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1C457E858(v17, v2);
  sub_1C4406BE8(&v17[v19]);
  if (v20)
  {
    (*(v7 + 8))(v2, v5);
LABEL_10:
    sub_1C4420C3C(v17, &qword_1EC0B8580, &unk_1C4F0D340);
    return 0;
  }

  (*(v7 + 32))(v11, &v17[v19], v5);
  sub_1C4407EF4();
  sub_1C4C0BF14(v22, v23, MEMORY[0x1E69A9830]);
  v24 = sub_1C4F010B8();
  v25 = *(v7 + 8);
  v25(v11, v5);
  v25(v2, v5);
  sub_1C4420C3C(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
  return (v24 & 1) != 0;
}

uint64_t sub_1C4C08050(uint64_t a1)
{
  v4 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4401780();
  sub_1C4407EF4();
  sub_1C4C0BF14(v10, v11, MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  v12 = type metadata accessor for EntityEdge(0);
  sub_1C457E858(v1 + *(v12 + 20), v3);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    return sub_1C4F02B18();
  }

  (*(v6 + 32))(v2, v3, v4);
  sub_1C4F02B18();
  sub_1C4F00FE8();
  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C4C081F8()
{
  v2 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FE61C();
  sub_1C4F02AF8();
  sub_1C4407EF4();
  sub_1C4C0BF14(v11, v12, MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  v13 = type metadata accessor for EntityEdge(0);
  sub_1C457E858(v0 + *(v13 + 20), v1);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v4 + 32))(v8, v1, v2);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v4 + 8))(v8, v2);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C083BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4401780();
  sub_1C4F02AF8();
  sub_1C4407EF4();
  sub_1C4C0BF14(v14, v15, MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  sub_1C457E858(v2 + *(a2 + 20), v3);
  if (sub_1C44157D4(v3, 1, v5) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v7 + 32))(v11, v3, v5);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v7 + 8))(v11, v5);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C08580()
{
  sub_1C442E860(v0 + 120, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

void sub_1C4C085F0()
{
  v3 = v0;
  v42 = sub_1C456902C(&qword_1EC0C4B68, &unk_1C4F5D680);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4401780();
  sub_1C442E860((v0 + 15), v36);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4B70, &qword_1C4F5D690);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v34, v39);
    sub_1C442E860((v0 + 10), v36);
    v5 = v37;
    v6 = v38;
    sub_1C4409678(v36, v37);
    v7 = *(v6 + 16);
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = v7(v8, 1, 0, v5, v6);

    sub_1C440962C(v36);
    if (v1)
    {
      sub_1C440962C(v39);
    }

    else
    {
      v36[0] = MEMORY[0x1E69E7CC8];

      sub_1C4C07C04(v9, v36, v3);

      v12 = v36[0];
      v13 = v36[0] + 64;
      v14 = 1 << *(v36[0] + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v36[0] + 64);
      v17 = (v14 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = 0;
      v33 = MEMORY[0x1E69E7CC0];
      while (v16)
      {
LABEL_13:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = v20 | (v18 << 6);
        v22 = *(v12 + 48);
        v23 = type metadata accessor for EntityEdge(0);
        sub_1C43FBD18(v23);
        sub_1C4C0B7DC(v22 + *(v24 + 72) * v21, v2);
        v25 = *(*(v12 + 56) + 8 * v21);
        *(v2 + *(v42 + 48)) = v25;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v26 = sub_1C4C0A09C(v2, v25, v3);
        sub_1C4420C3C(v2, &qword_1EC0C4B68, &unk_1C4F5D680);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B824();
            v33 = v29;
          }

          v27 = *(v33 + 16);
          v28 = v27 + 1;
          if (v27 >= *(v33 + 24) >> 1)
          {
            sub_1C458B824();
            v28 = v27 + 1;
            v33 = v30;
          }

          *(v33 + 16) = v28;
          *(v33 + 8 * v27 + 32) = v26;
        }
      }

      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {

          v31 = v40;
          v32 = v41;
          sub_1C4409678(v39, v40);
          (*(*(v32 + 8) + 8))(v33, v31);

          sub_1C440962C(v39);
          return;
        }

        v16 = *(v13 + 8 * v19);
        ++v18;
        if (v16)
        {
          v18 = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1C4420C3C(v34, &qword_1EC0C4B78, &qword_1C4F5D698);
    v10 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v10);
    *v11 = 0xD00000000000003CLL;
    *(v11 + 8) = 0x80000001C4FB9AA0;
    *(v11 + 16) = 3;
    swift_willThrow();
  }
}

void sub_1C4C089E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v194 = a3;
  v196 = a2;
  v184 = type metadata accessor for EntityEdge(0);
  MEMORY[0x1EEE9AC00](v184);
  v191 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v177 - v6;
  v7 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v187 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v177 - v10;
  v11 = sub_1C4EFB258();
  v198 = *(v11 - 8);
  v199 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v186 = (&v177 - v14);
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v192 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v190 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v177 - v23;
  v203 = sub_1C4EFF0C8();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v25 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v177 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v188 = &v177 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v197 = &v177 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v177 - v34;
  v36 = a1[1];
  v179 = *a1;
  v189 = v36;
  v37 = a1[3];
  v185 = a1[2];
  v195 = v37;
  v38 = a1[4];
  v39 = a1[5];
  v40 = a1[7];
  v200 = a1[6];
  v201 = v40;
  v41 = MEMORY[0x1E69E6158];
  v207 = MEMORY[0x1E69E6158];
  *&v206 = v38;
  *(&v206 + 1) = v39;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v43 = v42;
  sub_1C440962C(&v206);
  if (!v43)
  {
    v197 = v25;
    v180 = v35;
    v207 = v41;
    *&v206 = v38;
    *(&v206 + 1) = v39;
    v178 = v39;
    v46 = v192;
    v45 = v193;
    sub_1C4C82A1C(&v206);
    v47 = v203;
    v48 = sub_1C44157D4(v45, 1, v203);
    if (v48 == 1)
    {
      sub_1C4420C3C(v45, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v49 = *(v194 + 160);
      v50 = v180;
      if (!v49)
      {
        v53 = v178;

        goto LABEL_34;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v51 = v46;
      v52 = v178;
      sub_1C465C294(v38, v178, v49);

      if (sub_1C44157D4(v51, 1, v47) == 1)
      {

        sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v53 = v52;
LABEL_34:
        v105 = v38;
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v106 = sub_1C4F00978();
        sub_1C442B738(v106, qword_1EDE2DF70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v108 = v200;
        v107 = v201;
        sub_1C44344B8(v200, v201);
        v60 = sub_1C4F00968();
        v109 = sub_1C4F01CD8();

        sub_1C4434000(v108, v107);
        if (!os_log_type_enabled(v60, v109))
        {
          goto LABEL_39;
        }

        v62 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *&v206 = v110;
        *v62 = 136315138;
        *(v62 + 4) = sub_1C441D828(v105, v53, &v206);
        _os_log_impl(&dword_1C43F8000, v60, v109, "FeatureSignalRowViewGenerator: Expected identifier fields not present in input feature row or bundle map: %s.", v62, 0xCu);
        sub_1C440962C(v110);
        MEMORY[0x1C6942830](v110, -1, -1);
        goto LABEL_38;
      }

      LODWORD(v190) = 1;
      v193 = v38;
      v132 = v202;
      (*(v202 + 32))(v28, v51, v47);
      v133 = *(v132 + 16);
      v133(v50, v28, v47);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v134 = sub_1C4F00978();
      sub_1C442B738(v134, qword_1EDE2DF70);
      v133(v197, v28, v47);
      v192 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v135 = v178;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v136 = v200;
      v137 = v201;
      sub_1C44344B8(v200, v201);
      v138 = sub_1C4F00968();
      v139 = sub_1C4F01CB8();

      sub_1C4434000(v136, v137);
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *&v206 = v188;
        *v140 = 136315394;
        *(v140 + 4) = sub_1C441D828(v193, v135, &v206);
        *(v140 + 12) = 2080;
        v186 = v138;
        v141 = v197;
        v142 = v139;
        v143 = sub_1C4EFF048();
        v145 = v144;
        v146 = *(v202 + 8);
        v146(v141, v47);
        v147 = sub_1C441D828(v143, v145, &v206);

        *(v140 + 14) = v147;
        v148 = v186;
        _os_log_impl(&dword_1C43F8000, v186, v142, "FeatureSignalRowViewGenerator: Got value for %s: %s", v140, 0x16u);
        v149 = v188;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v149, -1, -1);
        MEMORY[0x1C6942830](v140, -1, -1);

        v38 = v193;
        v146(v192, v47);
        v64 = v198;
        v65 = v199;
        v66 = v191;
        v63 = MEMORY[0x1E69E6158];
      }

      else
      {

        v176 = *(v202 + 8);
        v176(v197, v47);
        v176(v192, v47);
        v64 = v198;
        v65 = v199;
        v66 = v191;
        v63 = MEMORY[0x1E69E6158];
        v38 = v193;
      }
    }

    else
    {
      v63 = v41;
      LODWORD(v190) = v48;
      (*(v202 + 32))(v180, v45, v47);
      v64 = v198;
      v65 = v199;
      v66 = v191;
    }

    sub_1C44344B8(v200, v201);
    v67 = v187;
    DatabaseValue.init(featureValueData:)(v187);
    if (sub_1C44157D4(v67, 1, v65) == 1)
    {

      sub_1C4420C3C(v67, &qword_1EC0C1AE8, &qword_1C4F5D6A0);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v68 = sub_1C4F00978();
      sub_1C442B738(v68, qword_1EDE2DF70);
      v69 = sub_1C4F00968();
      v70 = sub_1C4F01CD8();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v202;
      v73 = v203;
      if (v71)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1C43F8000, v69, v70, "FeatureSignalRowViewGenerator: Expected data to be an MLFeatureValue", v74, 2u);
        MEMORY[0x1C6942830](v74, -1, -1);
      }

      (*(v72 + 8))(v180, v73);
    }

    else
    {
      v193 = v38;
      v82 = v64;
      v83 = *(v64 + 32);
      v84 = v183;
      v83(v183, v67, v65);
      v85 = v203;
      (*(v202 + 16))(v66, v180, v203);
      sub_1C440BAA8(v66 + *(v184 + 20), 1, 1, v85);
      v86 = sub_1C465CC08(v66, *v196);
      if (!v86)
      {
        sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0D130;
        *(inited + 32) = 0x44495F444DLL;
        *(inited + 40) = 0xE500000000000000;
        v88 = sub_1C4EFF068();
        v89 = MEMORY[0x1E69A0138];
        *(inited + 72) = v63;
        *(inited + 80) = v89;
        *(inited + 48) = v88;
        *(inited + 56) = v90;
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        v86 = sub_1C4F00F28();
      }

      v91 = v86;
      if (v190 == 1)
      {
        v207 = v63;
        v208 = MEMORY[0x1E69A0138];
        *&v206 = v193;
        *(&v206 + 1) = v178;
        sub_1C441D670(&v206, v204);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v209 = v91;
        v93 = sub_1C4418280(v204, v205);
        v94 = MEMORY[0x1EEE9AC00](v93);
        v96 = (&v177 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v97 + 16))(v96, v94);
        sub_1C4C0BA5C(*v96, v96[1], 0x495F7463656A626FLL, 0xE900000000000044, isUniquelyReferenced_nonNull_native, &v209);
        sub_1C440962C(v204);
        v84 = v183;
        v91 = v209;
      }

      else
      {
      }

      v111 = v202;
      if (*(v194 + 168) == 1)
      {
        *&v206 = v179;
        *(&v206 + 1) = v189;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v185, v195);
        v112 = v206;
        v207 = v65;
        v208 = MEMORY[0x1E699FE38];
        v113 = sub_1C4422F90(&v206);
        (*(v82 + 16))(v113, v84, v65);
        sub_1C441D670(&v206, v204);
        v114 = v84;
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v209 = v91;
        v116 = sub_1C4418280(v204, v205);
        v117 = MEMORY[0x1EEE9AC00](v116);
        v119 = &v177 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v120 + 16))(v119, v117);
        v121 = v119;
        v65 = v199;
        sub_1C4C0B838(v121, v112, *(&v112 + 1), v115, &v209);
        sub_1C440962C(v204);

        v82 = v198;
      }

      else
      {
        v207 = v65;
        v208 = MEMORY[0x1E699FE38];
        v122 = sub_1C4422F90(&v206);
        (*(v82 + 16))(v122, v84, v65);
        sub_1C441D670(&v206, v204);
        v114 = v84;
        v123 = v195;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v209 = v91;
        v125 = sub_1C4418280(v204, v205);
        v201 = &v177;
        v126 = MEMORY[0x1EEE9AC00](v125);
        v128 = &v177 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v129 + 16))(v128, v126);
        sub_1C4C0B838(v128, v185, v123, v124, &v209);
        sub_1C440962C(v204);
      }

      v130 = v196;
      swift_isUniquelyReferenced_nonNull_native();
      *&v206 = *v130;
      v131 = v191;
      sub_1C4662AA0();
      *v130 = v206;
      sub_1C443CF2C(v131, type metadata accessor for EntityEdge);
      (*(v82 + 8))(v114, v65);
      (*(v111 + 8))(v180, v203);
    }

    return;
  }

  swift_bridgeObjectRelease_n();
  sub_1C48685A4(v43, v21);
  v44 = v203;
  if (sub_1C44157D4(v21, 1, v203) == 1)
  {

LABEL_10:
    sub_1C4420C3C(v21, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v59 = sub_1C4F00978();
    sub_1C442B738(v59, qword_1EDE2DF70);
    v60 = sub_1C4F00968();
    v61 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_39;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1C43F8000, v60, v61, "FeatureSignalRowViewGenerator: Expected fields not present in input feature row", v62, 2u);
LABEL_38:
    MEMORY[0x1C6942830](v62, -1, -1);
LABEL_39:

    return;
  }

  v54 = v202;
  v55 = *(v202 + 32);
  v56 = v197;
  v55(v197, v21, v44);
  v57 = v190;
  sub_1C4A3E1CC(v43, v190);

  v58 = v44;
  if (sub_1C44157D4(v57, 1, v44) == 1)
  {
    (*(v54 + 8))(v56, v44);
    v21 = v57;
    goto LABEL_10;
  }

  v75 = v188;
  v55(v188, v57, v58);
  sub_1C44344B8(v200, v201);
  v76 = v181;
  DatabaseValue.init(featureValueData:)(v181);
  v77 = v199;
  if (sub_1C44157D4(v76, 1, v199) == 1)
  {
    sub_1C4420C3C(v76, &qword_1EC0C1AE8, &qword_1C4F5D6A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v78 = sub_1C4F00978();
    sub_1C442B738(v78, qword_1EDE2DF70);
    v79 = sub_1C4F00968();
    v80 = sub_1C4F01CD8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1C43F8000, v79, v80, "FeatureSignalRowViewGenerator: Expected data to be an MLFeatureValue", v81, 2u);
      MEMORY[0x1C6942830](v81, -1, -1);
    }
  }

  else
  {
    (*(v198 + 32))(v186, v76, v77);
    v98 = *(v54 + 16);
    v99 = v182;
    v98(v182, v56, v58);
    v100 = *(v184 + 20);
    v98((v99 + v100), v75, v58);
    sub_1C440BAA8(v99 + v100, 0, 1, v58);
    v101 = sub_1C465CC08(v99, *v196);
    v102 = MEMORY[0x1E699FE38];
    if (v101)
    {
      v103 = v101;
      v104 = v77;
      v75 = v188;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
      v150 = swift_initStackObject();
      *(v150 + 16) = xmmword_1C4F0CE60;
      *(v150 + 32) = 0x44495F444DLL;
      *(v150 + 40) = 0xE500000000000000;
      v104 = v77;
      *(v150 + 72) = v77;
      *(v150 + 80) = v102;
      sub_1C4422F90((v150 + 48));
      sub_1C4EFF058();
      *(v150 + 88) = 0x495F7463656A626FLL;
      *(v150 + 96) = 0xE900000000000044;
      v75 = v188;
      v151 = sub_1C4EFF068();
      v152 = MEMORY[0x1E69A0138];
      *(v150 + 128) = MEMORY[0x1E69E6158];
      *(v150 + 136) = v152;
      *(v150 + 104) = v151;
      *(v150 + 112) = v153;
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      v103 = sub_1C4F00F28();
    }

    if (*(v194 + 168) == 1)
    {
      *&v206 = v179;
      *(&v206 + 1) = v189;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](95, 0xE100000000000000);
      MEMORY[0x1C6940010](v185, v195);
      v154 = v206;
      v207 = v104;
      v208 = v102;
      v155 = sub_1C4422F90(&v206);
      (*(v198 + 16))(v155, v186, v104);
      sub_1C441D670(&v206, v204);
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v209 = v103;
      v157 = sub_1C4418280(v204, v205);
      v158 = MEMORY[0x1EEE9AC00](v157);
      v160 = &v177 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v161 + 16))(v160, v158);
      v162 = v160;
      v163 = v199;
      sub_1C4C0B838(v162, v154, *(&v154 + 1), v156, &v209);
      sub_1C440962C(v204);

      v75 = v188;
      v164 = v198;
    }

    else
    {
      v163 = v104;
      v207 = v104;
      v208 = v102;
      v165 = sub_1C4422F90(&v206);
      v166 = v198;
      (*(v198 + 16))(v165, v186, v104);
      sub_1C441D670(&v206, v204);
      v167 = v195;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      LODWORD(v200) = swift_isUniquelyReferenced_nonNull_native();
      v209 = v103;
      v168 = sub_1C4418280(v204, v205);
      v201 = &v177;
      v169 = MEMORY[0x1EEE9AC00](v168);
      v171 = &v177 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v172 + 16))(v171, v169);
      sub_1C4C0B838(v171, v185, v167, v200, &v209);
      sub_1C440962C(v204);
      v164 = v166;
    }

    v173 = v196;
    swift_isUniquelyReferenced_nonNull_native();
    *&v206 = *v173;
    v174 = v182;
    sub_1C4662AA0();
    *v173 = v206;
    sub_1C443CF2C(v174, type metadata accessor for EntityEdge);
    (*(v164 + 8))(v186, v163);
  }

  v175 = *(v54 + 8);
  v175(v75, v58);
  v175(v197, v58);
}

uint64_t sub_1C4C0A09C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a3[18];
  v8 = a3[19];
  v10 = sub_1C4409678(a3 + 15, v9);
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = (*(v8 + 24))(v9, v8);
  (*(v11 + 8))(v14, v9);
  v16 = *(v15 + 16);
  if (v16)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v17 = v29;
    v18 = *(v5 + 80);
    v25[1] = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v20 = *(v5 + 72);
    do
    {
      sub_1C4C0B7DC(v19, v7);
      if (*(a2 + 16) && (v21 = sub_1C445FAA8(*v7, v7[1]), (v22 & 1) != 0))
      {
        sub_1C442E860(*(a2 + 56) + 40 * v21, v27);
        sub_1C443CF2C(v7, type metadata accessor for ViewDatabaseArtifact.Property);
        sub_1C441D670(v27, v28);
      }

      else
      {
        static DatabaseValue.emptyValue(forType:)(v7 + *(v26 + 20), v28);
        sub_1C443CF2C(v7, type metadata accessor for ViewDatabaseArtifact.Property);
      }

      v29 = v17;
      v23 = *(v17 + 16);
      if (v23 >= *(v17 + 24) >> 1)
      {
        sub_1C459D930();
        v17 = v29;
      }

      *(v17 + 16) = v23 + 1;
      sub_1C441D670(v28, v17 + 40 * v23 + 32);
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v17;
}

void *sub_1C4C0A398()
{

  sub_1C440962C(v0 + 5);
  sub_1C440962C(v0 + 10);
  sub_1C440962C(v0 + 15);

  return v0;
}

uint64_t sub_1C4C0A3E0()
{
  sub_1C4C0A398();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C0A438(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v6 = v4;
  v68 = a3;
  v10 = _s10ViewConfigVMa(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (qword_1EDDFECD0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DF70);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v14))
  {
    v15 = sub_1C43FCED0();
    sub_1C44039A4(v15);
    sub_1C4402B90(&dword_1C43F8000, v16, v17, "FeatureSignalRowViewGenerationProvider: providing view");
    sub_1C440E904();
    sub_1C43FBE2C();
  }

  v18 = *(a4 + 16);
  sub_1C443A738(a1, a2, v19, v20, v21, v22, v23, v24);
  if (!v6)
  {
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CB8();
    v54 = a1;
    if (sub_1C43FDD64(v27))
    {
      v28 = sub_1C43FCED0();
      sub_1C44039A4(v28);
      sub_1C4402B90(&dword_1C43F8000, v29, v30, "FeatureSignalRowViewGenerationProvider: got view config");
      sub_1C440E904();
      sub_1C43FBE2C();
    }

    sub_1C4BE2E24(0x6449656C646E7562, 0xEB0000000070614DLL, v66);
    memcpy(__dst, v66, 0x48uLL);
    sub_1C46A9810(__dst, &v56);
    v6 = 0;
    v49 = sub_1C4AF460C();
    v55 = a4;
    v52 = a2;
    v53 = v5;
    sub_1C4AF99F4(__dst);
    v56 = MEMORY[0x1E69E7CC8];
    a1 = sub_1C4428DA0(v49);
    a4 = 0;
    v5 = v49 & 0xC000000000000001;
    a2 = v49 & 0xFFFFFFFFFFFFFF8;
    while (a1 != a4)
    {
      if (v5)
      {
        v50 = MEMORY[0x1C6940F90](a4, v49);
      }

      else
      {
        if (a4 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v50 = *(v49 + 8 * a4 + 32);
      }

      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      *&v65[0] = v50;
      sub_1C4C0AA00(&v56);

      ++a4;
    }

    sub_1C4BCDE54(v66);
    v51 = v56;
    ViewGeneration.ViewClients.anyFeatureViewClient()(&v56);
    v31 = v57;
    if (v57)
    {
      v32 = v58;
      v33 = v56;

      sub_1C46B6BD8(v33, v31);

      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CB8();
      if (sub_1C43FDD64(v35))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v36, v37, "FeatureSignalRowViewGenerationProvider: got view loader");
        sub_1C43FBE2C();
      }

      v41 = sub_1C4C0B024(&v56, v53, v55, v68 & 1);
      v43 = v42;
      v18 = sub_1C4F00968();
      v44 = sub_1C4F01CB8();
      if (sub_1C43FDD64(v44))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v45, v46, "FeatureSignalRowViewGenerationProvider: got view store");
        sub_1C43FBE2C();
      }

      sub_1C442E860(&v56, v65);
      _s29FeatureSignalRowViewGeneratorCMa();
      swift_allocObject();
      sub_1C43FBE94();
      v63 = type metadata accessor for ViewDatabaseArtifact();
      v64 = &off_1F4405BC8;
      *&v62 = v32;
      v60 = &type metadata for ViewGeneration.FeatureViewClient;
      v61 = &off_1F43EC500;
      v47 = swift_allocObject();
      *&v59 = v47;
      v47[2] = 0x7365727574616566;
      v47[3] = 0xE800000000000000;
      v47[4] = 30315;
      v47[5] = 0xE200000000000000;
      v47[6] = v32;
      sub_1C440962C(&v56);
      sub_1C441A804();
      sub_1C443CF2C(v53, v48);
      *(v18 + 160) = 0;
      sub_1C441D670(&v62, v18 + 40);
      sub_1C441D670(&v59, v18 + 80);
      sub_1C441D670(v65, v18 + 120);
      *(v18 + 16) = v54;
      *(v18 + 24) = v52;
      *(v18 + 32) = v41;
      *(v18 + 160) = v51;
      *(v18 + 168) = v43 & 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {

      v18 = 0x80000001C4FB9AE0;
      v38 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v38);
      *v39 = 0xD000000000000014;
      *(v39 + 8) = 0x80000001C4FB9AE0;
      *(v39 + 16) = 0xD000000000000035;
      *(v39 + 24) = 0x80000001C4FB9B00;
      *(v39 + 32) = 0;
      *(v39 + 40) = 0xE000000000000000;
      *(v39 + 48) = v65[0];
      *(v39 + 64) = 0;
      swift_willThrow();
      sub_1C441A804();
      sub_1C443CF2C(v53, v40);
    }
  }

  return v18;
}

void sub_1C4C0AA00(uint64_t a1)
{
  v38 = a1;
  v2 = sub_1C4EFB258();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC68();
  if (v35)
  {
    sub_1C441D670(&v34, v36);
    sub_1C4EFBC68();
    if (v35)
    {
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if (swift_dynamicCast())
      {
        v31[0] = v33[0];
        v31[1] = v33[1];
        v31[2] = v1;
        v15 = v37;
        v16 = sub_1C4409678(v36, v37);
        v35 = v15;
        v17 = sub_1C4422F90(&v34);
        (*(*(v15 - 8) + 16))(v17, v16, v15);
        sub_1C4C82A1C(&v34);
        if (sub_1C44157D4(v10, 1, v11) == 1)
        {

          sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
          if (qword_1EDDFECD0 != -1)
          {
            swift_once();
          }

          v18 = sub_1C4F00978();
          sub_1C442B738(v18, qword_1EDE2DF70);
          sub_1C442E860(v36, &v34);
          v19 = sub_1C4F00968();
          v20 = sub_1C4F01CD8();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v33[0] = v22;
            *v21 = 136315138;
            sub_1C4409678(&v34, v35);
            sub_1C4EFB938();
            sub_1C4C0BF14(&qword_1EC0C35A0, MEMORY[0x1E699FE40], MEMORY[0x1E699FE48]);
            v23 = sub_1C4F02858();
            v25 = v24;
            (*(v32 + 8))(v4, v2);
            sub_1C440962C(&v34);
            v26 = sub_1C441D828(v23, v25, v33);

            *(v21 + 4) = v26;
            _os_log_impl(&dword_1C43F8000, v19, v20, "BundleIDMap: Could not cast %s to EntityIdentifier", v21, 0xCu);
            sub_1C440962C(v22);
            MEMORY[0x1C6942830](v22, -1, -1);
            MEMORY[0x1C6942830](v21, -1, -1);
          }

          else
          {

            sub_1C440962C(&v34);
          }

          sub_1C440962C(v36);
        }

        else
        {
          (*(v12 + 32))(v14, v10, v11);
          (*(v12 + 16))(v7, v14, v11);
          sub_1C440BAA8(v7, 0, 1, v11);
          sub_1C4C80730();
          (*(v12 + 8))(v14, v11);
          sub_1C440962C(v36);
        }

        return;
      }
    }

    else
    {
      sub_1C4420C3C(&v34, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    sub_1C440962C(v36);
  }

  else
  {
    sub_1C4420C3C(&v34, &qword_1EC0B9038, &unk_1C4F231C0);
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C4F00978();
  sub_1C442B738(v27, qword_1EDE2DF70);
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CD8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C43F8000, v28, v29, "BundleIDMap: Unexpected id or bundle id type", v30, 2u);
    MEMORY[0x1C6942830](v30, -1, -1);
  }
}