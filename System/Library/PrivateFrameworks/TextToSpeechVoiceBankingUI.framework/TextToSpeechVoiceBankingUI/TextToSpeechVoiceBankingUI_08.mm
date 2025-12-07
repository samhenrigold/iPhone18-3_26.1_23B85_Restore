uint64_t sub_26EEE4EBC()
{
  v54 = v0;
  v1 = v0[37];
  swift_getKeyPath();
  v0[66] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  v0[36] = v1;
  v0[67] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  sub_26EF3800C();

  v2 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  v0[68] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  swift_beginAccess();
  if (*(v1 + v2) - 3 >= 3)
  {

    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    v12 = os_log_type_enabled(v4, v5);
    v7 = v0[61];
    v8 = v0[55];
    v9 = v0[56];
    if (v12)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Assets are downloading. Bailing.";
      goto LABEL_7;
    }

LABEL_8:

    (*(v9 + 8))(v7, v8);

    v13 = v0[1];

    return v13();
  }

  v3 = v0[37];
  swift_getKeyPath();
  v0[34] = v3;
  sub_26EF3800C();

  if (sub_26EE9C28C(*(v1 + v2), 4u))
  {

    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[60];
    v8 = v0[55];
    v9 = v0[56];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Scripts are loading. Bailing.";
LABEL_7:
      _os_log_impl(&dword_26EE01000, v4, v5, v11, v10, 2u);
      MEMORY[0x2743842A0](v10, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = v0[37];
  sub_26EF3934C();
  v16 = v15;
  v17 = sub_26EF3881C();
  v18 = sub_26EF3B47C();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[59];
  v22 = v0[55];
  v21 = v0[56];
  if (v19)
  {
    log = v17;
    v23 = v0[54];
    v50 = v18;
    v24 = v0[49];
    v46 = v0[48];
    v52 = v0[59];
    v25 = v0[37];
    v47 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v47 = 136315394;
    v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v24 + 16))(v23, v25 + v26, v46);
    v27 = sub_26EF38CAC();
    v48 = v21;
    v29 = v28;
    (*(v24 + 8))(v23, v46);
    v30 = sub_26EE40670(v27, v29, &v53);

    *(v47 + 4) = v30;
    *(v47 + 12) = 2080;
    swift_getKeyPath();
    v0[35] = v25;
    sub_26EF3800C();

    swift_beginAccess();
    v31 = sub_26EF3B0FC();
    v33 = sub_26EE40670(v31, v32, &v53);

    *(v47 + 14) = v33;
    _os_log_impl(&dword_26EE01000, log, v50, "Will set up VoiceBankingSession with localeID: '%s' scriptType: '%s'", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v49, -1, -1);
    MEMORY[0x2743842A0](v47, -1, -1);

    v34 = *(v48 + 8);
    v34(v52, v22);
    v35 = &unk_2806CF000;
  }

  else
  {

    v34 = *(v21 + 8);
    v34(v20, v22);
    v35 = &unk_2806CF000;
  }

  v0[69] = v34;
  v36 = v0[54];
  v37 = v0[48];
  v38 = v0[49];
  v39 = v0[37];
  v40 = v35[333];
  v0[70] = v40;
  swift_beginAccess();
  v41 = *(v38 + 16);
  v0[71] = v41;
  v0[72] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v36, v39 + v40, v37);
  v0[73] = sub_26EF38CAC();
  v0[74] = v42;
  v43 = *(v38 + 8);
  v0[75] = v43;
  v0[76] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v36, v37);
  v0[77] = *MEMORY[0x277D70748];
  v0[78] = *MEMORY[0x277D70760];
  v0[79] = sub_26EF3B2CC();
  v45 = sub_26EF3B29C();
  v0[80] = v45;
  v0[81] = v44;

  return MEMORY[0x2822009F8](sub_26EEE5534, v45, v44);
}

uint64_t sub_26EEE5534(uint64_t a1)
{
  v2 = *(v1 + 624);
  v3 = *(v1 + 616);
  v11 = *(v1 + 584);
  v4 = *(v1 + 296);
  v5 = sub_26EF3B2CC();
  *(v1 + 656) = v5;
  v6 = swift_task_alloc();
  *(v1 + 664) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v11;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = swift_task_alloc();
  *(v1 + 672) = v7;
  *v7 = v1;
  v7[1] = sub_26EEE5670;
  v8 = MEMORY[0x277D85700];
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v1 + 1032, v5, v8, 0xD00000000000002DLL, 0x800000026EF46B30, sub_26EEF1CD4, v6, v9);
}

uint64_t sub_26EEE5670()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return MEMORY[0x2822009F8](sub_26EEE57F4, v3, v2);
}

uint64_t sub_26EEE57F4()
{

  *(v0 + 1040) = *(v0 + 1032);
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE5864, v2, v1);
}

uint64_t sub_26EEE5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 1040) & 1) != 0 || (v5 = *(v3 + 368), v4 = *(v3 + 376), v6 = *(v3 + 352), v7 = *(v3 + 360), (*(**(*(v3 + 296) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel) + 104))(a1, a2, a3), (*(v7 + 104))(v5, *MEMORY[0x277CD8F78], v6), v8 = sub_26EF395BC(), v9 = *(v7 + 8), v9(v5, v6), a1 = (v9)(v4, v6), (v8))
  {
    *(v3 + 1033) = *(*(v3 + 296) + *(v3 + 544));
    *(v3 + 680) = sub_26EE1C384(a1, a2, a3);
    if (sub_26EF3B0AC())
    {
      *(*(v3 + 296) + *(v3 + 544)) = 0;
    }

    else
    {
      v10 = *(v3 + 296);
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v3 + 232) = v10;
      sub_26EF37FFC();
    }

    v12 = *(v3 + 600);
    v13 = *(v3 + 568);
    v14 = *(v3 + 560);
    v15 = *(v3 + 424);
    v16 = *(v3 + 384);
    v17 = *(v3 + 296);
    v18 = *MEMORY[0x277D70768];
    *(v3 + 688) = *MEMORY[0x277D70768];
    v13(v15, v17 + v14, v16);
    v19 = v18;
    v20 = sub_26EF38CAC();
    v22 = v21;
    *(v3 + 696) = v21;
    v12(v15, v16);
    v23 = swift_task_alloc();
    *(v3 + 704) = v23;
    *v23 = v3;
    v23[1] = sub_26EEE5CB0;

    return VoiceBankingSession.fetchTrainingScriptItems(localeID:scriptType:)(v20, v22, v19);
  }

  else
  {
    v26 = *(v3 + 336);
    v25 = *(v3 + 344);
    v28 = *(v3 + 320);
    v27 = *(v3 + 328);
    v29 = *(v3 + 304);
    v30 = *(v3 + 312);

    (*(v26 + 104))(v25, *MEMORY[0x277D704E0], v27);
    (*(v30 + 104))(v28, *MEMORY[0x277D704D0], v29);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF38A5C();
    swift_willThrow();

    v31 = *(v3 + 8);

    return v31();
  }
}

uint64_t sub_26EEE5CB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = v4[86];

    v6 = v4[65];
    v7 = v4[64];
    v8 = sub_26EEE8378;
  }

  else
  {

    v4[90] = a1;
    v6 = v4[65];
    v7 = v4[64];
    v8 = sub_26EEE5E08;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26EEE5E08()
{
  v1 = v0[90];
  v2 = v0[86];
  v17 = v0[75];
  v16 = v0[71];
  v3 = v0[52];
  v14 = v0[48];
  v15 = v0[70];
  v4 = v0[37];
  swift_getKeyPath();
  v0[28] = v4;
  sub_26EF3800C();

  v0[24] = v4;
  swift_getKeyPath();
  sub_26EF3802C();

  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  v0[91] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + v5);
  *(v4 + v5) = 0x8000000000000000;
  sub_26EEF0EF8(v1, v2, isUniquelyReferenced_nonNull_native, &qword_2806C9380, &unk_26EF42CE0, type metadata accessor for TTSVBSiriTrainingScriptType);

  *(v4 + v5) = v18;
  swift_endAccess();
  v0[25] = v4;
  swift_getKeyPath();
  sub_26EF3801C();

  v7 = *MEMORY[0x277D70770];
  v0[92] = *MEMORY[0x277D70770];
  v16(v3, v4 + v15, v14);
  v8 = v7;
  v9 = sub_26EF38CAC();
  v11 = v10;
  v0[93] = v10;
  v17(v3, v14);
  v12 = swift_task_alloc();
  v0[94] = v12;
  *v12 = v0;
  v12[1] = sub_26EEE6070;

  return VoiceBankingSession.fetchTrainingScriptItems(localeID:scriptType:)(v9, v11, v8);
}

uint64_t sub_26EEE6070(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = v4[92];

    v6 = v4[65];
    v7 = v4[64];
    v8 = sub_26EEE849C;
  }

  else
  {

    v4[96] = a1;
    v6 = v4[65];
    v7 = v4[64];
    v8 = sub_26EEE61C8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26EEE61C8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 296);
  swift_getKeyPath();
  *(v0 + 208) = v4;
  sub_26EF3800C();

  *(v0 + 216) = v4;
  swift_getKeyPath();
  sub_26EF3802C();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + v3);
  *(v4 + v3) = 0x8000000000000000;
  sub_26EEF0EF8(v1, v2, isUniquelyReferenced_nonNull_native, &qword_2806C9380, &unk_26EF42CE0, type metadata accessor for TTSVBSiriTrainingScriptType);

  *(v4 + v3) = v24;
  swift_endAccess();
  *(v0 + 184) = v4;
  swift_getKeyPath();
  sub_26EF3801C();

  v6 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  *(v0 + 776) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  swift_beginAccess();
  v7 = *(v0 + 760);
  if (*(v4 + v6) != 33)
  {
    v8 = *(v0 + 296);
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 33;
    *(v0 + 240) = v8;
    sub_26EF37FFC();
  }

  *(v0 + 784) = v7;
  v10 = *(v0 + 616);
  v11 = *(v0 + 600);
  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 432);
  v15 = *(v0 + 384);
  v16 = *(v0 + 296);
  v17 = sub_26EF3922C();
  *(v0 + 1041) = v17 & 1;
  v18 = *MEMORY[0x277D70750];
  *(v0 + 792) = *MEMORY[0x277D70750];
  if ((v17 & 1) == 0)
  {
    v18 = v10;
  }

  v19 = v18;
  v12(v14, v16 + v13, v15);
  *(v0 + 800) = sub_26EF38CAC();
  *(v0 + 808) = v20;
  v11(v14, v15);
  *(v0 + 816) = *MEMORY[0x277D70758];
  *(v0 + 824) = sub_26EF3B2CC();
  v22 = sub_26EF3B29C();
  *(v0 + 832) = v22;
  *(v0 + 840) = v21;

  return MEMORY[0x2822009F8](sub_26EEE64E4, v22, v21);
}

uint64_t sub_26EEE64E4(uint64_t a1)
{
  v2 = *(v1 + 816);
  v3 = *(v1 + 808);
  v4 = *(v1 + 800);
  v5 = (v1 + 792);
  v6 = *(v1 + 296);
  if (!*(v1 + 1041))
  {
    v5 = (v1 + 616);
  }

  v7 = *v5;
  v8 = sub_26EF3B2CC();
  *(v1 + 848) = v8;
  v9 = swift_task_alloc();
  *(v1 + 856) = v9;
  v9[2] = v6;
  v9[3] = v4;
  v9[4] = v3;
  v9[5] = v7;
  v9[6] = v2;
  v10 = swift_task_alloc();
  *(v1 + 864) = v10;
  *v10 = v1;
  v10[1] = sub_26EEE662C;
  v11 = MEMORY[0x277D85700];
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v1 + 1035, v8, v11, 0xD00000000000002DLL, 0x800000026EF46B30, sub_26EEF31F8, v9, v12);
}

uint64_t sub_26EEE662C()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_26EEE67B0, v3, v2);
}

uint64_t sub_26EEE67B0()
{

  *(v0 + 1042) = *(v0 + 1035);
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE6820, v2, v1);
}

uint64_t sub_26EEE6820()
{
  if (*(v0 + 1042) == 1)
  {
    *(v0 + 952) = *(v0 + 784);
    sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
    v1 = sub_26EF3B48C();
    v2 = sub_26EF3B4CC();

    if (v2)
    {
      sub_26EF3934C();
      v3 = sub_26EF3881C();
      v4 = sub_26EF3B47C();
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 552);
      v7 = *(v0 + 464);
      v8 = *(v0 + 440);
      if (v5)
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_26EE01000, v3, v4, "Internal UseServerBasedASR=true. Will skip trying to download offline ASR models", v9, 2u);
        MEMORY[0x2743842A0](v9, -1, -1);
      }

      v6(v7, v8);
      v10 = *(v0 + 296);
      if (*(v10 + *(v0 + 776)) != 100)
      {
        swift_getKeyPath();
        v11 = swift_task_alloc();
        *(v11 + 16) = v10;
        *(v11 + 24) = 100;
        *(v0 + 264) = v10;
        sub_26EF37FFC();
      }

      v12 = swift_task_alloc();
      *(v0 + 1016) = v12;
      *v12 = v0;
      v12[1] = sub_26EEE8104;

      return VoiceBankingSession.loadSamples()();
    }

    else
    {
      v14 = *(v0 + 568);
      v15 = *(v0 + 560);
      v16 = *(v0 + 432);
      v17 = *(v0 + 384);
      v18 = *(v0 + 296);
      *(v0 + 960) = *(v18 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
      v19 = sub_26EF388BC();
      *(v0 + 968) = sub_26EF38EAC();

      v14(v16, v18 + v15, v17);
      v33 = (*MEMORY[0x277D706B0] + MEMORY[0x277D706B0]);
      v20 = swift_task_alloc();
      *(v0 + 976) = v20;
      *v20 = v0;
      v20[1] = sub_26EEE74C0;
      v21 = *(v0 + 432);

      return v33(v21);
    }
  }

  else
  {
    *(v0 + 1036) = *(*(v0 + 296) + *(v0 + 544));
    *(v0 + 1037) = 1;
    if (sub_26EF3B0AC())
    {
      *(*(v0 + 296) + *(v0 + 544)) = 1;
    }

    else
    {
      v22 = *(v0 + 296);
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v22;
      *(v23 + 24) = 1;
      *(v0 + 248) = v22;
      sub_26EF37FFC();
    }

    v24 = *(v0 + 600);
    v25 = *(v0 + 408);
    v26 = *(v0 + 384);
    v27 = *(v0 + 296);
    (*(v0 + 568))(v25, &v27[*(v0 + 560)], v26);
    *(v0 + 872) = sub_26EF38CAC();
    *(v0 + 880) = v28;
    v24(v25, v26);
    v29 = swift_allocObject();
    *(v0 + 888) = v29;
    *(v29 + 16) = v27;
    v30 = v27;
    *(v0 + 896) = sub_26EF3B2CC();
    v32 = sub_26EF3B29C();
    *(v0 + 904) = v32;
    *(v0 + 912) = v31;

    return MEMORY[0x2822009F8](sub_26EEE6CCC, v32, v31);
  }
}

uint64_t sub_26EEE6CCC(uint64_t a1)
{
  v2 = *(v1 + 888);
  v3 = *(v1 + 880);
  v4 = *(v1 + 872);
  v5 = *(v1 + 816);
  v6 = (v1 + 792);
  v7 = *(v1 + 296);
  if (!*(v1 + 1041))
  {
    v6 = (v1 + 616);
  }

  v8 = *v6;
  v9 = sub_26EF3B2CC();
  *(v1 + 920) = v9;
  v10 = swift_task_alloc();
  *(v1 + 928) = v10;
  v10[2] = v7;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v8;
  v10[6] = v5;
  v10[7] = sub_26EEF1D3C;
  v10[8] = v2;
  v11 = swift_task_alloc();
  *(v1 + 936) = v11;
  *v11 = v1;
  v11[1] = sub_26EEE6E30;
  v12 = MEMORY[0x277D85700];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, v9, v12, 0xD000000000000031, 0x800000026EF46930, sub_26EEF31FC, v10, v13);
}

uint64_t sub_26EEE6E30()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = *(v2 + 912);
    v4 = *(v2 + 904);
    v5 = sub_26EEE72E0;
  }

  else
  {

    v3 = *(v2 + 912);
    v4 = *(v2 + 904);
    v5 = sub_26EEE6F74;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26EEE6F74()
{

  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE6FE8, v2, v1);
}

uint64_t sub_26EEE6FE8()
{
  v0[119] = v0[118];
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v1 = sub_26EF3B48C();
  v2 = sub_26EF3B4CC();

  if (v2)
  {
    sub_26EF3934C();
    v3 = sub_26EF3881C();
    v4 = sub_26EF3B47C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[69];
    v7 = v0[58];
    v8 = v0[55];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26EE01000, v3, v4, "Internal UseServerBasedASR=true. Will skip trying to download offline ASR models", v9, 2u);
      MEMORY[0x2743842A0](v9, -1, -1);
    }

    v6(v7, v8);
    v10 = v0[37];
    if (*(v10 + v0[97]) != 100)
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = 100;
      v0[33] = v10;
      sub_26EF37FFC();
    }

    v12 = swift_task_alloc();
    v0[127] = v12;
    *v12 = v0;
    v12[1] = sub_26EEE8104;

    return VoiceBankingSession.loadSamples()();
  }

  else
  {
    v14 = v0[71];
    v15 = v0[70];
    v16 = v0[54];
    v17 = v0[48];
    v18 = v0[37];
    v0[120] = *(v18 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
    v19 = sub_26EF388BC();
    v0[121] = sub_26EF38EAC();

    v14(v16, v18 + v15, v17);
    v22 = (*MEMORY[0x277D706B0] + MEMORY[0x277D706B0]);
    v20 = swift_task_alloc();
    v0[122] = v20;
    *v20 = v0;
    v20[1] = sub_26EEE74C0;
    v21 = v0[54];

    return v22(v21);
  }
}

