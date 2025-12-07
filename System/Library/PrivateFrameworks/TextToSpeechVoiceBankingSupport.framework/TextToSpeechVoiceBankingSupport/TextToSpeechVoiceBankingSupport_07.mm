id sub_2331C83CC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2331C8400()
{
  v1 = v0;
  v16 = sub_23328DEAC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328DE7C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_23328D80C();
  MEMORY[0x28223BE20](v6 - 8);
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask] = 0;
  v15 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue;
  v7 = sub_23311F61C();
  v14[1] = "nstalledVoiceModel: ";
  v14[2] = v7;
  sub_23328D7EC();
  v18 = MEMORY[0x277D84F90];
  sub_2331CCB20(&qword_280D3A230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_2331216CC(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v16);
  v8 = sub_23328DEDC();
  v9 = v15;
  *&v1[v15] = v8;
  v10 = &v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText];
  *v10 = 0;
  v10[1] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading] = 0;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase];
  *v11 = 0;
  v11[1] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening] = 0;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_assetSize] = 233000000;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer] = result;
    [result setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    v13 = type metadata accessor for TTSVBSpeechRecognitionService();
    v17.receiver = v1;
    v17.super_class = v13;
    return objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331C87A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v2;
  v3 = *(a1 + 40);
  *(v1 + 184) = *(a1 + 32);
  *(v1 + 192) = v3;
  return MEMORY[0x2822009F8](sub_2331C87D4, 0, 0);
}

uint64_t sub_2331C87D4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2331C8900;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2331C8A84;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2331C8900()
{

  return MEMORY[0x2822009F8](sub_2331C89E0, 0, 0);
}

uint64_t sub_2331C89E0()
{
  v1 = *(v0 + 144);
  v2 = TTSVBLocaleInfo.asrLocaleID.getter();
  v4 = sub_2331C8B14(v2, v3, v1);

  v5 = *(v0 + 8);

  return v5(v4 & 1);
}

uint64_t sub_2331C8A84(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_23328DD2C();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_2331C8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23328E61C();
  sub_23328DA3C();
  v6 = sub_23328E66C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_23328E54C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2331C8C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 224) = a2;
  *(v4 + 248) = type metadata accessor for TTSVBError.Reason(0);
  *(v4 + 256) = swift_task_alloc();
  v6 = sub_23328D67C();
  *(v4 + 264) = v6;
  *(v4 + 272) = *(v6 - 8);
  *(v4 + 280) = swift_task_alloc();
  v7 = sub_23328D63C();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v8 = sub_23328D66C();
  *(v4 + 328) = v8;
  *(v4 + 336) = *(v8 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v9 = sub_23328D6EC();
  *(v4 + 360) = v9;
  *(v4 + 368) = *(v9 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  v10 = *(a1 + 16);
  *(v4 + 400) = *a1;
  *(v4 + 416) = v10;
  v11 = *(a1 + 40);
  *(v4 + 432) = *(a1 + 32);
  *(v4 + 440) = v11;

  return MEMORY[0x2822009F8](sub_2331C8E64, 0, 0);
}

uint64_t sub_2331C8E64()
{
  v73 = v0;
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading;
  v0[56] = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading;
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];
    v0[57] = v4;

    if (v4)
    {
      v5 = v4;
      v6 = v0[49];
      v7 = v0[45];
      v8 = v0[46];
      v67 = v5;
      v65 = sub_23328D98C();
      v10 = v9;
      v0[58] = v9;
      v11 = sub_233225380();
      v0[59] = v11;
      v12 = *(v8 + 16);
      v0[60] = v12;
      v0[61] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v6, v11, v7);

      v13 = sub_23328D6CC();
      v14 = sub_23328DE4C();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = v0[54];
        v15 = v0[55];
        v62 = v0[46];
        v63 = v0[45];
        v64 = v0[49];
        v59 = *(v0 + 26);
        v60 = *(v0 + 25);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v68 = v18;
        *v17 = 136315394;
        v69 = v60;
        v70 = v59;
        v71 = v16;
        v72 = v15;
        v19 = TTSVBLocaleInfo.asrLocaleID.getter();
        v21 = sub_23311A8F4(v19, v20, &v68);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_23311A8F4(v65, v10, &v68);
        _os_log_impl(&dword_233109000, v13, v14, "Attempting to download speech recognition asset (%s from clientID %s if necessary.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v18, -1, -1);
        MEMORY[0x23839CFD0](v17, -1, -1);

        (*(v62 + 8))(v64, v63);
      }

      else
      {
        v24 = v0[49];
        v25 = v0[45];
        v26 = v0[46];

        (*(v26 + 8))(v24, v25);
      }

      v28 = v0[54];
      v27 = v0[55];
      v29 = v0[44];
      v30 = v0[41];
      v31 = v0[42];
      v32 = *(v0 + 25);
      v33 = *(v0 + 26);
      *(v1 + v2) = 1;
      v69 = v32;
      v70 = v33;
      v71 = v28;
      v72 = v27;
      TTSVBLocaleInfo.asrLocaleID.getter();
      v34 = objc_allocWithZone(MEMORY[0x277CDCE88]);
      v35 = sub_23328D95C();

      v66 = [v34 initWithLanguage:v35 assetType:3];
      v0[62] = v66;

      v36 = sub_233288BAC();
      v0[63] = v36;
      v37 = *(v31 + 16);
      v0[64] = v37;
      v0[65] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v29, v36, v30);
      v38 = sub_233288CB8();
      v0[66] = v38;
      v39 = *v38;
      v40 = *(v38 + 16);
      sub_23328D62C();
      v41 = sub_23328D64C();
      v42 = sub_23328DEFC();
      if ((sub_23328DFFC() & 1) == 0)
      {
        goto LABEL_18;
      }

      if ((v40 & 1) == 0)
      {
        if (v39)
        {
LABEL_17:
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = sub_23328D61C();
          _os_signpost_emit_with_name_impl(&dword_233109000, v41, v42, v44, v39, "", v43, 2u);
          MEMORY[0x23839CFD0](v43, -1, -1);
LABEL_18:

          v45 = v0[44];
          v47 = v0[41];
          v46 = v0[42];
          v48 = v0[40];
          v49 = v0[36];
          v50 = v0[37];
          v51 = v0[29];
          v61 = v0[28];
          (*(v50 + 16))(v0[39], v48, v49);
          sub_23328D6AC();
          swift_allocObject();
          v0[67] = sub_23328D69C();
          v52 = *(v50 + 8);
          v0[68] = v52;
          v0[69] = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v52(v48, v49);
          v53 = *(v46 + 8);
          v0[70] = v53;
          v0[71] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v53(v45, v47);
          v54 = objc_opt_self();
          v55 = swift_allocObject();
          *(v55 + 16) = v61;
          *(v55 + 24) = v51;
          v0[22] = sub_2331CCA80;
          v0[23] = v55;
          v0[18] = MEMORY[0x277D85DD0];
          v0[19] = 1107296256;
          v0[20] = sub_2331CA0E0;
          v0[21] = &block_descriptor_3;
          v56 = _Block_copy(v0 + 18);
          v0[72] = v56;

          v0[2] = v0;
          v0[7] = v0 + 24;
          v0[3] = sub_2331C9598;
          v57 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2BF8, &unk_23329A730);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = sub_2331CA134;
          v0[13] = &block_descriptor_6;
          v0[14] = v57;
          [v54 fetchAssetWithConfig:v66 clientIdentifier:v67 progress:v56 completion:?];
          v58 = v0 + 2;

          return MEMORY[0x282200938](v58);
        }

        __break(1u);
      }

      if (v39 >> 32)
      {
        __break(1u);
      }

      else if (v39 >> 16 <= 0x10 && (v39 & 0xFFFFF800) != 0xD800)
      {
        v39 = (v0 + 27);
        goto LABEL_17;
      }

      __break(1u);
      return MEMORY[0x282200938](v58);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2331C9598()
{
  v1 = *(*v0 + 48);
  *(*v0 + 584) = v1;
  if (v1)
  {

    v2 = sub_2331C9BFC;
  }

  else
  {
    v2 = sub_2331C96B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2331C96B0()
{
  v61 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 528);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 456);
  v6 = *(v0 + 344);
  v7 = *(v0 + 328);

  _Block_release(v1);

  v4(v6, v3, v7);
  v8 = *v2;
  v9 = *(v2 + 16);
  v10 = sub_23328D64C();
  sub_23328D68C();
  v11 = sub_23328DEEC();
  if ((sub_23328DFFC() & 1) == 0)
  {

    goto LABEL_16;
  }

  if (v9)
  {
    v12 = HIDWORD(v8);
    if (!HIDWORD(v8))
    {
      v12 = v8 & 0xFFFFF800;
      v13 = 55296;
      if (v12 == 55296)
      {
        __break(1u);
        goto LABEL_29;
      }

      v12 = v8 >> 16;
      if (v8 >> 16 <= 0x10)
      {
        v6 = (v0 + 208);
        if (v8 <= 0x7F)
        {
          v14 = v8 + 1;
LABEL_11:
          *(v0 + 208) = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v14) & 0x18)));

          goto LABEL_12;
        }

LABEL_25:
        v13 = (v8 & 0x3F) << 8;
        if (v8 < 0x800)
        {
          v46 = (v8 >> 6) + v13;
          v47 = 33217;
LABEL_27:
          v14 = v46 + v47;
          goto LABEL_11;
        }

LABEL_29:
        v48 = (v13 | (v8 >> 6) & 0x3F) << 8;
        if (!v12)
        {
          v14 = (v8 >> 12) + v48 + 8487393;
          goto LABEL_11;
        }

        v46 = (v8 >> 18) + ((v48 | (v8 >> 12) & 0x3F) << 8);
        v47 = -2122219023;
        goto LABEL_27;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = v8;
LABEL_12:
  v15 = *(v0 + 272);
  v16 = *(v0 + 280);
  v17 = *(v0 + 264);

  sub_23328D6BC();

  if ((*(v15 + 88))(v16, v17) == *MEMORY[0x277D85B00])
  {
    v18 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    v18 = "";
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_23328D61C();
  _os_signpost_emit_with_name_impl(&dword_233109000, v10, v11, v20, v6, v18, v19, 2u);
  MEMORY[0x23839CFD0](v19, -1, -1);
LABEL_16:
  v21 = v10;
  v50 = *(v0 + 560);
  v22 = *(v0 + 544);
  v51 = *(v0 + 480);
  v49 = *(v0 + 472);
  v23 = *(v0 + 384);
  v24 = *(v0 + 360);
  v25 = *(v0 + 344);
  v26 = *(v0 + 328);
  v27 = *(v0 + 304);
  v28 = *(v0 + 288);

  v22(v27, v28);
  v50(v25, v26);
  v51(v23, v49, v24);

  v29 = sub_23328D6CC();
  v30 = sub_23328DE4C();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 496);
  if (v31)
  {
    v34 = *(v0 + 432);
    v33 = *(v0 + 440);
    v35 = *(v0 + 368);
    v54 = *(v0 + 360);
    v55 = *(v0 + 384);
    v52 = *(v0 + 416);
    v53 = *(v0 + 400);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56 = v37;
    *v36 = 136315138;
    v58 = v52;
    v57 = v53;
    v59 = v34;
    v60 = v33;
    v38 = TTSVBLocaleInfo.asrLocaleID.getter();
    v40 = sub_23311A8F4(v38, v39, &v56);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_233109000, v29, v30, "Speech recognition asset (%s downloaded successfully.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23839CFD0](v37, -1, -1);
    MEMORY[0x23839CFD0](v36, -1, -1);

    (*(v35 + 8))(v55, v54);
  }

  else
  {
    v41 = *(v0 + 384);
    v42 = *(v0 + 360);
    v43 = *(v0 + 368);

    (*(v43 + 8))(v41, v42);
  }

  *(*(v0 + 240) + *(v0 + 448)) = 0;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_2331C9BFC(uint64_t a1)
{
  v36 = v1;
  v2 = *(v1 + 576);
  v3 = *(v1 + 496);
  v4 = *(v1 + 472);
  v28 = *(v1 + 480);
  v5 = *(v1 + 456);
  v6 = *(v1 + 376);
  v7 = *(v1 + 360);
  swift_willThrow();

  _Block_release(v2);

  v28(v6, v4, v7);

  v8 = sub_23328D6CC();
  v9 = sub_23328DE4C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v1 + 432);
    v10 = *(v1 + 440);
    v13 = *(v1 + 368);
    v12 = *(v1 + 376);
    v14 = *(v1 + 360);
    v29 = *(v1 + 416);
    v30 = *(v1 + 400);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v32 = v30;
    v33 = v29;
    v34 = v11;
    v35 = v10;
    v17 = TTSVBLocaleInfo.asrLocaleID.getter();
    v19 = sub_23311A8F4(v17, v18, &v31);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_233109000, v8, v9, "Speech recognition asset (%s failed to download.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23839CFD0](v16, -1, -1);
    MEMORY[0x23839CFD0](v15, -1, -1);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v21 = *(v1 + 368);
    v20 = *(v1 + 376);
    v22 = *(v1 + 360);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v1 + 584);
  v24 = *(v1 + 256);
  *(*(v1 + 240) + *(v1 + 448)) = 0;
  v32 = xmmword_23329A700;
  LOBYTE(v33) = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TTSVBError(0);
  sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  swift_allocError();
  TTSVBError.init(_:_:_:)(&v32, v24, 0, v25);
  swift_willThrow();

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_2331C9F60(uint64_t a1, void (*a2)(uint64_t, double))
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v6);
  v9 = sub_233225380();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_23328D6CC();
  v11 = sub_23328DE4C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_233109000, v10, v11, "Speech recognition asset download progress %ld", v12, 0xCu);
    MEMORY[0x23839CFD0](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2331CA0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2331CA134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23328D98C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

id sub_2331CA208(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v40 = v5;
  v41 = v4;
  v7 = a1[4];
  v6 = a1[5];
  v38 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer;
  v8 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer);
  if (!v8)
  {
    goto LABEL_8;
  }

  v36 = v8;
  v37 = v6;
  v9 = [v36 locale];
  v10 = sub_23328CF0C();
  v35[1] = v35;
  v11 = v3;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v2;
  v15 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CEFC();

  v16 = sub_23328CEAC();
  v18 = v17;
  v19 = v15;
  v2 = v14;
  v20 = v41;
  (*(v12 + 8))(v19, v10);
  v3 = v11;
  v44 = v11;
  v45 = v2;
  v46 = v20;
  v47 = v40;
  v6 = v37;
  v48 = v7;
  v49 = v37;
  if (v16 == TTSVBLocaleInfo.asrLocaleID.getter() && v18 == v21)
  {

    return v36;
  }

  v23 = sub_23328E54C();

  if (v23)
  {
    return v36;
  }

  v5 = v40;
LABEL_8:
  v35[0] = v2;
  v24 = sub_23328CF0C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v3;
  v45 = v2;
  v46 = v41;
  v47 = v5;
  v48 = v7;
  v49 = v6;
  TTSVBLocaleInfo.asrLocaleID.getter();
  sub_23328CE9C();
  v28 = objc_allocWithZone(MEMORY[0x277CDCF00]);
  v29 = sub_23328CEDC();
  v30 = [v28 initWithLocale_];

  (*(v25 + 8))(v27, v24);
  if (v30)
  {
    v31 = *(v39 + v38);
    *(v39 + v38) = v30;
    v32 = v30;

    return v32;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_23328E24C();
    v42 = v44;
    v43 = v45;
    MEMORY[0x23839B7E0](0xD00000000000003BLL, 0x80000002332A98B0);
    v44 = v3;
    v45 = v35[0];
    v46 = v41;
    v47 = v40;
    v48 = v7;
    v49 = v6;
    v34 = TTSVBLocaleInfo.asrLocaleID.getter();
    MEMORY[0x23839B7E0](v34);

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2331CA5B8(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v28 = sub_23328D7CC();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23328D80C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[1];
  v38 = *a3;
  v39 = v12;
  v40 = a3[2];
  v13 = *a4;
  v14 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v13;
  v36 = sub_2331CCA98;
  v37 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2331221F8;
  v35 = &block_descriptor_16;
  v17 = _Block_copy(&aBlock);

  [v14 afterDelay:v17 processBlock:5.0];
  _Block_release(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v13;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  v19 = v39;
  *(v18 + 48) = v38;
  *(v18 + 64) = v19;
  *(v18 + 80) = v40;
  v36 = sub_2331CCAB0;
  v37 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2331221F8;
  v35 = &block_descriptor_22_0;
  v20 = _Block_copy(&aBlock);

  v21 = v4;
  sub_2331CCAC4(&v38, v31);
  sub_23328D7DC();
  v31[0] = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v22 = v26;
  v23 = v28;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v22, v20);
  _Block_release(v20);
  (*(v30 + 8))(v22, v23);
  (*(v27 + 8))(v11, v29);
}

void sub_2331CA9DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((*MEMORY[0x277D85000] & *Strong) + 0x110))();
    v17 = v16;

    if (v15)
    {
      ObjectType = swift_getObjectType();
      v22 = a4 & 1;
      v20 = xmmword_23329A700;
      v21 = 3;
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&v20, v9, 0, v12);
      v19 = type metadata accessor for TTSVBError(0);
      (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
      (*(v17 + 16))(a2, a3, 0, 0, &v22, v12, ObjectType, v17);
      swift_unknownObjectRelease();
      sub_2331CD200(v12);
    }
  }
}

void sub_2331CAC0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = sub_23328D6EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening) = 0;
  v14 = (a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
  *v14 = 0;
  v14[1] = 0;

  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment) = a2 & 1;
  v15 = (a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase);
  *v15 = a3;
  v15[1] = a4;

  v16 = sub_2331CD400();
  v17 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest;
  v18 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest);
  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest) = v16;

  v19 = sub_233225314();
  (*(v11 + 16))(v13, v19, v10);
  sub_2331CCAC4(a5, &v41);
  v20 = sub_23328D6CC();
  v21 = sub_23328DE4C();
  sub_2331CD5F4(a5);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v17;
    v40 = v24;
    v25 = v24;
    *v23 = 136315138;
    v26 = a5[1];
    v41 = *a5;
    v42 = v26;
    v43 = a5[2];
    v27 = TTSVBLocaleInfo.asrLocaleID.getter();
    v29 = sub_23311A8F4(v27, v28, &v40);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_233109000, v20, v21, "Creating ASR task with localeID: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v30 = v25;
    v17 = v39;
    MEMORY[0x23839CFD0](v30, -1, -1);
    MEMORY[0x23839CFD0](v23, -1, -1);

    (*(v11 + 8))(v13, v38);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v31 = *(a1 + v17);
  if (v31)
  {
    v32 = a5[1];
    v41 = *a5;
    v42 = v32;
    v43 = a5[2];
    v33 = v31;
    v34 = sub_2331CA208(&v41);
    v35 = [v34 recognitionTaskWithRequest:v33 delegate:a1];

    v36 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask);
    *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask) = v35;
  }
}

uint64_t sub_2331CAEF8(void *a1)
{
  v3 = sub_23328D7CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D80C();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_2331CCB68;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_28_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_23328D7DC();
  v17 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_2331CB1BC(char a1)
{
  v3 = sub_23328D7CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D80C();
  v7 = *(v16 - 8);
  v8 = MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer] cancel];
  v15[1] = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2331CCB84;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_34_0;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  sub_23328D7DC();
  v17 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v10, v16);
}

void sub_2331CB498()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_2331CCC4C;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2331221F8;
  v4[3] = &block_descriptor_38;
  v3 = _Block_copy(v4);

  [v1 afterDelay:v3 processBlock:1.0];
  _Block_release(v3);
}

char *sub_2331CB580(uint64_t a1)
{
  v2 = sub_23328D7CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D80C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *&result[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
    v16 = v6;
    v12 = result;
    v15 = v11;

    aBlock[4] = sub_2331CD268;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_87;
    v13 = _Block_copy(aBlock);

    sub_23328D7DC();
    v17 = MEMORY[0x277D84F90];
    sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    v14 = v15;
    MEMORY[0x23839BC20](0, v9, v5, v13);
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v16);
  }

  return result;
}