uint64_t sub_26EEE72E0()
{

  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE7380, v2, v1);
}

uint64_t sub_26EEE7380()
{
  v1 = (v0 + 792);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v2 = *v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEE74C0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 432);
  v6 = *(*v1 + 384);
  *(*v1 + 1043) = a1;

  v4(v5, v6);
  v7 = *(v2 + 520);
  v8 = *(v2 + 512);

  return MEMORY[0x2822009F8](sub_26EEE7674, v8, v7);
}

uint64_t sub_26EEE7674(uint64_t a1)
{
  v63 = v1;
  if (*(v1 + 1043))
  {
    v2 = *(v1 + 296);
    sub_26EF3934C();
    v3 = v2;
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();

    if (os_log_type_enabled(v4, v5))
    {
      v57 = *(v1 + 600);
      v6 = *(v1 + 568);
      v7 = *(v1 + 560);
      v59 = *(v1 + 456);
      v60 = *(v1 + 552);
      v8 = *(v1 + 432);
      v58 = *(v1 + 440);
      v9 = *(v1 + 384);
      v10 = *(v1 + 296);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136315138;
      v6(v8, v10 + v7, v9);
      v13 = sub_26EF38C7C();
      v15 = v14;
      v57(v8, v9);
      v16 = sub_26EE40670(v13, v15, &v62);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26EE01000, v4, v5, "%s speech recognition asset already downloaded.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2743842A0](v12, -1, -1);
      MEMORY[0x2743842A0](v11, -1, -1);

      v60(v59, v58);
    }

    else
    {
      v31 = *(v1 + 552);
      v32 = *(v1 + 456);
      v33 = *(v1 + 440);

      v31(v32, v33);
    }

    v34 = *(v1 + 296);
    if (*(v34 + *(v1 + 776)) != 100)
    {
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 100;
      *(v1 + 264) = v34;
      sub_26EF37FFC();
    }

    v36 = swift_task_alloc();
    *(v1 + 1016) = v36;
    *v36 = v1;
    v36[1] = sub_26EEE8104;

    return VoiceBankingSession.loadSamples()();
  }

  v18 = *(v1 + 368);
  v17 = *(v1 + 376);
  v19 = *(v1 + 352);
  v20 = *(v1 + 360);
  (*(**(*(v1 + 296) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel) + 104))(a1);
  (*(v20 + 104))(v18, *MEMORY[0x277CD8F78], v19);
  v21 = sub_26EF395BC();
  v22 = *(v20 + 8);
  v22(v18, v19);
  v22(v17, v19);
  if ((v21 & 1) == 0)
  {
    v30 = MEMORY[0x277D704D0];
    goto LABEL_17;
  }

  v23 = sub_26EF388BC();
  v24 = sub_26EF38EAC();

  v25 = sub_26EF3928C();
  result = sub_26EF3922C();
  v27 = 533700000;
  if (result)
  {
    v27 = 1090000000;
  }

  v28 = __OFADD__(v25, v27);
  v29 = v25 + v27;
  if (v28)
  {
    __break(1u);
    return result;
  }

  if (sub_26EEF1D58() < v29)
  {
    v30 = MEMORY[0x277D704A8];
LABEL_17:
    v37 = (v1 + 792);
    v39 = *(v1 + 336);
    v38 = *(v1 + 344);
    v41 = *(v1 + 320);
    v40 = *(v1 + 328);
    v42 = *(v1 + 304);
    v43 = *(v1 + 312);
    if (!*(v1 + 1041))
    {
      v37 = (v1 + 616);
    }

    v44 = *v37;

    (*(v39 + 104))(v38, *MEMORY[0x277D704E0], v40);
    (*(v43 + 104))(v41, *v30, v42);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF38A5C();
    swift_willThrow();

    v45 = *(v1 + 8);

    return v45();
  }

  *(v1 + 1038) = *(*(v1 + 296) + *(v1 + 544));
  *(v1 + 1039) = 2;
  if (sub_26EF3B0AC())
  {
    *(*(v1 + 296) + *(v1 + 544)) = 2;
  }

  else
  {
    v46 = *(v1 + 296);
    swift_getKeyPath();
    v47 = swift_task_alloc();
    *(v47 + 16) = v46;
    *(v47 + 24) = 2;
    *(v1 + 256) = v46;
    sub_26EF37FFC();
  }

  v48 = *(v1 + 568);
  v49 = *(v1 + 560);
  v50 = *(v1 + 400);
  v51 = *(v1 + 384);
  v52 = *(v1 + 296);
  v53 = sub_26EF388BC();
  *(v1 + 984) = sub_26EF38EAC();

  v48(v50, v52 + v49, v51);
  v54 = swift_allocObject();
  *(v1 + 992) = v54;
  swift_unknownObjectWeakInit();
  v61 = (*MEMORY[0x277D706B8] + MEMORY[0x277D706B8]);

  v55 = swift_task_alloc();
  *(v1 + 1000) = v55;
  *v55 = v1;
  v55[1] = sub_26EEE7E0C;
  v56 = *(v1 + 400);

  return v61(v56, sub_26EEF2138, v54);
}

uint64_t sub_26EEE7E0C()
{
  v2 = *v1;
  *(v2 + 1008) = v0;

  v3 = *(v2 + 984);
  (*(v2 + 600))(*(v2 + 400), *(v2 + 384));

  if (v0)
  {

    v4 = *(v2 + 520);
    v5 = *(v2 + 512);
    v6 = sub_26EEE85C0;
  }

  else
  {

    v4 = *(v2 + 520);
    v5 = *(v2 + 512);
    v6 = sub_26EEE7FCC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26EEE7FCC()
{
  v1 = v0[37];
  if (*(v1 + v0[97]) != 100)
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 100;
    v0[33] = v1;
    sub_26EF37FFC();
  }

  v3 = swift_task_alloc();
  v0[127] = v3;
  *v3 = v0;
  v3[1] = sub_26EEE8104;

  return VoiceBankingSession.loadSamples()();
}

uint64_t sub_26EEE8104()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 520);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_26EEE870C;
  }

  else
  {
    v5 = sub_26EEE8240;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26EEE8240()
{
  v1 = (v0 + 792);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v2 = *v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEE8378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEE849C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEE85C0()
{
  v1 = (v0 + 792);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v2 = *v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEE870C()
{
  v1 = (v0 + 792);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v2 = *v1;

  v3 = *(v0 + 8);

  return v3();
}

void sub_26EEE884C(uint64_t a1, float a2)
{
  if (a2 > 0.0)
  {
    v2 = a2 * 33.0;
    if (LODWORD(v2) >> 23 > 0xFE)
    {
      __break(1u);
    }

    else if (v2 > -9.2234e18)
    {
      if (v2 < 9.2234e18)
      {
        v3 = v2 + 33;
        if (!__OFADD__(v2, 33))
        {
          v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
          swift_beginAccess();
          if (*(a1 + v5) != v3)
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
            sub_26EF37FFC();
          }

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26EEE89CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (a1 < 1)
  {
LABEL_8:

    return;
  }

  v5 = a1 / 100.0 * 33.0;
  if (v5 == INFINITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5 + 66;
  if (__OFADD__(v5, 66))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  swift_beginAccess();
  if (*&v4[v7] == v6)
  {
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  sub_26EF37FFC();
}

uint64_t VoiceBankingSession.loadSamples()()
{
  v1[32] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v2 = sub_26EF3883C();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[43] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v1[44] = v4;
  v1[45] = v3;

  return MEMORY[0x2822009F8](sub_26EEE8D10, v4, v3);
}

uint64_t sub_26EEE8D10(uint64_t a1)
{
  v79 = v1;
  v2 = *(v1 + 256);
  sub_26EF3934C();
  v3 = v2;
  v4 = sub_26EF3881C();
  v5 = sub_26EF3B47C();

  if (os_log_type_enabled(v4, v5))
  {
    v72 = *(v1 + 296);
    v74 = *(v1 + 288);
    v76 = *(v1 + 336);
    v6 = *(v1 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v78[0] = v8;
    *v7 = 136315138;
    swift_getKeyPath();
    *(v1 + 248) = v6;
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    sub_26EF3800C();

    swift_beginAccess();
    v9 = sub_26EF3B0FC();
    v11 = sub_26EE40670(v9, v10, v78);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26EE01000, v4, v5, "Attempting to load samples for training script type %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743842A0](v8, -1, -1);
    MEMORY[0x2743842A0](v7, -1, -1);

    v12 = *(v72 + 8);
    v12(v76, v74);
  }

  else
  {
    v13 = *(v1 + 336);
    v14 = *(v1 + 288);
    v15 = *(v1 + 296);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  *(v1 + 368) = v12;
  v16 = *(v1 + 280);
  v17 = *(v1 + 256);
  v18 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  v75 = v17;
  sub_26EE13B88(v17 + v18, v16, &qword_2806C9CB0, &qword_26EF3DD20);
  v19 = sub_26EF37EDC();
  *(v1 + 376) = v19;
  v20 = *(v19 - 8);
  *(v1 + 384) = v20;
  v73 = *(v20 + 48);
  v77 = v12;
  if (v73(v16, 1, v19) == 1)
  {
    v21 = *(v1 + 280);

    sub_26EE14578(v21, &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_15:
    v40 = *(v1 + 256);
    sub_26EF3934C();
    v41 = v40;
    v42 = sub_26EF3881C();
    v43 = sub_26EF3B45C();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v1 + 304);
    v46 = *(v1 + 288);
    if (v44)
    {
      v71 = *(v1 + 304);
      v48 = *(v1 + 256);
      v47 = *(v1 + 264);
      v49 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78[0] = v70;
      *v49 = 136315394;
      sub_26EE13B88(v75 + v18, v47, &qword_2806C9CB0, &qword_26EF3DD20);
      v50 = v73(v47, 1, v19);
      sub_26EE14578(v47, &qword_2806C9CB0, &qword_26EF3DD20);
      if (v50 == 1)
      {
        v51 = 0x63696F76206C696ELL;
      }

      else
      {
        v51 = 0;
      }

      if (v50 == 1)
      {
        v52 = 0xEB00000000444965;
      }

      else
      {
        v52 = 0xE000000000000000;
      }

      v53 = sub_26EE40670(v51, v52, v78);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      swift_getKeyPath();
      *(v1 + 192) = v48;
      sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
      sub_26EF3800C();

      v54 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
      swift_beginAccess();
      if (*(*(v48 + v54) + 16))
      {
        v55 = 0;
      }

      else
      {
        v55 = 0xD000000000000016;
      }

      if (*(*(v48 + v54) + 16))
      {
        v56 = 0xE000000000000000;
      }

      else
      {
        v56 = 0x800000026EF46B60;
      }

      v57 = sub_26EE40670(v55, v56, v78);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_26EE01000, v42, v43, "Failed to load samples because of %s%s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743842A0](v70, -1, -1);
      MEMORY[0x2743842A0](v49, -1, -1);

      v77(v71, v46);
    }

    else
    {

      v12(v45, v46);
    }

    v58 = *(v1 + 256);
    v59 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
    v60 = swift_beginAccess();
    *(v1 + 472) = *(v58 + v59);
    *(v1 + 473) = 3;
    sub_26EE1C384(v60, v61, v62);
    if (sub_26EF3B0AC())
    {
      *(v58 + v59) = 3;
    }

    else
    {
      v63 = *(v1 + 256);
      swift_getKeyPath();
      v64 = swift_task_alloc();
      *(v64 + 16) = v63;
      *(v64 + 24) = 3;
      *(v1 + 184) = v63;
      sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
      sub_26EF37FFC();
    }

    v65 = *(v1 + 8);

    return v65();
  }

  v22 = *(v1 + 256);
  sub_26EE14578(*(v1 + 280), &qword_2806C9CB0, &qword_26EF3DD20);
  swift_getKeyPath();
  *(v1 + 392) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *(v1 + 200) = v22;
  *(v1 + 400) = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  sub_26EF3800C();

  v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  *(v1 + 408) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v24 = *(v22 + v23);
  swift_getKeyPath();
  *(v1 + 208) = v22;
  v25 = v24;
  sub_26EF3800C();

  v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v27 = *(v22 + v26);
  if (!*(v27 + 16))
  {

LABEL_14:

    goto LABEL_15;
  }

  v28 = sub_26EEEC66C(v25);
  if ((v29 & 1) == 0)
  {

    goto LABEL_14;
  }

  *(v1 + 416) = *(*(v27 + 56) + 8 * v28);

  sub_26EF3934C();
  v30 = sub_26EF3881C();
  v31 = sub_26EF3B47C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26EE01000, v30, v31, "VoiceBankingSession: Loading samples", v32, 2u);
    MEMORY[0x2743842A0](v32, -1, -1);
  }

  v33 = *(v1 + 328);
  v34 = *(v1 + 288);
  v35 = *(v1 + 256);

  v77(v33, v34);
  v36 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  *(v1 + 424) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  v37 = swift_beginAccess();
  *(v1 + 474) = *(v35 + v36);
  *(v1 + 475) = 4;
  *(v1 + 432) = sub_26EE1C384(v37, v38, v39);
  if (sub_26EF3B0AC())
  {
    *(v35 + v36) = 4;
  }

  else
  {
    v67 = *(v1 + 256);
    swift_getKeyPath();
    v68 = swift_task_alloc();
    *(v68 + 16) = v67;
    *(v68 + 24) = 4;
    *(v1 + 216) = v67;
    sub_26EF37FFC();
  }

  v69 = swift_task_alloc();
  *(v1 + 440) = v69;
  *v69 = v1;
  v69[1] = sub_26EEE9790;

  return VoiceBankingSession.samplesExists()();
}

uint64_t sub_26EEE9790(char a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = *(v4 + 352);
    v6 = *(v4 + 360);
    v7 = sub_26EEEA240;
  }

  else
  {
    *(v4 + 478) = a1 & 1;
    v5 = *(v4 + 352);
    v6 = *(v4 + 360);
    v7 = sub_26EEE98BC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EEE98BC(uint64_t a1)
{
  v38 = v1;
  if (*(v1 + 478))
  {

    sub_26EF3934C();
    v2 = sub_26EF3881C();
    v3 = sub_26EF3B47C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 368);
    v6 = *(v1 + 312);
    v7 = *(v1 + 288);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26EE01000, v2, v3, "Samples already exists, no need to recreate them.", v8, 2u);
      MEMORY[0x2743842A0](v8, -1, -1);
    }

    v5(v6, v7);
    v9 = *(v1 + 448);
    v10 = *(v1 + 272);
    (*(*(v1 + 384) + 56))(v10, 1, 1, *(v1 + 376));
    VoiceBankingSession.fetchTrainingScript(forVoiceID:)(v10, v37);
    if (v9)
    {
      sub_26EE14578(*(v1 + 272), &qword_2806C9CB0, &qword_26EF3DD20);

      v11 = *(v1 + 8);
    }

    else
    {
      v28 = *(v1 + 424);
      v29 = *(v1 + 256);
      sub_26EE14578(*(v1 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
      v30 = v37[0];
      swift_getKeyPath();
      v31 = swift_task_alloc();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      *(v1 + 224) = v29;
      sub_26EF37FFC();

      *(v1 + 476) = *(v29 + v28);
      *(v1 + 477) = 5;
      if (sub_26EF3B0AC())
      {
        *(*(v1 + 256) + *(v1 + 424)) = 5;
      }

      else
      {
        v32 = *(v1 + 256);
        swift_getKeyPath();
        v33 = swift_task_alloc();
        *(v33 + 16) = v32;
        *(v33 + 24) = 5;
        *(v1 + 232) = v32;
        sub_26EF37FFC();
      }

      v11 = *(v1 + 8);
    }

    return v11();
  }

  else
  {
    v12 = *(v1 + 256);
    sub_26EF3934C();
    v13 = v12;
    v14 = sub_26EF3881C();
    v15 = sub_26EF3B47C();

    if (os_log_type_enabled(v14, v15))
    {
      v35 = *(v1 + 320);
      v36 = *(v1 + 368);
      v34 = *(v1 + 288);
      v16 = *(v1 + 256);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37[0] = v18;
      *v17 = 136315138;
      swift_getKeyPath();
      *(v1 + 240) = v16;
      sub_26EF3800C();

      v19 = sub_26EF3B0FC();
      v21 = sub_26EE40670(v19, v20, v37);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_26EE01000, v14, v15, "Loading %s samples from training scripts.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2743842A0](v18, -1, -1);
      MEMORY[0x2743842A0](v17, -1, -1);

      v36(v35, v34);
    }

    else
    {
      v22 = *(v1 + 368);
      v23 = *(v1 + 320);
      v24 = *(v1 + 288);

      v22(v23, v24);
    }

    v25 = swift_task_alloc();
    *(v1 + 456) = v25;
    *v25 = v1;
    v25[1] = sub_26EEE9E40;
    v26 = *(v1 + 416);

    return VoiceBankingSession.loadSamplesFromTrainingScripts(from:)(v26);
  }
}

uint64_t sub_26EEE9E40()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_26EEEA318;
  }

  else
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_26EEE9F5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EEE9F5C()
{
  v12 = v0;

  v1 = *(v0 + 464);
  v2 = *(v0 + 272);
  (*(*(v0 + 384) + 56))(v2, 1, 1, *(v0 + 376));
  VoiceBankingSession.fetchTrainingScript(forVoiceID:)(v2, &v11);
  if (v1)
  {
    sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);

    v3 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 424);
    v5 = *(v0 + 256);
    sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
    v6 = v11;
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    *(v0 + 224) = v5;
    sub_26EF37FFC();

    *(v0 + 476) = *(v5 + v4);
    *(v0 + 477) = 5;
    if (sub_26EF3B0AC())
    {
      *(*(v0 + 256) + *(v0 + 424)) = 5;
    }

    else
    {
      v8 = *(v0 + 256);
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 5;
      *(v0 + 232) = v8;
      sub_26EF37FFC();
    }

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_26EEEA240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEEA318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoiceBankingSession.updateAvailableLanguagesIfNeccessary()()
{
  v1[12] = v0;
  v2 = sub_26EF38CDC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_26EF3883C();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = sub_26EF3B2DC();
  v1[21] = sub_26EF3B2CC();
  v5 = sub_26EF3B29C();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_26EEEA550, v5, v4);
}

uint64_t sub_26EEEA550()
{
  v1 = *(sub_26EF38CCC() + 16);

  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26EE01000, v4, v5, "TTSVBLocaleInfo availableTrainingLocales is empty. Fetching locales.", v6, 2u);
      MEMORY[0x2743842A0](v6, -1, -1);
    }

    v7 = v0[19];
    v8 = v0[17];
    v9 = v0[18];

    (*(v9 + 8))(v7, v8);
    v10 = *MEMORY[0x277D70778];
    v0[24] = *MEMORY[0x277D70778];
    v11 = v10;
    v0[25] = sub_26EF3B2CC();
    v13 = sub_26EF3B29C();
    v0[26] = v13;
    v0[27] = v12;

    return MEMORY[0x2822009F8](sub_26EEEA700, v13, v12);
  }
}

uint64_t sub_26EEEA700(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[12];
  v4 = sub_26EF3B2CC();
  v1[28] = v4;
  v5 = swift_task_alloc();
  v1[29] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[30] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
  v1[31] = v7;
  *v6 = v1;
  v6[1] = sub_26EEEA82C;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 10, v4, v8, 0xD00000000000002DLL, 0x800000026EF46B80, sub_26EEF219C, v5, v7);
}

uint64_t sub_26EEEA82C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_26EEEA98C, v3, v2);
}