uint64_t sub_2331CB984(void *a1, void *a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_2331CCC54;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_44;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  v16 = v2;
  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

id sub_2331CBC54(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23328D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = [a1 error];
  v15 = sub_233225380();
  v16 = *(v7 + 16);
  v17 = &unk_2789C4000;
  if (v14)
  {
    v16(v13, v15, v6);
    v18 = v14;
    v19 = sub_23328D6CC();
    v20 = sub_23328DE3C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = a3;
      v50 = v22;
      v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_23311A8F4(0xD00000000000002ELL, 0x80000002332A9920, &v50);
      *(v21 + 12) = 2080;
      v23 = sub_23328CA6C();
      v48 = v6;
      v24 = v23;
      v25 = [v23 debugDescription];

      v26 = sub_23328D98C();
      v27 = a2;
      v29 = v28;

      v30 = sub_23311A8F4(v26, v29, &v50);
      a2 = v27;

      *(v21 + 14) = v30;
      v17 = &unk_2789C4000;
      _os_log_impl(&dword_233109000, v19, v20, "%s. Error occurre=%s", v21, 0x16u);
      v31 = v47;
      swift_arrayDestroy();
      a3 = v49;
      MEMORY[0x23839CFD0](v31, -1, -1);
      MEMORY[0x23839CFD0](v21, -1, -1);

      (*(v7 + 8))(v13, v48);
      goto LABEL_10;
    }

    v38 = *(v7 + 8);
    v39 = v13;
  }

  else
  {
    v16(v9, v15, v6);
    v32 = a2;
    v33 = sub_23328D6CC();
    v34 = sub_23328DE1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_23311A8F4(0xD00000000000002ELL, 0x80000002332A9920, &v50);
      *(v35 + 12) = 1024;
      *(v35 + 14) = [v32 isFinal];

      _os_log_impl(&dword_233109000, v33, v34, "%s. IsFinal=%{BOOL}d", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v37 = v36;
      v17 = &unk_2789C4000;
      MEMORY[0x23839CFD0](v37, -1, -1);
      MEMORY[0x23839CFD0](v35, -1, -1);
    }

    else
    {
    }

    v38 = *(v7 + 8);
    v39 = v9;
  }

  v38(v39, v6);
LABEL_10:
  result = [a2 v17[471]];
  if (result)
  {
    v41 = [a2 bestTranscription];
    v42 = [v41 formattedString];

    v43 = sub_23328D98C();
    v45 = v44;

    v46 = (a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
    *v46 = v43;
    v46[1] = v45;
  }

  return result;
}

uint64_t sub_2331CC124(void *a1, char a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v2;
  aBlock[4] = sub_2331CCC60;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_50;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v2;
  sub_23328D7DC();
  v19 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_2331CC3F4(void *a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50[-v7];
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50[-v15];
  v17 = [a1 error];
  v18 = sub_233225380();
  v19 = *(v10 + 16);
  if (v17)
  {
    v19(v16, v18, v9);
    v20 = v17;
    v21 = sub_23328D6CC();
    v22 = sub_23328DE3C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v23 = 136315650;
      *(v23 + 4) = sub_23311A8F4(0xD00000000000002FLL, 0x80000002332A98F0, &v54);
      *(v23 + 12) = 1024;
      *(v23 + 14) = a2 & 1;
      *(v23 + 18) = 2080;
      v24 = sub_23328CA6C();
      v25 = [v24 debugDescription];
      v51 = v22;
      v26 = v25;

      v27 = sub_23328D98C();
      v52 = v9;
      v28 = v8;
      v30 = v29;

      v31 = sub_23311A8F4(v27, v30, &v54);
      v8 = v28;

      *(v23 + 20) = v31;
      _os_log_impl(&dword_233109000, v21, v51, "%s. successfully=%{BOOL}d. Error occurred=%s", v23, 0x1Cu);
      v32 = v53;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v32, -1, -1);
      MEMORY[0x23839CFD0](v23, -1, -1);

      v33 = (*(v10 + 8))(v16, v52);
      goto LABEL_9;
    }

    v38 = *(v10 + 8);
    v39 = v16;
  }

  else
  {
    v19(v12, v18, v9);
    v34 = sub_23328D6CC();
    v35 = sub_23328DE1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_23311A8F4(0xD00000000000002FLL, 0x80000002332A98F0, &v54);
      *(v36 + 12) = 1024;
      *(v36 + 14) = a2 & 1;
      _os_log_impl(&dword_233109000, v34, v35, "%s. successfully=%{BOOL}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23839CFD0](v37, -1, -1);
      MEMORY[0x23839CFD0](v36, -1, -1);
    }

    v38 = *(v10 + 8);
    v39 = v12;
  }

  v33 = v38(v39, v9);
LABEL_9:
  result = (*((*MEMORY[0x277D85000] & *a3) + 0x110))(v33);
  if (result)
  {
    v42 = v41;
    ObjectType = swift_getObjectType();
    v45 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase);
    v44 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase + 8);
    v47 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
    v46 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText + 8);
    LOBYTE(v54) = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment);
    v48 = type metadata accessor for TTSVBError(0);
    (*(*(v48 - 8) + 56))(v8, 1, 1, v48);
    v49 = *(v42 + 16);

    v49(v45, v44, v47, v46, &v54, v8, ObjectType, v42);
    swift_unknownObjectRelease();

    return sub_2331CD200(v8);
  }

  return result;
}

id TTSVBSpeechRecognitionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBSpeechRecognitionService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331CCB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2331CCB84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x118))(0, 0);
  }

  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest;
  [*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest) endAudio];
  v4 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask;
  [*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask) finish];
  v5 = *(v2 + v3);
  *(v2 + v3) = 0;

  v6 = *(v2 + v4);
  *(v2 + v4) = 0;
}

uint64_t dispatch thunk of TTSVBSpeechRecognitionService.speechRecognitionAssetExists(localeInfo:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x170);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2331CCEC4;

  return v7(a1);
}

uint64_t sub_2331CCEC4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of TTSVBSpeechRecognitionService.downloadSpeechRecognitionAsset(localeInfo:downloadProgress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x178);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_233126374;

  return v11(a1, a2, a3);
}

uint64_t sub_2331CD200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2331CD268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening];

    if ((v1 & 1) == 0)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening] = 1;
      }

      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      v4 = MEMORY[0x277D85000];
      if (v3)
      {
        v5 = v3;
        v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x110))();
        v8 = v7;

        if (v6)
        {
          ObjectType = swift_getObjectType();
          (*(v8 + 8))(ObjectType, v8);
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        (*((*v4 & *v10) + 0x1B0))(1);
      }
    }
  }
}

id sub_2331CD400()
{
  v0 = sub_23328D6EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CDCEC0]) init];
  [v4 setDetectMultipleUtterances_];
  [v4 setShouldReportPartialResults_];
  v5 = *sub_233165CA0();
  v6 = NSUserDefaults.ttsvb_internalUseServerBasedASR.getter();

  if (v6)
  {
    v7 = sub_233225314();
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_23328D6CC();
    v9 = sub_23328DE4C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_233109000, v8, v9, "Internal UseServerBasedASR=true. Setting requiresOnDeviceRecognition=false", v10, 2u);
      MEMORY[0x23839CFD0](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    [v4 setRequiresOnDeviceRecognition_];
  }

  else
  {
    [v4 setRequiresOnDeviceRecognition_];
  }

  return v4;
}

id sub_2331CD6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23328CC9C();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = objc_allocWithZone(MEMORY[0x277CB8398]);
  result = sub_2331D1684(v8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t static TTSVBAudioTools.convertAudioFileAtURL(_:audioOverrides:saveTo:filename:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 1);
  result = sub_2331D17D0(a1);
  if (!v6)
  {
    v15 = result;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v19 = a4;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233297620;
    *(inited + 32) = v15;
    v17 = v15;
    v18 = [v17 format];
    v20[0] = v11;
    v20[1] = v12;
    v21 = v13;
    static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(inited, v18, v20, a3, v19, a5, a6);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, int64_t a7@<X8>)
{
  *&v196 = a6;
  v193 = a5;
  v200 = a4;
  v209[1] = *MEMORY[0x277D85DE8];
  v190 = sub_23328D6EC();
  v11 = *(v190 - 1);
  MEMORY[0x28223BE20](v190);
  v186 = v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v177 - v14;
  v16 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = (v177 - v18);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v25 = v177 - v24;
  LODWORD(v26) = *a3;
  v27 = a3[1];
  v28 = *(a3 + 1);
  if (a1 >> 62)
  {
    goto LABEL_70;
  }

  v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    while (1)
    {
      LODWORD(v189) = v27;
      LODWORD(v181) = v26;
      v187 = v23;
      v185 = v11;
      v191 = v29;
      v184 = v22;
      v178 = v25;
      v197 = v16;
      v182 = v28;
      if (v28)
      {
        v30 = v28;
        v31 = v28;
      }

      else
      {
        v31 = a2;
        v30 = 0;
      }

      v188 = v19;
      v192 = a1;
      v177[2] = a7;
      sub_233144EEC(0, &qword_27DDE2C68, 0x277CB83A8);
      v32 = v30;
      v33 = sub_23328DFDC();
      v198 = v31;
      if (v33)
      {
        v34 = sub_233225380();
        v35 = v185;
        v36 = v190;
        (v185)[2](v15, v34, v190);
        v37 = a2;
        v38 = sub_23328D6CC();
        v39 = sub_23328DE4C();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&aBlock = v41;
          *v40 = 136315138;
          sub_2332159F8();
          v44 = sub_23311A8F4(v42, v43, &aBlock);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_233109000, v38, v39, "'fromFormat' same as 'targetFormat'. Will not create AVAudioConverter because conversion not required. Fmt=%s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23839CFD0](v41, -1, -1);
          MEMORY[0x23839CFD0](v40, -1, -1);
        }

        (v35[1])(v15, v36);
        v45 = 0;
      }

      else
      {
        v45 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:a2 toFormat:v31];
        if (!v45)
        {
          aBlock = xmmword_23329A7B0;
          LOBYTE(v207) = 3;
          v61 = v178;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v61, 0, v62);
          swift_willThrow();

          return;
        }
      }

      v195 = v45;
      v46 = sub_23328CC9C();
      v183 = v177;
      v47 = *(v46 - 8);
      MEMORY[0x28223BE20](v46);
      v49 = v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      v194 = v48;
      MEMORY[0x28223BE20](v50);
      v52 = v177 - v51;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      MEMORY[0x28223BE20](v53 - 8);
      v55 = v177 - v54;
      sub_233121D34(v200, v177 - v54, &qword_27DDE19A0, &unk_233290360);
      if ((*(v47 + 48))(v55, 1, v46) == 1)
      {
        v180 = v47;
        sub_233121E04(v55, &qword_27DDE19A0, &unk_233290360);
        v56 = NSTemporaryDirectory();
        sub_23328D98C();

        sub_23328CB7C();

        v179 = v49;
      }

      else
      {
        v57 = *(v47 + 32);
        v57(v52, v55, v46);
        *&v203 = *sub_2331DEBE8();
        aBlock = xmmword_23329A7B0;
        LOBYTE(v207) = 3;
        v58 = v203;
        v59 = sub_233126E60();
        v60 = v199;
        _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v52, 0, v59 & 1, &aBlock);
        v199 = v60;
        if (v60)
        {

          (*(v47 + 8))(v52, v46);
          return;
        }

        v180 = v47;

        v179 = v49;
        v57(v49, v52, v46);
      }

      v63 = v194;
      v64 = v196;
      if (v196)
      {
        v65 = v196;
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x23839B7E0](0x6E6964726F636552, 0xEA00000000005F67);
        v66 = sub_23328CE1C();
        v67 = *(v66 - 8);
        MEMORY[0x28223BE20](v66);
        v69 = v177 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CE0C();
        sub_23328CCFC();
        (*(v67 + 8))(v69, v66);
        sub_23328DCDC();
        v64 = v196;
        v65 = *(&aBlock + 1);
      }

      v177[3] = v65;
      v193 = v177;
      MEMORY[0x28223BE20](v64);
      *&aBlock = v70;
      *(&aBlock + 1) = v65;

      MEMORY[0x23839B7E0](46, 0xE100000000000000);
      v71 = aBlock;
      v72 = v181;
      LOBYTE(aBlock) = v181;
      v73 = v189;
      BYTE1(aBlock) = v189;
      v74 = v182;
      *(&aBlock + 1) = v182;
      v75 = TTSVBAudioDescriptor.fileExtension.getter();
      v77 = v76;
      v203 = v71;

      MEMORY[0x23839B7E0](v75, v77);
      v78 = v177 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);

      v79 = v179;
      sub_23328CBEC();

      LOBYTE(aBlock) = v72;
      BYTE1(aBlock) = v73;
      *(&aBlock + 1) = v74;
      v80 = v198;
      v81 = TTSVBAudioDescriptor.audioFileSettings(withFormat:)(v198);
      MEMORY[0x28223BE20](v81);
      v177[-4] = v78;
      v177[-3] = v82;
      v200 = v82;
      v177[-2] = v80;
      v196 = xmmword_23329A7B0;
      aBlock = xmmword_23329A7B0;
      LOBYTE(v207) = 3;
      v83 = v180;
      v84 = v187;
      (*(v180 + 16))(v187, v78, v46);
      swift_storeEnumTagMultiPayload();
      sub_233144EEC(0, &qword_27DDE2C70, 0x277CB8398);
      v85 = v199;
      static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D1C10, &v177[-6], &aBlock, v84);
      if (v85)
      {

        sub_2331D1EE4(v84, type metadata accessor for TTSVBError.Reason);
        v86 = *(v83 + 8);
        v86(v79, v46);
        v86(v78, v46);
        return;
      }

      v189 = v46;
      v199 = 0;
      sub_2331D1EE4(v84, type metadata accessor for TTSVBError.Reason);
      v209[0] = v203;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      v87 = v203;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332A9950);
      v187 = v78;
      v88 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v88);

      MEMORY[0x23839B7E0](0x46656C694620200ALL, 0xED00005B203A746DLL);
      v89 = [v87 fileFormat];

      sub_2332159F8();
      v91 = v90;
      v93 = v92;

      MEMORY[0x23839B7E0](v91, v93);

      MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A9990);
      v94 = [v87 processingFormat];

      sub_2332159F8();
      v96 = v95;
      v98 = v97;

      MEMORY[0x23839B7E0](v96, v98);

      MEMORY[0x23839B7E0](93, 0xE100000000000000);
      v201 = aBlock;
      a1 = v200 + 64;
      v99 = 1 << *(v200 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      a2 = v100 & *(v200 + 64);
      a7 = (v99 + 63) >> 6;

      v101 = 0;
      v25 = MEMORY[0x277D84698];
      v16 = MEMORY[0x277D846A8];
      v19 = &v203;
      if (a2)
      {
        break;
      }

LABEL_26:
      if (a7 <= (v101 + 1))
      {
        v26 = (v101 + 1);
      }

      else
      {
        v26 = a7;
      }

      v15 = (v26 - 1);
      while (1)
      {
        v11 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v11 >= a7)
        {
          a2 = 0;
          v204 = 0u;
          v205 = 0u;
          v203 = 0u;
          goto LABEL_34;
        }

        a2 = *(a1 + 8 * v11);
        ++v101;
        if (a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v184 = v22;
      v187 = v23;
      v175 = v26;
      LODWORD(v189) = v27;
      v182 = v28;
      v29 = sub_23328E19C();
      v28 = v182;
      v27 = v189;
      LODWORD(v26) = v175;
      v23 = v187;
      v22 = v184;
      if (!v29)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v11 = v101;
LABEL_33:
      v102 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v103 = v102 | (v11 << 6);
      v104 = (*(v200 + 48) + 16 * v103);
      v106 = *v104;
      v105 = v104[1];
      sub_23311B0C0(*(v200 + 56) + 32 * v103, &v202);
      *&v203 = v106;
      *(&v203 + 1) = v105;
      sub_233145134(&v202, &v204);

      v15 = v11;
LABEL_34:
      aBlock = v203;
      v207 = v204;
      v208 = v205;
      v11 = *(&v203 + 1);
      if (!*(&v203 + 1))
      {
        break;
      }

      v107 = aBlock;
      sub_233145134(&v207, &v203);
      *&v202 = 0;
      *(&v202 + 1) = 0xE000000000000000;
      MEMORY[0x23839B7E0](2105354, 0xE300000000000000);
      MEMORY[0x23839B7E0](v107, v11);

      MEMORY[0x23839B7E0](8250, 0xE200000000000000);
      sub_23328E30C();
      MEMORY[0x23839B7E0](v202, *(&v202 + 1));

      __swift_destroy_boxed_opaque_existential_0(&v203);
      v101 = v15;
      v19 = &v203;
      if (!a2)
      {
        goto LABEL_26;
      }
    }

    v108 = sub_233225380();
    v109 = v185;
    v110 = v186;
    v111 = v190;
    (v185)[2](v186, v108, v190);
    v112 = v201;

    v113 = sub_23328D6CC();
    v114 = sub_23328DE4C();

    v115 = os_log_type_enabled(v113, v114);
    v177[1] = *(&v112 + 1);
    if (v115)
    {
      v11 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&aBlock = v116;
      *v11 = 136315138;

      v117 = sub_23311A8F4(v112, *(&v112 + 1), &aBlock);

      *(v11 + 4) = v117;
      _os_log_impl(&dword_233109000, v113, v114, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x23839CFD0](v116, -1, -1);
      MEMORY[0x23839CFD0](v11, -1, -1);
    }

    v118 = v109[1];
    v15 = (v109 + 1);
    v118(v110, v111);
    a2 = v199;
    a1 = v198;
    v119 = v192;
    v19 = v193;
    v120 = v195;
    v16 = 0;
    v186 = (v192 & 0xC000000000000001);
    v181 = v192 & 0xFFFFFFFFFFFFFF8;
    v182 = &v207;
    v185 = (v180 + 32);
    do
    {
      if (v186)
      {
        v121 = MEMORY[0x23839BFC0](v16);
      }

      else
      {
        if (v16 >= *(v181 + 16))
        {
          goto LABEL_75;
        }

        v121 = *(v119 + 8 * v16 + 32);
      }

      v25 = v121;
      a7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_69;
      }

      if (v120)
      {
        v122 = v120;
        v123 = [v122 inputFormat];
        [v123 sampleRate];
        v125 = v124;

        v199 = v122;
        v126 = [v122 outputFormat];
        [v126 sampleRate];
        v128 = v127;

        v129 = [v25 frameCapacity] / (v125 / v128);
        if (COERCE__INT64(fabs(v129)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
        }

        if (v129 <= -1.0)
        {
          goto LABEL_73;
        }

        if (v129 >= 4294967300.0)
        {
          goto LABEL_74;
        }

        v130 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:a1 frameCapacity:v129];
        if (!v130)
        {

          v151 = v199;

          aBlock = v196;
          LOBYTE(v207) = 3;
          v152 = v178;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v152, 0, v153);
          swift_willThrow();

          v154 = *(v180 + 8);
          v155 = v189;
          v154(v179, v189);

          v154(v187, v155);
          return;
        }

        v131 = v130;
        v132 = a2;
        v133 = swift_allocObject();
        *(v133 + 16) = v25;
        *&v208 = sub_2331D1D18;
        *(&v208 + 1) = v133;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v207 = sub_2331CF3FC;
        *(&v207 + 1) = &block_descriptor_4;
        v134 = _Block_copy(&aBlock);
        v135 = v25;

        *&aBlock = 0;
        v136 = [v199 convertToBuffer:v131 error:&aBlock withInputFromBlock:v134];
        _Block_release(v134);
        v138 = aBlock;
        if (aBlock)
        {
          v156 = v131;
          v157 = aBlock;

          v158 = v199;

          aBlock = v196;
          LOBYTE(v207) = 3;
          v159 = v135;
          v160 = v178;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          v162 = v161;
          v163 = v157;
          TTSVBError.init(_:_:_:)(&aBlock, v160, v138, v162);
          swift_willThrow();

          v164 = *(v180 + 8);
          v165 = v189;
          v164(v179, v189);

          v164(v187, v165);
          return;
        }

        if (v136)
        {

          v166 = v199;

          aBlock = v196;
          LOBYTE(v207) = 3;
          v167 = v131;
          v168 = v178;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v168, 0, v169);
          swift_willThrow();

          v170 = *(v180 + 8);
          v171 = v189;
          v170(v179, v189);
LABEL_67:

          v170(v187, v171);
          return;
        }

        v190 = v177;
        MEMORY[0x28223BE20](v137);
        v177[-2] = v209;
        v177[-1] = v131;
        aBlock = v196;
        LOBYTE(v207) = 3;
        if (!v209[0])
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v11 = v131;
        v139 = [v209[0] url];
        MEMORY[0x28223BE20](v139);
        v141 = v177 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CC4C();

        v142 = v188;
        (*v185)(v188, v141, v189);
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D1D5C, &v177[-4], &aBlock, v142);
        a2 = v132;
        if (v132)
        {

          v172 = v199;

          sub_2331D1EE4(v142, type metadata accessor for TTSVBError.Reason);
          v173 = *(v180 + 8);
          v174 = v189;
          v173(v179, v189);

          v173(v187, v174);
          return;
        }

        sub_2331D1EE4(v142, type metadata accessor for TTSVBError.Reason);

        v15 = v187;
      }

      else
      {
        *&v143 = MEMORY[0x28223BE20](v121);
        v177[-2] = v209;
        v177[-1] = v25;
        aBlock = v143;
        LOBYTE(v207) = 3;
        if (!v209[0])
        {
          goto LABEL_77;
        }

        v144 = [v209[0] url];
        MEMORY[0x28223BE20](v144);
        v11 = v177 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CC4C();

        v146 = v184;
        (*v185)(v184, v11, v189);
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2B20, &v177[-4], &aBlock, v146);
        if (a2)
        {

          sub_2331D1EE4(v146, type metadata accessor for TTSVBError.Reason);
          v170 = *(v180 + 8);
          v171 = v189;
          v170(v179, v189);

          goto LABEL_67;
        }

        sub_2331D1EE4(v146, type metadata accessor for TTSVBError.Reason);

        v15 = v187;
      }

      ++v16;
      a1 = v198;
      v119 = v192;
      v19 = v193;
      v120 = v195;
    }

    while (a7 != v191);
    v147 = v209[0];
    if (v209[0])
    {

      v148 = [v147 url];
      sub_23328CC4C();

      v149 = *(v180 + 8);
      v150 = v189;
      v149(v179, v189);

      v149(v15, v150);
      return;
    }