uint64_t sub_26EEEA98C()
{

  v0[32] = v0[10];
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](sub_26EEEA9F8, v1, v2);
}

uint64_t sub_26EEEA9F8(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v26 = v3;
  v4 = v3[32];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3[14];
    v8 = v4 + 40;
    v9 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {

      sub_26EF38C9C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26EEEC490(0, v9[2] + 1, 1, v9, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        v9 = sub_26EEEC490((v10 > 1), v11 + 1, 1, v9, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      ++v6;
      v12 = v3[16];
      v13 = v3[13];
      v9[2] = v11 + 1;
      a1 = (*(v7 + 32))(v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
      v8 += 16;
      if (v5 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_11:

    v25 = v9;

    sub_26EEECFA8(&v25);
    v3[33] = 0;
    v14 = v3[24];

    v15 = v25;
    v16 = sub_26EF38CBC();
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v18;
    *v18 = 0x8000000000000000;
    sub_26EEF0EF8(v15, v14, isUniquelyReferenced_nonNull_native, &qword_2806C9368, &qword_26EF42CD0, type metadata accessor for TTSVBSiriTrainingVersion);

    *v18 = v25;
    v16(v3 + 2, 0);
    v20 = *MEMORY[0x277D70780];
    v3[34] = *MEMORY[0x277D70780];
    v21 = v20;
    v3[35] = sub_26EF3B2CC();
    v22 = sub_26EF3B29C();
    a3 = v23;
    v3[36] = v22;
    v3[37] = v23;
    a1 = sub_26EEEAD18;
    a2 = v22;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26EEEAD18(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[12];
  v4 = sub_26EF3B2CC();
  v1[38] = v4;
  v5 = swift_task_alloc();
  v1[39] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[40] = v6;
  *v6 = v1;
  v6[1] = sub_26EEEAE24;
  v7 = v1[31];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 11, v4, v8, 0xD00000000000002DLL, 0x800000026EF46B80, sub_26EEF3254, v5, v7);
}

uint64_t sub_26EEEAE24()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_26EEEAF84, v3, v2);
}

uint64_t sub_26EEEAF84()
{

  v0[41] = v0[11];
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](sub_26EEEAFF0, v1, v2);
}

void sub_26EEEAFF0()
{
  v21 = v0;
  v1 = v0[41];

  v19 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[14];
    v5 = v0[41] + 40;
    v6 = MEMORY[0x277D84F90];
    while (v3 < *(v19 + 16))
    {

      sub_26EF38C9C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_26EEEC490(0, v6[2] + 1, 1, v6, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        v6 = sub_26EEEC490((v7 > 1), v8 + 1, 1, v6, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      ++v3;
      v9 = v0[15];
      v10 = v0[13];
      v6[2] = v8 + 1;
      (*(v4 + 32))(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v9, v10);
      v5 += 16;
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_11:
    v11 = v0[33];

    v20 = v6;

    sub_26EEECFA8(&v20);
    if (v11)
    {
    }

    else
    {
      v12 = v0[34];

      v13 = v20;
      v14 = sub_26EF38CBC();
      v16 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v16;
      *v16 = 0x8000000000000000;
      sub_26EEF0EF8(v13, v12, isUniquelyReferenced_nonNull_native, &qword_2806C9368, &qword_26EF42CD0, type metadata accessor for TTSVBSiriTrainingVersion);

      *v16 = v20;
      v14(v0 + 6, 0);

      v18 = v0[1];

      v18();
    }
  }
}

uint64_t VoiceBankingSession.fetchInstalledVoiceModels()()
{
  v1[3] = v0;
  v1[4] = sub_26EF3B2DC();
  v1[5] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_26EEEB3AC, v3, v2);
}

uint64_t sub_26EEEB3AC(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_26EF3B2CC();
  v1[8] = v3;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F8, &qword_26EF429D0);
  *v5 = v1;
  v5[1] = sub_26EEEB4C4;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 2, v3, v7, 0xD00000000000001BLL, 0x800000026EF46BB0, sub_26EEF21A4, v4, v6);
}

uint64_t sub_26EEEB4C4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26EEEB624, v3, v2);
}

uint64_t sub_26EEEB624()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_26EEEB688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9358, &unk_26EF42CB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_26EF3887C();

  return result;
}

id VoiceBankingSession.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26EF395CC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script] = 0;
  v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage] = 3;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress] = 0;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_naturalTrainingAssetSize] = 1090000000;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_defaultTrainingAssetSize] = 533700000;
  v6 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  v7 = sub_26EF37EDC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  sub_26EF38C9C();
  v8 = *MEMORY[0x277D70768];
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType] = *MEMORY[0x277D70768];
  v9 = &v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample];
  *v9 = 0;
  v9[8] = 1;
  v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState] = 0;
  sub_26EF38B5C();
  swift_allocObject();
  v10 = v8;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service] = sub_26EF38B4C();
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems] = sub_26EEF167C(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager] = 0;
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel;
  type metadata accessor for VoiceBankingNetworkModel(0);
  sub_26EED17A8(v5);
  *&v1[v11] = sub_26EED181C(v5);
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  v13 = sub_26EF38E9C();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  sub_26EED6B60(&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience]);
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager;
  *&v1[v14] = [objc_allocWithZone(sub_26EF3896C()) init];
  sub_26EF3803C();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id VoiceBankingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SampleState.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EEEBD2C()
{
  v0 = sub_26EF3B0FC();
  v1 = MEMORY[0x274383260](v0);

  return v1;
}

uint64_t sub_26EEEBD68(uint64_t a1)
{
  sub_26EF3B0FC();
  sub_26EF3B16C();
}

uint64_t sub_26EEEBDBC(uint64_t a1)
{
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v1 = sub_26EF3B8CC();

  return v1;
}

uint64_t sub_26EEEBE30(uint64_t a1, id *a2)
{
  result = sub_26EF3B0DC();
  *a2 = 0;
  return result;
}