LABEL_78:
    __break(1u);
  }

  else
  {
LABEL_71:
    aBlock = xmmword_23329A7B0;
    LOBYTE(v207) = 3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v25, 0, v176);
    swift_willThrow();
  }
}

id sub_2331CF3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t static TTSVBAudioTools.audioDurationForAudioFileSync(_:)(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for TTSVBError(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for TTSVBError.Reason(0);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331CF5A8, 0, 0);
}

uint64_t sub_2331CF5A8()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v3 + 56);
  v0[21] = v4;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v6 = sub_23328CBCC();
  v0[23] = [v5 initWithURL:v6 options:0];

  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C78, &qword_23329A7D0);
  v7 = sub_23328CF2C();
  v0[25] = v7;
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_2331CF6E4;

  return MEMORY[0x2821FAF00](v0 + 44, v7, 0, 0);
}

uint64_t sub_2331CF6E4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2331CFB74;
  }

  else
  {
    v2 = sub_2331CF818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2331CF818()
{
  v32 = v0;
  sub_23328CF2C();
  sub_23328DF9C();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v26 = v1;
  v27 = v3;
  if (*(v0 + 40))
  {
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    if (v4 == 1)
    {
      v8 = *(v0 + 104);
      sub_2331524CC(&v28);
      v30 = v28;
      v31 = v29;
      static TTSVBError.map(_:_:)(v1, &v30, v7);
      sub_2331220AC(v30, *(&v30 + 1), v31);
      sub_233121E04(v6, &qword_27DDE1B38, &unk_2332909A0);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v12 = *(v0 + 136);
      v13 = *(v0 + 104);
      v30 = 0uLL;
      v31 = 3;
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&v30, v12, 0, v7);
      sub_233121E04(v6, &qword_27DDE1B38, &unk_2332909A0);
      v9 = v7;
      v10 = v13;
    }

    v5(v9, 0, 1, v10);
    sub_2331D1DFC(v7, v6);
    Seconds = 0.0;
  }

  else
  {
    *(v0 + 68) = v1;
    *(v0 + 76) = v2;
    *(v0 + 84) = v3;
    Seconds = CMTimeGetSeconds((v0 + 68));
  }

  v14 = *(v0 + 144);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  sub_233121D34(*(v0 + 160), v14, &qword_27DDE1B38, &unk_2332909A0);
  v17 = (*(v15 + 48))(v14, 1, v16);
  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  if (v17 == 1)
  {
    v20 = *(v0 + 144);
    sub_233121E04(v19, &qword_27DDE1B38, &unk_2332909A0);

    sub_2331D1E6C(v26, v2, v27, v4);
    sub_233121E04(v20, &qword_27DDE1B38, &unk_2332909A0);

    v21 = *(v0 + 8);
    v22.n128_f64[0] = Seconds;
  }

  else
  {
    v23 = *(v0 + 120);
    sub_2331D1E80(*(v0 + 144), v23);
    sub_23311A3F8();
    swift_allocError();
    sub_233121720(v23, v24);
    swift_willThrow();

    sub_2331D1E6C(v26, v2, v27, v4);
    sub_2331D1EE4(v23, type metadata accessor for TTSVBError);
    sub_233121E04(v19, &qword_27DDE1B38, &unk_2332909A0);

    v21 = *(v0 + 8);
  }

  return v21(v22);
}

uint64_t sub_2331CFB74()
{
  v1 = *(v0 + 160);

  sub_233121E04(v1, &qword_27DDE1B38, &unk_2332909A0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TTSVBAudioTools.RecordingAnalysis.detectedSpeech.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.detectedSpeech.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *TTSVBAudioTools.RecordingAnalysis.metrics.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.init(metrics:detectedSpeech:editDistance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = result;
  return result;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v2)
  {
    sub_23328E24C();

    MEMORY[0x23839B7E0](v1, v2);
    MEMORY[0x23839B7E0](0x6944746964452027, 0xEF3D65636E617473);
    v4 = sub_23328E51C();
    MEMORY[0x23839B7E0](v4);

    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x273D525341, 0xE500000000000000);
  }

  if (v3)
  {
    v5 = v3;
    v6 = [v5 description];
    v7 = sub_23328D98C();
    v9 = v8;

    MEMORY[0x23839B7E0](v7, v9);
  }

  return 0;
}