uint64_t sub_26EEEBEA8(uint64_t a1, id *a2)
{
  v3 = sub_26EF3B0EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26EEEBF28@<X0>(uint64_t *a2@<X8>)
{
  sub_26EF3B0FC();
  v3 = sub_26EF3B0BC();

  *a2 = v3;
  return result;
}

uint64_t sub_26EEEBF70(void *a1, uint64_t *a2)
{
  v2 = sub_26EF3B0FC();
  v4 = v3;
  if (v2 == sub_26EF3B0FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26EF3B82C();
  }

  return v7 & 1;
}

uint64_t sub_26EEEBFF8(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9348, type metadata accessor for TTSVBSiriTrainingScriptType, &unk_26EF42C28);
  v3 = sub_26EEF17DC(&qword_2806C9350, type metadata accessor for TTSVBSiriTrainingScriptType, &unk_26EF42BC8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EEEC0B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3B0FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EEEC0E4(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9480, type metadata accessor for TTSVBSiriTrainingVersion, &unk_26EF42EE8);
  v3 = sub_26EEF17DC(&qword_2806C9488, type metadata accessor for TTSVBSiriTrainingVersion, &unk_26EF42E88);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EEEC1A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26EF3B0BC();

  *a2 = v3;
  return result;
}

uint64_t sub_26EEEC1E8(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9378, type metadata accessor for FileAttributeKey, &unk_26EF43098);
  v3 = sub_26EEF17DC(&qword_2806C9478, type metadata accessor for FileAttributeKey, &unk_26EF42FEC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_26EEEC2A4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t sub_26EEEC310()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

char *sub_26EEEC38C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93D8, &qword_26EF42D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_26EEEC490(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_26EEEC66C(uint64_t a1)
{
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v2 = sub_26EF3B8CC();

  return sub_26EEB4140(a1, v2);
}

void *sub_26EEEC6FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EEEC780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EEEC71C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EEEC8B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EEEC73C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EEEC9E8(a1, a2, a3, *v3, &qword_2806C92E8, &qword_26EF444A0, MEMORY[0x277D70610]);
  *v3 = result;
  return result;
}

void *sub_26EEEC780(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93F0, &unk_26EF42D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26EEEC8B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93E0, &unk_26EF42D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F0, &qword_26EF42918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26EEEC9E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26EEECBC4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void sub_26EEECC74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F0, &qword_26EF42918);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93E0, &unk_26EF42D68);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26EEECD60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92E8, &qword_26EF444A0);
      v7 = *(sub_26EF38E9C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_26EF38E9C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_26EEECF00(uint64_t *a1)
{
  v2 = *(sub_26EF38E9C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEF15E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEED050(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEECFA8(uint64_t *a1)
{
  v2 = *(sub_26EF38CDC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEF1630(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEED17C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEED050(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF38E9C();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38E9C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEEDB2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26EEED2A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEED17C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF38CDC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38CDC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEEEB84(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26EEED820(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEED2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v56 - v11;
  v78 = sub_26EF37E7C();
  v12 = *(v78 - 8);
  v13 = MEMORY[0x28223BE20](v78);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v56 - v15;
  v16 = sub_26EF38E9C();
  v17 = MEMORY[0x28223BE20](v16);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  result = MEMORY[0x28223BE20](v19);
  v81 = &v56 - v24;
  v59 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v74 = (v12 + 48);
    v75 = v27;
    v29 = (v12 + 32);
    v69 = (v12 + 8);
    v73 = (v26 - 8);
    v76 = v26;
    v65 = (v26 + 16);
    v66 = v25;
    v30 = v25 + v28 * (a3 - 1);
    v64 = -v28;
    v31 = a1 - a3;
    v58 = v28;
    v32 = v25 + v28 * a3;
    v57 = v21;
    v77 = v16;
    v70 = v29;
    while (2)
    {
      v63 = a3;
      v60 = v32;
      v61 = v31;
      v62 = v30;
      v83 = v30;
      while (1)
      {
        v80 = v32;
        v35 = v32;
        v36 = v75;
        v75(v81, v35, v16);
        v36(v21, v83, v16);
        v37 = v82;
        sub_26EF38E1C();
        v38 = v21;
        v39 = *v74;
        v40 = v37;
        v41 = v78;
        if ((*v74)(v40, 1, v78) == 1)
        {
          break;
        }

        v79 = v31;
        v42 = v71;
        v43 = *v70;
        (*v70)(v71, v82, v41);
        v44 = v72;
        sub_26EF38E1C();
        v45 = v44;
        if (v39(v44, 1, v41) == 1)
        {
          (*v69)(v42, v41);
          v33 = v44;
          goto LABEL_5;
        }

        v46 = v68;
        v43(v68, v45, v41);
        v47 = sub_26EF37E4C();
        v48 = *v69;
        (*v69)(v46, v41);
        v48(v42, v41);
        v49 = *v73;
        v16 = v77;
        (*v73)(v38, v77);
        result = (v49)(v81, v16);
        v21 = v38;
        v50 = v79;
        v51 = v80;
        if ((v47 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (!v66)
        {
          __break(1u);
          return result;
        }

        v52 = *v65;
        v53 = v67;
        (*v65)(v67, v80, v16);
        v54 = v83;
        swift_arrayInitWithTakeFrontToBack();
        result = (v52)(v54, v53, v16);
        v83 = v54 + v64;
        v32 = v51 + v64;
        v55 = __CFADD__(v50, 1);
        v31 = v50 + 1;
        if (v55)
        {
          goto LABEL_6;
        }
      }

      v33 = v82;
LABEL_5:
      sub_26EE14578(v33, &qword_2806C8798, &qword_26EF40940);
      v34 = *v73;
      v21 = v57;
      v16 = v77;
      (*v73)(v57, v77);
      result = (v34)(v81, v16);
LABEL_6:
      a3 = v63 + 1;
      v30 = v62 + v58;
      v31 = v61 - 1;
      v32 = v60 + v58;
      if (v63 + 1 == v59)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_26EEED820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26EF38CDC();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_26EF38C8C();
      v27 = v26;
      if (v25 == sub_26EF38C8C() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_26EF3B82C();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EEEDB2C(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v183 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v155 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v165 = &v155 - v15;
  MEMORY[0x28223BE20](v14);
  v168 = &v155 - v16;
  v190 = sub_26EF37E7C();
  v17 = *(v190 - 8);
  v18 = MEMORY[0x28223BE20](v190);
  v181 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v182 = (&v155 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v162 = &v155 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v155 - v24;
  v26 = sub_26EF38E9C();
  v27 = MEMORY[0x28223BE20](v26);
  v166 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v180 = &v155 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v155 = &v155 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v197 = &v155 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v173 = &v155 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v176 = &v155 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v156 = &v155 - v40;
  result = MEMORY[0x28223BE20](v39);
  v159 = &v155 - v43;
  v44 = a3[1];
  v174 = v42;
  if (v44 < 1)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_110:
    a4 = *v161;
    if (!*v161)
    {
      goto LABEL_152;
    }

    v17 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v174;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_146;
    }

    result = v17;
LABEL_113:
    v198 = result;
    v17 = *(result + 16);
    if (v17 >= 2)
    {
      while (*a3)
      {
        v150 = *(result + 16 * v17);
        v151 = result;
        v152 = *(result + 16 * (v17 - 1) + 40);
        sub_26EEEF740(*a3 + *(v13 + 9) * v150, *a3 + *(v13 + 9) * *(result + 16 * (v17 - 1) + 32), (*a3 + *(v13 + 9) * v152), a4);
        if (v5)
        {
        }

        if (v152 < v150)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_26EE13990(v151);
        }

        if (v17 - 2 >= *(v151 + 2))
        {
          goto LABEL_140;
        }

        v153 = &v151[16 * v17];
        *v153 = v150;
        *(v153 + 1) = v152;
        v198 = v151;
        sub_26EE5C168(v17 - 1);
        result = v198;
        v17 = *(v198 + 16);
        if (v17 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v45 = 0;
  v191 = v42 + 16;
  v192 = (v42 + 8);
  v189 = (v17 + 48);
  v186 = (v17 + 8);
  v187 = (v17 + 32);
  v185 = (v42 + 32);
  v46 = MEMORY[0x277D84F90];
  v175 = a3;
  v160 = a4;
  v193 = v26;
  v164 = v25;
  v188 = v13;
  while (1)
  {
    v47 = v45;
    v167 = v46;
    if (v45 + 1 >= v44)
    {
      v70 = v45 + 1;
      goto LABEL_31;
    }

    v177 = v44;
    v48 = *a3;
    v17 = *(v174 + 9);
    v49 = *(v174 + 2);
    v196 = (v48 + v17 * (v45 + 1));
    v49(v159);
    v195 = v48;
    v50 = v48 + v17 * v47;
    v51 = v47;
    v52 = v156;
    v184 = v49;
    (v49)(v156, v50, v26);
    LODWORD(v194) = sub_26EEDEEA4();
    if (v5)
    {
      v154 = *v192;
      (*v192)(v52, v26);
      v154(v159, v26);
    }

    v158 = 0;
    v53 = *v192;
    (*v192)(v52, v26);
    v179 = v53;
    result = (v53)(v159, v26);
    v157 = v51;
    v54 = v51 + 2;
    v55 = v195 + v17 * v54;
    v56 = v168;
    v57 = v173;
    v195 = v17;
    while (1)
    {
      v70 = v177;
      if (v177 == v54)
      {
        break;
      }

      v62 = v184;
      (v184)(v176, v55, v26);
      v62(v57, v196, v26);
      sub_26EF38E1C();
      v63 = v190;
      v64 = *v189;
      if ((*v189)(v56, 1, v190) == 1)
      {
        sub_26EE14578(v56, &qword_2806C8798, &qword_26EF40940);
        v58 = 0;
      }

      else
      {
        v65 = v164;
        v178 = *v187;
        (v178)(v164, v56, v63);
        v66 = v165;
        sub_26EF38E1C();
        v67 = v66;
        if (v64(v66, 1, v63) == 1)
        {
          (*v186)(v65, v63);
          sub_26EE14578(v66, &qword_2806C8798, &qword_26EF40940);
          v58 = 0;
        }

        else
        {
          v68 = v162;
          (v178)(v162, v67, v63);
          v58 = sub_26EF37E4C();
          v69 = *v186;
          (*v186)(v68, v63);
          v69(v65, v63);
        }

        v56 = v168;
      }

      v26 = v193;
      v59 = v188;
      v57 = v173;
      v60 = v179;
      v179(v173, v193);
      result = (v60)(v176, v26);
      v61 = v58 & 1;
      ++v54;
      v17 = v195;
      v55 += v195;
      v196 += v195;
      v13 = v59;
      if ((v194 & 1) != v61)
      {
        v70 = v54 - 1;
        break;
      }
    }

    v5 = v158;
    a3 = v175;
    a4 = v160;
    v71 = v167;
    v47 = v157;
    if (v194)
    {
      if (v70 < v157)
      {
        goto LABEL_145;
      }

      if (v157 < v70)
      {
        v72 = v17 * (v70 - 1);
        v73 = v70 * v17;
        v74 = v70;
        v75 = v157;
        v76 = v157 * v17;
        v177 = v70;
        do
        {
          if (v75 != --v74)
          {
            v78 = *v175;
            if (!*v175)
            {
              goto LABEL_149;
            }

            v196 = *v185;
            (v196)(v166, v78 + v76, v193, v71);
            if (v76 < v72 || v78 + v76 >= v78 + v73)
            {
              v77 = v193;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v77 = v193;
              if (v76 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v196)(v78 + v72, v166, v77);
            v71 = v167;
            v26 = v77;
            v70 = v177;
            v17 = v195;
          }

          ++v75;
          v72 -= v17;
          v73 -= v17;
          v76 += v17;
        }

        while (v75 < v74);
        v5 = v158;
        a3 = v175;
        a4 = v160;
        v47 = v157;
      }
    }

LABEL_31:
    v79 = a3[1];
    if (v70 >= v79)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v70, v47))
    {
      goto LABEL_142;
    }

    if (v70 - v47 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v47, a4))
    {
      goto LABEL_143;
    }

    if (v47 + a4 >= v79)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v47;
    }

    if (a4 < v47)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_26EE13990(v17);
      goto LABEL_113;
    }

    if (v70 == a4)
    {
LABEL_40:
      a4 = v70;
      if (v70 < v47)
      {
        goto LABEL_141;
      }

      goto LABEL_41;
    }

    v158 = v5;
    v124 = *a3;
    v125 = *(v174 + 9);
    v184 = *(v174 + 2);
    v126 = v124 + v125 * (v70 - 1);
    v178 = -v125;
    v157 = v47;
    v127 = v47 - v70;
    v179 = v124;
    v163 = v125;
    v128 = v124 + v70 * v125;
    a3 = v182;
    v129 = v155;
    v169 = a4;
LABEL_95:
    v177 = v70;
    v170 = v128;
    v171 = v127;
    v132 = v127;
    v172 = v126;
LABEL_96:
    v196 = v132;
    v133 = v126;
    v134 = v184;
    (v184)(v197, v128, v26);
    v195 = v133;
    v134(v129, v133, v26);
    sub_26EF38E1C();
    v135 = v190;
    v136 = *v189;
    if ((*v189)(v13, 1, v190) == 1)
    {
      v130 = v13;
LABEL_93:
      sub_26EE14578(v130, &qword_2806C8798, &qword_26EF40940);
      v17 = v192;
      v26 = v193;
      v131 = *v192;
      (*v192)(v129, v193);
      v131(v197, v26);
      goto LABEL_94;
    }

    v194 = v128;
    v137 = v129;
    v138 = *v187;
    (*v187)(a3, v13, v135);
    v139 = v183;
    sub_26EF38E1C();
    v140 = v139;
    if (v136(v139, 1, v135) == 1)
    {
      (*v186)(a3, v135);
      v130 = v139;
      v13 = v188;
      v129 = v137;
      goto LABEL_93;
    }

    v141 = v181;
    (v138)(v181, v140, v135);
    v17 = sub_26EF37E4C();
    v142 = *v186;
    (*v186)(v141, v135);
    v142(a3, v135);
    v26 = v193;
    v143 = *v192;
    (*v192)(v137, v193);
    result = (v143)(v197, v26);
    v129 = v137;
    if (v17)
    {
      break;
    }

    v13 = v188;
    a3 = v182;
LABEL_94:
    v70 = v177 + 1;
    v126 = &v172[v163];
    v127 = v171 - 1;
    v128 = &v170[v163];
    a4 = v169;
    if (v177 + 1 != v169)
    {
      goto LABEL_95;
    }

    v5 = v158;
    v47 = v157;
    if (v169 < v157)
    {
      goto LABEL_141;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    v169 = a4;
    if (result)
    {
      v46 = v167;
    }

    else
    {
      result = sub_26EE12E30(0, *(v167 + 2) + 1, 1, v167);
      v46 = result;
    }

    a4 = *(v46 + 2);
    v80 = *(v46 + 3);
    v17 = a4 + 1;
    if (a4 >= v80 >> 1)
    {
      result = sub_26EE12E30((v80 > 1), a4 + 1, 1, v46);
      v46 = result;
    }

    *(v46 + 2) = v17;
    v81 = &v46[16 * a4];
    v82 = v169;
    *(v81 + 4) = v47;
    *(v81 + 5) = v82;
    if (!*v161)
    {
      goto LABEL_151;
    }

    if (a4)
    {
      a3 = *v161;
      while (1)
      {
        v83 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v84 = *(v46 + 4);
          v85 = *(v46 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_61:
          if (v87)
          {
            goto LABEL_130;
          }

          v100 = &v46[16 * v17];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_133;
          }

          v106 = &v46[16 * v83 + 32];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_137;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v17 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v110 = &v46[16 * v17];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_75:
        if (v105)
        {
          goto LABEL_132;
        }

        v113 = &v46[16 * v83];
        v115 = *(v113 + 4);
        v114 = *(v113 + 5);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_135;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_82:
        a4 = v83 - 1;
        if (v83 - 1 >= v17)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v175)
        {
          goto LABEL_148;
        }

        v121 = v46;
        v17 = *&v46[16 * a4 + 32];
        v122 = *&v46[16 * v83 + 40];
        sub_26EEEF740(*v175 + *(v174 + 9) * v17, *v175 + *(v174 + 9) * *&v46[16 * v83 + 32], (*v175 + *(v174 + 9) * v122), a3);
        if (v5)
        {
        }

        if (v122 < v17)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_26EE13990(v121);
        }

        if (a4 >= *(v121 + 2))
        {
          goto LABEL_127;
        }

        v123 = &v121[16 * a4];
        *(v123 + 4) = v17;
        *(v123 + 5) = v122;
        v198 = v121;
        result = sub_26EE5C168(v83);
        v46 = v198;
        v17 = *(v198 + 16);
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = &v46[16 * v17 + 32];
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_128;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_129;
      }

      v95 = &v46[16 * v17];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_131;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_134;
      }

      if (v99 >= v91)
      {
        v117 = &v46[16 * v83 + 32];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_138;
        }

        if (v86 < v120)
        {
          v83 = v17 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    a3 = v175;
    v44 = v175[1];
    v45 = v169;
    a4 = v160;
    if (v169 >= v44)
    {
      goto LABEL_110;
    }
  }

  v13 = v188;
  v144 = v196;
  if (v179)
  {
    v17 = *v185;
    v145 = v180;
    v146 = v194;
    (*v185)(v180, v194, v26);
    v147 = v195;
    swift_arrayInitWithTakeFrontToBack();
    (v17)(v147, v145, v26);
    v126 = &v178[v147];
    v128 = &v178[v146];
    v148 = __CFADD__(v144, 1);
    v132 = v144 + 1;
    a3 = v182;
    if (v148)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_26EEEEB84(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_26EF38CDC();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_26EEF01FC(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_26EE13990(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_26EE5C168(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 2);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_26EE13990(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_26EF38C8C();
      v37 = v36;
      v38 = sub_26EF38C8C();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_26EF3B82C();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_26EF38C8C();
        v52 = v51;
        if (v50 == sub_26EF38C8C() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_26EF3B82C();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_26EE12E30((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_26EEF01FC(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_26EE13990(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_26EE5C168(v31);
        v29 = v155;
        v77 = *(v155 + 2);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_26EF38C8C();
    v69 = v68;
    if (v5 == sub_26EF38C8C() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_26EF3B82C();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_26EEEF740(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v99 = v87 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = v87 - v15;
  MEMORY[0x28223BE20](v14);
  v103 = v87 - v16;
  v107 = sub_26EF37E7C();
  v17 = *(v107 - 8);
  v18 = MEMORY[0x28223BE20](v107);
  v88 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v93 = v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v91 = v87 - v23;
  MEMORY[0x28223BE20](v22);
  v96 = (v87 - v24);
  v108 = sub_26EF38E9C();
  v100 = *(v108 - 8);
  v25 = MEMORY[0x28223BE20](v108);
  v94 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v102 = v87 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v87 - v30;
  result = MEMORY[0x28223BE20](v29);
  v106 = v87 - v33;
  v101 = *(v34 + 72);
  if (!v101)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v101 == -1)
  {
    goto LABEL_72;
  }

  v35 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v101 == -1)
  {
    goto LABEL_73;
  }

  v36 = (a2 - a1) / v101;
  v111 = a1;
  v110 = a4;
  if (v36 >= v35 / v101)
  {
    v39 = v35 / v101 * v101;
    if (a4 < a2 || a2 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v39 < 1)
    {
      v66 = a4 + v39;
    }

    else
    {
      v92 = v11;
      v61 = -v101;
      v97 = (v100 + 16);
      v62 = (v17 + 48);
      v63 = (v17 + 32);
      v89 = (v17 + 8);
      v96 = (v100 + 8);
      v64 = (a4 + v39);
      v65 = v94;
      v66 = a4 + v39;
      v98 = v62;
      v104 = a4;
      v106 = -v101;
      v90 = a1;
      v91 = v63;
      do
      {
        v87[0] = v66;
        v67 = a2;
        a2 += v61;
        v105 = a2;
        v100 = v67;
        while (1)
        {
          if (v67 <= a1)
          {
            v111 = v67;
            v109 = v87[0];
            goto LABEL_70;
          }

          v68 = a3;
          v95 = v66;
          v103 = v64;
          v69 = *v97;
          v101 = &v64[v61];
          v70 = v108;
          (v69)(v102);
          (v69)(v65, a2, v70);
          v71 = v99;
          sub_26EF38E1C();
          v72 = *v62;
          v73 = v107;
          if ((*v62)(v71, 1, v107) == 1)
          {
            sub_26EE14578(v71, &qword_2806C8798, &qword_26EF40940);
            v74 = 0;
            a2 = v105;
            v75 = v65;
          }

          else
          {
            v76 = *v91;
            v77 = v93;
            (*v91)(v93, v71, v73);
            v78 = v92;
            sub_26EF38E1C();
            v79 = v107;
            if (v72(v78, 1, v107) == 1)
            {
              (*v89)(v77, v79);
              sub_26EE14578(v78, &qword_2806C8798, &qword_26EF40940);
              v74 = 0;
            }

            else
            {
              v80 = v88;
              v76(v88, v78, v79);
              v81 = v79;
              v74 = sub_26EF37E4C();
              v82 = *v89;
              (*v89)(v80, v81);
              v82(v77, v81);
            }

            a2 = v105;
            v75 = v94;
            a1 = v90;
          }

          a3 = &v68[v106];
          v83 = *v96;
          v65 = v75;
          v84 = v108;
          (*v96)();
          (v83)(v102, v84);
          v85 = v104;
          if (v74)
          {
            break;
          }

          v86 = v101;
          v66 = v101;
          if (v68 < v103 || a3 >= v103)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = v66;
          v61 = v106;
          v62 = v98;
          v67 = v100;
          if (v86 <= v85)
          {
            a2 = v100;
            goto LABEL_69;
          }
        }

        if (v68 < v100 || a3 >= v100)
        {
          swift_arrayInitWithTakeFrontToBack();
          v66 = v95;
        }

        else
        {
          v66 = v95;
          if (v68 != v100)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v103;
        v61 = v106;
        v62 = v98;
      }

      while (v103 > v85);
    }

LABEL_69:
    v111 = a2;
    v109 = v66;
  }

  else
  {
    v99 = a3;
    v37 = v36 * v101;
    if (a4 < a1 || a1 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v38 = v106;
    }

    else
    {
      v38 = v106;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v98 = a4 + v37;
    v109 = a4 + v37;
    if (v37 >= 1 && a2 < v99)
    {
      v41 = *(v100 + 16);
      v102 = (v17 + 48);
      v92 = (v17 + 8);
      v93 = v41;
      v100 += 16;
      v97 = (v100 - 8);
      v94 = (v17 + 32);
      while (1)
      {
        v42 = v108;
        (v41)(v38, a2, v108);
        (v41)(v31, a4, v42);
        v43 = v31;
        v44 = v103;
        sub_26EF38E1C();
        v45 = v38;
        v46 = *v102;
        v47 = v107;
        if ((*v102)(v44, 1, v107) == 1)
        {
          goto LABEL_24;
        }

        v44 = v95;
        v104 = a4;
        v105 = a2;
        v48 = *v94;
        v49 = v96;
        (*v94)(v96, v103, v47);
        sub_26EF38E1C();
        v50 = v107;
        if (v46(v44, 1, v107) == 1)
        {
          break;
        }

        v55 = v91;
        v48(v91, v44, v50);
        v56 = v50;
        v57 = sub_26EF37E4C();
        v58 = *v92;
        (*v92)(v55, v56);
        v58(v49, v56);
        v59 = *v97;
        v60 = v108;
        (*v97)(v43, v108);
        v59(v106, v60);
        a4 = v104;
        a2 = v105;
        v31 = v43;
        v41 = v93;
        if (v57)
        {
          v53 = v101;
          if (a1 < v105 || a1 >= v105 + v101)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v105)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v53;
          goto LABEL_31;
        }

LABEL_25:
        v53 = v101;
        v54 = a4 + v101;
        if (a1 < a4 || a1 >= v54)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v110 = v54;
        a4 += v53;
LABEL_31:
        a1 += v53;
        v111 = a1;
        v38 = v106;
        if (a4 >= v98 || a2 >= v99)
        {
          goto LABEL_70;
        }
      }

      (*v92)(v49, v50);
      a4 = v104;
      a2 = v105;
      v45 = v106;
      v41 = v93;
LABEL_24:
      sub_26EE14578(v44, &qword_2806C8798, &qword_26EF40940);
      v51 = *v97;
      v52 = v108;
      (*v97)(v43, v108);
      v51(v45, v52);
      v31 = v43;
      goto LABEL_25;
    }
  }

LABEL_70:
  sub_26EEF08AC(&v111, &v110, &v109, MEMORY[0x277D70610]);
  return 1;
}

uint64_t sub_26EEF01FC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_26EF38CDC();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_26EF38C8C();
            v52 = v51;
            if (v50 == sub_26EF38C8C() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_26EF3B82C();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_26EF38C8C();
        v32 = v31;
        if (v30 == sub_26EF38C8C() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_26EF3B82C();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_26EEF08AC(&v74, &v73, &v72, MEMORY[0x277D705B0]);
  return 1;
}

uint64_t sub_26EEF08AC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26EEF0994()
{
  v1 = sub_26EF38E9C();
  v26 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = MEMORY[0x2743842B0](&v31, 8);
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = MEMORY[0x2743842B0](&v31, 8);
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        result = v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_26EEF15E4(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        result = (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        result = v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_26EEF0C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_26EF3B7BC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v25 = v23;
      }

      sub_26EF3B0FC();
      sub_26EF3B87C();
      sub_26EF3B16C();
      v26 = sub_26EF3B8CC();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v36;
      v14 = v38;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

uint64_t sub_26EEF0EF8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_26EEEC66C(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_26EEF0C38(v19, a3 & 1, a4, a5);
      v14 = sub_26EEEC66C(a2);
      if ((v20 & 1) != (v22 & 1))
      {
LABEL_18:
        a6(0);
        sub_26EF3B86C();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      a6 = v14;
      sub_26EEF1090(a4, a5);
      v14 = a6;
    }
  }

  v23 = *v10;
  if ((v20 & 1) == 0)
  {
    v23[(v14 >> 6) + 8] |= 1 << v14;
    *(v23[6] + 8 * v14) = a2;
    *(v23[7] + 8 * v14) = a1;
    v25 = v23[2];
    v18 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v18)
    {
      v23[2] = v26;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  *(v23[7] + 8 * v14) = a1;
}

void sub_26EEF1090(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26EF3B7AC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_26EEF11E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF3920C();
  v46 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a1 + 64);
  v34 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v42 = (v46 + 8);
  v43 = v46 + 16;
  v35 = v15;
  v36 = a1;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v38 = (v14 - 1) & v14;
LABEL_14:
    v37 = v10;
    v19 = v16 | (v10 << 6);
    v20 = *(*(a1 + 56) + 8 * v19);
    v21 = *(*(a1 + 48) + 8 * v19);

    v22 = sub_26EEEC66C(v21);
    v24 = v23;

    if ((v24 & 1) == 0 || (v45 = *(*(a2 + 56) + 8 * v22), v25 = *(v45 + 16), v25 != *(v20 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v25 && v45 != v20)
    {
      v33 = a2;
      v26 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v40 = v20 + v26;
      v41 = v45 + v26;

      v27 = 0;
      v39 = v20;
      while (v27 < *(v45 + 16))
      {
        v28 = *(v46 + 72) * v27;
        v29 = *(v46 + 16);
        result = v29(v9, v41 + v28, v4);
        if (v27 >= *(v20 + 16))
        {
          goto LABEL_31;
        }

        v30 = v44;
        v29(v44, v40 + v28, v4);
        sub_26EEF17DC(&qword_2806C9388, MEMORY[0x277D70678], MEMORY[0x277D70680]);
        v31 = sub_26EF3B0AC();
        v32 = *v42;
        (*v42)(v30, v4);
        result = v32(v9, v4);
        if ((v31 & 1) == 0)
        {

          goto LABEL_26;
        }

        ++v27;
        v20 = v39;
        if (v25 == v27)
        {

          a2 = v33;
          goto LABEL_6;
        }
      }

      goto LABEL_30;
    }

LABEL_6:

    v15 = v35;
    a1 = v36;
    v10 = v37;
    v14 = v38;
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return 1;
    }

    v18 = *(v34 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_26EEF1570(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_26EF3B82C() & 1;
    }
  }

  return result;
}

unint64_t sub_26EEF167C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9380, &unk_26EF42CE0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_26EEEC66C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26EEF1774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26EEF17DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26EEF18B8(void *a1)
{
  v3 = *(v1 + 24);
  sub_26EE1FAB8(0, &qword_2806C93E8, 0x277CCAC98);
  v4 = sub_26EF3B1FC();
  [a1 setSortDescriptors_];

  sub_26EE1FAB8(0, &qword_2806C93B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26EF3D070;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_26EE1EFBC(v5, v6, v7);
  *(v5 + 32) = 0x6563696F76;
  *(v5 + 40) = 0xE500000000000000;
  *(v5 + 96) = sub_26EF3885C();
  *(v5 + 104) = sub_26EEF17DC(&qword_2806C93C0, MEMORY[0x277D70460], MEMORY[0x277D85388]);
  *(v5 + 72) = v3;
  v8 = v3;
  v9 = sub_26EF3B42C();
  [a1 setPredicate_];
}

void sub_26EEF1A3C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_26EE1FAB8(0, &qword_2806C93B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26EF41A40;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v10 = sub_26EE1EFBC(v6, v8, v9);
  *(v6 + 64) = v10;
  *(v6 + 32) = 0x6563696F76;
  *(v6 + 40) = 0xE500000000000000;
  *(v6 + 96) = sub_26EF3885C();
  v11 = sub_26EEF17DC(&qword_2806C93C0, MEMORY[0x277D70460], MEMORY[0x277D85388]);
  *(v6 + 72) = v3;
  *(v6 + 136) = v7;
  *(v6 + 144) = v10;
  *(v6 + 104) = v11;
  *(v6 + 112) = 0x4449656C706D6173;
  *(v6 + 120) = 0xE800000000000000;
  *(v6 + 176) = v7;
  *(v6 + 184) = v10;
  *(v6 + 152) = v4;
  *(v6 + 160) = v5;
  v12 = v3;

  v13 = sub_26EF3B42C();
  [a1 setPredicate_];
}

uint64_t sub_26EEF1D04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEF1D58()
{
  v26[4] = *MEMORY[0x277D85DE8];
  v0 = sub_26EF3883C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v5 = sub_26EF3B20C();

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = (v5 + 16 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_26EF3B0BC();
  v26[0] = 0;
  v12 = [v10 attributesOfFileSystemForPath:v11 error:v26];

  v13 = v26[0];
  if (!v12)
  {
    v18 = v13;
    v19 = sub_26EF37D1C();

    swift_willThrow();
    sub_26EF3934C();

    v20 = sub_26EF3881C();
    v21 = sub_26EF3B45C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315138;
      v24 = sub_26EE40670(v9, v8, v26);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_26EE01000, v20, v21, "Unable to gather system attributes for directory %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2743842A0](v23, -1, -1);
      MEMORY[0x2743842A0](v22, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_26EEF17DC(&qword_2806C9378, type metadata accessor for FileAttributeKey, &unk_26EF43098);
  v14 = sub_26EF3B02C();

  if (*(v14 + 16) && (v15 = sub_26EEEC66C(*MEMORY[0x277CCA1D0]), (v16 & 1) != 0))
  {
    sub_26EE40D04(*(v14 + 56) + 32 * v15, v26);

    if (swift_dynamicCast())
    {
      return v25[1];
    }
  }

  else
  {
LABEL_7:
  }

  return 0;
}

uint64_t sub_26EEF2100()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEF2140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_26EEF21B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9310;
  if (!qword_2806C9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9310);
  }

  return result;
}

void sub_26EEF220C(uint64_t a1)
{
  sub_26EEF2430(319, &qword_2806C9318, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_26EF38CDC();
    if (v2 <= 0x3F)
    {
      sub_26EEF2430(319, &qword_2806C9320, MEMORY[0x277D70610]);
      if (v3 <= 0x3F)
      {
        sub_26EF3925C();
        if (v4 <= 0x3F)
        {
          sub_26EF3804C();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26EEF2430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3B5CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26EEF2724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_26EF3B2BC();
}

void sub_26EEF27DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26EEF2828()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_26EEF2880()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_26EEF2900(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  return sub_26EF3B2BC();
}

void sub_26EEF2AB0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service) = *(v0 + 24);
}

uint64_t sub_26EEF2BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EEF2CCC(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  result = (*(v1 + 16))(a1);
  if (a1 >= 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
    return sub_26EF3B2BC();
  }

  return result;
}

uint64_t sub_26EEF2DA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_91Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26EEF2F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_26EED4708();
}

uint64_t VoiceBankingAccountInformationModel.iCloudFirstName.getter()
{
  v0 = sub_26EE7AA60();
  v1 = sub_26EF390DC();

  return v1;
}

uint64_t VoiceBankingAccountInformationModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EEF3308()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

BOOL static TTSDownloadButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 == 1)
      {
        return (LODWORD(v3) ^ LODWORD(v2) ^ 1) & 1;
      }

      return 0;
    }

    if (v2 == 0.0)
    {
      if (v4 != 2 || LODWORD(v3) != 0)
      {
        return 0;
      }
    }

    else if (v4 != 2 || LODWORD(v3) != 1)
    {
      return 0;
    }

    return 1;
  }

  return !*(a2 + 4) && v2 == v3;
}

uint64_t TTSDownloadButtonState.hash(into:)()
{
  if (*(v0 + 4))
  {
    if (*(v0 + 4) == 1)
    {
      MEMORY[0x274383950](3);
      return sub_26EF3B89C();
    }

    else
    {
      return MEMORY[0x274383950](*v0 != 0);
    }
  }

  else
  {
    MEMORY[0x274383950](2);
    return sub_26EF3B8AC();
  }
}

uint64_t TTSDownloadButtonState.hashValue.getter()
{
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

BOOL sub_26EEF34B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 == 1)
      {
        return (LODWORD(v3) ^ LODWORD(v2) ^ 1) & 1;
      }

      return 0;
    }

    if (v2 == 0.0)
    {
      if (v4 != 2 || LODWORD(v3) != 0)
      {
        return 0;
      }
    }

    else if (v4 != 2 || LODWORD(v3) != 1)
    {
      return 0;
    }

    return 1;
  }

  return !*(a2 + 4) && v2 == v3;
}

uint64_t sub_26EEF3528()
{
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEF3580(uint64_t a1)
{
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEF35D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8818, &qword_26EF40D60);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9490, &qword_26EF43188);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *v1;
  v11 = *(v1 + 2);
  v12 = *(v1 + 12);
  sub_26EF3A26C();
  v13 = sub_26EF3A41C();
  sub_26EF3962C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8810, &unk_26EF43190) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_26EF3A3AC();
  sub_26EF3962C();
  v24 = &v6[*(v4 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  if (v12 && (v12 != 2 || v11 != 1))
  {
    v10 = 0;
  }

  v29 = &v9[*(v7 + 36)];
  v30 = *(sub_26EF39B7C() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_26EF39ECC();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  *v29 = v10;
  *(v29 + 1) = v10;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040) + 36)] = 256;
  sub_26EE14D98(v6, v9, &qword_2806C8818, &qword_26EF40D60);
  if (sub_26EF3A27C())
  {
    v33 = sub_26EF3AA3C();
  }

  else
  {
    v33 = sub_26EF3AA4C();
  }

  v34 = v33;
  KeyPath = swift_getKeyPath();
  sub_26EE14D98(v9, a1, &qword_2806C9490, &qword_26EF43188);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9498, &qword_26EF431D0);
  v37 = (a1 + *(result + 36));
  *v37 = KeyPath;
  v37[1] = v34;
  return result;
}

void *sub_26EEF387C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_26EF3AE4C();
  v6 = v5;
  sub_26EEF3938(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_26EE13B88(__dst, &v8, &qword_2806C94A0, &unk_26EF431D8);
  sub_26EE14578(v11, &qword_2806C94A0, &unk_26EF431D8);
  *a2 = v4;
  *(a2 + 8) = v6;
  result = memcpy((a2 + 16), __dst, 0x180uLL);
  *(a2 + 400) = 0;
  return result;
}

uint64_t sub_26EEF3938@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v3 = sub_26EF3AA9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3A99C();
  v33 = sub_26EF3AA2C();

  sub_26EF3979C();
  v7 = v36;
  v29 = v38;
  v30 = v37;
  v8 = v39;
  v28 = v40;
  v9 = v41;
  v10 = sub_26EF3AE4C();
  v31 = v11;
  v32 = v10;
  sub_26EF3AE4C();
  sub_26EF3984C();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_26EF3979C();

  v26 = sub_26EF3AE4C();
  v27 = v14;
  sub_26EF3AE4C();
  sub_26EF3984C();
  sub_26EF3AF2C();
  v16 = v15;
  v18 = v17;
  v19 = sub_26EF3AE9C();
  v24 = v19;

  sub_26EF3AA8C();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v23 = sub_26EF3AADC();

  (*(v4 + 8))(v6, v3);
  sub_26EF3AE4C();
  sub_26EF3984C();
  LOBYTE(v78[0]) = 1;
  *&v35[6] = v42;
  *&v35[22] = v43;
  *&v35[38] = v44;
  KeyPath = swift_getKeyPath();
  *&v58 = v7;
  *(&v58 + 1) = __PAIR64__(v29, v30);
  *&v59 = v8;
  *(&v59 + 1) = v28;
  *&v60 = v9;
  *(&v60 + 1) = v33;
  LOWORD(v61) = 256;
  *(&v61 + 2) = v48;
  WORD3(v61) = v49;
  *(&v61 + 1) = v32;
  *v62 = v31;
  *&v62[24] = v46;
  *&v62[40] = v47;
  *&v62[8] = v45;
  v34[2] = v60;
  v34[3] = v61;
  v34[0] = v58;
  v34[1] = v59;
  *&v34[7] = *(&v47 + 1);
  v34[5] = *&v62[16];
  v34[6] = *&v62[32];
  v34[4] = *v62;
  *&v63[0] = 0;
  *(v63 + 1) = v12;
  v63[1] = v55;
  v63[2] = v56;
  *&v64 = v57;
  *(&v64 + 1) = v13;
  LOWORD(v65) = 256;
  WORD3(v65) = v54;
  *(&v65 + 2) = v53;
  *(&v65 + 1) = v26;
  *&v66[0] = v27;
  *(&v66[2] + 8) = v52;
  *(&v66[1] + 8) = v51;
  *(v66 + 8) = v50;
  *(&v66[3] + 1) = 0xBFF921FB54442D18;
  *&v67[0] = v16;
  *(&v67[0] + 1) = v18;
  *&v67[1] = v19;
  *(&v67[1] + 2) = v12;
  *(&v34[17] + 4) = *(v67 + 12);
  *(&v34[16] + 8) = v67[0];
  *(&v34[9] + 8) = v56;
  *(&v34[8] + 8) = v55;
  *(&v34[7] + 8) = v63[0];
  *(&v34[13] + 8) = v66[1];
  *(&v34[12] + 8) = v66[0];
  *(&v34[11] + 8) = v65;
  *(&v34[10] + 8) = v64;
  *(&v34[15] + 8) = v66[3];
  *(&v34[14] + 8) = v66[2];
  v21 = v23;
  v68[0] = v23;
  v68[1] = 0;
  LOWORD(v69[0]) = 1;
  *(v69 + 2) = *v35;
  *(&v69[1] + 2) = *&v35[16];
  *(&v69[2] + 2) = *&v35[32];
  *&v69[3] = *&v35[46];
  *(&v69[3] + 1) = KeyPath;
  v70 = v13;
  *(&v34[18] + 8) = v23;
  *(&v34[19] + 8) = v69[0];
  *(&v34[21] + 8) = v69[2];
  *(&v34[22] + 8) = v69[3];
  *(&v34[20] + 8) = v69[1];
  *(&v34[23] + 1) = v13;
  memcpy(v25, v34, 0x180uLL);
  v71[0] = v21;
  v71[1] = 0;
  v72 = 1;
  v73 = *v35;
  v74 = *&v35[16];
  *v75 = *&v35[32];
  *&v75[14] = *&v35[46];
  v76 = KeyPath;
  v77 = v13;

  sub_26EE13B88(&v58, v78, &qword_2806C9590, &qword_26EF43550);
  sub_26EE13B88(v63, v78, &qword_2806C9598, &qword_26EF43558);
  sub_26EE13B88(v68, v78, &qword_2806C95A0, &unk_26EF43560);
  sub_26EE14578(v71, &qword_2806C95A0, &unk_26EF43560);
  v78[0] = 0;
  *&v78[1] = v12;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  v82 = v13;
  v83 = 256;
  v84 = v53;
  v85 = v54;
  v86 = v26;
  v87 = v27;
  v89 = v51;
  v90 = v52;
  v88 = v50;
  v91 = 0xBFF921FB54442D18;
  v92 = v16;
  v93 = v18;
  v94 = v24;
  v95 = v12;
  sub_26EE14578(v78, &qword_2806C9598, &qword_26EF43558);
  v96 = v7;
  v97 = v30;
  v98 = v29;
  v99 = v8;
  v100 = v28;
  v101 = v9;
  v102 = v33;
  v103 = 256;
  v104 = v48;
  v105 = v49;
  v106 = v32;
  v107 = v31;
  v110 = v47;
  v109 = v46;
  v108 = v45;
  return sub_26EE14578(&v96, &qword_2806C9590, &qword_26EF43550);
}

__n128 sub_26EEF3FAC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_26EF3AE4C();
  v29 = v11;
  v30 = v10;
  sub_26EF3979C();

  v12 = sub_26EF3AE4C();
  v14 = v13;
  sub_26EF3AE4C();
  sub_26EF3984C();
  LOBYTE(v48[0]) = a2;
  *(&v48[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v38)
  {
    v15 = 6.28318531;
  }

  else
  {
    v15 = 0.0;
  }

  sub_26EF3AF2C();
  v17 = v16;
  v19 = v18;
  sub_26EF3AE8C();
  v20 = sub_26EF3AE7C();

  sub_26EF3AAFC();
  v21 = v38;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a5;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  v65 = 0;
  v64 = 0;

  v38 = xmmword_26EF43170;
  v39 = v35;
  v40 = v36;
  *&v41 = v37;
  *(&v41 + 1) = a1;
  LOWORD(v42) = 256;
  *(&v42 + 1) = v12;
  *v43 = v14;
  *&v43[8] = v32;
  *&v43[24] = v33;
  *&v43[40] = v34;
  *&v43[56] = v15;
  *&v44 = v17;
  *(&v44 + 1) = v19;
  *&v45 = v20;
  BYTE8(v45) = v21;
  v48[1] = v35;
  v48[2] = v36;
  *&v46 = sub_26EEF7974;
  *(&v46 + 1) = v22;
  v47 = 0uLL;
  v48[0] = xmmword_26EF43170;
  v49 = v37;
  v50 = a1;
  v51 = 256;
  v52 = v12;
  v53 = v14;
  v56 = v34;
  v54 = v32;
  v55 = v33;
  v57 = v15;
  v58 = v17;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = sub_26EEF7974;
  v63 = v22;
  sub_26EE13B88(&v38, &v31, &qword_2806C94A8, &qword_26EF431E8);
  sub_26EE14578(v48, &qword_2806C94A8, &qword_26EF431E8);
  *a4 = v30;
  *(a4 + 8) = v29;
  v23 = v46;
  *(a4 + 176) = v45;
  *(a4 + 192) = v23;
  *(a4 + 208) = v47;
  v24 = *&v43[32];
  *(a4 + 112) = *&v43[16];
  *(a4 + 128) = v24;
  v25 = v44;
  *(a4 + 144) = *&v43[48];
  *(a4 + 160) = v25;
  v26 = v41;
  *(a4 + 48) = v40;
  *(a4 + 64) = v26;
  v27 = *v43;
  *(a4 + 80) = v42;
  *(a4 + 96) = v27;
  result = v39;
  *(a4 + 16) = v38;
  *(a4 + 32) = result;
  *(a4 + 224) = 0;
  return result;
}

uint64_t TTSDownloadButton.buttonState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *a2 = v4;
  *(a2 + 4) = v3;
  return result;
}

uint64_t TTSDownloadButton.buttonState.setter(uint64_t result, uint64_t a2)
{
  v3 = *(result + 4);
  v4 = v2 + *(a2 + 36);
  *v4 = *result;
  *(v4 + 4) = v3;
  return result;
}

int *TTSDownloadButton.init(buttonState:size:action:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *a1;
  v14 = *(a1 + 4);
  (*(*(a4 - 8) + 56))(a6, 1, 1);
  result = type metadata accessor for TTSDownloadButton(0, a4, a5, v15);
  v17 = result[10];
  v18 = (a6 + result[11]);
  *v18 = 0xD000000000000015;
  v18[1] = 0x800000026EF46460;
  v19 = (a6 + result[12]);
  *v19 = 0x6873617274;
  v19[1] = 0xE500000000000000;
  v20 = (a6 + result[13]);
  *v20 = 0x6C69662E706F7473;
  v20[1] = 0xE90000000000006CLL;
  v21 = (a6 + result[14]);
  *(a6 + v17) = a7;
  v22 = a6 + result[9];
  *v22 = v13;
  *(v22 + 4) = v14;
  *v21 = a2;
  v21[1] = a3;
  return result;
}

uint64_t TTSDownloadButton.init(action:buttonState:size:downloadView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v23 = a4;
  v16 = sub_26EF3B5CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  v20 = *(a3 + 4);
  v24 = *a3;
  v25 = v20;
  TTSDownloadButton.init(buttonState:size:action:)(&v24, a1, a2, a6, a7, a8, a9);

  v23(v21);

  (*(*(a6 - 8) + 56))(v19, 0, 1, a6);
  return (*(v17 + 40))(a8, v19, v16);
}

uint64_t sub_26EEF45DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v6 = (a1 + *(type metadata accessor for TTSDownloadButton(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a5) + 56));
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_26EE15900;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;

  return sub_26EE21114(v7, v8);
}

uint64_t sub_26EEF4678(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_26EEF7878;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for TTSDownloadButton(0, v5, v6, a4) + 56));
  v12 = *v11;
  v13 = v11[1];
  sub_26EE21114(v7, v8);
  result = sub_26EE18828(v12, v13);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t TTSDownloadButton.action.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  sub_26EE21114(*v2, v2[1]);
  return v3;
}

uint64_t TTSDownloadButton.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = sub_26EE18828(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TTSDownloadButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = *(a1 - 8);
  v59 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  v58 = *(a1 + 24);
  v8 = v58;
  v9 = sub_26EEC87E4();
  v75 = v8;
  v76 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_26EEF6368();
  v73 = WitnessTable;
  v74 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_26EEF64A4();
  v71 = v12;
  v72 = v13;
  swift_getWitnessTable();
  v55 = sub_26EF3AC0C();
  v54 = swift_getWitnessTable();
  v14 = sub_26EF3AB8C();
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v44 - v15;
  v51 = v14;
  v16 = sub_26EF39ABC();
  v50 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v52 = &v44 - v17;
  v47 = swift_getWitnessTable();
  v69 = v47;
  v70 = MEMORY[0x277CDF678];
  v18 = swift_getWitnessTable();
  v49 = v18;
  v48 = sub_26EEF6804(v18, v19, v20);
  v65 = v16;
  v66 = &type metadata for TTSDownloadButtonStyle;
  v67 = v18;
  v68 = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v45 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v46 = &v44 - v25;
  v26 = v3;
  v27 = *(v3 + 16);
  v28 = v60;
  v27(v6, v60, a1);
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = v58;
  *(v30 + 16) = v7;
  *(v30 + 24) = v31;
  (*(v26 + 32))(v30 + v29, v6, a1);
  v62 = v7;
  v63 = v31;
  v64 = v28;
  v32 = v53;
  sub_26EF3AB4C();
  v33 = *(v28 + *(a1 + 40));
  sub_26EF3AE4C();
  v34 = v52;
  v35 = v51;
  sub_26EF3A8AC();
  (*(v57 + 8))(v32, v35);
  v36 = (v28 + *(a1 + 36));
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 4);
  v65 = v33;
  LODWORD(v66) = v37;
  BYTE4(v66) = v36;
  v38 = v45;
  v39 = v50;
  sub_26EF3A66C();
  (*(v56 + 8))(v34, v39);
  v40 = *(v22 + 16);
  v41 = v46;
  v40(v46, v38, OpaqueTypeMetadata2);
  v42 = *(v22 + 8);
  v42(v38, OpaqueTypeMetadata2);
  v40(v61, v41, OpaqueTypeMetadata2);
  return (v42)(v41, OpaqueTypeMetadata2);
}

uint64_t sub_26EEF4E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  v26 = a3;
  v27 = sub_26EEC87E4();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_26EEF6368();
  v22 = swift_getWitnessTable();
  v23 = sub_26EEF64A4();
  swift_getWitnessTable();
  v8 = sub_26EF3AC0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  sub_26EF39F5C();
  v19 = a2;
  v20 = a3;
  v21 = a1;
  sub_26EF3ABFC();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(a4, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_26EEF50E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a1;
  v166 = a3;
  v164 = a4;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9588, &qword_26EF43548);
  MEMORY[0x28223BE20](v150);
  v152 = (&v136 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94B8, &unk_26EF43200);
  MEMORY[0x28223BE20](v6);
  v153 = &v136 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94E8, &qword_26EF43238);
  MEMORY[0x28223BE20](v151);
  v142 = &v136 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  v9 = sub_26EF3A07C();
  v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  v10 = sub_26EF3A07C();
  v149 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v148 = &v136 - v11;
  v12 = sub_26EF39AEC();
  v156 = *(v12 - 8);
  v157 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v154 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v155 = &v136 - v15;
  v16 = sub_26EF3AA9C();
  v144 = *(v16 - 8);
  v145 = v16;
  MEMORY[0x28223BE20](v16);
  v143 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26EF3B5CC();
  v137 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v136 - v20;
  v138 = *(a2 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v136 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v136 - v29;
  v163 = v9;
  v140 = *(v9 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v146 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v139 = &v136 - v33;
  v161 = v6;
  v162 = v10;
  v34 = sub_26EF3A07C();
  v159 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v158 = &v136 - v35;
  v37 = type metadata accessor for TTSDownloadButton(0, a2, v166, v36);
  v38 = v37;
  v39 = v165 + v37[9];
  v40 = *v39;
  v41 = *(v39 + 4);
  v160 = v34;
  if (v41)
  {
    if (v41 == 1)
    {
      if (v40)
      {

        sub_26EF3AA8C();
        v43 = v143;
        v42 = v144;
        v44 = v145;
        (*(v144 + 104))(v143, *MEMORY[0x277CE0FE0], v145);
        v45 = sub_26EF3AADC();

        (*(v42 + 8))(v43, v44);
        sub_26EF3AF2C();
        v46 = v155;
        sub_26EF39AFC();
        v48 = v156;
        v47 = v157;
        (*(v156 + 16))(v154, v46, v157);
        sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
        v49 = sub_26EF3986C();
        (*(v48 + 8))(v46, v47);

        v50 = 1;
      }

      else
      {
        v45 = 0;
        v50 = 0;
        v49 = 0;
      }

      v91 = v163;
      v175 = v45;
      *&v176 = v50;
      *(&v176 + 1) = v49;
      v92 = sub_26EEC87E4();
      v63 = v166;
      v183 = v166;
      v184 = v92;
      WitnessTable = swift_getWitnessTable();
      v94 = sub_26EEF6368();
      v95 = v148;
      sub_26EE83440(&v175, v91, v147, WitnessTable, v94);
      v181 = WitnessTable;
      v182 = v94;
      v96 = v162;
      v97 = swift_getWitnessTable();
      v98 = sub_26EEF64A4();
      v69 = v158;
      sub_26EE83348(v95, v96, v161, v97, v98);
      sub_26EEF78F4(v45, 0, v50, v49);
      v99 = sub_26EEF78F4(v45, 0, v50, v49);
      (*(v149 + 8))(v95, v96, v99);
LABEL_15:
      v90 = v159;
      v89 = v164;
      goto LABEL_16;
    }

    if (!v40)
    {
      v100 = v137;
      (*(v137 + 16))(v21, v165, v18);
      v101 = v138;
      if ((*(v138 + 48))(v21, 1, a2) == 1)
      {
        (*(v100 + 8))(v21, v18);

        sub_26EF3AA8C();
        v102 = v143;
        v103 = v144;
        v104 = v145;
        (*(v144 + 104))(v143, *MEMORY[0x277CE0FE0], v145);
        v153 = sub_26EF3AADC();

        (*(v103 + 8))(v102, v104);
        sub_26EF3AE4C();
        sub_26EF3984C();
        LOBYTE(v175) = 1;
        *&v174[6] = v199[0];
        *&v174[22] = v199[1];
        *&v174[38] = v199[2];
        sub_26EF3AF2C();
        v105 = v155;
        sub_26EF39AFC();
        v107 = v156;
        v106 = v157;
        (*(v156 + 16))(v154, v105, v157);
        sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
        v108 = sub_26EF3986C();
        (*(v107 + 8))(v105, v106);
        v109 = sub_26EF3A96C();
        KeyPath = swift_getKeyPath();
        *(v172 + 2) = *v174;
        v171 = v153;
        LOWORD(v172[0]) = 1;
        *(&v172[1] + 2) = *&v174[16];
        *(&v172[2] + 2) = *&v174[32];
        *&v172[3] = *&v174[46];
        *(&v172[3] + 1) = v108;
        *&v173 = KeyPath;
        *(&v173 + 1) = v109;
        v111 = sub_26EEC87E4();
        v112 = v139;
        v63 = v166;
        sub_26EE83440(&v171, a2, v141, v166, v111);
        v177 = v172[1];
        v178 = v172[2];
        v179 = v172[3];
        v180 = v173;
        v175 = v171;
        v176 = v172[0];
        sub_26EE14578(&v175, &qword_2806C9038, &qword_26EF431F0);
      }

      else
      {
        (*(v101 + 32))(v30, v21, a2);
        v113 = *(v101 + 16);
        v113(v27, v30, a2);
        v113(v24, v27, a2);
        v114 = sub_26EEC87E4();
        v112 = v139;
        v115 = v101;
        v63 = v166;
        sub_26EE83348(v24, a2, v141, v166, v114);
        v116 = *(v115 + 8);
        v116(v24, a2);
        v116(v27, a2);
        v116(v30, a2);
      }

      v117 = sub_26EEC87E4();
      v169 = v63;
      v170 = v117;
      v118 = v163;
      v119 = swift_getWitnessTable();
      v120 = v140;
      v121 = v146;
      (*(v140 + 16))(v146, v112, v118);
      v122 = sub_26EEF6368();
      v123 = v148;
      sub_26EE83348(v121, v118, v147, v119, v122);
      v167 = v119;
      v168 = v122;
      v124 = v112;
      v125 = v162;
      v126 = swift_getWitnessTable();
      v127 = sub_26EEF64A4();
      v69 = v158;
      sub_26EE83348(v123, v125, v161, v126, v127);
      (*(v149 + 8))(v123, v125);
      v128 = *(v120 + 8);
      v128(v146, v118);
      v128(v124, v118);
      goto LABEL_15;
    }

    v73 = v165;
    v74 = sub_26EF3A96C();
    v75 = *(v73 + v38[10]);
    LOBYTE(v171) = 0;
    sub_26EF3AAEC();
    LOBYTE(v73) = v175;
    v76 = *(&v175 + 1);
    sub_26EF3AF2C();
    v77 = v155;
    sub_26EF39AFC();
    v79 = v156;
    v78 = v157;
    (*(v156 + 16))(v154, v77, v157);
    sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
    v80 = sub_26EF3986C();
    (*(v79 + 8))(v77, v78);
    *&v175 = v74;
    *(&v175 + 1) = v75;
    LOBYTE(v176) = v73;
    *(&v176 + 1) = v76;
    *&v177 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94F8, &qword_26EF43240);
    sub_26EEF65EC();
    v81 = v142;
    sub_26EF3A7BC();

    sub_26EE13B88(v81, v152, &qword_2806C94E8, &qword_26EF43238);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF6530();
    sub_26EEF66F8();
    v82 = v153;
    sub_26EF3A06C();
    v83 = sub_26EEC87E4();
    v63 = v166;
    v187 = v166;
    v188 = v83;
    v84 = swift_getWitnessTable();
    v85 = sub_26EEF6368();
    v185 = v84;
    v186 = v85;
    v86 = v162;
    v87 = swift_getWitnessTable();
    v88 = sub_26EEF64A4();
    v69 = v158;
    sub_26EE83440(v82, v86, v161, v87, v88);
    sub_26EE14578(v82, &qword_2806C94B8, &unk_26EF43200);
    v72 = v81;
    v70 = &qword_2806C94E8;
    v71 = &qword_26EF43238;
  }

  else
  {
    v51 = *(v165 + v37[10]);
    v52 = (v165 + v37[13]);
    v54 = *v52;
    v53 = v52[1];

    v55 = sub_26EF3A96C();
    sub_26EF3AF2C();
    v56 = v155;
    sub_26EF39AFC();
    v58 = v156;
    v57 = v157;
    (*(v156 + 16))(v154, v56, v157);
    sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
    v59 = sub_26EF3986C();
    (*(v58 + 8))(v56, v57);
    v60 = v152;
    *v152 = v51;
    v60[1] = v54;
    v60[2] = v53;
    *(v60 + 6) = v40;
    v60[4] = v55;
    v60[5] = v59;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF6530();
    sub_26EEF66F8();
    v61 = v153;
    sub_26EF3A06C();
    v62 = sub_26EEC87E4();
    v63 = v166;
    v197 = v166;
    v198 = v62;
    v64 = swift_getWitnessTable();
    v65 = sub_26EEF6368();
    v195 = v64;
    v196 = v65;
    v66 = v162;
    v67 = swift_getWitnessTable();
    v68 = sub_26EEF64A4();
    v69 = v158;
    sub_26EE83440(v61, v66, v161, v67, v68);

    v70 = &qword_2806C94B8;
    v71 = &unk_26EF43200;
    v72 = v61;
  }

  sub_26EE14578(v72, v70, v71);
  v89 = v164;
  v90 = v159;
LABEL_16:
  v129 = sub_26EEC87E4();
  v193 = v63;
  v194 = v129;
  v130 = swift_getWitnessTable();
  v131 = sub_26EEF6368();
  v191 = v130;
  v192 = v131;
  v132 = swift_getWitnessTable();
  v133 = sub_26EEF64A4();
  v189 = v132;
  v190 = v133;
  v134 = v160;
  swift_getWitnessTable();
  (*(v90 + 16))(v89, v69, v134);
  return (*(v90 + 8))(v69, v134);
}

unint64_t sub_26EEF62E4()
{
  result = qword_2806C9068;
  if (!qword_2806C9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9070, &unk_26EF42150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9068);
  }

  return result;
}

unint64_t sub_26EEF6368()
{
  result = qword_2806C94C0;
  if (!qword_2806C94C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
    sub_26EEF63EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94C0);
  }

  return result;
}

unint64_t sub_26EEF63EC()
{
  result = qword_2806C94C8;
  if (!qword_2806C94C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94D0, &qword_26EF43230);
    sub_26EEF62E4();
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94C8);
  }

  return result;
}

unint64_t sub_26EEF64A4()
{
  result = qword_2806C94D8;
  if (!qword_2806C94D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
    sub_26EEF6530();
    sub_26EEF66F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94D8);
  }

  return result;
}

unint64_t sub_26EEF6530()
{
  result = qword_2806C94E0;
  if (!qword_2806C94E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94E8, &qword_26EF43238);
    sub_26EEF65EC();
    sub_26EEF78AC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94E0);
  }

  return result;
}

unint64_t sub_26EEF65EC()
{
  result = qword_2806C94F0;
  if (!qword_2806C94F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94F8, &qword_26EF43240);
    sub_26EEF66A4(v1, v2, v3);
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94F0);
  }

  return result;
}

unint64_t sub_26EEF66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9500;
  if (!qword_2806C9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9500);
  }

  return result;
}

unint64_t sub_26EEF66F8()
{
  result = qword_2806C9508;
  if (!qword_2806C9508)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF67B0(v1, v2, v3);
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9508);
  }

  return result;
}