void static TTSVBAudioTools.analyzeRecording(atURL:detectUserSpeech:expectedText:detectMetrics:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x23839C610]();
  if ((a2 & 1) == 0)
  {
    v16 = 0;
LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v14 = sub_2331D1F44(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  v16 = v15;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = v14;
  if (a4)
  {

    String.ttsvb_normalizedForSpeechComparison.getter(a3, a4);
    to = String.ttsvb_normalizedForSpeechComparison.getter(v17, v16);
    v21 = v20;

    v22._countAndFlagsBits = to;
    v22._object = v21;
    v18 = String.ttsvb_editDistance(to:)(v22);

    if ((a5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_6:
  v18 = -1;
  if ((a5 & 1) == 0)
  {
LABEL_12:
    v23 = 0;
LABEL_14:
    *a6 = v17;
    a6[1] = v16;
    a6[2] = v18;
    a6[3] = v23;
    goto LABEL_15;
  }

LABEL_7:
  v19 = sub_2331D17D0(a1);
  if (!v6)
  {
    v24 = v19;
    v29 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_233297620;
    *(v25 + 32) = v24;
    sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
    toa = v24;
    v26 = sub_23328DBDC();

    v23 = [v29 assessAudioForBuffers_];

    goto LABEL_14;
  }

LABEL_8:

LABEL_15:
  objc_autoreleasePoolPop(v13);
}

void sub_2331D00C4(void *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C98, &unk_23329A8C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  if (!a1)
  {
    if (!a2)
    {
LABEL_33:
      __break(1u);
      return;
    }

    *&v50 = a2;
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_25:
      sub_2331524CC(&v50);
      v48 = v50;
      v49 = v51;
      static TTSVBError.map(_:_:)(a2, &v48, v10);
      sub_2331220AC(v48, *(&v48 + 1), v49);
      swift_storeEnumTagMultiPayload();
      a3(v10);
      v34 = v10;
LABEL_30:
      sub_233121E04(v34, &qword_27DDE2C90, &qword_23329A8B8);
      return;
    }

    v25 = v48;
    v26 = [v48 domain];
    v27 = sub_23328D98C();
    v29 = v28;

    if (v27 == sub_23328D98C() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_23328E54C();

      if ((v32 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v33 = [v25 code];
    if (v33 == 22 || v33 == 1110 || v33 == 203)
    {
      *v13 = 0;
      *(v13 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      a3(v13);

LABEL_29:
      v34 = v13;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v45 = a1;
  if ([v45 isFinal])
  {
    v18 = a3;
    v19 = [v45 rawTranscriptions];
    sub_233144EEC(0, &qword_27DDE2CA0, 0x277CDCF10);
    v20 = sub_23328DBFC();

    if (v20 >> 62)
    {
      v35 = sub_23328E19C();
      v43 = a4;
      v44 = v18;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = a4;
      v44 = v18;
      if (v21)
      {
LABEL_5:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x23839BFC0](0, v20);
          goto LABEL_8;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v20 + 32);
LABEL_8:
          v23 = v22;

LABEL_28:
          v36 = [v23 formattedString];
          v37 = sub_23328D98C();
          v39 = v38;

          *&v48 = v37;
          *(&v48 + 1) = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CA8, &unk_23329A8D0);
          sub_23328D31C();
          sub_2331D28F4();
          sub_2331D2948();
          sub_2331D299C();
          sub_23328DDBC();
          (*(v15 + 8))(v17, v14);

          *&v48 = 3158622;
          *(&v48 + 1) = 0xE300000000000000;
          v46 = 32;
          v47 = 0xE100000000000000;
          sub_23311A294();
          v40 = sub_23328E06C();
          v42 = v41;

          *v13 = v40;
          *(v13 + 1) = v42;
          swift_storeEnumTagMultiPayload();
          v44(v13);

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    v23 = [v45 bestTranscription];
    goto LABEL_28;
  }

  v31 = v45;
}

void sub_2331D06F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2331D0780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - v8);
  sub_233121D34(a1, &v13 - v8, &qword_27DDE2C90, &qword_23329A8B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331D1E80(v9, v6);
    v10 = type metadata accessor for TTSVBError(0);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    v11 = OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error;
    swift_beginAccess();
    sub_2331D2A00(v6, a2 + v11);
    swift_endAccess();
  }

  else
  {
    *(a2 + 16) = *v9;
  }

  return sub_23328DF4C();
}

float static TTSVBAudioTools.calculateAverageDecibelValue(buffer:)(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 frameLength];
  v3 = [a1 floatChannelData];
  v4 = [a1 format];
  v5 = [v4 channelCount];

  v6 = 0.0;
  if (v3 && v5)
  {
    v7 = 8 * v5;
    do
    {
      v8 = *v3++;
      __C = 0.0;
      vDSP_meamgv(v8, 1, &__C, v2);
      v6 = v6 + (log10f(__C) * 20.0);
      v7 -= 8;
    }

    while (v7);
  }

  v9 = [a1 format];
  v10 = [v9 channelCount];

  return v6 / v10;
}

float static TTSVBAudioTools.calculatePeakDecibelLevel(buffer:)(void *a1)
{
  v2 = [a1 floatChannelData];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = [a1 format];
  v5 = [v4 channelCount];

  v6 = [a1 frameLength];
  if (v5)
  {
    v7 = 0;
    v8 = -3.4028e38;
    do
    {
      if (v6)
      {
        v9 = v3[v7];
        v10 = v6;
        do
        {
          v11 = *v9++;
          v12 = fabsf(v11);
          if (v8 < v12)
          {
            v8 = v12;
          }

          --v10;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  else
  {
    v8 = -3.4028e38;
  }

  return log10f(v8) * 20.0;
}

uint64_t static TTSVBAudioTools.hasClippedAudio(_:)(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 floatChannelData];
  if (!v7)
  {
    v18 = sub_233225380();
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_23328D6CC();
    v20 = sub_23328DE3C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_233109000, v19, v20, "Will not calculate clipped audio. Only float format is supported", v21, 2u);
      MEMORY[0x23839CFD0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v8 = v7;
  v9 = [a1 format];
  v10 = [v9 channelCount];

  v11 = [a1 frameLength];
  if (!v10)
  {
    return 0;
  }

  v12 = 0;
  v13 = v11;
  do
  {
    v14 = v8[v12++];
    for (i = v13; i; --i)
    {
      v16 = *v14++;
      if (fabsf(v16) >= 1.0)
      {
        return 1;
      }
    }

    result = 0;
  }

  while (v12 != v10);
  return result;
}

uint64_t static TTSVBAudioTools.calculateNumberOfClippedSamples(_:)(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 floatChannelData];
  if (!v7)
  {
    v20 = sub_233225380();
    (*(v3 + 16))(v6, v20, v2);
    v21 = sub_23328D6CC();
    v22 = sub_23328DE3C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_233109000, v21, v22, "Will not calculate clipped audio. Only float format is supported", v23, 2u);
      MEMORY[0x23839CFD0](v23, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v8 = v7;
  v9 = [a1 format];
  v10 = [v9 channelCount];

  v11 = [a1 frameLength];
  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  result = 0;
  v14 = 0;
  v15 = 0;
  for (i = 0; i != v10; ++i)
  {
    if (v12)
    {
      v17 = v8[i];
      v18 = v15 + v12;
      v19 = v12;
      while (1)
      {
        if (fabsf(*v17) >= 1.0)
        {
          result = v14 + 1;
          if (v14 == -1)
          {
            __break(1u);
            return result;
          }

          ++v14;
        }

        ++v17;
        if (!--v19)
        {
          v15 = v18;
          break;
        }
      }
    }
  }

  return result;
}

char *static TTSVBAudioTools.normalizeVolume(_:maximumBoostFactor:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v63 = a1;
  if (a1 >> 62)
  {
LABEL_60:
    v12 = sub_23328E19C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 1.0;
  v14 = &unk_2789C4000;
  if (!v12)
  {
LABEL_19:
    if ((a2 & 0x100000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v62 = a2;
  v64 = v11;
  v15 = 0;
  v11 = (v63 & 0xC000000000000001);
  v16 = v63 & 0xFFFFFFFFFFFFFF8;
  a2 = v63 + 32;
  v17 = 0.0;
  do
  {
    if (v11)
    {
      v18 = MEMORY[0x23839BFC0](v15, v63, v9);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_58;
      }

      v18 = *(a2 + 8 * v15);
    }

    v19 = v18;
    v20 = __OFADD__(v15++, 1);
    if (v20)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v21 = [v18 v14[495]];
    if (v21)
    {
      v22 = v21;
      v23 = [v19 frameLength];
      if (v23)
      {
        v24 = v23;
        v25 = *v22;
        do
        {
          v26 = *v25++;
          v27 = fabsf(v26);
          if (v17 < v27)
          {
            v17 = v27;
          }

          --v24;
        }

        while (v24);
      }
    }

    v14 = &unk_2789C4000;
  }

  while (v15 != v12);
  v11 = v64;
  a2 = v62;
  if (v17 == 0.0)
  {
    goto LABEL_19;
  }

  v13 = 1.0 / v17;
  if ((v62 & 0x100000000) == 0)
  {
LABEL_20:
    if (v13 > *&a2)
    {
      v28 = sub_233225380();
      (*(v5 + 16))(v11, v28, v4);
      v29 = sub_23328D6CC();
      v30 = sub_23328DE1C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v13;
        *(v31 + 12) = 2048;
        *(v31 + 14) = *&a2;
        _os_log_impl(&dword_233109000, v29, v30, "Will clamp computed normalization boost factor %f to maximum of %f", v31, 0x16u);
        MEMORY[0x23839CFD0](v31, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
      v13 = *&a2;
    }
  }

LABEL_25:
  v32 = sub_233225380();
  (*(v5 + 16))(v7, v32, v4);
  v33 = sub_23328D6CC();
  v34 = sub_23328DE1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v13;
    _os_log_impl(&dword_233109000, v33, v34, "Will normalize buffers with a boost factor of %f", v35, 0xCu);
    MEMORY[0x23839CFD0](v35, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  if (v12)
  {
    v64 = v12;
    a2 = 0;
    v5 = v63;
    v36 = v63 & 0xC000000000000001;
    v61 = v63 + 32;
    v62 = v63 & 0xFFFFFFFFFFFFFF8;
    v4 = &unk_2789C4000;
    v37 = &unk_2789C4000;
    do
    {
      if (v36)
      {
        v38 = MEMORY[0x23839BFC0](a2, v5);
        v20 = __OFADD__(a2++, 1);
        if (v20)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (a2 >= *(v62 + 16))
        {
          goto LABEL_59;
        }

        v38 = *(v61 + 8 * a2);
        v20 = __OFADD__(a2++, 1);
        if (v20)
        {
          goto LABEL_57;
        }
      }

      v7 = v38;
      v39 = [v7 format];
      [v39 v37[487]];
      v41 = v40;

      v42 = [v7 format];
      v43 = [v42 channelCount];

      v44 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:v43 channels:0 interleaved:v41];
      if (v44)
      {
        v45 = v44;
        v46 = [v7 frameCapacity];
        v47 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v45 frameCapacity:v46];
        if (v47)
        {
          v48 = v47;
          [v47 setFrameLength_];
          v49 = [v7 v14[495]];
          if (v49)
          {
            v50 = v49;
            v51 = [v48 v14[495]];
            if (v51)
            {
              v52 = v51;
              v53 = [v7 format];

              v54 = [v53 channelCount];
              if (v54)
              {
                for (i = 0; i != v54; ++i)
                {
                  v56 = [v7 frameLength];
                  if (v56)
                  {
                    v57 = 0;
                    do
                    {
                      *(v52[i] + v57) = v13 * *(v50[i] + v57);
                      v57 += 4;
                    }

                    while (4 * v56 != v57);
                  }
                }
              }

              v58 = v48;
              MEMORY[0x23839B920]();
              v5 = v63;
              if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23328DC1C();
              }

              sub_23328DC4C();

              v11 = v65;
            }

            else
            {
            }

            v14 = &unk_2789C4000;
            v37 = &unk_2789C4000;
          }

          else
          {

            v37 = &unk_2789C4000;
          }

          continue;
        }
      }
    }

    while (a2 != v64);
  }

  return v11;
}

uint64_t sub_2331D1608()
{

  sub_233121E04(v0 + OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error, &qword_27DDE1B38, &unk_2332909A0);

  return swift_deallocClassInstance();
}

id sub_2331D1684(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23328CBCC();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_23328CC9C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_23328CA7C();

    swift_willThrow();
    v11 = sub_23328CC9C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_2331D17D0(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v35 = a1;
  v11 = sub_23328CC9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v13(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  sub_233144EEC(0, &qword_27DDE2C70, 0x277CB8398);
  sub_2331524CC(&v38);
  v36 = v38;
  v37 = v39;
  v15 = v33;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2A70, v34, &v36, v10);
  if (v15)
  {
    sub_2331220AC(v36, *(&v36 + 1), v37);
    sub_2331D1EE4(v10, type metadata accessor for TTSVBError.Reason);
    return v2;
  }

  v32 = 0;
  v33 = v7;
  v27 = v11;
  v28 = a1;
  v29 = v14;
  v30 = v13;
  v31 = v4;
  sub_2331220AC(v36, *(&v36 + 1), v37);
  sub_2331D1EE4(v10, type metadata accessor for TTSVBError.Reason);
  v16 = v40;
  v17 = [v40 processingFormat];
  result = [v16 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v17 frameCapacity:result];

    v40 = v19;
    v38 = 0uLL;
    v39 = 3;
    v20 = v33;
    swift_storeEnumTagMultiPayload();
    v21 = sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
    v22 = v32;
    static TTSVBError.unwrap<A>(_:_:_:)(&v40, &v38, v20, v21, &v36);
    if (v22)
    {

      sub_2331D1EE4(v20, type metadata accessor for TTSVBError.Reason);
    }

    else
    {
      sub_2331D1EE4(v20, type metadata accessor for TTSVBError.Reason);

      v2 = v36;
      v24 = MEMORY[0x28223BE20](v23);
      *(&v26 - 2) = v16;
      *(&v26 - 1) = v2;
      v25 = v31;
      v30(v31, v28, v27, v24);
      swift_storeEnumTagMultiPayload();
      sub_2331524CC(&v38);
      v36 = v38;
      v37 = v39;
      static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2A8C, (&v26 - 4), &v36, v25);

      sub_2331220AC(v36, *(&v36 + 1), v37);
      sub_2331D1EE4(v25, type metadata accessor for TTSVBError.Reason);
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_2331D1C10@<X0>(void *a1@<X8>)
{
  v3 = [*(v1 + 32) commonFormat];
  v4 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v5 = sub_23328CBCC();
  v6 = sub_23328D87C();
  v11 = 0;
  v7 = [v4 initForWriting:v5 settings:v6 commonFormat:v3 interleaved:0 error:&v11];

  v8 = v11;
  if (v7)
  {
    *a1 = v7;
    return v8;
  }

  else
  {
    v10 = v11;
    sub_23328CA7C();

    return swift_willThrow();
  }
}

void *sub_2331D1D18(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2331D1D74()
{
  result = **(v0 + 16);
  if (result)
  {
    v2 = *(v0 + 24);
    v4 = 0;
    if ([result writeFromBuffer:v2 error:&v4])
    {
      return v4;
    }

    else
    {
      v3 = v4;
      sub_23328CA7C();

      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331D1DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2331D1E6C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }
}

uint64_t sub_2331D1E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331D1EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D1F44(uint64_t a1)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v47 - v2;
  v3 = type metadata accessor for TTSVBError(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v50);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  MEMORY[0x28223BE20](v49);
  v9 = &v47 - v8;
  type metadata accessor for TTSVBAudioTools.Box(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v55 = OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error;
  v56 = v4;
  v11 = *(v4 + 56);
  v57 = v3;
  v11(v10 + OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error, 1, 1, v3);
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v53 = v13;
  v14 = sub_23328CF0C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v54 = v12;
  sub_23328CE9C();
  v18 = objc_allocWithZone(MEMORY[0x277CDCF00]);
  v19 = sub_23328CEDC();
  v20 = [v18 initWithLocale_];

  result = (*(v15 + 8))(v17, v14);
  v52 = v20;
  if (v20)
  {
    v22 = sub_23328CC9C();
    v23 = *(v22 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *(v23 + 16);
    v27(v26, v65, v22, v24);
    v28 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v29 = v51;
    v30 = sub_2331D1684(v26);
    if (v29)
    {
      aBlock = 0xD000000000000015;
      v60 = 0x80000002332A9A80;
      LOBYTE(v61) = 0;
      (v27)(v7, v65, v22);
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&aBlock, v7, 0, v9);
      swift_storeEnumTagMultiPayload();
      v31 = v54;
      sub_2331D0780(v9, v10);

      sub_233121E04(v9, &qword_27DDE2C90, &qword_23329A8B8);
    }

    else
    {

      v32 = objc_allocWithZone(MEMORY[0x277CDCF08]);
      v33 = sub_23328CBCC();
      v34 = [v32 initWithURL_];

      v35 = v34;
      [v35 setShouldReportPartialResults_];
      [v35 setRequiresOnDeviceRecognition_];

      v36 = swift_allocObject();
      v37 = v53;
      *(v36 + 16) = sub_2331D28E4;
      *(v36 + 24) = v37;
      v63 = sub_2331D28EC;
      v64 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = sub_2331D06F4;
      v62 = &block_descriptor_28_1;
      v38 = _Block_copy(&aBlock);

      v39 = v52;
      v40 = [v52 recognitionTaskWithRequest:v35 resultHandler:v38];

      _Block_release(v38);

      v31 = v54;
    }

    sub_23328DF3C();
    v41 = v55;
    swift_beginAccess();
    v42 = v10 + v41;
    v43 = v58;
    sub_233121D34(v42, v58, &qword_27DDE1B38, &unk_2332909A0);
    if ((*(v56 + 48))(v43, 1, v57) == 1)
    {

      sub_233121E04(v43, &qword_27DDE1B38, &unk_2332909A0);
      v44 = *(v10 + 16);
    }

    else
    {
      v45 = v43;
      v44 = v48;
      sub_2331D1E80(v45, v48);
      sub_23311A3F8();
      swift_allocError();
      sub_233121720(v44, v46);
      swift_willThrow();

      sub_2331D1EE4(v44, type metadata accessor for TTSVBError);
    }

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2331D2668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2331D26C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTSVBAudioTools.Box(uint64_t a1)
{
  result = qword_27DDF6B08;
  if (!qword_27DDF6B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2331D277C(uint64_t a1)
{
  sub_2331D2818(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2331D2818(uint64_t a1)
{
  if (!qword_280D3A0A8)
  {
    type metadata accessor for TTSVBError(255);
    v1 = sub_23328E00C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D3A0A8);
    }
  }
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2331D2884(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2331D28A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2331D28F4()
{
  result = qword_27DDE2CB0;
  if (!qword_27DDE2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CB0);
  }

  return result;
}

unint64_t sub_2331D2948()
{
  result = qword_27DDE2CB8;
  if (!qword_27DDE2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CB8);
  }

  return result;
}

unint64_t sub_2331D299C()
{
  result = qword_27DDE2CC0;
  if (!qword_27DDE2CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2C98, &unk_23329A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CC0);
  }

  return result;
}

uint64_t sub_2331D2A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_2331D2A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = 0;
  if ([v1 readIntoBuffer:v2 error:&v5])
  {
    return v5;
  }

  v4 = v5;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.models.getter()
{
  type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
}

uint64_t type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(uint64_t a1)
{
  result = qword_280D3AE10;
  if (!qword_280D3AE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2331D2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) + 20);
  result = sub_2331D3A94(a1, a3, type metadata accessor for TTSVBVoice);
  *(a3 + v6) = a2;
  return result;
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.voiceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TTSVBPersonalVoiceSystemRepresentation.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBVoiceV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTSVBVoice(0) + 20);
  v4 = sub_23328CE8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.convertToData()()
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  sub_2331D3F18(&qword_280D3A1B8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
  v0 = sub_23328C89C();

  return v0;
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C85C();
  swift_allocObject();
  sub_23328C84C();
  sub_2331D3F18(&qword_280D3A1B0, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
  sub_23328C83C();

  v9 = *(v6 + 20);
  sub_233121870(a1, a2);
  result = sub_2331D3A94(v8, a3, type metadata accessor for TTSVBVoice);
  *(a3 + v9) = *&v8[*(v6 + 20)];
  return result;
}

uint64_t static TTSVBPersonalVoiceSystemRepresentation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if ((static TTSVBVoice.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2331D2FDC(v5, v6);
}

uint64_t sub_2331D2FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2331D3BEC(v13, v10, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3BEC(v14, v6, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3F18(&qword_27DDE2B70, type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
        v16 = sub_23328D90C();
        sub_2331D3EB8(v6, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3EB8(v10, type metadata accessor for TTSVBInstalledVoiceModel);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2331D31E4()
{
  if (*v0)
  {
    return 0x736C65646F6DLL;
  }

  else
  {
    return 0x6563696F76;
  }
}

uint64_t sub_2331D3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563696F76 && a2 == 0xE500000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2331D32EC(uint64_t a1)
{
  v2 = sub_2331D3AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D3328(uint64_t a1)
{
  v2 = sub_2331D3AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD0, &qword_23329A910);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D3AFC();
  sub_23328E69C();
  v12 = 0;
  type metadata accessor for TTSVBVoice(0);
  sub_2331D3F18(&qword_27DDE1998, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  sub_23328E4DC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
    sub_2331D3B50(&qword_27DDE2CE0, &qword_280D3A0C0, &protocol conformance descriptor for TTSVBInstalledVoiceModel, MEMORY[0x277D83948]);
    sub_23328E4DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for TTSVBVoice(0);
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CE8, &qword_23329A920);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D3AFC();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v19;
  v24 = 0;
  sub_2331D3F18(&qword_27DDE1990, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  v14 = v20;
  sub_23328E41C();
  sub_2331D3A94(v21, v12, type metadata accessor for TTSVBVoice);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
  v23 = 1;
  sub_2331D3B50(&qword_27DDE2CF0, &qword_280D3A0B8, &protocol conformance descriptor for TTSVBInstalledVoiceModel, MEMORY[0x277D83978]);
  sub_23328E41C();
  v15 = *(v9 + 20);
  (*(v13 + 8))(v8, v14);
  *(v12 + v15) = v22;
  sub_2331D3BEC(v12, v18, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2331D3EB8(v12, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
}

uint64_t sub_2331D3904(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t sub_2331D3934(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return (sub_23328E54C() ^ 1) & 1;
  }
}

uint64_t sub_2331D3980(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_23328E54C() ^ 1) & 1;
  }
}

uint64_t sub_2331D39D4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t sub_2331D3A2C(uint64_t *a1, void *a2, uint64_t a3)
{
  if ((static TTSVBVoice.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2331D2FDC(v7, v8);
}

uint64_t sub_2331D3A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2331D3AFC()
{
  result = qword_27DDF6B20[0];
  if (!qword_27DDF6B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6B20);
  }

  return result;
}

uint64_t sub_2331D3B50(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2CD8, &qword_23329A918);
    sub_2331D3F18(a2, type metadata accessor for TTSVBInstalledVoiceModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2331D3BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2331D3CC4(uint64_t a1)
{
  type metadata accessor for TTSVBVoice(319);
  if (v1 <= 0x3F)
  {
    sub_2331D3D48(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2331D3D48(uint64_t a1)
{
  if (!qword_280D3A120)
  {
    type metadata accessor for TTSVBInstalledVoiceModel(255);
    v1 = sub_23328DC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D3A120);
    }
  }
}

unint64_t sub_2331D3DB4()
{
  result = qword_27DDF6DB0[0];
  if (!qword_27DDF6DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6DB0);
  }

  return result;
}

unint64_t sub_2331D3E0C()
{
  result = qword_27DDF6EC0;
  if (!qword_27DDF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF6EC0);
  }

  return result;
}

unint64_t sub_2331D3E64()
{
  result = qword_27DDF6EC8[0];
  if (!qword_27DDF6EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6EC8);
  }

  return result;
}

uint64_t sub_2331D3EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D3F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2331D3F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A40);
  __swift_project_value_buffer(v3, qword_27DE08A40);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

unint64_t sub_2331D40C0()
{
  result = qword_27DDE2D10;
  if (!qword_27DDE2D10)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D10);
  }

  return result;
}

uint64_t _s22SupplementModelCommandVMa(uint64_t a1)
{
  result = qword_27DDF72E0;
  if (!qword_27DDF72E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2331D4178()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[14] = *v1;
  v3 = sub_23328CE8C();
  v0[15] = v3;
  v0[16] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[17] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  _s22SupplementModelCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  sub_23328D5CC();
  v5 = v0[5];
  v0[6] = v0[4];
  v0[7] = v5;
  sub_23328D5CC();
  v6 = v0[9];
  v0[10] = v0[8];
  v0[11] = v6;
  v9 = (*(*v2 + 432) + **(*v2 + 432));
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_2331D44AC;

  return v9(v4, v0 + 6, v0 + 10);
}

uint64_t sub_2331D44AC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);
    v6 = sub_2331D46B8;
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];

    (*(v8 + 8))(v7, v9);

    v6 = sub_2331D4638;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2331D4638(uint64_t a1)
{
  sub_23328D30C();
  sub_23328D27C();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2331D46B8()
{

  v1 = v0[19];
  sub_23328D30C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23839B7E0](0x203A726F727245, 0xE700000000000000);
  v0[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  sub_23328D25C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2331D47C0()
{
  v0 = static TTSVBVoiceModelVersion.allCases.getter();
  _s22SupplementModelCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  sub_23328D5CC();
  v14 = v16;
  v15 = v17;
  v11 = &v14;
  v1 = sub_2331ACE00(sub_2331BA618, v10, v0);

  if (v1)
  {
    v2 = static TTSVBVoiceModelVersion.allCases.getter();
    v3 = sub_23328D5CC();
    v14 = v16;
    v15 = v17;
    MEMORY[0x28223BE20](v3);
    v9[2] = &v14;
    v4 = sub_2331ACE00(sub_2331BE538, v9, v2);

    if (v4)
    {
      return result;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_23328E24C();

    v16 = 0xD000000000000018;
    v17 = 0x80000002332A9BE0;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_23328E24C();

    v16 = 0xD000000000000018;
    v17 = 0x80000002332A9BC0;
  }

  sub_23328D5CC();
  v12 = v14;
  v13 = v15;
  sub_233144FD0();
  v6 = sub_23328E51C();
  v8 = v7;

  MEMORY[0x23839B7E0](v6, v8);

  sub_23328D4AC();
  sub_2331D64A4(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
  swift_allocError();
  sub_23328D4BC();
  return swift_willThrow();
}

uint64_t sub_2331D4A70()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x746567726174;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2331D4AB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2331D6758(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2331D4AE0(uint64_t a1)
{
  v2 = sub_2331D6228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D4B1C(uint64_t a1)
{
  v2 = sub_2331D6228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331D4B58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328D53C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D4DC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = v53 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v53 - v16;
  sub_23328D3BC();
  v18 = sub_23328D3CC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v62 = v19 + 56;
  v63 = v20;
  v20(v17, 0, 1, v18);
  v21 = sub_23328D42C();
  v22 = *(v21 - 8);
  v60 = *(v22 + 56);
  v61 = v21;
  v59 = v22 + 56;
  v60(v10, 1, 1);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v64 = v10;
  sub_23328D5FC();
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_23328E24C();

  v66 = 0xD000000000000028;
  v67 = 0x80000002332A9B60;
  v23 = static TTSVBVoiceModelVersion.allCases.getter();
  v24 = *(v23 + 16);
  v57 = v4;
  v58 = a1;
  v56 = v7;
  if (v24)
  {
    v65 = MEMORY[0x277D84F90];
    sub_23312676C(0, v24, 0);
    v25 = v65;
    v26 = (v23 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v65 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_23312676C((v29 > 1), v30 + 1, 1);
        v25 = v65;
      }

      *(v25 + 16) = v30 + 1;
      v31 = v25 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      v26 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v53[2] = _s22SupplementModelCommandVMa(0);
  v65 = v25;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  v33 = sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v53[3] = v32;
  v53[1] = v33;
  v34 = sub_23328D8FC();
  v36 = v35;

  MEMORY[0x23839B7E0](v34, v36);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v37 = sub_2331D64A4(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  v38 = v54;
  v53[0] = v37;
  sub_23328E57C();
  v63(v38, 0, 1, v18);
  (v60)(v64, 1, 1, v61);
  sub_23328D4CC();
  sub_23328D52C();
  v54 = sub_2331D61D4();
  sub_23328D5FC();
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_23328E24C();

  v66 = 0xD000000000000025;
  v67 = 0x80000002332A9B90;
  v39 = static TTSVBVoiceModelVersion.allCases.getter();
  v40 = *(v39 + 16);
  if (v40)
  {
    v65 = MEMORY[0x277D84F90];
    sub_23312676C(0, v40, 0);
    v41 = v65;
    v42 = (v39 + 40);
    do
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v65 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);

      if (v46 >= v45 >> 1)
      {
        sub_23312676C((v45 > 1), v46 + 1, 1);
        v41 = v65;
      }

      *(v41 + 16) = v46 + 1;
      v47 = v41 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v42 += 2;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v65 = v41;
  v48 = sub_23328D8FC();
  v50 = v49;

  MEMORY[0x23839B7E0](v48, v50);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v51 = v55;
  sub_23328E57C();
  v63(v51, 0, 1, v18);
  (v60)(v64, 1, 1, v61);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5FC();
}

uint64_t sub_2331D5264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v75 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = &v75 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D38, qword_23329ABA8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v89 = &v75 - v5;
  v6 = sub_23328D53C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v75 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v94 = _s22SupplementModelCommandVMa(0);
  MEMORY[0x28223BE20](v94);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v24 = sub_23328D3CC();
  v25 = *(v24 - 8);
  v99 = *(v25 + 56);
  v100 = v24;
  v98 = v25 + 56;
  v99(v21, 0, 1);
  v26 = sub_23328D42C();
  v27 = *(v26 - 8);
  v96 = *(v27 + 56);
  v97 = v26;
  v95 = v27 + 56;
  v96(v14, 1, 1);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v101 = v14;
  sub_23328D5FC();
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_23328E24C();

  v102 = 0xD000000000000028;
  v103 = 0x80000002332A9B60;
  v28 = static TTSVBVoiceModelVersion.allCases.getter();
  v29 = *(v28 + 16);
  v92 = v8;
  v93 = v23;
  v91 = v11;
  if (v29)
  {
    v104 = MEMORY[0x277D84F90];
    sub_23312676C(0, v29, 0);
    v30 = v104;
    v31 = (v28 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v104 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_23312676C((v34 > 1), v35 + 1, 1);
        v30 = v104;
      }

      *(v30 + 16) = v35 + 1;
      v36 = v30 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v31 += 2;
      --v29;
    }

    while (v29);

    v23 = v93;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v37 = *(v94 + 20);
  v104 = v30;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  v84 = sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v85 = v38;
  v39 = sub_23328D8FC();
  v41 = v40;

  MEMORY[0x23839B7E0](v39, v41);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v42 = sub_2331D64A4(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  v43 = v86;
  v44 = v100;
  v83 = v42;
  sub_23328E57C();
  (v99)(v43, 0, 1, v44);
  (v96)(v101, 1, 1, v97);
  sub_23328D4CC();
  sub_23328D52C();
  v45 = sub_2331D61D4();
  v76 = v37;
  v86 = v45;
  sub_23328D5FC();
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_23328E24C();

  v102 = 0xD000000000000025;
  v103 = 0x80000002332A9B90;
  v46 = static TTSVBVoiceModelVersion.allCases.getter();
  v47 = *(v46 + 16);
  if (v47)
  {
    v104 = MEMORY[0x277D84F90];
    sub_23312676C(0, v47, 0);
    v48 = v104;
    v49 = (v46 + 40);
    do
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v104 = v48;
      v53 = *(v48 + 16);
      v52 = *(v48 + 24);

      if (v53 >= v52 >> 1)
      {
        sub_23312676C((v52 > 1), v53 + 1, 1);
        v48 = v104;
      }

      *(v48 + 16) = v53 + 1;
      v54 = v48 + 16 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v51;
      v49 += 2;
      --v47;
    }

    while (v47);

    v23 = v93;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v55 = *(v94 + 24);
  v104 = v48;
  v56 = sub_23328D8FC();
  v58 = v57;

  MEMORY[0x23839B7E0](v56, v58);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v59 = v87;
  v60 = v100;
  sub_23328E57C();
  (v99)(v59, 0, 1, v60);
  (v96)(v101, 1, 1, v97);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v61 = v90;
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  sub_2331D6228();
  v62 = v88;
  v63 = v89;
  sub_23328E68C();
  if (!v62)
  {
    v101 = v55;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v65 = v63;
    v66 = *(v64 - 8);
    MEMORY[0x28223BE20](v64);
    v68 = &v75 - v67;
    LOBYTE(v102) = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80, MEMORY[0x277CEEA68]);
    v69 = v82;
    sub_23328E41C();
    v23 = v93;
    (*(v66 + 40))(v93, v68, v64);
    LOBYTE(v102) = 1;
    sub_23315246C(&qword_27DDE2D48, &qword_27DDE2D18, &unk_23329AB88, MEMORY[0x277CEEA68]);
    v70 = v79;
    v71 = v69;
    v72 = v80;
    sub_23328E41C();
    v100 = *(v78 + 40);
    v100(v23 + v76, v70, v72);
    LOBYTE(v102) = 2;
    v73 = v77;
    sub_23328E41C();
    (*(v81 + 8))(v65, v71);
    v100(&v101[v23], v73, v72);
    sub_2331D62D8(v23, v75);
  }

  __swift_destroy_boxed_opaque_existential_0(v61);
  return sub_2331D627C(v23);
}

uint64_t sub_2331D5DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2331D4158();
}

uint64_t sub_2331D5E88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2331D64A4(&qword_27DDE2D50, _s22SupplementModelCommandVMa, &unk_23329ABE0);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2331D5F64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF6F50 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2331D6058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2331523A8();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_2331D60CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331523A8();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_2331D6120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331D6860();
  v5 = sub_2331523A8();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_2331D6180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331D6860();

  return MEMORY[0x282140D48](a1, a2, v4);
}

unint64_t sub_2331D61D4()
{
  result = qword_27DDE2D28;
  if (!qword_27DDE2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D28);
  }

  return result;
}

unint64_t sub_2331D6228()
{
  result = qword_27DDF6F58[0];
  if (!qword_27DDF6F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6F58);
  }

  return result;
}

uint64_t sub_2331D627C(uint64_t a1)
{
  v2 = _s22SupplementModelCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2331D62D8(uint64_t a1, uint64_t a2)
{
  v4 = _s22SupplementModelCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331D64A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2331D6514(uint64_t a1)
{
  sub_2331D6598(319);
  if (v1 <= 0x3F)
  {
    sub_2331D65F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2331D6598(uint64_t a1)
{
  if (!qword_27DDE2D78)
  {
    sub_23328CE8C();
    v1 = sub_23328D60C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE2D78);
    }
  }
}

void sub_2331D65F0()
{
  if (!qword_27DDE2D80)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE2D80);
    }
  }
}

unint64_t sub_2331D6654()
{
  result = qword_27DDF73F0[0];
  if (!qword_27DDF73F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF73F0);
  }

  return result;
}

unint64_t sub_2331D66AC()
{
  result = qword_27DDF7500;
  if (!qword_27DDF7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF7500);
  }

  return result;
}

unint64_t sub_2331D6704()
{
  result = qword_27DDF7508[0];
  if (!qword_27DDF7508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7508);
  }

  return result;
}

uint64_t sub_2331D6758(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2331D6860()
{
  result = qword_27DDE2D88;
  if (!qword_27DDE2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D88);
  }

  return result;
}

uint64_t type metadata accessor for TTSVBVoiceModelStateTransition(uint64_t a1)
{
  result = qword_280D3A770;
  if (!qword_280D3A770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBVoiceModelStateTransition.init(previous:current:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2331D69D0(a1, a3);
  v5 = a3 + *(type metadata accessor for TTSVBVoiceModelStateTransition(0) + 20);

  return sub_2331D69D0(a2, v5);
}

uint64_t sub_2331D69D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTSVBVoiceModelStateTransition.description.getter()
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2D90, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0x6E6572727543205DLL, 0xEB000000005B3D74);
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0x73756F6976657250;
}

uint64_t TTSVBVoiceModelStateTransition.convertToData()()
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  sub_2331D82E0(&qword_27DDE2D98, type metadata accessor for TTSVBVoiceModelStateTransition, &protocol conformance descriptor for TTSVBVoiceModelStateTransition);
  v0 = sub_23328C89C();

  return v0;
}

uint64_t TTSVBVoiceModelStateTransition.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_23328C85C();
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  sub_2331D82E0(&qword_27DDE2DA0, type metadata accessor for TTSVBVoiceModelStateTransition, &protocol conformance descriptor for TTSVBVoiceModelStateTransition);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t static TTSVBVoiceModelStateTransition.== infix(_:_:)()
{
  if ((static TTSVBVoiceModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTSVBVoiceModelStateTransition(0);

  return static TTSVBVoiceModel.== infix(_:_:)();
}

uint64_t sub_2331D6F78()
{
  if (*v0)
  {
    return 0x746E6572727563;
  }

  else
  {
    return 0x73756F6976657270;
  }
}

uint64_t sub_2331D6FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73756F6976657270 && a2 == 0xE800000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2331D7090(uint64_t a1)
{
  v2 = sub_2331D817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D70CC(uint64_t a1)
{
  v2 = sub_2331D817C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBVoiceModelStateTransition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DA8, &qword_23329AE60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D817C();
  sub_23328E69C();
  v8[15] = 0;
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328E4DC();
  if (!v1)
  {
    type metadata accessor for TTSVBVoiceModelStateTransition(0);
    v8[14] = 1;
    sub_23328E4DC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TTSVBVoiceModelStateTransition.hash(into:)(uint64_t a1)
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  return sub_23328D8CC();
}

uint64_t TTSVBVoiceModelStateTransition.hashValue.getter()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t TTSVBVoiceModelStateTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v19 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DB0, &qword_23329AE68);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D817C();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v21;
  v26 = 0;
  sub_2331D82E0(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328E41C();
  v14 = v22;
  v22 = v12;
  sub_2331D69D0(v14, v12);
  v25 = 1;
  v15 = v5;
  v16 = v24;
  sub_23328E41C();
  (*(v13 + 8))(v9, v16);
  v17 = v22;
  sub_2331D69D0(v15, &v22[*(v10 + 20)]);
  sub_2331D81D0(v17, v20, type metadata accessor for TTSVBVoiceModelStateTransition);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2331D8238(v17, type metadata accessor for TTSVBVoiceModelStateTransition);
}

uint64_t sub_2331D777C()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331D782C(uint64_t a1)
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328D8CC();
}

uint64_t sub_2331D78CC(uint64_t a1)
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331D7978()
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331D82E0(&qword_27DDE2D90, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0x6E6572727543205DLL, 0xEB000000005B3D74);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0x73756F6976657250;
}

uint64_t sub_2331D7AB4()
{
  if ((static TTSVBVoiceModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static TTSVBVoiceModel.== infix(_:_:)();
}

uint64_t sub_2331D7CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v5);
  return sub_23328DB3C();
}

BOOL sub_2331D7DA4(uint64_t a1)
{
  v2 = *(type metadata accessor for TTSVBVoiceModel(0) + 52);
  v3 = *(a1 + v2);
  if (v3 == 7)
  {
    goto LABEL_2;
  }

  v4 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  if (*(a1 + *(v4 + 20) + v2) == 7)
  {
    return 1;
  }

  if (v3 != 5)
  {
LABEL_2:
    v4 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
    if (*(a1 + *(v4 + 20) + v2) != 5)
    {
      if (v3 == 4)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

LABEL_8:
  v6 = v4;
  type metadata accessor for TTSVBVoiceModelStateTransition(0);
  return *(a1 + *(v6 + 20) + v2) == 4;
}

BOOL Sequence<>.isAnyModelFullyTrained.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DB8, &qword_23329AE70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v22 - v16;
  (*(v9 + 16))(v12, v22[1], a1, v15);
  sub_23328DB2C();
  swift_getAssociatedConformanceWitness();
  do
  {
    sub_23328E01C();
    v18 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
    v19 = (*(*(v18 - 8) + 48))(v8, 1, v18);
    if (v19 == 1)
    {
      break;
    }

    sub_2331D81D0(&v8[*(v18 + 20)], v5, type metadata accessor for TTSVBVoiceModel);
    sub_2331D8238(v8, type metadata accessor for TTSVBVoiceModelStateTransition);
    v20 = *&v5[*(v3 + 52)];
    sub_2331D8238(v5, type metadata accessor for TTSVBVoiceModel);
  }

  while (v20 != 7);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v19 != 1;
}

unint64_t sub_2331D817C()
{
  result = qword_27DDF7590[0];
  if (!qword_27DDF7590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7590);
  }

  return result;
}

uint64_t sub_2331D81D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331D8238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D82E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2331D8350(uint64_t a1)
{
  result = type metadata accessor for TTSVBVoiceModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2331D83D0()
{
  result = qword_27DDF7920[0];
  if (!qword_27DDF7920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7920);
  }

  return result;
}

unint64_t sub_2331D8428()
{
  result = qword_27DDF7A30;
  if (!qword_27DDF7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF7A30);
  }

  return result;
}

unint64_t sub_2331D8480()
{
  result = qword_27DDF7A38[0];
  if (!qword_27DDF7A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7A38);
  }

  return result;
}

void _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for TTSVBError.Reason(0);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *v3;
  v27 = 0;
  v23 = a1;
  sub_23328CC6C();
  v15 = sub_23328D95C();

  [v14 fileExistsAtPath:v15 isDirectory:&v27];

  if ((v27 & 1) == 0)
  {
    v28[0] = v12;
    v28[1] = v11;
    v16 = v11;
    v29 = v13;
    sub_233121D34(v24, v8, &qword_27DDE2A08, &qword_23329B0C0);
    v17 = *(v25 + 48);
    if (v17(v8, 1, v9) == 1)
    {
      v18 = sub_23328CC9C();
      v19 = v26;
      (*(*(v18 - 8) + 16))(v26, v23, v18);
      swift_storeEnumTagMultiPayload();
      v20 = v17(v8, 1, v9);
      sub_233144054(v12, v16, v13);
      if (v20 != 1)
      {
        sub_233121E04(v8, &qword_27DDE2A08, &qword_23329B0C0);
      }
    }

    else
    {
      v19 = v26;
      sub_2331E28AC(v8, v26, type metadata accessor for TTSVBError.Reason);
      sub_233144054(v12, v16, v13);
    }

    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v28, v19, 0, v21);
    swift_willThrow();
  }
}

void _TTSVBFileManager.requireFileExists(_:problem:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for TTSVBError.Reason(0);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *v3;
  v23 = a1;
  sub_23328CC6C();
  v15 = sub_23328D95C();

  v16 = [v14 fileExistsAtPath_];

  if ((v16 & 1) == 0)
  {
    v26[0] = v12;
    v26[1] = v11;
    v17 = v11;
    v27 = v13;
    sub_233121D34(v24, v8, &qword_27DDE2A08, &qword_23329B0C0);
    v18 = *(v25 + 48);
    if (v18(v8, 1, v9) == 1)
    {
      v19 = sub_23328CC9C();
      v20 = v28;
      (*(*(v19 - 8) + 16))(v28, v23, v19);
      swift_storeEnumTagMultiPayload();
      v21 = v18(v8, 1, v9);
      sub_233144054(v12, v17, v13);
      if (v21 != 1)
      {
        sub_233121E04(v8, &qword_27DDE2A08, &qword_23329B0C0);
      }
    }

    else
    {
      v20 = v28;
      sub_2331E28AC(v8, v28, type metadata accessor for TTSVBError.Reason);
      sub_233144054(v12, v17, v13);
    }

    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v26, v20, 0, v22);
    swift_willThrow();
  }
}

id _TTSVBFileManager.fileExists(_:)(uint64_t a1)
{
  v2 = *v1;
  sub_23328CC6C();
  v3 = sub_23328D95C();

  v4 = [v2 fileExistsAtPath_];

  return v4;
}

uint64_t _TTSVBFileManager.directoryExists(_:)(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v5 = 0;
  sub_23328CC6C();
  v3 = sub_23328D95C();

  [v2 fileExistsAtPath:v3 isDirectory:&v5];

  return v5;
}

uint64_t _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v23 = a3;
  v24 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v25 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v25);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = *v4;
  if (v12 == 255)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (v12 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v27 = v15;
  v28 = v14;
  if (v12 == 255)
  {
    v16 = 3;
  }

  else
  {
    v16 = v12;
  }

  v26 = v16;
  LOBYTE(v30) = 0;
  sub_2331D8EC4(v11, v10, v12);
  sub_23328CC6C();
  v17 = sub_23328D95C();

  [v13 fileExistsAtPath:v17 isDirectory:&v30];

  if (v30 == 1)
  {
    if ((v23 & 1) == 0)
    {
      return sub_2331D922C(v11, v10, v12);
    }

    v29 = v13;
    v30 = v28;
    v31 = v27;
    v19 = v26;
    v32 = v26;
    sub_2331D8EC4(v11, v10, v12);
    _TTSVBFileManager.removeItem(_:problem:)(a1, &v30);
    v18 = sub_2331D922C(v28, v27, v19);
    if (v5)
    {
      return sub_2331D922C(v11, v10, v12);
    }
  }

  MEMORY[0x28223BE20](v18);
  *&v22[-32] = v13;
  *&v22[-24] = a1;
  *&v22[-16] = v24;
  v30 = v28;
  v31 = v27;
  v32 = v26;
  v21 = sub_23328CC9C();
  (*(*(v21 - 8) + 16))(v9, a1, v21);
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D920C, &v22[-48], &v30, v9);
  sub_2331E22B4(v9, type metadata accessor for TTSVBError.Reason);
  return sub_2331D922C(v11, v10, v12);
}

uint64_t sub_2331D8EC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_233144054(a1, a2, a3);
  }

  return a1;
}

void _TTSVBFileManager.removeItem(_:problem:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *v2;
  sub_23328CC6C();
  v12 = sub_23328D95C();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    MEMORY[0x28223BE20](v14);
    *(&v19 - 2) = v11;
    *(&v19 - 1) = a1;
    if (v10 == 255)
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }

    if (v10 == 255)
    {
      v16 = 0;
    }

    else
    {
      v16 = v8;
    }

    if (v10 == 255)
    {
      v17 = 3;
    }

    else
    {
      v17 = v10;
    }

    v20 = v15;
    v21 = v16;
    v22 = v17;
    v18 = sub_23328CC9C();
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v9, v8, v10);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331DB92C, (&v19 - 4), &v20, v7);
    sub_2331E22B4(v7, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v20, v21, v22);
  }
}

id sub_2331D90CC(void *a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23328CBCC();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey, &unk_23329F800);
    a3 = sub_23328D87C();
  }

  v9[0] = 0;
  v6 = [a1 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:a3 error:v9];

  if (v6)
  {
    return v9[0];
  }

  v8 = v9[0];
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331D922C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2331220AC(a1, a2, a3);
  }

  return a1;
}

uint64_t _TTSVBFileManager.getOrCreateFile(in:named:problem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v52 = a5;
  v63 = *MEMORY[0x277D85DE8];
  v51 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v51);
  v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v45 - v11;
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v53 = *v5;
  if (v14 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v49 = v16;
  v50 = v15;
  if (v14 == 255)
  {
    v17 = 3;
  }

  else
  {
    v17 = v14;
  }

  v48 = v17;
  v55 = sub_23328CC9C();
  v56 = v45;
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  v61 = a3;
  v20 = sub_23328CB3C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x277CC91E0], v20, v22);
  sub_2331D8EC4(v13, v12, v14);
  sub_23311A294();
  sub_23328CC8C();
  (*(v21 + 8))(v24, v20);
  v25 = v53;
  v54 = v19;
  sub_23328CC6C();
  v26 = sub_23328D95C();

  v27 = [v25 fileExistsAtPath_];

  if (v27)
  {
    v28 = v54;
    v29 = v55;
LABEL_18:
    sub_2331D922C(v13, v12, v14);
    return (*(v58 + 32))(v52, v28, v29);
  }

  LOBYTE(v60) = 0;
  sub_2331D8EC4(v13, v12, v14);
  sub_2331D8EC4(v13, v12, v14);
  v30 = v59;
  sub_23328CC6C();
  v31 = sub_23328D95C();

  [v25 fileExistsAtPath:v31 isDirectory:&v60];

  v33 = v13;
  if (v60 == 1)
  {
    v34 = v25;
    sub_2331D922C(v13, v12, v14);
    sub_2331D922C(v13, v12, v14);
    v29 = v55;
  }

  else
  {
    v45[1] = v45;
    v35 = MEMORY[0x28223BE20](v32);
    v45[-4] = v25;
    v45[-3] = v30;
    v45[-2] = 0;
    v60 = v50;
    v61 = v49;
    v62 = v48;
    v34 = v25;
    v36 = v58;
    v37 = v47;
    v29 = v55;
    (*(v58 + 16))(v47, v30, v55, v35);
    swift_storeEnumTagMultiPayload();
    v38 = v57;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E31F4, &v45[-6], &v60, v37);
    if (v38)
    {
      sub_2331D922C(v33, v12, v14);
      sub_2331D922C(v33, v12, v14);
      sub_2331E22B4(v37, type metadata accessor for TTSVBError.Reason);
      (*(v36 + 8))(v54, v29);
      return sub_2331D922C(v33, v12, v14);
    }

    sub_2331D922C(v33, v12, v14);
    sub_2331E22B4(v37, type metadata accessor for TTSVBError.Reason);
    v13 = v33;
    sub_2331D922C(v33, v12, v14);
  }

  v28 = v54;
  sub_23328CC6C();
  v40 = sub_23328D95C();

  v41 = [v34 createFileAtPath:v40 contents:0 attributes:0];

  if (v41)
  {
    goto LABEL_18;
  }

  v60 = v50;
  v61 = v49;
  v62 = v48;
  v42 = v58;
  v43 = v46;
  (*(v58 + 16))(v46, v28, v29);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TTSVBError(0);
  sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  swift_allocError();
  TTSVBError.init(_:_:_:)(&v60, v43, 0, v44);
  swift_willThrow();
  return (*(v42 + 8))(v28, v29);
}