unint64_t sub_26EEF67B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9518;
  if (!qword_2806C9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9518);
  }

  return result;
}

unint64_t sub_26EEF6804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C9520;
  if (!qword_2806C9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9520);
  }

  return result;
}

uint64_t sub_26EEF6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for TTSDownloadButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = *(v5 - 8);
  if (!(*(v10 + 48))(v4 + v9, 1, v5))
  {
    (*(v10 + 8))(v4 + v9, v5);
  }

  if (*(v4 + v9 + *(v6 + 56)))
  {
  }

  return MEMORY[0x2821FE8E8](v4, v9 + v8, v7 | 7);
}

uint64_t sub_26EEF69BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTSDownloadButton(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = (v4 + *(result + 64) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  if (*v8)
  {
    return (*v8)();
  }

  return result;
}

__n128 sub_26EEF6AE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSDownloadButtonState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSDownloadButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26EEF6B94(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26EEF6BAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSDownloadButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSDownloadButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_26EEF6C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EEF6CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EEF6D28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EEF6D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26EEF6DC8(uint64_t a1)
{
  sub_26EF3B5CC();
  if (v1 <= 0x3F)
  {
    sub_26EE183AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26EEF6E74(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((((a1 + v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_26EEF700C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((((a1 + v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      v22[1] = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

unint64_t sub_26EEF728C()
{
  result = qword_2806C9528;
  if (!qword_2806C9528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9498, &qword_26EF431D0);
    sub_26EEF7344();
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9528);
  }

  return result;
}

unint64_t sub_26EEF7344()
{
  result = qword_2806C9530;
  if (!qword_2806C9530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9490, &qword_26EF43188);
    sub_26EEF73FC();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9530);
  }

  return result;
}

unint64_t sub_26EEF73FC()
{
  result = qword_2806C8868;
  if (!qword_2806C8868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8818, &qword_26EF40D60);
    sub_26EE9B194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8868);
  }

  return result;
}

unint64_t sub_26EEF748C()
{
  result = qword_2806C9538;
  if (!qword_2806C9538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9540, &qword_26EF43520);
    sub_26EE154C8(&qword_2806C9548, &qword_2806C9550, &qword_26EF43528, MEMORY[0x277CE11A8]);
    sub_26EE154C8(&qword_2806C9558, &qword_2806C9560, &qword_26EF43530, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9538);
  }

  return result;
}

unint64_t sub_26EEF7574()
{
  result = qword_2806C9568;
  if (!qword_2806C9568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9570, &qword_26EF43538);
    sub_26EE154C8(&qword_2806C9578, &qword_2806C9580, &qword_26EF43540, MEMORY[0x277CE11A8]);
    sub_26EE154C8(&qword_2806C9558, &qword_2806C9560, &qword_26EF43530, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9568);
  }

  return result;
}

uint64_t sub_26EEF7658(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  sub_26EEC87E4();
  swift_getWitnessTable();
  sub_26EEF6368();
  swift_getWitnessTable();
  sub_26EEF64A4();
  swift_getWitnessTable();
  sub_26EF3AC0C();
  swift_getWitnessTable();
  sub_26EF3AB8C();
  sub_26EF39ABC();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_26EEF6804(WitnessTable, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EEF7840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EEF78AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_26EEF78F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_26EEF7934()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EEF79D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEF7A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v91 = sub_26EF3A1FC();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SoundCheckView(0);
  v101 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v99 = v5;
  v100 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_26EF39DDC();
  v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95A8, &qword_26EF43570);
  v78 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v9 = &v72 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95B0, &qword_26EF43578);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v97 = &v72 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95B8, &qword_26EF43580);
  MEMORY[0x28223BE20](v84);
  v85 = &v72 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95C0, &qword_26EF43588);
  MEMORY[0x28223BE20](v87);
  v98 = &v72 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95C8, &qword_26EF43590);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v72 - v13;
  v95 = sub_26EEF892C();
  v76 = v14;
  v75 = sub_26EEF8B74();
  v74 = v15;
  v86 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  sub_26EF3AB1C();
  v104 = v1;
  v103 = v1;
  v102 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D8, &qword_26EF435A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E8, &qword_26EF435B0);
  sub_26EEFAAE0(&qword_2806C95F0, &qword_2806C95D8, &qword_26EF435A0, sub_26EEFA6F4);
  sub_26EEFA8E4();
  sub_26EEFAAE0(&qword_2806C9688, &qword_2806C95E8, &qword_26EF435B0, sub_26EEFAB5C);
  v77 = v9;
  sub_26EF386BC();
  v16 = *v1;
  v17 = *(v1 + 8);
  if (v17 == 1)
  {
    v18 = v16;
  }

  else
  {

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    v20 = v79;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v16, 0);
    (*(v80 + 8))(v20, v81);
    v18 = v107;
  }

  VoiceBankingSession.sampleState.getter(&v107);

  LOBYTE(v105) = v107;
  v21 = v100;
  sub_26EF06BC8(v2, v100, type metadata accessor for SoundCheckView);
  v22 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v101 = *(v101 + 80);
  v99 += v22;
  v23 = swift_allocObject();
  sub_26EF06DD8(v21, v23 + v22, type metadata accessor for SoundCheckView);
  v24 = sub_26EE154C8(&qword_2806C96B0, &qword_2806C95A8, &qword_26EF43570, MEMORY[0x277CE7668]);
  v27 = sub_26EEF21B0(v24, v25, v26);
  v28 = v96;
  v29 = v77;
  sub_26EF3A8FC();

  (*(v78 + 8))(v29, v28);
  if (v17)
  {
    v30 = v16;
  }

  else
  {

    sub_26EF3B46C();
    v31 = sub_26EF3A36C();
    sub_26EF3880C();

    v32 = v79;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v16, 0);
    (*(v80 + 8))(v32, v81);
    v30 = v107;
  }

  v33 = sub_26EED34C4();

  LOBYTE(v105) = v33;
  v34 = v100;
  sub_26EF06BC8(v2, v100, type metadata accessor for SoundCheckView);
  v35 = swift_allocObject();
  sub_26EF06DD8(v34, v35 + v22, type metadata accessor for SoundCheckView);
  v107 = v96;
  v108 = &type metadata for SampleState;
  v109 = v24;
  v110 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26EE1C384(OpaqueTypeConformance2, v37, v38);
  v39 = v85;
  v40 = v83;
  v41 = v97;
  sub_26EF3A8FC();

  (*(v82 + 8))(v41, v40);
  v42 = (v2 + *(v86 + 40));
  v44 = *v42;
  v43 = v42[1];
  v107 = v44;
  v108 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  v45 = v105;
  v73 = v2;
  sub_26EF06BC8(v2, v34, type metadata accessor for SoundCheckView);
  v46 = swift_allocObject();
  v47 = v22;
  v95 = v22;
  sub_26EF06DD8(v34, v46 + v22, type metadata accessor for SoundCheckView);
  v48 = v84;
  *&v39[*(v84 + 52)] = v45;
  v49 = &v39[*(v48 + 56)];
  v50 = v39;
  *v49 = sub_26EEFC944;
  v49[1] = v46;
  v51 = v88;
  sub_26EF3A1EC();
  sub_26EF06BC8(v2, v34, type metadata accessor for SoundCheckView);
  v52 = swift_allocObject();
  sub_26EF06DD8(v34, v52 + v47, type metadata accessor for SoundCheckView);
  sub_26EE154C8(&qword_2806C96B8, &qword_2806C95B8, &qword_26EF43580, MEMORY[0x277CDDB50]);
  sub_26EF3A7AC();

  (*(v90 + 8))(v51, v91);
  sub_26EE14578(v50, &qword_2806C95B8, &qword_26EF43580);
  v53 = v73;
  v54 = *(v73 + 56);
  LOBYTE(v105) = *(v73 + 48);
  v106 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  v81 = type metadata accessor for SoundCheckView;
  sub_26EF06BC8(v53, v34, type metadata accessor for SoundCheckView);
  v55 = swift_allocObject();
  sub_26EF06DD8(v34, v55 + v95, type metadata accessor for SoundCheckView);
  v56 = type metadata accessor for VBRecordingResultView(0);
  v57 = sub_26EEFCB0C();
  v58 = sub_26EEF79D8(&qword_2806C96C8, type metadata accessor for VBRecordingResultView, &unk_26EF437F8);
  v59 = v89;
  v60 = v87;
  v61 = v98;
  sub_26EF3A8BC();

  v62 = sub_26EE14578(v61, &qword_2806C95C0, &qword_26EF43588);
  v98 = &v72;
  MEMORY[0x28223BE20](v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96D0, &qword_26EF43610);
  v107 = v60;
  v108 = v56;
  v109 = v57;
  v110 = v58;
  swift_getOpaqueTypeConformance2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D8, &qword_26EF43618);
  v64 = sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618, MEMORY[0x277CDDF68]);
  v107 = v63;
  v108 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v94;
  v66 = v93;
  sub_26EF3A8EC();
  (*(v92 + 8))(v59, v66);
  v67 = v100;
  v68 = v81;
  sub_26EF06BC8(v53, v100, v81);
  v69 = swift_allocObject();
  sub_26EF06DD8(v67, v69 + v95, v68);
  v70 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96E8, &qword_26EF43630) + 36));
  sub_26EF3990C();
  result = sub_26EF3B2EC();
  *v70 = &unk_26EF43628;
  v70[1] = v69;
  return result;
}

uint64_t sub_26EEF892C()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  LOBYTE(v19[0]) = *(v0 + 64);
  v19[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  result = 0;
  if (v18 == 2)
  {
    v8 = *v0;
    if (*(v1 + 8) == 1)
    {
      v9 = v8;
    }

    else
    {

      sub_26EF3B46C();
      v10 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v8, 0);
      (*(v3 + 8))(v5, v2);
      v9 = v19[0];
    }

    VoiceBankingSession.sampleState.getter(v19);

    v18 = 3;
    if (static SampleState.== infix(_:_:)(v19, &v18))
    {
      v11 = sub_26EF00030();
      v12 = sub_26EE17094();
      v13 = v12;
      if (v11)
      {
        v14 = 0x800000026EF46EB0;
        v15 = v12 & 1;
        v16 = 0xD000000000000018;
        return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v16, v15, 0)._countAndFlagsBits;
      }

      v16 = 0xD00000000000001BLL;
      v14 = 0x800000026EF46E90;
    }

    else
    {
      v13 = sub_26EE17094();
      v16 = 0xD00000000000001ELL;
      v14 = 0x800000026EF46E70;
    }

    v15 = v13 & 1;
    return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v16, v15, 0)._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_26EEF8B74()
{
  v1 = v0;
  v2 = sub_26EF3930C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26EF39DDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 72);
  LOBYTE(v19[0]) = *(v0 + 64);
  v19[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v18 != 2)
  {
    return 0;
  }

  v11 = *v0;
  if (*(v1 + 8) == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_26EF3B46C();
    v14 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v11, 0);
    (*(v7 + 8))(v9, v6);
    v12 = v19[0];
  }

  VoiceBankingSession.sampleState.getter(v19);

  v18 = 3;
  if (static SampleState.== infix(_:_:)(v19, &v18))
  {
    if (sub_26EF00030())
    {
      sub_26EF392AC();
      v15 = sub_26EF392CC();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (sub_26EF02554())
      {
        sub_26EF3929C();
      }

      else
      {
        sub_26EF392AC();
      }

      v15 = sub_26EF392DC();
      (*(v3 + 8))(v5, v2);
    }

    return v15;
  }

  else
  {
    v16._object = 0x800000026EF46F70;
    v16._countAndFlagsBits = 0xD000000000000020;
    return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v16, 1, 0)._countAndFlagsBits;
  }
}