uint64_t _TTSVBFileManager.getFileIfExists(in:named:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a1;
  v21[1] = a2;
  v12 = sub_23328CB3C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277CC91E0], v12, v14);
  sub_23311A294();
  sub_23328CC8C();
  (*(v13 + 8))(v16, v12);
  sub_23328CC6C();
  v17 = sub_23328D95C();

  v18 = [v7 fileExistsAtPath_];

  if (v18)
  {
    (*(v9 + 32))(a3, v11, v8);
    v19 = 0;
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v19 = 1;
  }

  return (*(v9 + 56))(a3, v19, 1, v8);
}

uint64_t _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a1;
  v31 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v32 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v32);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a5;
  v12 = *(a5 + 8);
  v14 = *(a5 + 16);
  v34 = *v6;
  v37 = a2;
  v38 = a3;
  v15 = sub_23328CB3C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CC91E0], v15, v17);
  sub_2331D8EC4(v13, v12, v14);
  sub_23311A294();
  sub_23328CC8C();
  (*(v16 + 8))(v19, v15);
  v20 = v34;
  LOBYTE(v37) = 0;
  sub_2331D8EC4(v13, v12, v14);
  sub_23328CC6C();
  v21 = sub_23328D95C();

  [v20 fileExistsAtPath:v21 isDirectory:&v37];

  if (v37 == 1)
  {
    sub_2331D922C(v13, v12, v14);
    return sub_2331D922C(v13, v12, v14);
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v31 - 4) = v20;
    *(&v31 - 3) = a6;
    *(&v31 - 2) = v31;
    v37 = v25;
    v38 = v24;
    v39 = v26;
    v27 = sub_23328CC9C();
    v28 = *(v27 - 8);
    v29 = v33;
    (*(v28 + 16))(v33, a6, v27);
    swift_storeEnumTagMultiPayload();
    v30 = v36;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E31F4, (&v31 - 6), &v37, v29);
    sub_2331D922C(v13, v12, v14);
    sub_2331E22B4(v29, type metadata accessor for TTSVBError.Reason);
    if (v30)
    {
      sub_2331D922C(v13, v12, v14);
      return (*(v28 + 8))(a6, v27);
    }

    else
    {
      return sub_2331D922C(v13, v12, v14);
    }
  }
}

void _TTSVBFileManager.getChildDirectories(of:problem:)(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v71 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *v2;
  sub_2331D8EC4(*a2, v7, *(a2 + 16));
  v74 = a1;
  v10 = sub_23328CBCC();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v11 = swift_allocObject();
  v67 = xmmword_233297B30;
  *(v11 + 16) = xmmword_233297B30;
  v12 = *MEMORY[0x277CBE868];
  *(v11 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v66 = v12;
  v13 = sub_23328DBDC();

  v75[0] = 0;
  v14 = [v9 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v13 options:0 error:v75];

  if (v14)
  {
    v15 = v75[0];
    sub_2331D922C(v6, v7, v8);
    v16 = sub_23328CC9C();
    v17 = sub_23328DBFC();

    v74 = v16;
    v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
    v69 = v21;
    v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = v23;
    if (v23)
    {
      v24 = 0;
      v62 = v19 + 16;
      v58 = (v19 + 32);
      v61 = (v19 + 8);
      v59 = MEMORY[0x277D84F90];
      v25 = v73;
      v64 = v17;
      v63 = v19;
      while (1)
      {
        if (v24 >= *(v17 + 16))
        {
          __break(1u);
        }

        v72 = &v57;
        v26 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v27 = *(v19 + 72);
        (*(v19 + 16))(v22, v17 + v26 + v27 * v24, v74, v20);
        v28 = sub_23328CA0C();
        v73 = &v57;
        v70 = *(v28 - 8);
        v71 = v28;
        MEMORY[0x28223BE20](v28);
        v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        inited = swift_initStackObject();
        *(inited + 16) = v67;
        v32 = v66;
        *(inited + 32) = v66;
        v33 = v32;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v34 = v25;
        sub_23328CB6C();
        if (v25)
        {
          break;
        }

        v60 = v27;

        v35 = sub_23328C98C();
        v36 = (*(v70 + 8))(v30, v71);
        if (v35 == 2)
        {
          goto LABEL_8;
        }

        if (v35)
        {
          v39 = MEMORY[0x28223BE20](v36);
          v41 = &v57 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
          v42 = *v58;
          (*v58)(v41, v22, v74, v39);
          v43 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_233173E80(0, v43[2] + 1, 1);
            v43 = v75[0];
          }

          v45 = v60;
          v47 = v43[2];
          v46 = v43[3];
          if (v47 >= v46 >> 1)
          {
            sub_233173E80((v46 > 1), v47 + 1, 1);
            v45 = v60;
            v43 = v75[0];
          }

          v43[2] = v47 + 1;
          v59 = v43;
          v37 = (v42)(v43 + v26 + v47 * v45, v41, v74);
          v25 = v34;
          v17 = v64;
          goto LABEL_10;
        }

        v17 = v64;
LABEL_9:
        v37 = (*v61)(v22, v74);
LABEL_10:
        ++v24;
        v20.n128_f64[0] = MEMORY[0x28223BE20](v37);
        v22 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = v63;
        if (v65 == v24)
        {
          goto LABEL_30;
        }
      }

      v25 = 0;
LABEL_8:
      v17 = v64;
      goto LABEL_9;
    }

    v59 = MEMORY[0x277D84F90];
LABEL_30:
  }

  else
  {
    if (v8 == 255)
    {
      v48 = 3;
    }

    else
    {
      v48 = v8;
    }

    if (v8 == 255)
    {
      v49 = 0;
    }

    else
    {
      v49 = v7;
    }

    if (v8 == 255)
    {
      v50 = 0;
    }

    else
    {
      v50 = v6;
    }

    v51 = v75[0];
    v52 = sub_23328CA7C();

    swift_willThrow();
    v75[0] = v50;
    v75[1] = v49;
    v76 = v48;
    v53 = sub_23328CC9C();
    v54 = v72;
    (*(*(v53 - 8) + 16))(v72, v74, v53);
    swift_storeEnumTagMultiPayload();
    v55 = sub_23328CA6C();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v75, v54, v55, v56);
    swift_willThrow();
  }
}

uint64_t _TTSVBFileManager.setPermissions(_:onItem:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a1;
  v54 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v54);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v52 = *(a3 + 8);
  v53 = v12;
  v51 = *(a3 + 16);
  v48 = *v3;
  v13 = sub_233225314();
  v49 = v9;
  v50 = v8;
  (*(v9 + 16))(v11, v13, v8);
  v14 = sub_23328CC9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v55 = a2;
  v58 = v20;
  v47 = v19;
  (v19)(v18, a2, v16);
  v21 = sub_23328D6CC();
  v22 = sub_23328DE2C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = v4;
    v24 = v23;
    v45 = swift_slowAlloc();
    v59 = v45;
    *v24 = 136315394;
    v62 = v57;
    sub_2331E24D4();
    v25 = sub_23328DAEC();
    v27 = sub_23311A8F4(v25, v26, &v59);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = sub_23328CC6C();
    v30 = v29;
    (*(v15 + 8))(v18, v58);
    v31 = sub_23311A8F4(v28, v30, &v59);

    *(v24 + 14) = v31;
    _os_log_impl(&dword_233109000, v21, v22, "Setting permissions=%s on item=%s", v24, 0x16u);
    v32 = v45;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v32, -1, -1);
    MEMORY[0x23839CFD0](v24, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v58);
  }

  v33 = (*(v49 + 8))(v11, v50);
  v34.n128_f64[0] = MEMORY[0x28223BE20](v33);
  v36 = v56;
  v35 = v57;
  *(&v44 - 4) = v48;
  *(&v44 - 3) = v35;
  *(&v44 - 2) = v55;
  v37 = v51;
  v39 = v52;
  v38 = v53;
  if (v51 == 255)
  {
    v40 = 0;
  }

  else
  {
    v40 = v53;
  }

  if (v51 == 255)
  {
    v41 = 0;
  }

  else
  {
    v41 = v52;
  }

  if (v51 == 255)
  {
    v42 = 3;
  }

  else
  {
    v42 = v51;
  }

  v59 = v40;
  v60 = v41;
  v61 = v42;
  v47(v36, v34);
  swift_storeEnumTagMultiPayload();
  sub_2331D8EC4(v38, v39, v37);
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2314, (&v44 - 6), &v59, v36);
  sub_2331E22B4(v36, type metadata accessor for TTSVBError.Reason);
  return sub_2331220AC(v59, v60, v61);
}

void _TTSVBFileManager.setPermissions(_:onDirectoriesIn:problem:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a1;
  v4 = a3[1];
  v40 = *a3;
  v39 = v4;
  v38 = *(a3 + 16);
  v5 = *v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v6 = swift_allocObject();
  v52 = xmmword_233297B30;
  *(v6 + 16) = xmmword_233297B30;
  v7 = *MEMORY[0x277CBE868];
  *(v6 + 32) = *MEMORY[0x277CBE868];
  v51 = v7;
  v37 = v5;
  v8 = sub_23328DE0C();

  if (v8)
  {
    v45 = &v36;
    v43 = sub_23328CABC();
    v42 = *(v43 - 8);
    MEMORY[0x28223BE20](v43);
    v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v8;
    sub_23328DDDC();
    sub_23328CAAC();
    if (!v63)
    {
LABEL_14:
      (*(v42 + 8))(v10, v43);

      return;
    }

    v11 = sub_23328CC9C();
    v59 = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    v14 = (v12 + 56);
    v48 = (v12 + 32);
    v49 = (v12 + 8);
    v50 = v10;
    v47 = v13;
    v46 = (v12 + 56);
    while (1)
    {
      MEMORY[0x28223BE20](v11);
      v58 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      MEMORY[0x28223BE20](v15 - 8);
      v17 = &v36 - v16;
      v18 = v59;
      v19 = swift_dynamicCast();
      v20 = *v14;
      if (v19)
      {
        v56 = &v36;
        v57 = &v36;
        v20(v17, 0, 1, v18);
        v21 = v58;
        (*v48)(v58, v17, v18);
        v22 = sub_23328CA0C();
        v55 = &v36;
        v23 = *(v22 - 8);
        MEMORY[0x28223BE20](v22);
        v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DD0, &qword_23329B0C8);
        v54 = &v36;
        MEMORY[0x28223BE20](v26 - 8);
        v28 = &v36 - v27;
        inited = swift_initStackObject();
        *(inited + 16) = v52;
        v30 = v51;
        *(inited + 32) = v51;
        v31 = v30;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v32 = v60;
        sub_23328CB6C();
        v60 = v32;
        if (v32)
        {

          (*v49)(v21, v59);
          (*(v23 + 56))(v28, 1, 1, v22);
          sub_233121E04(v28, &qword_27DDE2DD0, &qword_23329B0C8);
          v60 = 0;
        }

        else
        {
          v33 = v59;

          (*(v23 + 56))(v28, 0, 1, v22);
          (*(v23 + 32))(v25, v28, v22);
          v34 = sub_23328C98C();
          if (v34 != 2 && (v34 & 1) != 0)
          {
            v64 = v37;
            v61[0] = v40;
            v61[1] = v39;
            v62 = v38;
            v35 = v60;
            _TTSVBFileManager.setPermissions(_:onItem:problem:)(v41, v21, v61);
            v60 = v35;
            if (v35)
            {

              (*(v23 + 8))(v25, v22);
              (*v49)(v21, v33);
              (*(v42 + 8))(v50, v43);
              return;
            }
          }

          (*(v23 + 8))(v25, v22);
          (*v49)(v21, v33);
        }

        v10 = v50;
        v13 = v47;
        v14 = v46;
      }

      else
      {
        v20(v17, 1, 1, v18);
        sub_233121E04(v17, &qword_27DDE19A0, &unk_233290360);
      }

      v11 = sub_23328CAAC();
      if (!v63)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
}

void _TTSVBFileManager.processTree(root:handler:)(uint64_t a1, void (*a2)(char *, void), uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v3 = swift_allocObject();
  v44 = xmmword_233297B30;
  *(v3 + 16) = xmmword_233297B30;
  v4 = *MEMORY[0x277CBE868];
  *(v3 + 32) = *MEMORY[0x277CBE868];
  v43 = v4;
  v5 = sub_23328DE0C();

  if (v5)
  {
    v36 = &v32;
    v34 = sub_23328CABC();
    v33 = *(v34 - 8);
    MEMORY[0x28223BE20](v34);
    v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v5;
    sub_23328DDDC();
    v51 = v7;
    sub_23328CAAC();
    if (!v52)
    {
LABEL_14:
      (*(v33 + 8))(v51, v34);

      return;
    }

    v8 = sub_23328CC9C();
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = (v10 + 56);
    v41 = (v10 + 32);
    v42 = (v10 + 8);
    v40 = v11;
    v39 = (v10 + 56);
    while (1)
    {
      MEMORY[0x28223BE20](v8);
      v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      MEMORY[0x28223BE20](v14 - 8);
      v16 = &v32 - v15;
      v17 = swift_dynamicCast();
      v18 = *v12;
      if (v17)
      {
        v49 = &v32;
        v50 = &v32;
        v18(v16, 0, 1, v9);
        (*v41)(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v9);
        v47 = sub_23328CA0C();
        v48 = &v32;
        v19 = *(v47 - 8);
        MEMORY[0x28223BE20](v47);
        v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DD0, &qword_23329B0C8);
        v46 = &v32;
        MEMORY[0x28223BE20](v22 - 8);
        v24 = &v32 - v23;
        inited = swift_initStackObject();
        *(inited + 16) = v44;
        v26 = v43;
        *(inited + 32) = v43;
        v27 = v26;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v28 = v53;
        sub_23328CB6C();
        v53 = v28;
        if (v28)
        {

          (*v42)(v13, v9);
          (*(v19 + 56))(v24, 1, 1, v47);
          sub_233121E04(v24, &qword_27DDE2DD0, &qword_23329B0C8);
          v53 = 0;
        }

        else
        {

          v29 = v47;
          (*(v19 + 56))(v24, 0, 1, v47);
          (*(v19 + 32))(v21, v24, v29);
          v30 = sub_23328C98C();
          if (v30 != 2)
          {
            v31 = v53;
            v37(v13, v30 & 1);
            v53 = v31;
            if (v31)
            {

              (*(v19 + 8))(v21, v29);
              (*v42)(v13, v9);
              (*(v33 + 8))(v51, v34);
              return;
            }
          }

          (*(v19 + 8))(v21, v29);
          (*v42)(v13, v9);
        }

        v11 = v40;
        v12 = v39;
      }

      else
      {
        v18(v16, 1, 1, v9);
        sub_233121E04(v16, &qword_27DDE19A0, &unk_233290360);
      }

      v8 = sub_23328CAAC();
      if (!v52)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
}

uint64_t _TTSVBFileManager.moveItem(_:to:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v45 = a1;
  v46 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v46);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *v3;
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v53;
  sub_23328CC1C();
  v48 = v12;
  v49 = v16;
  v43 = v16;
  if (v11 == 255)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  if (v11 == 255)
  {
    v19 = 0;
  }

  else
  {
    v19 = v10;
  }

  if (v11 == 255)
  {
    v20 = 3;
  }

  else
  {
    v20 = v11;
  }

  v38 = v18;
  v39 = v12;
  v50 = v18;
  v51 = v19;
  v37 = v19;
  v36 = v20;
  v52 = v20;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
  v21 = *(v35 + 48);
  v44 = v14;
  v22 = *(v14 + 16);
  v22(v8, v45, v13);
  v23 = v17;
  v24 = v11;
  v22(&v8[v21], v23, v13);
  swift_storeEnumTagMultiPayload();
  v40 = v10;
  sub_2331D8EC4(v9, v10, v11);
  v25 = v42;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E320C, v47, &v50, v8);
  sub_2331E22B4(v8, type metadata accessor for TTSVBError.Reason);
  if (!v25)
  {
    v26 = sub_2331220AC(v50, v51, v52);
    v42 = &v33;
    v27 = MEMORY[0x28223BE20](v26);
    v34 = &v33 - 6;
    v28 = v45;
    *(&v33 - 4) = v39;
    *(&v33 - 3) = v28;
    v29 = v53;
    *(&v33 - 2) = v53;
    v50 = v38;
    v51 = v37;
    v52 = v36;
    v30 = *(v35 + 48);
    v31 = v41;
    (v22)(v41, v27);
    v22((v31 + v30), v29, v13);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v9, v40, v24);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2528, v34, &v50, v31);
    sub_2331E22B4(v41, type metadata accessor for TTSVBError.Reason);
  }

  sub_2331220AC(v50, v51, v52);
  return (*(v44 + 8))(v43, v13);
}

uint64_t _TTSVBFileManager.moveItem(_:intoDirectory:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *(a3 + 8);
  v19 = *(a3 + 16);
  v5 = *v3;
  v17[1] = a2;
  v18 = v5;
  v6 = sub_23328CC9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23328CB9C();
  v23 = v10;
  v11 = sub_23328CB3C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CC91E0], v11, v13);
  sub_23311A294();
  sub_23328CC8C();
  (*(v12 + 8))(v15, v11);

  v25 = v18;
  v22 = v21;
  v23 = v20;
  v24 = v19;
  _TTSVBFileManager.moveItem(_:to:problem:)(a1, v9, &v22);
  return (*(v7 + 8))(v9, v6);
}

uint64_t _TTSVBFileManager.copyItem(_:to:problem:)(char *a1, char **a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v60 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = *(a3 + 8);
  v59 = *a3;
  v14 = *(a3 + 16);
  v15 = *v4;
  v16 = sub_23328CC9C();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a2;
  sub_23328CC1C();
  LOBYTE(v65) = 0;
  sub_23328CC6C();
  v19 = sub_23328D95C();

  [v15 fileExistsAtPath:v19 isDirectory:&v65];

  if (v65)
  {
    v56 = v18;
    v21 = v59;
  }

  else
  {
    v62 = &v55;
    v22.n128_f64[0] = MEMORY[0x28223BE20](v20);
    *(&v55 - 2) = v15;
    *(&v55 - 1) = v18;
    v23 = v59;
    if (v14 == 255)
    {
      v24 = 0;
    }

    else
    {
      v24 = v59;
    }

    if (v14 == 255)
    {
      v25 = 0;
    }

    else
    {
      v25 = v13;
    }

    if (v14 == 255)
    {
      v26 = 3;
    }

    else
    {
      v26 = v14;
    }

    v65 = v24;
    v66 = v25;
    v67 = v26;
    v27 = v64;
    (*(v64 + 16))(v12, v18, v16, v22);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v23, v13, v14);
    v28 = v63;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2548, (&v55 - 4), &v65, v12);
    if (v28)
    {
      sub_2331E22B4(v12, type metadata accessor for TTSVBError.Reason);
      sub_2331220AC(v65, v66, v67);
      return (*(v27 + 8))(v18, v16);
    }

    v56 = v18;
    v21 = v23;
    v63 = 0;
    sub_2331E22B4(v12, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v65, v66, v67);
  }

  v65 = sub_23328CC5C();
  v66 = v29;
  sub_23311A294();
  sub_23328E07C();
  v31 = v30;

  if (v31 && (v33 = sub_23328D95C(), , v34 = [v15 fileExistsAtPath_], v33, v34))
  {
    v62 = &v55;
    v35.n128_f64[0] = MEMORY[0x28223BE20](v32);
    v36 = v61;
    *(&v55 - 2) = v15;
    *(&v55 - 1) = v36;
    v37 = v14;
    if (v14 == 255)
    {
      v38 = 0;
    }

    else
    {
      v38 = v21;
    }

    if (v14 == 255)
    {
      v39 = 0;
    }

    else
    {
      v39 = v13;
    }

    if (v14 == 255)
    {
      v40 = 3;
    }

    else
    {
      v40 = v14;
    }

    v65 = v38;
    v66 = v39;
    v67 = v40;
    v41 = v55;
    (*(v64 + 16))(v55, v36, v16, v35);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v21, v13, v37);
    v42 = v63;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E3224, (&v55 - 4), &v65, v41);
    if (v42)
    {
      sub_2331E22B4(v41, type metadata accessor for TTSVBError.Reason);
      sub_2331220AC(v65, v66, v67);
      v18 = v56;
      v27 = v64;
      return (*(v27 + 8))(v18, v16);
    }

    v54 = v41;
    v14 = v37;
    v63 = 0;
    sub_2331E22B4(v54, type metadata accessor for TTSVBError.Reason);
    v32 = sub_2331220AC(v65, v66, v67);
  }

  else
  {
    v36 = v61;
  }

  v62 = &v55;
  MEMORY[0x28223BE20](v32);
  v61 = &v55 - 6;
  v43 = v57;
  *(&v55 - 4) = v15;
  *(&v55 - 3) = v43;
  *(&v55 - 2) = v36;
  if (v14 == 255)
  {
    v44 = 0;
  }

  else
  {
    v44 = v21;
  }

  if (v14 == 255)
  {
    v45 = 0;
  }

  else
  {
    v45 = v13;
  }

  if (v14 == 255)
  {
    v46 = 3;
  }

  else
  {
    v46 = v14;
  }

  v65 = v44;
  v66 = v45;
  v67 = v46;
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
  v48 = v36;
  v49 = v43;
  v50 = *(v64 + 16);
  v51 = v58;
  v50(v58, v49, v16);
  v50((v51 + v47), v48, v16);
  swift_storeEnumTagMultiPayload();
  sub_2331D8EC4(v21, v13, v14);
  v52 = v63;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E323C, v61, &v65, v51);
  if (v52)
  {
    sub_2331E22B4(v51, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v65, v66, v67);
    v27 = v64;
    v18 = v56;
    return (*(v27 + 8))(v18, v16);
  }

  sub_2331E22B4(v51, type metadata accessor for TTSVBError.Reason);
  sub_2331220AC(v65, v66, v67);
  return (*(v64 + 8))(v56, v16);
}

uint64_t _TTSVBFileManager.copyItem(_:intoDirectory:problem:)(char *a1, uint64_t a2)
{
  v15 = a2;
  v16 = *v2;
  v4 = sub_23328CC9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_23328CB9C();
  v18 = v8;
  v9 = sub_23328CB3C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC91E0], v9, v11);
  sub_23311A294();
  sub_23328CC8C();
  (*(v10 + 8))(v13, v9);

  v20 = v16;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  _TTSVBFileManager.copyItem(_:to:problem:)(a1, v7, &v17);
  return (*(v5 + 8))(v7, v4);
}

uint64_t _TTSVBFileManager.copyContentsOf(_:to:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v50 = a2;
  v59 = *MEMORY[0x277D85DE8];
  v49 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v8 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = *v3;
  if (v10 == 255)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v10 == 255)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v45 = v13;
  v46 = v12;
  if (v10 == 255)
  {
    v14 = 3;
  }

  else
  {
    v14 = v10;
  }

  v44 = v14;
  sub_2331D8EC4(v9, v8, v10);
  v15 = sub_23328CBCC();
  v57[0] = 0;
  v47 = v11;
  v16 = [v11 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v57];

  v17 = v57[0];
  if (v16)
  {
    v38 = v8;
    v39 = v10;
    v18 = sub_23328CC9C();
    v19 = sub_23328DBFC();
    v20 = v17;

    v43 = *(v19 + 16);
    if (v43)
    {
      v22 = 0;
      v40 = v18 - 8;
      v41 = v19;
      v42 = v9;
      while (1)
      {
        if (v22 >= *(v19 + 16))
        {
          __break(1u);
        }

        v56 = &v38;
        v23 = *(v18 - 8);
        v24 = v23;
        v51 = v22;
        v25 = *(v23 + 64);
        v26 = MEMORY[0x28223BE20](v21);
        v54 = v5;
        v27 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = *(v24 + 16);
        v52(v27, v26);
        v28 = sub_23328CB9C();
        v55 = &v38;
        MEMORY[0x28223BE20](v28);
        sub_23328CBEC();

        v53 = &v38;
        MEMORY[0x28223BE20](v29);
        *(&v38 - 4) = v47;
        *(&v38 - 3) = v27;
        *(&v38 - 2) = v27;
        v57[0] = v46;
        v57[1] = v45;
        v58 = v44;
        v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
        v31 = v48;
        v32 = v52;
        (v52)(v48, v27, v18);
        v32(v31 + v30, v27, v18);
        swift_storeEnumTagMultiPayload();
        v33 = v54;
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E25F0, (&v38 - 6), v57, v31);
        v5 = v33;
        if (v33)
        {
          break;
        }

        v22 = v51 + 1;
        sub_2331E22B4(v31, type metadata accessor for TTSVBError.Reason);
        v34 = *(v24 + 8);
        v34(v27, v18);
        v21 = (v34)(v27, v18);
        v9 = v42;
        v19 = v41;
        if (v43 == v22)
        {
          goto LABEL_16;
        }
      }

      sub_2331E22B4(v31, type metadata accessor for TTSVBError.Reason);

      sub_2331D922C(v42, v38, v39);
      v37 = *(v24 + 8);
      v37(v27, v18);
      return (v37)(v27, v18);
    }

    else
    {
LABEL_16:

      return sub_2331D922C(v9, v38, v39);
    }
  }

  else
  {
    v36 = v57[0];
    sub_2331D922C(v9, v8, v10);
    sub_23328CA7C();

    return swift_willThrow();
  }
}