uint64_t sub_26EEF8E78@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_26EF38CDC();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99B8, &qword_26EF43AA0);
  MEMORY[0x28223BE20](v123);
  v125 = (&v105 - v5);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99C0, &qword_26EF43AA8);
  MEMORY[0x28223BE20](v119);
  v121 = &v105 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9610, &qword_26EF435C0);
  MEMORY[0x28223BE20](v124);
  v122 = &v105 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9620, &qword_26EF435C8);
  MEMORY[0x28223BE20](v120);
  v117 = (&v105 - v8);
  v9 = type metadata accessor for SoundCheckView(0);
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v105 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9890, &qword_26EF43890);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = (&v105 - v16);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99C8, &qword_26EF43AB0);
  v17 = MEMORY[0x28223BE20](v113);
  v115 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v105 - v20;
  MEMORY[0x28223BE20](v19);
  v116 = &v105 - v22;
  v23 = sub_26EF39DDC();
  v118 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v107 = *(a1 + 8);
  v106 = v25;
  v108 = v26;
  if (v107 == 1)
  {
    v27 = v26;
  }

  else
  {

    sub_26EF3B46C();
    v28 = sub_26EF3A36C();
    v105 = v23;
    v29 = v14;
    v30 = a1;
    v31 = v21;
    v32 = v11;
    v33 = v28;
    sub_26EF3880C();

    v11 = v32;
    v21 = v31;
    a1 = v30;
    v14 = v29;
    v23 = v105;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v26, 0);
    (*(v118 + 8))(v25, v23);
    v27 = v142;
  }

  VoiceBankingSession.sampleState.getter(&v142);

  LOBYTE(v139) = 3;
  if (static SampleState.== infix(_:_:)(&v142, &v139))
  {
    sub_26EF398DC();
    v34 = sub_26EF398FC();
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    sub_26EF06BC8(a1, v11, type metadata accessor for SoundCheckView);
    v35 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v36 = swift_allocObject();
    v37 = sub_26EF06DD8(v11, v36 + v35, type metadata accessor for SoundCheckView);
    MEMORY[0x28223BE20](v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F8, &unk_26EF43648);
    v39 = sub_26EE154C8(&qword_2806C9700, &qword_2806C96F8, &unk_26EF43648, MEMORY[0x277CE1138]);
    v40 = v114;
    sub_26EE98DD0(v14, sub_26EF07740, v36, sub_26EF0774C, v38, v39, v114);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    sub_26EE14D98(v40, v21, &qword_2806C9890, &qword_26EF43890);
    v41 = &v21[*(v113 + 36)];
    v42 = v147;
    *(v41 + 4) = v146;
    *(v41 + 5) = v42;
    *(v41 + 6) = v148;
    v43 = v143;
    *v41 = v142;
    *(v41 + 1) = v43;
    v44 = v145;
    *(v41 + 2) = v144;
    *(v41 + 3) = v44;
    v45 = v116;
    sub_26EE14D98(v21, v116, &qword_2806C99C8, &qword_26EF43AB0);
    v46 = v115;
    sub_26EE13B88(v45, v115, &qword_2806C99C8, &qword_26EF43AB0);
    v47 = v117;
    *v117 = 0;
    v47[8] = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99D8, &unk_26EF43AC0);
    sub_26EE13B88(v46, &v47[*(v48 + 48)], &qword_2806C99C8, &qword_26EF43AB0);
    v49 = &v47[*(v48 + 64)];
    *v49 = 0;
    v49[8] = 1;
    sub_26EE14578(v46, &qword_2806C99C8, &qword_26EF43AB0);
    sub_26EE13B88(v47, v121, &qword_2806C9620, &qword_26EF435C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9630, &unk_26EF435D0);
    v50 = MEMORY[0x277CE14C0];
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8, MEMORY[0x277CE14C0]);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0, v50);
    v51 = v122;
    sub_26EF3A06C();
    sub_26EE13B88(v51, v125, &qword_2806C9610, &qword_26EF435C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
    sub_26EEFA780();
    sub_26EEFA860();
    v52 = v126;
    sub_26EF3A06C();
    sub_26EE14578(v51, &qword_2806C9610, &qword_26EF435C0);
    sub_26EE14578(v47, &qword_2806C9620, &qword_26EF435C8);
    v53 = v45;
    v54 = &qword_2806C99C8;
    v55 = &qword_26EF43AB0;
LABEL_13:
    sub_26EE14578(v53, v54, v55);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
    v69 = *(*(v68 - 8) + 56);
    v70 = v52;
    return v69(v70, 0, 1, v68);
  }

  v56 = *(a1 + 64);
  v57 = a1[9];
  LOBYTE(v142) = v56;
  *(&v142 + 1) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v139 == 2)
  {
    v58 = sub_26EE867F0();
    v116 = v59;
    v117 = v58;
    v60 = sub_26EF39F6C();
    v157 = 1;
    if (v107)
    {
      v154 = v108;
      v61 = v108;
    }

    else
    {
      v71 = v108;

      sub_26EF3B46C();
      v72 = sub_26EF3A36C();
      sub_26EF3880C();

      v73 = v106;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v71, 0);
      (*(v118 + 8))(v73, v23);
      v61 = v154;
    }

    v74 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    v76 = v109;
    v75 = v110;
    v77 = v111;
    (*(v110 + 16))(v109, &v61[v74], v111);

    v78 = sub_26EF38CAC();
    v80 = v79;
    (*(v75 + 8))(v76, v77);
    v81._object = 0x800000026EF46ED0;
    v81._countAndFlagsBits = 0xD000000000000015;
    v82.value._countAndFlagsBits = v78;
    v82.value._object = v80;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v81, 1, v82);

    v83 = sub_26EED275C();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    LOBYTE(v76) = sub_26EF3A3DC();
    sub_26EF3962C();
    v155 = 0;
    v130[0] = v60;
    v130[1] = 0;
    LOBYTE(v131) = v157;
    *(&v131 + 1) = *v156;
    DWORD1(v131) = *&v156[3];
    *(&v131 + 1) = v83;
    *&v132 = v85;
    *(&v132 + 1) = v87;
    *&v133 = v89;
    BYTE8(v133) = v76;
    *&v134 = v90;
    *(&v134 + 1) = v91;
    *&v135 = v92;
    *(&v135 + 1) = v93;
    v136 = 0;
    v152[0] = v60;
    v152[1] = v131;
    v153 = 0;
    v152[4] = v134;
    v152[5] = v135;
    v152[2] = v132;
    v152[3] = v133;
    v129 = 1;
    v137[0] = v60;
    v137[1] = v131;
    v138 = 0;
    v137[4] = v134;
    v137[5] = v135;
    v137[2] = v132;
    v137[3] = v133;
    *&v128[39] = v132;
    *&v128[23] = v131;
    *&v128[7] = v60;
    v128[103] = 0;
    *&v128[87] = v135;
    *&v128[71] = v134;
    *&v128[55] = v133;
    v127[152] = 1;
    *&v139 = v117;
    *(&v139 + 1) = v116;
    *&v140[0] = 0;
    BYTE8(v140[0]) = 1;
    *(&v140[2] + 9) = *&v128[32];
    *(&v140[1] + 9) = *&v128[16];
    *(v140 + 9) = *v128;
    *(&v140[6] + 9) = *&v128[96];
    *(&v140[5] + 9) = *&v128[80];
    *(&v140[4] + 9) = *&v128[64];
    *(&v140[3] + 9) = *&v128[48];
    *(&v140[7] + 1) = 0;
    v141 = 1;
    v142 = v139;
    v143 = v140[0];
    v146 = v140[3];
    v147 = v140[4];
    v144 = v140[1];
    v145 = v140[2];
    v151 = 1;
    v149 = v140[6];
    v150 = v140[7];
    v148 = v140[5];
    v94 = v117;
    sub_26EE13B88(v130, v127, &qword_2806C9888, &qword_26EF43888);
    v95 = v94;
    sub_26EE13B88(v137, v127, &qword_2806C9888, &qword_26EF43888);
    sub_26EE14578(v152, &qword_2806C9888, &qword_26EF43888);

    v96 = v149;
    v97 = v121;
    *(v121 + 96) = v148;
    *(v97 + 112) = v96;
    *(v97 + 128) = v150;
    *(v97 + 144) = v151;
    v98 = v145;
    *(v97 + 32) = v144;
    *(v97 + 48) = v98;
    v99 = v147;
    *(v97 + 64) = v146;
    *(v97 + 80) = v99;
    v100 = v143;
    *v97 = v142;
    *(v97 + 16) = v100;
    swift_storeEnumTagMultiPayload();
    sub_26EE13B88(&v139, v127, &qword_2806C99D0, &qword_26EF43AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9630, &unk_26EF435D0);
    v101 = MEMORY[0x277CE14C0];
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8, MEMORY[0x277CE14C0]);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0, v101);
    v102 = v122;
    sub_26EF3A06C();
    sub_26EE13B88(v102, v125, &qword_2806C9610, &qword_26EF435C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
    sub_26EEFA780();
    sub_26EEFA860();
    v52 = v126;
    sub_26EF3A06C();
    sub_26EE14578(&v139, &qword_2806C99D0, &qword_26EF43AB8);
    sub_26EE14578(v130, &qword_2806C9888, &qword_26EF43888);

    v53 = v102;
    v54 = &qword_2806C9610;
    v55 = &qword_26EF435C0;
    goto LABEL_13;
  }

  LOBYTE(v142) = v56;
  *(&v142 + 1) = v57;
  sub_26EF3AAFC();
  if (v139 != 1)
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
    return (*(*(v104 - 8) + 56))(v126, 1, 1, v104);
  }

  sub_26EEF9EA8(&v142);
  v62 = v149;
  v63 = v125;
  v125[6] = v148;
  v63[7] = v62;
  v63[8] = v150;
  v64 = v145;
  v63[2] = v144;
  v63[3] = v64;
  v65 = v147;
  v63[4] = v146;
  v63[5] = v65;
  v66 = v143;
  *v63 = v142;
  v63[1] = v66;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
  sub_26EEFA780();
  sub_26EEFA860();
  v67 = v126;
  sub_26EF3A06C();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
  v69 = *(*(v68 - 8) + 56);
  v70 = v67;
  return v69(v70, 0, 1, v68);
}