uint64_t _TTSVBFileManager.write<A>(item:toFile:problem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v29 = a4;
  v30 = a1;
  v27 = a2;
  v6 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v13 == 255)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v13 == 255)
  {
    v16 = 3;
  }

  else
  {
    v16 = *(a3 + 16);
  }

  sub_23328C8BC();
  swift_allocObject();
  v44 = v12;
  v33 = v11;
  sub_2331D8EC4(v12, v11, v13);
  v17 = sub_23328C8AC();
  v35 = v29;
  v36 = v31;
  v37 = v17;
  v38 = v30;
  v30 = v14;
  v31 = v6;
  v39 = v14;
  v40 = v15;
  LODWORD(v29) = v16;
  v41 = v16;
  swift_storeEnumTagMultiPayload();
  v18 = v32;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E26CC, v34, &v39, v10);
  v19 = sub_2331E22B4(v10, type metadata accessor for TTSVBError.Reason);
  if (v18)
  {
  }

  else
  {
    v32 = &v26;
    v22 = v42;
    v21 = v43;
    MEMORY[0x28223BE20](v19);
    *(&v26 - 4) = v22;
    *(&v26 - 3) = v21;
    v23 = v27;
    *(&v26 - 2) = v27;
    v39 = v30;
    v40 = v15;
    v41 = v29;
    v24 = sub_23328CC9C();
    v25 = v28;
    (*(*(v24 - 8) + 16))(v28, v23, v24);
    swift_storeEnumTagMultiPayload();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2704, (&v26 - 6), &v39, v25);
    sub_2331E22B4(v25, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v22, v21);
  }

  return sub_2331D922C(v44, v33, v13);
}

uint64_t sub_2331DCFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v33 = a5;
  v8 = a4;
  v9 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (v8 == 255)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2;
  }

  if (v8 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  if (v8 == 255)
  {
    v16 = 3;
  }

  else
  {
    v16 = a4;
  }

  sub_23328C85C();
  swift_allocObject();
  v36 = a2;
  v17 = a2;
  v18 = a4;
  v44 = a3;
  sub_2331D8EC4(v17, a3, a4);
  v19 = sub_23328C84C();
  v20 = v34;
  v38 = v34;
  v39 = v14;
  v30 = v15;
  v31 = v14;
  v40 = v15;
  v21 = v16;
  v41 = v16;
  v22 = sub_23328CC9C();
  (*(*(v22 - 8) + 16))(v13, v20, v22);
  swift_storeEnumTagMultiPayload();
  v23 = v35;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E3258, v37, &v39, v13);
  v24 = sub_2331E22B4(v13, type metadata accessor for TTSVBError.Reason);
  if (v23)
  {
  }

  else
  {
    v35 = &v29;
    v26 = v42;
    v27 = v43;
    MEMORY[0x28223BE20](v24);
    *(&v29 - 4) = v19;
    *(&v29 - 3) = v26;
    *(&v29 - 2) = v27;
    v39 = v31;
    v40 = v30;
    v41 = v21;
    v28 = v32;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBVoiceModel(0);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2D8C, (&v29 - 6), &v39, v28);
    sub_2331E22B4(v28, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v26, v27);
  }

  return sub_2331D922C(v36, v44, v18);
}

uint64_t _TTSVBFileManager.load<A>(_:fromFile:problem:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a2;
  v32 = a1;
  v33 = a5;
  v35 = a6;
  v36 = a4;
  v7 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  if (v14 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a3 + 8);
  }

  if (v14 == 255)
  {
    v17 = 3;
  }

  else
  {
    v17 = *(a3 + 16);
  }

  sub_23328C85C();
  swift_allocObject();
  v39 = v12;
  v18 = v12;
  v19 = v13;
  sub_2331D8EC4(v18, v13, v14);
  v47 = sub_23328C84C();
  v20 = v37;
  v41 = v37;
  v42 = v15;
  v30 = v16;
  v31 = v15;
  v43 = v16;
  v44 = v17;
  v21 = sub_23328CC9C();
  (*(*(v21 - 8) + 16))(v11, v20, v21);
  swift_storeEnumTagMultiPayload();
  v22 = v38;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2728, v40, &v42, v11);
  v23 = sub_2331E22B4(v11, type metadata accessor for TTSVBError.Reason);
  if (v22)
  {
  }

  else
  {
    v25 = v45;
    v37 = v46;
    v38 = &v30;
    MEMORY[0x28223BE20](v23);
    v26 = v32;
    v27 = v33;
    *(&v30 - 6) = v36;
    *(&v30 - 5) = v27;
    *(&v30 - 4) = v47;
    *(&v30 - 3) = v26;
    *(&v30 - 2) = v25;
    *(&v30 - 1) = v28;
    v42 = v31;
    v43 = v30;
    v44 = v17;
    v29 = v34;
    swift_storeEnumTagMultiPayload();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2740, (&v30 - 8), &v42, v29);
    sub_2331E22B4(v29, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v25, v37);
  }

  return sub_2331D922C(v39, v19, v14);
}