__n128 sub_26EEF9EA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3B0BC();
  v3 = TTSVBSupportLocString();

  sub_26EF3B0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26EF3C6B0;
  v5 = sub_26EEFF80C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26EE1EFBC(v5, v6, v8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_26EF3B0CC();
  v11 = v10;

  *&v27 = v9;
  *(&v27 + 1) = v11;
  sub_26EE12538(v12, v13, v14);
  v15 = sub_26EF3A5DC();
  v17 = v16;
  LOBYTE(v4) = v18;
  v19 = sub_26EF3A5AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_26EE12ABC(v15, v17, v4 & 1);

  sub_26EF3AE4C();
  sub_26EF39BAC();
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 96) = v31;
  *(a1 + 112) = v32;
  *(a1 + 128) = v33;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
  result = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v30;
  return result;
}

uint64_t sub_26EEFA088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99B0, &qword_26EF43A98);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9650, &qword_26EF435E0);
  MEMORY[0x28223BE20](v40);
  v7 = &v39 - v6;
  v8 = sub_26EF39DDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*(a1 + 8) == 1)
  {
    v13 = v12;
  }

  else
  {

    sub_26EF3B46C();
    v14 = sub_26EF3A36C();
    v39 = v5;
    v15 = v14;
    sub_26EF3880C();

    v5 = v39;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v12, 0);
    (*(v9 + 8))(v11, v8);
    v13 = *&v63[0];
  }

  VoiceBankingSession.sampleState.getter(v63);

  LOBYTE(v54) = 3;
  if (static SampleState.== infix(_:_:)(v63, &v54))
  {
    *v7 = sub_26EF39F5C();
    *(v7 + 1) = 0x4034000000000000;
    v7[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9708, &qword_26EF43658);
    sub_26EEFF1E0(a1, &v7[*(v16 + 44)]);
    v17 = sub_26EF3A3DC();
    sub_26EF3962C();
    v18 = &v7[*(v40 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_26EE13B88(v7, v5, &qword_2806C9650, &qword_26EF435E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EEFA970();
    sub_26EEFAA28();
    v23 = v41;
    sub_26EF3A06C();
    sub_26EE14578(v7, &qword_2806C9650, &qword_26EF435E0);
LABEL_8:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
    return (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v24 = *(a1 + 72);
  LOBYTE(v63[0]) = *(a1 + 64);
  *(&v63[0] + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v54 == 2)
  {
    v25 = sub_26EF39F5C();
    v53 = 0;
    sub_26EEFED14(a1, &v43);
    v59 = v48;
    v60 = v49;
    v61 = v50;
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v54 = v43;
    v55 = v44;
    v63[6] = v49;
    v63[7] = v50;
    v63[2] = v45;
    v63[3] = v46;
    v63[4] = v47;
    v63[5] = v48;
    v62 = v51;
    v64 = v51;
    v63[0] = v43;
    v63[1] = v44;
    sub_26EE13B88(&v54, &v42, &qword_2806C9710, &qword_26EF43660);
    sub_26EE14578(v63, &qword_2806C9710, &qword_26EF43660);
    *(&v52[5] + 7) = v59;
    *(&v52[6] + 7) = v60;
    *(&v52[7] + 7) = v61;
    *(&v52[1] + 7) = v55;
    *(&v52[2] + 7) = v56;
    *(&v52[3] + 7) = v57;
    *(&v52[4] + 7) = v58;
    *(&v52[8] + 7) = v62;
    *(v52 + 7) = v54;
    v26 = v53;
    v27 = sub_26EF3A3DC();
    sub_26EF3962C();
    v28 = v52[4];
    *(v5 + 97) = v52[5];
    v29 = v52[7];
    *(v5 + 113) = v52[6];
    *(v5 + 129) = v29;
    *(v5 + 9) = *(&v52[7] + 15);
    v30 = v52[0];
    *(v5 + 33) = v52[1];
    v31 = v52[3];
    *(v5 + 49) = v52[2];
    *(v5 + 65) = v31;
    *(v5 + 81) = v28;
    LOBYTE(v43) = 0;
    *v5 = v25;
    *(v5 + 1) = 0x4041800000000000;
    v5[16] = v26;
    *(v5 + 17) = v30;
    v5[160] = v27;
    *(v5 + 21) = v32;
    *(v5 + 22) = v33;
    *(v5 + 23) = v34;
    *(v5 + 24) = v35;
    v5[200] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EEFA970();
    sub_26EEFAA28();
    v23 = v41;
    sub_26EF3A06C();
    goto LABEL_8;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
  return (*(*(v38 - 8) + 56))(v41, 1, 1, v38);
}

uint64_t sub_26EEFA674@<X0>(uint64_t a1@<X8>)
{
  sub_26EEFACE0(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E8, &qword_26EF435B0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_26EEFA6F4()
{
  result = qword_2806C95F8;
  if (!qword_2806C95F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9600, &qword_26EF435B8);
    sub_26EEFA780();
    sub_26EEFA860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C95F8);
  }

  return result;
}

unint64_t sub_26EEFA780()
{
  result = qword_2806C9608;
  if (!qword_2806C9608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9610, &qword_26EF435C0);
    v1 = MEMORY[0x277CE14C0];
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8, MEMORY[0x277CE14C0]);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9608);
  }

  return result;
}

unint64_t sub_26EEFA860()
{
  result = qword_2806C9638;
  if (!qword_2806C9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C91A8, &unk_26EF423D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9638);
  }

  return result;
}

unint64_t sub_26EEFA8E4()
{
  result = qword_2806C9640;
  if (!qword_2806C9640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95E0, &qword_26EF435A8);
    sub_26EEFA970();
    sub_26EEFAA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9640);
  }

  return result;
}

unint64_t sub_26EEFA970()
{
  result = qword_2806C9648;
  if (!qword_2806C9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9650, &qword_26EF435E0);
    sub_26EE154C8(&qword_2806C9658, &qword_2806C9660, &qword_26EF435E8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9648);
  }

  return result;
}

unint64_t sub_26EEFAA28()
{
  result = qword_2806C9668;
  if (!qword_2806C9668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EE154C8(&qword_2806C9678, &qword_2806C9680, &qword_26EF435F8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9668);
  }

  return result;
}

uint64_t sub_26EEFAAE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EEFAB5C()
{
  result = qword_2806C9690;
  if (!qword_2806C9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9698, &qword_26EF43600);
    sub_26EEFABE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9690);
  }

  return result;
}

unint64_t sub_26EEFABE8()
{
  result = qword_2806C96A0;
  if (!qword_2806C96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96A8, &qword_26EF43608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8210, &qword_26EF3FEB0);
    sub_26EE82C68();
    swift_getOpaqueTypeConformance2();
    sub_26EEF79D8(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C96A0);
  }

  return result;
}

uint64_t sub_26EEFACE0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8208, &qword_26EF3FEA8);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8210, &qword_26EF3FEB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99A8, &qword_26EF43A90);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96A8, &qword_26EF43608);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9698, &qword_26EF43600);
  v45 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  sub_26EF02388();
  if (v20)
  {
    sub_26EF3AA8C();
    v40 = a1;
    sub_26EF3AACC();

    v21 = sub_26EF00030();
    v22 = objc_opt_self();
    v23 = &selRef_systemGreenColor;
    if ((v21 & 1) == 0)
    {
      v23 = &selRef_systemOrangeColor;
    }

    v24 = [v22 *v23];
    v25 = sub_26EF3AA5C();
    (*(v41 + 32))(v7, v4, v42);
    *&v7[*(v5 + 36)] = v25;
    sub_26EF3A48C();
    v26 = sub_26EE82C68();
    sub_26EF3A64C();
    sub_26EE14578(v7, &qword_2806C8210, &qword_26EF3FEB0);
    v46 = v5;
    v47 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v44;
    sub_26EF3A7BC();
    (*(v43 + 8))(v10, v27);
    LOBYTE(v25) = sub_26EF3A3DC();
    sub_26EF3962C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_26EE14D98(v13, v17, &qword_2806C96A8, &qword_26EF43608);
    v36 = &v17[*(v14 + 36)];
    *v36 = v25;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    sub_26EE14D98(v17, v19, &qword_2806C9698, &qword_26EF43600);
    v37 = v40;
    sub_26EE14D98(v19, v40, &qword_2806C9698, &qword_26EF43600);
    return (*(v45 + 56))(v37, 0, 1, v14);
  }

  else
  {
    v39 = *(v45 + 56);

    return v39(a1, 1, 1, v14);
  }
}

void sub_26EEFB1B8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3872C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v45[1] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v45 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v51 = v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v48 = v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = v45 - v16;
  MEMORY[0x28223BE20](v15);
  v46 = v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9990, &qword_26EF43A78);
  MEMORY[0x28223BE20](v18 - 8);
  v47 = v45 - v19;
  v20 = sub_26EF39DDC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  v24 = *a2;
  if (*(a2 + 8) == 1)
  {
    v25 = v24;
  }

  else
  {

    sub_26EF3B46C();
    v26 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v24, 0);
    (*(v21 + 8))(v23, v20);
    v25 = v54;
  }

  VoiceBankingSession.sampleState.getter(&v54);

  LOBYTE(v52) = 3;
  if (static SampleState.== infix(_:_:)(&v54, &v52))
  {
    v27 = v46;
    sub_26EF386DC();
    type metadata accessor for SoundCheckView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
    v28 = v49;
    sub_26EF3AAFC();
    (*(v5 + 16))(v51, v28, v4);
    sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
    v29 = v48;
    sub_26EF3B64C();
    if (sub_26EF3B65C())
    {
      v30 = *(v5 + 8);
      v30(v29, v4);
      v30(v27, v4);
      v31 = 1;
      v32 = v47;
    }

    else
    {
      sub_26EF3B66C();
      (*(v5 + 8))(v27, v4);
      v32 = v47;
      (*(v5 + 32))(v47, v29, v4);
      v31 = 0;
    }

    (*(v5 + 56))(v32, v31, 1, v4);
    sub_26EE14578(v32, &qword_2806C9990, &qword_26EF43A78);
  }

  else
  {
    sub_26EF386DC();
    type metadata accessor for SoundCheckView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
    sub_26EF3AAFC();
    v33 = v51;
    sub_26EEFBB5C(v51, v10);
    v34 = *(v5 + 8);
    v34(v10, v4);
    v34(v33, v4);
  }

  sub_26EF3AB0C();
  if (sub_26EE82F00())
  {
    LOBYTE(v54) = v50;
    LOBYTE(v52) = 4;
    if (static SampleState.== infix(_:_:)(&v54, &v52))
    {
      if (!*(a2 + 16))
      {
        type metadata accessor for VoiceBankingNavigationModel(0);
        sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
        sub_26EF39BFC();
        __break(1u);
        return;
      }

      v35 = VoiceBankingNavigationModel.itemPath.getter();

      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v35 + 16 + 16 * v36;
        v38 = *v37;
        v39 = *(v37 + 8);

        v54 = v38;
        v55 = v39;
        v56 = 0;
        v52 = 5;
        v53 = 1;
        sub_26EE98BFC(v40, v41, v42);
        if (sub_26EF3B0AC())
        {
LABEL_18:
          sub_26EE82F18();
          return;
        }
      }

      else
      {
      }

      v43 = VoiceBankingNavigationModel.itemPath.getter();

      v44 = *(v43 + 16);

      if (v44)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_26EEFB858(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9980, &unk_26EF43A50);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_26EF3930C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D706C0];
  v25 = sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0], MEMORY[0x277D706D0]);
  sub_26EF3B64C();
  v17 = v16;
  v18 = v28;
  sub_26EEF79D8(&qword_2806C9988, v17, MEMORY[0x277D706C8]);
  v26 = a2;
  v19 = sub_26EF3B0AC();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_26EF3B67C();
  }

  v22 = v29;
  sub_26EE14D98(v7, v29, &qword_2806C9980, &unk_26EF43A50);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_26EEFBB5C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9998, &unk_26EF43A80);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_26EF3872C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CE7670];
  v25 = sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  sub_26EF3B64C();
  v17 = v16;
  v18 = v28;
  sub_26EEF79D8(&qword_2806C99A0, v17, MEMORY[0x277CE7678]);
  v26 = a2;
  v19 = sub_26EF3B0AC();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_26EF3B67C();
  }

  v22 = v29;
  sub_26EE14D98(v7, v29, &qword_2806C9998, &unk_26EF43A80);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}