uint64_t _TTSVBFileManager.calculateSize(ofItemAtURL:)(uint64_t a1)
{
  v3 = v1;
  v60 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v3;
  v54 = 0;
  sub_23328CC6C();
  v9 = sub_23328D95C();

  v10 = [v8 fileExistsAtPath:v9 isDirectory:&v54];

  if (v10)
  {
    if (v54)
    {
      v11 = swift_allocObject();
      v48 = v11;
      *(v11 + 16) = 0;
      v51 = (v11 + 16);
      if (qword_27DDF7AC0 != -1)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v12 = qword_27DDF7AC8;
        v13 = *(qword_27DDF7AC8 + 16);
        v49 = qword_27DDF7AC8;
        if (v13)
        {
          v7 = sub_2331E1F98(v13, 0);
          v52 = sub_2331E2160(&v57, v7 + 4, v13, v12);
          v2 = *(&v57 + 1);
          v14 = v57;

          sub_233113BBC(v14);
          if (v52 != v13)
          {
            __break(1u);
            goto LABEL_7;
          }
        }

        v19 = sub_23328DE0C();

        if (!v19)
        {
          __break(1u);
          return result;
        }

        v21 = sub_23328CABC();
        v47 = v42;
        v46 = v21;
        v45 = *(v21 - 8);
        MEMORY[0x28223BE20](v21);
        v23 = &v42[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v44 = v19;
        sub_23328DDDC();
        swift_beginAccess();
        v50 = v23;
        sub_23328CAAC();
        if (!v59)
        {
LABEL_28:
          v2 = 0;
LABEL_30:
          (*(v45 + 8))(v50, v46);
          v38 = *v51;
          if (*v51)
          {
            v57 = 0uLL;
            LOBYTE(v58) = 3;
            type metadata accessor for TTSVBError(0);
            sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
            swift_allocError();
            v40 = v39;
            v41 = v38;
            static TTSVBError.map(_:_:)(v38, &v57, v40);
            swift_willThrow();
          }

          else
          {
          }

          return v2;
        }

        v2 = 0;
        while (1)
        {
          sub_233145134(&v57, v56);
          if (*v51)
          {
            __swift_destroy_boxed_opaque_existential_0(v56);
            goto LABEL_30;
          }

          v24 = sub_23328CC9C();
          v52 = v42;
          v25 = *(v24 - 8);
          MEMORY[0x28223BE20](v24);
          v27 = &v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
          sub_23311B0C0(v56, v55);
          swift_dynamicCast();
          v28 = sub_23328CA0C();
          v29 = *(v28 - 8);
          MEMORY[0x28223BE20](v28);
          v31 = &v42[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v32 = v53;
          sub_23328CB6C();
          if (v32)
          {

            __swift_destroy_boxed_opaque_existential_0(v56);
            (*(v45 + 8))(v50, v46);
            (*(v25 + 8))(v27, v24);

            return v2;
          }

          v53 = 0;
          v33 = sub_23328C9AC();
          if (v33 == 2 || (v33 & 1) == 0)
          {
            (*(v29 + 8))(v31, v28);
            __swift_destroy_boxed_opaque_existential_0(v56);
LABEL_21:
            a1 = 0;
            goto LABEL_22;
          }

          v34 = sub_23328C9DC();
          if (v35)
          {
            a1 = sub_23328C9BC();
            v43 = v36;
            (*(v29 + 8))(v31, v28);
            __swift_destroy_boxed_opaque_existential_0(v56);
            if (v43)
            {
              goto LABEL_21;
            }
          }

          else
          {
            a1 = v34;
            (*(v29 + 8))(v31, v28);
            __swift_destroy_boxed_opaque_existential_0(v56);
          }

          if (a1 < 0)
          {
            __break(1u);
            goto LABEL_28;
          }

LABEL_22:
          v37 = __CFADD__(v2, a1);
          v2 += a1;
          if (v37)
          {
            break;
          }

          (*(v25 + 8))(v27, v24);
          sub_23328CAAC();
          if (!v59)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_36:
        swift_once();
      }
    }

    v17 = v53;
    v18 = sub_2331DDD74();
    if (!v17)
    {
      return v18;
    }
  }

  else
  {
LABEL_7:
    v57 = 0uLL;
    LOBYTE(v58) = 3;
    v15 = sub_23328CC9C();
    (*(*(v15 - 8) + 16))(v7, a1, v15);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(&v57, v7, 0, v16);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2331DDD74()
{
  v1 = v0;
  v2 = sub_23328CA0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF7AC0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_23328CB6C();
    if (v1)
    {
      break;
    }

    v7 = sub_23328C9AC();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v8 = sub_23328C9DC();
    if (v9)
    {
      v10 = sub_23328C9BC();
      v1 = v11;
      v12 = *(v3 + 8);
      v3 += 8;
      v12(v5, v2);
      if (v1)
      {
        return 0;
      }
    }

    else
    {
      v10 = v8;
      v13 = *(v3 + 8);
      v3 += 8;
      v13(v5, v2);
    }

    result = v10;
    if ((v10 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  return result;
}

void _TTSVBFileManager.createCompressedArchive(from:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v28 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v5 = objc_opt_self();
  v6 = sub_23328CBCC();
  v7 = [v5 readingIntentWithURL:v6 options:8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297620;
  *(v8 + 32) = v7;
  sub_233144EEC(0, &qword_27DDE2DD8, 0x277CCA9E0);
  v9 = v7;
  v10 = sub_23328DBDC();

  v11 = [objc_opt_self() mainQueue];
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_2331E2774;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_5;
  v22 = _Block_copy(aBlock);
  v23 = v9;

  v24 = v28;
  [v28 coordinateAccessWithIntents:v10 queue:v11 byAccessor:v22];
  _Block_release(v22);
}

uint64_t sub_2331DE204(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v93 = a5;
  v95 = a4;
  v96 = a3;
  v100 = *MEMORY[0x277D85DE8];
  v7 = sub_23328D6EC();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v19 - 8);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  if (a1)
  {
    v98 = xmmword_233299200;
    v99 = 3;
    v26 = sub_23328CC9C();
    (*(*(v26 - 8) + 16))(v18, a2, v26);
    swift_storeEnumTagMultiPayload();
    v27 = a1;
    v28 = sub_23328CA6C();
    TTSVBError.init(_:_:_:)(&v98, v18, v28, v25);
    sub_2331E318C(v25, v15, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    v96(v15);

    sub_233121E04(v15, &unk_27DDE25D0, &unk_233290330);
    v29 = v25;
    return sub_2331E22B4(v29, type metadata accessor for TTSVBError);
  }

  v89 = v23;
  v90 = v15;
  v87 = v12;
  v91 = v13;
  v92 = v22;
  if (qword_280D3A8C0 != -1)
  {
    swift_once();
  }

  v97 = qword_280D3A8C8;
  v88 = xmmword_233299200;
  v98 = xmmword_233299200;
  v99 = 3;
  v30 = qword_280D3A8C8;
  v31 = a2;
  _TTSVBFileManager.removeItem(_:problem:)(a2, &v98);
  v32 = v9;
  v86 = v7;

  v33 = [objc_opt_self() defaultManager];
  v34 = [v93 URL];
  v35 = sub_23328CC9C();
  v36 = *(v35 - 1);
  MEMORY[0x28223BE20](v35);
  v83 = v37;
  v82 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v80 - v82;
  sub_23328CC4C();

  v39 = sub_23328CBCC();
  v81 = v36;
  v40 = *(v36 + 8);
  v93 = v35;
  v84 = v40;
  v85 = v36 + 8;
  v40(v38, v35);
  v41 = sub_23328CBCC();
  *&v98 = 0;
  LODWORD(v30) = [v33 moveItemAtURL:v39 toURL:v41 error:&v98];

  v42 = v94;
  if (!v30)
  {
    v59 = v98;
    v60 = sub_23328CA7C();

    swift_willThrow();
    v61 = v86;
    v98 = v88;
    v99 = 3;
    v62 = sub_23328CC9C();
    (*(*(v62 - 8) + 16))(v18, v31, v62);
    swift_storeEnumTagMultiPayload();
    v94 = v60;
    v63 = sub_23328CA6C();
    v64 = v92;
    TTSVBError.init(_:_:_:)(&v98, v18, v63, v92);
    v65 = sub_233225314();
    (v42)[2](v32, v65, v61);
    v66 = v89;
    sub_2331E318C(v64, v89, type metadata accessor for TTSVBError);
    v67 = sub_23328D6CC();
    v68 = sub_23328DE4C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v61;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v98 = v71;
      *v70 = 136315138;
      v72 = TTSVBError.description.getter();
      v74 = v73;
      sub_2331E22B4(v66, type metadata accessor for TTSVBError);
      v75 = sub_23311A8F4(v72, v74, &v98);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_233109000, v67, v68, "Creating export archive failed: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23839CFD0](v71, -1, -1);
      MEMORY[0x23839CFD0](v70, -1, -1);

      (v42[1])(v32, v69);
    }

    else
    {

      sub_2331E22B4(v66, type metadata accessor for TTSVBError);
      (v42[1])(v32, v61);
    }

    v76 = v90;
    v77 = v92;
    sub_2331E318C(v92, v90, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    v96(v76);

    sub_233121E04(v76, &unk_27DDE25D0, &unk_233290330);
    v29 = v77;
    return sub_2331E22B4(v29, type metadata accessor for TTSVBError);
  }

  v43 = v98;
  v44 = sub_233225314();
  v46 = v86;
  v45 = v87;
  v47 = (v42[2])(v87, v44, v86);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = &v80 - v82;
  (*(v81 + 16))(&v80 - v82, v31, v93, v48);
  v50 = sub_23328D6CC();
  v51 = sub_23328DE4C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v92 = &v80;
    v53 = v52;
    v54 = swift_slowAlloc();
    *&v98 = v54;
    *v53 = 136315138;
    v55 = sub_23328CC6C();
    v57 = v56;
    v84(v49, v93);
    v58 = sub_23311A8F4(v55, v57, &v98);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_233109000, v50, v51, "Did write voice export archive to %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x23839CFD0](v54, -1, -1);
    MEMORY[0x23839CFD0](v53, -1, -1);
  }

  else
  {

    v84(v49, v93);
  }

  (v42[1])(v45, v46);
  v79 = v90;
  swift_storeEnumTagMultiPayload();
  v96(v79);
  return sub_233121E04(v79, &unk_27DDE25D0, &unk_233290330);
}

uint64_t *sub_2331DEBE8()
{
  if (qword_280D3A8C0 != -1)
  {
    swift_once();
  }

  return &qword_280D3A8C8;
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328CC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.relativePath.getter()
{
  v1 = *(v0 + *(type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0) + 20));

  return v1;
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.init(url:relativePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23328CC9C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void *_TTSVBFileManager.getRelativePathsForFilesInTree(_:)(uint64_t a1)
{
  v61 = a1;
  v55 = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = [objc_opt_self() defaultManager];
  v2 = swift_allocObject();
  v62 = v2;
  *(v2 + 16) = 0;
  v67 = (v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23329B0B0;
  v4 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v5 = *MEMORY[0x277CBE868];
  v6 = *MEMORY[0x277CBE8B0];
  *(inited + 40) = *MEMORY[0x277CBE868];
  *(inited + 48) = v6;
  v7 = *MEMORY[0x277CBE8A0];
  v8 = *MEMORY[0x277CBE8C0];
  *(inited + 56) = *MEMORY[0x277CBE8A0];
  *(inited + 64) = v8;
  v9 = *MEMORY[0x277CBE880];
  v10 = *MEMORY[0x277CBE8E8];
  *(inited + 72) = *MEMORY[0x277CBE880];
  *(inited + 80) = v10;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = sub_23317473C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v19 = *(v18 + 16);
  v66 = v18;
  if (v19)
  {
    v20 = sub_2331E1F98(v19, 0);
    v21 = sub_2331E2160(&v70, v20 + 4, v19, v18);
    v22 = v70;

    sub_233113BBC(v22);
    if (v21 != v19)
    {
      __break(1u);
    }
  }

  v23 = sub_23328DE0C();

  if (v23)
  {
    v25 = sub_23328CABC();
    v58 = &v52;
    v57 = v25;
    v56 = *(v25 - 8);
    MEMORY[0x28223BE20](v25);
    v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v23;
    sub_23328DDDC();
    swift_beginAccess();
    v65 = v27;
    sub_23328CAAC();
    if (v71)
    {
      v64 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_233145134(&v70, v69);
        if (*v67)
        {

          __swift_destroy_boxed_opaque_existential_0(v69);
          (*(v56 + 8))(v65, v57);
          goto LABEL_32;
        }

        v28 = sub_23328CC9C();
        v29 = *(v28 - 8);
        MEMORY[0x28223BE20](v28);
        v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23311B0C0(v69, v68);
        swift_dynamicCast();
        v32 = sub_23328CA0C();
        v33 = *(v32 - 8);
        MEMORY[0x28223BE20](v32);
        v35 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = v72;
        sub_23328CB6C();
        if (v36)
        {

          __swift_destroy_boxed_opaque_existential_0(v69);
          (*(v56 + 8))(v65, v57);
          v51 = v64;

          (*(v29 + 8))(v31, v28);

          return v51;
        }

        v72 = 0;
        v37 = sub_23328C9AC();
        if (v37 == 2 || (v37 & 1) == 0)
        {
          goto LABEL_24;
        }

        v38 = sub_23328C9EC();
        if (!v39)
        {
          goto LABEL_17;
        }

        if (v38 == 0x726F74535F53442ELL && v39 == 0xE900000000000065)
        {

          goto LABEL_24;
        }

        LODWORD(v53) = sub_23328E54C();

        if ((v53 & 1) == 0)
        {
LABEL_17:
          v41 = sub_2331DF6BC();
          if (v42)
          {
            v43 = v42;
            v44 = *(v29 + 16);
            v53 = v41;
            v44(v60, v31, v28);
            v45 = (v60 + *(v55 + 20));
            *v45 = v53;
            v45[1] = v43;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v46 = v64;
            }

            else
            {
              v46 = sub_2331E1DBC(0, v64[2] + 1, 1, v64, &qword_27DDE2E18, &unk_23329B300, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            }

            v48 = v46[2];
            v47 = v46[3];
            v53 = v48 + 1;
            if (v48 >= v47 >> 1)
            {
              v64 = sub_2331E1DBC((v47 > 1), v48 + 1, 1, v46, &qword_27DDE2E18, &unk_23329B300, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            }

            else
            {
              v64 = v46;
            }

            (*(v33 + 8))(v35, v32);
            __swift_destroy_boxed_opaque_existential_0(v69);
            v49 = v64;
            v64[2] = v53;
            sub_2331E28AC(v60, v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            goto LABEL_25;
          }
        }

LABEL_24:
        (*(v33 + 8))(v35, v32);
        __swift_destroy_boxed_opaque_existential_0(v69);
LABEL_25:
        (*(v29 + 8))(v31, v28);
        sub_23328CAAC();
        if (!v71)
        {
          goto LABEL_30;
        }
      }
    }

    v64 = MEMORY[0x277D84F90];
LABEL_30:
    (*(v56 + 8))(v65, v57);

LABEL_32:
    if (*v67)
    {
      v50 = *v67;
      v51 = v64;

      swift_willThrow();
    }

    else
    {

      return v64;
    }

    return v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331DF6BC()
{
  if ((sub_23328CB0C() & 1) == 0 || (sub_23328CB0C() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23328CB2C();
  v4 = sub_23328CB5C();
  v5 = *(v1 + 8);
  v6 = v5(v17 - v3, v0);
  MEMORY[0x28223BE20](v6);
  sub_23328CB2C();
  v7 = sub_23328CB5C();
  result = v5(v17 - v3, v0);
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v4 + 40);
    v12 = (v7 + 40);
    while (1)
    {
      v13 = *(v7 + 16);
      if (v10 == v13)
      {
        break;
      }

      if (v10 >= v13)
      {
        __break(1u);
        goto LABEL_21;
      }

      result = *(v11 - 1);
      if (result != *(v12 - 1) || *v11 != *v12)
      {
        result = sub_23328E54C();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v10;
      v11 += 2;
      v12 += 2;
      if (v9 == v10)
      {
        v10 = v9;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = *(v7 + 16);

  result = sub_2331E2F8C(0x2E2E, 0xE200000000000000, v15 - v10);
  if (*(v4 + 16) < v9)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v17[1] = result;
    sub_2331E3028(v4, v4 + 32, v10, (2 * v9) | 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_2331E3128();
    v16 = sub_23328D8FC();

    return v16;
  }

  return result;
}

id _TTSVBFileManager.filesAtURLsAreEqual(_:_:)(uint64_t a1)
{
  v2 = *v1;
  sub_23328CC6C();
  v3 = sub_23328D95C();

  sub_23328CC6C();
  v4 = sub_23328D95C();

  v5 = [v2 contentsEqualAtPath:v3 andPath:v4];

  return v5;
}

uint64_t _TTSVBFileManager.cloneFile(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v5);
  v26[0] = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = *v2;
  v11 = sub_23328CC9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CC1C();
  v31 = v10;
  v32 = v14;
  v27 = v14;
  v33 = 0;
  v34 = 0;
  v35 = 3;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
  v28 = v12;
  v16 = *(v12 + 16);
  v26[1] = a1;
  v16(v9, a1, v11);
  v29 = v11;
  v16(&v9[v15], a2, v11);
  swift_storeEnumTagMultiPayload();
  v17 = v26[2];
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E320C, v30, &v33, v9);
  if (v17)
  {
    sub_2331E22B4(v9, type metadata accessor for TTSVBError.Reason);
  }

  else
  {
    v18 = v26[0];
    v19 = sub_2331E22B4(v9, type metadata accessor for TTSVBError.Reason);
    v37 = 0;
    MEMORY[0x28223BE20](v19);
    v26[-2] = a2;
    v26[-1] = &v37;
    sub_23328CC3C();
    v20 = v37;
    if (v37)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_23328E24C();

      v33 = 0xD000000000000019;
      v34 = 0x80000002332A9D10;
      v36 = v20;
      v21 = sub_23328E51C();
      MEMORY[0x23839B7E0](v21);

      MEMORY[0x23839B7E0](0x3D637273202ELL, 0xE600000000000000);
      v22 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v22);

      MEMORY[0x23839B7E0](0x3D7473656420, 0xE600000000000000);
      v23 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v23);

      v35 = 0;
      sub_233113B28();
      type metadata accessor for TTSVBError(0);
      sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v33, v18, 0, v24);
      swift_willThrow();
    }
  }

  return (*(v28 + 8))(v27, v29);
}

void *sub_2331DFDEC()
{
  v171 = *MEMORY[0x277D85DE8];
  v141 = sub_23328D6EC();
  v162 = *(v141 - 8);
  MEMORY[0x28223BE20](v141 - 8);
  v146 = &v120 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation(0);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v124 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBError.Reason(0);
  v161 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v140 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v139 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v138 = &v120 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v120 - v12;
  v14 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = sub_23328CC9C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v156 = v20;
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v21);
  sub_2331E22B4(v16, type metadata accessor for TTSVBPath);
  v163 = v17;
  v167 = v17;
  v168 = 0;
  v169 = 0;
  v170 = -1;
  v123 = v21;
  _TTSVBFileManager.getChildDirectories(of:problem:)(v21, &v168);
  v22 = MEMORY[0x277D84F90];
  v167 = MEMORY[0x277D84F90];
  v26.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v27 = v21;
  v28 = *(v24 + 16);
  v158 = v5;
  v164 = v18;
  v152 = v19;
  v153 = v13;
  v122 = v24;
  if (v28)
  {
    v160 = v25;
    v30 = *(v19 + 16);
    v29 = v19 + 16;
    v165 = v30;
    v31 = v24 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v32 = *(v29 + 56);
    (v30)(v27, v31, v18, v26);
    while (1)
    {
      v166 = v163;
      v168 = 0;
      v169 = 0;
      v170 = -1;
      _TTSVBFileManager.getChildDirectories(of:problem:)(v27, &v168);
      v34 = v33;
      v18 = v164;
      (*(v29 - 8))(v27, v164);
      v24 = sub_2331E201C(v34);
      v31 += v32;
      if (!--v28)
      {
        break;
      }

      (v165)(v27, v31, v18, v26);
    }

    v22 = v167;
    v5 = v158;
    v19 = v152;
    v13 = v153;
  }

  v35 = v141;
  v151 = v22[2];
  if (!v151)
  {

    v38 = *(v19 + 8);
    v118 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v36 = 0;
  v150 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v155 = v19 + 16;
  v37 = (v161 + 7);
  v137 = (v161 + 6);
  v160 = (v19 + 8);
  v131 = 0x80000002332A8E70;
  v130 = (v19 + 56);
  v129 = (v19 + 32);
  v128 = (v19 + 48);
  v145 = (v162 + 16);
  v144 = (v162 + 8);
  v125 = MEMORY[0x277D84F90];
  v26.n128_u64[0] = 138412290;
  v136 = v26;
  v159 = (v161 + 7);
  v149 = v22;
  do
  {
    if (v36 >= v22[2])
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v157 = 0;
    v161 = &v120;
    v162 = v36;
    v39 = v156;
    v40 = MEMORY[0x28223BE20](v24);
    v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
    v154 = *(v19 + 16);
    v154(&v120 - v41, v40);
    v42 = *v37;
    (*v37)(v13, 1, 1, v5);
    LOBYTE(v167) = 0;
    sub_23328CC6C();
    v43 = sub_23328D95C();

    v44 = v163;
    [v163 fileExistsAtPath:v43 isDirectory:&v167];

    v165 = &v120 - v41;
    if (v167 != 1)
    {
      v168 = 0;
      v169 = 0;
      v170 = 3;
      v59 = v139;
      sub_233121D34(v13, v139, &qword_27DDE2A08, &qword_23329B0C0);
      v60 = *v137;
      if ((*v137)(v59, 1, v5) == 1)
      {
        v61 = v140;
        (v154)(v140, v165, v18);
        swift_storeEnumTagMultiPayload();
        v62 = v60(v59, 1, v5);
        v19 = v152;
        if (v62 != 1)
        {
          sub_233121E04(v59, &qword_27DDE2A08, &qword_23329B0C0);
        }
      }

      else
      {
        v61 = v140;
        sub_2331E28AC(v59, v140, type metadata accessor for TTSVBError.Reason);
        v19 = v152;
      }

      type metadata accessor for TTSVBError(0);
      sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v57 = swift_allocError();
      TTSVBError.init(_:_:_:)(&v168, v61, 0, v63);
      swift_willThrow();
      sub_233121E04(v13, &qword_27DDE2A08, &qword_23329B0C0);
      v58 = v146;
      goto LABEL_20;
    }

    v45 = sub_233121E04(v13, &qword_27DDE2A08, &qword_23329B0C0);
    v148 = &v120;
    v167 = v44;
    MEMORY[0x28223BE20](v45);
    v46 = &v120 - v41;
    v168 = 0x7461447465737341;
    v169 = 0xE900000000000061;
    v47 = sub_23328CB3C();
    v48 = *(v47 - 8);
    v49 = v48[8];
    v50 = MEMORY[0x28223BE20](v47);
    v51 = *MEMORY[0x277CC91C8];
    v147 = v42;
    v143 = v48[13];
    v143(&v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v47, v50);
    v142 = sub_23311A294();
    sub_23328CC8C();
    v54 = v48[1];
    v52 = v48 + 1;
    v53 = v54;
    (v54)(&v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    v55 = v138;
    v147(v138, 1, 1, v158);
    v168 = 0;
    v169 = 0;
    v170 = 3;
    v56 = v157;
    _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(v46, &v168, v55);
    if (v56)
    {
      sub_2331220AC(0, 0, 3u);
      sub_233121E04(v55, &qword_27DDE2A08, &qword_23329B0C0);
      v18 = v164;
      (*v160)(v46, v164);
      v57 = v56;
      v35 = v141;
      v58 = v146;
      v19 = v152;
      v5 = v158;
LABEL_20:
      v64 = sub_233225314();
      (*v145)(v58, v64, v35);
      v65 = v57;
      v66 = sub_23328D6CC();
      v67 = sub_23328DE3C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = v136.n128_u32[0];
        v70 = v57;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v71;
        *v69 = v71;
        _os_log_impl(&dword_233109000, v66, v67, "Error looking up voice models on disk: %@", v68, 0xCu);
        sub_233121E04(v69, &qword_27DDE2978, &qword_233299A50);
        v72 = v69;
        v5 = v158;
        MEMORY[0x23839CFD0](v72, -1, -1);
        v73 = v68;
        v18 = v164;
        MEMORY[0x23839CFD0](v73, -1, -1);
      }

      (*v144)(v58, v35);
      v38 = *v160;
      v24 = (*v160)(v165, v18);
      v13 = v153;
      goto LABEL_10;
    }

    v134 = v53;
    v135 = v52;
    sub_2331220AC(0, 0, 3u);
    sub_233121E04(v55, &qword_27DDE2A08, &qword_23329B0C0);
    v157 = *v160;
    v74 = v157(v46, v164);
    v132 = &v120;
    v75 = v156;
    MEMORY[0x28223BE20](v74);
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
    v148 = &v120 - v76;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v147 = &v120;
    MEMORY[0x28223BE20](v77 - 8);
    v80 = &v120 - v79;
    if (qword_280D3A8C0 != -1)
    {
      v78 = swift_once();
    }

    v133 = &v120;
    v81 = qword_280D3A8C8;
    MEMORY[0x28223BE20](v78);
    v82 = &v120 - v76;
    v168 = 0xD000000000000012;
    v169 = v131;
    v84 = MEMORY[0x28223BE20](v83);
    v143(&v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91E0], v47, v84);
    sub_23328CC8C();
    (v134)(&v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_23328CC6C();
    v85 = sub_23328D95C();

    v86 = [v81 fileExistsAtPath_];

    v18 = v164;
    if (v86)
    {
      (*v129)(v80, v82, v164);
      v87 = 0;
      v13 = v153;
      v38 = v157;
    }

    else
    {
      v38 = v157;
      v157(v82, v164);
      v87 = 1;
      v13 = v153;
    }

    (*v130)(v80, v87, 1, v18);
    if ((*v128)(v80, 1, v18) == 1)
    {
      v38(v165, v18);
      v24 = sub_233121E04(v80, &qword_27DDE19A0, &unk_233290360);
      v35 = v141;
      v5 = v158;
      v19 = v152;
    }

    else
    {
      (*v129)(v148, v80, v18);
      v88 = sub_23328CE8C();
      v127 = &v120;
      v147 = *(v88 - 8);
      MEMORY[0x28223BE20](v88);
      v142 = v89;
      v135 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
      v90 = (&v120 - v135);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
      v133 = &v120;
      MEMORY[0x28223BE20](v91 - 8);
      v134 = v92;
      v93 = (&v120 - v92);
      MEMORY[0x28223BE20](v94);
      v96 = &v120 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_23328CC1C();
      sub_23328CB9C();
      v38(v96, v18);
      v97 = v147;
      sub_23328CE2C();

      v98 = *(v97 + 6);
      v99 = v88;
      if (v98(v93, 1, v88) == 1)
      {
        goto LABEL_41;
      }

      v100 = *(v97 + 4);
      v143 = v90;
      v101 = v100(v90, v93, v88);
      v133 = &v120;
      MEMORY[0x28223BE20](v101);
      v102 = &v120 - v135;
      MEMORY[0x28223BE20](v103);
      v104 = (&v120 - v134);
      sub_23328CB9C();
      sub_23328CE2C();

      if (v98(v104, 1, v88) == 1)
      {
        goto LABEL_40;
      }

      v100(v102, v104, v88);
      v105 = v126;
      sub_2331DCFB0(v148, 0, 0, 0xFFu, v126);
      v5 = v158;
      v106 = v124;
      sub_2331E318C(v105, v124, type metadata accessor for TTSVBVoiceModel);
      v107 = v121;
      v18 = v164;
      (v154)(v106 + *(v121 + 20), v165, v164);
      v108 = *(v147 + 2);
      v108(v106 + *(v107 + 24), v143, v99);
      v109 = v106 + *(v107 + 28);
      v154 = v99;
      v108(v109, v102, v99);
      v110 = v125;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v152;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_2331E1DBC(0, v110[2] + 1, 1, v110, &qword_27DDE2E10, &unk_23329B2F0, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      }

      v35 = v141;
      v125 = v110;
      v113 = v110[2];
      v112 = v110[3];
      v13 = v153;
      v142 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v125 = sub_2331E1DBC((v112 > 1), v113 + 1, 1, v125, &qword_27DDE2E10, &unk_23329B2F0, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      }

      sub_2331E22B4(v126, type metadata accessor for TTSVBVoiceModel);
      v114 = *(v147 + 1);
      v115 = v102;
      v116 = v154;
      v114(v115, v154);
      v114(v143, v116);
      v38 = v157;
      v157(v148, v18);
      v38(v165, v18);
      v117 = v125;
      v125[2] = v142;
      v24 = sub_2331E28AC(v124, v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v113, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
    }

LABEL_10:
    v22 = v149;
    v37 = v159;
    v36 = v162 + 1;
  }

  while (v151 != v162 + 1);

  v118 = v125;
LABEL_38:
  v38(v123, v18);
  return v118;
}

uint64_t sub_2331E143C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = *v1;
  v30 = *v1;
  v27 = 0;
  v28 = 0;
  v29 = 3;
  v10 = type metadata accessor for TTSVBError.Reason(0);
  v24 = *(*(v10 - 8) + 56);
  v24(v8, 1, 1, v10);
  v25 = a1;
  _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(a1, &v27, v8);
  result = sub_233121E04(v8, &qword_27DDE2A08, &qword_23329B0C0);
  if (!v2)
  {
    v30 = v9;
    v22 = sub_23328CC9C();
    v23 = v21;
    v12 = *(v22 - 8);
    MEMORY[0x28223BE20](v22);
    v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = 0x7461447465737341;
    v28 = 0xE900000000000061;
    v15 = sub_23328CB3C();
    v21[1] = v21;
    v16 = *(v15 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 104))(v19, *MEMORY[0x277CC91C8], v15, v17);
    sub_23311A294();
    sub_23328CC8C();
    (*(v16 + 8))(v19, v15);
    v20 = v26;
    v24(v26, 1, 1, v10);
    v27 = 0;
    v28 = 0;
    v29 = 3;
    _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(v14, &v27, v20);
    sub_2331220AC(0, 0, 3u);
    sub_233121E04(v20, &qword_27DDE2A08, &qword_23329B0C0);
    return (*(v12 + 8))(v14, v22);
  }

  return result;
}

void sub_2331E17B4(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_23328CC6C();
  v7 = sub_23328D95C();

  v24 = 0;
  v8 = [v6 attributesOfFileSystemForPath:v7 error:&v24];

  v9 = v24;
  if (!v8)
  {
    v19 = v24;
    v17 = sub_23328CA7C();

    goto LABEL_9;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey, &unk_23329F800);
  v10 = sub_23328D89C();
  v11 = v9;

  if (!*(v10 + 16) || (v12 = sub_2331BFF0C(*MEMORY[0x277CCA1D0]), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_23311B0C0(*(v10 + 56) + 32 * v12, &v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v24 = 0;
    v25 = 0;
    v26 = 3;
    v14 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48)];
    v15 = sub_23328CC9C();
    (*(*(v15 - 8) + 16))(v5, a1, v15);
    *v14 = sub_23328D98C();
    v14[1] = v16;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v17 = swift_allocError();
    TTSVBError.init(_:_:_:)(&v24, v5, 0, v18);
LABEL_9:
    swift_willThrow();
    v24 = 0;
    v25 = 0;
    v26 = 3;
    v20 = sub_23328CC9C();
    (*(*(v20 - 8) + 16))(v5, a1, v20);
    swift_storeEnumTagMultiPayload();
    v21 = sub_23328CA6C();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(&v24, v5, v21, v22);
    swift_willThrow();
  }
}

uint64_t sub_2331E1B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  v1 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v2 = *MEMORY[0x277CBE7D0];
  v3 = *MEMORY[0x277CBE908];
  *(inited + 40) = *MEMORY[0x277CBE7D0];
  *(inited + 48) = v3;
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7 = sub_23317473C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  result = swift_arrayDestroy();
  qword_27DDF7AC8 = v7;
  return result;
}

id sub_2331E1C54()
{
  result = [objc_opt_self() defaultManager];
  qword_280D3A8C8 = result;
  return result;
}

id TTSVBFileManager.getter@<X0>(void *a1@<X8>)
{
  if (qword_280D3A8C0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280D3A8C8;
  *a1 = qword_280D3A8C8;

  return v2;
}

uint64_t sub_2331E1D00(uint64_t a1)
{
  sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey, &unk_23329F800);
  sub_2331E2A38(&qword_27DDE2E08, type metadata accessor for FileAttributeKey, &unk_23329B240);

  return sub_23328E36C();
}

void *sub_2331E1DBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2331E1F98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2331E201C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2331E1DBC(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27DDE27C8, &qword_2332990D8, MEMORY[0x28220BE08]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_23328CC9C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2331E2160(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2331E22B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2331E2314()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E20, qword_23329F460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  v3 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  v4 = v3;
  v5 = sub_23328DD5C();
  *(inited + 64) = sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  *(inited + 40) = v5;
  sub_2331E2E64(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2E28, &qword_23329B310);
  type metadata accessor for FileAttributeKey(0);
  sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey, &unk_23329F800);
  v6 = sub_23328D87C();

  sub_23328CC6C();
  v7 = sub_23328D95C();

  v10 = 0;
  LODWORD(v1) = [v1 setAttributes:v6 ofItemAtPath:v7 error:&v10];

  if (v1)
  {
    return v10;
  }

  v9 = v10;
  sub_23328CA7C();

  return swift_willThrow();
}

unint64_t sub_2331E24D4()
{
  result = qword_27DDE2DC8;
  if (!qword_27DDE2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2DC8);
  }

  return result;
}

id sub_2331E2560(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_23328CBCC();
  v6 = 0;
  LODWORD(v2) = [v2 removeItemAtURL:v3 error:&v6];

  if (v2)
  {
    return v6;
  }

  v5 = v6;
  sub_23328CA7C();

  return swift_willThrow();
}

id sub_2331E2610(SEL *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_23328CBCC();
  v5 = sub_23328CBCC();
  v8 = 0;
  LODWORD(a1) = [v3 *a1];

  if (a1)
  {
    return v8;
  }

  v7 = v8;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331E26CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23328C89C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2331E2774(void *a1)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_2331DE204(a1, v1 + v4, v9, v10, v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2331E2858(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = a2;

  v5 = a2;
  return 0;
}

uint64_t sub_2331E28AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2331E2914(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_23328CBCC();
  v6 = 0;
  LODWORD(v2) = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  if (v2)
  {
    return v6;
  }

  v5 = v6;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331E2A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2331E2A8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2331E2AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2331E2B48(uint64_t a1)
{
  result = sub_23328CC9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2331E2BE4(uint64_t a1)
{
  result = type metadata accessor for TTSVBVoiceModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_23328CC9C();
    if (v3 <= 0x3F)
    {
      result = sub_23328CE8C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2331E2D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23328CCAC();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2331E2D8C()
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331E2A38(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  return sub_23328C83C();
}

uint64_t sub_2331E2E2C(char *a1)
{
  v2 = *(v1 + 16);
  result = clonefile(*(v1 + 24), a1, 0);
  *v2 = result;
  return result;
}

unint64_t sub_2331E2E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E30, &qword_23329B318);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, &v11, &qword_27DDE2E28, &qword_23329B310);
      v5 = v11;
      result = sub_2331BFF0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_233145134(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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